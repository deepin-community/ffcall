	.file	1 "avcall-mipsn32.c"
	.section .mdebug.abiN32
	.previous
	.nan	legacy
	.module	fp=64
	.module	oddspreg
	.abicalls
	.text
	.align	2
	.align	3
	.globl	avcall_call
	.set	nomips16
	.set	nomicromips
	.ent	avcall_call
	.type	avcall_call, @function
avcall_call:
	.frame	$fp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0xd0010000,-8
	.fmask	0x00000000,0
	lw	$5,20($4)
	lw	$12,24($4)
	lw	$2,36($4)
	addiu	$sp,$sp,-32
	sd	$fp,16($sp)
	sd	$16,0($sp)
	sd	$31,24($sp)
	move	$fp,$sp
	move	$16,$4
	addiu	$sp,$sp,-2064
	subu	$4,$5,$12
	move	$3,$sp
	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L2
	sra	$4,$4,3
	.set	macro
	.set	reorder

	andi	$6,$2,0x1
	.set	noreorder
	.set	nomacro
	beq	$6,$0,.L124
	andi	$6,$2,0x2
	.set	macro
	.set	reorder

#APP
 # 78 "avcall-mipsn32.c" 1
	lwc1 $f12,44($16)
 # 0 "" 2
#NO_APP
	andi	$6,$2,0x2
.L124:
	.set	noreorder
	.set	nomacro
	beq	$6,$0,.L125
	andi	$6,$2,0x4
	.set	macro
	.set	reorder

#APP
 # 80 "avcall-mipsn32.c" 1
	lwc1 $f13,48($16)
 # 0 "" 2
#NO_APP
	andi	$6,$2,0x4
.L125:
	.set	noreorder
	.set	nomacro
	beq	$6,$0,.L126
	andi	$6,$2,0x8
	.set	macro
	.set	reorder

#APP
 # 82 "avcall-mipsn32.c" 1
	lwc1 $f14,52($16)
 # 0 "" 2
#NO_APP
	andi	$6,$2,0x8
.L126:
	.set	noreorder
	.set	nomacro
	beq	$6,$0,.L127
	andi	$6,$2,0x10
	.set	macro
	.set	reorder

#APP
 # 84 "avcall-mipsn32.c" 1
	lwc1 $f15,56($16)
 # 0 "" 2
#NO_APP
	andi	$6,$2,0x10
.L127:
	.set	noreorder
	.set	nomacro
	beq	$6,$0,.L128
	andi	$6,$2,0x20
	.set	macro
	.set	reorder

#APP
 # 86 "avcall-mipsn32.c" 1
	lwc1 $f16,60($16)
 # 0 "" 2
#NO_APP
	andi	$6,$2,0x20
.L128:
	.set	noreorder
	.set	nomacro
	beq	$6,$0,.L129
	andi	$6,$2,0x40
	.set	macro
	.set	reorder

#APP
 # 88 "avcall-mipsn32.c" 1
	lwc1 $f17,64($16)
 # 0 "" 2
#NO_APP
	andi	$6,$2,0x40
.L129:
	.set	noreorder
	.set	nomacro
	beql	$6,$0,.L130
	andi	$2,$2,0x80
	.set	macro
	.set	reorder

#APP
 # 90 "avcall-mipsn32.c" 1
	lwc1 $f18,68($16)
 # 0 "" 2
#NO_APP
	andi	$2,$2,0x80
.L130:
	bne	$2,$0,.L117
.L2:
	lw	$2,40($16)
.L123:
	.set	noreorder
	.set	nomacro
	beql	$2,$0,.L122
	slt	$4,$4,9
	.set	macro
	.set	reorder

	andi	$6,$2,0x1
	.set	noreorder
	.set	nomacro
	beq	$6,$0,.L131
	andi	$6,$2,0x2
	.set	macro
	.set	reorder

#APP
 # 98 "avcall-mipsn32.c" 1
	ldc1 $f12,0($12)
 # 0 "" 2
#NO_APP
	andi	$6,$2,0x2
.L131:
	.set	noreorder
	.set	nomacro
	beq	$6,$0,.L132
	andi	$6,$2,0x4
	.set	macro
	.set	reorder

#APP
 # 100 "avcall-mipsn32.c" 1
	ldc1 $f13,8($12)
 # 0 "" 2
#NO_APP
	andi	$6,$2,0x4
.L132:
	.set	noreorder
	.set	nomacro
	beq	$6,$0,.L133
	andi	$6,$2,0x8
	.set	macro
	.set	reorder

#APP
 # 102 "avcall-mipsn32.c" 1
	ldc1 $f14,16($12)
 # 0 "" 2
#NO_APP
	andi	$6,$2,0x8
.L133:
	.set	noreorder
	.set	nomacro
	beq	$6,$0,.L134
	andi	$6,$2,0x10
	.set	macro
	.set	reorder

#APP
 # 104 "avcall-mipsn32.c" 1
	ldc1 $f15,24($12)
 # 0 "" 2
#NO_APP
	andi	$6,$2,0x10
.L134:
	.set	noreorder
	.set	nomacro
	beq	$6,$0,.L135
	andi	$6,$2,0x20
	.set	macro
	.set	reorder

#APP
 # 106 "avcall-mipsn32.c" 1
	ldc1 $f16,32($12)
 # 0 "" 2
#NO_APP
	andi	$6,$2,0x20
.L135:
	.set	noreorder
	.set	nomacro
	beq	$6,$0,.L136
	andi	$6,$2,0x40
	.set	macro
	.set	reorder

#APP
 # 108 "avcall-mipsn32.c" 1
	ldc1 $f17,40($12)
 # 0 "" 2
#NO_APP
	andi	$6,$2,0x40
.L136:
	.set	noreorder
	.set	nomacro
	beql	$6,$0,.L137
	andi	$2,$2,0x80
	.set	macro
	.set	reorder

#APP
 # 110 "avcall-mipsn32.c" 1
	ldc1 $f18,48($12)
 # 0 "" 2
#NO_APP
	andi	$2,$2,0x80
.L137:
	bne	$2,$0,.L118
	slt	$4,$4,9
.L122:
	.set	noreorder
	.set	nomacro
	bne	$4,$0,.L22
	addiu	$2,$12,64
	.set	macro
	.set	reorder

	.align	3
.L82:
	ld	$4,0($2)
	addiu	$3,$3,8
	addiu	$2,$2,8
	.set	noreorder
	.set	nomacro
	bne	$5,$2,.L82
	sd	$4,-8($3)
	.set	macro
	.set	reorder

.L22:
#APP
 # 119 "avcall-mipsn32.c" 1
	ld $4,0($12)
 # 0 "" 2
 # 120 "avcall-mipsn32.c" 1
	ld $5,8($12)
 # 0 "" 2
 # 121 "avcall-mipsn32.c" 1
	ld $6,16($12)
 # 0 "" 2
 # 122 "avcall-mipsn32.c" 1
	ld $7,24($12)
 # 0 "" 2
 # 123 "avcall-mipsn32.c" 1
	ld $8,32($12)
 # 0 "" 2
 # 124 "avcall-mipsn32.c" 1
	ld $9,40($12)
 # 0 "" 2
 # 125 "avcall-mipsn32.c" 1
	ld $10,48($12)
 # 0 "" 2
 # 126 "avcall-mipsn32.c" 1
	ld $11,56($12)
 # 0 "" 2
#NO_APP
	lw	$25,4($16)
	jalr	$25
	lw	$4,12($16)
	li	$5,1			# 0x1
	.set	noreorder
	.set	nomacro
	beq	$4,$5,.L19
	li	$5,2			# 0x2
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,.L107
	li	$5,3			# 0x3
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,.L107
	li	$5,4			# 0x4
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,.L107
	li	$5,5			# 0x5
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,.L109
	li	$5,6			# 0x6
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,.L109
	li	$5,7			# 0x7
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,.L110
	li	$5,8			# 0x8
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,.L110
	li	$5,9			# 0x9
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,.L110
	li	$5,10			# 0xa
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,.L110
	li	$5,11			# 0xb
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,.L115
	li	$5,12			# 0xc
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,.L115
	li	$5,13			# 0xd
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,.L119
	li	$5,14			# 0xe
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,.L120
	li	$5,15			# 0xf
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,.L110
	li	$5,16			# 0x10
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	bnel	$4,$5,.L138
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
	lw	$4,16($16)
	.set	macro
	.set	reorder

	lw	$3,16($16)
	li	$4,1			# 0x1
	.set	noreorder
	.set	nomacro
	beq	$3,$4,.L107
	li	$4,2			# 0x2
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$3,$4,.L109
	li	$4,4			# 0x4
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$3,$4,.L110
	li	$4,8			# 0x8
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beql	$3,$4,.L139
	lw	$3,8($16)
	.set	macro
	.set	reorder

.L19:
	move	$sp,$fp
.L138:
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$16,0($sp)
	move	$2,$0
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,32
	.set	macro
	.set	reorder

	.align	3
.L118:
#APP
 # 112 "avcall-mipsn32.c" 1
	ldc1 $f19,56($12)
 # 0 "" 2
#NO_APP
	.set	noreorder
	.set	nomacro
	b	.L122
	slt	$4,$4,9
	.set	macro
	.set	reorder

	.align	3
.L117:
#APP
 # 92 "avcall-mipsn32.c" 1
	lwc1 $f19,72($16)
 # 0 "" 2
#NO_APP
	.set	noreorder
	.set	nomacro
	b	.L123
	lw	$2,40($16)
	.set	macro
	.set	reorder

	.align	3
.L107:
	lw	$3,8($16)
	sb	$2,0($3)
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$16,0($sp)
	move	$2,$0
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,32
	.set	macro
	.set	reorder

	.align	3
.L110:
	lw	$3,8($16)
	sw	$2,0($3)
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$16,0($sp)
	move	$2,$0
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,32
	.set	macro
	.set	reorder

	.align	3
.L109:
	lw	$3,8($16)
	sh	$2,0($3)
	move	$sp,$fp
	ld	$31,24($sp)
	ld	$fp,16($sp)
	ld	$16,0($sp)
	move	$2,$0
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,32
	.set	macro
	.set	reorder

.L120:
	lw	$2,8($16)
	.set	noreorder
	.set	nomacro
	b	.L19
	sdc1	$f0,0($2)
	.set	macro
	.set	reorder

.L115:
	lw	$3,8($16)
.L139:
	.set	noreorder
	.set	nomacro
	b	.L19
	sd	$2,0($3)
	.set	macro
	.set	reorder

.L119:
	lw	$2,8($16)
	.set	noreorder
	.set	nomacro
	b	.L19
	swc1	$f0,0($2)
	.set	macro
	.set	reorder

.L37:
	addiu	$5,$4,-1
	sltu	$5,$5,16
	.set	noreorder
	.set	nomacro
	beq	$5,$0,.L19
	sltu	$8,$4,9
	.set	macro
	.set	reorder

	lw	$6,8($16)
	li	$7,-8			# 0xfffffffffffffff8
	andi	$5,$6,0x7
	and	$7,$6,$7
	.set	noreorder
	.set	nomacro
	beq	$8,$0,.L41
	addu	$4,$4,$5
	.set	macro
	.set	reorder

	sltu	$3,$4,9
	.set	noreorder
	.set	nomacro
	beq	$3,$0,.L42
	subu	$6,$0,$5
	.set	macro
	.set	reorder

	subu	$3,$0,$5
	sll	$3,$3,3
	ld	$8,0($7)
	addiu	$3,$3,63
	subu	$4,$0,$4
	li	$6,2			# 0x2
	dsll	$6,$6,$3
	sll	$4,$4,3
	sll	$5,$5,3
	li	$3,1			# 0x1
	dsll	$3,$3,$4
	dsra	$2,$2,$5
	dsubu	$3,$6,$3
	xor	$2,$2,$8
	and	$2,$3,$2
	xor	$2,$2,$8
	.set	noreorder
	.set	nomacro
	b	.L19
	sd	$2,0($7)
	.set	macro
	.set	reorder

.L41:
	subu	$9,$0,$5
	ld	$11,0($7)
	sll	$10,$9,3
	addiu	$6,$10,63
	sll	$5,$5,3
	li	$8,2			# 0x2
	dsll	$8,$8,$6
	dsra	$6,$2,$5
	daddiu	$8,$8,-1
	xor	$6,$6,$11
	and	$6,$8,$6
	xor	$6,$6,$11
	sltu	$8,$4,17
	.set	noreorder
	.set	nomacro
	bne	$8,$0,.L121
	sd	$6,0($7)
	.set	macro
	.set	reorder

	ld	$11,16($7)
	addiu	$6,$10,64
	subu	$4,$0,$4
	move	$8,$3
	dsll	$9,$3,$6
	sll	$4,$4,3
	li	$3,-1			# 0xffffffffffffffff
	dsll	$4,$3,$4
	xor	$3,$9,$11
	dsll	$2,$2,$6
	dsra	$5,$8,$5
	and	$3,$4,$3
	or	$2,$2,$5
	xor	$3,$3,$11
	sd	$2,8($7)
	.set	noreorder
	.set	nomacro
	b	.L19
	sd	$3,16($7)
	.set	macro
	.set	reorder

.L42:
	ld	$9,0($7)
	ld	$8,8($7)
	sll	$6,$6,3
	addiu	$10,$6,63
	sll	$3,$5,3
	subu	$4,$0,$4
	li	$5,2			# 0x2
	dsra	$3,$2,$3
	dsll	$5,$5,$10
	dsll	$2,$2,$6
	sll	$4,$4,3
	li	$6,-1			# 0xffffffffffffffff
	daddiu	$5,$5,-1
	xor	$3,$3,$9
	dsll	$4,$6,$4
	xor	$2,$2,$8
	and	$3,$5,$3
	and	$2,$4,$2
	xor	$3,$3,$9
	xor	$2,$2,$8
	sd	$3,0($7)
	.set	noreorder
	.set	nomacro
	b	.L19
	sd	$2,8($7)
	.set	macro
	.set	reorder

.L121:
	sll	$6,$9,2
	addiu	$6,$6,32
	ld	$8,8($7)
	dsll	$2,$2,$6
	dsll	$6,$2,$6
	dsra	$3,$3,$5
	subu	$2,$0,$4
	or	$3,$6,$3
	sll	$2,$2,3
	li	$5,-1			# 0xffffffffffffffff
	xor	$3,$3,$8
	dsll	$2,$5,$2
	and	$2,$3,$2
	xor	$2,$2,$8
	.set	noreorder
	.set	nomacro
	b	.L19
	sd	$2,8($7)
	.set	macro
	.set	reorder

	.end	avcall_call
	.size	avcall_call, .-avcall_call
	.ident	"GCC: (GNU) 5.4.0"
