	.file	"avcall-riscv32.c"
	.option pic
	.text
	.align	1
	.globl	avcall_call
	.type	avcall_call, @function
avcall_call:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	add	s0,sp,32
	lw	t2,24(a0)
	lw	t0,20(a0)
	li	t3,32
	mv	s1,a0
	sub	t0,t0,t2
	add	sp,sp,-1040
	lw	ra,40(a0)
	ble	t0,t3,.L2
	mv	t1,sp
	sra	t6,t0,2
	add	t4,t2,32
	li	t3,8
.L3:
	lw	t5,0(t4)
	add	t3,t3,1
	add	t4,t4,4
	sw	t5,0(t1)
	add	t1,t1,4
	bgt	t6,t3,.L3
.L4:
	li	t1,4
	lw	a0,0(t2)
	bgt	t0,t1,.L79
.L5:
	beqz	ra,.L8
	lw	t1,48(s1)
	and	t3,t1,1
	beqz	t3,.L9
	fld	fa0,88(s1)
.L10:
	li	t3,1
	bleu	ra,t3,.L8
	and	t3,t1,2
	bnez	t3,.L80
	lw	t3,44(s1)
	and	t3,t3,2
	beqz	t3,.L13
	flw	fa1,56(s1)
.L13:
	li	t3,2
	beq	ra,t3,.L8
	and	t3,t1,4
	beqz	t3,.L14
	fld	fa2,104(s1)
.L15:
	li	t3,3
	beq	ra,t3,.L8
	and	t3,t1,8
	bnez	t3,.L81
	lw	t3,44(s1)
	and	t3,t3,8
	beqz	t3,.L17
	flw	fa3,64(s1)
.L17:
	li	t3,4
	beq	ra,t3,.L8
	and	t3,t1,16
	beqz	t3,.L18
	fld	fa4,120(s1)
.L19:
	li	t3,5
	beq	ra,t3,.L8
	and	t3,t1,32
	beqz	t3,.L20
	fld	fa5,128(s1)
.L21:
	li	t3,6
	beq	ra,t3,.L8
	and	t3,t1,64
	beqz	t3,.L22
	fld	fa6,136(s1)
.L23:
	li	t3,7
	beq	ra,t3,.L8
	and	t1,t1,128
	beqz	t1,.L24
	fld	fa7,144(s1)
.L8:
	lw	t1,12(s1)
	li	t3,13
	lw	t4,4(s1)
	bne	t1,t3,.L25
	lw	s1,8(s1)
	jalr	t4
	fsw	fa0,0(s1)
.L26:
	add	sp,s0,-32
	lw	ra,28(sp)
	li	a0,0
	lw	s0,24(sp)
	lw	s1,20(sp)
	lw	s2,16(sp)
	lw	s3,12(sp)
	lw	s4,8(sp)
	add	sp,sp,32
	jr	ra
.L79:
	li	t1,8
	lw	a1,4(t2)
	ble	t0,t1,.L5
	li	t1,12
	lw	a2,8(t2)
	ble	t0,t1,.L5
	li	t1,16
	lw	a3,12(t2)
	ble	t0,t1,.L5
	li	t1,20
	lw	a4,16(t2)
	ble	t0,t1,.L5
	li	t1,24
	lw	a5,20(t2)
	ble	t0,t1,.L5
	li	t1,28
	lw	a6,24(t2)
	ble	t0,t1,.L5
	lw	a7,28(t2)
	j	.L5
.L9:
	lw	t3,44(s1)
	and	t3,t3,1
	beqz	t3,.L10
	flw	fa0,52(s1)
	j	.L10
.L25:
	li	t3,14
	beq	t1,t3,.L82
	jalr	t4
	lw	t1,12(s1)
	li	t4,1
	mv	t3,a0
	beq	t1,t4,.L26
	li	t4,2
	beq	t1,t4,.L72
	li	t4,3
	beq	t1,t4,.L72
	li	t4,4
	beq	t1,t4,.L72
	li	t4,5
	beq	t1,t4,.L73
	li	t4,6
	beq	t1,t4,.L73
	li	t4,7
	beq	t1,t4,.L77
	li	t4,8
	beq	t1,t4,.L77
	li	t4,9
	beq	t1,t4,.L77
	li	t4,10
	beq	t1,t4,.L77
	add	t6,t1,-11
	li	t4,1
	bleu	t6,t4,.L83
	li	t6,15
	beq	t1,t6,.L77
	li	t6,16
	bne	t1,t6,.L26
	lw	t1,0(s1)
	and	t1,t1,2
	beqz	t1,.L26
	lw	s3,16(s1)
	li	t1,7
	add	t6,s3,-1
	bgtu	t6,t1,.L26
	lw	t6,8(s1)
	li	s4,4
	and	t0,t6,-4
	lw	t2,0(t0)
	and	t6,t6,3
	sll	s2,t6,3
	sll	s1,a0,s2
	add	t1,s3,t6
	sll	t4,t4,s2
	xor	s1,s1,t2
	bgtu	s3,s4,.L39
	bgtu	t1,s4,.L40
	sll	t1,t1,3
	add	t3,t1,-1
	li	t1,2
	sll	t1,t1,t3
	sub	t1,t1,t4
	and	t1,t1,s1
	xor	t1,t1,t2
	sw	t1,0(t0)
	j	.L26
.L80:
	fld	fa1,96(s1)
	j	.L13
.L82:
	lw	s1,8(s1)
	jalr	t4
	fsd	fa0,0(s1)
	j	.L26
.L72:
	lw	t1,8(s1)
	sb	t3,0(t1)
	j	.L26
.L2:
	blez	t0,.L5
	j	.L4
.L14:
	lw	t3,44(s1)
	and	t3,t3,4
	beqz	t3,.L15
	flw	fa2,60(s1)
	j	.L15
.L81:
	fld	fa3,112(s1)
	j	.L17
.L73:
	lw	t1,8(s1)
	sh	t3,0(t1)
	j	.L26
.L18:
	lw	t3,44(s1)
	and	t3,t3,16
	beqz	t3,.L19
	flw	fa4,68(s1)
	j	.L19
.L77:
	lw	t1,8(s1)
	sw	t3,0(t1)
	j	.L26
.L20:
	lw	t3,44(s1)
	and	t3,t3,32
	beqz	t3,.L21
	flw	fa5,72(s1)
	j	.L21
.L22:
	lw	t3,44(s1)
	and	t3,t3,64
	beqz	t3,.L23
	flw	fa6,76(s1)
	j	.L23
.L24:
	lw	t1,44(s1)
	and	t1,t1,128
	beqz	t1,.L8
	flw	fa7,80(s1)
	j	.L8
.L83:
	lw	t1,8(s1)
	sw	a0,0(t1)
	sw	a1,4(t1)
	j	.L26
.L40:
	li	t5,-8
	mul	t6,t6,t5
	lw	s2,4(t0)
	sll	t1,t1,3
	add	t5,t1,-33
	li	t1,2
	sll	t1,t1,t5
	sub	t4,zero,t4
	add	t1,t1,-1
	and	t4,t4,s1
	xor	t4,t4,t2
	sra	t3,a0,t6
	xor	t3,t3,s2
	and	t1,t1,t3
	xor	t1,t1,s2
	sw	t4,0(t0)
	sw	t1,4(t0)
	j	.L26
.L39:
	sub	t4,zero,t4
	and	t4,t4,s1
	xor	t4,t4,t2
	sw	t4,0(t0)
	li	t4,8
	sll	s1,a1,s2
	bleu	t1,t4,.L84
	li	t4,-8
	mul	t6,t6,t4
	sll	t1,t1,3
	li	t2,2
	add	t1,t1,-65
	lw	s2,8(t0)
	sll	t1,t2,t1
	add	t2,t1,-1
	add	t1,t6,32
	sra	t4,a1,t1
	xor	t4,t4,s2
	sra	t1,a0,t1
	and	t3,t2,t4
	or	t1,t1,s1
	xor	t3,t3,s2
	sw	t1,4(t0)
	sw	t3,8(t0)
	j	.L26
.L84:
	li	t4,-4
	mul	t4,t6,t4
	sll	t1,t1,3
	lw	t6,4(t0)
	add	t5,t1,-33
	li	t1,2
	sll	t1,t1,t5
	add	t1,t1,-1
	add	t4,t4,16
	sra	t3,a0,t4
	sra	t3,t3,t4
	or	t3,t3,s1
	xor	t3,t3,t6
	and	t1,t1,t3
	xor	t1,t1,t6
	sw	t1,4(t0)
	j	.L26
	.size	avcall_call, .-avcall_call
#if defined __linux__ || defined __FreeBSD__ || defined __FreeBSD_kernel__ || defined __DragonFly__
	.section .note.GNU-stack,"",@progbits
#endif
