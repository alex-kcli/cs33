
ctarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000400bc8 <_init>:
  400bc8:	48 83 ec 08          	sub    $0x8,%rsp
  400bcc:	48 8b 05 25 34 20 00 	mov    0x203425(%rip),%rax        # 603ff8 <__gmon_start__>
  400bd3:	48 85 c0             	test   %rax,%rax
  400bd6:	74 05                	je     400bdd <_init+0x15>
  400bd8:	e8 33 01 00 00       	callq  400d10 <__gmon_start__@plt>
  400bdd:	48 83 c4 08          	add    $0x8,%rsp
  400be1:	c3                   	retq   

Disassembly of section .plt:

0000000000400bf0 <.plt>:
  400bf0:	ff 35 12 34 20 00    	pushq  0x203412(%rip)        # 604008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400bf6:	ff 25 14 34 20 00    	jmpq   *0x203414(%rip)        # 604010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400bfc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400c00 <strcasecmp@plt>:
  400c00:	ff 25 12 34 20 00    	jmpq   *0x203412(%rip)        # 604018 <strcasecmp@GLIBC_2.2.5>
  400c06:	68 00 00 00 00       	pushq  $0x0
  400c0b:	e9 e0 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c10 <__errno_location@plt>:
  400c10:	ff 25 0a 34 20 00    	jmpq   *0x20340a(%rip)        # 604020 <__errno_location@GLIBC_2.2.5>
  400c16:	68 01 00 00 00       	pushq  $0x1
  400c1b:	e9 d0 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c20 <srandom@plt>:
  400c20:	ff 25 02 34 20 00    	jmpq   *0x203402(%rip)        # 604028 <srandom@GLIBC_2.2.5>
  400c26:	68 02 00 00 00       	pushq  $0x2
  400c2b:	e9 c0 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c30 <strncmp@plt>:
  400c30:	ff 25 fa 33 20 00    	jmpq   *0x2033fa(%rip)        # 604030 <strncmp@GLIBC_2.2.5>
  400c36:	68 03 00 00 00       	pushq  $0x3
  400c3b:	e9 b0 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c40 <strcpy@plt>:
  400c40:	ff 25 f2 33 20 00    	jmpq   *0x2033f2(%rip)        # 604038 <strcpy@GLIBC_2.2.5>
  400c46:	68 04 00 00 00       	pushq  $0x4
  400c4b:	e9 a0 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c50 <puts@plt>:
  400c50:	ff 25 ea 33 20 00    	jmpq   *0x2033ea(%rip)        # 604040 <puts@GLIBC_2.2.5>
  400c56:	68 05 00 00 00       	pushq  $0x5
  400c5b:	e9 90 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c60 <write@plt>:
  400c60:	ff 25 e2 33 20 00    	jmpq   *0x2033e2(%rip)        # 604048 <write@GLIBC_2.2.5>
  400c66:	68 06 00 00 00       	pushq  $0x6
  400c6b:	e9 80 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c70 <mmap@plt>:
  400c70:	ff 25 da 33 20 00    	jmpq   *0x2033da(%rip)        # 604050 <mmap@GLIBC_2.2.5>
  400c76:	68 07 00 00 00       	pushq  $0x7
  400c7b:	e9 70 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c80 <printf@plt>:
  400c80:	ff 25 d2 33 20 00    	jmpq   *0x2033d2(%rip)        # 604058 <printf@GLIBC_2.2.5>
  400c86:	68 08 00 00 00       	pushq  $0x8
  400c8b:	e9 60 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c90 <memset@plt>:
  400c90:	ff 25 ca 33 20 00    	jmpq   *0x2033ca(%rip)        # 604060 <memset@GLIBC_2.2.5>
  400c96:	68 09 00 00 00       	pushq  $0x9
  400c9b:	e9 50 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400ca0 <alarm@plt>:
  400ca0:	ff 25 c2 33 20 00    	jmpq   *0x2033c2(%rip)        # 604068 <alarm@GLIBC_2.2.5>
  400ca6:	68 0a 00 00 00       	pushq  $0xa
  400cab:	e9 40 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400cb0 <close@plt>:
  400cb0:	ff 25 ba 33 20 00    	jmpq   *0x2033ba(%rip)        # 604070 <close@GLIBC_2.2.5>
  400cb6:	68 0b 00 00 00       	pushq  $0xb
  400cbb:	e9 30 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400cc0 <read@plt>:
  400cc0:	ff 25 b2 33 20 00    	jmpq   *0x2033b2(%rip)        # 604078 <read@GLIBC_2.2.5>
  400cc6:	68 0c 00 00 00       	pushq  $0xc
  400ccb:	e9 20 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400cd0 <__libc_start_main@plt>:
  400cd0:	ff 25 aa 33 20 00    	jmpq   *0x2033aa(%rip)        # 604080 <__libc_start_main@GLIBC_2.2.5>
  400cd6:	68 0d 00 00 00       	pushq  $0xd
  400cdb:	e9 10 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400ce0 <signal@plt>:
  400ce0:	ff 25 a2 33 20 00    	jmpq   *0x2033a2(%rip)        # 604088 <signal@GLIBC_2.2.5>
  400ce6:	68 0e 00 00 00       	pushq  $0xe
  400ceb:	e9 00 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400cf0 <gethostbyname@plt>:
  400cf0:	ff 25 9a 33 20 00    	jmpq   *0x20339a(%rip)        # 604090 <gethostbyname@GLIBC_2.2.5>
  400cf6:	68 0f 00 00 00       	pushq  $0xf
  400cfb:	e9 f0 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d00 <fprintf@plt>:
  400d00:	ff 25 92 33 20 00    	jmpq   *0x203392(%rip)        # 604098 <fprintf@GLIBC_2.2.5>
  400d06:	68 10 00 00 00       	pushq  $0x10
  400d0b:	e9 e0 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d10 <__gmon_start__@plt>:
  400d10:	ff 25 8a 33 20 00    	jmpq   *0x20338a(%rip)        # 6040a0 <__gmon_start__>
  400d16:	68 11 00 00 00       	pushq  $0x11
  400d1b:	e9 d0 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d20 <strtol@plt>:
  400d20:	ff 25 82 33 20 00    	jmpq   *0x203382(%rip)        # 6040a8 <strtol@GLIBC_2.2.5>
  400d26:	68 12 00 00 00       	pushq  $0x12
  400d2b:	e9 c0 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d30 <memcpy@plt>:
  400d30:	ff 25 7a 33 20 00    	jmpq   *0x20337a(%rip)        # 6040b0 <memcpy@GLIBC_2.14>
  400d36:	68 13 00 00 00       	pushq  $0x13
  400d3b:	e9 b0 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d40 <time@plt>:
  400d40:	ff 25 72 33 20 00    	jmpq   *0x203372(%rip)        # 6040b8 <time@GLIBC_2.2.5>
  400d46:	68 14 00 00 00       	pushq  $0x14
  400d4b:	e9 a0 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d50 <random@plt>:
  400d50:	ff 25 6a 33 20 00    	jmpq   *0x20336a(%rip)        # 6040c0 <random@GLIBC_2.2.5>
  400d56:	68 15 00 00 00       	pushq  $0x15
  400d5b:	e9 90 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d60 <_IO_getc@plt>:
  400d60:	ff 25 62 33 20 00    	jmpq   *0x203362(%rip)        # 6040c8 <_IO_getc@GLIBC_2.2.5>
  400d66:	68 16 00 00 00       	pushq  $0x16
  400d6b:	e9 80 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d70 <__isoc99_sscanf@plt>:
  400d70:	ff 25 5a 33 20 00    	jmpq   *0x20335a(%rip)        # 6040d0 <__isoc99_sscanf@GLIBC_2.7>
  400d76:	68 17 00 00 00       	pushq  $0x17
  400d7b:	e9 70 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d80 <munmap@plt>:
  400d80:	ff 25 52 33 20 00    	jmpq   *0x203352(%rip)        # 6040d8 <munmap@GLIBC_2.2.5>
  400d86:	68 18 00 00 00       	pushq  $0x18
  400d8b:	e9 60 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d90 <bcopy@plt>:
  400d90:	ff 25 4a 33 20 00    	jmpq   *0x20334a(%rip)        # 6040e0 <bcopy@GLIBC_2.2.5>
  400d96:	68 19 00 00 00       	pushq  $0x19
  400d9b:	e9 50 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400da0 <fopen@plt>:
  400da0:	ff 25 42 33 20 00    	jmpq   *0x203342(%rip)        # 6040e8 <fopen@GLIBC_2.2.5>
  400da6:	68 1a 00 00 00       	pushq  $0x1a
  400dab:	e9 40 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400db0 <getopt@plt>:
  400db0:	ff 25 3a 33 20 00    	jmpq   *0x20333a(%rip)        # 6040f0 <getopt@GLIBC_2.2.5>
  400db6:	68 1b 00 00 00       	pushq  $0x1b
  400dbb:	e9 30 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400dc0 <strtoul@plt>:
  400dc0:	ff 25 32 33 20 00    	jmpq   *0x203332(%rip)        # 6040f8 <strtoul@GLIBC_2.2.5>
  400dc6:	68 1c 00 00 00       	pushq  $0x1c
  400dcb:	e9 20 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400dd0 <gethostname@plt>:
  400dd0:	ff 25 2a 33 20 00    	jmpq   *0x20332a(%rip)        # 604100 <gethostname@GLIBC_2.2.5>
  400dd6:	68 1d 00 00 00       	pushq  $0x1d
  400ddb:	e9 10 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400de0 <sprintf@plt>:
  400de0:	ff 25 22 33 20 00    	jmpq   *0x203322(%rip)        # 604108 <sprintf@GLIBC_2.2.5>
  400de6:	68 1e 00 00 00       	pushq  $0x1e
  400deb:	e9 00 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400df0 <exit@plt>:
  400df0:	ff 25 1a 33 20 00    	jmpq   *0x20331a(%rip)        # 604110 <exit@GLIBC_2.2.5>
  400df6:	68 1f 00 00 00       	pushq  $0x1f
  400dfb:	e9 f0 fd ff ff       	jmpq   400bf0 <.plt>

0000000000400e00 <connect@plt>:
  400e00:	ff 25 12 33 20 00    	jmpq   *0x203312(%rip)        # 604118 <connect@GLIBC_2.2.5>
  400e06:	68 20 00 00 00       	pushq  $0x20
  400e0b:	e9 e0 fd ff ff       	jmpq   400bf0 <.plt>

0000000000400e10 <socket@plt>:
  400e10:	ff 25 0a 33 20 00    	jmpq   *0x20330a(%rip)        # 604120 <socket@GLIBC_2.2.5>
  400e16:	68 21 00 00 00       	pushq  $0x21
  400e1b:	e9 d0 fd ff ff       	jmpq   400bf0 <.plt>

Disassembly of section .text:

0000000000400e20 <_start>:
  400e20:	31 ed                	xor    %ebp,%ebp
  400e22:	49 89 d1             	mov    %rdx,%r9
  400e25:	5e                   	pop    %rsi
  400e26:	48 89 e2             	mov    %rsp,%rdx
  400e29:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400e2d:	50                   	push   %rax
  400e2e:	54                   	push   %rsp
  400e2f:	49 c7 c0 b0 2b 40 00 	mov    $0x402bb0,%r8
  400e36:	48 c7 c1 40 2b 40 00 	mov    $0x402b40,%rcx
  400e3d:	48 c7 c7 e0 10 40 00 	mov    $0x4010e0,%rdi
  400e44:	e8 87 fe ff ff       	callq  400cd0 <__libc_start_main@plt>
  400e49:	f4                   	hlt    
  400e4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400e50 <deregister_tm_clones>:
  400e50:	b8 b7 44 60 00       	mov    $0x6044b7,%eax
  400e55:	55                   	push   %rbp
  400e56:	48 2d b0 44 60 00    	sub    $0x6044b0,%rax
  400e5c:	48 83 f8 0e          	cmp    $0xe,%rax
  400e60:	48 89 e5             	mov    %rsp,%rbp
  400e63:	77 02                	ja     400e67 <deregister_tm_clones+0x17>
  400e65:	5d                   	pop    %rbp
  400e66:	c3                   	retq   
  400e67:	b8 00 00 00 00       	mov    $0x0,%eax
  400e6c:	48 85 c0             	test   %rax,%rax
  400e6f:	74 f4                	je     400e65 <deregister_tm_clones+0x15>
  400e71:	5d                   	pop    %rbp
  400e72:	bf b0 44 60 00       	mov    $0x6044b0,%edi
  400e77:	ff e0                	jmpq   *%rax
  400e79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400e80 <register_tm_clones>:
  400e80:	b8 b0 44 60 00       	mov    $0x6044b0,%eax
  400e85:	55                   	push   %rbp
  400e86:	48 2d b0 44 60 00    	sub    $0x6044b0,%rax
  400e8c:	48 c1 f8 03          	sar    $0x3,%rax
  400e90:	48 89 e5             	mov    %rsp,%rbp
  400e93:	48 89 c2             	mov    %rax,%rdx
  400e96:	48 c1 ea 3f          	shr    $0x3f,%rdx
  400e9a:	48 01 d0             	add    %rdx,%rax
  400e9d:	48 d1 f8             	sar    %rax
  400ea0:	75 02                	jne    400ea4 <register_tm_clones+0x24>
  400ea2:	5d                   	pop    %rbp
  400ea3:	c3                   	retq   
  400ea4:	ba 00 00 00 00       	mov    $0x0,%edx
  400ea9:	48 85 d2             	test   %rdx,%rdx
  400eac:	74 f4                	je     400ea2 <register_tm_clones+0x22>
  400eae:	5d                   	pop    %rbp
  400eaf:	48 89 c6             	mov    %rax,%rsi
  400eb2:	bf b0 44 60 00       	mov    $0x6044b0,%edi
  400eb7:	ff e2                	jmpq   *%rdx
  400eb9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400ec0 <__do_global_dtors_aux>:
  400ec0:	80 3d 11 36 20 00 00 	cmpb   $0x0,0x203611(%rip)        # 6044d8 <completed.6355>
  400ec7:	75 11                	jne    400eda <__do_global_dtors_aux+0x1a>
  400ec9:	55                   	push   %rbp
  400eca:	48 89 e5             	mov    %rsp,%rbp
  400ecd:	e8 7e ff ff ff       	callq  400e50 <deregister_tm_clones>
  400ed2:	5d                   	pop    %rbp
  400ed3:	c6 05 fe 35 20 00 01 	movb   $0x1,0x2035fe(%rip)        # 6044d8 <completed.6355>
  400eda:	f3 c3                	repz retq 
  400edc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400ee0 <frame_dummy>:
  400ee0:	48 83 3d 38 2f 20 00 	cmpq   $0x0,0x202f38(%rip)        # 603e20 <__JCR_END__>
  400ee7:	00 
  400ee8:	74 1e                	je     400f08 <frame_dummy+0x28>
  400eea:	b8 00 00 00 00       	mov    $0x0,%eax
  400eef:	48 85 c0             	test   %rax,%rax
  400ef2:	74 14                	je     400f08 <frame_dummy+0x28>
  400ef4:	55                   	push   %rbp
  400ef5:	bf 20 3e 60 00       	mov    $0x603e20,%edi
  400efa:	48 89 e5             	mov    %rsp,%rbp
  400efd:	ff d0                	callq  *%rax
  400eff:	5d                   	pop    %rbp
  400f00:	e9 7b ff ff ff       	jmpq   400e80 <register_tm_clones>
  400f05:	0f 1f 00             	nopl   (%rax)
  400f08:	e9 73 ff ff ff       	jmpq   400e80 <register_tm_clones>
  400f0d:	0f 1f 00             	nopl   (%rax)

0000000000400f10 <usage>:
  400f10:	48 83 ec 08          	sub    $0x8,%rsp
  400f14:	48 89 fe             	mov    %rdi,%rsi
  400f17:	83 3d ea 35 20 00 00 	cmpl   $0x0,0x2035ea(%rip)        # 604508 <is_checker>
  400f1e:	74 39                	je     400f59 <usage+0x49>
  400f20:	bf d0 2b 40 00       	mov    $0x402bd0,%edi
  400f25:	b8 00 00 00 00       	mov    $0x0,%eax
  400f2a:	e8 51 fd ff ff       	callq  400c80 <printf@plt>
  400f2f:	bf 08 2c 40 00       	mov    $0x402c08,%edi
  400f34:	e8 17 fd ff ff       	callq  400c50 <puts@plt>
  400f39:	bf 80 2d 40 00       	mov    $0x402d80,%edi
  400f3e:	e8 0d fd ff ff       	callq  400c50 <puts@plt>
  400f43:	bf 30 2c 40 00       	mov    $0x402c30,%edi
  400f48:	e8 03 fd ff ff       	callq  400c50 <puts@plt>
  400f4d:	bf 9a 2d 40 00       	mov    $0x402d9a,%edi
  400f52:	e8 f9 fc ff ff       	callq  400c50 <puts@plt>
  400f57:	eb 2d                	jmp    400f86 <usage+0x76>
  400f59:	bf b6 2d 40 00       	mov    $0x402db6,%edi
  400f5e:	b8 00 00 00 00       	mov    $0x0,%eax
  400f63:	e8 18 fd ff ff       	callq  400c80 <printf@plt>
  400f68:	bf 58 2c 40 00       	mov    $0x402c58,%edi
  400f6d:	e8 de fc ff ff       	callq  400c50 <puts@plt>
  400f72:	bf 80 2c 40 00       	mov    $0x402c80,%edi
  400f77:	e8 d4 fc ff ff       	callq  400c50 <puts@plt>
  400f7c:	bf d4 2d 40 00       	mov    $0x402dd4,%edi
  400f81:	e8 ca fc ff ff       	callq  400c50 <puts@plt>
  400f86:	bf 00 00 00 00       	mov    $0x0,%edi
  400f8b:	e8 60 fe ff ff       	callq  400df0 <exit@plt>

0000000000400f90 <initialize_target>:
  400f90:	55                   	push   %rbp
  400f91:	53                   	push   %rbx
  400f92:	48 81 ec 08 21 00 00 	sub    $0x2108,%rsp
  400f99:	89 f5                	mov    %esi,%ebp
  400f9b:	89 3d 57 35 20 00    	mov    %edi,0x203557(%rip)        # 6044f8 <check_level>
  400fa1:	8b 3d c1 31 20 00    	mov    0x2031c1(%rip),%edi        # 604168 <target_id>
  400fa7:	e8 67 1b 00 00       	callq  402b13 <gencookie>
  400fac:	89 05 52 35 20 00    	mov    %eax,0x203552(%rip)        # 604504 <cookie>
  400fb2:	89 c7                	mov    %eax,%edi
  400fb4:	e8 5a 1b 00 00       	callq  402b13 <gencookie>
  400fb9:	89 05 41 35 20 00    	mov    %eax,0x203541(%rip)        # 604500 <authkey>
  400fbf:	8b 05 a3 31 20 00    	mov    0x2031a3(%rip),%eax        # 604168 <target_id>
  400fc5:	8d 78 01             	lea    0x1(%rax),%edi
  400fc8:	e8 53 fc ff ff       	callq  400c20 <srandom@plt>
  400fcd:	e8 7e fd ff ff       	callq  400d50 <random@plt>
  400fd2:	89 c7                	mov    %eax,%edi
  400fd4:	e8 ca 02 00 00       	callq  4012a3 <scramble>
  400fd9:	89 c3                	mov    %eax,%ebx
  400fdb:	85 ed                	test   %ebp,%ebp
  400fdd:	74 18                	je     400ff7 <initialize_target+0x67>
  400fdf:	bf 00 00 00 00       	mov    $0x0,%edi
  400fe4:	e8 57 fd ff ff       	callq  400d40 <time@plt>
  400fe9:	89 c7                	mov    %eax,%edi
  400feb:	e8 30 fc ff ff       	callq  400c20 <srandom@plt>
  400ff0:	e8 5b fd ff ff       	callq  400d50 <random@plt>
  400ff5:	eb 05                	jmp    400ffc <initialize_target+0x6c>
  400ff7:	b8 00 00 00 00       	mov    $0x0,%eax
  400ffc:	01 c3                	add    %eax,%ebx
  400ffe:	0f b7 db             	movzwl %bx,%ebx
  401001:	8d 04 dd 00 01 00 00 	lea    0x100(,%rbx,8),%eax
  401008:	89 c0                	mov    %eax,%eax
  40100a:	48 89 05 8f 34 20 00 	mov    %rax,0x20348f(%rip)        # 6044a0 <buf_offset>
  401011:	c6 05 10 41 20 00 63 	movb   $0x63,0x204110(%rip)        # 605128 <target_prefix>
  401018:	83 3d 89 34 20 00 00 	cmpl   $0x0,0x203489(%rip)        # 6044a8 <notify>
  40101f:	0f 84 b1 00 00 00    	je     4010d6 <initialize_target+0x146>
  401025:	83 3d dc 34 20 00 00 	cmpl   $0x0,0x2034dc(%rip)        # 604508 <is_checker>
  40102c:	0f 85 a4 00 00 00    	jne    4010d6 <initialize_target+0x146>
  401032:	be 00 01 00 00       	mov    $0x100,%esi
  401037:	48 89 e7             	mov    %rsp,%rdi
  40103a:	e8 91 fd ff ff       	callq  400dd0 <gethostname@plt>
  40103f:	85 c0                	test   %eax,%eax
  401041:	74 25                	je     401068 <initialize_target+0xd8>
  401043:	bf b0 2c 40 00       	mov    $0x402cb0,%edi
  401048:	e8 03 fc ff ff       	callq  400c50 <puts@plt>
  40104d:	bf 08 00 00 00       	mov    $0x8,%edi
  401052:	e8 99 fd ff ff       	callq  400df0 <exit@plt>
  401057:	48 89 e6             	mov    %rsp,%rsi
  40105a:	e8 a1 fb ff ff       	callq  400c00 <strcasecmp@plt>
  40105f:	85 c0                	test   %eax,%eax
  401061:	74 21                	je     401084 <initialize_target+0xf4>
  401063:	83 c3 01             	add    $0x1,%ebx
  401066:	eb 05                	jmp    40106d <initialize_target+0xdd>
  401068:	bb 00 00 00 00       	mov    $0x0,%ebx
  40106d:	48 63 c3             	movslq %ebx,%rax
  401070:	48 8b 3c c5 80 41 60 	mov    0x604180(,%rax,8),%rdi
  401077:	00 
  401078:	48 85 ff             	test   %rdi,%rdi
  40107b:	75 da                	jne    401057 <initialize_target+0xc7>
  40107d:	b8 00 00 00 00       	mov    $0x0,%eax
  401082:	eb 05                	jmp    401089 <initialize_target+0xf9>
  401084:	b8 01 00 00 00       	mov    $0x1,%eax
  401089:	85 c0                	test   %eax,%eax
  40108b:	75 17                	jne    4010a4 <initialize_target+0x114>
  40108d:	48 89 e6             	mov    %rsp,%rsi
  401090:	bf e8 2c 40 00       	mov    $0x402ce8,%edi
  401095:	e8 e6 fb ff ff       	callq  400c80 <printf@plt>
  40109a:	bf 08 00 00 00       	mov    $0x8,%edi
  40109f:	e8 4c fd ff ff       	callq  400df0 <exit@plt>
  4010a4:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  4010ab:	00 
  4010ac:	e8 f9 17 00 00       	callq  4028aa <init_driver>
  4010b1:	85 c0                	test   %eax,%eax
  4010b3:	79 21                	jns    4010d6 <initialize_target+0x146>
  4010b5:	48 8d b4 24 00 01 00 	lea    0x100(%rsp),%rsi
  4010bc:	00 
  4010bd:	bf 28 2d 40 00       	mov    $0x402d28,%edi
  4010c2:	b8 00 00 00 00       	mov    $0x0,%eax
  4010c7:	e8 b4 fb ff ff       	callq  400c80 <printf@plt>
  4010cc:	bf 08 00 00 00       	mov    $0x8,%edi
  4010d1:	e8 1a fd ff ff       	callq  400df0 <exit@plt>
  4010d6:	48 81 c4 08 21 00 00 	add    $0x2108,%rsp
  4010dd:	5b                   	pop    %rbx
  4010de:	5d                   	pop    %rbp
  4010df:	c3                   	retq   

00000000004010e0 <main>:
  4010e0:	41 56                	push   %r14
  4010e2:	41 55                	push   %r13
  4010e4:	41 54                	push   %r12
  4010e6:	55                   	push   %rbp
  4010e7:	53                   	push   %rbx
  4010e8:	41 89 fc             	mov    %edi,%r12d
  4010eb:	48 89 f3             	mov    %rsi,%rbx
  4010ee:	be d1 1c 40 00       	mov    $0x401cd1,%esi
  4010f3:	bf 0b 00 00 00       	mov    $0xb,%edi
  4010f8:	e8 e3 fb ff ff       	callq  400ce0 <signal@plt>
  4010fd:	be 83 1c 40 00       	mov    $0x401c83,%esi
  401102:	bf 07 00 00 00       	mov    $0x7,%edi
  401107:	e8 d4 fb ff ff       	callq  400ce0 <signal@plt>
  40110c:	be 1f 1d 40 00       	mov    $0x401d1f,%esi
  401111:	bf 04 00 00 00       	mov    $0x4,%edi
  401116:	e8 c5 fb ff ff       	callq  400ce0 <signal@plt>
  40111b:	83 3d e6 33 20 00 00 	cmpl   $0x0,0x2033e6(%rip)        # 604508 <is_checker>
  401122:	74 20                	je     401144 <main+0x64>
  401124:	be 6d 1d 40 00       	mov    $0x401d6d,%esi
  401129:	bf 0e 00 00 00       	mov    $0xe,%edi
  40112e:	e8 ad fb ff ff       	callq  400ce0 <signal@plt>
  401133:	bf 05 00 00 00       	mov    $0x5,%edi
  401138:	e8 63 fb ff ff       	callq  400ca0 <alarm@plt>
  40113d:	bd f2 2d 40 00       	mov    $0x402df2,%ebp
  401142:	eb 05                	jmp    401149 <main+0x69>
  401144:	bd ed 2d 40 00       	mov    $0x402ded,%ebp
  401149:	48 8b 05 70 33 20 00 	mov    0x203370(%rip),%rax        # 6044c0 <stdin@@GLIBC_2.2.5>
  401150:	48 89 05 99 33 20 00 	mov    %rax,0x203399(%rip)        # 6044f0 <infile>
  401157:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  40115d:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401163:	e9 b9 00 00 00       	jmpq   401221 <main+0x141>
  401168:	83 e8 61             	sub    $0x61,%eax
  40116b:	3c 10                	cmp    $0x10,%al
  40116d:	0f 87 93 00 00 00    	ja     401206 <main+0x126>
  401173:	0f b6 c0             	movzbl %al,%eax
  401176:	ff 24 c5 38 2e 40 00 	jmpq   *0x402e38(,%rax,8)
  40117d:	48 8b 3b             	mov    (%rbx),%rdi
  401180:	e8 8b fd ff ff       	callq  400f10 <usage>
  401185:	be 9d 31 40 00       	mov    $0x40319d,%esi
  40118a:	48 8b 3d 37 33 20 00 	mov    0x203337(%rip),%rdi        # 6044c8 <optarg@@GLIBC_2.2.5>
  401191:	e8 0a fc ff ff       	callq  400da0 <fopen@plt>
  401196:	48 89 05 53 33 20 00 	mov    %rax,0x203353(%rip)        # 6044f0 <infile>
  40119d:	48 85 c0             	test   %rax,%rax
  4011a0:	75 7f                	jne    401221 <main+0x141>
  4011a2:	48 8b 15 1f 33 20 00 	mov    0x20331f(%rip),%rdx        # 6044c8 <optarg@@GLIBC_2.2.5>
  4011a9:	be fa 2d 40 00       	mov    $0x402dfa,%esi
  4011ae:	48 8b 3d 1b 33 20 00 	mov    0x20331b(%rip),%rdi        # 6044d0 <stderr@@GLIBC_2.2.5>
  4011b5:	e8 46 fb ff ff       	callq  400d00 <fprintf@plt>
  4011ba:	b8 01 00 00 00       	mov    $0x1,%eax
  4011bf:	e9 d6 00 00 00       	jmpq   40129a <main+0x1ba>
  4011c4:	ba 10 00 00 00       	mov    $0x10,%edx
  4011c9:	be 00 00 00 00       	mov    $0x0,%esi
  4011ce:	48 8b 3d f3 32 20 00 	mov    0x2032f3(%rip),%rdi        # 6044c8 <optarg@@GLIBC_2.2.5>
  4011d5:	e8 e6 fb ff ff       	callq  400dc0 <strtoul@plt>
  4011da:	41 89 c6             	mov    %eax,%r14d
  4011dd:	eb 42                	jmp    401221 <main+0x141>
  4011df:	ba 0a 00 00 00       	mov    $0xa,%edx
  4011e4:	be 00 00 00 00       	mov    $0x0,%esi
  4011e9:	48 8b 3d d8 32 20 00 	mov    0x2032d8(%rip),%rdi        # 6044c8 <optarg@@GLIBC_2.2.5>
  4011f0:	e8 2b fb ff ff       	callq  400d20 <strtol@plt>
  4011f5:	41 89 c5             	mov    %eax,%r13d
  4011f8:	eb 27                	jmp    401221 <main+0x141>
  4011fa:	c7 05 a4 32 20 00 00 	movl   $0x0,0x2032a4(%rip)        # 6044a8 <notify>
  401201:	00 00 00 
  401204:	eb 1b                	jmp    401221 <main+0x141>
  401206:	40 0f be f6          	movsbl %sil,%esi
  40120a:	bf 17 2e 40 00       	mov    $0x402e17,%edi
  40120f:	b8 00 00 00 00       	mov    $0x0,%eax
  401214:	e8 67 fa ff ff       	callq  400c80 <printf@plt>
  401219:	48 8b 3b             	mov    (%rbx),%rdi
  40121c:	e8 ef fc ff ff       	callq  400f10 <usage>
  401221:	48 89 ea             	mov    %rbp,%rdx
  401224:	48 89 de             	mov    %rbx,%rsi
  401227:	44 89 e7             	mov    %r12d,%edi
  40122a:	e8 81 fb ff ff       	callq  400db0 <getopt@plt>
  40122f:	89 c6                	mov    %eax,%esi
  401231:	3c ff                	cmp    $0xff,%al
  401233:	0f 85 2f ff ff ff    	jne    401168 <main+0x88>
  401239:	be 00 00 00 00       	mov    $0x0,%esi
  40123e:	44 89 ef             	mov    %r13d,%edi
  401241:	e8 4a fd ff ff       	callq  400f90 <initialize_target>
  401246:	83 3d bb 32 20 00 00 	cmpl   $0x0,0x2032bb(%rip)        # 604508 <is_checker>
  40124d:	74 25                	je     401274 <main+0x194>
  40124f:	44 3b 35 aa 32 20 00 	cmp    0x2032aa(%rip),%r14d        # 604500 <authkey>
  401256:	74 1c                	je     401274 <main+0x194>
  401258:	44 89 f6             	mov    %r14d,%esi
  40125b:	bf 50 2d 40 00       	mov    $0x402d50,%edi
  401260:	b8 00 00 00 00       	mov    $0x0,%eax
  401265:	e8 16 fa ff ff       	callq  400c80 <printf@plt>
  40126a:	b8 00 00 00 00       	mov    $0x0,%eax
  40126f:	e8 17 07 00 00       	callq  40198b <check_fail>
  401274:	8b 35 8a 32 20 00    	mov    0x20328a(%rip),%esi        # 604504 <cookie>
  40127a:	bf 2a 2e 40 00       	mov    $0x402e2a,%edi
  40127f:	b8 00 00 00 00       	mov    $0x0,%eax
  401284:	e8 f7 f9 ff ff       	callq  400c80 <printf@plt>
  401289:	48 8b 3d 10 32 20 00 	mov    0x203210(%rip),%rdi        # 6044a0 <buf_offset>
  401290:	e8 a7 0b 00 00       	callq  401e3c <stable_launch>
  401295:	b8 00 00 00 00       	mov    $0x0,%eax
  40129a:	5b                   	pop    %rbx
  40129b:	5d                   	pop    %rbp
  40129c:	41 5c                	pop    %r12
  40129e:	41 5d                	pop    %r13
  4012a0:	41 5e                	pop    %r14
  4012a2:	c3                   	retq   

00000000004012a3 <scramble>:
  4012a3:	b8 00 00 00 00       	mov    $0x0,%eax
  4012a8:	eb 11                	jmp    4012bb <scramble+0x18>
  4012aa:	69 c8 55 e0 00 00    	imul   $0xe055,%eax,%ecx
  4012b0:	01 f9                	add    %edi,%ecx
  4012b2:	89 c2                	mov    %eax,%edx
  4012b4:	89 4c 94 d0          	mov    %ecx,-0x30(%rsp,%rdx,4)
  4012b8:	83 c0 01             	add    $0x1,%eax
  4012bb:	83 f8 09             	cmp    $0x9,%eax
  4012be:	76 ea                	jbe    4012aa <scramble+0x7>
  4012c0:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4012c4:	69 c0 50 12 00 00    	imul   $0x1250,%eax,%eax
  4012ca:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4012ce:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4012d2:	69 c0 21 0b 00 00    	imul   $0xb21,%eax,%eax
  4012d8:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4012dc:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4012e0:	69 c0 89 2e 00 00    	imul   $0x2e89,%eax,%eax
  4012e6:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4012ea:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4012ee:	69 c0 bc 2b 00 00    	imul   $0x2bbc,%eax,%eax
  4012f4:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4012f8:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4012fc:	69 c0 b6 db 00 00    	imul   $0xdbb6,%eax,%eax
  401302:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401306:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  40130a:	69 c0 84 e0 00 00    	imul   $0xe084,%eax,%eax
  401310:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401314:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401318:	69 c0 48 3c 00 00    	imul   $0x3c48,%eax,%eax
  40131e:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401322:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401326:	69 c0 d3 05 00 00    	imul   $0x5d3,%eax,%eax
  40132c:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401330:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401334:	69 c0 b8 e2 00 00    	imul   $0xe2b8,%eax,%eax
  40133a:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  40133e:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401342:	69 c0 ef 54 00 00    	imul   $0x54ef,%eax,%eax
  401348:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40134c:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401350:	69 c0 29 ed 00 00    	imul   $0xed29,%eax,%eax
  401356:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  40135a:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40135e:	69 c0 36 83 00 00    	imul   $0x8336,%eax,%eax
  401364:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401368:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  40136c:	69 c0 c1 87 00 00    	imul   $0x87c1,%eax,%eax
  401372:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401376:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  40137a:	69 c0 f3 2f 00 00    	imul   $0x2ff3,%eax,%eax
  401380:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401384:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401388:	69 c0 c0 e8 00 00    	imul   $0xe8c0,%eax,%eax
  40138e:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401392:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401396:	69 c0 6b 6a 00 00    	imul   $0x6a6b,%eax,%eax
  40139c:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4013a0:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4013a4:	69 c0 98 7b 00 00    	imul   $0x7b98,%eax,%eax
  4013aa:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4013ae:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4013b2:	69 c0 7e 5e 00 00    	imul   $0x5e7e,%eax,%eax
  4013b8:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4013bc:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4013c0:	69 c0 e6 80 00 00    	imul   $0x80e6,%eax,%eax
  4013c6:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4013ca:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4013ce:	69 c0 92 c1 00 00    	imul   $0xc192,%eax,%eax
  4013d4:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4013d8:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4013dc:	69 c0 6c d2 00 00    	imul   $0xd26c,%eax,%eax
  4013e2:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4013e6:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4013ea:	69 c0 4a 65 00 00    	imul   $0x654a,%eax,%eax
  4013f0:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4013f4:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4013f8:	69 c0 19 79 00 00    	imul   $0x7919,%eax,%eax
  4013fe:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401402:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401406:	69 c0 49 87 00 00    	imul   $0x8749,%eax,%eax
  40140c:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401410:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401414:	69 c0 b6 f5 00 00    	imul   $0xf5b6,%eax,%eax
  40141a:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  40141e:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401422:	69 c0 2d 56 00 00    	imul   $0x562d,%eax,%eax
  401428:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40142c:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401430:	69 c0 87 a4 00 00    	imul   $0xa487,%eax,%eax
  401436:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40143a:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  40143e:	69 c0 79 0e 00 00    	imul   $0xe79,%eax,%eax
  401444:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401448:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  40144c:	69 c0 e1 83 00 00    	imul   $0x83e1,%eax,%eax
  401452:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401456:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  40145a:	69 c0 5e b6 00 00    	imul   $0xb65e,%eax,%eax
  401460:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401464:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401468:	69 c0 48 4d 00 00    	imul   $0x4d48,%eax,%eax
  40146e:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401472:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401476:	69 c0 b1 67 00 00    	imul   $0x67b1,%eax,%eax
  40147c:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401480:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401484:	69 c0 57 96 00 00    	imul   $0x9657,%eax,%eax
  40148a:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40148e:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401492:	69 c0 02 73 00 00    	imul   $0x7302,%eax,%eax
  401498:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40149c:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4014a0:	69 c0 69 50 00 00    	imul   $0x5069,%eax,%eax
  4014a6:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4014aa:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4014ae:	69 c0 da 73 00 00    	imul   $0x73da,%eax,%eax
  4014b4:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4014b8:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4014bc:	69 c0 ab d6 00 00    	imul   $0xd6ab,%eax,%eax
  4014c2:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4014c6:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4014ca:	69 c0 8a 31 00 00    	imul   $0x318a,%eax,%eax
  4014d0:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4014d4:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4014d8:	69 c0 43 44 00 00    	imul   $0x4443,%eax,%eax
  4014de:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4014e2:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4014e6:	69 c0 97 ab 00 00    	imul   $0xab97,%eax,%eax
  4014ec:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4014f0:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4014f4:	69 c0 0c 95 00 00    	imul   $0x950c,%eax,%eax
  4014fa:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4014fe:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401502:	69 c0 d8 1c 00 00    	imul   $0x1cd8,%eax,%eax
  401508:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  40150c:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401510:	69 c0 27 db 00 00    	imul   $0xdb27,%eax,%eax
  401516:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40151a:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  40151e:	69 c0 dc 65 00 00    	imul   $0x65dc,%eax,%eax
  401524:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401528:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40152c:	69 c0 be 69 00 00    	imul   $0x69be,%eax,%eax
  401532:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401536:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  40153a:	69 c0 a9 cb 00 00    	imul   $0xcba9,%eax,%eax
  401540:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401544:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401548:	69 c0 04 3d 00 00    	imul   $0x3d04,%eax,%eax
  40154e:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401552:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401556:	69 c0 e7 7f 00 00    	imul   $0x7fe7,%eax,%eax
  40155c:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401560:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401564:	69 c0 89 f9 00 00    	imul   $0xf989,%eax,%eax
  40156a:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40156e:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401572:	69 c0 99 ea 00 00    	imul   $0xea99,%eax,%eax
  401578:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  40157c:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401580:	69 c0 7e 27 00 00    	imul   $0x277e,%eax,%eax
  401586:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40158a:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  40158e:	69 c0 c8 6c 00 00    	imul   $0x6cc8,%eax,%eax
  401594:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401598:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  40159c:	69 c0 98 37 00 00    	imul   $0x3798,%eax,%eax
  4015a2:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4015a6:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4015aa:	69 c0 ef 4d 00 00    	imul   $0x4def,%eax,%eax
  4015b0:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4015b4:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4015b8:	69 c0 26 57 00 00    	imul   $0x5726,%eax,%eax
  4015be:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4015c2:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4015c6:	69 c0 d4 b5 00 00    	imul   $0xb5d4,%eax,%eax
  4015cc:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4015d0:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4015d4:	69 c0 4a fb 00 00    	imul   $0xfb4a,%eax,%eax
  4015da:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4015de:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4015e2:	69 c0 c6 25 00 00    	imul   $0x25c6,%eax,%eax
  4015e8:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4015ec:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4015f0:	69 c0 fe fd 00 00    	imul   $0xfdfe,%eax,%eax
  4015f6:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4015fa:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4015fe:	69 c0 7a 35 00 00    	imul   $0x357a,%eax,%eax
  401604:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401608:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  40160c:	69 c0 dd a7 00 00    	imul   $0xa7dd,%eax,%eax
  401612:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401616:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  40161a:	69 c0 c3 1e 00 00    	imul   $0x1ec3,%eax,%eax
  401620:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401624:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401628:	69 c0 7e 34 00 00    	imul   $0x347e,%eax,%eax
  40162e:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401632:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401636:	69 c0 3d b8 00 00    	imul   $0xb83d,%eax,%eax
  40163c:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401640:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401644:	69 c0 93 91 00 00    	imul   $0x9193,%eax,%eax
  40164a:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  40164e:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401652:	69 c0 fa 77 00 00    	imul   $0x77fa,%eax,%eax
  401658:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  40165c:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401660:	69 c0 49 01 00 00    	imul   $0x149,%eax,%eax
  401666:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  40166a:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40166e:	69 c0 3c b7 00 00    	imul   $0xb73c,%eax,%eax
  401674:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401678:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  40167c:	69 c0 14 83 00 00    	imul   $0x8314,%eax,%eax
  401682:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401686:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  40168a:	69 c0 bd b4 00 00    	imul   $0xb4bd,%eax,%eax
  401690:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401694:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401698:	69 c0 b1 fe 00 00    	imul   $0xfeb1,%eax,%eax
  40169e:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4016a2:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4016a6:	69 c0 6e c6 00 00    	imul   $0xc66e,%eax,%eax
  4016ac:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4016b0:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4016b4:	69 c0 3e 3d 00 00    	imul   $0x3d3e,%eax,%eax
  4016ba:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4016be:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4016c2:	69 c0 6c d0 00 00    	imul   $0xd06c,%eax,%eax
  4016c8:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4016cc:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4016d0:	69 c0 d7 77 00 00    	imul   $0x77d7,%eax,%eax
  4016d6:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4016da:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4016de:	69 c0 f9 a2 00 00    	imul   $0xa2f9,%eax,%eax
  4016e4:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4016e8:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4016ec:	69 c0 0a 07 00 00    	imul   $0x70a,%eax,%eax
  4016f2:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4016f6:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4016fa:	69 c0 95 04 00 00    	imul   $0x495,%eax,%eax
  401700:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401704:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401708:	69 c0 66 60 00 00    	imul   $0x6066,%eax,%eax
  40170e:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401712:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401716:	69 c0 8f 69 00 00    	imul   $0x698f,%eax,%eax
  40171c:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401720:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401724:	69 c0 a8 5f 00 00    	imul   $0x5fa8,%eax,%eax
  40172a:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  40172e:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401732:	69 c0 0b ab 00 00    	imul   $0xab0b,%eax,%eax
  401738:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  40173c:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401740:	69 c0 4b c6 00 00    	imul   $0xc64b,%eax,%eax
  401746:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40174a:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40174e:	69 c0 d4 99 00 00    	imul   $0x99d4,%eax,%eax
  401754:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401758:	ba 00 00 00 00       	mov    $0x0,%edx
  40175d:	b8 00 00 00 00       	mov    $0x0,%eax
  401762:	eb 0b                	jmp    40176f <scramble+0x4cc>
  401764:	89 d1                	mov    %edx,%ecx
  401766:	8b 4c 8c d0          	mov    -0x30(%rsp,%rcx,4),%ecx
  40176a:	01 c8                	add    %ecx,%eax
  40176c:	83 c2 01             	add    $0x1,%edx
  40176f:	83 fa 09             	cmp    $0x9,%edx
  401772:	76 f0                	jbe    401764 <scramble+0x4c1>
  401774:	f3 c3                	repz retq 

0000000000401776 <getbuf>:
  401776:	48 83 ec 38          	sub    $0x38,%rsp
  40177a:	48 89 e7             	mov    %rsp,%rdi
  40177d:	e8 38 02 00 00       	callq  4019ba <Gets>
  401782:	b8 01 00 00 00       	mov    $0x1,%eax
  401787:	48 83 c4 38          	add    $0x38,%rsp
  40178b:	c3                   	retq   

000000000040178c <touch1>:
  40178c:	48 83 ec 08          	sub    $0x8,%rsp
  401790:	c7 05 62 2d 20 00 01 	movl   $0x1,0x202d62(%rip)        # 6044fc <vlevel>
  401797:	00 00 00 
  40179a:	bf f6 2f 40 00       	mov    $0x402ff6,%edi
  40179f:	e8 ac f4 ff ff       	callq  400c50 <puts@plt>
  4017a4:	bf 01 00 00 00       	mov    $0x1,%edi
  4017a9:	e8 fb 03 00 00       	callq  401ba9 <validate>
  4017ae:	bf 00 00 00 00       	mov    $0x0,%edi
  4017b3:	e8 38 f6 ff ff       	callq  400df0 <exit@plt>

00000000004017b8 <touch2>:
  4017b8:	48 83 ec 08          	sub    $0x8,%rsp
  4017bc:	89 fe                	mov    %edi,%esi
  4017be:	c7 05 34 2d 20 00 02 	movl   $0x2,0x202d34(%rip)        # 6044fc <vlevel>
  4017c5:	00 00 00 
  4017c8:	3b 3d 36 2d 20 00    	cmp    0x202d36(%rip),%edi        # 604504 <cookie>
  4017ce:	75 1b                	jne    4017eb <touch2+0x33>
  4017d0:	bf 18 30 40 00       	mov    $0x403018,%edi
  4017d5:	b8 00 00 00 00       	mov    $0x0,%eax
  4017da:	e8 a1 f4 ff ff       	callq  400c80 <printf@plt>
  4017df:	bf 02 00 00 00       	mov    $0x2,%edi
  4017e4:	e8 c0 03 00 00       	callq  401ba9 <validate>
  4017e9:	eb 19                	jmp    401804 <touch2+0x4c>
  4017eb:	bf 40 30 40 00       	mov    $0x403040,%edi
  4017f0:	b8 00 00 00 00       	mov    $0x0,%eax
  4017f5:	e8 86 f4 ff ff       	callq  400c80 <printf@plt>
  4017fa:	bf 02 00 00 00       	mov    $0x2,%edi
  4017ff:	e8 57 04 00 00       	callq  401c5b <fail>
  401804:	bf 00 00 00 00       	mov    $0x0,%edi
  401809:	e8 e2 f5 ff ff       	callq  400df0 <exit@plt>

000000000040180e <hexmatch>:
  40180e:	41 54                	push   %r12
  401810:	55                   	push   %rbp
  401811:	53                   	push   %rbx
  401812:	48 83 ec 70          	sub    $0x70,%rsp
  401816:	41 89 fc             	mov    %edi,%r12d
  401819:	48 89 f5             	mov    %rsi,%rbp
  40181c:	e8 2f f5 ff ff       	callq  400d50 <random@plt>
  401821:	48 89 c1             	mov    %rax,%rcx
  401824:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  40182b:	0a d7 a3 
  40182e:	48 f7 ea             	imul   %rdx
  401831:	48 8d 04 0a          	lea    (%rdx,%rcx,1),%rax
  401835:	48 c1 f8 06          	sar    $0x6,%rax
  401839:	48 89 ce             	mov    %rcx,%rsi
  40183c:	48 c1 fe 3f          	sar    $0x3f,%rsi
  401840:	48 29 f0             	sub    %rsi,%rax
  401843:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401847:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  40184b:	48 c1 e0 02          	shl    $0x2,%rax
  40184f:	48 29 c1             	sub    %rax,%rcx
  401852:	48 8d 1c 0c          	lea    (%rsp,%rcx,1),%rbx
  401856:	44 89 e2             	mov    %r12d,%edx
  401859:	be 13 30 40 00       	mov    $0x403013,%esi
  40185e:	48 89 df             	mov    %rbx,%rdi
  401861:	b8 00 00 00 00       	mov    $0x0,%eax
  401866:	e8 75 f5 ff ff       	callq  400de0 <sprintf@plt>
  40186b:	ba 09 00 00 00       	mov    $0x9,%edx
  401870:	48 89 de             	mov    %rbx,%rsi
  401873:	48 89 ef             	mov    %rbp,%rdi
  401876:	e8 b5 f3 ff ff       	callq  400c30 <strncmp@plt>
  40187b:	85 c0                	test   %eax,%eax
  40187d:	0f 94 c0             	sete   %al
  401880:	0f b6 c0             	movzbl %al,%eax
  401883:	48 83 c4 70          	add    $0x70,%rsp
  401887:	5b                   	pop    %rbx
  401888:	5d                   	pop    %rbp
  401889:	41 5c                	pop    %r12
  40188b:	c3                   	retq   

000000000040188c <touch3>:
  40188c:	53                   	push   %rbx
  40188d:	48 89 fb             	mov    %rdi,%rbx
  401890:	c7 05 62 2c 20 00 03 	movl   $0x3,0x202c62(%rip)        # 6044fc <vlevel>
  401897:	00 00 00 
  40189a:	48 89 fe             	mov    %rdi,%rsi
  40189d:	8b 3d 61 2c 20 00    	mov    0x202c61(%rip),%edi        # 604504 <cookie>
  4018a3:	e8 66 ff ff ff       	callq  40180e <hexmatch>
  4018a8:	85 c0                	test   %eax,%eax
  4018aa:	74 1e                	je     4018ca <touch3+0x3e>
  4018ac:	48 89 de             	mov    %rbx,%rsi
  4018af:	bf 68 30 40 00       	mov    $0x403068,%edi
  4018b4:	b8 00 00 00 00       	mov    $0x0,%eax
  4018b9:	e8 c2 f3 ff ff       	callq  400c80 <printf@plt>
  4018be:	bf 03 00 00 00       	mov    $0x3,%edi
  4018c3:	e8 e1 02 00 00       	callq  401ba9 <validate>
  4018c8:	eb 1c                	jmp    4018e6 <touch3+0x5a>
  4018ca:	48 89 de             	mov    %rbx,%rsi
  4018cd:	bf 90 30 40 00       	mov    $0x403090,%edi
  4018d2:	b8 00 00 00 00       	mov    $0x0,%eax
  4018d7:	e8 a4 f3 ff ff       	callq  400c80 <printf@plt>
  4018dc:	bf 03 00 00 00       	mov    $0x3,%edi
  4018e1:	e8 75 03 00 00       	callq  401c5b <fail>
  4018e6:	bf 00 00 00 00       	mov    $0x0,%edi
  4018eb:	e8 00 f5 ff ff       	callq  400df0 <exit@plt>

00000000004018f0 <test>:
  4018f0:	48 83 ec 08          	sub    $0x8,%rsp
  4018f4:	b8 00 00 00 00       	mov    $0x0,%eax
  4018f9:	e8 78 fe ff ff       	callq  401776 <getbuf>
  4018fe:	89 c6                	mov    %eax,%esi
  401900:	bf b8 30 40 00       	mov    $0x4030b8,%edi
  401905:	b8 00 00 00 00       	mov    $0x0,%eax
  40190a:	e8 71 f3 ff ff       	callq  400c80 <printf@plt>
  40190f:	48 83 c4 08          	add    $0x8,%rsp
  401913:	c3                   	retq   
  401914:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40191b:	00 00 00 
  40191e:	66 90                	xchg   %ax,%ax

0000000000401920 <save_char>:
  401920:	8b 05 fe 37 20 00    	mov    0x2037fe(%rip),%eax        # 605124 <gets_cnt>
  401926:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  40192b:	7f 49                	jg     401976 <save_char+0x56>
  40192d:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401930:	89 f9                	mov    %edi,%ecx
  401932:	c0 e9 04             	shr    $0x4,%cl
  401935:	83 e1 0f             	and    $0xf,%ecx
  401938:	0f b6 b1 e0 33 40 00 	movzbl 0x4033e0(%rcx),%esi
  40193f:	48 63 ca             	movslq %edx,%rcx
  401942:	40 88 b1 20 45 60 00 	mov    %sil,0x604520(%rcx)
  401949:	8d 4a 01             	lea    0x1(%rdx),%ecx
  40194c:	83 e7 0f             	and    $0xf,%edi
  40194f:	0f b6 b7 e0 33 40 00 	movzbl 0x4033e0(%rdi),%esi
  401956:	48 63 c9             	movslq %ecx,%rcx
  401959:	40 88 b1 20 45 60 00 	mov    %sil,0x604520(%rcx)
  401960:	83 c2 02             	add    $0x2,%edx
  401963:	48 63 d2             	movslq %edx,%rdx
  401966:	c6 82 20 45 60 00 20 	movb   $0x20,0x604520(%rdx)
  40196d:	83 c0 01             	add    $0x1,%eax
  401970:	89 05 ae 37 20 00    	mov    %eax,0x2037ae(%rip)        # 605124 <gets_cnt>
  401976:	f3 c3                	repz retq 

0000000000401978 <save_term>:
  401978:	8b 05 a6 37 20 00    	mov    0x2037a6(%rip),%eax        # 605124 <gets_cnt>
  40197e:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401981:	48 98                	cltq   
  401983:	c6 80 20 45 60 00 00 	movb   $0x0,0x604520(%rax)
  40198a:	c3                   	retq   

000000000040198b <check_fail>:
  40198b:	48 83 ec 08          	sub    $0x8,%rsp
  40198f:	0f be 35 92 37 20 00 	movsbl 0x203792(%rip),%esi        # 605128 <target_prefix>
  401996:	b9 20 45 60 00       	mov    $0x604520,%ecx
  40199b:	8b 15 57 2b 20 00    	mov    0x202b57(%rip),%edx        # 6044f8 <check_level>
  4019a1:	bf db 30 40 00       	mov    $0x4030db,%edi
  4019a6:	b8 00 00 00 00       	mov    $0x0,%eax
  4019ab:	e8 d0 f2 ff ff       	callq  400c80 <printf@plt>
  4019b0:	bf 01 00 00 00       	mov    $0x1,%edi
  4019b5:	e8 36 f4 ff ff       	callq  400df0 <exit@plt>

00000000004019ba <Gets>:
  4019ba:	41 54                	push   %r12
  4019bc:	55                   	push   %rbp
  4019bd:	53                   	push   %rbx
  4019be:	49 89 fc             	mov    %rdi,%r12
  4019c1:	c7 05 59 37 20 00 00 	movl   $0x0,0x203759(%rip)        # 605124 <gets_cnt>
  4019c8:	00 00 00 
  4019cb:	48 89 fb             	mov    %rdi,%rbx
  4019ce:	eb 11                	jmp    4019e1 <Gets+0x27>
  4019d0:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  4019d4:	88 03                	mov    %al,(%rbx)
  4019d6:	0f b6 f8             	movzbl %al,%edi
  4019d9:	e8 42 ff ff ff       	callq  401920 <save_char>
  4019de:	48 89 eb             	mov    %rbp,%rbx
  4019e1:	48 8b 3d 08 2b 20 00 	mov    0x202b08(%rip),%rdi        # 6044f0 <infile>
  4019e8:	e8 73 f3 ff ff       	callq  400d60 <_IO_getc@plt>
  4019ed:	83 f8 ff             	cmp    $0xffffffff,%eax
  4019f0:	74 05                	je     4019f7 <Gets+0x3d>
  4019f2:	83 f8 0a             	cmp    $0xa,%eax
  4019f5:	75 d9                	jne    4019d0 <Gets+0x16>
  4019f7:	c6 03 00             	movb   $0x0,(%rbx)
  4019fa:	b8 00 00 00 00       	mov    $0x0,%eax
  4019ff:	e8 74 ff ff ff       	callq  401978 <save_term>
  401a04:	4c 89 e0             	mov    %r12,%rax
  401a07:	5b                   	pop    %rbx
  401a08:	5d                   	pop    %rbp
  401a09:	41 5c                	pop    %r12
  401a0b:	c3                   	retq   

0000000000401a0c <notify_server>:
  401a0c:	83 3d f5 2a 20 00 00 	cmpl   $0x0,0x202af5(%rip)        # 604508 <is_checker>
  401a13:	0f 85 8e 01 00 00    	jne    401ba7 <notify_server+0x19b>
  401a19:	53                   	push   %rbx
  401a1a:	48 81 ec 10 40 00 00 	sub    $0x4010,%rsp
  401a21:	89 fb                	mov    %edi,%ebx
  401a23:	8b 05 fb 36 20 00    	mov    0x2036fb(%rip),%eax        # 605124 <gets_cnt>
  401a29:	83 c0 64             	add    $0x64,%eax
  401a2c:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401a31:	7e 19                	jle    401a4c <notify_server+0x40>
  401a33:	bf 10 32 40 00       	mov    $0x403210,%edi
  401a38:	b8 00 00 00 00       	mov    $0x0,%eax
  401a3d:	e8 3e f2 ff ff       	callq  400c80 <printf@plt>
  401a42:	bf 01 00 00 00       	mov    $0x1,%edi
  401a47:	e8 a4 f3 ff ff       	callq  400df0 <exit@plt>
  401a4c:	44 0f be 0d d4 36 20 	movsbl 0x2036d4(%rip),%r9d        # 605128 <target_prefix>
  401a53:	00 
  401a54:	83 3d 4d 2a 20 00 00 	cmpl   $0x0,0x202a4d(%rip)        # 6044a8 <notify>
  401a5b:	74 09                	je     401a66 <notify_server+0x5a>
  401a5d:	44 8b 05 9c 2a 20 00 	mov    0x202a9c(%rip),%r8d        # 604500 <authkey>
  401a64:	eb 06                	jmp    401a6c <notify_server+0x60>
  401a66:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  401a6c:	85 db                	test   %ebx,%ebx
  401a6e:	74 07                	je     401a77 <notify_server+0x6b>
  401a70:	b9 f1 30 40 00       	mov    $0x4030f1,%ecx
  401a75:	eb 05                	jmp    401a7c <notify_server+0x70>
  401a77:	b9 f6 30 40 00       	mov    $0x4030f6,%ecx
  401a7c:	48 c7 44 24 08 20 45 	movq   $0x604520,0x8(%rsp)
  401a83:	60 00 
  401a85:	89 34 24             	mov    %esi,(%rsp)
  401a88:	8b 15 da 26 20 00    	mov    0x2026da(%rip),%edx        # 604168 <target_id>
  401a8e:	be fb 30 40 00       	mov    $0x4030fb,%esi
  401a93:	48 8d bc 24 10 20 00 	lea    0x2010(%rsp),%rdi
  401a9a:	00 
  401a9b:	b8 00 00 00 00       	mov    $0x0,%eax
  401aa0:	e8 3b f3 ff ff       	callq  400de0 <sprintf@plt>
  401aa5:	83 3d fc 29 20 00 00 	cmpl   $0x0,0x2029fc(%rip)        # 6044a8 <notify>
  401aac:	74 78                	je     401b26 <notify_server+0x11a>
  401aae:	85 db                	test   %ebx,%ebx
  401ab0:	74 68                	je     401b1a <notify_server+0x10e>
  401ab2:	4c 8d 4c 24 10       	lea    0x10(%rsp),%r9
  401ab7:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401abd:	48 8d 8c 24 10 20 00 	lea    0x2010(%rsp),%rcx
  401ac4:	00 
  401ac5:	48 8b 15 a4 26 20 00 	mov    0x2026a4(%rip),%rdx        # 604170 <lab>
  401acc:	48 8b 35 a5 26 20 00 	mov    0x2026a5(%rip),%rsi        # 604178 <course>
  401ad3:	48 8b 3d 86 26 20 00 	mov    0x202686(%rip),%rdi        # 604160 <user_id>
  401ada:	e8 94 0f 00 00       	callq  402a73 <driver_post>
  401adf:	85 c0                	test   %eax,%eax
  401ae1:	79 1e                	jns    401b01 <notify_server+0xf5>
  401ae3:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  401ae8:	bf 17 31 40 00       	mov    $0x403117,%edi
  401aed:	b8 00 00 00 00       	mov    $0x0,%eax
  401af2:	e8 89 f1 ff ff       	callq  400c80 <printf@plt>
  401af7:	bf 01 00 00 00       	mov    $0x1,%edi
  401afc:	e8 ef f2 ff ff       	callq  400df0 <exit@plt>
  401b01:	bf 40 32 40 00       	mov    $0x403240,%edi
  401b06:	e8 45 f1 ff ff       	callq  400c50 <puts@plt>
  401b0b:	bf 23 31 40 00       	mov    $0x403123,%edi
  401b10:	e8 3b f1 ff ff       	callq  400c50 <puts@plt>
  401b15:	e9 85 00 00 00       	jmpq   401b9f <notify_server+0x193>
  401b1a:	bf 2d 31 40 00       	mov    $0x40312d,%edi
  401b1f:	e8 2c f1 ff ff       	callq  400c50 <puts@plt>
  401b24:	eb 79                	jmp    401b9f <notify_server+0x193>
  401b26:	85 db                	test   %ebx,%ebx
  401b28:	74 08                	je     401b32 <notify_server+0x126>
  401b2a:	be f1 30 40 00       	mov    $0x4030f1,%esi
  401b2f:	90                   	nop
  401b30:	eb 05                	jmp    401b37 <notify_server+0x12b>
  401b32:	be f6 30 40 00       	mov    $0x4030f6,%esi
  401b37:	bf 78 32 40 00       	mov    $0x403278,%edi
  401b3c:	b8 00 00 00 00       	mov    $0x0,%eax
  401b41:	e8 3a f1 ff ff       	callq  400c80 <printf@plt>
  401b46:	48 8b 35 13 26 20 00 	mov    0x202613(%rip),%rsi        # 604160 <user_id>
  401b4d:	bf 34 31 40 00       	mov    $0x403134,%edi
  401b52:	b8 00 00 00 00       	mov    $0x0,%eax
  401b57:	e8 24 f1 ff ff       	callq  400c80 <printf@plt>
  401b5c:	48 8b 35 15 26 20 00 	mov    0x202615(%rip),%rsi        # 604178 <course>
  401b63:	bf 41 31 40 00       	mov    $0x403141,%edi
  401b68:	b8 00 00 00 00       	mov    $0x0,%eax
  401b6d:	e8 0e f1 ff ff       	callq  400c80 <printf@plt>
  401b72:	48 8b 35 f7 25 20 00 	mov    0x2025f7(%rip),%rsi        # 604170 <lab>
  401b79:	bf 4d 31 40 00       	mov    $0x40314d,%edi
  401b7e:	b8 00 00 00 00       	mov    $0x0,%eax
  401b83:	e8 f8 f0 ff ff       	callq  400c80 <printf@plt>
  401b88:	48 8d b4 24 10 20 00 	lea    0x2010(%rsp),%rsi
  401b8f:	00 
  401b90:	bf 56 31 40 00       	mov    $0x403156,%edi
  401b95:	b8 00 00 00 00       	mov    $0x0,%eax
  401b9a:	e8 e1 f0 ff ff       	callq  400c80 <printf@plt>
  401b9f:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
  401ba6:	5b                   	pop    %rbx
  401ba7:	f3 c3                	repz retq 

0000000000401ba9 <validate>:
  401ba9:	53                   	push   %rbx
  401baa:	89 fb                	mov    %edi,%ebx
  401bac:	83 3d 55 29 20 00 00 	cmpl   $0x0,0x202955(%rip)        # 604508 <is_checker>
  401bb3:	74 60                	je     401c15 <validate+0x6c>
  401bb5:	39 3d 41 29 20 00    	cmp    %edi,0x202941(%rip)        # 6044fc <vlevel>
  401bbb:	74 14                	je     401bd1 <validate+0x28>
  401bbd:	bf 62 31 40 00       	mov    $0x403162,%edi
  401bc2:	e8 89 f0 ff ff       	callq  400c50 <puts@plt>
  401bc7:	b8 00 00 00 00       	mov    $0x0,%eax
  401bcc:	e8 ba fd ff ff       	callq  40198b <check_fail>
  401bd1:	8b 35 21 29 20 00    	mov    0x202921(%rip),%esi        # 6044f8 <check_level>
  401bd7:	39 fe                	cmp    %edi,%esi
  401bd9:	74 1b                	je     401bf6 <validate+0x4d>
  401bdb:	89 fa                	mov    %edi,%edx
  401bdd:	bf a0 32 40 00       	mov    $0x4032a0,%edi
  401be2:	b8 00 00 00 00       	mov    $0x0,%eax
  401be7:	e8 94 f0 ff ff       	callq  400c80 <printf@plt>
  401bec:	b8 00 00 00 00       	mov    $0x0,%eax
  401bf1:	e8 95 fd ff ff       	callq  40198b <check_fail>
  401bf6:	0f be 35 2b 35 20 00 	movsbl 0x20352b(%rip),%esi        # 605128 <target_prefix>
  401bfd:	b9 20 45 60 00       	mov    $0x604520,%ecx
  401c02:	89 fa                	mov    %edi,%edx
  401c04:	bf 80 31 40 00       	mov    $0x403180,%edi
  401c09:	b8 00 00 00 00       	mov    $0x0,%eax
  401c0e:	e8 6d f0 ff ff       	callq  400c80 <printf@plt>
  401c13:	eb 44                	jmp    401c59 <validate+0xb0>
  401c15:	39 3d e1 28 20 00    	cmp    %edi,0x2028e1(%rip)        # 6044fc <vlevel>
  401c1b:	74 18                	je     401c35 <validate+0x8c>
  401c1d:	bf 62 31 40 00       	mov    $0x403162,%edi
  401c22:	e8 29 f0 ff ff       	callq  400c50 <puts@plt>
  401c27:	89 de                	mov    %ebx,%esi
  401c29:	bf 00 00 00 00       	mov    $0x0,%edi
  401c2e:	e8 d9 fd ff ff       	callq  401a0c <notify_server>
  401c33:	eb 24                	jmp    401c59 <validate+0xb0>
  401c35:	0f be 15 ec 34 20 00 	movsbl 0x2034ec(%rip),%edx        # 605128 <target_prefix>
  401c3c:	89 fe                	mov    %edi,%esi
  401c3e:	bf c8 32 40 00       	mov    $0x4032c8,%edi
  401c43:	b8 00 00 00 00       	mov    $0x0,%eax
  401c48:	e8 33 f0 ff ff       	callq  400c80 <printf@plt>
  401c4d:	89 de                	mov    %ebx,%esi
  401c4f:	bf 01 00 00 00       	mov    $0x1,%edi
  401c54:	e8 b3 fd ff ff       	callq  401a0c <notify_server>
  401c59:	5b                   	pop    %rbx
  401c5a:	c3                   	retq   

0000000000401c5b <fail>:
  401c5b:	48 83 ec 08          	sub    $0x8,%rsp
  401c5f:	83 3d a2 28 20 00 00 	cmpl   $0x0,0x2028a2(%rip)        # 604508 <is_checker>
  401c66:	74 0a                	je     401c72 <fail+0x17>
  401c68:	b8 00 00 00 00       	mov    $0x0,%eax
  401c6d:	e8 19 fd ff ff       	callq  40198b <check_fail>
  401c72:	89 fe                	mov    %edi,%esi
  401c74:	bf 00 00 00 00       	mov    $0x0,%edi
  401c79:	e8 8e fd ff ff       	callq  401a0c <notify_server>
  401c7e:	48 83 c4 08          	add    $0x8,%rsp
  401c82:	c3                   	retq   

0000000000401c83 <bushandler>:
  401c83:	48 83 ec 08          	sub    $0x8,%rsp
  401c87:	83 3d 7a 28 20 00 00 	cmpl   $0x0,0x20287a(%rip)        # 604508 <is_checker>
  401c8e:	74 14                	je     401ca4 <bushandler+0x21>
  401c90:	bf 95 31 40 00       	mov    $0x403195,%edi
  401c95:	e8 b6 ef ff ff       	callq  400c50 <puts@plt>
  401c9a:	b8 00 00 00 00       	mov    $0x0,%eax
  401c9f:	e8 e7 fc ff ff       	callq  40198b <check_fail>
  401ca4:	bf 00 33 40 00       	mov    $0x403300,%edi
  401ca9:	e8 a2 ef ff ff       	callq  400c50 <puts@plt>
  401cae:	bf 9f 31 40 00       	mov    $0x40319f,%edi
  401cb3:	e8 98 ef ff ff       	callq  400c50 <puts@plt>
  401cb8:	be 00 00 00 00       	mov    $0x0,%esi
  401cbd:	bf 00 00 00 00       	mov    $0x0,%edi
  401cc2:	e8 45 fd ff ff       	callq  401a0c <notify_server>
  401cc7:	bf 01 00 00 00       	mov    $0x1,%edi
  401ccc:	e8 1f f1 ff ff       	callq  400df0 <exit@plt>

0000000000401cd1 <seghandler>:
  401cd1:	48 83 ec 08          	sub    $0x8,%rsp
  401cd5:	83 3d 2c 28 20 00 00 	cmpl   $0x0,0x20282c(%rip)        # 604508 <is_checker>
  401cdc:	74 14                	je     401cf2 <seghandler+0x21>
  401cde:	bf b5 31 40 00       	mov    $0x4031b5,%edi
  401ce3:	e8 68 ef ff ff       	callq  400c50 <puts@plt>
  401ce8:	b8 00 00 00 00       	mov    $0x0,%eax
  401ced:	e8 99 fc ff ff       	callq  40198b <check_fail>
  401cf2:	bf 20 33 40 00       	mov    $0x403320,%edi
  401cf7:	e8 54 ef ff ff       	callq  400c50 <puts@plt>
  401cfc:	bf 9f 31 40 00       	mov    $0x40319f,%edi
  401d01:	e8 4a ef ff ff       	callq  400c50 <puts@plt>
  401d06:	be 00 00 00 00       	mov    $0x0,%esi
  401d0b:	bf 00 00 00 00       	mov    $0x0,%edi
  401d10:	e8 f7 fc ff ff       	callq  401a0c <notify_server>
  401d15:	bf 01 00 00 00       	mov    $0x1,%edi
  401d1a:	e8 d1 f0 ff ff       	callq  400df0 <exit@plt>

0000000000401d1f <illegalhandler>:
  401d1f:	48 83 ec 08          	sub    $0x8,%rsp
  401d23:	83 3d de 27 20 00 00 	cmpl   $0x0,0x2027de(%rip)        # 604508 <is_checker>
  401d2a:	74 14                	je     401d40 <illegalhandler+0x21>
  401d2c:	bf c8 31 40 00       	mov    $0x4031c8,%edi
  401d31:	e8 1a ef ff ff       	callq  400c50 <puts@plt>
  401d36:	b8 00 00 00 00       	mov    $0x0,%eax
  401d3b:	e8 4b fc ff ff       	callq  40198b <check_fail>
  401d40:	bf 48 33 40 00       	mov    $0x403348,%edi
  401d45:	e8 06 ef ff ff       	callq  400c50 <puts@plt>
  401d4a:	bf 9f 31 40 00       	mov    $0x40319f,%edi
  401d4f:	e8 fc ee ff ff       	callq  400c50 <puts@plt>
  401d54:	be 00 00 00 00       	mov    $0x0,%esi
  401d59:	bf 00 00 00 00       	mov    $0x0,%edi
  401d5e:	e8 a9 fc ff ff       	callq  401a0c <notify_server>
  401d63:	bf 01 00 00 00       	mov    $0x1,%edi
  401d68:	e8 83 f0 ff ff       	callq  400df0 <exit@plt>

0000000000401d6d <sigalrmhandler>:
  401d6d:	48 83 ec 08          	sub    $0x8,%rsp
  401d71:	83 3d 90 27 20 00 00 	cmpl   $0x0,0x202790(%rip)        # 604508 <is_checker>
  401d78:	74 14                	je     401d8e <sigalrmhandler+0x21>
  401d7a:	bf dc 31 40 00       	mov    $0x4031dc,%edi
  401d7f:	e8 cc ee ff ff       	callq  400c50 <puts@plt>
  401d84:	b8 00 00 00 00       	mov    $0x0,%eax
  401d89:	e8 fd fb ff ff       	callq  40198b <check_fail>
  401d8e:	be 05 00 00 00       	mov    $0x5,%esi
  401d93:	bf 78 33 40 00       	mov    $0x403378,%edi
  401d98:	b8 00 00 00 00       	mov    $0x0,%eax
  401d9d:	e8 de ee ff ff       	callq  400c80 <printf@plt>
  401da2:	be 00 00 00 00       	mov    $0x0,%esi
  401da7:	bf 00 00 00 00       	mov    $0x0,%edi
  401dac:	e8 5b fc ff ff       	callq  401a0c <notify_server>
  401db1:	bf 01 00 00 00       	mov    $0x1,%edi
  401db6:	e8 35 f0 ff ff       	callq  400df0 <exit@plt>

0000000000401dbb <launch>:
  401dbb:	55                   	push   %rbp
  401dbc:	48 89 e5             	mov    %rsp,%rbp
  401dbf:	48 89 fa             	mov    %rdi,%rdx
  401dc2:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  401dc6:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401dca:	48 29 c4             	sub    %rax,%rsp
  401dcd:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  401dd2:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  401dd6:	be f4 00 00 00       	mov    $0xf4,%esi
  401ddb:	e8 b0 ee ff ff       	callq  400c90 <memset@plt>
  401de0:	48 8b 05 d9 26 20 00 	mov    0x2026d9(%rip),%rax        # 6044c0 <stdin@@GLIBC_2.2.5>
  401de7:	48 39 05 02 27 20 00 	cmp    %rax,0x202702(%rip)        # 6044f0 <infile>
  401dee:	75 0f                	jne    401dff <launch+0x44>
  401df0:	bf e4 31 40 00       	mov    $0x4031e4,%edi
  401df5:	b8 00 00 00 00       	mov    $0x0,%eax
  401dfa:	e8 81 ee ff ff       	callq  400c80 <printf@plt>
  401dff:	c7 05 f3 26 20 00 00 	movl   $0x0,0x2026f3(%rip)        # 6044fc <vlevel>
  401e06:	00 00 00 
  401e09:	b8 00 00 00 00       	mov    $0x0,%eax
  401e0e:	e8 dd fa ff ff       	callq  4018f0 <test>
  401e13:	83 3d ee 26 20 00 00 	cmpl   $0x0,0x2026ee(%rip)        # 604508 <is_checker>
  401e1a:	74 14                	je     401e30 <launch+0x75>
  401e1c:	bf f1 31 40 00       	mov    $0x4031f1,%edi
  401e21:	e8 2a ee ff ff       	callq  400c50 <puts@plt>
  401e26:	b8 00 00 00 00       	mov    $0x0,%eax
  401e2b:	e8 5b fb ff ff       	callq  40198b <check_fail>
  401e30:	bf fc 31 40 00       	mov    $0x4031fc,%edi
  401e35:	e8 16 ee ff ff       	callq  400c50 <puts@plt>
  401e3a:	c9                   	leaveq 
  401e3b:	c3                   	retq   

0000000000401e3c <stable_launch>:
  401e3c:	53                   	push   %rbx
  401e3d:	48 89 3d a4 26 20 00 	mov    %rdi,0x2026a4(%rip)        # 6044e8 <global_offset>
  401e44:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  401e4a:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401e50:	b9 32 01 00 00       	mov    $0x132,%ecx
  401e55:	ba 07 00 00 00       	mov    $0x7,%edx
  401e5a:	be 00 00 10 00       	mov    $0x100000,%esi
  401e5f:	bf 00 60 58 55       	mov    $0x55586000,%edi
  401e64:	e8 07 ee ff ff       	callq  400c70 <mmap@plt>
  401e69:	48 89 c3             	mov    %rax,%rbx
  401e6c:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  401e72:	74 32                	je     401ea6 <stable_launch+0x6a>
  401e74:	be 00 00 10 00       	mov    $0x100000,%esi
  401e79:	48 89 c7             	mov    %rax,%rdi
  401e7c:	e8 ff ee ff ff       	callq  400d80 <munmap@plt>
  401e81:	ba 00 60 58 55       	mov    $0x55586000,%edx
  401e86:	be b0 33 40 00       	mov    $0x4033b0,%esi
  401e8b:	48 8b 3d 3e 26 20 00 	mov    0x20263e(%rip),%rdi        # 6044d0 <stderr@@GLIBC_2.2.5>
  401e92:	b8 00 00 00 00       	mov    $0x0,%eax
  401e97:	e8 64 ee ff ff       	callq  400d00 <fprintf@plt>
  401e9c:	bf 01 00 00 00       	mov    $0x1,%edi
  401ea1:	e8 4a ef ff ff       	callq  400df0 <exit@plt>
  401ea6:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  401ead:	48 89 15 7c 32 20 00 	mov    %rdx,0x20327c(%rip)        # 605130 <stack_top>
  401eb4:	48 89 e0             	mov    %rsp,%rax
  401eb7:	48 89 d4             	mov    %rdx,%rsp
  401eba:	48 89 c2             	mov    %rax,%rdx
  401ebd:	48 89 15 1c 26 20 00 	mov    %rdx,0x20261c(%rip)        # 6044e0 <global_save_stack>
  401ec4:	48 8b 3d 1d 26 20 00 	mov    0x20261d(%rip),%rdi        # 6044e8 <global_offset>
  401ecb:	e8 eb fe ff ff       	callq  401dbb <launch>
  401ed0:	48 8b 05 09 26 20 00 	mov    0x202609(%rip),%rax        # 6044e0 <global_save_stack>
  401ed7:	48 89 c4             	mov    %rax,%rsp
  401eda:	be 00 00 10 00       	mov    $0x100000,%esi
  401edf:	48 89 df             	mov    %rbx,%rdi
  401ee2:	e8 99 ee ff ff       	callq  400d80 <munmap@plt>
  401ee7:	5b                   	pop    %rbx
  401ee8:	c3                   	retq   
  401ee9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401ef0 <rio_readinitb>:
  401ef0:	89 37                	mov    %esi,(%rdi)
  401ef2:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  401ef9:	48 8d 47 10          	lea    0x10(%rdi),%rax
  401efd:	48 89 47 08          	mov    %rax,0x8(%rdi)
  401f01:	c3                   	retq   

0000000000401f02 <sigalrm_handler>:
  401f02:	48 83 ec 08          	sub    $0x8,%rsp
  401f06:	ba 00 00 00 00       	mov    $0x0,%edx
  401f0b:	be f0 33 40 00       	mov    $0x4033f0,%esi
  401f10:	48 8b 3d b9 25 20 00 	mov    0x2025b9(%rip),%rdi        # 6044d0 <stderr@@GLIBC_2.2.5>
  401f17:	b8 00 00 00 00       	mov    $0x0,%eax
  401f1c:	e8 df ed ff ff       	callq  400d00 <fprintf@plt>
  401f21:	bf 01 00 00 00       	mov    $0x1,%edi
  401f26:	e8 c5 ee ff ff       	callq  400df0 <exit@plt>

0000000000401f2b <urlencode>:
  401f2b:	41 54                	push   %r12
  401f2d:	55                   	push   %rbp
  401f2e:	53                   	push   %rbx
  401f2f:	48 83 ec 10          	sub    $0x10,%rsp
  401f33:	48 89 fb             	mov    %rdi,%rbx
  401f36:	48 89 f5             	mov    %rsi,%rbp
  401f39:	b8 00 00 00 00       	mov    $0x0,%eax
  401f3e:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401f45:	f2 ae                	repnz scas %es:(%rdi),%al
  401f47:	48 f7 d1             	not    %rcx
  401f4a:	8d 41 ff             	lea    -0x1(%rcx),%eax
  401f4d:	e9 93 00 00 00       	jmpq   401fe5 <urlencode+0xba>
  401f52:	0f b6 13             	movzbl (%rbx),%edx
  401f55:	80 fa 2a             	cmp    $0x2a,%dl
  401f58:	0f 94 c1             	sete   %cl
  401f5b:	80 fa 2d             	cmp    $0x2d,%dl
  401f5e:	0f 94 c0             	sete   %al
  401f61:	08 c1                	or     %al,%cl
  401f63:	75 1f                	jne    401f84 <urlencode+0x59>
  401f65:	80 fa 2e             	cmp    $0x2e,%dl
  401f68:	74 1a                	je     401f84 <urlencode+0x59>
  401f6a:	80 fa 5f             	cmp    $0x5f,%dl
  401f6d:	74 15                	je     401f84 <urlencode+0x59>
  401f6f:	8d 42 d0             	lea    -0x30(%rdx),%eax
  401f72:	3c 09                	cmp    $0x9,%al
  401f74:	76 0e                	jbe    401f84 <urlencode+0x59>
  401f76:	8d 42 bf             	lea    -0x41(%rdx),%eax
  401f79:	3c 19                	cmp    $0x19,%al
  401f7b:	76 07                	jbe    401f84 <urlencode+0x59>
  401f7d:	8d 42 9f             	lea    -0x61(%rdx),%eax
  401f80:	3c 19                	cmp    $0x19,%al
  401f82:	77 09                	ja     401f8d <urlencode+0x62>
  401f84:	88 55 00             	mov    %dl,0x0(%rbp)
  401f87:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  401f8b:	eb 51                	jmp    401fde <urlencode+0xb3>
  401f8d:	80 fa 20             	cmp    $0x20,%dl
  401f90:	75 0a                	jne    401f9c <urlencode+0x71>
  401f92:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  401f96:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  401f9a:	eb 42                	jmp    401fde <urlencode+0xb3>
  401f9c:	8d 42 e0             	lea    -0x20(%rdx),%eax
  401f9f:	3c 5f                	cmp    $0x5f,%al
  401fa1:	0f 96 c1             	setbe  %cl
  401fa4:	80 fa 09             	cmp    $0x9,%dl
  401fa7:	0f 94 c0             	sete   %al
  401faa:	08 c1                	or     %al,%cl
  401fac:	74 45                	je     401ff3 <urlencode+0xc8>
  401fae:	0f b6 d2             	movzbl %dl,%edx
  401fb1:	be 88 34 40 00       	mov    $0x403488,%esi
  401fb6:	48 89 e7             	mov    %rsp,%rdi
  401fb9:	b8 00 00 00 00       	mov    $0x0,%eax
  401fbe:	e8 1d ee ff ff       	callq  400de0 <sprintf@plt>
  401fc3:	0f b6 04 24          	movzbl (%rsp),%eax
  401fc7:	88 45 00             	mov    %al,0x0(%rbp)
  401fca:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  401fcf:	88 45 01             	mov    %al,0x1(%rbp)
  401fd2:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  401fd7:	88 45 02             	mov    %al,0x2(%rbp)
  401fda:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  401fde:	48 83 c3 01          	add    $0x1,%rbx
  401fe2:	44 89 e0             	mov    %r12d,%eax
  401fe5:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  401fe9:	85 c0                	test   %eax,%eax
  401feb:	0f 85 61 ff ff ff    	jne    401f52 <urlencode+0x27>
  401ff1:	eb 05                	jmp    401ff8 <urlencode+0xcd>
  401ff3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401ff8:	48 83 c4 10          	add    $0x10,%rsp
  401ffc:	5b                   	pop    %rbx
  401ffd:	5d                   	pop    %rbp
  401ffe:	41 5c                	pop    %r12
  402000:	c3                   	retq   

0000000000402001 <rio_writen>:
  402001:	41 55                	push   %r13
  402003:	41 54                	push   %r12
  402005:	55                   	push   %rbp
  402006:	53                   	push   %rbx
  402007:	48 83 ec 08          	sub    $0x8,%rsp
  40200b:	41 89 fc             	mov    %edi,%r12d
  40200e:	48 89 f5             	mov    %rsi,%rbp
  402011:	49 89 d5             	mov    %rdx,%r13
  402014:	48 89 d3             	mov    %rdx,%rbx
  402017:	eb 28                	jmp    402041 <rio_writen+0x40>
  402019:	48 89 da             	mov    %rbx,%rdx
  40201c:	48 89 ee             	mov    %rbp,%rsi
  40201f:	44 89 e7             	mov    %r12d,%edi
  402022:	e8 39 ec ff ff       	callq  400c60 <write@plt>
  402027:	48 85 c0             	test   %rax,%rax
  40202a:	7f 0f                	jg     40203b <rio_writen+0x3a>
  40202c:	e8 df eb ff ff       	callq  400c10 <__errno_location@plt>
  402031:	83 38 04             	cmpl   $0x4,(%rax)
  402034:	75 15                	jne    40204b <rio_writen+0x4a>
  402036:	b8 00 00 00 00       	mov    $0x0,%eax
  40203b:	48 29 c3             	sub    %rax,%rbx
  40203e:	48 01 c5             	add    %rax,%rbp
  402041:	48 85 db             	test   %rbx,%rbx
  402044:	75 d3                	jne    402019 <rio_writen+0x18>
  402046:	4c 89 e8             	mov    %r13,%rax
  402049:	eb 07                	jmp    402052 <rio_writen+0x51>
  40204b:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402052:	48 83 c4 08          	add    $0x8,%rsp
  402056:	5b                   	pop    %rbx
  402057:	5d                   	pop    %rbp
  402058:	41 5c                	pop    %r12
  40205a:	41 5d                	pop    %r13
  40205c:	c3                   	retq   

000000000040205d <rio_read>:
  40205d:	41 56                	push   %r14
  40205f:	41 55                	push   %r13
  402061:	41 54                	push   %r12
  402063:	55                   	push   %rbp
  402064:	53                   	push   %rbx
  402065:	48 89 fb             	mov    %rdi,%rbx
  402068:	49 89 f6             	mov    %rsi,%r14
  40206b:	49 89 d5             	mov    %rdx,%r13
  40206e:	4c 8d 67 10          	lea    0x10(%rdi),%r12
  402072:	eb 2a                	jmp    40209e <rio_read+0x41>
  402074:	ba 00 20 00 00       	mov    $0x2000,%edx
  402079:	4c 89 e6             	mov    %r12,%rsi
  40207c:	8b 3b                	mov    (%rbx),%edi
  40207e:	e8 3d ec ff ff       	callq  400cc0 <read@plt>
  402083:	89 43 04             	mov    %eax,0x4(%rbx)
  402086:	85 c0                	test   %eax,%eax
  402088:	79 0c                	jns    402096 <rio_read+0x39>
  40208a:	e8 81 eb ff ff       	callq  400c10 <__errno_location@plt>
  40208f:	83 38 04             	cmpl   $0x4,(%rax)
  402092:	74 0a                	je     40209e <rio_read+0x41>
  402094:	eb 37                	jmp    4020cd <rio_read+0x70>
  402096:	85 c0                	test   %eax,%eax
  402098:	74 3c                	je     4020d6 <rio_read+0x79>
  40209a:	4c 89 63 08          	mov    %r12,0x8(%rbx)
  40209e:	8b 6b 04             	mov    0x4(%rbx),%ebp
  4020a1:	85 ed                	test   %ebp,%ebp
  4020a3:	7e cf                	jle    402074 <rio_read+0x17>
  4020a5:	89 e8                	mov    %ebp,%eax
  4020a7:	4c 39 e8             	cmp    %r13,%rax
  4020aa:	72 03                	jb     4020af <rio_read+0x52>
  4020ac:	44 89 ed             	mov    %r13d,%ebp
  4020af:	4c 63 e5             	movslq %ebp,%r12
  4020b2:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  4020b6:	4c 89 e2             	mov    %r12,%rdx
  4020b9:	4c 89 f7             	mov    %r14,%rdi
  4020bc:	e8 6f ec ff ff       	callq  400d30 <memcpy@plt>
  4020c1:	4c 01 63 08          	add    %r12,0x8(%rbx)
  4020c5:	29 6b 04             	sub    %ebp,0x4(%rbx)
  4020c8:	4c 89 e0             	mov    %r12,%rax
  4020cb:	eb 0e                	jmp    4020db <rio_read+0x7e>
  4020cd:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4020d4:	eb 05                	jmp    4020db <rio_read+0x7e>
  4020d6:	b8 00 00 00 00       	mov    $0x0,%eax
  4020db:	5b                   	pop    %rbx
  4020dc:	5d                   	pop    %rbp
  4020dd:	41 5c                	pop    %r12
  4020df:	41 5d                	pop    %r13
  4020e1:	41 5e                	pop    %r14
  4020e3:	c3                   	retq   

00000000004020e4 <rio_readlineb>:
  4020e4:	41 55                	push   %r13
  4020e6:	41 54                	push   %r12
  4020e8:	55                   	push   %rbp
  4020e9:	53                   	push   %rbx
  4020ea:	48 83 ec 18          	sub    $0x18,%rsp
  4020ee:	49 89 fd             	mov    %rdi,%r13
  4020f1:	48 89 f5             	mov    %rsi,%rbp
  4020f4:	49 89 d4             	mov    %rdx,%r12
  4020f7:	bb 01 00 00 00       	mov    $0x1,%ebx
  4020fc:	eb 3d                	jmp    40213b <rio_readlineb+0x57>
  4020fe:	ba 01 00 00 00       	mov    $0x1,%edx
  402103:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  402108:	4c 89 ef             	mov    %r13,%rdi
  40210b:	e8 4d ff ff ff       	callq  40205d <rio_read>
  402110:	83 f8 01             	cmp    $0x1,%eax
  402113:	75 12                	jne    402127 <rio_readlineb+0x43>
  402115:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  402119:	0f b6 44 24 0f       	movzbl 0xf(%rsp),%eax
  40211e:	88 45 00             	mov    %al,0x0(%rbp)
  402121:	3c 0a                	cmp    $0xa,%al
  402123:	75 0f                	jne    402134 <rio_readlineb+0x50>
  402125:	eb 1b                	jmp    402142 <rio_readlineb+0x5e>
  402127:	85 c0                	test   %eax,%eax
  402129:	75 23                	jne    40214e <rio_readlineb+0x6a>
  40212b:	48 83 fb 01          	cmp    $0x1,%rbx
  40212f:	90                   	nop
  402130:	75 13                	jne    402145 <rio_readlineb+0x61>
  402132:	eb 23                	jmp    402157 <rio_readlineb+0x73>
  402134:	48 83 c3 01          	add    $0x1,%rbx
  402138:	48 89 d5             	mov    %rdx,%rbp
  40213b:	4c 39 e3             	cmp    %r12,%rbx
  40213e:	72 be                	jb     4020fe <rio_readlineb+0x1a>
  402140:	eb 03                	jmp    402145 <rio_readlineb+0x61>
  402142:	48 89 d5             	mov    %rdx,%rbp
  402145:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402149:	48 89 d8             	mov    %rbx,%rax
  40214c:	eb 0e                	jmp    40215c <rio_readlineb+0x78>
  40214e:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402155:	eb 05                	jmp    40215c <rio_readlineb+0x78>
  402157:	b8 00 00 00 00       	mov    $0x0,%eax
  40215c:	48 83 c4 18          	add    $0x18,%rsp
  402160:	5b                   	pop    %rbx
  402161:	5d                   	pop    %rbp
  402162:	41 5c                	pop    %r12
  402164:	41 5d                	pop    %r13
  402166:	c3                   	retq   

0000000000402167 <submitr>:
  402167:	41 57                	push   %r15
  402169:	41 56                	push   %r14
  40216b:	41 55                	push   %r13
  40216d:	41 54                	push   %r12
  40216f:	55                   	push   %rbp
  402170:	53                   	push   %rbx
  402171:	48 81 ec 48 a0 00 00 	sub    $0xa048,%rsp
  402178:	49 89 fc             	mov    %rdi,%r12
  40217b:	89 74 24 04          	mov    %esi,0x4(%rsp)
  40217f:	49 89 d7             	mov    %rdx,%r15
  402182:	49 89 ce             	mov    %rcx,%r14
  402185:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
  40218a:	4d 89 cd             	mov    %r9,%r13
  40218d:	48 8b 9c 24 80 a0 00 	mov    0xa080(%rsp),%rbx
  402194:	00 
  402195:	c7 84 24 1c 20 00 00 	movl   $0x0,0x201c(%rsp)
  40219c:	00 00 00 00 
  4021a0:	ba 00 00 00 00       	mov    $0x0,%edx
  4021a5:	be 01 00 00 00       	mov    $0x1,%esi
  4021aa:	bf 02 00 00 00       	mov    $0x2,%edi
  4021af:	e8 5c ec ff ff       	callq  400e10 <socket@plt>
  4021b4:	89 c5                	mov    %eax,%ebp
  4021b6:	85 c0                	test   %eax,%eax
  4021b8:	79 4e                	jns    402208 <submitr+0xa1>
  4021ba:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4021c1:	3a 20 43 
  4021c4:	48 89 03             	mov    %rax,(%rbx)
  4021c7:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4021ce:	20 75 6e 
  4021d1:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4021d5:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4021dc:	74 6f 20 
  4021df:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4021e3:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  4021ea:	65 20 73 
  4021ed:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4021f1:	c7 43 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbx)
  4021f8:	66 c7 43 24 74 00    	movw   $0x74,0x24(%rbx)
  4021fe:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402203:	e9 68 06 00 00       	jmpq   402870 <submitr+0x709>
  402208:	4c 89 e7             	mov    %r12,%rdi
  40220b:	e8 e0 ea ff ff       	callq  400cf0 <gethostbyname@plt>
  402210:	48 85 c0             	test   %rax,%rax
  402213:	75 67                	jne    40227c <submitr+0x115>
  402215:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  40221c:	3a 20 44 
  40221f:	48 89 03             	mov    %rax,(%rbx)
  402222:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402229:	20 75 6e 
  40222c:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402230:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402237:	74 6f 20 
  40223a:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40223e:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402245:	76 65 20 
  402248:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40224c:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402253:	72 20 61 
  402256:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40225a:	c7 43 28 64 64 72 65 	movl   $0x65726464,0x28(%rbx)
  402261:	66 c7 43 2c 73 73    	movw   $0x7373,0x2c(%rbx)
  402267:	c6 43 2e 00          	movb   $0x0,0x2e(%rbx)
  40226b:	89 ef                	mov    %ebp,%edi
  40226d:	e8 3e ea ff ff       	callq  400cb0 <close@plt>
  402272:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402277:	e9 f4 05 00 00       	jmpq   402870 <submitr+0x709>
  40227c:	48 c7 84 24 30 a0 00 	movq   $0x0,0xa030(%rsp)
  402283:	00 00 00 00 00 
  402288:	48 c7 84 24 38 a0 00 	movq   $0x0,0xa038(%rsp)
  40228f:	00 00 00 00 00 
  402294:	66 c7 84 24 30 a0 00 	movw   $0x2,0xa030(%rsp)
  40229b:	00 02 00 
  40229e:	48 8b 48 18          	mov    0x18(%rax),%rcx
  4022a2:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4022a6:	48 8d b4 24 34 a0 00 	lea    0xa034(%rsp),%rsi
  4022ad:	00 
  4022ae:	48 8b 39             	mov    (%rcx),%rdi
  4022b1:	e8 da ea ff ff       	callq  400d90 <bcopy@plt>
  4022b6:	0f b7 44 24 04       	movzwl 0x4(%rsp),%eax
  4022bb:	66 c1 c8 08          	ror    $0x8,%ax
  4022bf:	66 89 84 24 32 a0 00 	mov    %ax,0xa032(%rsp)
  4022c6:	00 
  4022c7:	ba 10 00 00 00       	mov    $0x10,%edx
  4022cc:	48 8d b4 24 30 a0 00 	lea    0xa030(%rsp),%rsi
  4022d3:	00 
  4022d4:	89 ef                	mov    %ebp,%edi
  4022d6:	e8 25 eb ff ff       	callq  400e00 <connect@plt>
  4022db:	85 c0                	test   %eax,%eax
  4022dd:	79 59                	jns    402338 <submitr+0x1d1>
  4022df:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  4022e6:	3a 20 55 
  4022e9:	48 89 03             	mov    %rax,(%rbx)
  4022ec:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  4022f3:	20 74 6f 
  4022f6:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4022fa:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402301:	65 63 74 
  402304:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402308:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  40230f:	68 65 20 
  402312:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402316:	c7 43 20 73 65 72 76 	movl   $0x76726573,0x20(%rbx)
  40231d:	66 c7 43 24 65 72    	movw   $0x7265,0x24(%rbx)
  402323:	c6 43 26 00          	movb   $0x0,0x26(%rbx)
  402327:	89 ef                	mov    %ebp,%edi
  402329:	e8 82 e9 ff ff       	callq  400cb0 <close@plt>
  40232e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402333:	e9 38 05 00 00       	jmpq   402870 <submitr+0x709>
  402338:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  40233f:	4c 89 ef             	mov    %r13,%rdi
  402342:	b8 00 00 00 00       	mov    $0x0,%eax
  402347:	48 89 d1             	mov    %rdx,%rcx
  40234a:	f2 ae                	repnz scas %es:(%rdi),%al
  40234c:	48 f7 d1             	not    %rcx
  40234f:	48 89 ce             	mov    %rcx,%rsi
  402352:	4c 89 ff             	mov    %r15,%rdi
  402355:	48 89 d1             	mov    %rdx,%rcx
  402358:	f2 ae                	repnz scas %es:(%rdi),%al
  40235a:	48 f7 d1             	not    %rcx
  40235d:	49 89 c8             	mov    %rcx,%r8
  402360:	4c 89 f7             	mov    %r14,%rdi
  402363:	48 89 d1             	mov    %rdx,%rcx
  402366:	f2 ae                	repnz scas %es:(%rdi),%al
  402368:	49 29 c8             	sub    %rcx,%r8
  40236b:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402370:	48 89 d1             	mov    %rdx,%rcx
  402373:	f2 ae                	repnz scas %es:(%rdi),%al
  402375:	49 29 c8             	sub    %rcx,%r8
  402378:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
  40237d:	49 8d 44 00 7b       	lea    0x7b(%r8,%rax,1),%rax
  402382:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402388:	76 72                	jbe    4023fc <submitr+0x295>
  40238a:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402391:	3a 20 52 
  402394:	48 89 03             	mov    %rax,(%rbx)
  402397:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  40239e:	20 73 74 
  4023a1:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4023a5:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  4023ac:	74 6f 6f 
  4023af:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4023b3:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  4023ba:	65 2e 20 
  4023bd:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4023c1:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  4023c8:	61 73 65 
  4023cb:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4023cf:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  4023d6:	49 54 52 
  4023d9:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4023dd:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  4023e4:	55 46 00 
  4023e7:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4023eb:	89 ef                	mov    %ebp,%edi
  4023ed:	e8 be e8 ff ff       	callq  400cb0 <close@plt>
  4023f2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4023f7:	e9 74 04 00 00       	jmpq   402870 <submitr+0x709>
  4023fc:	48 8d b4 24 20 40 00 	lea    0x4020(%rsp),%rsi
  402403:	00 
  402404:	b9 00 04 00 00       	mov    $0x400,%ecx
  402409:	b8 00 00 00 00       	mov    $0x0,%eax
  40240e:	48 89 f7             	mov    %rsi,%rdi
  402411:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402414:	4c 89 ef             	mov    %r13,%rdi
  402417:	e8 0f fb ff ff       	callq  401f2b <urlencode>
  40241c:	85 c0                	test   %eax,%eax
  40241e:	0f 89 8a 00 00 00    	jns    4024ae <submitr+0x347>
  402424:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  40242b:	3a 20 52 
  40242e:	48 89 03             	mov    %rax,(%rbx)
  402431:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  402438:	20 73 74 
  40243b:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40243f:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402446:	63 6f 6e 
  402449:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40244d:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  402454:	20 61 6e 
  402457:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40245b:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402462:	67 61 6c 
  402465:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402469:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  402470:	6e 70 72 
  402473:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402477:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  40247e:	6c 65 20 
  402481:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402485:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  40248c:	63 74 65 
  40248f:	48 89 43 38          	mov    %rax,0x38(%rbx)
  402493:	66 c7 43 40 72 2e    	movw   $0x2e72,0x40(%rbx)
  402499:	c6 43 42 00          	movb   $0x0,0x42(%rbx)
  40249d:	89 ef                	mov    %ebp,%edi
  40249f:	e8 0c e8 ff ff       	callq  400cb0 <close@plt>
  4024a4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4024a9:	e9 c2 03 00 00       	jmpq   402870 <submitr+0x709>
  4024ae:	4d 89 e1             	mov    %r12,%r9
  4024b1:	4c 8d 84 24 20 40 00 	lea    0x4020(%rsp),%r8
  4024b8:	00 
  4024b9:	4c 89 f9             	mov    %r15,%rcx
  4024bc:	4c 89 f2             	mov    %r14,%rdx
  4024bf:	be 18 34 40 00       	mov    $0x403418,%esi
  4024c4:	48 8d bc 24 20 60 00 	lea    0x6020(%rsp),%rdi
  4024cb:	00 
  4024cc:	b8 00 00 00 00       	mov    $0x0,%eax
  4024d1:	e8 0a e9 ff ff       	callq  400de0 <sprintf@plt>
  4024d6:	48 8d bc 24 20 60 00 	lea    0x6020(%rsp),%rdi
  4024dd:	00 
  4024de:	b8 00 00 00 00       	mov    $0x0,%eax
  4024e3:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4024ea:	f2 ae                	repnz scas %es:(%rdi),%al
  4024ec:	48 f7 d1             	not    %rcx
  4024ef:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  4024f3:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  4024fa:	00 
  4024fb:	89 ef                	mov    %ebp,%edi
  4024fd:	e8 ff fa ff ff       	callq  402001 <rio_writen>
  402502:	48 85 c0             	test   %rax,%rax
  402505:	79 6e                	jns    402575 <submitr+0x40e>
  402507:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40250e:	3a 20 43 
  402511:	48 89 03             	mov    %rax,(%rbx)
  402514:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40251b:	20 75 6e 
  40251e:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402522:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402529:	74 6f 20 
  40252c:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402530:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  402537:	20 74 6f 
  40253a:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40253e:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  402545:	72 65 73 
  402548:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40254c:	48 b8 75 6c 74 20 73 	movabs $0x7672657320746c75,%rax
  402553:	65 72 76 
  402556:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40255a:	66 c7 43 30 65 72    	movw   $0x7265,0x30(%rbx)
  402560:	c6 43 32 00          	movb   $0x0,0x32(%rbx)
  402564:	89 ef                	mov    %ebp,%edi
  402566:	e8 45 e7 ff ff       	callq  400cb0 <close@plt>
  40256b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402570:	e9 fb 02 00 00       	jmpq   402870 <submitr+0x709>
  402575:	89 ee                	mov    %ebp,%esi
  402577:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  40257e:	00 
  40257f:	e8 6c f9 ff ff       	callq  401ef0 <rio_readinitb>
  402584:	ba 00 20 00 00       	mov    $0x2000,%edx
  402589:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  402590:	00 
  402591:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  402598:	00 
  402599:	e8 46 fb ff ff       	callq  4020e4 <rio_readlineb>
  40259e:	48 85 c0             	test   %rax,%rax
  4025a1:	7f 7d                	jg     402620 <submitr+0x4b9>
  4025a3:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4025aa:	3a 20 43 
  4025ad:	48 89 03             	mov    %rax,(%rbx)
  4025b0:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4025b7:	20 75 6e 
  4025ba:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4025be:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4025c5:	74 6f 20 
  4025c8:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4025cc:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  4025d3:	66 69 72 
  4025d6:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4025da:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  4025e1:	61 64 65 
  4025e4:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4025e8:	48 b8 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rax
  4025ef:	6d 20 72 
  4025f2:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4025f6:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  4025fd:	20 73 65 
  402600:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402604:	c7 43 38 72 76 65 72 	movl   $0x72657672,0x38(%rbx)
  40260b:	c6 43 3c 00          	movb   $0x0,0x3c(%rbx)
  40260f:	89 ef                	mov    %ebp,%edi
  402611:	e8 9a e6 ff ff       	callq  400cb0 <close@plt>
  402616:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40261b:	e9 50 02 00 00       	jmpq   402870 <submitr+0x709>
  402620:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
  402625:	48 8d 8c 24 1c 20 00 	lea    0x201c(%rsp),%rcx
  40262c:	00 
  40262d:	48 8d 94 24 20 20 00 	lea    0x2020(%rsp),%rdx
  402634:	00 
  402635:	be 8f 34 40 00       	mov    $0x40348f,%esi
  40263a:	48 8d bc 24 20 60 00 	lea    0x6020(%rsp),%rdi
  402641:	00 
  402642:	b8 00 00 00 00       	mov    $0x0,%eax
  402647:	e8 24 e7 ff ff       	callq  400d70 <__isoc99_sscanf@plt>
  40264c:	e9 98 00 00 00       	jmpq   4026e9 <submitr+0x582>
  402651:	ba 00 20 00 00       	mov    $0x2000,%edx
  402656:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  40265d:	00 
  40265e:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  402665:	00 
  402666:	e8 79 fa ff ff       	callq  4020e4 <rio_readlineb>
  40266b:	48 85 c0             	test   %rax,%rax
  40266e:	7f 79                	jg     4026e9 <submitr+0x582>
  402670:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402677:	3a 20 43 
  40267a:	48 89 03             	mov    %rax,(%rbx)
  40267d:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402684:	20 75 6e 
  402687:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40268b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402692:	74 6f 20 
  402695:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402699:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  4026a0:	68 65 61 
  4026a3:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4026a7:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  4026ae:	66 72 6f 
  4026b1:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4026b5:	48 b8 6d 20 74 68 65 	movabs $0x657220656874206d,%rax
  4026bc:	20 72 65 
  4026bf:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4026c3:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  4026ca:	73 65 72 
  4026cd:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4026d1:	c7 43 38 76 65 72 00 	movl   $0x726576,0x38(%rbx)
  4026d8:	89 ef                	mov    %ebp,%edi
  4026da:	e8 d1 e5 ff ff       	callq  400cb0 <close@plt>
  4026df:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4026e4:	e9 87 01 00 00       	jmpq   402870 <submitr+0x709>
  4026e9:	0f b6 84 24 20 60 00 	movzbl 0x6020(%rsp),%eax
  4026f0:	00 
  4026f1:	83 e8 0d             	sub    $0xd,%eax
  4026f4:	75 15                	jne    40270b <submitr+0x5a4>
  4026f6:	0f b6 84 24 21 60 00 	movzbl 0x6021(%rsp),%eax
  4026fd:	00 
  4026fe:	83 e8 0a             	sub    $0xa,%eax
  402701:	75 08                	jne    40270b <submitr+0x5a4>
  402703:	0f b6 84 24 22 60 00 	movzbl 0x6022(%rsp),%eax
  40270a:	00 
  40270b:	85 c0                	test   %eax,%eax
  40270d:	0f 85 3e ff ff ff    	jne    402651 <submitr+0x4ea>
  402713:	ba 00 20 00 00       	mov    $0x2000,%edx
  402718:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  40271f:	00 
  402720:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  402727:	00 
  402728:	e8 b7 f9 ff ff       	callq  4020e4 <rio_readlineb>
  40272d:	48 85 c0             	test   %rax,%rax
  402730:	0f 8f 83 00 00 00    	jg     4027b9 <submitr+0x652>
  402736:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40273d:	3a 20 43 
  402740:	48 89 03             	mov    %rax,(%rbx)
  402743:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40274a:	20 75 6e 
  40274d:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402751:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402758:	74 6f 20 
  40275b:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40275f:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  402766:	73 74 61 
  402769:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40276d:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402774:	65 73 73 
  402777:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40277b:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  402782:	72 6f 6d 
  402785:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402789:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  402790:	6c 74 20 
  402793:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402797:	c7 43 38 73 65 72 76 	movl   $0x76726573,0x38(%rbx)
  40279e:	66 c7 43 3c 65 72    	movw   $0x7265,0x3c(%rbx)
  4027a4:	c6 43 3e 00          	movb   $0x0,0x3e(%rbx)
  4027a8:	89 ef                	mov    %ebp,%edi
  4027aa:	e8 01 e5 ff ff       	callq  400cb0 <close@plt>
  4027af:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4027b4:	e9 b7 00 00 00       	jmpq   402870 <submitr+0x709>
  4027b9:	8b 94 24 1c 20 00 00 	mov    0x201c(%rsp),%edx
  4027c0:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
  4027c6:	74 28                	je     4027f0 <submitr+0x689>
  4027c8:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx
  4027cd:	be 58 34 40 00       	mov    $0x403458,%esi
  4027d2:	48 89 df             	mov    %rbx,%rdi
  4027d5:	b8 00 00 00 00       	mov    $0x0,%eax
  4027da:	e8 01 e6 ff ff       	callq  400de0 <sprintf@plt>
  4027df:	89 ef                	mov    %ebp,%edi
  4027e1:	e8 ca e4 ff ff       	callq  400cb0 <close@plt>
  4027e6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4027eb:	e9 80 00 00 00       	jmpq   402870 <submitr+0x709>
  4027f0:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  4027f7:	00 
  4027f8:	48 89 df             	mov    %rbx,%rdi
  4027fb:	e8 40 e4 ff ff       	callq  400c40 <strcpy@plt>
  402800:	89 ef                	mov    %ebp,%edi
  402802:	e8 a9 e4 ff ff       	callq  400cb0 <close@plt>
  402807:	0f b6 03             	movzbl (%rbx),%eax
  40280a:	83 e8 4f             	sub    $0x4f,%eax
  40280d:	75 18                	jne    402827 <submitr+0x6c0>
  40280f:	0f b6 53 01          	movzbl 0x1(%rbx),%edx
  402813:	83 ea 4b             	sub    $0x4b,%edx
  402816:	75 11                	jne    402829 <submitr+0x6c2>
  402818:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  40281c:	83 ea 0a             	sub    $0xa,%edx
  40281f:	75 08                	jne    402829 <submitr+0x6c2>
  402821:	0f b6 53 03          	movzbl 0x3(%rbx),%edx
  402825:	eb 02                	jmp    402829 <submitr+0x6c2>
  402827:	89 c2                	mov    %eax,%edx
  402829:	85 d2                	test   %edx,%edx
  40282b:	74 30                	je     40285d <submitr+0x6f6>
  40282d:	bf a0 34 40 00       	mov    $0x4034a0,%edi
  402832:	b9 05 00 00 00       	mov    $0x5,%ecx
  402837:	48 89 de             	mov    %rbx,%rsi
  40283a:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  40283c:	0f 97 c1             	seta   %cl
  40283f:	0f 92 c2             	setb   %dl
  402842:	38 d1                	cmp    %dl,%cl
  402844:	74 1e                	je     402864 <submitr+0x6fd>
  402846:	85 c0                	test   %eax,%eax
  402848:	75 0d                	jne    402857 <submitr+0x6f0>
  40284a:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  40284e:	83 e8 4b             	sub    $0x4b,%eax
  402851:	75 04                	jne    402857 <submitr+0x6f0>
  402853:	0f b6 43 02          	movzbl 0x2(%rbx),%eax
  402857:	85 c0                	test   %eax,%eax
  402859:	75 10                	jne    40286b <submitr+0x704>
  40285b:	eb 13                	jmp    402870 <submitr+0x709>
  40285d:	b8 00 00 00 00       	mov    $0x0,%eax
  402862:	eb 0c                	jmp    402870 <submitr+0x709>
  402864:	b8 00 00 00 00       	mov    $0x0,%eax
  402869:	eb 05                	jmp    402870 <submitr+0x709>
  40286b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402870:	48 81 c4 48 a0 00 00 	add    $0xa048,%rsp
  402877:	5b                   	pop    %rbx
  402878:	5d                   	pop    %rbp
  402879:	41 5c                	pop    %r12
  40287b:	41 5d                	pop    %r13
  40287d:	41 5e                	pop    %r14
  40287f:	41 5f                	pop    %r15
  402881:	c3                   	retq   

0000000000402882 <init_timeout>:
  402882:	53                   	push   %rbx
  402883:	89 fb                	mov    %edi,%ebx
  402885:	85 ff                	test   %edi,%edi
  402887:	74 1f                	je     4028a8 <init_timeout+0x26>
  402889:	85 ff                	test   %edi,%edi
  40288b:	79 05                	jns    402892 <init_timeout+0x10>
  40288d:	bb 00 00 00 00       	mov    $0x0,%ebx
  402892:	be 02 1f 40 00       	mov    $0x401f02,%esi
  402897:	bf 0e 00 00 00       	mov    $0xe,%edi
  40289c:	e8 3f e4 ff ff       	callq  400ce0 <signal@plt>
  4028a1:	89 df                	mov    %ebx,%edi
  4028a3:	e8 f8 e3 ff ff       	callq  400ca0 <alarm@plt>
  4028a8:	5b                   	pop    %rbx
  4028a9:	c3                   	retq   

00000000004028aa <init_driver>:
  4028aa:	55                   	push   %rbp
  4028ab:	53                   	push   %rbx
  4028ac:	48 83 ec 18          	sub    $0x18,%rsp
  4028b0:	48 89 fd             	mov    %rdi,%rbp
  4028b3:	be 01 00 00 00       	mov    $0x1,%esi
  4028b8:	bf 0d 00 00 00       	mov    $0xd,%edi
  4028bd:	e8 1e e4 ff ff       	callq  400ce0 <signal@plt>
  4028c2:	be 01 00 00 00       	mov    $0x1,%esi
  4028c7:	bf 1d 00 00 00       	mov    $0x1d,%edi
  4028cc:	e8 0f e4 ff ff       	callq  400ce0 <signal@plt>
  4028d1:	be 01 00 00 00       	mov    $0x1,%esi
  4028d6:	bf 1d 00 00 00       	mov    $0x1d,%edi
  4028db:	e8 00 e4 ff ff       	callq  400ce0 <signal@plt>
  4028e0:	ba 00 00 00 00       	mov    $0x0,%edx
  4028e5:	be 01 00 00 00       	mov    $0x1,%esi
  4028ea:	bf 02 00 00 00       	mov    $0x2,%edi
  4028ef:	e8 1c e5 ff ff       	callq  400e10 <socket@plt>
  4028f4:	89 c3                	mov    %eax,%ebx
  4028f6:	85 c0                	test   %eax,%eax
  4028f8:	79 4f                	jns    402949 <init_driver+0x9f>
  4028fa:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402901:	3a 20 43 
  402904:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402908:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40290f:	20 75 6e 
  402912:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402916:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40291d:	74 6f 20 
  402920:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402924:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  40292b:	65 20 73 
  40292e:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402932:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402939:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  40293f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402944:	e9 23 01 00 00       	jmpq   402a6c <init_driver+0x1c2>
  402949:	bf 10 2f 40 00       	mov    $0x402f10,%edi
  40294e:	e8 9d e3 ff ff       	callq  400cf0 <gethostbyname@plt>
  402953:	48 85 c0             	test   %rax,%rax
  402956:	75 68                	jne    4029c0 <init_driver+0x116>
  402958:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  40295f:	3a 20 44 
  402962:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402966:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  40296d:	20 75 6e 
  402970:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402974:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40297b:	74 6f 20 
  40297e:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402982:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402989:	76 65 20 
  40298c:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402990:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402997:	72 20 61 
  40299a:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40299e:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  4029a5:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  4029ab:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  4029af:	89 df                	mov    %ebx,%edi
  4029b1:	e8 fa e2 ff ff       	callq  400cb0 <close@plt>
  4029b6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029bb:	e9 ac 00 00 00       	jmpq   402a6c <init_driver+0x1c2>
  4029c0:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  4029c7:	00 
  4029c8:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  4029cf:	00 00 
  4029d1:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  4029d7:	48 8b 48 18          	mov    0x18(%rax),%rcx
  4029db:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4029df:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
  4029e4:	48 8b 39             	mov    (%rcx),%rdi
  4029e7:	e8 a4 e3 ff ff       	callq  400d90 <bcopy@plt>
  4029ec:	66 c7 44 24 02 3b 6e 	movw   $0x6e3b,0x2(%rsp)
  4029f3:	ba 10 00 00 00       	mov    $0x10,%edx
  4029f8:	48 89 e6             	mov    %rsp,%rsi
  4029fb:	89 df                	mov    %ebx,%edi
  4029fd:	e8 fe e3 ff ff       	callq  400e00 <connect@plt>
  402a02:	85 c0                	test   %eax,%eax
  402a04:	79 50                	jns    402a56 <init_driver+0x1ac>
  402a06:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402a0d:	3a 20 55 
  402a10:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a14:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402a1b:	20 74 6f 
  402a1e:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402a22:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402a29:	65 63 74 
  402a2c:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a30:	48 b8 20 74 6f 20 73 	movabs $0x76726573206f7420,%rax
  402a37:	65 72 76 
  402a3a:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402a3e:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  402a44:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  402a48:	89 df                	mov    %ebx,%edi
  402a4a:	e8 61 e2 ff ff       	callq  400cb0 <close@plt>
  402a4f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a54:	eb 16                	jmp    402a6c <init_driver+0x1c2>
  402a56:	89 df                	mov    %ebx,%edi
  402a58:	e8 53 e2 ff ff       	callq  400cb0 <close@plt>
  402a5d:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  402a63:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  402a67:	b8 00 00 00 00       	mov    $0x0,%eax
  402a6c:	48 83 c4 18          	add    $0x18,%rsp
  402a70:	5b                   	pop    %rbx
  402a71:	5d                   	pop    %rbp
  402a72:	c3                   	retq   

0000000000402a73 <driver_post>:
  402a73:	53                   	push   %rbx
  402a74:	48 83 ec 10          	sub    $0x10,%rsp
  402a78:	4c 89 cb             	mov    %r9,%rbx
  402a7b:	45 85 c0             	test   %r8d,%r8d
  402a7e:	74 22                	je     402aa2 <driver_post+0x2f>
  402a80:	48 89 ce             	mov    %rcx,%rsi
  402a83:	bf a5 34 40 00       	mov    $0x4034a5,%edi
  402a88:	b8 00 00 00 00       	mov    $0x0,%eax
  402a8d:	e8 ee e1 ff ff       	callq  400c80 <printf@plt>
  402a92:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402a97:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402a9b:	b8 00 00 00 00       	mov    $0x0,%eax
  402aa0:	eb 39                	jmp    402adb <driver_post+0x68>
  402aa2:	48 85 ff             	test   %rdi,%rdi
  402aa5:	74 26                	je     402acd <driver_post+0x5a>
  402aa7:	80 3f 00             	cmpb   $0x0,(%rdi)
  402aaa:	74 21                	je     402acd <driver_post+0x5a>
  402aac:	4c 89 0c 24          	mov    %r9,(%rsp)
  402ab0:	49 89 c9             	mov    %rcx,%r9
  402ab3:	49 89 d0             	mov    %rdx,%r8
  402ab6:	48 89 f9             	mov    %rdi,%rcx
  402ab9:	48 89 f2             	mov    %rsi,%rdx
  402abc:	be 6e 3b 00 00       	mov    $0x3b6e,%esi
  402ac1:	bf 10 2f 40 00       	mov    $0x402f10,%edi
  402ac6:	e8 9c f6 ff ff       	callq  402167 <submitr>
  402acb:	eb 0e                	jmp    402adb <driver_post+0x68>
  402acd:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402ad2:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402ad6:	b8 00 00 00 00       	mov    $0x0,%eax
  402adb:	48 83 c4 10          	add    $0x10,%rsp
  402adf:	5b                   	pop    %rbx
  402ae0:	c3                   	retq   

0000000000402ae1 <check>:
  402ae1:	89 f8                	mov    %edi,%eax
  402ae3:	c1 e8 1c             	shr    $0x1c,%eax
  402ae6:	85 c0                	test   %eax,%eax
  402ae8:	74 1d                	je     402b07 <check+0x26>
  402aea:	b9 00 00 00 00       	mov    $0x0,%ecx
  402aef:	eb 0b                	jmp    402afc <check+0x1b>
  402af1:	89 f8                	mov    %edi,%eax
  402af3:	d3 e8                	shr    %cl,%eax
  402af5:	3c 0a                	cmp    $0xa,%al
  402af7:	74 14                	je     402b0d <check+0x2c>
  402af9:	83 c1 08             	add    $0x8,%ecx
  402afc:	83 f9 1f             	cmp    $0x1f,%ecx
  402aff:	7e f0                	jle    402af1 <check+0x10>
  402b01:	b8 01 00 00 00       	mov    $0x1,%eax
  402b06:	c3                   	retq   
  402b07:	b8 00 00 00 00       	mov    $0x0,%eax
  402b0c:	c3                   	retq   
  402b0d:	b8 00 00 00 00       	mov    $0x0,%eax
  402b12:	c3                   	retq   

0000000000402b13 <gencookie>:
  402b13:	53                   	push   %rbx
  402b14:	83 c7 01             	add    $0x1,%edi
  402b17:	e8 04 e1 ff ff       	callq  400c20 <srandom@plt>
  402b1c:	e8 2f e2 ff ff       	callq  400d50 <random@plt>
  402b21:	89 c3                	mov    %eax,%ebx
  402b23:	89 c7                	mov    %eax,%edi
  402b25:	e8 b7 ff ff ff       	callq  402ae1 <check>
  402b2a:	85 c0                	test   %eax,%eax
  402b2c:	74 ee                	je     402b1c <gencookie+0x9>
  402b2e:	89 d8                	mov    %ebx,%eax
  402b30:	5b                   	pop    %rbx
  402b31:	c3                   	retq   
  402b32:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402b39:	00 00 00 
  402b3c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402b40 <__libc_csu_init>:
  402b40:	41 57                	push   %r15
  402b42:	41 89 ff             	mov    %edi,%r15d
  402b45:	41 56                	push   %r14
  402b47:	49 89 f6             	mov    %rsi,%r14
  402b4a:	41 55                	push   %r13
  402b4c:	49 89 d5             	mov    %rdx,%r13
  402b4f:	41 54                	push   %r12
  402b51:	4c 8d 25 b8 12 20 00 	lea    0x2012b8(%rip),%r12        # 603e10 <__frame_dummy_init_array_entry>
  402b58:	55                   	push   %rbp
  402b59:	48 8d 2d b8 12 20 00 	lea    0x2012b8(%rip),%rbp        # 603e18 <__init_array_end>
  402b60:	53                   	push   %rbx
  402b61:	4c 29 e5             	sub    %r12,%rbp
  402b64:	31 db                	xor    %ebx,%ebx
  402b66:	48 c1 fd 03          	sar    $0x3,%rbp
  402b6a:	48 83 ec 08          	sub    $0x8,%rsp
  402b6e:	e8 55 e0 ff ff       	callq  400bc8 <_init>
  402b73:	48 85 ed             	test   %rbp,%rbp
  402b76:	74 1e                	je     402b96 <__libc_csu_init+0x56>
  402b78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402b7f:	00 
  402b80:	4c 89 ea             	mov    %r13,%rdx
  402b83:	4c 89 f6             	mov    %r14,%rsi
  402b86:	44 89 ff             	mov    %r15d,%edi
  402b89:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  402b8d:	48 83 c3 01          	add    $0x1,%rbx
  402b91:	48 39 eb             	cmp    %rbp,%rbx
  402b94:	75 ea                	jne    402b80 <__libc_csu_init+0x40>
  402b96:	48 83 c4 08          	add    $0x8,%rsp
  402b9a:	5b                   	pop    %rbx
  402b9b:	5d                   	pop    %rbp
  402b9c:	41 5c                	pop    %r12
  402b9e:	41 5d                	pop    %r13
  402ba0:	41 5e                	pop    %r14
  402ba2:	41 5f                	pop    %r15
  402ba4:	c3                   	retq   
  402ba5:	90                   	nop
  402ba6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402bad:	00 00 00 

0000000000402bb0 <__libc_csu_fini>:
  402bb0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000402bb4 <_fini>:
  402bb4:	48 83 ec 08          	sub    $0x8,%rsp
  402bb8:	48 83 c4 08          	add    $0x8,%rsp
  402bbc:	c3                   	retq   
