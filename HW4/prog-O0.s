	.file	"prog.c"
	.text
	.globl	insn_count
	.bss
	.align 4
	.type	insn_count, @object
	.size	insn_count, 4
insn_count:
	.zero	4
	.text
	.globl	bubble_sort
	.type	bubble_sort, @function
bubble_sort:
	endbr64

	#begining of a block
    movl	insn_count(%rip), %eax #moves insn_count to eax
	addl	$1, %eax #adds one to eax
	movl	%eax, insn_count(%rip) #moves eax to insn_count
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -16(%rbp)

	#end of block 1(5)

	jmp	.L2
.L8:

	#begining of a block
	movl	insn_count(%rip), %eax #moves insn_count to eax
	addl	$1, %eax #adds one to eax
	movl	%eax, insn_count(%rip) #moves eax to insn_count
	movl	$0, -8(%rbp)
	movl	$1, -12(%rbp)
s
	#end of a block 2(2)

	jmp	.L3
.L5:

	#begining of a block
	movl	insn_count(%rip), %eax #moves insn_count to eax
	addl	$1, %eax #adds one to eax
	movl	%eax, insn_count(%rip) #moves eax to insn_count
	movl	-12(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx

	#end of block 3(14)

	jle	.L4

	#beginning of block 
	movl	insn_count(%rip), %eax #moves insn_count to eax
	addl	$1, %eax #adds one to eax
	movl	%eax, insn_count(%rip) #moves eax to insn_count
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-12(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	movl	$1, -8(%rbp)
	
	#end of block 4(23)

.L4:

	#beginning of block
	
    movl	insn_count(%rip), %eax #moves insn_count to eax
	addl	$1, %eax #adds one to eax
	movl	%eax, insn_count(%rip) #moves eax to insn_count
	addl	$1, -12(%rbp)

	#end of block 5(1)

.L3:

	#beginning of block
	movl	insn_count(%rip), %eax #moves insn_count to eax
	addl	$1, %eax #adds one to eax
	movl	%eax, insn_count(%rip) #moves eax to insn_count
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax

	#end of block 6(2)

	jl	.L5
	
	#beginning of block
	movl	insn_count(%rip), %eax #moves insn_count to eax
	addl	$1, %eax #adds one to eax
	movl	%eax, insn_count(%rip) #moves eax to insn_count
	cmpl	$0, -8(%rbp)
	
	#end of block 7(1)

	je	.L9
	
	#beginning of block
	movl	insn_count(%rip), %eax #moves insn_count to eax
	addl	$1, %eax #adds one to eax
	movl	%eax, insn_count(%rip) #moves eax to insn_count
	addl	$1, -16(%rbp)

	#end of block 8(1)
.L2:

	#beginning of block 
	movl	insn_count(%rip), %eax #moves insn_count to eax
	addl	$1, %eax #adds one to eax
	movl	%eax, insn_count(%rip) #moves eax to insn_count
	movl	-16(%rbp), %eax
	cmpl	-28(%rbp), %eax

	#end of block 9(2)

	jl	.L8
	jmp	.L10
.L9:

	#beginning of block
	movl	insn_count(%rip), %eax #moves insn_count to eax
	addl	$1, %eax #adds one to eax
	movl	%eax, insn_count(%rip) #moves eax to insn_count
	nop

	#end of block 10(1)

.L10:

	#beginning of block
	movl	insn_count(%rip), %eax #moves insn_count to eax
	addl	$1, %eax #adds one to eax
	movl	%eax, insn_count(%rip) #moves eax to insn_count
	nop
	popq	%rbp
	ret


	.size	bubble_sort, .-bubble_sort
	.globl	check_sorted
	.type	check_sorted, @function

	#end of block 11(3)

check_sorted:
	endbr64

	#beginnning of block
	movl	insn_count(%rip), %eax #moves insn_count to eax
	addl	$1, %eax #adds one to eax
	movl	%eax, insn_count(%rip) #moves eax to insn_count
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$1, -4(%rbp)

	#end of block 12(5)

	jmp	.L12
.L15:

	#beginning of block
	movl	insn_count(%rip), %eax #moves insn_count to eax
	addl	$1, %eax #adds one to eax
	movl	%eax, insn_count(%rip) #moves eax to insn_count
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx

	#end of block 13(14)

	jle	.L13
	
	#beginning of block 
	movl	insn_count(%rip), %eax #moves insn_count to eax
	addl	$1, %eax #adds one to eax
	movl	%eax, insn_count(%rip) #moves eax to insn_count
	movl	$0, %eax
	
	#end of block 14(1)

	jmp	.L14
.L13:

	#beginning of block 
	movl	insn_count(%rip), %eax #moves insn_count to eax
	addl	$1, %eax #adds one to eax
	movl	%eax, insn_count(%rip) #moves eax to insn_count
	addl	$1, -4(%rbp)

	#end of block 15(1)

.L12:

	#beginning of block
	movl	insn_count(%rip), %eax #moves insn_count to eax
	addl	$1, %eax #adds one to eax
	movl	%eax, insn_count(%rip) #moves eax to insn_count
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax

	#end  of block 16(2)

	jl	.L15

	#beginning of block
	movl	insn_count(%rip), %eax #moves insn_count to eax
	addl	$1, %eax #adds one to eax
	movl	%eax, insn_count(%rip) #moves eax to insn_count
	movl	$1, %eax

	#end of block 17(1)

.L14:

	#beginning of block
	movl	insn_count(%rip), %eax #moves insn_count to eax
	addl	$1, %eax #adds one to eax
	movl	%eax, insn_count(%rip) #moves eax to insn_count
	popq	%rbp
	ret

	

	.size	check_sorted, .-check_sorted
	.comm	numbers,40000,32
	.section	.rodata

	#end of block 18(2)
.LC0:
	.string	"numbers are sorted"



.LC1:
	.string	"numbers are not sorted"
	.text
	.globl	main
	.type	main, @function

    
.LC2:
	.string	"%d"
	.text
	.globl	main
	.type	main, @function

main:
	endbr64

	#beginning of block 
	movl	insn_count(%rip), %eax #moves insn_count to eax
	addl	$1, %eax #adds one to eax
	movl	%eax, insn_count(%rip) #moves eax to insn_count
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)

	#end of block 21(4)

	jmp	.L17
.L18:

	#beginning of block 
	movl	insn_count(%rip), %eax #moves insn_count to eax
	addl	$1, %eax #adds one to eax
	movl	%eax, insn_count(%rip) #moves eax to insn_count
	call	rand@PLT
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	numbers(%rip), %rdx
	movl	%eax, (%rcx,%rdx)
	addl	$1, -4(%rbp)

	#end of block 22(7)
.L17:

	#beginning of block 
	movl	insn_count(%rip), %eax #moves insn_count to eax
	addl	$1, %eax #adds one to eax
	movl	%eax, insn_count(%rip) #moves eax to insn_count
	cmpl	$9999, -4(%rbp)

	#end of block 23(1)

	jle	.L18

	#beginning of block 
	movl	insn_count(%rip), %eax #moves insn_count to eax
	addl	$1, %eax #adds one to eax
	movl	%eax, insn_count(%rip) #moves eax to insn_count
	movl	$10000, %esi
	leaq	numbers(%rip), %rdi
	call	bubble_sort
	movl	$10000, %esi
	leaq	numbers(%rip), %rdi
	call	check_sorted
	testl	%eax, %eax

	#end of block 24(7)

	je	.L19
	
	#beginning of block 
	movl	insn_count(%rip), %eax #moves insn_count to eax
	addl	$1, %eax #adds one to eax
	movl	%eax, insn_count(%rip) #moves eax to insn_count
	leaq	.LC0(%rip), %rdi
	call	puts@PLT

	#end of block 25(2)

	jmp	.L20
.L19:

	#beginning of block 
	movl	insn_count(%rip), %eax #moves insn_count to eax
	addl	$1, %eax #adds one to eax
	movl	%eax, insn_count(%rip) #moves eax to insn_count
	leaq	.LC1(%rip), %rdi
	call	puts@PLT

	#end of block 26(2)

.L20:

	#beginning of block
	movl	insn_count(%rip), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %edi
	call	exit@PLT
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5

	#end of block 27(7)

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
