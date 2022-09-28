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
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #20
	add	lr, fp, #4
	mov	ip, #0
	sub	sp, sp, #32
	stmia	lr, {r0, r1, r2, r3}
	bic	sp, sp, #7
	str	lr, [fp, #-28]
	str	ip, [fp, #-20]
	str	ip, [fp, #-44]
	str	ip, [fp, #-24]
	sub	r0, fp, #44
	ldr	r3, .L40
	mov	lr, pc
	ldr	pc, [r3, #0]
	ldr	r2, [fp, #-20]
	cmp	r2, #0
	beq	.L1
	cmp	r2, #1
	beq	.L38
	cmp	r2, #2
	ldreqsb	r0, [fp, #-36]
	beq	.L1
	cmp	r2, #3
	beq	.L38
	cmp	r2, #4
	ldreqsh	r0, [fp, #-36]
	beq	.L1
	cmp	r2, #5
	ldreqh	r0, [fp, #-36]
	beq	.L1
	cmp	r2, #6
	beq	.L37
	cmp	r2, #7
	beq	.L37
	cmp	r2, #8
	beq	.L37
	cmp	r2, #9
	beq	.L37
	sub	r3, r2, #10
	cmp	r3, #1
	bls	.L36
	cmp	r2, #12
	ldreq	r0, [fp, #-36]	@ float
	beq	.L1
	cmp	r2, #13
	beq	.L36
	cmp	r2, #14
	beq	.L37
	cmp	r2, #15
	beq	.L39
.L1:
	ldmea	fp, {fp, sp, pc}
.L39:
	ldr	r3, [fp, #-44]
	tst	r3, #1024
	beq	.L1
	ldr	r3, [fp, #-16]
	cmp	r3, #1
	ldreq	r3, [fp, #-24]
	ldreqb	r0, [r3, #0]	@ zero_extendqisi2
	beq	.L1
	cmp	r3, #2
	ldreq	r3, [fp, #-24]
	ldrne	r3, [fp, #-24]
	ldreqh	r0, [r3, #0]
	ldrne	r0, [r3, #0]
	b	.L1
.L37:
	ldr	r0, [fp, #-36]
	b	.L1
.L36:
	sub	r0, fp, #36
	ldmia	r0, {r0, r1}	@ phole ldm
	b	.L1
.L38:
	ldrb	r0, [fp, #-36]	@ zero_extendqisi2
	b	.L1
.L41:
	.align	2
.L40:
	.word	vacall_function
.Lfe1:
	.size	vacall_receiver,.Lfe1-vacall_receiver
	.ident	"GCC: (GNU) 3.1"
