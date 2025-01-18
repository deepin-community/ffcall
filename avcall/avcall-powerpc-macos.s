.text
	.align 2
	.globl _avcall_call
_avcall_call:
	mflr r0
	stmw r29,-12(r1)
	stw r0,8(r1)
	mr r29,r3
	stwu r1,-1104(r1)
	li r11,8
	lwz r0,20(r3)
	mr r30,r1
	lwz r3,24(r3)
	addi r8,r1,56
	subf r0,r3,r0
	srawi r10,r0,2
	cmpw cr0,r11,r10
	bge- cr0,L87
	mr r12,r3
L6:
	slwi r9,r11,2
	addi r11,r11,1
	cmpw cr0,r11,r10
	lwzx r0,r9,r12
	add r9,r9,r8
	stw r0,-32(r9)
	blt+ cr0,L6
L86:
	lwz r9,40(r29)
	subf r9,r29,r9
	addi r9,r9,-44
	srawi. r9,r9,3
	beq- cr0,L8
	cmpwi cr0,r9,1
	beq- cr0,L11
	cmpwi cr0,r9,2
	beq- cr0,L14
	cmpwi cr0,r9,3
	beq- cr0,L17
	cmpwi cr0,r9,4
	beq- cr0,L20
	cmpwi cr0,r9,5
	beq- cr0,L23
	cmpwi cr0,r9,6
	beq- cr0,L26
	cmpwi cr0,r9,7
	beq- cr0,L29
	cmpwi cr0,r9,8
	beq- cr0,L32
	cmpwi cr0,r9,9
	beq- cr0,L35
	cmpwi cr0,r9,10
	beq- cr0,L38
	cmpwi cr0,r9,11
	beq- cr0,L41
	cmpwi cr0,r9,12
	beq- cr0,L44
L47:
	lfd f13,140(r29)
L44:
	lfd f12,132(r29)
L41:
	lfd f11,124(r29)
L38:
	lfd f10,116(r29)
L35:
	lfd f9,108(r29)
L32:
	lfd f8,100(r29)
L29:
	lfd f7,92(r29)
L26:
	lfd f6,84(r29)
L23:
	lfd f5,76(r29)
L20:
	lfd f4,68(r29)
L17:
	lfd f3,60(r29)
L14:
	lfd f2,52(r29)
L11:
	lfd f1,44(r29)
L8:
	lwz r0,4(r29)
	lwz r9,24(r12)
	lwz r10,28(r12)
	mtctr r0
	lwz r3,0(r12)
	lwz r4,4(r12)
	lwz r5,8(r12)
	lwz r6,12(r12)
	lwz r7,16(r12)
	lwz r8,20(r12)
	bctrl
	lwz r9,12(r29)
	cmpwi cr0,r9,1
	beq- cr0,L49
	cmpwi cr0,r9,2
	beq- cr0,L90
	cmpwi cr0,r9,3
	beq- cr0,L90
	cmpwi cr0,r9,4
	beq- cr0,L90
	cmpwi cr0,r9,5
	beq- cr0,L89
	cmpwi cr0,r9,6
	beq- cr0,L89
	cmpwi cr0,r9,7
	beq- cr0,L91
	cmpwi cr0,r9,8
	beq- cr0,L91
	cmpwi cr0,r9,9
	beq- cr0,L91
	cmpwi cr0,r9,10
	beq- cr0,L91
	addi r0,r9,-11
	cmplwi cr0,r0,1
	bgt- cr0,L68
	lwz r9,8(r29)
	stw r4,4(r9)
L88:
	stw r3,0(r9)
L49:
	lwz r1,0(r1)
	li r3,0
	lwz r0,8(r1)
	lmw r29,-12(r1)
	mtlr r0
	blr
L68:
	cmpwi cr0,r9,13
	beq- cr0,L92
	cmpwi cr0,r9,14
	beq- cr0,L93
	cmpwi cr0,r9,15
	beq- cr0,L91
	cmpwi cr0,r9,16
	bne+ cr0,L49
	lwz r0,0(r29)
	andi. r9,r0,512
	beq- cr0,L49
	lwz r8,16(r29)
	addi r0,r8,-1
	cmplwi cr0,r0,7
	bgt- cr0,L49
	lwz r0,8(r29)
	cmplwi cr0,r8,4
	rlwinm r9,r0,0,30,31
	rlwinm r5,r0,0,0,29
	add r8,r9,r8
	bgt- cr0,L79
	cmplwi cr0,r8,4
	bgt- cr0,L80
	slwi r0,r9,3
	slwi r10,r8,3
	subfic r0,r0,31
	li r11,2
	lwz r8,0(r5)
	subfic r10,r10,32
	slw r11,r11,r0
	slw r9,r3,r10
	li r0,1
	xor r9,r8,r9
	slw r0,r0,r10
	subf r11,r0,r11
	and r9,r9,r11
	xor r8,r8,r9
	stw r8,0(r5)
	b L49
L80:
	slwi r8,r8,3
	slwi r9,r9,3
	lwz r6,0(r5)
	subfic r9,r9,31
	lwz r7,4(r5)
	addi r0,r8,-32
	li r11,2
	subfic r8,r8,64
	slw r11,r11,r9
	slw r10,r3,r8
	sraw r0,r3,r0
	li r9,-1
	xor r0,r6,r0
	xor r10,r7,r10
	addi r11,r11,-1
	slw r9,r9,r8
	and r0,r0,r11
	and r10,r10,r9
	xor r6,r6,r0
	xor r7,r7,r10
	stw r7,4(r5)
	stw r6,0(r5)
	b L49
L79:
	slwi r0,r9,3
	cmplwi cr0,r8,8
	subfic r0,r0,31
	li r9,2
	slw r9,r9,r0
	addi r29,r9,-1
	bgt- cr0,L83
	slwi r9,r8,2
	slwi r10,r8,3
	addi r9,r9,-16
	subfic r10,r10,64
	sraw r11,r4,r9
	lwz r8,0(r5)
	lwz r7,4(r5)
	sraw r11,r11,r9
	slw r0,r3,r10
	slw r4,r4,r10
	or r0,r0,r11
	li r9,-1
	xor r0,r8,r0
	xor r4,r7,r4
	slw r9,r9,r10
	and r0,r0,r29
	and r4,r4,r9
	xor r8,r8,r0
	xor r7,r7,r4
	stw r8,0(r5)
	stw r7,4(r5)
	b L49
L83:
	slwi r9,r8,3
	lwz r7,0(r5)
	addi r6,r9,-64
	lwz r8,8(r5)
	subfic r9,r9,96
	sraw r11,r3,r6
	slw r10,r4,r9
	li r0,-1
	slw r0,r0,r9
	xor r11,r7,r11
	xor r10,r8,r10
	and r11,r11,r29
	and r10,r10,r0
	slw r9,r3,r9
	sraw r4,r4,r6
	xor r7,r7,r11
	or r9,r9,r4
	xor r8,r8,r10
	stw r8,8(r5)
	stw r7,0(r5)
	stw r9,4(r5)
	b L49
L91:
	lwz r9,8(r29)
	b L88
L93:
	lwz r9,8(r29)
	stfd f1,0(r9)
	b L49
L92:
	lwz r9,8(r29)
	stfs f1,0(r9)
	b L49
L89:
	lwz r9,8(r29)
	sth r3,0(r9)
	b L49
L90:
	lwz r9,8(r29)
	stb r3,0(r9)
	b L49
L87:
	lwz r12,24(r29)
	b L86
