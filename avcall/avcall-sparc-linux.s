	.file	"avcall-sparc.c"
	.section	".text"
	.align 4
	.global avcall_call
	.type	avcall_call,#function
	.proc	04
avcall_call:
	!#PROLOGUE# 0
	save	%sp, -1128, %sp
	ld	[%i0+20], %g3
	add	%sp, 68, %l1
	ld	[%i0+24], %o7
	ld	[%i0+12], %l0
	sub	%g3, %o7, %g3
	cmp	%l0, 16
	be	.LL51
	sra	%g3, 2, %g4
.LL2:
	mov	6, %g1
	cmp	%g1, %g4
	bge	.LL46
	ld	[%i0+24], %l0
.LL7:
	sll	%g1, 2, %g3
	ld	[%l0+%g3], %o7
	add	%g1, 1, %g1
	cmp	%g1, %g4
	bl	.LL7
	st	%o7, [%l1+%g3]
.LL46:
	ld	[%l0+20], %o5
	ld	[%i0+4], %g3
	ld	[%l0], %o0
	ld	[%l0+4], %o1
	ld	[%l0+8], %o2
	ld	[%l0+12], %o3
	call	%g3, 0
	ld	[%l0+16], %o4
	nop
	ld	[%i0+12], %o7
	cmp	%o7, 1
	be	.LL9
	mov	%o0, %l0
	cmp	%o7, 2
	be	.LL50
	cmp	%o7, 3
	be	.LL50
	cmp	%o7, 4
	be	.LL50
	cmp	%o7, 5
	be	.LL49
	cmp	%o7, 6
	be	.LL49
	cmp	%o7, 7
	be	.LL48
	cmp	%o7, 8
	be	.LL48
	cmp	%o7, 9
	be	.LL48
	cmp	%o7, 10
	be	.LL48
	add	%o7, -11, %g3
	cmp	%g3, 1
	bgu	.LL28
	cmp	%o7, 13
	ld	[%i0+8], %g3
	st	%o0, [%g3]
	b	.LL9
	st	%o1, [%g3+4]
.LL28:
	be	.LL52
	cmp	%o7, 14
	be	.LL53
	cmp	%o7, 15
	be	.LL48
	cmp	%o7, 16
	bne	.LL9
	nop
	ld	[%i0], %g3
	andcc	%g3, 2, %g0
	be	.LL9
	nop
	ld	[%i0+16], %g3
	cmp	%g3, 1
	be	.LL50
	cmp	%g3, 2
	be	.LL49
	cmp	%g3, 4
	bne	.LL9
	nop
.LL48:
	ld	[%i0+8], %g3
	b	.LL9
	st	%l0, [%g3]
.LL49:
	ld	[%i0+8], %g3
	b	.LL9
	sth	%l0, [%g3]
.LL50:
	ld	[%i0+8], %g3
	b	.LL9
	stb	%l0, [%g3]
.LL53:
	ld	[%i0+8], %g3
	b	.LL9
	std	%f0, [%g3]
.LL52:
	ld	[%i0], %g3
	andcc	%g3, 32, %g0
	bne,a	.LL31
	fdtos	%f0, %f0
.LL31:
	ld	[%i0+8], %g3
	b	.LL9
	st	%f0, [%g3]
.LL51:
	ld	[%i0+8], %g3
	b	.LL2
	st	%g3, [%sp+64]
.LL9:
	ret
	restore %g0, 0, %o0
.LLfe1:
	.size	avcall_call,.LLfe1-avcall_call
	.ident	"GCC: (GNU) 3.1"
