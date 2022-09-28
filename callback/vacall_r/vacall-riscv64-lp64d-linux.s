	.file	"vacall-riscv64.c"
	.option pic
	.text
	.align	1
	.type	callback_receiver, @function
callback_receiver:
	add	sp,sp,-288
	sd	ra,264(sp)
	sd	s0,256(sp)
	sd	s1,248(sp)
	add	s0,sp,272
	sd	s2,240(sp)
	sd	a1,-192(s0)
	add	a1,s0,16
	ld	t3,0(t2)
	sd	a7,8(s0)
	sd	a2,-184(s0)
	sd	a3,-176(s0)
	sd	a4,-168(s0)
	sd	a5,-160(s0)
	sd	a6,-152(s0)
	sd	a7,-144(s0)
	fsw	fa0,-132(s0)
	fsw	fa1,-128(s0)
	fsw	fa2,-124(s0)
	fsw	fa3,-120(s0)
	fsw	fa4,-116(s0)
	fsw	fa5,-112(s0)
	fsw	fa6,-108(s0)
	fsw	fa7,-104(s0)
	fsd	fa0,-96(s0)
	fsd	fa1,-88(s0)
	fsd	fa2,-80(s0)
	fsd	fa3,-72(s0)
	fsd	fa4,-64(s0)
	fsd	fa5,-56(s0)
	fsd	fa6,-48(s0)
	fsd	fa7,-40(s0)
	sd	a1,-240(s0)
	sd	a0,-200(s0)
	sw	zero,-264(s0)
	ld	a0,8(t2)
	sd	zero,-232(s0)
	sw	zero,-224(s0)
	sw	zero,-208(s0)
	sw	zero,-136(s0)
	add	a1,s0,-264
	jalr	t3
	lw	t1,-224(s0)
	beqz	t1,.L1
	li	t3,1
	beq	t1,t3,.L25
	li	t3,2
	beq	t1,t3,.L29
	li	t3,3
	beq	t1,t3,.L25
	li	t3,4
	beq	t1,t3,.L30
	li	t3,5
	beq	t1,t3,.L31
	li	t3,6
	beq	t1,t3,.L32
	li	t3,7
	beq	t1,t3,.L33
	and	t3,t1,-3
	li	t4,8
	beq	t3,t4,.L27
	li	t4,9
	beq	t3,t4,.L27
	li	t3,12
	beq	t1,t3,.L34
	li	t3,13
	beq	t1,t3,.L35
	li	t3,14
	beq	t1,t3,.L27
	li	t3,15
	bne	t1,t3,.L1
	lw	t3,-264(s0)
	and	t3,t3,1024
	beqz	t3,.L1
	ld	t0,-216(s0)
	add	t3,t0,-1
	bgtu	t3,t1,.L1
	ld	t5,-232(s0)
	li	s2,8
	and	t6,t5,7
	add	s1,t0,t6
	and	t5,t5,-8
	sext.w	t6,t6
	sllw	t1,s1,3
	ld	t4,0(t5)
	sll	t3,t6,3
	bgtu	t0,s2,.L15
	bgtu	s1,s2,.L16
	addw	t1,t1,-1
	li	a0,2
	sll	a0,a0,t1
	add	a0,a0,-1
	and	a0,a0,t4
	sra	a0,a0,t3
.L1:
	ld	ra,264(sp)
	ld	s0,256(sp)
	ld	s1,248(sp)
	ld	s2,240(sp)
	add	sp,sp,288
	jr	ra
.L25:
	lbu	a0,-256(s0)
	ld	ra,264(sp)
	ld	s0,256(sp)
	ld	s1,248(sp)
	ld	s2,240(sp)
	add	sp,sp,288
	jr	ra
.L29:
	lb	a0,-256(s0)
	ld	ra,264(sp)
	ld	s0,256(sp)
	ld	s1,248(sp)
	ld	s2,240(sp)
	add	sp,sp,288
	jr	ra
.L30:
	lh	a0,-256(s0)
	j	.L1
.L33:
	lwu	a0,-256(s0)
	j	.L1
.L31:
	lhu	a0,-256(s0)
	j	.L1
.L27:
	ld	a0,-256(s0)
	j	.L1
.L32:
	lw	a0,-256(s0)
	j	.L1
.L34:
	flw	fa0,-256(s0)
	j	.L1
.L35:
	fld	fa0,-256(s0)
	j	.L1
.L15:
	li	s2,16
	sra	t4,t4,t3
	ld	t0,8(t5)
	bleu	s1,s2,.L36
	li	a1,-8
	mulw	t6,a1,t6
	addw	t1,t1,-129
	ld	a0,16(t5)
	li	a1,2
	sll	a1,a1,t1
	add	a1,a1,-1
	and	a1,a1,a0
	sra	t3,t0,t3
	addw	t1,t6,64
	sll	a0,t0,t1
	sll	a1,a1,t1
	or	a0,a0,t4
	or	a1,a1,t3
	j	.L1
.L16:
	li	a0,-8
	mulw	t6,a0,t6
	addw	t1,t1,-65
	ld	t5,8(t5)
	li	a0,2
	sll	a0,a0,t1
	add	a0,a0,-1
	and	a0,a0,t5
	sra	t4,t4,t3
	sll	a0,a0,t6
	or	a0,a0,t4
	j	.L1
.L36:
	li	a1,-4
	mulw	t6,a1,t6
	addw	t1,t1,-65
	li	a0,2
	sll	a0,a0,t1
	add	a0,a0,-1
	and	a0,a0,t0
	sra	a1,a0,t3
	addw	t1,t6,32
	sll	a0,a0,t1
	sll	a0,a0,t1
	or	a0,a0,t4
	j	.L1
	.size	callback_receiver, .-callback_receiver
	.align	1
	.globl	callback_get_receiver
	.type	callback_get_receiver, @function
callback_get_receiver:
	add	sp,sp,-16
	sd	s0,8(sp)
	add	s0,sp,16
	ld	s0,8(sp)
	lla	a0,callback_receiver
	add	sp,sp,16
	jr	ra
	.size	callback_get_receiver, .-callback_get_receiver
	.ident	"GCC: (GNU) 7.3.0"
