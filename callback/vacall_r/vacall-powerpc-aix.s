	.file	"../../vacall/vacall-powerpc.c"
	.toc
	.csect .text[PR]
	.align 2
	.lglobl .callback_receiver
	.csect callback_receiver[DS]
callback_receiver:
	.long .callback_receiver, TOC[tc0], 0
	.csect .text[PR]
.callback_receiver:
	.extern __mulh
	.extern __mull
	.extern __divss
	.extern __divus
	.extern __quoss
	.extern __quous
	mflr 0
	stw 0,8(1)
	stw 28,-16(1)
	stw 29,-12(1)
	stw 31,-4(1)
	stwu 1,-216(1)
	mr 31,1
	lwz 28,0(11)
	li 29,0
	addi 0,31,240
	stw 9,264(31)
	stw 3,240(31)
	stw 4,244(31)
	stw 5,248(31)
	stw 6,252(31)
	stw 7,256(31)
	stw 8,260(31)
	stw 10,268(31)
	stw 29,76(31)
	stfd 1,92(31)
	stfd 2,100(31)
	stfd 3,108(31)
	stfd 4,116(31)
	stfd 5,124(31)
	stfd 6,132(31)
	stfd 7,140(31)
	stfd 8,148(31)
	stfd 9,156(31)
	stfd 10,164(31)
	stfd 11,172(31)
	stfd 12,180(31)
	stfd 13,188(31)
	stw 0,72(31)
	stw 29,88(31)
	stw 29,56(31)
	stw 29,80(31)
	lwz 0,0(28)
	lwz 3,4(11)
	mtctr 0
	addi 4,31,56
	stw 2,20(1)
	lwz 11,8(28)
	lwz 2,4(28)
	bctrl
	lwz 2,20(1)
	lwz 9,80(31)
	cmpwi 0,9,0
	beq- 0,L..1
	cmpwi 0,9,1
	beq- 0,L..40
	cmpwi 0,9,2
	beq- 0,L..41
	cmpwi 0,9,3
	beq- 0,L..40
	cmpwi 0,9,4
	beq- 0,L..42
	cmpwi 0,9,5
	beq- 0,L..43
	cmpwi 0,9,6
	beq- 0,L..39
	cmpwi 0,9,7
	beq- 0,L..39
	cmpwi 0,9,8
	beq- 0,L..39
	cmpwi 0,9,9
	beq- 0,L..39
	addi 0,9,-10
	cmplwi 0,0,1
	bgt- 0,L..22
	lwz 3,64(31)
	lwz 4,68(31)
L..1:
	lwz 1,0(1)
	lwz 0,8(1)
	lwz 28,-16(1)
	mtlr 0
	lwz 29,-12(1)
	lwz 31,-4(1)
	blr
L..22:
	cmpwi 0,9,12
	beq- 0,L..44
	cmpwi 0,9,13
	beq- 0,L..45
	cmpwi 0,9,14
	beq- 0,L..39
	cmpwi 0,9,15
	bne+ 0,L..1
	lwz 0,56(31)
	andi. 9,0,1024
	beq- 0,L..1
	lwz 9,84(31)
	addi 0,9,-1
	cmplwi 0,0,7
	bgt- 0,L..1
	cmplwi 0,9,4
	lwz 0,76(31)
	rlwinm 8,0,0,30,31
	rlwinm 6,0,0,0,29
	add 5,8,9
	bgt- 0,L..33
	cmplwi 0,5,4
	slwi 0,8,3
	subfic 0,0,31
	li 9,2
	slw 9,9,0
	addi 7,9,-1
	bgt- 0,L..34
	lwz 9,0(6)
	slwi 0,5,3
	and 9,9,7
	subfic 0,0,32
	sraw 3,9,0
	b L..1
L..34:
	lwz 0,0(6)
	slwi 9,5,3
	lwz 10,4(6)
	subfic 8,9,64
	and 0,0,7
	addi 9,9,-32
	slw 0,0,9
	sraw 10,10,8
	or 3,0,10
	b L..1
L..33:
	cmplwi 0,5,8
	slwi 0,8,3
	subfic 0,0,31
	li 9,2
	slw 9,9,0
	addi 29,9,-1
	bgt- 0,L..37
	lwz 7,0(6)
	slwi 10,5,2
	and 7,7,29
	addi 10,10,-16
	lwz 8,4(6)
	slwi 9,5,3
	subfic 9,9,64
	slw 0,7,10
	slw 0,0,10
	sraw 8,8,9
	or 4,0,8
	sraw 3,7,9
	b L..1
L..37:
	lwz 10,0(6)
	slwi 9,5,3
	lwz 8,8(6)
	lwz 0,4(6)
	subfic 7,9,96
	and 10,10,29
	addi 9,9,-64
	slw 6,0,9
	sraw 8,8,7
	slw 10,10,9
	sraw 0,0,7
	or 3,10,0
	or 4,6,8
	b L..1
L..39:
	lwz 3,64(31)
	b L..1
L..45:
	lfd 1,64(31)
	b L..1
L..44:
	lfs 1,64(31)
	b L..1
L..43:
	lhz 3,64(31)
	b L..1
L..42:
	lha 3,64(31)
	b L..1
L..40:
	lbz 3,64(31)
	b L..1
L..41:
	lbz 0,64(31)
	slwi 0,0,24
	srawi 3,0,24
	b L..1
LT..callback_receiver:
	.long 0
	.byte 0,0,32,97,128,4,8,0
	.long 0
	.long LT..callback_receiver-.callback_receiver
	.short 17
	.byte "callback_receiver"
	.byte 31
	.align 2
	.toc
LC..0:
	.tc callback_receiver[TC],callback_receiver
	.csect .text[PR]
	.align 2
	.globl callback_get_receiver
	.globl .callback_get_receiver
	.csect callback_get_receiver[DS]
callback_get_receiver:
	.long .callback_get_receiver, TOC[tc0], 0
	.csect .text[PR]
.callback_get_receiver:
	stw 31,-4(1)
	stwu 1,-40(1)
	mr 31,1
	lwz 1,0(1)
	lwz 3,LC..0(2)
	lwz 31,-4(1)
	blr
LT..callback_get_receiver:
	.long 0
	.byte 0,0,32,96,128,1,0,0
	.long LT..callback_get_receiver-.callback_get_receiver
	.short 21
	.byte "callback_get_receiver"
	.byte 31
	.align 2
_section_.text:
	.csect .data[RW],3
	.long _section_.text
