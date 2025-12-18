
extracted_libs/libfrozengift.so:     file format elf64-x86-64


Disassembly of section .text:

00000000000179f3 <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x282f>:
   179f3:	55                   	push   %rbp
   179f4:	41 57                	push   %r15
   179f6:	41 56                	push   %r14
   179f8:	41 55                	push   %r13
   179fa:	41 54                	push   %r12
   179fc:	53                   	push   %rbx
   179fd:	48 83 ec 38          	sub    $0x38,%rsp
   17a01:	49 89 d6             	mov    %rdx,%r14
   17a04:	49 89 f7             	mov    %rsi,%r15
   17a07:	48 89 fb             	mov    %rdi,%rbx
   17a0a:	4c 8d 67 28          	lea    0x28(%rdi),%r12
   17a0e:	44 0f b6 6f 68       	movzbl 0x68(%rdi),%r13d
   17a13:	6a 40                	push   $0x40
   17a15:	59                   	pop    %rcx
   17a16:	4c 29 e9             	sub    %r13,%rcx
   17a19:	48 39 ca             	cmp    %rcx,%rdx
   17a1c:	73 4a                	jae    17a68 <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x28a4>
   17a1e:	48 8d 0d db 24 04 00 	lea    0x424db(%rip),%rcx        # 59f00 <fflush@plt+0x4120>
   17a25:	6a 40                	push   $0x40
   17a27:	5a                   	pop    %rdx
   17a28:	4c 89 ef             	mov    %r13,%rdi
   17a2b:	4c 89 e6             	mov    %r12,%rsi
   17a2e:	e8 49 e9 ff ff       	call   1637c <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x11b8>
   17a33:	48 8d 0d de 24 04 00 	lea    0x424de(%rip),%rcx        # 59f18 <fflush@plt+0x4138>
   17a3a:	4c 89 f7             	mov    %r14,%rdi
   17a3d:	48 89 c6             	mov    %rax,%rsi
   17a40:	e8 b3 d7 ff ff       	call   151f8 <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x34>
   17a45:	4c 8d 05 e4 24 04 00 	lea    0x424e4(%rip),%r8        # 59f30 <fflush@plt+0x4150>
   17a4c:	48 89 c7             	mov    %rax,%rdi
   17a4f:	48 89 d6             	mov    %rdx,%rsi
   17a52:	4c 89 fa             	mov    %r15,%rdx
   17a55:	4c 89 f1             	mov    %r14,%rcx
   17a58:	e8 df f0 ff ff       	call   16b3c <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x1978>
   17a5d:	4d 01 ee             	add    %r13,%r14
   17a60:	4d 89 f5             	mov    %r14,%r13
   17a63:	e9 ce 00 00 00       	jmp    17b36 <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x2972>
   17a68:	4d 85 ed             	test   %r13,%r13
   17a6b:	74 73                	je     17ae0 <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x291c>
   17a6d:	4c 8d 05 14 24 04 00 	lea    0x42414(%rip),%r8        # 59e88 <fflush@plt+0x40a8>
   17a74:	48 8d 6c 24 18       	lea    0x18(%rsp),%rbp
   17a79:	48 89 ef             	mov    %rbp,%rdi
   17a7c:	4c 89 fe             	mov    %r15,%rsi
   17a7f:	4c 89 f2             	mov    %r14,%rdx
   17a82:	e8 f9 f0 ff ff       	call   16b80 <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x19bc>
   17a87:	48 8b 45 00          	mov    0x0(%rbp),%rax
   17a8b:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
   17a90:	48 8b 45 08          	mov    0x8(%rbp),%rax
   17a94:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
   17a99:	4c 8b 7d 10          	mov    0x10(%rbp),%r15
   17a9d:	4c 8b 75 18          	mov    0x18(%rbp),%r14
   17aa1:	48 8d 0d f8 23 04 00 	lea    0x423f8(%rip),%rcx        # 59ea0 <fflush@plt+0x40c0>
   17aa8:	6a 40                	push   $0x40
   17aaa:	5a                   	pop    %rdx
   17aab:	4c 89 ef             	mov    %r13,%rdi
   17aae:	4c 89 e6             	mov    %r12,%rsi
   17ab1:	e8 c6 e8 ff ff       	call   1637c <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x11b8>
   17ab6:	4c 8d 05 fb 23 04 00 	lea    0x423fb(%rip),%r8        # 59eb8 <fflush@plt+0x40d8>
   17abd:	48 89 c7             	mov    %rax,%rdi
   17ac0:	48 89 d6             	mov    %rdx,%rsi
   17ac3:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
   17ac8:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
   17acd:	e8 6a f0 ff ff       	call   16b3c <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x1978>
   17ad2:	6a 01                	push   $0x1
   17ad4:	5a                   	pop    %rdx
   17ad5:	48 89 df             	mov    %rbx,%rdi
   17ad8:	4c 89 e6             	mov    %r12,%rsi
   17adb:	e8 69 00 00 00       	call   17b49 <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x2985>
   17ae0:	4c 89 f5             	mov    %r14,%rbp
   17ae3:	48 83 e5 c0          	and    $0xffffffffffffffc0,%rbp
   17ae7:	45 89 f5             	mov    %r14d,%r13d
   17aea:	41 83 e5 3f          	and    $0x3f,%r13d
   17aee:	4c 01 fd             	add    %r15,%rbp
   17af1:	49 83 fe 40          	cmp    $0x40,%r14
   17af5:	72 12                	jb     17b09 <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x2945>
   17af7:	49 c1 ee 06          	shr    $0x6,%r14
   17afb:	48 89 df             	mov    %rbx,%rdi
   17afe:	4c 89 fe             	mov    %r15,%rsi
   17b01:	4c 89 f2             	mov    %r14,%rdx
   17b04:	e8 40 00 00 00       	call   17b49 <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x2985>
   17b09:	48 8d 0d c0 23 04 00 	lea    0x423c0(%rip),%rcx        # 59ed0 <fflush@plt+0x40f0>
   17b10:	6a 40                	push   $0x40
   17b12:	5a                   	pop    %rdx
   17b13:	4c 89 ef             	mov    %r13,%rdi
   17b16:	4c 89 e6             	mov    %r12,%rsi
   17b19:	e8 da d6 ff ff       	call   151f8 <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x34>
   17b1e:	4c 8d 05 c3 23 04 00 	lea    0x423c3(%rip),%r8        # 59ee8 <fflush@plt+0x4108>
   17b25:	48 89 c7             	mov    %rax,%rdi
   17b28:	48 89 d6             	mov    %rdx,%rsi
   17b2b:	48 89 ea             	mov    %rbp,%rdx
   17b2e:	4c 89 e9             	mov    %r13,%rcx
   17b31:	e8 06 f0 ff ff       	call   16b3c <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x1978>
   17b36:	44 88 6b 68          	mov    %r13b,0x68(%rbx)
   17b3a:	48 83 c4 38          	add    $0x38,%rsp
   17b3e:	5b                   	pop    %rbx
   17b3f:	41 5c                	pop    %r12
   17b41:	41 5d                	pop    %r13
   17b43:	41 5e                	pop    %r14
   17b45:	41 5f                	pop    %r15
   17b47:	5d                   	pop    %rbp
   17b48:	c3                   	ret
   17b49:	48 01 57 20          	add    %rdx,0x20(%rdi)
   17b4d:	e9 87 f5 00 00       	jmp    270d9 <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x11f15>
   17b52:	6a 01                	push   $0x1
   17b54:	5a                   	pop    %rdx
   17b55:	e9 7f f5 00 00       	jmp    270d9 <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x11f15>
   17b5a:	cc                   	int3
   17b5b:	cc                   	int3
   17b5c:	cc                   	int3
   17b5d:	cc                   	int3
   17b5e:	cc                   	int3
   17b5f:	cc                   	int3
   17b60:	48 89 fa             	mov    %rdi,%rdx
   17b63:	48 39 fe             	cmp    %rdi,%rsi
   17b66:	76 21                	jbe    17b89 <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x29c5>
   17b68:	50                   	push   %rax
   17b69:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
   17b70:	00
   17b71:	48 89 e7             	mov    %rsp,%rdi
   17b74:	be 08 00 00 00       	mov    $0x8,%esi
   17b79:	ff 15 e9 47 04 00    	call   *0x447e9(%rip)        # 5c368 <fflush@plt+0x6588>
   17b7f:	85 c0                	test   %eax,%eax
   17b81:	75 0f                	jne    17b92 <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x29ce>
   17b83:	48 8b 04 24          	mov    (%rsp),%rax
   17b87:	59                   	pop    %rcx
   17b88:	c3                   	ret
   17b89:	48 89 d7             	mov    %rdx,%rdi
   17b8c:	ff 25 de 47 04 00    	jmp    *0x447de(%rip)        # 5c370 <fflush@plt+0x6590>
   17b92:	31 c0                	xor    %eax,%eax
   17b94:	59                   	pop    %rcx
   17b95:	c3                   	ret
   17b96:	cc                   	int3
   17b97:	cc                   	int3
   17b98:	cc                   	int3
   17b99:	cc                   	int3
   17b9a:	cc                   	int3
   17b9b:	cc                   	int3
   17b9c:	cc                   	int3
   17b9d:	cc                   	int3
   17b9e:	cc                   	int3
   17b9f:	cc                   	int3
   17ba0:	41 57                	push   %r15
   17ba2:	41 56                	push   %r14
   17ba4:	41 54                	push   %r12
   17ba6:	53                   	push   %rbx
   17ba7:	50                   	push   %rax
   17ba8:	48 89 cb             	mov    %rcx,%rbx
   17bab:	48 39 ca             	cmp    %rcx,%rdx
   17bae:	76 37                	jbe    17be7 <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x2a23>
   17bb0:	49 89 f6             	mov    %rsi,%r14
   17bb3:	49 89 fc             	mov    %rdi,%r12
   17bb6:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
   17bbd:	00
   17bbe:	48 89 e7             	mov    %rsp,%rdi
   17bc1:	be 08 00 00 00       	mov    $0x8,%esi
   17bc6:	48 89 da             	mov    %rbx,%rdx
   17bc9:	ff 15 99 47 04 00    	call   *0x44799(%rip)        # 5c368 <fflush@plt+0x6588>
   17bcf:	85 c0                	test   %eax,%eax
   17bd1:	0f 95 c0             	setne  %al
   17bd4:	4c 8b 3c 24          	mov    (%rsp),%r15
   17bd8:	4d 85 ff             	test   %r15,%r15
   17bdb:	0f 94 c1             	sete   %cl
   17bde:	08 c1                	or     %al,%cl
   17be0:	74 19                	je     17bfb <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x2a37>
   17be2:	45 31 ff             	xor    %r15d,%r15d
   17be5:	eb 33                	jmp    17c1a <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x2a56>
   17be7:	48 89 de             	mov    %rbx,%rsi
   17bea:	48 83 c4 08          	add    $0x8,%rsp
   17bee:	5b                   	pop    %rbx
   17bef:	41 5c                	pop    %r12
   17bf1:	41 5e                	pop    %r14
   17bf3:	41 5f                	pop    %r15
   17bf5:	ff 25 7d 47 04 00    	jmp    *0x4477d(%rip)        # 5c378 <fflush@plt+0x6598>
   17bfb:	4c 39 f3             	cmp    %r14,%rbx
   17bfe:	4c                   	rex.WR
   17bff:	0f                   	.byte 0xf
