#include "asm-mips.h"
	.file	1 "avcall-mips64.c"
	.text
	.align	2
	.align	3
	.globl	avcall_call
	.set	nomips16
	.set	nomicromips
	.ent	avcall_call
	DECLARE_FUNCTION(avcall_call)
avcall_call:
	.frame	$fp,32,$31		
	.mask	0xd0010000,-8
	.fmask	0x00000000,0
	ld	$2,40($4)
	ld	$12,48($4)
	lw	$3,68($4)
	daddiu	$sp,$sp,-32
	dsubu	$6,$2,$12
	dsra	$6,$6,3
	sd	$fp,16($sp)
	sd	$16,0($sp)
	sd	$31,24($sp)
	move	$fp,$sp
	daddiu	$sp,$sp,-2064
	move	$16,$4
	sll	$6,$6,0
	.set	noreorder
	.set	nomacro
	beq	$3,$0,.L2
	move	$2,$sp
	.set	macro
	.set	reorder

	andi	$4,$3,0x1
	.set	noreorder
	.set	nomacro
	beq	$4,$0,.L123
	andi	$4,$3,0x2
	.set	macro
	.set	reorder


 
	lwc1 $f12,76($16)
 

	andi	$4,$3,0x2
.L123:
	.set	noreorder
	.set	nomacro
	beq	$4,$0,.L124
	andi	$4,$3,0x4
	.set	macro
	.set	reorder


 
	lwc1 $f13,80($16)
 

	andi	$4,$3,0x4
.L124:
	.set	noreorder
	.set	nomacro
	beq	$4,$0,.L125
	andi	$4,$3,0x8
	.set	macro
	.set	reorder


 
	lwc1 $f14,84($16)
 

	andi	$4,$3,0x8
.L125:
	.set	noreorder
	.set	nomacro
	beq	$4,$0,.L126
	andi	$4,$3,0x10
	.set	macro
	.set	reorder


 
	lwc1 $f15,88($16)
 

	andi	$4,$3,0x10
.L126:
	.set	noreorder
	.set	nomacro
	beq	$4,$0,.L127
	andi	$4,$3,0x20
	.set	macro
	.set	reorder


 
	lwc1 $f16,92($16)
 

	andi	$4,$3,0x20
.L127:
	.set	noreorder
	.set	nomacro
	beq	$4,$0,.L128
	andi	$4,$3,0x40
	.set	macro
	.set	reorder


 
	lwc1 $f17,96($16)
 

	andi	$4,$3,0x40
.L128:
	.set	noreorder
	.set	nomacro
	beql	$4,$0,.L129
	andi	$3,$3,0x80
	.set	macro
	.set	reorder


 
	lwc1 $f18,100($16)
 

	andi	$3,$3,0x80
.L129:
	bne	$3,$0,.L116
.L2:
	lw	$3,72($16)
.L122:
	.set	noreorder
	.set	nomacro
	beql	$3,$0,.L121
	slt	$3,$6,9
	.set	macro
	.set	reorder

	andi	$4,$3,0x1
	.set	noreorder
	.set	nomacro
	beq	$4,$0,.L130
	andi	$4,$3,0x2
	.set	macro
	.set	reorder


 
	ldc1 $f12,0($12)
 

	andi	$4,$3,0x2
.L130:
	.set	noreorder
	.set	nomacro
	beq	$4,$0,.L131
	andi	$4,$3,0x4
	.set	macro
	.set	reorder


 
	ldc1 $f13,8($12)
 

	andi	$4,$3,0x4
.L131:
	.set	noreorder
	.set	nomacro
	beq	$4,$0,.L132
	andi	$4,$3,0x8
	.set	macro
	.set	reorder


 
	ldc1 $f14,16($12)
 

	andi	$4,$3,0x8
.L132:
	.set	noreorder
	.set	nomacro
	beq	$4,$0,.L133
	andi	$4,$3,0x10
	.set	macro
	.set	reorder


 
	ldc1 $f15,24($12)
 

	andi	$4,$3,0x10
.L133:
	.set	noreorder
	.set	nomacro
	beq	$4,$0,.L134
	andi	$4,$3,0x20
	.set	macro
	.set	reorder


 
	ldc1 $f16,32($12)
 

	andi	$4,$3,0x20
.L134:
	.set	noreorder
	.set	nomacro
	beq	$4,$0,.L135
	andi	$4,$3,0x40
	.set	macro
	.set	reorder


 
	ldc1 $f17,40($12)
 

	andi	$4,$3,0x40
.L135:
	.set	noreorder
	.set	nomacro
	beql	$4,$0,.L136
	andi	$3,$3,0x80
	.set	macro
	.set	reorder


 
	ldc1 $f18,48($12)
 

	andi	$3,$3,0x80
.L136:
	bne	$3,$0,.L117
	slt	$3,$6,9
.L121:
	.set	noreorder
	.set	nomacro
	bne	$3,$0,.L22
	daddiu	$4,$12,64
	.set	macro
	.set	reorder

	li	$3,8			
	.align	3
.L21:
	ld	$5,0($4)
	addiu	$3,$3,1
	daddiu	$4,$4,8
	sd	$5,0($2)
	.set	noreorder
	.set	nomacro
	bne	$6,$3,.L21
	daddiu	$2,$2,8
	.set	macro
	.set	reorder

.L22:

 
	ld $4,0($12)
 
 
	ld $5,8($12)
 
 
	ld $6,16($12)
 
 
	ld $7,24($12)
 
 
	ld $8,32($12)
 
 
	ld $9,40($12)
 
 
	ld $10,48($12)
 
 
	ld $11,56($12)
 

	ld	$25,8($16)
	jalr	$25
	lw	$4,24($16)
	li	$5,1			
	.set	noreorder
	.set	nomacro
	beq	$4,$5,.L19
	li	$5,2			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,.L106
	li	$5,3			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,.L106
	li	$5,4			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,.L106
	li	$5,5			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,.L108
	li	$5,6			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,.L108
	li	$5,7			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,.L111
	li	$5,8			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,.L111
	li	$5,9			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,.L109
	li	$5,10			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,.L109
	li	$5,11			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,.L109
	li	$5,12			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,.L109
	li	$5,13			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,.L118
	li	$5,14			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,.L119
	li	$5,15			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,.L109
	li	$5,16			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	bnel	$4,$5,.L137
	move	$sp,$fp
	.set	macro
	.set	reorder

	lw	$4,0($16)
	andi	$5,$4,0x200
	.set	noreorder
	.set	nomacro
	beq	$5,$0,.L19
	andi	$4,$4,0x4
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beql	$4,$0,.L37
	ld	$4,32($16)
	.set	macro
	.set	reorder

	ld	$3,32($16)
	li	$4,1			
	.set	noreorder
	.set	nomacro
	beq	$3,$4,.L106
	li	$4,2			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$3,$4,.L108
	li	$4,4			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$3,$4,.L111
	li	$4,8			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beql	$3,$4,.L138
	ld	$3,16($16)
	.set	macro
	.set	reorder

.L19:
	move	$sp,$fp
.L137:
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$16,0($sp)
	move	$2,$0
	.set	noreorder
	.set	nomacro
	j	$31
	daddiu	$sp,$sp,32
	.set	macro
	.set	reorder

	.align	3
.L117:

 
	ldc1 $f19,56($12)
 

	.set	noreorder
	.set	nomacro
	b	.L121
	slt	$3,$6,9
	.set	macro
	.set	reorder

	.align	3
.L116:

 
	lwc1 $f19,104($16)
 

	.set	noreorder
	.set	nomacro
	b	.L122
	lw	$3,72($16)
	.set	macro
	.set	reorder

	.align	3
.L106:
	ld	$3,16($16)
	sb	$2,0($3)
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$16,0($sp)
	move	$2,$0
	.set	noreorder
	.set	nomacro
	j	$31
	daddiu	$sp,$sp,32
	.set	macro
	.set	reorder

.L111:
	ld	$3,16($16)
	.set	noreorder
	.set	nomacro
	b	.L19
	sw	$2,0($3)
	.set	macro
	.set	reorder

	.align	3
.L108:
	ld	$3,16($16)
	sh	$2,0($3)
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$16,0($sp)
	move	$2,$0
	.set	noreorder
	.set	nomacro
	j	$31
	daddiu	$sp,$sp,32
	.set	macro
	.set	reorder

	.align	3
.L109:
	ld	$3,16($16)
	.align	3
.L138:
	sd	$2,0($3)
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$16,0($sp)
	move	$2,$0
	.set	noreorder
	.set	nomacro
	j	$31
	daddiu	$sp,$sp,32
	.set	macro
	.set	reorder

.L119:
	ld	$2,16($16)
	.set	noreorder
	.set	nomacro
	b	.L19
	sdc1	$f0,0($2)
	.set	macro
	.set	reorder

.L118:
	ld	$2,16($16)
	.set	noreorder
	.set	nomacro
	b	.L19
	swc1	$f0,0($2)
	.set	macro
	.set	reorder

.L37:
	daddiu	$5,$4,-1
	sltu	$5,$5,16
	.set	noreorder
	.set	nomacro
	beq	$5,$0,.L19
	sltu	$7,$4,9
	.set	macro
	.set	reorder

	ld	$6,16($16)
	li	$8,-8			
	andi	$5,$6,0x7
	daddu	$4,$4,$5
	.set	noreorder
	.set	nomacro
	beq	$7,$0,.L41
	and	$6,$6,$8
	.set	macro
	.set	reorder

	sltu	$3,$4,9
	.set	noreorder
	.set	nomacro
	beq	$3,$0,.L42
	subu	$8,$0,$5
	.set	macro
	.set	reorder

	subu	$3,$0,$5
	sll	$7,$4,0
	sll	$3,$3,3
	ld	$8,0($6)
	addiu	$3,$3,63
	subu	$7,$0,$7
	li	$4,2			
	dsll	$4,$4,$3
	sll	$7,$7,3
	sll	$5,$5,3
	li	$3,1			
	dsll	$3,$3,$7
	dsra	$2,$2,$5
	dsubu	$3,$4,$3
	xor	$2,$2,$8
	and	$2,$3,$2
	xor	$2,$2,$8
	.set	noreorder
	.set	nomacro
	b	.L19
	sd	$2,0($6)
	.set	macro
	.set	reorder

.L41:
	subu	$9,$0,$5
	ld	$11,0($6)
	sll	$10,$9,3
	addiu	$7,$10,63
	sll	$5,$5,3
	li	$8,2			
	dsll	$8,$8,$7
	dsra	$7,$2,$5
	daddiu	$8,$8,-1
	xor	$7,$7,$11
	and	$7,$8,$7
	xor	$7,$7,$11
	sltu	$8,$4,17
	.set	noreorder
	.set	nomacro
	bne	$8,$0,.L120
	sd	$7,0($6)
	.set	macro
	.set	reorder

	ld	$9,16($6)
	sll	$4,$4,0
	addiu	$10,$10,64
	subu	$4,$0,$4
	move	$8,$3
	sll	$4,$4,3
	dsll	$3,$3,$10
	li	$7,-1			
	dsll	$4,$7,$4
	xor	$3,$3,$9
	dsll	$2,$2,$10
	dsra	$5,$8,$5
	and	$3,$4,$3
	or	$2,$2,$5
	xor	$3,$3,$9
	sd	$2,8($6)
	.set	noreorder
	.set	nomacro
	b	.L19
	sd	$3,16($6)
	.set	macro
	.set	reorder

.L42:
	ld	$11,0($6)
	ld	$10,8($6)
	sll	$7,$4,0
	sll	$8,$8,3
	sll	$5,$5,3
	subu	$9,$0,$7
	addiu	$4,$8,63
	li	$7,2			
	dsra	$3,$2,$5
	dsll	$4,$7,$4
	dsll	$2,$2,$8
	sll	$7,$9,3
	li	$5,-1			
	daddiu	$4,$4,-1
	xor	$3,$3,$11
	dsll	$5,$5,$7
	xor	$2,$2,$10
	and	$3,$4,$3
	and	$2,$5,$2
	xor	$3,$3,$11
	xor	$2,$2,$10
	sd	$3,0($6)
	.set	noreorder
	.set	nomacro
	b	.L19
	sd	$2,8($6)
	.set	macro
	.set	reorder

.L120:
	sll	$7,$9,2
	addiu	$7,$7,32
	ld	$8,8($6)
	dsll	$2,$2,$7
	sll	$4,$4,0
	dsll	$7,$2,$7
	dsra	$3,$3,$5
	subu	$4,$0,$4
	or	$3,$7,$3
	sll	$4,$4,3
	li	$2,-1			
	xor	$3,$3,$8
	dsll	$2,$2,$4
	and	$2,$3,$2
	xor	$2,$2,$8
	.set	noreorder
	.set	nomacro
	b	.L19
	sd	$2,8($6)
	.set	macro
	.set	reorder

	.end	avcall_call
	.size	avcall_call, .-avcall_call
