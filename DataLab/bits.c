/* 
 * CS:APP Data Lab 
 * 
 * <Please put your name and userid here>
 * 
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 *
 * WARNING: Do not include the <stdio.h> header; it confuses the dlc
 * compiler. You can still use printf for debugging without including
 * <stdio.h>, although you might get a compiler warning. In general,
 * it's not good practice to ignore compiler warnings, but in this
 * case it's OK.  
 */

#if 0
/*
 * Instructions to Students:
 *
 * STEP 1: Read the following instructions carefully.
 */

You will provide your solution to the Data Lab by
editing the collection of functions in this source file.

INTEGER CODING RULES:
 
  Replace the "return" statement in each function with one
  or more lines of C code that implements the function. Your code 
  must conform to the following style:
 
  int Funct(arg1, arg2, ...) {
      /* brief description of how your implementation works */
      int var1 = Expr1;
      ...
      int varM = ExprM;

      varJ = ExprJ;
      ...
      varN = ExprN;
      return ExprR;
  }

  Each "Expr" is an expression using ONLY the following:
  1. Integer constants 0 through 255 (0xFF), inclusive. You are
      not allowed to use big constants such as 0xffffffff.
  2. Function arguments and local variables (no global variables).
  3. Unary integer operations ! ~
  4. Binary integer operations & ^ | + << >>
    
  Some of the problems restrict the set of allowed operators even further.
  Each "Expr" may consist of multiple operators. You are not restricted to
  one operator per line.

  You are expressly forbidden to:
  1. Use any control constructs such as if, do, while, for, switch, etc.
  2. Define or use any macros.
  3. Define any additional functions in this file.
  4. Call any functions.
  5. Use any other operations, such as &&, ||, -, or ?:
  6. Use any form of casting.
  7. Use any data type other than int.  This implies that you
     cannot use arrays, structs, or unions.

 
  You may assume that your machine:
  1. Uses 2s complement, 32-bit representations of integers.
  2. Performs right shifts arithmetically.
  3. Has unpredictable behavior when shifting an integer by more
     than the word size.

EXAMPLES OF ACCEPTABLE CODING STYLE:
  /*
   * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
   */
  int pow2plus1(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     return (1 << x) + 1;
  }

  /*
   * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
   */
  int pow2plus4(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     int result = (1 << x);
     result += 4;
     return result;
  }

FLOATING POINT CODING RULES

For the problems that require you to implent floating-point operations,
the coding rules are less strict.  You are allowed to use looping and
conditional control.  You are allowed to use both ints and unsigneds.
You can use arbitrary integer and unsigned constants.

You are expressly forbidden to:
  1. Define or use any macros.
  2. Define any additional functions in this file.
  3. Call any functions.
  4. Use any form of casting.
  5. Use any data type other than int or unsigned.  This means that you
     cannot use arrays, structs, or unions.
  6. Use any floating point data types, operations, or constants.


NOTES:
  1. Use the dlc (data lab checker) compiler (described in the handout) to 
     check the legality of your solutions.
  2. Each function has a maximum number of operators (! ~ & ^ | + << >>)
     that you are allowed to use for your implementation of the function. 
     The max operator count is checked by dlc. Note that '=' is not 
     counted; you may use as many of these as you want without penalty.
  3. Use the btest test harness to check your functions for correctness.
  4. Use the BDD checker to formally verify your functions
  5. The maximum number of ops for each function is given in the
     header comment for each function. If there are any inconsistencies 
     between the maximum ops in the writeup and in this file, consider
     this file the authoritative source.

/*
 * STEP 2: Modify the following functions according the coding rules.
 * 
 *   IMPORTANT. TO AVOID GRADING SURPRISES:
 *   1. Use the dlc compiler to check that your solutions conform
 *      to the coding rules.
 *   2. Use the BDD checker to formally verify that your solutions produce 
 *      the correct answers.
 */


#endif
/* 
 * bitAnd - x&y using only ~ and | 
 *   Example: bitAnd(6, 5) = 4
 *   Legal ops: ~ |
 *   Max ops: 8
 *   Rating: 1
 */
int bitAnd(int x, int y)
{
    return ~(~x | ~y);     // OK
}
/* Demorgan Theorem: not (x and y) equals not x or not y */









/* 
 * getByte - Extract byte n from word x
 *   Bytes numbered from 0 (LSB) to 3 (MSB)
 *   Examples: getByte(0x12345678,1) = 0x56
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 6
 *   Rating: 2
 */
int getByte(int x, int n)
{
    int mask = 0xFF;
    int shiftAmt = n << 3;
    int shifted = x >> shiftAmt;
    return (shifted & mask);       // OK
}
/* use 11111111 to mask and get byte
 * move n left 3 bits equals times 8
 * shift and mask to get corresponding byte
 */









/* 
 * logicalShift - shift x to the right by n, using a logical shift
 *   Can assume that 0 <= n <= 31
 *   Examples: logicalShift(0x87654321,4) = 0x08765432
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 3 
 */
int logicalShift(int x, int n)
{
    int arithShift = x >> n;
    int maskLessOne = ~0 << (31 + (~n + 1));
    int mask = ~(maskLessOne << 1);
    return arithShift & mask;         // OK
}
/* use arithmetic shift as starting point
 * use a mask of n zeros and 32-n ones
 * we shift 31 - n bits first and then shift another one bit instead of 32 - n bits
 * because when n equals zero, shifting 32 bits causes unpredictable behavior
 * we mask the arithmetic shift with the mask and get result of logical Shift
 */









/* 
 * rotateRight - Rotate x to the right by n
 *   Can assume that 0 <= n <= 31
 *   Examples: rotateRight(0x87654321,4) = 0x76543218 Wrong
 *   Examples: rotateRight(0x87654321,4) = 0x18765432
 *   Legal ops: ~ & ^ | + << >> !
 *   Max ops: 25
 *   Rating: 3 
 */
int rotateRight(int x, int n)
{
    int plainRotate = x >> n;
    int maskLessOne = ~0 << (31 + (~n + 1));
    int lsMask = ~(maskLessOne << 1);
    int logicalShift = plainRotate & lsMask;
    
    int mask = ~(0 << n) >> 1;
    int rotatedDigits = x & mask;
    int rotateDigitsWithZeroLessOne = rotatedDigits << (31 + (~n + 1));
    int rotateDigitsWithZero = rotateDigitsWithZeroLessOne << 1;
    return logicalShift | rotateDigitsWithZero;        // OK
}
/* we first get result of logical shift n bits to the right
 * we use a mask of n ones and apply it to x to get the last n bits
 * we shift these bits left (32 - n) bits (first 31 - n bits and then 1 bit)
 * we use "or" to combine the result of logical shift and the shifted bits
 */









/* 
 * conditional - same as x ? y : z 
 *   Example: conditional(2,4,5) = 4
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 16
 *   Rating: 3
 */
int conditional(int x, int y, int z)
{
    int xStatus = ~!!x + 1;
    return (xStatus & y) | (~xStatus & z);       // OK
}
/* we use all zeros or ones as a mask
 * we have all zeros when x equals to zero
 * we have all ones when x does not equal to zero
 * we then use these as masks and use "or" to sort whether we have y or z
 */









/* 
 * bang - Compute !x without using !
 *   Examples: bang(3) = 0, bang(0) = 1
 *   Legal ops: ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 4 
 */
int bang(int x)
{
    int sixteen = (x >> 16) | x;
    int eight = (sixteen >> 8) | sixteen;
    int four = (eight >> 4) | eight;
    int two = (four >> 2) | four;
    int one = (two >> 1) | two;
    return ~one & 1;        // OK
}
/* we repeatedly divide 32 bits by two
 * all possible one will in the end be reflected in LSB
 * if LSB is 1, then there is at least one 1 in the original int
 * if LSB is 1 return 0, if 0 return 1
 */









/*
 * bitParity - returns 1 if x contains an odd number of 0's
 *   Examples: bitParity(5) = 0, bitParity(7) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 4
 */
int bitParity(int x)
{
    int sixteen = (x >> 16) ^ x;
    int eight = (sixteen >> 8) ^ sixteen;
    int four = (eight >> 4) ^ eight;
    int two = (four >> 2) ^ four;
    int one = (two >> 1) ^ two;
    return one & 1;         // OK
}
/* we repeatedly divide 32 bits by two
 * odd or even number of 0 will in the end be reflected in LSB
 * if LSB is 1, then there is odd number of 0 in the original int
 * if LSB is 0 return 0, if 1 return 1
 */









/*
 * isTmax - returns 1 if x is the maximum, two's complement number,
 *     and 0 otherwise 
 *   Legal ops: ! ~ & ^ | +
 *   Max ops: 10
 *   Rating: 1
 */
int isTmax(int x)
{
    return !((~x + (~1 + 1)) ^ x) & !!(~x);      // OK
}
/* ~x-1 equals to x if x is Tmax or x is negative one
 * we eliminate negative one using !!(~x)
 * return 1 if x is Tmax
 */









/* 
 * fitsBits - return 1 if x can be represented as an 
 *  n-bit, two's complement integer.
 *   1 <= n <= 32
 *   Examples: fitsBits(5,3) = 0, fitsBits(-4,3) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 2
 */
int fitsBits(int x, int n)
{
    int xSignThirtyTwo = x >> 31;
    int firstDigits = x >> (n + (~1 + 1));
    return !(xSignThirtyTwo ^ firstDigits);        // OK
}
/* We shift int x n-1 bits to the right, leaving the sign bit and every bit forward
 * We see if the shifted int x is the same as 32 bits of the sign bit
 * if they are the same, that means x can be represented as a n-bit, two's complement integer
 */









/* 
 * divpwr2 - Compute x/(2^n), for 0 <= n <= 30
 *  Round toward zero
 *   Examples: divpwr2(15,1) = 7, divpwr2(-33,4) = -2
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 2
 */
int divpwr2(int x, int n)
{
    int signBit = x >> 31;
    int shiftBit = x >> n;
    int adddev = (1 << n) + (~1 + 1);
    int addShiftBit = (x + adddev) >> n;
    return (~signBit & shiftBit) | (signBit & addShiftBit);      // OK
}
/* if int x is positive, we can simply shift x to the right by n bits
 * if int x is negative, we can address the bias by adding 2 to the power of n minus 1
 * we use the signBit to determine whether we directly shift or address the bias and then shift
 */









/* 
 * negate - return -x 
 *   Example: negate(1) = -1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 5
 *   Rating: 2
 */
int negate(int x)
{
    return ~x + 1;    // OK
}
/* Simply return ~x + 1 to get the negative value
 * Two's complement property used here
 */









/* 
 * isPositive - return 1 if x > 0, return 0 otherwise 
 *   Example: isPositive(-1) = 0.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 8
 *   Rating: 3
 */
int isPositive(int x)
{
    return !((x >> 31) & 1) & (!!x);   // OK
}
/* we shift to get signBit and the value is negative if signBit is 1
 * !!x is zero if x is zero
 * A value is positive if it is not zero and not negative
 */









/* 
 * isGreater - if x > y  then return 1, else return 0 
 *   Example: isGreater(4,5) = 0, isGreater(5,4) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Rating: 3
 */
int isGreater(int x, int y)
{
    int xSignBit = (x >> 31) & 1;
    int ySignBit = (y >> 31) & 1;
    int xyDiff = x + ~y + 1;
    int xyDiffSign = (xyDiff >> 31) & 1;
    return (!(xSignBit ^ ySignBit) & (!!xyDiff) & !xyDiffSign) | (!xSignBit & !!ySignBit);
}      // OK
/* x is greater than y if x is positive and y is negative
 * or x and y are the same sign and x - y is positive
 * we use the MSB of x - y to determine if x is greater than y when x and y have different signs
 * we eliminate the case of 0 when using !!(x - y) to determine whether the difference is zero
 */









/* 
 * subOK - Determine if can compute x-y without overflow
 *   Example: subOK(0x80000000,0x80000000) = 1,
 *            subOK(0x80000000,0x70000000) = 0, 
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 3
 */
int subOK(int x, int y)
{
    int subResult = x + (~y + 1);
    int xSignBit = (x >> 31) & 1;
    int ySignBit = (y >> 31) & 1;
    int subSignBit = (subResult >> 31) & 1;
    return ((!(xSignBit ^ subSignBit)) | (ySignBit ^ subSignBit));     // OK
}
/* an overflow can be captured when x is positive and y is negative, x - y is negative
 * an underflow can be captured when x is negative and y is positive, x - y is positive
 * We shift and get the signBit of x, y, and x - y
 * There is no over/underflow if x and x - y are the same sign, or y and x - y are different sign
 */









/*
 * ilog2 - return floor(log base 2 of x), where x > 0
 *   Example: ilog2(16) = 4
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 90
 *   Rating: 4
 */
int ilog2(int x)
{
    int nBytesToShift = 0;
    int sixteen, eight, four, two, one;
    
    sixteen = !!(x >> 16);
    nBytesToShift = nBytesToShift + (sixteen << 4);
    
    eight = !!(x >> (nBytesToShift + 8));
    nBytesToShift = nBytesToShift + (eight << 3);
    
    four = !!(x >> (nBytesToShift + 4));
    nBytesToShift = nBytesToShift + (four << 2);
    
    two = !!(x >> (nBytesToShift + 2));
    nBytesToShift = nBytesToShift + (two << 1);
    
    one = !!(x >> (nBytesToShift + 1));
    nBytesToShift = nBytesToShift + (one);
    
    return nBytesToShift;
}                              // OK
/* Determining the value for ilog2 is the same as
 * Determining the highest bit of 1 in a binary number
 * We repeatedly divide the int x by 2, using a pseudo recursive logic, to find the highest bit that is an 1
 * We track the number of bytes to shift in a different int, and add the number of bits respectively
 * Declare everything at the top to avoid dlc compilation error
 */
