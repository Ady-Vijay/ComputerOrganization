	.file	"hw5.cpp"
	.text
	.p2align 4
	.globl	_Z3addPjS_S_
	.type	_Z3addPjS_S_, @function
_Z3addPjS_S_:
.LFB0:
	.cfi_startproc
	endbr64
	movl	(%rsi), %r9d
	movl	(%rdi), %ecx
	leal	(%rcx,%r9), %r10d
	cmpl	%r9d, %ecx
	movl	%r10d, (%rdx)
	cmovb	%r9d, %ecx
	movl	4(%rdi), %eax
	movl	4(%rsi), %r8d
	cmpl	%ecx, %r10d
	movl	%eax, %r10d
	adcl	%r8d, %r10d
	cmpl	%r8d, %eax
	cmovb	%r8d, %eax
	movl	%r10d, 4(%rdx)
	movl	8(%rsi), %r9d
	movl	8(%rdi), %ecx
	cmpl	%r10d, %eax
	seta	%al
	leal	(%rcx,%r9), %r8d
	movzbl	%al, %eax
	addl	%eax, %r8d
	cmpl	%r9d, %ecx
	cmovb	%r9d, %ecx
	movl	%r8d, 8(%rdx)
	movl	12(%rsi), %r10d
	movl	12(%rdi), %eax
	cmpl	%r8d, %ecx
	seta	%cl
	leal	(%rax,%r10), %r8d
	movzbl	%cl, %ecx
	addl	%ecx, %r8d
	cmpl	%r10d, %eax
	cmovb	%r10d, %eax
	movl	%r8d, 12(%rdx)
	movl	16(%rsi), %r9d
	movl	16(%rdi), %ecx
	cmpl	%r8d, %eax
	seta	%al
	leal	(%rcx,%r9), %r8d
	movzbl	%al, %eax
	addl	%eax, %r8d
	cmpl	%r9d, %ecx
	cmovb	%r9d, %ecx
	movl	%r8d, 16(%rdx)
	movl	20(%rsi), %r10d
	movl	20(%rdi), %eax
	cmpl	%r8d, %ecx
	seta	%cl
	leal	(%rax,%r10), %r8d
	movzbl	%cl, %ecx
	addl	%ecx, %r8d
	cmpl	%r10d, %eax
	cmovb	%r10d, %eax
	movl	%r8d, 20(%rdx)
	movl	24(%rsi), %r9d
	movl	24(%rdi), %ecx
	cmpl	%r8d, %eax
	seta	%al
	leal	(%rcx,%r9), %r8d
	movzbl	%al, %eax
	addl	%eax, %r8d
	cmpl	%r9d, %ecx
	cmovb	%r9d, %ecx
	movl	%r8d, 24(%rdx)
	movl	28(%rdi), %eax
	movl	28(%rsi), %r10d
	cmpl	%r8d, %ecx
	seta	%cl
	leal	(%rax,%r10), %r8d
	movzbl	%cl, %ecx
	addl	%ecx, %r8d
	cmpl	%r10d, %eax
	cmovb	%r10d, %eax
	movl	%r8d, 28(%rdx)
	movl	32(%rdi), %ecx
	movl	32(%rsi), %r9d
	cmpl	%r8d, %eax
	seta	%al
	leal	(%rcx,%r9), %r8d
	movzbl	%al, %eax
	addl	%eax, %r8d
	cmpl	%r9d, %ecx
	cmovb	%r9d, %ecx
	movl	%r8d, 32(%rdx)
	movl	36(%rdi), %eax
	xorl	%edi, %edi
	movl	36(%rsi), %esi
	cmpl	%r8d, %ecx
	seta	%dil
	leal	(%rax,%rsi), %ecx
	addl	%edi, %ecx
	cmpl	%esi, %eax
	cmovb	%esi, %eax
	movl	%ecx, 36(%rdx)
	cmpl	%ecx, %eax
	seta	%al
	movzbl	%al, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	_Z3addPjS_S_, .-_Z3addPjS_S_
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
