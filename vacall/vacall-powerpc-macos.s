.text
	.align 2
	.globl _vacall_receiver
_vacall_receiver:
	mflr r0
	stmw r29,-12(r1)
	bcl 20,31,L1$pb
L1$pb:
	stw r0,8(r1)
	mflr r31
	stwu r1,-224(r1)
	addis r29,r31,ha16(L_vacall_function$non_lazy_ptr-L1$pb)
	li r11,0
	lwz r29,lo16(L_vacall_function$non_lazy_ptr-L1$pb)(r29)
	mr r30,r1
	addi r0,r30,248
	stw r3,248(r30)
	lwz r29,0(r29)
	addi r3,r30,64
	stw r9,272(r30)
	stw r5,256(r30)
	mtctr r29
	stw r6,260(r30)
	stw r7,264(r30)
	stw r8,268(r30)
	stw r10,276(r30)
	stw r0,80(r30)
	stw r11,96(r30)
	stw r4,252(r30)
	stfd f1,100(r30)
	stfd f2,108(r30)
	stfd f3,116(r30)
	stfd f4,124(r30)
	stfd f5,132(r30)
	stfd f6,140(r30)
	stfd f7,148(r30)
	stfd f8,156(r30)
	stfd f9,164(r30)
	stfd f10,172(r30)
	stfd f11,180(r30)
	stfd f12,188(r30)
	stfd f13,196(r30)
	stw r11,64(r30)
	stw r11,84(r30)
	stw r11,88(r30)
	bctrl
	lwz r9,88(r30)
	cmpwi cr0,r9,0
	beq- cr0,L1
	cmpwi cr0,r9,1
	beq- cr0,L41
	cmpwi cr0,r9,2
	beq- cr0,L41
	cmpwi cr0,r9,3
	beq- cr0,L42
	cmpwi cr0,r9,4
	beq- cr0,L43
	cmpwi cr0,r9,5
	beq- cr0,L44
	cmpwi cr0,r9,6
	beq- cr0,L40
	cmpwi cr0,r9,7
	beq- cr0,L40
	cmpwi cr0,r9,8
	beq- cr0,L40
	cmpwi cr0,r9,9
	beq- cr0,L40
	addi r0,r9,-10
	cmplwi cr0,r0,1
	bgt- cr0,L22
	lwz r3,72(r30)
	lwz r4,76(r30)
L1:
	lwz r1,0(r1)
	lwz r0,8(r1)
	lmw r29,-12(r1)
	mtlr r0
	blr
L22:
	cmpwi cr0,r9,12
	beq- cr0,L45
	cmpwi cr0,r9,13
	beq- cr0,L46
	cmpwi cr0,r9,14
	beq- cr0,L40
	cmpwi cr0,r9,15
	bne+ cr0,L1
	lwz r0,64(r30)
	andi. r9,r0,1024
	beq- cr0,L1
	lwz r9,92(r30)
	addi r0,r9,-1
	cmplwi cr0,r0,7
	bgt- cr0,L1
	lwz r0,84(r30)
	cmplwi cr0,r9,4
	rlwinm r10,r0,0,30,31
	rlwinm r6,r0,0,0,29
	add r7,r10,r9
	bgt- cr0,L33
	slwi r0,r10,3
	cmplwi cr0,r7,4
	subfic r0,r0,31
	li r9,2
	slw r9,r9,r0
	addi r8,r9,-1
	bgt- cr0,L34
	lwz r9,0(r6)
	slwi r0,r7,3
	subfic r0,r0,32
	and r9,r9,r8
	sraw r3,r9,r0
	b L1
L34:
	lwz r0,0(r6)
	slwi r9,r7,3
	lwz r11,4(r6)
	subfic r10,r9,64
	and r0,r0,r8
	addi r9,r9,-32
	slw r0,r0,r9
	sraw r11,r11,r10
L39:
	or r3,r11,r0
	b L1
L33:
	slwi r0,r10,3
	cmplwi cr0,r7,8
	subfic r0,r0,31
	li r9,2
	slw r9,r9,r0
	addi r5,r9,-1
	bgt- cr0,L37
	lwz r8,0(r6)
	slwi r11,r7,2
	addi r11,r11,-16
	lwz r10,4(r6)
	and r8,r8,r5
	slwi r9,r7,3
	subfic r9,r9,64
	slw r0,r8,r11
	slw r0,r0,r11
	sraw r10,r10,r9
	or r4,r0,r10
	sraw r3,r8,r9
	b L1
L37:
	slwi r9,r7,3
	lwz r0,4(r6)
	lwz r11,0(r6)
	subfic r7,r9,96
	lwz r10,8(r6)
	addi r9,r9,-64
	slw r8,r0,r9
	and r11,r11,r5
	sraw r10,r10,r7
	slw r11,r11,r9
	sraw r0,r0,r7
	or r4,r8,r10
	b L39
L40:
	lwz r3,72(r30)
	b L1
L46:
	lfd f1,72(r30)
	b L1
L45:
	lfs f1,72(r30)
	b L1
L44:
	lhz r3,72(r30)
	b L1
L43:
	lha r3,72(r30)
	b L1
L42:
	lbz r3,72(r30)
	b L1
L41:
	lbz r0,72(r30)
	extsb r3,r0
	b L1
.data
.non_lazy_symbol_pointer
L_vacall_function$non_lazy_ptr:
	.indirect_symbol _vacall_function
	.long	0
