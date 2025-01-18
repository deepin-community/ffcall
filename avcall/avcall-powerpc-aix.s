	.file	"avcall-powerpc.c"
	.toc
	.csect .text[PR]
	.align 2
	.globl avcall_call
	.globl .avcall_call
	.csect avcall_call[DS]
avcall_call:
	.long .avcall_call, TOC[tc0], 0
	.csect .text[PR]
.avcall_call:
	.extern __mulh
	.extern __mull
	.extern __divss
	.extern __divus
	.extern __quoss
	.extern __quous
	mflr 0
	stw 0,8(1)
	stw 30,-8(1)
	stw 31,-4(1)
	stw 29,-12(1)
	stwu 1,-72(1)
	lwz 0,20(3)
	mr 30,3
	lwz 3,24(3)
	li 11,8
	subfc 0,3,0
	srawi 8,0,2
	lwz 9,0(1)
	cmpw 0,11,8
	mr 31,1
	stwu 9,-1040(1)
	addi 0,1,71
	rlwinm 10,0,0,0,27
	bge- 0,L..87
	mr 12,3
L..6:
	slwi 9,11,2
	addi 11,11,1
	cmpw 0,11,8
	lwzx 0,9,12
	add 9,9,10
	stw 0,-32(9)
	blt+ 0,L..6
L..86:
	lwz 9,40(30)
	subfc 9,30,9
	addi 9,9,-44
	srawi. 9,9,3
	beq- 0,L..8
	cmpwi 0,9,1
	beq- 0,L..11
	cmpwi 0,9,2
	beq- 0,L..14
	cmpwi 0,9,3
	beq- 0,L..17
	cmpwi 0,9,4
	beq- 0,L..20
	cmpwi 0,9,5
	beq- 0,L..23
	cmpwi 0,9,6
	beq- 0,L..26
	cmpwi 0,9,7
	beq- 0,L..29
	cmpwi 0,9,8
	beq- 0,L..32
	cmpwi 0,9,9
	beq- 0,L..35
	cmpwi 0,9,10
	beq- 0,L..38
	cmpwi 0,9,11
	beq- 0,L..41
	cmpwi 0,9,12
	beq- 0,L..44
L..47:
	lfd 13,140(30)
L..44:
	lfd 12,132(30)
L..41:
	lfd 11,124(30)
L..38:
	lfd 10,116(30)
L..35:
	lfd 9,108(30)
L..32:
	lfd 8,100(30)
L..29:
	lfd 7,92(30)
L..26:
	lfd 6,84(30)
L..23:
	lfd 5,76(30)
L..20:
	lfd 4,68(30)
L..17:
	lfd 3,60(30)
L..14:
	lfd 2,52(30)
L..11:
	lfd 1,44(30)
L..8:
	lwz 29,4(30)
	lwz 9,24(12)
	lwz 0,0(29)
	lwz 10,28(12)
	lwz 3,0(12)
	mtctr 0
	lwz 4,4(12)
	lwz 5,8(12)
	lwz 6,12(12)
	lwz 7,16(12)
	lwz 8,20(12)
	stw 2,20(1)
	lwz 11,8(29)
	lwz 2,4(29)
	bctrl
	lwz 2,20(1)
	lwz 9,12(30)
	cmpwi 0,9,1
	beq- 0,L..49
	cmpwi 0,9,2
	beq- 0,L..90
	cmpwi 0,9,3
	beq- 0,L..90
	cmpwi 0,9,4
	beq- 0,L..90
	cmpwi 0,9,5
	beq- 0,L..89
	cmpwi 0,9,6
	beq- 0,L..89
	cmpwi 0,9,7
	beq- 0,L..91
	cmpwi 0,9,8
	beq- 0,L..91
	cmpwi 0,9,9
	beq- 0,L..91
	cmpwi 0,9,10
	beq- 0,L..91
	addi 0,9,-11
	cmplwi 0,0,1
	bgt- 0,L..68
	lwz 9,8(30)
	stw 4,4(9)
L..88:
	stw 3,0(9)
L..49:
	lwz 1,0(1)
	li 3,0
	lwz 0,8(1)
	lwz 29,-12(1)
	mtlr 0
	lwz 30,-8(1)
	lwz 31,-4(1)
	blr
L..68:
	cmpwi 0,9,13
	beq- 0,L..92
	cmpwi 0,9,14
	beq- 0,L..93
	cmpwi 0,9,15
	beq- 0,L..91
	cmpwi 0,9,16
	bne+ 0,L..49
	lwz 0,0(30)
	andi. 9,0,512
	beq- 0,L..49
	lwz 8,16(30)
	addi 0,8,-1
	cmplwi 0,0,7
	bgt- 0,L..49
	cmplwi 0,8,4
	lwz 0,8(30)
	rlwinm 9,0,0,30,31
	rlwinm 5,0,0,0,29
	add 8,9,8
	bgt- 0,L..79
	cmplwi 0,8,4
	bgt- 0,L..80
	slwi 0,9,3
	slwi 10,8,3
	subfic 0,0,31
	li 11,2
	lwz 8,0(5)
	subfic 10,10,32
	slw 11,11,0
	li 0,1
	slw 9,3,10
	slw 0,0,10
	xor 9,8,9
	subfc 11,0,11
	and 9,9,11
	xor 8,8,9
	stw 8,0(5)
	b L..49
L..80:
	slwi 8,8,3
	slwi 9,9,3
	lwz 6,0(5)
	lwz 7,4(5)
	subfic 9,9,31
	addi 0,8,-32
	li 11,2
	subfic 8,8,64
	slw 11,11,9
	slw 10,3,8
	sraw 0,3,0
	li 9,-1
	xor 0,6,0
	xor 10,7,10
	addi 11,11,-1
	slw 9,9,8
	and 0,0,11
	and 10,10,9
	xor 6,6,0
	xor 7,7,10
	stw 7,4(5)
	stw 6,0(5)
	b L..49
L..79:
	cmplwi 0,8,8
	slwi 0,9,3
	subfic 0,0,31
	li 9,2
	slw 9,9,0
	addi 30,9,-1
	bgt- 0,L..83
	slwi 9,8,2
	addi 9,9,-16
	slwi 10,8,3
	subfic 10,10,64
	sraw 11,4,9
	lwz 7,0(5)
	lwz 8,4(5)
	sraw 11,11,9
	slw 0,3,10
	or 0,0,11
	slw 4,4,10
	li 9,-1
	xor 0,7,0
	xor 4,8,4
	slw 9,9,10
	and 0,0,30
	and 4,4,9
	xor 7,7,0
	xor 8,8,4
	stw 8,4(5)
	stw 7,0(5)
	b L..49
L..83:
	slwi 9,8,3
	addi 6,9,-64
	lwz 7,0(5)
	subfic 9,9,96
	lwz 8,8(5)
	slw 10,4,9
	sraw 11,3,6
	li 0,-1
	slw 0,0,9
	xor 11,7,11
	xor 10,8,10
	and 11,11,30
	and 10,10,0
	slw 9,3,9
	sraw 4,4,6
	xor 7,7,11
	or 9,9,4
	xor 8,8,10
	stw 8,8(5)
	stw 7,0(5)
	stw 9,4(5)
	b L..49
L..91:
	lwz 9,8(30)
	b L..88
L..93:
	lwz 9,8(30)
	stfd 1,0(9)
	b L..49
L..92:
	lwz 9,8(30)
	frsp 0,1
	stfs 0,0(9)
	b L..49
L..89:
	lwz 9,8(30)
	sth 3,0(9)
	b L..49
L..90:
	lwz 9,8(30)
	stb 3,0(9)
	b L..49
L..87:
	lwz 12,24(30)
	b L..86
LT..avcall_call:
	.long 0
	.byte 0,0,32,97,128,3,1,0
	.long 0
	.long LT..avcall_call-.avcall_call
	.short 11
	.byte "avcall_call"
	.byte 31
	.align 2
_section_.text:
	.csect .data[RW],3
	.long _section_.text
