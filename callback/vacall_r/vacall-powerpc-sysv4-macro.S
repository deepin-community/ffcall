	.file	"vacall-powerpc.c"
	.section	".text"
	.align 2
	.type	callback_receiver, @function
callback_receiver:
	.extern __mulh
	.extern __mull
	.extern __divss
	.extern __divus
	.extern __quoss
	.extern __quous
	stwu 1,-176(1)
	mflr 0
	stw 0,180(1)
	stw 31,172(1)
	mr 31,1
	stw 29,164(1)
	addi 0,31,184
	li 29,0
	stw 0,32(31)
	stw 29,36(31)
	lwz 0,0(11)
	stw 3,52(31)
	stw 4,56(31)
	mtctr 0
	stw 9,76(31)
	addi 4,31,16
	stw 30,168(1)
	stw 5,60(31)
	stw 6,64(31)
	stw 7,68(31)
	stw 8,72(31)
	stw 10,80(31)
	stw 29,84(31)
	stfd 1,88(31)
	stfd 2,96(31)
	stfd 3,104(31)
	stfd 4,112(31)
	stfd 5,120(31)
	stfd 6,128(31)
	stfd 7,136(31)
	stfd 8,144(31)
	stw 29,16(31)
	stw 29,48(31)
	stw 29,40(31)
	lwz 3,4(11)
	bctrl
	lwz 9,40(31)
	cmpwi 0,9,0
	beq- 0,.L1
	cmpwi 0,9,1
	beq- 0,.L41
	cmpwi 0,9,2
	beq- 0,.L42
	cmpwi 0,9,3
	beq- 0,.L41
	cmpwi 0,9,4
	beq- 0,.L43
	cmpwi 0,9,5
	beq- 0,.L44
	cmpwi 0,9,6
	beq- 0,.L40
	cmpwi 0,9,7
	beq- 0,.L40
	cmpwi 0,9,8
	beq- 0,.L40
	cmpwi 0,9,9
	beq- 0,.L40
	addi 0,9,-10
	cmplwi 0,0,1
	bgt- 0,.L22
	lwz 3,24(31)
	lwz 4,28(31)
.L1:
	lwz 11,0(1)
	lwz 0,4(11)
	lwz 29,-12(11)
	lwz 30,-8(11)
	mtlr 0
	lwz 31,-4(11)
	mr 1,11
	blr
.L22:
	cmpwi 0,9,12
	beq- 0,.L45
	cmpwi 0,9,13
	beq- 0,.L46
	cmpwi 0,9,14
	beq- 0,.L40
	cmpwi 0,9,15
	bne+ 0,.L1
	lwz 0,16(31)
	andi. 9,0,1024
	beq- 0,.L1
	lwz 9,44(31)
	addi 0,9,-1
	cmplwi 0,0,7
	bgt- 0,.L1
	lwz 0,36(31)
	cmplwi 0,9,4
	rlwinm 8,0,0,30,31
	rlwinm 5,0,0,0,29
	add 6,8,9
	bgt- 0,.L33
	slwi 0,8,3
	cmplwi 0,6,4
	subfic 0,0,31
	li 9,2
	slw 9,9,0
	addi 7,9,-1
	bgt- 0,.L34
	lwz 9,0(5)
	slwi 0,6,3
	subfic 0,0,32
	and 9,9,7
	sraw 3,9,0
	b .L1
.L34:
	lwz 0,0(5)
	slwi 9,6,3
	lwz 10,4(5)
	subfic 8,9,64
	and 0,0,7
	addi 9,9,-32
	slw 0,0,9
	sraw 10,10,8
.L39:
	or 3,10,0
	b .L1
.L33:
	slwi 0,8,3
	cmplwi 0,6,8
	subfic 0,0,31
	li 9,2
	slw 9,9,0
	addi 29,9,-1
	bgt- 0,.L37
	lwz 7,0(5)
	slwi 10,6,2
	addi 10,10,-16
	lwz 8,4(5)
	and 7,7,29
	slwi 9,6,3
	subfic 9,9,64
	slw 0,7,10
	slw 0,0,10
	sraw 8,8,9
	or 4,0,8
	sraw 3,7,9
	b .L1
.L37:
	slwi 9,6,3
	lwz 0,4(5)
	lwz 10,0(5)
	subfic 6,9,96
	lwz 8,8(5)
	addi 9,9,-64
	slw 7,0,9
	and 10,10,29
	sraw 8,8,6
	slw 10,10,9
	sraw 0,0,6
	or 4,7,8
	b .L39
.L40:
	lwz 3,24(31)
	b .L1
.L46:
	lfd 1,24(31)
	b .L1
.L45:
	lfs 1,24(31)
	b .L1
.L44:
	lhz 3,24(31)
	b .L1
.L43:
	lha 3,24(31)
	b .L1
.L41:
	lbz 3,24(31)
	b .L1
.L42:
	lbz 0,24(31)
	slwi 0,0,24
	srawi 3,0,24
	b .L1
	.size	callback_receiver, .-callback_receiver
	.section	".got2","aw"
.LCTOC1 = .+32768
	.section	".text"
	.section	".got2","aw"
.LC0:
	.long callback_receiver
	.section	".text"
	.align 2
	.globl callback_get_receiver
.LCL1:
	.long .LCTOC1-.LCF1
	.type	callback_get_receiver, @function
callback_get_receiver:
	stwu 1,-32(1)
	mflr 0
	bcl 20,31,.LCF1
.LCF1:
	stw 30,24(1)
	mflr 30
	stw 31,28(1)
	mr 31,1
	stw 0,36(1)
	lwz 11,0(1)
	lwz 0,.LCL1-.LCF1(30)
	lwz 31,-4(11)
	add 30,0,30
	lwz 0,4(11)
	lwz 3,.LC0-.LCTOC1(30)
	lwz 30,-8(11)
	mtlr 0
	mr 1,11
	blr
	.size	callback_get_receiver, .-callback_get_receiver
#if defined __linux__ || defined __FreeBSD__ || defined __FreeBSD_kernel__ || defined __DragonFly__
	.section .note.GNU-stack,"",@progbits
#endif
