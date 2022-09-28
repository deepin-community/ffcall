	.file	"vacall-riscv32.c"
	.option pic
	.text
	.align	1
	.type	callback_receiver, @function
callback_receiver:
	add	sp,sp,-208
	sw	ra,188(sp)
	sw	s0,184(sp)
	add	s0,sp,192
	sw	a1,-144(s0)
	add	a1,s0,16
	lw	t3,0(t2)
	sw	a7,12(s0)
	sw	a2,-140(s0)
	sw	a3,-136(s0)
	sw	a4,-132(s0)
	sw	a5,-128(s0)
	sw	a6,-124(s0)
	sw	a7,-120(s0)
	fsw	fa0,-112(s0)
	fsw	fa1,-108(s0)
	fsw	fa2,-104(s0)
	fsw	fa3,-100(s0)
	fsw	fa4,-96(s0)
	fsw	fa5,-92(s0)
	fsw	fa6,-88(s0)
	fsw	fa7,-84(s0)
	fsd	fa0,-80(s0)
	fsd	fa1,-72(s0)
	fsd	fa2,-64(s0)
	fsd	fa3,-56(s0)
	fsd	fa4,-48(s0)
	fsd	fa5,-40(s0)
	fsd	fa6,-32(s0)
	fsd	fa7,-24(s0)
	sw	a1,-168(s0)
	sw	a0,-148(s0)
	sw	zero,-184(s0)
	sw	zero,-164(s0)
	sw	zero,-160(s0)
	lw	a0,4(t2)
	sw	zero,-152(s0)
	sw	zero,-116(s0)
	add	a1,s0,-184
	jalr	t3
	lw	t1,-160(s0)
	beqz	t1,.L1
	li	t3,1
	beq	t1,t3,.L22
	li	t3,2
	beq	t1,t3,.L25
	li	t3,3
	beq	t1,t3,.L22
	li	t3,4
	beq	t1,t3,.L26
	li	t3,5
	beq	t1,t3,.L27
	li	t3,6
	beq	t1,t3,.L23
	li	t3,7
	beq	t1,t3,.L23
	li	t3,8
	beq	t1,t3,.L23
	li	t3,9
	beq	t1,t3,.L23
	add	t3,t1,-10
	li	t4,1
	bleu	t3,t4,.L28
	li	t3,12
	beq	t1,t3,.L29
	li	t3,13
	beq	t1,t3,.L30
	li	t3,14
	beq	t1,t3,.L23
	li	t3,15
	bne	t1,t3,.L1
	lw	t1,-184(s0)
	and	t1,t1,2
	beqz	t1,.L1
	lw	t3,-156(s0)
	li	t1,7
	add	t5,t3,-1
	bgtu	t5,t1,.L1
	lw	t1,-164(s0)
	lbu	t5,0(t1)
	mv	a0,t5
	beq	t3,t4,.L1
	lbu	t4,1(t1)
	li	t6,2
	sll	t4,t4,8
	or	t5,t4,t5
	mv	a0,t5
	beq	t3,t6,.L1
	lbu	t4,2(t1)
	li	t6,3
	sll	t4,t4,16
	or	t4,t4,t5
	mv	a0,t4
	beq	t3,t6,.L1
	lbu	a0,3(t1)
	li	t5,4
	sll	a0,a0,24
	or	a0,a0,t4
	beq	t3,t5,.L1
	lbu	t5,4(t1)
	li	t4,5
	mv	a1,t5
	beq	t3,t4,.L1
	lbu	t4,5(t1)
	li	t6,6
	sll	t4,t4,8
	or	t5,t4,t5
	mv	a1,t5
	beq	t3,t6,.L1
	lbu	t4,6(t1)
	li	t6,8
	sll	t4,t4,16
	or	t4,t4,t5
	mv	a1,t4
	bne	t3,t6,.L1
	lbu	a1,7(t1)
	sll	a1,a1,24
	or	a1,a1,t4
.L1:
	lw	ra,188(sp)
	lw	s0,184(sp)
	add	sp,sp,208
	jr	ra
.L22:
	lbu	a0,-176(s0)
	lw	ra,188(sp)
	lw	s0,184(sp)
	add	sp,sp,208
	jr	ra
.L23:
	lw	a0,-176(s0)
	j	.L1
.L25:
	lb	a0,-176(s0)
	lw	ra,188(sp)
	lw	s0,184(sp)
	add	sp,sp,208
	jr	ra
.L26:
	lh	a0,-176(s0)
	j	.L1
.L27:
	lhu	a0,-176(s0)
	j	.L1
.L28:
	lw	a0,-176(s0)
	lw	a1,-172(s0)
	j	.L1
.L29:
	flw	fa0,-176(s0)
	j	.L1
.L30:
	fld	fa0,-176(s0)
	j	.L1
	.size	callback_receiver, .-callback_receiver
	.align	1
	.globl	callback_get_receiver
	.type	callback_get_receiver, @function
callback_get_receiver:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	lw	s0,12(sp)
	lla	a0,callback_receiver
	add	sp,sp,16
	jr	ra
	.size	callback_get_receiver, .-callback_get_receiver
	.ident	"GCC: (GNU) 7.3.0"
