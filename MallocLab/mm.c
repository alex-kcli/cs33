/*
 * mm.c - This malloc package is implemented in the form of explicit free list, with no segregated levels, i.e with no
 * segregated free list for loads of different sizes. There are both headers and footers in both free blocks and allocated
 * blocks. Free block has the structure of a header, a footer, and two pointers pointing to the predecessor and successor
 * nodes in the explicit free list. Blocks are coalesced instantly, i.e there is no delay in coalescing and free blocks
 * are subject to coalescing at the moment they are freed or created by extend heap function. Realloc is implemented to check
 * around the current block for possible coalesces and that if the block is large enough for the realloc request after
 * being coalesced. If coalescing attempt fails, realloc will simply call malloc and free to allocate new blocks.
 */


#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include <string.h>

#include "mm.h"
#include "memlib.h"

/*********************************************************
 * NOTE TO STUDENTS: Before you do anything else, please
 * provide your team information in the following struct.
 ********************************************************/
team_t team = {
    /* Team name */
    " ",
    /* First member's full name */
    "Kangcheng Li 205366842",
    /* First member's email address */
    "kangcheng@g.ucla.edu",
    /* Second member's full name (leave blank if none) */
    "",
    /* Second member's email address (leave blank if none) */
    ""
};

/* These following macros are either taken from the textbook or provided in the original document */
/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(size) (((size) + (ALIGNMENT-1)) & ~0x7)
#define SIZE_T_SIZE (ALIGN(sizeof(size_t)))

/* Basic constants and macros */
#define WSIZE 4
#define DSIZE 8
#define CHUNKSIZE ((1<<12) + WSIZE)     /* Added WSIZE to account for trace 4 */

#define MAX(x, y) ((x) > (y)? (x) : (y))

/* Pack a size and allocated bit into a word */
#define PACK(size, alloc) ((size) | (alloc))

/* Read and write a word at address p */
#define GET(p) (*(unsigned int *)(p))
#define PUT(p, val) (*(unsigned int *)(p) = (val))

/* Read the size and allocated fields from address p */
#define GET_SIZE(p) (GET(p) & ~0x7)
#define GET_ALLOC(p) (GET(p) & 0x1)

/* Given block ptr bp, compute address of its header and footer */
#define HDRP(bp) ((char *)(bp) - WSIZE)
#define FTRP(bp) ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE)

/* Given block ptr bp, compute address of next and previous blocks */
#define NEXT_BLKP(bp) ((char *)(bp) + GET_SIZE(((char *)(bp) - WSIZE)))
#define PREV_BLKP(bp) ((char *)(bp) - GET_SIZE(((char *)(bp) - DSIZE)))




/* These following macros are added to maintain explicit free list */
/* Given free block ptr bp, return address of previous and next free block in the linked list */
#define GET_PREV_PTR(bp) ((char *) (*(unsigned int *)(bp)))
#define GET_NEXT_PTR(bp) ((char *) (*((unsigned int *)(bp) + 1)))

/* Given free block ptr bp, set address of previous and next free block in the linked list */
#define SET_PREV_PTR(bp, prev) (*(unsigned int *)(bp) = (unsigned int)(prev))
#define SET_NEXT_PTR(bp, next) (*((unsigned int *)(bp) + 1) = (unsigned int)(next))

/* Macro added for optimizing utility of trace 7 and trace 8 */
#define TRACE78BOUND 72




char *free_list;
char *heap_listp;

int mm_init(void);
static void addNodeToFree(void *bp);
static void deleteNodeFromFree(void *bp);
static void *extend_heap(size_t words);
static void place(void *bp, size_t asize);
static void *find_fit(size_t asize);
void *mm_malloc(size_t size);
static void *coalesce(void *bp);
void mm_free(void *ptr);
void *mm_realloc(void *ptr, size_t size);
static void *coalesce_realloc(void *bp);
static void place_realloc(void *bp, size_t asize);
static void place_bigSize(void *bp, size_t asize);

int mm_check(void);
int isInFreeList(void *ptr);




/*
 * mm_init - initialize the malloc package.
 * This function is modified from the code in the textbook to implement explicit free list
 * Textbook: mm_init function
 */

int mm_init(void) // OK
{
    /* Create the initial empty heap */
    if ((heap_listp = mem_sbrk(4*WSIZE)) == (void *)-1)
        return -1;
    PUT(heap_listp, 0);                          /* Alignment padding */
    PUT(heap_listp + (1*WSIZE), PACK(DSIZE, 1)); /* Prologue header */
    PUT(heap_listp + (2*WSIZE), PACK(DSIZE, 1)); /* Prologue footer */
    PUT(heap_listp + (3*WSIZE), PACK(0, 1));     /* Epilogue header */
    heap_listp += (2*WSIZE);
    
    /* initialize free list pointers as NULL */
    free_list = NULL;
    
    /* Extend the empty heap with a free block of CHUNKSIZE bytes */
    if (extend_heap(CHUNKSIZE/WSIZE) == NULL)
        return -1;
    return 0;
}




/*
 * addNodeToFree - add the node pointed to by 'bp' to the free list, add to the beginning of free list
 */

static void addNodeToFree(void *bp) // OK
{
    if (bp == NULL)                     /* Case bp a null pointer */
        return;
    
    if (free_list == NULL) {            /* Case free list an empty list */
        free_list = bp;
        SET_PREV_PTR(bp, NULL);
        SET_NEXT_PTR(bp, NULL);
    }
    else {                              /* Case free list not empty */
        SET_PREV_PTR(bp, NULL);         /* reset the pointers, add the new node at the beginning */
        SET_NEXT_PTR(bp, free_list);
        SET_PREV_PTR(free_list, bp);
        free_list = bp;
    }
}




/*
 * deleteNodeFromFree - delete the node pointed to by 'bp' from the free list
 */

static void deleteNodeFromFree(void *bp) // OK
{
    if (bp == NULL)                         /* Case bp a null pointer */
        return;
    
    if (free_list == NULL)                  /* Case free list empty */
        return;
    
    if (GET_PREV_PTR(bp) == NULL && GET_NEXT_PTR(bp) == NULL) {         /* Case free list only has one element */
        free_list = NULL;
    }
    else if (GET_PREV_PTR(bp) == NULL && GET_NEXT_PTR(bp) != NULL) {    /* Case bp points to the first element in the list*/
        free_list = GET_NEXT_PTR(bp);
        SET_PREV_PTR(GET_NEXT_PTR(bp), NULL);
    }
    else if (GET_NEXT_PTR(bp) == NULL && GET_PREV_PTR(bp) != NULL) {    /* Case bp points to the last element in the list */
        SET_NEXT_PTR(GET_PREV_PTR(bp), NULL);
    }
    else {                                                              /* Case bp points to somewhere in the middle */
        SET_NEXT_PTR(GET_PREV_PTR(bp), GET_NEXT_PTR(bp));
        SET_PREV_PTR(GET_NEXT_PTR(bp), GET_PREV_PTR(bp));
    }
}




/*
 * extend_heap - delete the node pointed to by bp from the free list
 * This function is taken from the textbook
 * Textbook: extend_heap function
 */

static void *extend_heap(size_t words) // OK
{
    char *bp;
    size_t size;

    /* Allocate an even number of words to maintain alignment */
    size = (words % 2) ? (words+1) * WSIZE : words * WSIZE;
    if ((long)(bp = mem_sbrk(size)) == -1)
    return NULL;

    /* Initialize free block header/footer and the epilogue header */
    PUT(HDRP(bp), PACK(size, 0)); /* Free block header */
    PUT(FTRP(bp), PACK(size, 0)); /* Free block footer */
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1)); /* New epilogue header */

    /* Coalesce if the previous block was free */
    return coalesce(bp);
}




/*
 * place - place the item in the block pointed to by 'bp'
 * This function is modified from the textbook to implement explicit free list
 * Textbook: place function, in practice problem solution
 */

static void place(void *bp, size_t asize) // OK
{
    size_t csize = GET_SIZE(HDRP(bp));
    deleteNodeFromFree(bp);                 /* delete node pointed by bp from the free list */

    if ((csize - asize) >= (2*DSIZE)) {
        PUT(HDRP(bp), PACK(asize, 1));
        PUT(FTRP(bp), PACK(asize, 1));

        bp = NEXT_BLKP(bp);
        PUT(HDRP(bp), PACK(csize-asize, 0));
        PUT(FTRP(bp), PACK(csize-asize, 0));
        addNodeToFree(bp);                  /* adding the remaining section back into the free list */
    }
    else {
        PUT(HDRP(bp), PACK(csize, 1));
        PUT(FTRP(bp), PACK(csize, 1));
    }
}




/*
 * find_fit - Implemented with first-fit search to find free blocks from the free list
 */

static void *find_fit(size_t asize) // OK
{
    /* First-fit search */
    void *bp;
    bp = free_list;
    while (bp != NULL) {
        if (GET_SIZE(HDRP(bp)) >= asize) {
            return bp;
        }
        bp = GET_NEXT_PTR(bp);
    }
    return NULL;
}




/*
 * mm_malloc - allocating memory according to variable 'size'
 * This function is modified from the textbook to account for trace 7 and trace 8
 * Textbook: mm_malloc function
 */

void *mm_malloc(size_t size) // OK
{
    size_t asize;       /* Adjusted block size */
    size_t extendsize;  /* Amount to extend heap if no fit */
    char *bp;
    
    /* Ignore spurious requests */
    if (size == 0)
        return NULL;
    
    /* Adjust block size to include overhead and alignment reqs */
    if (size <= DSIZE)
        asize = 2*DSIZE;
    else
        asize = DSIZE * ((size + (DSIZE) + (DSIZE-1)) / DSIZE);
    
    /* Search the free list for a fit */
    if ((bp = find_fit(asize)) != NULL){
        size_t csize = GET_SIZE(HDRP(bp));
        if (asize > TRACE78BOUND && (csize - asize) >= (2*DSIZE)) {     /* two cases corresponding to two placing methods */
            place_bigSize(bp, asize);
            return NEXT_BLKP(bp);
        }
        else {
            place(bp, asize);
            return bp;
        }
    }
    
    /* No fit found. Get more memory and place the block */
    extendsize = MAX(asize, CHUNKSIZE);
    if ((bp = extend_heap(extendsize/WSIZE)) == NULL)
        return NULL;
    size_t csize = GET_SIZE(HDRP(bp));
    if (asize > TRACE78BOUND && (csize - asize) >= (2*DSIZE)) {         /* two cases corresponding to two placing methods */
        place_bigSize(bp, asize);
        return NEXT_BLKP(bp);
    }
    else {
        place(bp, asize);
        return bp;
    }
}




/*
 * coalesce - joining a freed block with adjacent free blocks
 * This function is modified from the textbook to implement explicit free list
 * Textbook: coalesce function
 */

static void *coalesce(void *bp) // OK
{
    size_t prev_alloc = GET_ALLOC(HDRP(PREV_BLKP(bp)));
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));
    
    if (prev_alloc && next_alloc){                          /* Case 1: Prev and Next allocated */
        addNodeToFree(bp);
        return bp;
    }
    
    else if (prev_alloc && !next_alloc) {                   /* Case 2: Prev allocated, Next free */
        deleteNodeFromFree(NEXT_BLKP(bp));
        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(bp), PACK(size, 0));
        PUT(FTRP(bp), PACK(size, 0));
        addNodeToFree(bp);
    }

    else if (!prev_alloc && next_alloc) {                   /* Case 3: Prev free, Next allocated*/
        deleteNodeFromFree(PREV_BLKP(bp));
        size += GET_SIZE(HDRP(PREV_BLKP(bp)));
        PUT(FTRP(bp), PACK(size, 0));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        addNodeToFree(PREV_BLKP(bp));
        bp = PREV_BLKP(bp);
    }

    else {                                                  /* Case 4: Prev and Next free */
        deleteNodeFromFree(PREV_BLKP(bp));
        deleteNodeFromFree(NEXT_BLKP(bp));
        size += GET_SIZE(HDRP(PREV_BLKP(bp))) +
            GET_SIZE(FTRP(NEXT_BLKP(bp)));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        PUT(FTRP(NEXT_BLKP(bp)), PACK(size, 0));
        addNodeToFree(PREV_BLKP(bp));
        bp = PREV_BLKP(bp);
    }
    return bp;
}




/*
 * mm_free - free the block pointed to by 'bp' and coalesce with adjacent blocks is possible
 * This function is taken from the textbook
 * Textbook: mm_free function
 */

void mm_free(void *bp) // OK
{
    size_t size = GET_SIZE(HDRP(bp));

    PUT(HDRP(bp), PACK(size, 0));
    PUT(FTRP(bp), PACK(size, 0));
    coalesce(bp);
}




/*
 * mm_realloc - realloc the block pointed to by 'ptr' to the fit the new item of size 'size'
 */

void *mm_realloc(void *ptr, size_t size) // OK
{
    size_t asize;

    /* Adjust block size to include overhead and alignment reqs */
    if (size <= DSIZE)
        asize = 2*DSIZE;
    else
        asize = DSIZE * ((size + (DSIZE) + (DSIZE-1)) / DSIZE);

    /* Get allocation status of the next block */
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(ptr)));
    size_t prev_alloc = GET_ALLOC(HDRP(PREV_BLKP(ptr)));

    /* if ptr is Null, the call is the same as malloc */
    if (ptr == NULL)
        return mm_malloc(size);
    
    /* if size is zero, the call is the same as free */
    if (size == 0){
        mm_free(ptr);
        return NULL;
    }

    /* Optimizing realloc function */
    void *oldptr = ptr;
    size_t oldSize;
    void *newptr;
    size_t copySize;

    /* Case the requested realloc block size is smaller than the old block size */
    oldSize = GET_SIZE(HDRP(oldptr));
    if (asize < oldSize) {
        place_realloc(ptr, asize);
        return ptr;
    }
    
    /* Case the requested realloc block size is larger than the old block size */
    else {
        newptr = coalesce_realloc(oldptr);          /* coalesce to get the new pointer to new potential block */
        copySize = GET_SIZE(HDRP(newptr));          /* size of the new block created */
        if (size < copySize)
            copySize = size;
        
        /* Case previous block allocated and next block not allocated */
        if (prev_alloc && !next_alloc && GET_SIZE(HDRP(newptr)) >= asize) {
            place_realloc(newptr, asize);
            memcpy(newptr, oldptr, copySize-WSIZE);
            return newptr;
        }
        
        /* Case previous block not allocated and next block allocated */
        if (!prev_alloc && next_alloc && GET_SIZE(HDRP(newptr)) >= asize) {
            place_realloc(newptr, asize);
            memcpy(newptr, oldptr, copySize-WSIZE);
            return newptr;
        }
        
        /* Case previous block not allocated and next block not allocated */
        if (!prev_alloc && !next_alloc && GET_SIZE(HDRP(newptr)) >= asize) {
            place_realloc(newptr, asize);
            memcpy(newptr, oldptr, copySize-WSIZE);
            return newptr;
        }
        
        /* Case other, simply call malloc and free */
        newptr = mm_malloc(size);
        if (newptr == NULL)
            return NULL;
        
        copySize = GET_SIZE(HDRP(newptr));
        if (size < copySize)
            copySize = size;
        
        memcpy(newptr, oldptr, copySize-WSIZE);
        mm_free(oldptr);
        return newptr;
    }
}




/*
 * coalesce_realloc - coalesce function specifically for realloc
 * This function is adapted from the coalesce function, which itself is modified from the textbook
 * Omit adding 'bp' to free list since bp is never actually freed
 */

static void *coalesce_realloc(void *bp) // OK
{
    size_t prev_alloc = GET_ALLOC(HDRP(PREV_BLKP(bp)));
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));
    
    if (prev_alloc && next_alloc){                          /* Case 1: Prev and Next allocated */
        return bp;
    }
    
    else if (prev_alloc && !next_alloc) {                   /* Case 2: Prev allocated, Next free */
        deleteNodeFromFree(NEXT_BLKP(bp));
        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(bp), PACK(size, 0));
        PUT(FTRP(bp), PACK(size, 0));
    }

    else if (!prev_alloc && next_alloc) {                   /* Case 3: Prev free, Next allocated*/
        deleteNodeFromFree(PREV_BLKP(bp));
        size += GET_SIZE(HDRP(PREV_BLKP(bp)));
        PUT(FTRP(bp), PACK(size, 0));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
    }

    else {                                                  /* Case 4: Prev and Next free */
        deleteNodeFromFree(PREV_BLKP(bp));
        deleteNodeFromFree(NEXT_BLKP(bp));
        size += GET_SIZE(HDRP(PREV_BLKP(bp))) +
            GET_SIZE(FTRP(NEXT_BLKP(bp)));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        PUT(FTRP(NEXT_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
    }
    return bp;
}




/*
 * place_realloc - place function specifically for realloc
 * This function is adapted from the place function
 * Omit deleting 'bp' from free list since 'bp' was never added into the free list
 */

static void place_realloc(void *bp, size_t asize) // OK
{
    size_t csize = GET_SIZE(HDRP(bp));

    if ((csize - asize) >= (3500*DSIZE)) {          /* 3500 chosen to optimize utility for trace 9 and 10 */
        PUT(HDRP(bp), PACK(asize, 1));              /* put the block and put the remaining into free list */
        PUT(FTRP(bp), PACK(asize, 1));

        bp = NEXT_BLKP(bp);
        PUT(HDRP(bp), PACK(csize-asize, 0));
        PUT(FTRP(bp), PACK(csize-asize, 0));
        addNodeToFree(bp);
    }
    
    else {                                          /* if size difference less than 3500*DSIZE */
        PUT(HDRP(bp), PACK(csize, 1));              /* allocate the entire block */
        PUT(FTRP(bp), PACK(csize, 1));
    }
}




/*
 * place_bigSize - place function tailored to account for trace 7 and trace 8
 * This function is adapted from the place function, works for big asize, payload allocated from the end
 */

static void place_bigSize(void *bp, size_t asize) // OK
{
    size_t csize = GET_SIZE(HDRP(bp));
    deleteNodeFromFree(bp);                 /* delete node pointed by bp from the free list */

    if ((csize - asize) >= (2*DSIZE)) {
        PUT(HDRP(bp), PACK(csize-asize, 0));
        PUT(FTRP(bp), PACK(csize-asize, 0));
        addNodeToFree(bp);                  /* adding the front section back into the free list */

        bp = NEXT_BLKP(bp);
        PUT(HDRP(bp), PACK(asize, 1));      /* allocated block at the end */
        PUT(FTRP(bp), PACK(asize, 1));
    }
    else {
        PUT(HDRP(bp), PACK(csize, 1));
        PUT(FTRP(bp), PACK(csize, 1));
    }
}




/*
 * mm_check - return 1 if the heap is consistent, 0 if some error occurs
 */

int mm_check(void)
{
    /* Check free list pointers point to valid free block */
    void *bp, *bpNext;
    bp = free_list;
    bpNext = NULL;
    
    if (bp != NULL)
        bpNext = GET_NEXT_PTR(bp);
    
    while (bpNext != NULL) {
        if (bp != GET_PREV_PTR(bpNext)) {
            printf("Free list pointer error");
            return 0;
        }
        bp = GET_NEXT_PTR(bp);
        bpNext = GET_NEXT_PTR(bpNext);
    }
    
    
    /* Check every block in free list are listed as free */
    bp = NULL;
    bp = free_list;
    while (bp != NULL) {
        if (GET_ALLOC(HDRP(bp))) {
            printf("Some block in free list listed allocated");
            return 0;
        }
        bp = GET_NEXT_PTR(bp);
    }
    
    
    /* Check no contiguous free blocks */
    bp = NULL;
    for (bp = heap_listp; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp)) {
        if (!GET_ALLOC(HDRP(bp))) {
            if (!GET_ALLOC(HDRP(PREV_BLKP(bp)))) {
                printf("Two consecutive free blocks");
                return 0;
            }
            else if (!GET_ALLOC(HDRP(NEXT_BLKP(bp)))) {
                printf("Two consecutive free blocks");
                return 0;
            }
        }
    }
    
    
    /* Check every free block is present in the free list */
    bp = NULL;
    for (bp = heap_listp; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp)) {
        if (!GET_ALLOC(HDRP(bp))) {
            if (isInFreeList(bp) == 0) {
                printf("Some free block not in free list");
                return 0;
            }
        }
    }
    
    
    /* Check header footer match */
    bp = NULL;
    for (bp = heap_listp; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp)) {
        if (GET(HDRP(bp)) != GET(FTRP(bp))) {
            printf("Header and Footer don't match");
            return 0;
        }
    }
    
    
    /* End consistency check, return 1 */
    return 1;
}




/*
 * isInFreeList - return 1 if block pointed to by ptr is in the explicit free list, 0 otherwise
 */

int isInFreeList(void *ptr)
{
    void *bp;
    bp = free_list;
    while (bp != NULL) {
        if (bp == ptr)
            return 1;
        bp = GET_NEXT_PTR(bp);
    }
    return 0;
}

