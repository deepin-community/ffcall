#include "asm-sparc.h"
	.section	".text"
	.align 4
	.global C(avcall_call)
	DECLARE_FUNCTION(avcall_call)
	.proc	04
FUNBEGIN(avcall_call)
	!$PROLOGUE$ 0
	save	%sp, -1128, %sp
	ld	[%i0+20], %g3
	add	%sp, 68, %l1
	ld	[%i0+24], %o7
	ld	[%i0+12], %l0
	sub	%g3, %o7, %g3
	cmp	%l0, 16
	be	L(L51)
	sra	%g3, 2, %g4
L(L2):
	mov	6, %g1
	cmp	%g1, %g4
	bge	L(L46)
	ld	[%i0+24], %l0
L(L7):
	sll	%g1, 2, %g3
	ld	[%l0+%g3], %o7
	add	%g1, 1, %g1
	cmp	%g1, %g4
	bl	L(L7)
	st	%o7, [%l1+%g3]
L(L46):
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
	be	L(L9)
	mov	%o0, %l0
	cmp	%o7, 2
	be	L(L50)
	cmp	%o7, 3
	be	L(L50)
	cmp	%o7, 4
	be	L(L50)
	cmp	%o7, 5
	be	L(L49)
	cmp	%o7, 6
	be	L(L49)
	cmp	%o7, 7
	be	L(L48)
	cmp	%o7, 8
	be	L(L48)
	cmp	%o7, 9
	be	L(L48)
	cmp	%o7, 10
	be	L(L48)
	add	%o7, -11, %g3
	cmp	%g3, 1
	bgu	L(L28)
	cmp	%o7, 13
	ld	[%i0+8], %g3
	st	%o0, [%g3]
	b	L(L9)
	st	%o1, [%g3+4]
L(L28):
	be	L(L52)
	cmp	%o7, 14
	be	L(L53)
	cmp	%o7, 15
	be	L(L48)
	cmp	%o7, 16
	bne	L(L9)
	nop
	ld	[%i0], %g3
	andcc	%g3, 2, %g0
	be	L(L9)
	nop
	ld	[%i0+16], %g3
	cmp	%g3, 1
	be	L(L50)
	cmp	%g3, 2
	be	L(L49)
	cmp	%g3, 4
	bne	L(L9)
	nop
L(L48):
	ld	[%i0+8], %g3
	b	L(L9)
	st	%l0, [%g3]
L(L49):
	ld	[%i0+8], %g3
	b	L(L9)
	sth	%l0, [%g3]
L(L50):
	ld	[%i0+8], %g3
	b	L(L9)
	stb	%l0, [%g3]
L(L53):
	ld	[%i0+8], %g3
	b	L(L9)
	std	%f0, [%g3]
L(L52):
	ld	[%i0], %g3
	andcc	%g3, 32, %g0
	bne,a	L(L31)
	fdtos	%f0, %f0
L(L31):
	ld	[%i0+8], %g3
	b	L(L9)
	st	%f0, [%g3]
L(L51):
	ld	[%i0+8], %g3
	b	L(L2)
	st	%g3, [%sp+64]
L(L9):
	ret
	restore %g0, 0, %o0
L(Lfe1):
	FUNEND(avcall_call)
#if defined __linux__ || defined __FreeBSD__ || defined __FreeBSD_kernel__ || defined __DragonFly__
	.section .note.GNU-stack,"",@progbits
#endif
