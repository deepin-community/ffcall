#include "asm-mips.h"
	.file	1 "vacall-mips.c"
	.text
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	callback_receiver
	DECLARE_FUNCTION(callback_receiver)
callback_receiver:
	.frame	$fp,104,$31		
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	reorder
	addiu	$sp,$sp,-104
	sw	$fp,96($sp)
	move	$fp,$sp
	sw	$31,100($sp)
	lw	$25,0($2)
	sw	$4,104($fp)
	lw	$4,4($2)
	sw	$5,108($fp)
	addiu	$5,$fp,104
	sw	$5,40($fp)
	addiu	$5,$fp,120
	sw	$5,56($fp)
	.cprestore	16
	sw	$6,112($fp)
	sw	$7,116($fp)
	sdc1	$f12,80($fp)
	sdc1	$f14,88($fp)
	swc1	$f12,68($fp)
	swc1	$f14,72($fp)
	sw	$0,24($fp)
	sw	$0,44($fp)
	sw	$0,48($fp)
	sw	$0,60($fp)
	sw	$0,64($fp)
	addiu	$5,$fp,24
	jal	$25
	lw	$4,48($fp)
	.set	noreorder
	.set	nomacro
	beq	$4,$0,$L1
	li	$5,1			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,$L23
	li	$5,2			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,$L23
	li	$5,3			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,$L29
	li	$5,4			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,$L30
	li	$5,5			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,$L31
	li	$5,6			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,$L27
	li	$5,7			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,$L27
	li	$5,8			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,$L27
	li	$5,9			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,$L27
	addiu	$5,$4,-10
	.set	macro
	.set	reorder

	sltu	$5,$5,2
	.set	noreorder
	.set	nomacro
	bne	$5,$0,$L32
	li	$5,12			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,$L33
	li	$5,13			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,$L34
	li	$5,14			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,$L27
	li	$5,15			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	bnel	$4,$5,$L37
	move	$sp,$fp
	.set	macro
	.set	reorder

	lw	$4,24($fp)
	andi	$4,$4,0x2
	.set	noreorder
	.set	nomacro
	beql	$4,$0,$L38
	lw	$2,44($fp)
	.set	macro
	.set	reorder

	lw	$4,52($fp)
	li	$5,1			
	.set	noreorder
	.set	nomacro
	beql	$4,$5,$L35
	lw	$4,44($fp)
	.set	macro
	.set	reorder

	li	$5,2			
	.set	noreorder
	.set	nomacro
	beq	$4,$5,$L36
	li	$5,4			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	bnel	$4,$5,$L37
	move	$sp,$fp
	.set	macro
	.set	reorder

	lw	$4,44($fp)
	lw	$2,0($4)
$L1:
$L38:
	move	$sp,$fp
$L37:
	lw	$31,100($sp)
	lw	$fp,96($sp)
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,104
	.set	macro
	.set	reorder

$L23:
	move	$sp,$fp
	lw	$31,100($sp)
	lb	$2,32($fp)
	lw	$fp,96($sp)
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,104
	.set	macro
	.set	reorder

$L27:
	move	$sp,$fp
	lw	$31,100($sp)
	lw	$2,32($fp)
	lw	$fp,96($sp)
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,104
	.set	macro
	.set	reorder

$L29:
	.set	noreorder
	.set	nomacro
	b	$L1
	lbu	$2,32($fp)
	.set	macro
	.set	reorder

$L30:
	.set	noreorder
	.set	nomacro
	b	$L1
	lh	$2,32($fp)
	.set	macro
	.set	reorder

$L31:
	.set	noreorder
	.set	nomacro
	b	$L1
	lhu	$2,32($fp)
	.set	macro
	.set	reorder

$L34:
	.set	noreorder
	.set	nomacro
	b	$L1
	ldc1	$f0,32($fp)
	.set	macro
	.set	reorder

$L32:
	lw	$2,32($fp)
	.set	noreorder
	.set	nomacro
	b	$L1
	lw	$3,36($fp)
	.set	macro
	.set	reorder

$L33:
	.set	noreorder
	.set	nomacro
	b	$L1
	lwc1	$f0,32($fp)
	.set	macro
	.set	reorder

$L35:
	.set	noreorder
	.set	nomacro
	b	$L1
	lbu	$2,0($4)
	.set	macro
	.set	reorder

$L36:
	lw	$4,44($fp)
	.set	noreorder
	.set	nomacro
	b	$L1
	lhu	$2,0($4)
	.set	macro
	.set	reorder

	.end	callback_receiver
	.size	callback_receiver, .-callback_receiver
	.align	2
	.globl	callback_get_receiver
	.set	nomips16
	.set	nomicromips
	.ent	callback_get_receiver
	DECLARE_FUNCTION(callback_get_receiver)
callback_get_receiver:
	.frame	$fp,8,$31		
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	reorder
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$sp,$fp
	lw	$fp,4($sp)
	la	$2,callback_receiver
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,8
	.set	macro
	.set	reorder

	.end	callback_get_receiver
	.size	callback_get_receiver, .-callback_get_receiver
