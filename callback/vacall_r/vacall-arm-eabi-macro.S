#include "asm-arm.h"
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
	.text
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	callback_receiver, %function
FUNBEGIN(callback_receiver)
	// Function supports interworking.
	// args = 28, pretend = 0, frame = 32
	// frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, $4
	sub	sp, sp, $32
	mov	r3, $0
	ldr	r2, [fp, $4]
	add	ip, fp, $28
	str	r3, [fp, $-36]
	str	r3, [fp, $-16]
	str	r3, [fp, $-12]
	sub	r1, fp, $36
	ldr	r3, [r2]
	ldr	r0, [r2, $4]
	str	ip, [fp, $-20]
	mov	lr, pc
	bx	r3
	ldr	r3, [fp, $-12]
	cmp	r3, $0
	beq	L(1)
	cmp	r3, $1
	beq	L(25)
	cmp	r3, $2
	ldrsbeq	r0, [fp, $-28]
	beq	L(1)
	cmp	r3, $3
	beq	L(25)
	cmp	r3, $4
	ldrsheq	r0, [fp, $-28]
	beq	L(1)
	cmp	r3, $5
	ldrheq	r0, [fp, $-28]
	beq	L(1)
	cmp	r3, $6
	beq	L(27)
	cmp	r3, $7
	beq	L(27)
	cmp	r3, $8
	beq	L(27)
	cmp	r3, $9
	beq	L(27)
	sub	r2, r3, $10
	cmp	r2, $1
	bls	L(28)
	cmp	r3, $12
	ldreq	r0, [fp, $-28]	// float
	beq	L(1)
	cmp	r3, $13
	beq	L(28)
	cmp	r3, $14
	beq	L(27)
	cmp	r3, $15
	bne	L(1)
	ldr	r3, [fp, $-36]
	tst	r3, $1024
	beq	L(1)
	ldr	r3, [fp, $-8]
	cmp	r3, $1
	beq	L(30)
	cmp	r3, $2
	ldr	r3, [fp, $-16]
	ldrheq	r0, [r3]
	ldrne	r0, [r3]
L(1):
	sub	sp, fp, $4
	// sp needed
	pop	{fp, lr}
	bx	lr
L(25):
	ldrb	r0, [fp, $-28]	// zero_extendqisi2
	sub	sp, fp, $4
	// sp needed
	pop	{fp, lr}
	bx	lr
L(27):
	ldr	r0, [fp, $-28]
	sub	sp, fp, $4
	// sp needed
	pop	{fp, lr}
	bx	lr
L(28):
	sub	r0, fp, $28
	ldm	r0, {r0, r1}
	b	L(1)
L(30):
	ldr	r3, [fp, $-16]
	ldrb	r0, [r3]	// zero_extendqisi2
	b	L(1)
	FUNEND(callback_receiver)
	.align	2
	.global C(callback_get_receiver)
	.syntax unified
	.arm
	.fpu softvfp
	.type	callback_get_receiver, %function
FUNBEGIN(callback_get_receiver)
	// Function supports interworking.
	// args = 0, pretend = 0, frame = 0
	// frame_needed = 1, uses_anonymous_args = 0
	// link register save eliminated.
	str	fp, [sp, $-4]!
	ldr	r0, L(33)
	add	fp, sp, $0
L(PIC0):
	add	r0, pc, r0
	add	sp, fp, $0
	// sp needed
	ldr	fp, [sp], $4
	bx	lr
L(34):
	.align	2
L(33):
	.word	callback_receiver-(L(PIC0)+8)
	FUNEND(callback_get_receiver)
#if defined __linux__ || defined __FreeBSD__ || defined __FreeBSD_kernel__ || defined __DragonFly__
	.section .note.GNU-stack,"",%progbits
#endif
