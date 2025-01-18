	.file	"vacall-powerpc.c"
	.toc
	.csect .text[PR]
	.toc
LC..0:
	.tc vacall_function[TC],vacall_function[RW]
	.csect .text[PR]
	.align 2
	.globl vacall_receiver
	.globl .vacall_receiver
	.csect vacall_receiver[DS]
vacall_receiver:
	.long .vacall_receiver, TOC[tc0], 0
	.csect .text[PR]
.vacall_receiver:
	.extern __mulh
	.extern __mull
	.extern __divss
	.extern __divus
	.extern __quoss
	.extern __quous
	mflr 0
	stw 0,8(1)
	stw 29,-12(1)
	stw 31,-4(1)
	lwz 11,LC..0(2)
	stwu 1,-216(1)
	mr 31,1
	lwz 29,0(11)
	addi 0,31,240
	li 11,0
	stw 9,264(31)
	stw 3,240(31)
	stw 5,248(31)
	stw 6,252(31)
	stw 7,256(31)
	stw 8,260(31)
	stw 10,268(31)
	stw 11,88(31)
	stw 4,244(31)
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
	stw 11,56(31)
	stw 11,76(31)
	stw 11,80(31)
	stw 0,72(31)
	lwz 0,0(29)
	addi 3,31,56
	stw 2,20(1)
	mtctr 0
	lwz 11,8(29)
	lwz 2,4(29)
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
	lwz 29,-12(1)
	mtlr 0
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
	rlwinm 10,0,0,30,31
	rlwinm 7,0,0,0,29
	add 6,10,9
	bgt- 0,L..33
	cmplwi 0,6,4
	slwi 0,10,3
	subfic 0,0,31
	li 9,2
	slw 9,9,0
	addi 8,9,-1
	bgt- 0,L..34
	lwz 9,0(7)
	slwi 0,6,3
	and 9,9,8
	subfic 0,0,32
	sraw 3,9,0
	b L..1
L..34:
	lwz 0,0(7)
	slwi 9,6,3
	lwz 11,4(7)
	subfic 10,9,64
	and 0,0,8
	addi 9,9,-32
	slw 0,0,9
	sraw 11,11,10
	or 3,0,11
	b L..1
L..33:
	cmplwi 0,6,8
	slwi 0,10,3
	subfic 0,0,31
	li 9,2
	slw 9,9,0
	addi 5,9,-1
	bgt- 0,L..37
	lwz 8,0(7)
	slwi 11,6,2
	and 8,8,5
	addi 11,11,-16
	lwz 10,4(7)
	slwi 9,6,3
	subfic 9,9,64
	slw 0,8,11
	slw 0,0,11
	sraw 10,10,9
	or 4,0,10
	sraw 3,8,9
	b L..1
L..37:
	lwz 11,0(7)
	slwi 9,6,3
	lwz 10,8(7)
	lwz 0,4(7)
	subfic 8,9,96
	and 11,11,5
	addi 9,9,-64
	slw 7,0,9
	sraw 10,10,8
	slw 11,11,9
	sraw 0,0,8
	or 3,11,0
	or 4,7,10
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
LT..vacall_receiver:
	.long 0
	.byte 0,0,32,97,128,3,8,0
	.long 0
	.long LT..vacall_receiver-.vacall_receiver
	.short 15
	.byte "vacall_receiver"
	.byte 31
	.align 2
_section_.text:
	.csect .data[RW],3
	.long _section_.text
	.extern vacall_function[RW]
