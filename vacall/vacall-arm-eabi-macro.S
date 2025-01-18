#include "asm-arm.h"
#ifdef __PIC__
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
	.global C(vacall_receiver)
	.syntax unified
	.arm
	.fpu softvfp
	.type	vacall_receiver, %function
FUNBEGIN(vacall_receiver)
	// Function supports interworking.
	// args = 20, pretend = 16, frame = 32
	// frame_needed = 1, uses_anonymous_args = 0
	sub	sp, sp, $16
	push	{fp, lr}
	mov	lr, $0
	add	fp, sp, $4
	sub	sp, sp, $32
	add	ip, fp, $4
	stm	ip, {r0, r1, r2, r3}
	ldr	r3, L(31)
	str	lr, [fp, $-36]
	str	lr, [fp, $-16]
	str	lr, [fp, $-12]
	str	ip, [fp, $-20]
	ldr	r2, L(31)+4
L(PIC0):
	add	r3, pc, r3
	ldr	r3, [r3, r2]
	sub	r0, fp, $36
	ldr	r3, [r3]
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
	add	sp, sp, $16
	bx	lr
L(25):
	ldrb	r0, [fp, $-28]	// zero_extendqisi2
	sub	sp, fp, $4
	// sp needed
	pop	{fp, lr}
	add	sp, sp, $16
	bx	lr
L(27):
	ldr	r0, [fp, $-28]
	sub	sp, fp, $4
	// sp needed
	pop	{fp, lr}
	add	sp, sp, $16
	bx	lr
L(28):
	sub	r0, fp, $28
	ldm	r0, {r0, r1}
	b	L(1)
L(30):
	ldr	r3, [fp, $-16]
	ldrb	r0, [r3]	// zero_extendqisi2
	b	L(1)
L(32):
	.align	2
L(31):
	.word	_GLOBAL_OFFSET_TABLE_-(L(PIC0)+8)
	.word	C(vacall_function)(GOT)
	FUNEND(vacall_receiver)
#else
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
	.global C(vacall_receiver)
	.syntax unified
	.arm
	.fpu softvfp
	.type	vacall_receiver, %function
FUNBEGIN(vacall_receiver)
	// Function supports interworking.
	// args = 20, pretend = 16, frame = 32
	// frame_needed = 1, uses_anonymous_args = 0
	sub	sp, sp, $16
	push	{r4, fp, lr}
	add	fp, sp, $8
	sub	sp, sp, $36
	mov	lr, $0
	ldr	r4, L(31)
	add	ip, fp, $4
	stm	ip, {r0, r1, r2, r3}
	str	ip, [fp, $-28]
	ldr	r3, [r4]
	sub	r0, fp, $44
	str	lr, [fp, $-44]
	str	lr, [fp, $-24]
	str	lr, [fp, $-20]
	mov	lr, pc
	bx	r3
	ldr	r3, [fp, $-20]
	cmp	r3, $0
	beq	L(1)
	cmp	r3, $1
	beq	L(25)
	cmp	r3, $2
	ldrsbeq	r0, [fp, $-36]
	beq	L(1)
	cmp	r3, $3
	beq	L(25)
	cmp	r3, $4
	ldrsheq	r0, [fp, $-36]
	beq	L(1)
	cmp	r3, $5
	ldrheq	r0, [fp, $-36]
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
	ldreq	r0, [fp, $-36]	// float
	beq	L(1)
	cmp	r3, $13
	beq	L(28)
	cmp	r3, $14
	beq	L(27)
	cmp	r3, $15
	bne	L(1)
	ldr	r3, [fp, $-44]
	tst	r3, $1024
	beq	L(1)
	ldr	r3, [fp, $-16]
	cmp	r3, $1
	beq	L(30)
	cmp	r3, $2
	ldr	r3, [fp, $-24]
	ldrheq	r0, [r3]
	ldrne	r0, [r3]
L(1):
	sub	sp, fp, $8
	// sp needed
	pop	{r4, fp, lr}
	add	sp, sp, $16
	bx	lr
L(25):
	ldrb	r0, [fp, $-36]	// zero_extendqisi2
	sub	sp, fp, $8
	// sp needed
	pop	{r4, fp, lr}
	add	sp, sp, $16
	bx	lr
L(27):
	ldr	r0, [fp, $-36]
	sub	sp, fp, $8
	// sp needed
	pop	{r4, fp, lr}
	add	sp, sp, $16
	bx	lr
L(28):
	sub	r0, fp, $36
	ldm	r0, {r0, r1}
	b	L(1)
L(30):
	ldr	r3, [fp, $-24]
	ldrb	r0, [r3]	// zero_extendqisi2
	b	L(1)
L(32):
	.align	2
L(31):
	.word	C(vacall_function)
	FUNEND(vacall_receiver)
#endif
#if defined __linux__ || defined __FreeBSD__ || defined __FreeBSD_kernel__ || defined __DragonFly__
	.section .note.GNU-stack,"",%progbits
#endif
