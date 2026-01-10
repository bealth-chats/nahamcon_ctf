
extracted_libs/libfrozengift.so:     file format elf64-x86-64


Disassembly of section .text:

000000000001cbe0 <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x7a1c>:
   1cbe0:	55                   	push   %rbp
   1cbe1:	48 89 e5             	mov    %rsp,%rbp
   1cbe4:	41 57                	push   %r15
   1cbe6:	41 56                	push   %r14
   1cbe8:	41 55                	push   %r13
   1cbea:	41 54                	push   %r12
   1cbec:	53                   	push   %rbx
   1cbed:	48 83 ec 18          	sub    $0x18,%rsp
   1cbf1:	4d 89 cc             	mov    %r9,%r12
   1cbf4:	4d 89 c5             	mov    %r8,%r13
   1cbf7:	48 89 cb             	mov    %rcx,%rbx
   1cbfa:	49 89 fe             	mov    %rdi,%r14
   1cbfd:	4c 8b 7d 20          	mov    0x20(%rbp),%r15
   1cc01:	48 8b 3f             	mov    (%rdi),%rdi
   1cc04:	49 8b 46 08          	mov    0x8(%r14),%rax
   1cc08:	ff 50 18             	call   *0x18(%rax)
   1cc0b:	4c 89 75 c8          	mov    %r14,-0x38(%rbp)
   1cc0f:	88 45 d0             	mov    %al,-0x30(%rbp)
   1cc12:	c6 45 d1 00          	movb   $0x0,-0x2f(%rbp)
   1cc16:	4c 8d 75 c8          	lea    -0x38(%rbp),%r14
   1cc1a:	ba 04 00 00 00       	mov    $0x4,%edx
   1cc1f:	4c 89 f7             	mov    %r14,%rdi
   1cc22:	48 89 de             	mov    %rbx,%rsi
   1cc25:	4c 89 e9             	mov    %r13,%rcx
   1cc28:	4d 89 e0             	mov    %r12,%r8
   1cc2b:	e8 30 fa ff ff       	call   1c660 <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x749c>
   1cc30:	ba 03 00 00 00       	mov    $0x3,%edx
   1cc35:	4c 89 f7             	mov    %r14,%rdi
   1cc38:	48 8b 75 10          	mov    0x10(%rbp),%rsi
   1cc3c:	48 8b 4d 18          	mov    0x18(%rbp),%rcx
   1cc40:	4d 89 f8             	mov    %r15,%r8
   1cc43:	e8 18 fa ff ff       	call   1c660 <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x749c>
   1cc48:	0f b6 4d d0          	movzbl -0x30(%rbp),%ecx
   1cc4c:	0f b6 45 d1          	movzbl -0x2f(%rbp),%eax
   1cc50:	89 c2                	mov    %eax,%edx
   1cc52:	f6 d2                	not    %dl
   1cc54:	08 ca                	or     %cl,%dl
   1cc56:	f6 c2 01             	test   $0x1,%dl
   1cc59:	74 04                	je     1cc5f <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x7a9b>
   1cc5b:	08 c8                	or     %cl,%al
   1cc5d:	eb 35                	jmp    1cc94 <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x7ad0>
   1cc5f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
   1cc63:	f6 40 12 80          	testb  $0x80,0x12(%rax)
   1cc67:	75 15                	jne    1cc7e <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x7aba>
   1cc69:	48 8b 38             	mov    (%rax),%rdi
   1cc6c:	48 8b 40 08          	mov    0x8(%rax),%rax
   1cc70:	48 8d 35 76 b7 fe ff 	lea    -0x1488a(%rip),%rsi        # 83ed <Java_com_sehno_frozengift_FlagProvider_checkPremium@@Base-0xc5fb>
   1cc77:	ba 02 00 00 00       	mov    $0x2,%edx
   1cc7c:	eb 13                	jmp    1cc91 <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x7acd>
   1cc7e:	48 8b 38             	mov    (%rax),%rdi
   1cc81:	48 8b 40 08          	mov    0x8(%rax),%rax
   1cc85:	48 8d 35 34 b7 fe ff 	lea    -0x148cc(%rip),%rsi        # 83c0 <Java_com_sehno_frozengift_FlagProvider_checkPremium@@Base-0xc628>
   1cc8c:	ba 01 00 00 00       	mov    $0x1,%edx
   1cc91:	ff 50 18             	call   *0x18(%rax)
   1cc94:	24 01                	and    $0x1,%al
   1cc96:	48 83 c4 18          	add    $0x18,%rsp
   1cc9a:	5b                   	pop    %rbx
   1cc9b:	41 5c                	pop    %r12
   1cc9d:	41 5d                	pop    %r13
   1cc9f:	41 5e                	pop    %r14
   1cca1:	41 5f                	pop    %r15
   1cca3:	5d                   	pop    %rbp
   1cca4:	c3                   	ret
   1cca5:	55                   	push   %rbp
   1cca6:	48 89 e5             	mov    %rsp,%rbp
   1cca9:	48 83 ec 10          	sub    $0x10,%rsp
   1ccad:	48 89 f2             	mov    %rsi,%rdx
   1ccb0:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
   1ccb4:	48 89 38             	mov    %rdi,(%rax)
   1ccb7:	48 8d 0d ba a1 fe ff 	lea    -0x15e46(%rip),%rcx        # 6e78 <Java_com_sehno_frozengift_FlagProvider_checkPremium@@Base-0xdb70>
   1ccbe:	48 8d 75 f0          	lea    -0x10(%rbp),%rsi
   1ccc2:	48 89 0e             	mov    %rcx,(%rsi)
   1ccc5:	48 89 c7             	mov    %rax,%rdi
   1ccc8:	e8 e4 eb ff ff       	call   1b8b1 <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x66ed>
   1cccd:	cc                   	int3
   1ccce:	cc                   	int3
   1cccf:	cc                   	int3
   1ccd0:	48 8b 07             	mov    (%rdi),%rax
   1ccd3:	48 8b 38             	mov    (%rax),%rdi
   1ccd6:	e9 45 dc ff ff       	jmp    1a920 <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x575c>
   1ccdb:	cc                   	int3
   1ccdc:	cc                   	int3
   1ccdd:	cc                   	int3
   1ccde:	cc                   	int3
   1ccdf:	cc                   	int3
   1cce0:	55                   	push   %rbp
   1cce1:	48 89 e5             	mov    %rsp,%rbp
   1cce4:	41 57                	push   %r15
   1cce6:	41 56                	push   %r14
   1cce8:	41 55                	push   %r13
   1ccea:	41 54                	push   %r12
   1ccec:	53                   	push   %rbx
   1cced:	48 83 ec 18          	sub    $0x18,%rsp
   1ccf1:	4c 89 c3             	mov    %r8,%rbx
   1ccf4:	49 89 cc             	mov    %rcx,%r12
   1ccf7:	49 89 fa             	mov    %rdi,%r10
   1ccfa:	49 83 f8 01          	cmp    $0x1,%r8
   1ccfe:	48 89 55 c0          	mov    %rdx,-0x40(%rbp)
   1cd02:	48 89 75 c8          	mov    %rsi,-0x38(%rbp)
   1cd06:	0f 85 9c 00 00 00    	jne    1cda8 <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x7be4>
   1cd0c:	41 bd 01 00 00 00    	mov    $0x1,%r13d
   1cd12:	31 c0                	xor    %eax,%eax
   1cd14:	b9 01 00 00 00       	mov    $0x1,%ecx
   1cd19:	45 31 ff             	xor    %r15d,%r15d
   1cd1c:	4c 39 f8             	cmp    %r15,%rax
   1cd1f:	4c 0f 47 f8          	cmova  %rax,%r15
   1cd23:	4c 0f 46 e9          	cmovbe %rcx,%r13
   1cd27:	49 89 de             	mov    %rbx,%r14
   1cd2a:	4d 29 fe             	sub    %r15,%r14
   1cd2d:	0f 82 90 03 00 00    	jb     1d0c3 <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x7eff>
   1cd33:	4c 89 ee             	mov    %r13,%rsi
   1cd36:	4c 01 fe             	add    %r15,%rsi
   1cd39:	0f 82 98 03 00 00    	jb     1d0d7 <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x7f13>
   1cd3f:	48 39 de             	cmp    %rbx,%rsi
   1cd42:	0f 87 8f 03 00 00    	ja     1d0d7 <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x7f13>
   1cd48:	4c 89 55 d0          	mov    %r10,-0x30(%rbp)
   1cd4c:	4b 8d 34 2c          	lea    (%r12,%r13,1),%rsi
   1cd50:	4c 89 e7             	mov    %r12,%rdi
   1cd53:	4c 89 fa             	mov    %r15,%rdx
   1cd56:	ff 15 fc f5 03 00    	call   *0x3f5fc(%rip)        # 5c358 <fflush@plt+0x6578>
   1cd5c:	85 c0                	test   %eax,%eax
   1cd5e:	0f 84 6c 01 00 00    	je     1ced0 <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x7d0c>
   1cd64:	31 c0                	xor    %eax,%eax
   1cd66:	31 c9                	xor    %ecx,%ecx
   1cd68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1cd6f:	00
   1cd70:	41 0f b6 14 0c       	movzbl (%r12,%rcx,1),%edx
   1cd75:	48 0f ab d0          	bts    %rdx,%rax
   1cd79:	48 ff c1             	inc    %rcx
   1cd7c:	48 39 cb             	cmp    %rcx,%rbx
   1cd7f:	75 ef                	jne    1cd70 <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x7bac>
   1cd81:	4d 39 fe             	cmp    %r15,%r14
   1cd84:	4d 0f 46 f7          	cmovbe %r15,%r14
   1cd88:	49 ff c6             	inc    %r14
   1cd8b:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
   1cd92:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
   1cd99:	4d 89 f5             	mov    %r14,%r13
   1cd9c:	4c 89 fa             	mov    %r15,%rdx
   1cd9f:	4c 8b 45 d0          	mov    -0x30(%rbp),%r8
   1cda3:	e9 bc 02 00 00       	jmp    1d064 <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x7ea0>
   1cda8:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   1cdae:	31 c9                	xor    %ecx,%ecx
   1cdb0:	31 c0                	xor    %eax,%eax
   1cdb2:	41 bb 01 00 00 00    	mov    $0x1,%r11d
   1cdb8:	45 31 c9             	xor    %r9d,%r9d
   1cdbb:	41 bd 01 00 00 00    	mov    $0x1,%r13d
   1cdc1:	eb 29                	jmp    1cdec <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x7c28>
   1cdc3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   1cdca:	84 00 00 00 00 00
   1cdd0:	4b 8d 3c 0b          	lea    (%r11,%r9,1),%rdi
   1cdd4:	48 ff c7             	inc    %rdi
   1cdd7:	49 89 fd             	mov    %rdi,%r13
   1cdda:	49 29 c5             	sub    %rax,%r13
   1cddd:	45 31 c9             	xor    %r9d,%r9d
   1cde0:	4e 8d 04 0f          	lea    (%rdi,%r9,1),%r8
   1cde4:	49 89 fb             	mov    %rdi,%r11
   1cde7:	49 39 d8             	cmp    %rbx,%r8
   1cdea:	73 56                	jae    1ce42 <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x7c7e>
   1cdec:	49 8d 3c 01          	lea    (%r9,%rax,1),%rdi
   1cdf0:	48 39 df             	cmp    %rbx,%rdi
   1cdf3:	0f 83 f0 02 00 00    	jae    1d0e9 <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x7f25>
   1cdf9:	41 0f b6 3c 3c       	movzbl (%r12,%rdi,1),%edi
   1cdfe:	43                   	rex.XB
   1cdff:	38                   	.byte 0x38
