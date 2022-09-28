	.file	"vacall-i386.c"
	.text
	.align 2
	.p2align 2,,3
.globl vacall_receiver
	.type	vacall_receiver,@function
vacall_receiver:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$48, %esp
	call	.L44
.L44:
	popl	%ebx
	addl	$_GLOBAL_OFFSET_TABLE_+[.-.L44], %ebx
	leal	8(%ebp), %edx
	movl	%edx, -40(%ebp)
	subl	$12, %esp
	leal	-56(%ebp), %edx
	movl	$0, -56(%ebp)
	movl	$0, -36(%ebp)
	movl	$0, -32(%ebp)
	movl	%ebx, -24(%ebp)
	pushl	%edx
	movl	vacall_function@GOT(%ebx), %edx
	call	*(%edx)
	movl	-32(%ebp), %ecx
	addl	$16, %esp
	testl	%ecx, %ecx
	je	.L43
	cmpl	$1, %ecx
	je	.L45
	cmpl	$2, %ecx
	je	.L45
	cmpl	$3, %ecx
	je	.L50
	cmpl	$4, %ecx
	je	.L51
	cmpl	$5, %ecx
	je	.L52
	cmpl	$6, %ecx
	je	.L49
	cmpl	$7, %ecx
	je	.L49
	cmpl	$8, %ecx
	je	.L49
	cmpl	$9, %ecx
	je	.L49
	leal	-10(%ecx), %edx
	cmpl	$1, %edx
	ja	.L22
	movl	-48(%ebp), %eax
#APP
	movl -44(%ebp),%edx
.L33:
	.p2align 2,,3
#NO_APP
.L43:
	movl	-56(%ebp), %ecx
.L3:
	andl	$512, %ecx
	je	.L1
#APP
	movl 0(%ebp),%ecx
#NO_APP
	movl	-40(%ebp), %esp
#APP
	jmp *%ecx
#NO_APP
.L1:
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%esi
	leave
	ret
.L22:
	cmpl	$12, %ecx
	je	.L53
	cmpl	$13, %ecx
	je	.L54
	cmpl	$14, %ecx
	je	.L49
	cmpl	$15, %ecx
	jne	.L43
	movl	-56(%ebp), %ecx
	testl	$1024, %ecx
	movl	%ecx, %esi
	je	.L31
	movl	-28(%ebp), %edx
	cmpl	$1, %edx
	je	.L55
	cmpl	$2, %edx
	je	.L56
	cmpl	$4, %edx
	je	.L57
	cmpl	$8, %edx
	je	.L58
.L31:
	andl	$16, %esi
	movl	-36(%ebp), %eax
	jne	.L3
#APP
	leal -4(%ebp), %esp
	popl %esi
	leave
	ret $4
#NO_APP
	jmp	.L3
.L58:
	movl	-36(%ebp), %edx
	movl	(%edx), %eax
#APP
	movl 4(%edx),%edx
#NO_APP
	jmp	.L3
.L57:
	movl	-36(%ebp), %edx
	movl	(%edx), %eax
	jmp	.L3
.L56:
	movl	-36(%ebp), %edx
	movzwl	(%edx), %eax
	jmp	.L3
.L55:
	movl	-36(%ebp), %edx
	movzbl	(%edx), %eax
	jmp	.L3
	.p2align 2,,3
.L49:
	movl	-48(%ebp), %eax
	jmp	.L43
.L54:
#APP
	fldl -48(%ebp)
#NO_APP
	jmp	.L43
.L53:
#APP
	flds -48(%ebp)
#NO_APP
	jmp	.L43
	.p2align 2,,3
.L52:
	movzwl	-48(%ebp), %eax
	jmp	.L43
.L51:
	movswl	-48(%ebp),%eax
	jmp	.L43
.L50:
	movzbl	-48(%ebp), %eax
	jmp	.L43
	.p2align 2,,3
.L45:
	movsbl	-48(%ebp),%eax
	jmp	.L43
.Lfe1:
	.size	vacall_receiver,.Lfe1-vacall_receiver
	.ident	"GCC: (GNU) 3.1"
