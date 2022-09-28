	.file	"vacall-arm.c"
	.text
	.align	2
	.global	vacall_receiver
	.type	vacall_receiver,function
vacall_receiver:
	@ args = 20, pretend = 16, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	sub	sp, sp, #16
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #20
	add	ip, fp, #4
	ldr	sl, .L41
	sub	sp, sp, #32
	stmia	ip, {r0, r1, r2, r3}
	ldr	r3, .L41+4
	mov	lr, #0
.L36:
	add	sl, pc, sl
	ldr	r2, [sl, r3]
	str	ip, [fp, #-32]
	str	lr, [fp, #-24]
	str	lr, [fp, #-48]
	str	lr, [fp, #-28]
	bic	sp, sp, #7
	sub	r0, fp, #48
	mov	lr, pc
	ldr	pc, [r2, #0]
	ldr	r2, [fp, #-24]
	cmp	r2, #0
	beq	.L1
	cmp	r2, #1
	beq	.L39
	cmp	r2, #2
	ldreqsb	r0, [fp, #-40]
	beq	.L1
	cmp	r2, #3
	beq	.L39
	cmp	r2, #4
	ldreqsh	r0, [fp, #-40]
	beq	.L1
	cmp	r2, #5
	ldreqh	r0, [fp, #-40]
	beq	.L1
	cmp	r2, #6
	beq	.L38
	cmp	r2, #7
	beq	.L38
	cmp	r2, #8
	beq	.L38
	cmp	r2, #9
	beq	.L38
	sub	r3, r2, #10
	cmp	r3, #1
	bls	.L37
	cmp	r2, #12
	ldreq	r0, [fp, #-40]	@ float
	beq	.L1
	cmp	r2, #13
	beq	.L37
	cmp	r2, #14
	beq	.L38
	cmp	r2, #15
	beq	.L40
.L1:
	ldmea	fp, {sl, fp, sp, pc}
.L40:
	ldr	r3, [fp, #-48]
	tst	r3, #1024
	beq	.L1
	ldr	r3, [fp, #-20]
	cmp	r3, #1
	ldreq	r3, [fp, #-28]
	ldreqb	r0, [r3, #0]	@ zero_extendqisi2
	beq	.L1
	cmp	r3, #2
	ldreq	r3, [fp, #-28]
	ldrne	r3, [fp, #-28]
	ldreqh	r0, [r3, #0]
	ldrne	r0, [r3, #0]
	b	.L1
.L38:
	ldr	r0, [fp, #-40]
	b	.L1
.L37:
	sub	r0, fp, #40
	ldmia	r0, {r0, r1}	@ phole ldm
	b	.L1
.L39:
	ldrb	r0, [fp, #-40]	@ zero_extendqisi2
	b	.L1
.L42:
	.align	2
.L41:
	.word	_GLOBAL_OFFSET_TABLE_-(.L36+8)
	.word	vacall_function(GOT)
.Lfe1:
	.size	vacall_receiver,.Lfe1-vacall_receiver
	.ident	"GCC: (GNU) 3.1"
