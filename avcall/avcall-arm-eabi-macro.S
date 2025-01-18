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
	.global C(avcall_call)
	.syntax unified
	.arm
	.fpu softvfp
	.type	avcall_call, %function
FUNBEGIN(avcall_call)
	// Function supports interworking.
	// args = 0, pretend = 0, frame = 0
	// frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, fp, lr}
	mov	r4, r0
	ldr	r0, [r0, $20]
	ldr	ip, [r4, $24]
	sub	r3, sp, $1024
	sub	r2, r0, ip
	cmp	r2, $19
	add	fp, sp, $12
	sub	sp, r3, $8
	movgt	r2, sp
	addgt	r3, ip, $16
	subgt	r2, r2, $4
	ble	L(6)
L(5):
	ldr	r1, [r3], $4
	cmp	r0, r3
	str	r1, [r2, $4]!
	bne	L(5)
L(6):
	ldm	ip, {r0, r1, r2, r3}
	ldr	r5, [r4, $4]
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, $12]
	cmp	r3, $1
	mov	r2, r0
	beq	L(3)
	cmp	r3, $2
	beq	L(34)
	cmp	r3, $3
	beq	L(34)
	cmp	r3, $4
	beq	L(34)
	cmp	r3, $5
	beq	L(36)
	cmp	r3, $6
	beq	L(36)
	cmp	r3, $7
	beq	L(37)
	cmp	r3, $8
	beq	L(37)
	cmp	r3, $9
	beq	L(37)
	cmp	r3, $10
	beq	L(37)
	sub	ip, r3, $11
	cmp	ip, $1
	bls	L(38)
	cmp	r3, $13
	beq	L(40)
	cmp	r3, $14
	beq	L(41)
	cmp	r3, $15
	beq	L(37)
	cmp	r3, $16
	bne	L(3)
	ldr	r3, [r4]
	tst	r3, $512
	beq	L(3)
	ldr	r3, [r4, $16]
	cmp	r3, $1
	beq	L(34)
	cmp	r3, $2
	beq	L(36)
	cmp	r3, $4
	bls	L(37)
	cmp	r3, $8
	bne	L(3)
L(38):
	ldr	r3, [r4, $8]
	str	r2, [r3]
	str	r1, [r3, $4]
L(3):
	mov	r0, $0
	sub	sp, fp, $12
	// sp needed
	pop	{r4, r5, fp, lr}
	bx	lr
L(34):
	mov	r0, $0
	ldr	r3, [r4, $8]
	strb	r2, [r3]
	sub	sp, fp, $12
	// sp needed
	pop	{r4, r5, fp, lr}
	bx	lr
L(37):
	mov	r0, $0
	ldr	r3, [r4, $8]
	str	r2, [r3]
	sub	sp, fp, $12
	// sp needed
	pop	{r4, r5, fp, lr}
	bx	lr
L(36):
	mov	r0, $0
	ldr	r3, [r4, $8]
	strh	r2, [r3]	// movhi
	sub	sp, fp, $12
	// sp needed
	pop	{r4, r5, fp, lr}
	bx	lr
L(40):
	ldr	r3, [r4, $8]
	str	r0, [r3]	// float
	b	L(3)
L(41):
	ldr	r3, [r4, $8]
	stm	r3, {r0-r1}
	b	L(3)
	FUNEND(avcall_call)
#if defined __linux__ || defined __FreeBSD__ || defined __FreeBSD_kernel__ || defined __DragonFly__
	.section .note.GNU-stack,"",%progbits
#endif
