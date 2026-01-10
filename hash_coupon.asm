
extracted_libs/libfrozengift.so:     file format elf64-x86-64


Disassembly of section .text:

000000000001943c <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x4278>:
   1943c:	66 0f 3a df 06 01    	aeskeygenassist $0x1,(%rsi),%xmm0
   19442:	66 0f 7f 07          	movdqa %xmm0,(%rdi)
   19446:	c3                   	ret
   19447:	66 0f 3a df 06 00    	aeskeygenassist $0x0,(%rsi),%xmm0
   1944d:	66 0f 7f 07          	movdqa %xmm0,(%rdi)
   19451:	c3                   	ret
   19452:	66 0f 3a df 06 02    	aeskeygenassist $0x2,(%rsi),%xmm0
   19458:	66 0f 7f 07          	movdqa %xmm0,(%rdi)
   1945c:	c3                   	ret
   1945d:	66 0f 3a df 06 04    	aeskeygenassist $0x4,(%rsi),%xmm0
   19463:	66 0f 7f 07          	movdqa %xmm0,(%rdi)
   19467:	c3                   	ret
   19468:	66 0f 3a df 06 08    	aeskeygenassist $0x8,(%rsi),%xmm0
   1946e:	66 0f 7f 07          	movdqa %xmm0,(%rdi)
   19472:	c3                   	ret
   19473:	66 0f 3a df 06 10    	aeskeygenassist $0x10,(%rsi),%xmm0
   19479:	66 0f 7f 07          	movdqa %xmm0,(%rdi)
   1947d:	c3                   	ret
   1947e:	66 0f 3a df 06 20    	aeskeygenassist $0x20,(%rsi),%xmm0
   19484:	66 0f 7f 07          	movdqa %xmm0,(%rdi)
   19488:	c3                   	ret
   19489:	66 0f 3a df 06 40    	aeskeygenassist $0x40,(%rsi),%xmm0
   1948f:	66 0f 7f 07          	movdqa %xmm0,(%rdi)
   19493:	c3                   	ret
   19494:	55                   	push   %rbp
   19495:	48 89 e5             	mov    %rsp,%rbp
   19498:	48 85 ff             	test   %rdi,%rdi
   1949b:	75 08                	jne    194a5 <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x42e1>
   1949d:	48 89 d7             	mov    %rdx,%rdi
   194a0:	e8 1b 00 00 00       	call   194c0 <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x42fc>
   194a5:	e8 00 00 00 00       	call   194aa <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x42e6>
   194aa:	55                   	push   %rbp
   194ab:	48 89 e5             	mov    %rsp,%rbp
   194ae:	48 89 f8             	mov    %rdi,%rax
   194b1:	48 89 f7             	mov    %rsi,%rdi
   194b4:	48 89 c6             	mov    %rax,%rsi
   194b7:	e8 74 e7 ff ff       	call   17c30 <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x2a6c>
   194bc:	cc                   	int3
   194bd:	cc                   	int3
   194be:	cc                   	int3
   194bf:	cc                   	int3
   194c0:	55                   	push   %rbp
   194c1:	48 89 e5             	mov    %rsp,%rbp
   194c4:	48 83 ec 30          	sub    $0x30,%rsp
   194c8:	48 89 fe             	mov    %rdi,%rsi
   194cb:	48 8d 05 de 0f 04 00 	lea    0x40fde(%rip),%rax        # 5a4b0 <fflush@plt+0x46d0>
   194d2:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
   194d6:	48 c7 45 d8 01 00 00 	movq   $0x1,-0x28(%rbp)
   194dd:	00
   194de:	48 c7 45 e0 08 00 00 	movq   $0x8,-0x20(%rbp)
   194e5:	00
   194e6:	0f 57 c0             	xorps  %xmm0,%xmm0
   194e9:	0f 11 45 e8          	movups %xmm0,-0x18(%rbp)
   194ed:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   194f1:	e8 fa 12 00 00       	call   1a7f0 <Java_com_sehno_frozengift_FlagProvider_validateCoupon@@Base+0x562c>
   194f6:	cc                   	int3
   194f7:	cc                   	int3
   194f8:	cc                   	int3
   194f9:	cc                   	int3
   194fa:	cc                   	int3
   194fb:	cc                   	int3
   194fc:	cc                   	int3
   194fd:	cc                   	int3
   194fe:	cc                   	int3
   194ff:	cc                   	int3
