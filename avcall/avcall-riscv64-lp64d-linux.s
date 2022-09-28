	.file	"avcall-riscv64.c"
	.option pic
	.text
	.align	1
	.globl	avcall_call
	.type	avcall_call, @function
avcall_call:
	add	sp,sp,-64
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	ra,56(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	sd	s6,0(sp)
	add	s0,sp,64
	ld	t6,48(a0)
	ld	t3,40(a0)
	li	t1,-4096
	add	t1,t1,2032
	sub	t3,t3,t6
	sra	t3,t3,3
	sext.w	t0,t3
	li	t4,8
	mv	s1,a0
	add	sp,sp,t1
	lw	t2,64(a0)
	ble	t0,t4,.L2
	addw	t3,t3,-9
	sll	t3,t3,32
	srl	t3,t3,29
	mv	t1,sp
	add	t3,t3,8
	add	t4,t6,64
	add	t3,t1,t3
.L3:
	ld	t5,0(t4)
	add	t1,t1,8
	add	t4,t4,8
	sd	t5,-8(t1)
	bne	t3,t1,.L3
.L4:
	li	t1,1
	ld	a0,0(t6)
	beq	t0,t1,.L5
	li	t1,2
	ld	a1,8(t6)
	beq	t0,t1,.L5
	li	t1,3
	ld	a2,16(t6)
	beq	t0,t1,.L5
	li	t1,4
	ld	a3,24(t6)
	beq	t0,t1,.L5
	li	t1,5
	ld	a4,32(t6)
	beq	t0,t1,.L5
	li	t1,6
	ld	a5,40(t6)
	beq	t0,t1,.L5
	li	t1,7
	ld	a6,48(t6)
	beq	t0,t1,.L5
	ld	a7,56(t6)
.L5:
	beqz	t2,.L8
	lw	t1,72(s1)
	and	t3,t1,1
	beqz	t3,.L9
	fld	fa0,112(s1)
.L10:
	li	t3,1
	bleu	t2,t3,.L8
	and	t3,t1,2
	bnez	t3,.L77
	lw	t3,68(s1)
	and	t3,t3,2
	beqz	t3,.L13
	flw	fa1,80(s1)
.L13:
	li	t3,2
	beq	t2,t3,.L8
	and	t3,t1,4
	beqz	t3,.L14
	fld	fa2,128(s1)
.L15:
	li	t3,3
	beq	t2,t3,.L8
	and	t3,t1,8
	bnez	t3,.L78
	lw	t3,68(s1)
	and	t3,t3,8
	beqz	t3,.L17
	flw	fa3,88(s1)
.L17:
	li	t3,4
	beq	t2,t3,.L8
	and	t3,t1,16
	beqz	t3,.L18
	fld	fa4,144(s1)
.L19:
	li	t3,5
	beq	t2,t3,.L8
	and	t3,t1,32
	beqz	t3,.L20
	fld	fa5,152(s1)
.L21:
	li	t3,6
	beq	t2,t3,.L8
	and	t3,t1,64
	beqz	t3,.L22
	fld	fa6,160(s1)
.L23:
	li	t3,7
	beq	t2,t3,.L8
	and	t1,t1,128
	beqz	t1,.L24
	fld	fa7,168(s1)
.L8:
	lw	t1,24(s1)
	li	t3,13
	ld	t4,8(s1)
	bne	t1,t3,.L25
	ld	s1,16(s1)
	jalr	t4
	fsw	fa0,0(s1)
.L26:
	add	sp,s0,-64
	ld	ra,56(sp)
	li	a0,0
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	ld	s5,8(sp)
	ld	s6,0(sp)
	add	sp,sp,64
	jr	ra
.L9:
	lw	t3,68(s1)
	and	t3,t3,1
	beqz	t3,.L10
	flw	fa0,76(s1)
	j	.L10
.L25:
	li	t3,14
	beq	t1,t3,.L79
	jalr	t4
	lw	t1,24(s1)
	li	t4,1
	mv	t3,a0
	beq	t1,t4,.L26
	li	t4,2
	beq	t1,t4,.L71
	li	t4,3
	beq	t1,t4,.L71
	li	t4,4
	beq	t1,t4,.L71
	li	t4,5
	beq	t1,t4,.L72
	li	t4,6
	beq	t1,t4,.L72
	li	t4,7
	beq	t1,t4,.L73
	li	t4,8
	beq	t1,t4,.L73
	and	t4,t1,-3
	li	t6,9
	beq	t4,t6,.L75
	addw	t4,t1,-10
	and	t4,t4,-3
	sext.w	t4,t4
	beqz	t4,.L75
	li	t6,15
	beq	t1,t6,.L75
	li	t4,16
	bne	t1,t4,.L26
	lw	t4,0(s1)
	and	t4,t4,512
	beqz	t4,.L26
	ld	s6,32(s1)
	add	t4,s6,-1
	bgtu	t4,t6,.L26
	ld	t6,16(s1)
	li	t4,1
	li	s4,8
	and	s1,t6,7
	and	t6,t6,-8
	sext.w	s3,s1
	ld	t0,0(t6)
	sll	s5,s3,3
	add	s1,s6,s1
	sll	t2,a0,s5
	sll	t4,t4,s5
	xor	t2,t2,t0
	sllw	s2,s1,3
	bgtu	s6,s4,.L38
	bgtu	s1,s4,.L39
	addw	s2,s2,-1
	li	t1,2
	sll	t1,t1,s2
	sub	t1,t1,t4
	and	t1,t1,t2
	xor	t1,t1,t0
	sd	t1,0(t6)
	j	.L26
.L77:
	fld	fa1,120(s1)
	j	.L13
.L79:
	ld	s1,16(s1)
	jalr	t4
	fsd	fa0,0(s1)
	j	.L26
.L71:
	ld	t1,16(s1)
	sb	t3,0(t1)
	j	.L26
.L2:
	blez	t0,.L5
	j	.L4
.L14:
	lw	t3,68(s1)
	and	t3,t3,4
	beqz	t3,.L15
	flw	fa2,84(s1)
	j	.L15
.L78:
	fld	fa3,136(s1)
	j	.L17
.L72:
	ld	t1,16(s1)
	sh	t3,0(t1)
	j	.L26
.L18:
	lw	t3,68(s1)
	and	t3,t3,16
	beqz	t3,.L19
	flw	fa4,92(s1)
	j	.L19
.L73:
	ld	t1,16(s1)
	sw	t3,0(t1)
	j	.L26
.L20:
	lw	t3,68(s1)
	and	t3,t3,32
	beqz	t3,.L21
	flw	fa5,96(s1)
	j	.L21
.L75:
	ld	t1,16(s1)
	sd	t3,0(t1)
	j	.L26
.L22:
	lw	t3,68(s1)
	and	t3,t3,64
	beqz	t3,.L23
	flw	fa6,100(s1)
	j	.L23
.L24:
	lw	t1,68(s1)
	and	t1,t1,128
	beqz	t1,.L8
	flw	fa7,104(s1)
	j	.L8
.L39:
	li	t1,-8
	mulw	t1,t1,s3
	ld	s1,8(t6)
	addw	s2,s2,-65
	li	t5,2
	sll	t5,t5,s2
	sub	t4,zero,t4
	add	t5,t5,-1
	and	t4,t4,t2
	xor	t4,t4,t0
	sd	t4,0(t6)
	sra	t1,a0,t1
	xor	t1,t1,s1
	and	t1,t1,t5
	xor	t1,t1,s1
	sd	t1,8(t6)
	j	.L26
.L38:
	sub	t4,zero,t4
	and	t4,t4,t2
	xor	t4,t4,t0
	sd	t4,0(t6)
	sll	t2,a1,s5
	bleu	s1,t1,.L80
	li	t1,-8
	mulw	t1,t1,s3
	ld	s1,16(t6)
	addw	t4,s2,-129
	li	t0,2
	sll	t0,t0,t4
	add	t0,t0,-1
	addw	t1,t1,64
	sra	t4,a1,t1
	xor	t4,t4,s1
	sra	t1,a0,t1
	and	t3,t0,t4
	or	t1,t1,t2
	xor	t3,t3,s1
	sd	t1,8(t6)
	sd	t3,16(t6)
	j	.L26
.L80:
	li	t1,-4
	mulw	t1,t1,s3
	addw	t4,s2,-65
	li	t5,2
	sll	t5,t5,t4
	ld	t0,8(t6)
	add	t5,t5,-1
	addw	t4,t1,32
	sra	t1,a0,t4
	sra	t1,t1,t4
	or	t1,t1,t2
	xor	t1,t1,t0
	and	t1,t1,t5
	xor	t1,t1,t0
	sd	t1,8(t6)
	j	.L26
	.size	avcall_call, .-avcall_call
	.ident	"GCC: (GNU) 7.3.0"
