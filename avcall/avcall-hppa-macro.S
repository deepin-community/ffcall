#include "asm-hppa.h"
	.LEVEL 1.1
	IMPORT_MILLICODE($$dyncall)
	TEXT1()
	TEXT2()
	.align 4
GLOBL(avcall_call)
		DECLARE_FUNCTION(avcall_call)
DEF(avcall_call)
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=5
	.ENTRY
	copy %r3,%r1
	stw %r2,-20(%r30)
	copy %r30,%r3
	stwm %r1,128(%r30)
	stw %r5,8(%r3)
	ldo -48(%r30),%r24
	ldo 15(%r24),%r21
	copy %r19,%r5
	stw %r4,12(%r3)
	copy %r21,%r24
	depi 0,31,4,%r24
	copy %r26,%r4
	stw %r19,-32(%r30)
	ldo 1104(%r24),%r24
	ldw 28(%r26),%r22
	ldw 20(%r26),%r20
	sub %r22,%r20,%r20
	extrs %r20,29,30,%r25
	sub %r0,%r25,%r23
	comib,<= -4,%r23,L(57)
	ldo 1088(%r30),%r30
	copy %r22,%r29
DEF(L(6))
	zdep %r23,29,30,%r20
	ldo 1(%r23),%r23
	addl %r20,%r29,%r22
	addl %r20,%r24,%r20
	ldw 0(%r22),%r21
	comib,> -4,%r23,L(6)
	stw %r21,0(%r20)
DEF(L(56))
	ldw 12(%r4),%r21
	ldi 16,%r20
	comb,=,n %r20,%r21,L(62)
DEF(L(7))
	comib,>=,n 0,%r25,L(8)
	ldw 48(%r4),%r21
	extrs,>= %r21,31,1,%r0
	fldws -4(%r29),%fr4L
DEF(L(9))
	comib,>=,n 1,%r25,L(8)
	extrs,>= %r21,30,1,%r0
	fldws -8(%r29),%fr5L
DEF(L(11))
	ldw 52(%r4),%r22
	ldi 2,%r20
	and %r22,%r20,%r20
	comiclr,= 0,%r20,%r0
	fldds -8(%r29),%fr5
DEF(L(12))
	comib,>=,n 2,%r25,L(8)
	extrs,>= %r21,29,1,%r0
	fldws -12(%r29),%fr6L
DEF(L(14))
	comib,>=,n 3,%r25,L(8)
	extrs,>= %r21,28,1,%r0
	fldws -16(%r29),%fr7L
DEF(L(16))
	ldi 8,%r20
	and %r22,%r20,%r20
	comiclr,= 0,%r20,%r0
	fldds -16(%r29),%fr7
DEF(L(8))
	ldw -16(%r29),%r23
	ldw -4(%r29),%r26
	ldw -8(%r29),%r25
	ldw -12(%r29),%r24
	ldw 4(%r4),%r22
	.CALL	ARGW0=GR
	bl $$dyncall,%r31
	copy %r31,%r2
	ldw 12(%r4),%r21
	copy %r5,%r19
	comib,= 1,%r21,L(19)
	copy %r28,%r2
	comib,=,n 2,%r21,L(60)
	comib,=,n 3,%r21,L(60)
	comib,=,n 4,%r21,L(60)
	comib,=,n 5,%r21,L(59)
	comib,=,n 6,%r21,L(59)
	comib,=,n 7,%r21,L(61)
	comib,=,n 8,%r21,L(61)
	comib,=,n 9,%r21,L(61)
	comib,=,n 10,%r21,L(61)
	ldo -11(%r21),%r20
	comib,<<,n 1,%r20,L(38)
	ldw 8(%r4),%r20
	stw %r29,4(%r20)
DEF(L(58))
	stw %r2,0(%r20)
DEF(L(19))
	ldw -20(%r3),%r2
DEF(L(65))
	ldi 0,%r28
	ldw 8(%r3),%r5
	ldw 12(%r3),%r4
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
DEF(L(38))
	comib,=,n 13,%r21,L(63)
	comib,=,n 14,%r21,L(64)
	comib,=,n 15,%r21,L(61)
	ldi 16,%r20
	comb,<>,n %r20,%r21,L(65)
	ldw -20(%r3),%r2
	ldw 0(%r4),%r20
	bb,>=,n %r20,30,L(65)
	ldw -20(%r3),%r2
	ldw 16(%r4),%r22
	ldo -1(%r22),%r20
	comib,<<,n 7,%r20,L(65)
	ldw -20(%r3),%r2
	ldw 8(%r4),%r20
	extru %r20,31,2,%r26
	copy %r20,%r4
	depi 0,31,2,%r4
	comib,<< 4,%r22,L(49)
	addl %r26,%r22,%r21
	comib,<< 4,%r21,L(50)
	zdep %r21,28,29,%r20
	ldo -1(%r20),%r25
	zdep %r26,28,29,%r21
	mtsar %r25
	ldw 0(%r4),%r23
	zvdep %r28,32,%r20
	mtsar %r21
	zvdepi 2,32,%r21
	xor %r23,%r20,%r20
	mtsar %r25
	zvdepi 1,32,%r22
	sub %r21,%r22,%r21
	and %r20,%r21,%r20
	xor %r23,%r20,%r23
	b L(19)
	stw %r23,0(%r4)
DEF(L(50))
	subi 63,%r20,%r31
	zdep %r26,28,29,%r26
	ldo -33(%r20),%r20
	ldw 0(%r4),%r25
	mtsar %r20
	ldw 4(%r4),%r24
	zvdep %r28,32,%r23
	mtsar %r26
	zvdepi 2,32,%r22
	xor %r24,%r23,%r23
	mtsar %r31
	ldo -1(%r22),%r22
	vextrs %r28,32,%r21
	mtsar %r20
	zvdepi 1,32,%r20
	xor %r25,%r21,%r21
	sub %r0,%r20,%r20
	and %r21,%r22,%r21
	and %r23,%r20,%r23
	xor %r25,%r21,%r25
	xor %r24,%r23,%r24
	stw %r25,0(%r4)
	b L(19)
	stw %r24,4(%r4)
DEF(L(49))
	zdep %r26,28,29,%r26
	mtsar %r26
	zvdepi 2,32,%r20
	comib,<< 8,%r21,L(53)
	ldo -1(%r20),%r25
	zdep %r21,29,30,%r20
	subi 47,%r20,%r24
	zdep %r21,28,29,%r21
	mtsar %r24
	ldo -33(%r21),%r26
	vextrs %r29,32,%r22
	vextrs %r22,32,%r22
	mtsar %r26
	ldw 0(%r4),%r24
	ldw 4(%r4),%r23
	zvdep %r28,32,%r20
	or %r20,%r22,%r20
	zvdep %r29,32,%r29
	zvdepi 1,32,%r21
	xor %r24,%r20,%r20
	xor %r23,%r29,%r29
	sub %r0,%r21,%r21
	and %r20,%r25,%r20
	and %r29,%r21,%r29
	xor %r24,%r20,%r24
	xor %r23,%r29,%r23
	stw %r24,0(%r4)
	b L(19)
	stw %r23,4(%r4)
DEF(L(53))
	zdep %r21,28,29,%r20
	ldo -65(%r20),%r31
	subi 95,%r20,%r26
	ldw 8(%r4),%r23
	mtsar %r31
	ldw 0(%r4),%r24
	zvdep %r29,32,%r22
	zvdepi 1,32,%r21
	xor %r23,%r22,%r22
	mtsar %r26
	sub %r0,%r21,%r21
	vextrs %r28,32,%r20
	and %r22,%r21,%r22
	mtsar %r31
	xor %r24,%r20,%r20
	zvdep %r28,32,%r21
	and %r20,%r25,%r20
	mtsar %r26
	xor %r24,%r20,%r24
	vextrs %r29,32,%r29
	xor %r23,%r22,%r23
	or %r21,%r29,%r21
	stw %r23,8(%r4)
	stw %r24,0(%r4)
	b L(19)
	stw %r21,4(%r4)
DEF(L(61))
	b L(58)
	ldw 8(%r4),%r20
DEF(L(64))
	ldw 8(%r4),%r20
	b L(19)
	fstds %fr4,0(%r20)
DEF(L(63))
	ldw 8(%r4),%r20
	b L(19)
	fstws %fr4L,0(%r20)
DEF(L(59))
	ldw 8(%r4),%r20
	b L(19)
	sth %r2,0(%r20)
DEF(L(60))
	ldw 8(%r4),%r20
	b L(19)
	stb %r2,0(%r20)
DEF(L(62))
	b L(7)
	ldw 8(%r4),%r28
DEF(L(57))
	b L(56)
	ldw 28(%r26),%r29
	.EXIT
	.PROCEND
DEF(L(fe1))
	FUNEND(avcall_call)
#if defined __linux__ || defined __FreeBSD__ || defined __FreeBSD_kernel__ || defined __DragonFly__
	.section .note.GNU-stack,"",@progbits
#endif
