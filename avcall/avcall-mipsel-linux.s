	.file	1 "avcall-mips.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.text
	.align	2
	.globl	avcall_call
	.set	nomips16
	.set	nomicromips
	.ent	avcall_call
	.type	avcall_call, @function
avcall_call:
	.frame	$fp,40,$31		# vars= 0, regs= 3/0, args= 16, gp= 8
	.mask	0xc0010000,-4
	.fmask	0x00000000,0
	lw	$6,40($4)
	lw	$5,20($4)
	lw	$8,24($4)
	addiu	$sp,$sp,-40
	andi	$2,$6,0x1
	sw	$fp,32($sp)
	sw	$16,28($sp)
	move	$fp,$sp
	sw	$31,36($sp)
	move	$16,$4
	addiu	$sp,$sp,-1032
	subu	$4,$5,$8
	move	$3,$sp
	.set	noreorder
	.set	nomacro
	beq	$2,$0,$L2
	sra	$4,$4,2
	.set	macro
	.set	reorder

#APP
 # 76 "avcall-mips.c" 1
	l.s $f12,48($16)
 # 0 "" 2
#NO_APP
$L2:
	lw	$2,44($16)
	andi	$7,$2,0x1
	.set	noreorder
	.set	nomacro
	beql	$7,$0,$L54
	andi	$6,$6,0x2
	.set	macro
	.set	reorder

#APP
 # 78 "avcall-mips.c" 1
	l.d $f12,56($16)
 # 0 "" 2
#NO_APP
	andi	$6,$6,0x2
$L54:
	.set	noreorder
	.set	nomacro
	beql	$6,$0,$L55
	andi	$2,$2,0x2
	.set	macro
	.set	reorder

#APP
 # 80 "avcall-mips.c" 1
	l.s $f14,52($16)
 # 0 "" 2
#NO_APP
	andi	$2,$2,0x2
$L55:
	.set	noreorder
	.set	nomacro
	beql	$2,$0,$L56
	slt	$4,$4,5
	.set	macro
	.set	reorder

#APP
 # 82 "avcall-mips.c" 1
	l.d $f14,64($16)
 # 0 "" 2
#NO_APP
	slt	$4,$4,5
$L56:
	addiu	$2,$8,16
	.set	noreorder
	.set	nomacro
	bne	$4,$0,$L10
	addiu	$3,$3,16
	.set	macro
	.set	reorder

$L36:
	lw	$4,0($2)
	addiu	$3,$3,4
	addiu	$2,$2,4
	.set	noreorder
	.set	nomacro
	bne	$5,$2,$L36
	sw	$4,-4($3)
	.set	macro
	.set	reorder

$L10:
	lw	$5,4($8)
	lw	$4,0($8)
	lw	$25,4($16)
	lw	$7,12($8)
	.set	noreorder
	.set	nomacro
	jalr	$25
	lw	$6,8($8)
	.set	macro
	.set	reorder

	lw	$4,12($16)
	li	$5,1			# 0x1
	.set	noreorder
	.set	nomacro
	beq	$4,$5,$L7
	li	$5,2			# 0x2
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,$L47
	li	$5,3			# 0x3
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,$L47
	li	$5,4			# 0x4
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,$L47
	li	$5,5			# 0x5
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,$L48
	li	$5,6			# 0x6
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,$L48
	li	$5,7			# 0x7
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,$L49
	li	$5,8			# 0x8
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,$L49
	li	$5,9			# 0x9
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,$L49
	li	$5,10			# 0xa
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$5,$L49
	addiu	$5,$4,-11
	.set	macro
	.set	reorder

	sltu	$5,$5,2
	.set	noreorder
	.set	nomacro
	bnel	$5,$0,$L51
	lw	$4,8($16)
	.set	macro
	.set	reorder

	li	$3,13			# 0xd
	.set	noreorder
	.set	nomacro
	beq	$4,$3,$L52
	li	$3,14			# 0xe
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$3,$L53
	li	$3,15			# 0xf
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$3,$L49
	li	$3,16			# 0x10
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	bnel	$4,$3,$L57
	move	$sp,$fp
	.set	macro
	.set	reorder

	lw	$3,0($16)
	andi	$3,$3,0x2
	.set	noreorder
	.set	nomacro
	beq	$3,$0,$L7
	li	$4,1			# 0x1
	.set	macro
	.set	reorder

	lw	$3,16($16)
	.set	noreorder
	.set	nomacro
	beq	$3,$4,$L47
	li	$4,2			# 0x2
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$3,$4,$L48
	li	$4,4			# 0x4
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beql	$3,$4,$L58
	lw	$3,8($16)
	.set	macro
	.set	reorder

$L7:
	move	$sp,$fp
$L57:
	lw	$31,36($sp)
	lw	$fp,32($sp)
	lw	$16,28($sp)
	move	$2,$0
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,40
	.set	macro
	.set	reorder

$L47:
	lw	$3,8($16)
	sb	$2,0($3)
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	lw	$16,28($sp)
	move	$2,$0
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,40
	.set	macro
	.set	reorder

$L49:
	lw	$3,8($16)
$L58:
	sw	$2,0($3)
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	lw	$16,28($sp)
	move	$2,$0
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,40
	.set	macro
	.set	reorder

$L48:
	lw	$3,8($16)
	sh	$2,0($3)
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	lw	$16,28($sp)
	move	$2,$0
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,40
	.set	macro
	.set	reorder

$L51:
	sw	$2,0($4)
	.set	noreorder
	.set	nomacro
	b	$L7
	sw	$3,4($4)
	.set	macro
	.set	reorder

$L52:
	lw	$2,8($16)
	.set	noreorder
	.set	nomacro
	b	$L7
	swc1	$f0,0($2)
	.set	macro
	.set	reorder

$L53:
	lw	$2,8($16)
	.set	noreorder
	.set	nomacro
	b	$L7
	sdc1	$f0,0($2)
	.set	macro
	.set	reorder

	.end	avcall_call
	.size	avcall_call, .-avcall_call
	.ident	"GCC: (GNU) 5.4.0"
