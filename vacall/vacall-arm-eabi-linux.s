	.arch armv4t
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"vacall-arm.c"
	.text
	.align	2
	.global	vacall_receiver
	.syntax unified
	.arm
	.fpu softvfp
	.type	vacall_receiver, %function
vacall_receiver:
	@ Function supports interworking.
	@ args = 20, pretend = 16, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	sub	sp, sp, #16
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #36
	mov	lr, #0
	ldr	r4, .L31
	add	ip, fp, #4
	stm	ip, {r0, r1, r2, r3}
	str	ip, [fp, #-28]
	ldr	r3, [r4]
	sub	r0, fp, #44
	str	lr, [fp, #-44]
	str	lr, [fp, #-24]
	str	lr, [fp, #-20]
	mov	lr, pc
	bx	r3
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	beq	.L1
	cmp	r3, #1
	beq	.L25
	cmp	r3, #2
	ldrsbeq	r0, [fp, #-36]
	beq	.L1
	cmp	r3, #3
	beq	.L25
	cmp	r3, #4
	ldrsheq	r0, [fp, #-36]
	beq	.L1
	cmp	r3, #5
	ldrheq	r0, [fp, #-36]
	beq	.L1
	cmp	r3, #6
	beq	.L27
	cmp	r3, #7
	beq	.L27
	cmp	r3, #8
	beq	.L27
	cmp	r3, #9
	beq	.L27
	sub	r2, r3, #10
	cmp	r2, #1
	bls	.L28
	cmp	r3, #12
	ldreq	r0, [fp, #-36]	@ float
	beq	.L1
	cmp	r3, #13
	beq	.L28
	cmp	r3, #14
	beq	.L27
	cmp	r3, #15
	bne	.L1
	ldr	r3, [fp, #-44]
	tst	r3, #1024
	beq	.L1
	ldr	r3, [fp, #-16]
	cmp	r3, #1
	beq	.L30
	cmp	r3, #2
	ldr	r3, [fp, #-24]
	ldrheq	r0, [r3]
	ldrne	r0, [r3]
.L1:
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, lr}
	add	sp, sp, #16
	bx	lr
.L25:
	ldrb	r0, [fp, #-36]	@ zero_extendqisi2
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, lr}
	add	sp, sp, #16
	bx	lr
.L27:
	ldr	r0, [fp, #-36]
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, lr}
	add	sp, sp, #16
	bx	lr
.L28:
	sub	r0, fp, #36
	ldm	r0, {r0, r1}
	b	.L1
.L30:
	ldr	r3, [fp, #-24]
	ldrb	r0, [r3]	@ zero_extendqisi2
	b	.L1
.L32:
	.align	2
.L31:
	.word	vacall_function
	.size	vacall_receiver, .-vacall_receiver
	.ident	"GCC: (GNU) 6.5.0"
	.section	.note.GNU-stack,"",%progbits
