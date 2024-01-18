	.file	"prog.c"
	.text
	.p2align 4
	.globl	bubble_sort
	.type	bubble_sort, @function
bubble_sort:
	endbr64
	addl	$26, insn_count(%rip)
	testl	%esi, %esi
	jle	.L1
	leal	-2(%rsi), %eax
	xorl	%r10d, %r10d
	leaq	4(%rdi,%rax,4), %r8
	.p2align 4,,10
	.p2align 3
.L3:
	cmpl	$1, %esi
	je	.L1
	movq	%rdi, %rax
	xorl	%r9d, %r9d
	.p2align 4,,10
	.p2align 3
.L5:
	movl	(%rax), %ecx
	movl	4(%rax), %edx
	cmpl	%edx, %ecx
	jle	.L4
	movl	%ecx, 4(%rax)
	movl	$1, %r9d
	movl	%edx, (%rax)
.L4:
	addq	$4, %rax
	cmpq	%r8, %rax
	jne	.L5
	testl	%r9d, %r9d
	je	.L1
	addl	$1, %r10d
	cmpl	%r10d, %esi
	jne	.L3
.L1:
	ret
	.size	bubble_sort, .-bubble_sort
	.p2align 4
	.globl	check_sorted
	.type	check_sorted, @function
check_sorted:
	endbr64
	cmpl	$1, %esi
	jle	.L16
	leal	-2(%rsi), %ecx
	movl	(%rdi), %edx
	leaq	4(%rdi), %rax
	leaq	8(%rdi,%rcx,4), %rsi
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L19:
	addq	$4, %rax
	cmpq	%rsi, %rax
	je	.L16
.L15:
	movl	%edx, %ecx
	movl	(%rax), %edx
	cmpl	%ecx, %edx
	jge	.L19
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L16:
	movl	$1, %eax
	ret
	.size	check_sorted, .-check_sorted
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d"
.LC1:
	.string	"numbers are sorted"
.LC2:
	.string	"numbers are not sorted"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
	endbr64
	pushq	%rbp
	pushq	%rbx
	leaq	numbers(%rip), %rbx
	leaq	40000(%rbx), %rbp
	subq	$8, %rsp
	.p2align 4,,10
	.p2align 3
.L21:
	call	rand@PLT
	addq	$4, %rbx
	movl	%eax, -4(%rbx)
	cmpq	%rbp, %rbx
	jne	.L21
	movl	$10000, %esi
	leaq	numbers(%rip), %rdi
	call	bubble_sort
	movl	numbers(%rip), %edx
	leaq	4+numbers(%rip), %rax
	.p2align 4,,10
	.p2align 3
.L23:
	movl	%edx, %ecx
	movl	(%rax), %edx
	cmpl	%ecx, %edx
	jl	.L22
	addq	$4, %rax
	cmpq	%rbp, %rax
	jne	.L23
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
.L25:
	movl	insn_count(%rip), %edx
	movl	$1, %edi
	leaq	.LC0(%rip), %rsi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	xorl	%edi, %edi
	call	exit@PLT
.L22:
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	jmp	.L25
	.size	main, .-main
	.comm	numbers,40000,32
	.globl	insn_count
	.bss
	.align 4
	.type	insn_count, @object
	.size	insn_count, 4
insn_count:
	.zero	4
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04) 9.4.0"
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
