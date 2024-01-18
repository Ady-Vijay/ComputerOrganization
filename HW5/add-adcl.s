//Adhithya Vijayakumar
//I removed the manual carry over that was occuring in the unrolled version of the code and used adc to carry over from previous additions
	
	
	
	.file	"add-unrolled.c"
	.text
	.p2align 4,,15
	.globl	add
	.type	add, @function
add:
.LFB0:
	.cfi_startproc

	movl	(%rsi), %r8d #move A[0] to r8d
	addl	(%rdi), %r8d # add B[0] to A[0]

    movl	%r8d, (%rdx) #move into C array
	movl	4(%rdi), %r8d  #move A[1] into  r8d
    adcl    4(%rsi), %r8d #add B[1] to A[1]

	movl	%r8d, 4(%rdx) #move into C array
	movl	8(%rdi), %r8d  #move A[2] into  r8d
    adcl    8(%rsi), %r8d #add B[2] to A[2]

    movl	%r8d, 8(%rdx) #move into C array
	movl	12(%rdi), %r8d  #move A[3] into  r8d
    adcl    12(%rsi), %r8d #add B[3] to A[3]

    movl	%r8d, 12(%rdx) #move into C array
	movl	16(%rdi), %r8d #move A[4] into  r8d
    adcl    16(%rsi), %r8d #add B[4] to A[4]

    movl	%r8d, 16(%rdx) #move into C array
	movl	20(%rdi), %r8d  #move A[5] into  r8d
    adcl    20(%rsi), %r8d #add B[5] to A[5]

    movl	%r8d, 20(%rdx) #move into C array
	movl	24(%rdi), %r8d  #move A[6] into  r8d
    adcl    24(%rsi), %r8d #add B[6] to A[6]

    movl	%r8d, 24(%rdx) #move into C array
	movl	28(%rdi), %r8d  #move A[7] into  r8d
    adcl    28(%rsi), %r8d #add B[7] to A[7]

    movl	%r8d, 28(%rdx) #move into C array
	movl	32(%rdi), %r8d  #move A[8] into  r8d
    adcl    32(%rsi), %r8d #add B[8] to A[8]

    movl	%r8d, 32(%rdx) #move into C array
	movl	36(%rdi), %r8d #move A[9] into  r8d
    adcl    36(%rsi), %r8d #add B[9] to A[9]

	movl	%r8d, 36(%rdx) #move into C array
	ret
	.cfi_endproc
.LFE0:
	.size	add, .-add
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-11)"
	.section	.note.GNU-stack,"",@progbits
