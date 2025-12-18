
extracted_libs/libfrozengift.so:     file format elf64-x86-64


Disassembly of section .text:

0000000000014a1c <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base>:
   14a1c:	55                   	push   %rbp
   14a1d:	41 57                	push   %r15
   14a1f:	41 56                	push   %r14
   14a21:	41 55                	push   %r13
   14a23:	41 54                	push   %r12
   14a25:	53                   	push   %rbx
   14a26:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
   14a2d:	49 89 ff             	mov    %rdi,%r15
   14a30:	48 89 54 24 50       	mov    %rdx,0x50(%rsp)
   14a35:	48 89 94 24 90 00 00 	mov    %rdx,0x90(%rsp)
   14a3c:	00
   14a3d:	48 8d 3d 5c f4 fe ff 	lea    -0x10ba4(%rip),%rdi        # 3ea0 <Java_com_sehno_frozengift_FlagProvider_checkPremium@@Base-0x10b48>
   14a44:	6a 10                	push   $0x10
   14a46:	5e                   	pop    %rsi
   14a47:	e8 3a 9d 00 00       	call   1e786 <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x95c2>
   14a4c:	49 89 c5             	mov    %rax,%r13
   14a4f:	49 89 d4             	mov    %rdx,%r12
   14a52:	b3 08                	mov    $0x8,%bl
   14a54:	4d 85 ff             	test   %r15,%r15
   14a57:	74 51                	je     14aaa <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x8e>
   14a59:	6a 07                	push   $0x7
   14a5b:	5d                   	pop    %rbp
   14a5c:	49 8b 07             	mov    (%r15),%rax
   14a5f:	4c 8d 35 86 35 ff ff 	lea    -0xca7a(%rip),%r14        # 7fec <Java_com_sehno_frozengift_FlagProvider_checkPremium@@Base-0xc9fc>
   14a66:	48 85 c0             	test   %rax,%rax
   14a69:	74 53                	je     14abe <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0xa2>
   14a6b:	48 8b 40 30          	mov    0x30(%rax),%rax
   14a6f:	48 85 c0             	test   %rax,%rax
   14a72:	74 57                	je     14acb <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0xaf>
   14a74:	4c 89 ff             	mov    %r15,%rdi
   14a77:	4c 89 ee             	mov    %r13,%rsi
   14a7a:	ff d0                	call   *%rax
   14a7c:	49 8b 0f             	mov    (%r15),%rcx
   14a7f:	48 85 c9             	test   %rcx,%rcx
   14a82:	74 3a                	je     14abe <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0xa2>
   14a84:	48 8b 89 20 07 00 00 	mov    0x720(%rcx),%rcx
   14a8b:	48 85 c9             	test   %rcx,%rcx
   14a8e:	74 4f                	je     14adf <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0xc3>
   14a90:	48 89 c3             	mov    %rax,%rbx
   14a93:	4d 89 fe             	mov    %r15,%r14
   14a96:	4c 89 ff             	mov    %r15,%rdi
   14a99:	ff d1                	call   *%rcx
   14a9b:	3c 01                	cmp    $0x1,%al
   14a9d:	0f 85 c1 01 00 00    	jne    14c64 <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x248>
   14aa3:	b3 05                	mov    $0x5,%bl
   14aa5:	45 31 ff             	xor    %r15d,%r15d
   14aa8:	eb 4c                	jmp    14af6 <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0xda>
   14aaa:	4d 89 fe             	mov    %r15,%r14
   14aad:	48 8d 05 32 35 ff ff 	lea    -0xcace(%rip),%rax        # 7fe6 <Java_com_sehno_frozengift_FlagProvider_checkPremium@@Base-0xca02>
   14ab4:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
   14ab9:	6a 06                	push   $0x6
   14abb:	5d                   	pop    %rbp
   14abc:	eb 08                	jmp    14ac6 <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0xaa>
   14abe:	4c 89 74 24 10       	mov    %r14,0x10(%rsp)
   14ac3:	4d 89 fe             	mov    %r15,%r14
   14ac6:	45 31 ff             	xor    %r15d,%r15d
   14ac9:	eb 2b                	jmp    14af6 <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0xda>
   14acb:	4d 89 fe             	mov    %r15,%r14
   14ace:	48 8d 05 fa 34 ff ff 	lea    -0xcb06(%rip),%rax        # 7fcf <Java_com_sehno_frozengift_FlagProvider_checkPremium@@Base-0xca19>
   14ad5:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
   14ada:	6a 09                	push   $0x9
   14adc:	5d                   	pop    %rbp
   14add:	eb 12                	jmp    14af1 <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0xd5>
   14adf:	4d 89 fe             	mov    %r15,%r14
   14ae2:	6a 0e                	push   $0xe
   14ae4:	5d                   	pop    %rbp
   14ae5:	48 8d 05 ec 34 ff ff 	lea    -0xcb14(%rip),%rax        # 7fd8 <Java_com_sehno_frozengift_FlagProvider_checkPremium@@Base-0xca10>
   14aec:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
   14af1:	45 31 ff             	xor    %r15d,%r15d
   14af4:	b3 06                	mov    $0x6,%bl
   14af6:	4c 89 ef             	mov    %r13,%rdi
   14af9:	4c 89 e6             	mov    %r12,%rsi
   14afc:	e8 de 9b 00 00       	call   1e6df <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x951b>
   14b01:	45 84 ff             	test   %r15b,%r15b
   14b04:	74 3d                	je     14b43 <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x127>
   14b06:	4d 85 f6             	test   %r14,%r14
   14b09:	0f 94 c0             	sete   %al
   14b0c:	4c 8b 64 24 50       	mov    0x50(%rsp),%r12
   14b11:	4d 85 e4             	test   %r12,%r12
   14b14:	40 0f 94 c6          	sete   %sil
   14b18:	6a 10                	push   $0x10
   14b1a:	5b                   	pop    %rbx
   14b1b:	6a 06                	push   $0x6
   14b1d:	59                   	pop    %rcx
   14b1e:	48 0f 44 cb          	cmove  %rbx,%rcx
   14b22:	48 8d 3d 97 f3 fe ff 	lea    -0x10c69(%rip),%rdi        # 3ec0 <Java_com_sehno_frozengift_FlagProvider_checkPremium@@Base-0x10b28>
   14b29:	48 8d 15 b6 34 ff ff 	lea    -0xcb4a(%rip),%rdx        # 7fe6 <Java_com_sehno_frozengift_FlagProvider_checkPremium@@Base-0xca02>
   14b30:	48 0f 44 d7          	cmove  %rdi,%rdx
   14b34:	40 08 f0             	or     %sil,%al
   14b37:	b0 08                	mov    $0x8,%al
   14b39:	74 20                	je     14b5b <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x13f>
   14b3b:	40 28 f0             	sub    %sil,%al
   14b3e:	e9 f2 00 00 00       	jmp    14c35 <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x219>
   14b43:	48 89 6c 24 28       	mov    %rbp,0x28(%rsp)
   14b48:	88 5c 24 18          	mov    %bl,0x18(%rsp)
   14b4c:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
   14b51:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   14b56:	e9 e8 00 00 00       	jmp    14c43 <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x227>
   14b5b:	4d 89 f7             	mov    %r14,%r15
   14b5e:	49 8b 0e             	mov    (%r14),%rcx
   14b61:	48 85 c9             	test   %rcx,%rcx
   14b64:	0f 84 b4 00 00 00    	je     14c1e <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x202>
   14b6a:	48 8b 81 f8 00 00 00 	mov    0xf8(%rcx),%rax
   14b71:	48 85 c0             	test   %rax,%rax
   14b74:	0f 84 af 00 00 00    	je     14c29 <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x20d>
   14b7a:	4c 89 ff             	mov    %r15,%rdi
   14b7d:	4c 89 e6             	mov    %r12,%rsi
   14b80:	ff d0                	call   *%rax
   14b82:	49 8b 0f             	mov    (%r15),%rcx
   14b85:	48 85 c9             	test   %rcx,%rcx
   14b88:	0f 84 00 01 00 00    	je     14c8e <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x272>
   14b8e:	48 8b 49 58          	mov    0x58(%rcx),%rcx
   14b92:	48 85 c9             	test   %rcx,%rcx
   14b95:	0f 84 01 01 00 00    	je     14c9c <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x280>
   14b9b:	4c 89 ff             	mov    %r15,%rdi
   14b9e:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
   14ba3:	48 89 c2             	mov    %rax,%rdx
   14ba6:	ff d1                	call   *%rcx
   14ba8:	3c 01                	cmp    $0x1,%al
   14baa:	0f 85 05 01 00 00    	jne    14cb5 <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x299>
   14bb0:	c6 44 24 58 00       	movb   $0x0,0x58(%rsp)
   14bb5:	49 8b 07             	mov    (%r15),%rax
   14bb8:	b3 07                	mov    $0x7,%bl
   14bba:	40 b5 08             	mov    $0x8,%bpl
   14bbd:	4c 8d 35 28 34 ff ff 	lea    -0xcbd8(%rip),%r14        # 7fec <Java_com_sehno_frozengift_FlagProvider_checkPremium@@Base-0xc9fc>
   14bc4:	48 85 c0             	test   %rax,%rax
   14bc7:	0f 84 11 01 00 00    	je     14cde <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x2c2>
   14bcd:	48 8b 80 48 05 00 00 	mov    0x548(%rax),%rax
   14bd4:	48 85 c0             	test   %rax,%rax
   14bd7:	0f 84 ea 00 00 00    	je     14cc7 <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x2ab>
   14bdd:	48 8d 54 24 58       	lea    0x58(%rsp),%rdx
   14be2:	4c 89 ff             	mov    %r15,%rdi
   14be5:	4c 89 e6             	mov    %r12,%rsi
   14be8:	ff d0                	call   *%rax
   14bea:	49 89 c5             	mov    %rax,%r13
   14bed:	49 8b 07             	mov    (%r15),%rax
   14bf0:	48 85 c0             	test   %rax,%rax
   14bf3:	0f 84 e5 00 00 00    	je     14cde <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x2c2>
   14bf9:	48 8b 80 20 07 00 00 	mov    0x720(%rax),%rax
   14c00:	48 85 c0             	test   %rax,%rax
   14c03:	0f 84 c9 00 00 00    	je     14cd2 <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x2b6>
   14c09:	4c 89 ff             	mov    %r15,%rdi
   14c0c:	ff d0                	call   *%rax
   14c0e:	3c 01                	cmp    $0x1,%al
   14c10:	0f 85 eb 00 00 00    	jne    14d01 <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x2e5>
   14c16:	40 b5 05             	mov    $0x5,%bpl
   14c19:	e9 c0 00 00 00       	jmp    14cde <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x2c2>
   14c1e:	48 8d 15 c7 33 ff ff 	lea    -0xcc39(%rip),%rdx        # 7fec <Java_com_sehno_frozengift_FlagProvider_checkPremium@@Base-0xc9fc>
   14c25:	6a 07                	push   $0x7
   14c27:	eb 0b                	jmp    14c34 <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x218>
   14c29:	b0 06                	mov    $0x6,%al
   14c2b:	48 8d 15 e0 33 ff ff 	lea    -0xcc20(%rip),%rdx        # 8012 <Java_com_sehno_frozengift_FlagProvider_checkPremium@@Base-0xc9d6>
   14c32:	6a 0e                	push   $0xe
   14c34:	59                   	pop    %rcx
   14c35:	48 89 4c 24 28       	mov    %rcx,0x28(%rsp)
   14c3a:	88 44 24 18          	mov    %al,0x18(%rsp)
   14c3e:	48 89 54 24 20       	mov    %rdx,0x20(%rsp)
   14c43:	48 8d 7c 24 18       	lea    0x18(%rsp),%rdi
   14c48:	e8 80 1e 00 00       	call   16acd <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x1909>
   14c4d:	31 db                	xor    %ebx,%ebx
   14c4f:	48 89 d8             	mov    %rbx,%rax
   14c52:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   14c59:	5b                   	pop    %rbx
   14c5a:	41 5c                	pop    %r12
   14c5c:	41 5d                	pop    %r13
   14c5e:	41 5e                	pop    %r14
   14c60:	41 5f                	pop    %r15
   14c62:	5d                   	pop    %rbp
   14c63:	c3                   	ret
   14c64:	48 85 db             	test   %rbx,%rbx
   14c67:	48 8d 05 12 f2 fe ff 	lea    -0x10dee(%rip),%rax        # 3e80 <Java_com_sehno_frozengift_FlagProvider_checkPremium@@Base-0x10b68>
   14c6e:	48 0f 45 c3          	cmovne %rbx,%rax
   14c72:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
   14c77:	41 0f 95 c7          	setne  %r15b
   14c7b:	42 8d 1c fd 00 00 00 	lea    0x0(,%r15,8),%ebx
   14c82:	00
   14c83:	80 cb 07             	or     $0x7,%bl
   14c86:	6a 10                	push   $0x10
   14c88:	5d                   	pop    %rbp
   14c89:	e9 68 fe ff ff       	jmp    14af6 <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0xda>
   14c8e:	b0 08                	mov    $0x8,%al
   14c90:	48 8d 0d 55 33 ff ff 	lea    -0xccab(%rip),%rcx        # 7fec <Java_com_sehno_frozengift_FlagProvider_checkPremium@@Base-0xc9fc>
   14c97:	6a 07                	push   $0x7
   14c99:	5b                   	pop    %rbx
   14c9a:	eb 09                	jmp    14ca5 <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x289>
   14c9c:	b0 06                	mov    $0x6,%al
   14c9e:	48 8d 0d 1b f3 fe ff 	lea    -0x10ce5(%rip),%rcx        # 3fc0 <Java_com_sehno_frozengift_FlagProvider_checkPremium@@Base-0x10a28>
   14ca5:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
   14caa:	48 89 5c 24 28       	mov    %rbx,0x28(%rsp)
   14caf:	88 44 24 18          	mov    %al,0x18(%rsp)
   14cb3:	eb 8e                	jmp    14c43 <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x227>
   14cb5:	c6 44 24 18 0e       	movb   $0xe,0x18(%rsp)
   14cba:	c7 44 24 1c 05 00 00 	movl   $0x5,0x1c(%rsp)
   14cc1:	00
   14cc2:	e9 7c ff ff ff       	jmp    14c43 <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x227>
   14cc7:	b3 11                	mov    $0x11,%bl
   14cc9:	4c 8d 35 50 33 ff ff 	lea    -0xccb0(%rip),%r14        # 8020 <Java_com_sehno_frozengift_FlagProvider_checkPremium@@Base-0xc9c8>
   14cd0:	eb 09                	jmp    14cdb <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x2bf>
   14cd2:	b3 0e                	mov    $0xe,%bl
   14cd4:	4c 8d 35 fd 32 ff ff 	lea    -0xcd03(%rip),%r14        # 7fd8 <Java_com_sehno_frozengift_FlagProvider_checkPremium@@Base-0xca10>
   14cdb:	40 b5 06             	mov    $0x6,%bpl
   14cde:	40 88 6c 24 18       	mov    %bpl,0x18(%rsp)
   14ce3:	4c 89 74 24 20       	mov    %r14,0x20(%rsp)
   14ce8:	88 5c 24 28          	mov    %bl,0x28(%rsp)
   14cec:	66 83 64 24 2d 00    	andw   $0x0,0x2d(%rsp)
   14cf2:	c6 44 24 2f 00       	movb   $0x0,0x2f(%rsp)
   14cf7:	83 64 24 29 00       	andl   $0x0,0x29(%rsp)
   14cfc:	e9 42 ff ff ff       	jmp    14c43 <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x227>
   14d01:	4d 85 ed             	test   %r13,%r13
   14d04:	0f 84 6f 02 00 00    	je     14f79 <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x55d>
   14d0a:	49 bc 00 00 00 00 00 	movabs $0x8000000000000000,%r12
   14d11:	00 00 80
   14d14:	48 8d 84 24 90 00 00 	lea    0x90(%rsp),%rax
   14d1b:	00
   14d1c:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   14d21:	4c 89 6c 24 28       	mov    %r13,0x28(%rsp)
   14d26:	4c 89 7c 24 50       	mov    %r15,0x50(%rsp)
   14d2b:	4c 89 7c 24 30       	mov    %r15,0x30(%rsp)
   14d30:	c6 44 24 18 0f       	movb   $0xf,0x18(%rsp)
   14d35:	4c 89 ef             	mov    %r13,%rdi
   14d38:	ff 15 12 76 04 00    	call   *0x47612(%rip)        # 5c350 <fflush@plt+0x6570>
   14d3e:	49 89 c7             	mov    %rax,%r15
   14d41:	48 8d 5c 24 70       	lea    0x70(%rsp),%rbx
   14d46:	48 89 df             	mov    %rbx,%rdi
   14d49:	4c 89 ee             	mov    %r13,%rsi
   14d4c:	48 89 c2             	mov    %rax,%rdx
   14d4f:	e8 bc 6f 00 00       	call   1bd10 <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x6b4c>
   14d54:	83 3b 01             	cmpl   $0x1,(%rbx)
   14d57:	0f 85 2d 02 00 00    	jne    14f8a <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x56e>
   14d5d:	48 8d 15 94 58 04 00 	lea    0x45894(%rip),%rdx        # 5a5f8 <fflush@plt+0x4818>
   14d64:	4c 8d 64 24 58       	lea    0x58(%rsp),%r12
   14d69:	4c 89 e7             	mov    %r12,%rdi
   14d6c:	4c 89 fe             	mov    %r15,%rsi
   14d6f:	e8 fc 4d 00 00       	call   19b70 <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x49ac>
   14d74:	4c 89 fb             	mov    %r15,%rbx
   14d77:	4c 01 eb             	add    %r13,%rbx
   14d7a:	4d 89 ee             	mov    %r13,%r14
   14d7d:	49 39 de             	cmp    %rbx,%r14
   14d80:	0f 84 9a 03 00 00    	je     15120 <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x704>
   14d86:	41 0f b6 0e          	movzbl (%r14),%ecx
   14d8a:	48 85 c9             	test   %rcx,%rcx
   14d8d:	0f 84 18 02 00 00    	je     14fab <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x58f>
   14d93:	49 8d 6e 01          	lea    0x1(%r14),%rbp
   14d97:	84 c9                	test   %cl,%cl
   14d99:	78 17                	js     14db2 <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x396>
   14d9b:	0f b6 f1             	movzbl %cl,%esi
   14d9e:	4c 89 e7             	mov    %r12,%rdi
   14da1:	48 8d 15 60 57 04 00 	lea    0x45760(%rip),%rdx        # 5a508 <fflush@plt+0x4728>
   14da8:	e8 11 4e 00 00       	call   19bbe <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x49fa>
   14dad:	49 89 ee             	mov    %rbp,%r14
   14db0:	eb cb                	jmp    14d7d <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x361>
   14db2:	80 f9 c0             	cmp    $0xc0,%cl
   14db5:	75 2b                	jne    14de2 <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x3c6>
   14db7:	48 39 dd             	cmp    %rbx,%rbp
   14dba:	0f 84 eb 01 00 00    	je     14fab <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x58f>
   14dc0:	31 c0                	xor    %eax,%eax
   14dc2:	3a 45 00             	cmp    0x0(%rbp),%al
   14dc5:	0f 81 e0 01 00 00    	jno    14fab <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x58f>
   14dcb:	49 83 c6 02          	add    $0x2,%r14
   14dcf:	4c 89 e7             	mov    %r12,%rdi
   14dd2:	31 f6                	xor    %esi,%esi
   14dd4:	48 8d 15 15 57 04 00 	lea    0x45715(%rip),%rdx        # 5a4f0 <fflush@plt+0x4710>
   14ddb:	e8 de 4d 00 00       	call   19bbe <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x49fa>
   14de0:	eb 9b                	jmp    14d7d <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x361>
   14de2:	48 39 dd             	cmp    %rbx,%rbp
   14de5:	0f 84 c0 01 00 00    	je     14fab <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x58f>
   14deb:	41 8a 46 01          	mov    0x1(%r14),%al
   14def:	3c bf                	cmp    $0xbf,%al
   14df1:	0f 8f b4 01 00 00    	jg     14fab <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x58f>
   14df7:	48 8d 15 8f 27 ff ff 	lea    -0xd871(%rip),%rdx        # 758d <Java_com_sehno_frozengift_FlagProvider_checkPremium@@Base-0xd45b>
   14dfe:	0f b6 14 11          	movzbl (%rcx,%rdx,1),%edx
   14e02:	49 8d 6e 02          	lea    0x2(%r14),%rbp
   14e06:	83 fa 03             	cmp    $0x3,%edx
   14e09:	74 23                	je     14e2e <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x412>
   14e0b:	83 fa 02             	cmp    $0x2,%edx
   14e0e:	0f 85 97 01 00 00    	jne    14fab <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x58f>
   14e14:	88 4c 24 0c          	mov    %cl,0xc(%rsp)
   14e18:	88 44 24 0d          	mov    %al,0xd(%rsp)
   14e1c:	4c 89 e7             	mov    %r12,%rdi
   14e1f:	48 8d 74 24 0c       	lea    0xc(%rsp),%rsi
   14e24:	48 8d 54 24 0e       	lea    0xe(%rsp),%rdx
   14e29:	e9 3e 01 00 00       	jmp    14f6c <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x550>
   14e2e:	48 39 dd             	cmp    %rbx,%rbp
   14e31:	0f 84 74 01 00 00    	je     14fab <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x58f>
   14e37:	41 8a 56 02          	mov    0x2(%r14),%dl
   14e3b:	80 fa bf             	cmp    $0xbf,%dl
   14e3e:	0f 8f 67 01 00 00    	jg     14fab <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x58f>
   14e44:	49 8d 6e 03          	lea    0x3(%r14),%rbp
   14e48:	81 f9 e0 00 00 00    	cmp    $0xe0,%ecx
   14e4e:	0f 84 db 00 00 00    	je     14f2f <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x513>
   14e54:	81 f9 ed 00 00 00    	cmp    $0xed,%ecx
   14e5a:	0f 85 d5 00 00 00    	jne    14f35 <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x519>
   14e60:	3c 9f                	cmp    $0x9f,%al
   14e62:	0f 86 eb 00 00 00    	jbe    14f53 <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x537>
   14e68:	3c af                	cmp    $0xaf,%al
   14e6a:	0f 87 3b 01 00 00    	ja     14fab <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x58f>
   14e70:	48 39 dd             	cmp    %rbx,%rbp
   14e73:	0f 84 32 01 00 00    	je     14fab <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x58f>
   14e79:	41 80 7e 03 ed       	cmpb   $0xed,0x3(%r14)
   14e7e:	0f 85 27 01 00 00    	jne    14fab <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x58f>
   14e84:	49 8d 4e 04          	lea    0x4(%r14),%rcx
   14e88:	48 39 d9             	cmp    %rbx,%rcx
   14e8b:	0f 84 1a 01 00 00    	je     14fab <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x58f>
   14e91:	41 0f b6 4e 04       	movzbl 0x4(%r14),%ecx
   14e96:	8d 71 40             	lea    0x40(%rcx),%esi
   14e99:	40 80 fe f0          	cmp    $0xf0,%sil
   14e9d:	0f 82 08 01 00 00    	jb     14fab <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x58f>
   14ea3:	49 8d 76 05          	lea    0x5(%r14),%rsi
   14ea7:	48 39 de             	cmp    %rbx,%rsi
   14eaa:	0f 84 fb 00 00 00    	je     14fab <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x58f>
   14eb0:	0f b6 36             	movzbl (%rsi),%esi
   14eb3:	40 80 fe bf          	cmp    $0xbf,%sil
   14eb7:	0f 8f ee 00 00 00    	jg     14fab <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x58f>
   14ebd:	0f b6 c0             	movzbl %al,%eax
   14ec0:	0f b6 d2             	movzbl %dl,%edx
   14ec3:	49 83 c6 06          	add    $0x6,%r14
   14ec7:	83 e0 2f             	and    $0x2f,%eax
   14eca:	83 e2 3f             	and    $0x3f,%edx
   14ecd:	83 e1 3f             	and    $0x3f,%ecx
   14ed0:	c1 e1 06             	shl    $0x6,%ecx
   14ed3:	83 e6 3f             	and    $0x3f,%esi
   14ed6:	c1 e0 10             	shl    $0x10,%eax
   14ed9:	c1 e2 0a             	shl    $0xa,%edx
   14edc:	09 c2                	or     %eax,%edx
   14ede:	8d 04 0a             	lea    (%rdx,%rcx,1),%eax
   14ee1:	01 d1                	add    %edx,%ecx
   14ee3:	81 c1 00 f4 df ff    	add    $0xffdff400,%ecx
   14ee9:	01 f0                	add    %esi,%eax
   14eeb:	05 00 f4 e0 ff       	add    $0xffe0f400,%eax
   14ef0:	89 c2                	mov    %eax,%edx
   14ef2:	c1 ea 12             	shr    $0x12,%edx
   14ef5:	c1 e6 18             	shl    $0x18,%esi
   14ef8:	c1 e1 0a             	shl    $0xa,%ecx
   14efb:	81                   	.byte 0x81
   14efc:	e1 00                	loope  14efe <Java_com_sehno_frozengift_FlagProvider_getFlag@@Base+0x4e2>
   14efe:	00 3f                	add    %bh,(%rdi)
