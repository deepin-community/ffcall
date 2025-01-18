	.file	"avcall-powerpc.c"
	.section	".text"
	.align 2
	.globl avcall_call
	.type	avcall_call, @function
avcall_call:
	.extern __mulh
	.extern __mull
	.extern __divss
	.extern __divus
	.extern __quoss
	.extern __quous
	stwu 1,-1056(1)
	mflr 0
	li 11,0
	stw 0,1060(1)
	addi 8,1,8
	stw 30,1048(1)
	mr 30,3
	lwz 0,20(3)
	lwz 10,24(3)
	stw 31,1052(1)
	mr 31,1
	subfc 0,10,0
	srawi 0,0,2
	cmpw 0,11,0
	bge- 0,.L71
	mtctr 0
.L72:
	slwi 9,11,2
	addi 11,11,1
	lwzx 0,9,10
	stwx 0,9,8
	bdnz .L72
.L71:
	lwz 9,76(30)
	subfc 9,30,9
	addi 9,9,-80
	srawi. 9,9,3
	beq- 0,.L8
	cmpwi 0,9,1
	beq- 0,.L11
	cmpwi 0,9,2
	beq- 0,.L14
	cmpwi 0,9,3
	beq- 0,.L17
	cmpwi 0,9,4
	beq- 0,.L20
	cmpwi 0,9,5
	beq- 0,.L23
	cmpwi 0,9,6
	beq- 0,.L26
	cmpwi 0,9,7
	beq- 0,.L29
.L32:
	lfd 8,136(30)
.L29:
	lfd 7,128(30)
.L26:
	lfd 6,120(30)
.L23:
	lfd 5,112(30)
.L20:
	lfd 4,104(30)
.L17:
	lfd 3,96(30)
.L14:
	lfd 2,88(30)
.L11:
	lfd 1,80(30)
.L8:
	lwz 0,4(30)
	lwz 9,68(30)
	lwz 3,44(30)
	mtctr 0
	lwz 4,48(30)
	lwz 5,52(30)
	lwz 6,56(30)
	lwz 7,60(30)
	lwz 8,64(30)
	lwz 10,72(30)
	crxor 6,6,6
	bctrl
	lwz 9,12(30)
	cmpwi 0,9,1
	beq- 0,.L34
	cmpwi 0,9,2
	beq- 0,.L75
	cmpwi 0,9,3
	beq- 0,.L75
	cmpwi 0,9,4
	beq- 0,.L75
	cmpwi 0,9,5
	beq- 0,.L74
	cmpwi 0,9,6
	beq- 0,.L74
	cmpwi 0,9,7
	beq- 0,.L76
	cmpwi 0,9,8
	beq- 0,.L76
	cmpwi 0,9,9
	beq- 0,.L76
	cmpwi 0,9,10
	beq- 0,.L76
	addi 0,9,-11
	cmplwi 0,0,1
	bgt- 0,.L53
	lwz 9,8(30)
	stw 4,4(9)
.L73:
	stw 3,0(9)
.L34:
	lwz 11,0(1)
	li 3,0
	lwz 0,4(11)
	lwz 30,-8(11)
	lwz 31,-4(11)
	mtlr 0
	mr 1,11
	blr
.L53:
	cmpwi 0,9,13
	beq- 0,.L77
	cmpwi 0,9,14
	beq- 0,.L78
	cmpwi 0,9,15
	beq- 0,.L76
	cmpwi 0,9,16
	bne+ 0,.L34
	lwz 0,0(30)
	andi. 9,0,512
	beq- 0,.L34
	lwz 8,16(30)
	addi 0,8,-1
	cmplwi 0,0,7
	bgt- 0,.L34
	lwz 0,8(30)
	cmplwi 0,8,4
	rlwinm 9,0,0,30,31
	rlwinm 5,0,0,0,29
	add 8,9,8
	bgt- 0,.L64
	cmplwi 0,8,4
	bgt- 0,.L65
	slwi 0,9,3
	slwi 10,8,3
	subfic 0,0,31
	li 11,2
	lwz 8,0(5)
	subfic 10,10,32
	slw 11,11,0
	slw 9,3,10
	li 0,1
	xor 9,8,9
	slw 0,0,10
	subfc 11,0,11
	and 9,9,11
	xor 8,8,9
	stw 8,0(5)
	b .L34
.L65:
	slwi 8,8,3
	slwi 9,9,3
	lwz 6,0(5)
	subfic 9,9,31
	lwz 7,4(5)
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
	b .L34
.L64:
	slwi 0,9,3
	cmplwi 0,8,8
	subfic 0,0,31
	li 9,2
	slw 9,9,0
	addi 12,9,-1
	bgt- 0,.L68
	slwi 9,8,2
	slwi 10,8,3
	addi 9,9,-16
	subfic 10,10,64
	sraw 11,4,9
	lwz 8,0(5)
	lwz 7,4(5)
	sraw 11,11,9
	slw 0,3,10
	slw 4,4,10
	or 0,0,11
	li 9,-1
	xor 0,8,0
	xor 4,7,4
	slw 9,9,10
	and 0,0,12
	and 4,4,9
	xor 8,8,0
	xor 7,7,4
	stw 8,0(5)
	stw 7,4(5)
	b .L34
.L68:
	slwi 9,8,3
	lwz 7,0(5)
	addi 6,9,-64
	lwz 8,8(5)
	subfic 9,9,96
	sraw 11,3,6
	slw 10,4,9
	li 0,-1
	slw 0,0,9
	xor 11,7,11
	xor 10,8,10
	and 11,11,12
	and 10,10,0
	slw 9,3,9
	sraw 4,4,6
	xor 7,7,11
	or 9,9,4
	xor 8,8,10
	stw 8,8(5)
	stw 7,0(5)
	stw 9,4(5)
	b .L34
.L76:
	lwz 9,8(30)
	b .L73
.L78:
	lwz 9,8(30)
	stfd 1,0(9)
	b .L34
.L77:
	frsp 0,1
	lwz 9,8(30)
	stfs 0,0(9)
	b .L34
.L74:
	lwz 9,8(30)
	sth 3,0(9)
	b .L34
.L75:
	lwz 9,8(30)
	stb 3,0(9)
	b .L34
	.size	avcall_call, .-avcall_call
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.3.6"
