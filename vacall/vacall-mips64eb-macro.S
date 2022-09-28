#include "asm-mips.h"
	.file	1 "vacall-mips64.c"
	.text
	.align	2
	.align	3
	.globl	vacall_receiver
	.set	nomips16
	.set	nomicromips
	.ent	vacall_receiver
	DECLARE_FUNCTION(vacall_receiver)
vacall_receiver:
	.frame	$fp,272,$31		
	.mask	0xd0070000,-72
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-272
	sd	$28,184($sp)
	lui	$28,%hi(%neg(%gp_rel(vacall_receiver)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(vacall_receiver)))
	ld	$12,%got_disp(vacall_function)($28)
	sd	$fp,192($sp)
	move	$fp,$sp
	ld	$25,0($12)
	daddiu	$12,$fp,208
	sd	$31,200($sp)
	sd	$18,176($sp)
	sd	$17,168($sp)
	sd	$16,160($sp)
	sd	$4,208($fp)
	sd	$5,216($fp)
	sd	$6,224($fp)
	sd	$7,232($fp)
	sd	$8,240($fp)
	sd	$9,248($fp)
	sd	$10,256($fp)
	sd	$11,264($fp)
	sdc1	$f12,96($fp)
	sdc1	$f13,104($fp)
	sdc1	$f14,112($fp)
	sdc1	$f15,120($fp)
	sdc1	$f16,128($fp)
	sdc1	$f17,136($fp)
	sdc1	$f18,144($fp)
	sdc1	$f19,152($fp)
	swc1	$f12,60($fp)
	swc1	$f13,64($fp)
	swc1	$f14,68($fp)
	swc1	$f15,72($fp)
	swc1	$f16,76($fp)
	swc1	$f17,80($fp)
	swc1	$f18,84($fp)
	swc1	$f19,88($fp)
	move	$4,$fp
	sw	$0,0($fp)
	sd	$12,24($fp)
	sd	$0,32($fp)
	sw	$0,40($fp)
	jalr	$25
	sw	$0,56($fp)

	lw	$12,40($fp)
	beq	$12,$0,.L1
	li	$13,1			

	beq	$12,$13,.L43
	li	$13,2			

	beq	$12,$13,.L43
	li	$13,3			

	beq	$12,$13,.L46
	li	$13,4			

	beq	$12,$13,.L47
	li	$13,5			

	beq	$12,$13,.L48
	li	$13,6			

	beq	$12,$13,.L49
	li	$13,7			

	beq	$12,$13,.L50
	li	$13,8			

	beq	$12,$13,.L44
	li	$13,9			

	beq	$12,$13,.L44
	li	$13,10			

	beq	$12,$13,.L44
	li	$13,11			

	beq	$12,$13,.L44
	li	$13,12			

	beq	$12,$13,.L51
	li	$13,13			

	beq	$12,$13,.L52
	li	$13,14			

	beq	$12,$13,.L44
	li	$13,15			

	bnel	$12,$13,.L58
	move	$sp,$fp

	lw	$12,0($fp)
	andi	$13,$12,0x400
	beq	$13,$0,.L1
	andi	$13,$12,0x4

	beq	$13,$0,.L19
	ld	$14,48($fp)

	ld	$12,48($fp)
	li	$13,1			
	beq	$12,$13,.L53
	li	$13,2			

	beq	$12,$13,.L54
	li	$13,4			

	beq	$12,$13,.L55
	li	$13,8			

	bnel	$12,$13,.L58
	move	$sp,$fp

	ld	$12,32($fp)
	ld	$2,0($12)
.L1:
	move	$sp,$fp
.L58:
	ld	$31,200($sp)
	ld	$fp,192($sp)
	ld	$28,184($sp)
	ld	$18,176($sp)
	ld	$17,168($sp)
	ld	$16,160($sp)
	j	$31
	daddiu	$sp,$sp,272

	.align	3
.L43:
	move	$sp,$fp
	ld	$31,200($sp)
	ld	$28,184($sp)
	ld	$18,176($sp)
	ld	$17,168($sp)
	ld	$16,160($sp)
	lb	$2,8($fp)
	ld	$fp,192($sp)
	j	$31
	daddiu	$sp,$sp,272

	.align	3
.L44:
	b	.L1
	ld	$2,8($fp)

	.align	3
.L46:
	b	.L1
	lbu	$2,8($fp)

	.align	3
.L47:
	b	.L1
	lh	$2,8($fp)

	.align	3
.L48:
	b	.L1
	lhu	$2,8($fp)

	.align	3
.L49:
	b	.L1
	lw	$2,8($fp)

	.align	3
.L51:
	b	.L1
	lwc1	$f0,8($fp)

	.align	3
.L50:
	b	.L1
	lwu	$2,8($fp)

.L52:
	b	.L1
	ldc1	$f0,8($fp)

.L19:
	daddiu	$13,$14,-1
	sltu	$13,$13,16
	beql	$13,$0,.L59
	andi	$13,$12,0x800

	ld	$13,32($fp)
	li	$24,-8			
	sltu	$25,$14,9
	andi	$15,$13,0x7
	and	$24,$13,$24
	beq	$25,$0,.L24
	daddu	$13,$14,$15

	sltu	$25,$13,9
	sll	$13,$13,0
	beq	$25,$0,.L25
	subu	$13,$0,$13

	ld	$25,0($24)
	sll	$13,$13,3
	li	$24,-1			
	dsll	$13,$24,$13
	and	$13,$13,$25
	sll	$15,$15,3
	dsll	$2,$13,$15
.L23:
	andi	$13,$12,0x800
.L59:
	beql	$13,$0,.L27
	andi	$12,$12,0x1000

	li	$13,4			
	beq	$14,$13,.L56
	li	$13,8			

	beql	$14,$13,.L57
	ld	$13,32($fp)

	andi	$12,$12,0x1000
	beql	$12,$0,.L58
	move	$sp,$fp

	li	$12,16			
.L60:
	bnel	$14,$12,.L58
	move	$sp,$fp

	ld	$12,32($fp)
	ldc1	$f0,0($12)
	b	.L1
	ldc1	$f2,8($12)

.L27:
	beq	$12,$0,.L1
	li	$12,8			

	bne	$14,$12,.L60
	li	$12,16			

	ld	$13,32($fp)
	b	.L1
	ldc1	$f0,0($13)

.L24:
	sltu	$25,$13,17
	beq	$25,$0,.L26
	sll	$13,$13,0

	ld	$18,8($24)
	subu	$13,$0,$13
	move	$16,$15
	li	$25,-1			
	subu	$15,$0,$15
	sll	$13,$13,3
	dsll	$13,$25,$13
	ld	$17,0($24)
	sll	$25,$15,2
	addiu	$24,$25,32
	and	$13,$13,$18
	sll	$15,$16,3
	dsra	$25,$13,$24
	dsll	$16,$17,$15
	dsra	$24,$25,$24
	or	$2,$16,$24
	b	.L23
	dsll	$3,$13,$15

.L53:
	ld	$12,32($fp)
	b	.L1
	lbu	$2,0($12)

.L54:
	ld	$12,32($fp)
	b	.L1
	lhu	$2,0($12)

.L26:
	ld	$18,16($24)
	subu	$13,$0,$13
	ld	$16,8($24)
	ld	$17,0($24)
	subu	$25,$0,$15
	sll	$13,$13,3
	li	$24,-1			
	dsll	$24,$24,$13
	sll	$25,$25,3
	sll	$15,$15,3
	addiu	$25,$25,64
	and	$13,$24,$18
	dsra	$13,$13,$25
	dsll	$24,$17,$15
	dsra	$17,$16,$25
	dsll	$15,$16,$15
	or	$2,$24,$17
	b	.L23
	or	$3,$13,$15

.L56:
	ld	$12,32($fp)
	b	.L1
	lwc1	$f0,0($12)

.L55:
	ld	$12,32($fp)
	b	.L1
	lwu	$2,0($12)

.L25:
	ld	$16,8($24)
	ld	$25,0($24)
	sll	$13,$13,3
	li	$24,-1			
	dsll	$13,$24,$13
	subu	$24,$0,$15
	and	$13,$13,$16
	sll	$24,$24,3
	sll	$15,$15,3
	dsra	$13,$13,$24
	dsll	$15,$25,$15
	b	.L23
	or	$2,$13,$15

.L57:
	andi	$12,$12,0x1000
	lwc1	$f0,0($13)
	beq	$12,$0,.L1
	lwc1	$f2,4($13)

	b	.L1
	ldc1	$f0,0($13)

	.set	macro
	.set	reorder
	.end	vacall_receiver
	.size	vacall_receiver, .-vacall_receiver
