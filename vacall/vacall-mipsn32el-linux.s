	.file	1 "vacall-mipsn32.c"
	.section .mdebug.abiN32
	.previous
	.nan	legacy
	.module	fp=64
	.module	oddspreg
	.abicalls
	.text
	.align	2
	.align	3
	.globl	vacall_receiver
	.set	nomips16
	.set	nomicromips
	.ent	vacall_receiver
	.type	vacall_receiver, @function
vacall_receiver:
	.frame	$fp,256,$31		# vars= 144, regs= 6/0, args= 0, gp= 0
	.mask	0xd0070000,-72
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-256
	sd	$28,168($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	lw	$12,%got_disp(vacall_function)($28)
	sd	$fp,176($sp)
	move	$fp,$sp
	lw	$25,0($12)
	addiu	$12,$fp,192
	sd	$31,184($sp)
	sd	$18,160($sp)
	sd	$17,152($sp)
	sd	$16,144($sp)
	sd	$4,192($fp)
	sd	$5,200($fp)
	sd	$6,208($fp)
	sd	$7,216($fp)
	sd	$8,224($fp)
	sd	$9,232($fp)
	sd	$10,240($fp)
	sd	$11,248($fp)
	sdc1	$f12,80($fp)
	sdc1	$f13,88($fp)
	sdc1	$f14,96($fp)
	sdc1	$f15,104($fp)
	sdc1	$f16,112($fp)
	sdc1	$f17,120($fp)
	sdc1	$f18,128($fp)
	sdc1	$f19,136($fp)
	swc1	$f12,44($fp)
	swc1	$f13,48($fp)
	swc1	$f14,52($fp)
	swc1	$f15,56($fp)
	swc1	$f16,60($fp)
	swc1	$f17,64($fp)
	swc1	$f18,68($fp)
	swc1	$f19,72($fp)
	move	$4,$fp
	sw	$0,0($fp)
	sw	$12,24($fp)
	sw	$0,28($fp)
	sw	$0,32($fp)
	jalr	$25
	sw	$0,40($fp)

	lw	$12,32($fp)
	beq	$12,$0,.L1
	li	$13,1			# 0x1

	beq	$12,$13,.L43
	li	$13,2			# 0x2

	beq	$12,$13,.L43
	li	$13,3			# 0x3

	beq	$12,$13,.L49
	li	$13,4			# 0x4

	beq	$12,$13,.L50
	li	$13,5			# 0x5

	beq	$12,$13,.L51
	li	$13,6			# 0x6

	beq	$12,$13,.L46
	li	$13,7			# 0x7

	beq	$12,$13,.L45
	li	$13,8			# 0x8

	beq	$12,$13,.L46
	li	$13,9			# 0x9

	beq	$12,$13,.L45
	li	$13,10			# 0xa

	beq	$12,$13,.L47
	li	$13,11			# 0xb

	beq	$12,$13,.L47
	li	$13,12			# 0xc

	beq	$12,$13,.L52
	li	$13,13			# 0xd

	beq	$12,$13,.L53
	li	$13,14			# 0xe

	beq	$12,$13,.L46
	li	$13,15			# 0xf

	bnel	$12,$13,.L59
	move	$sp,$fp

	lw	$12,0($fp)
	andi	$13,$12,0x400
	beq	$13,$0,.L1
	andi	$13,$12,0x4

	beq	$13,$0,.L19
	lw	$24,36($fp)

	lw	$12,36($fp)
	li	$13,1			# 0x1
	beq	$12,$13,.L54
	li	$13,2			# 0x2

	beq	$12,$13,.L55
	li	$13,4			# 0x4

	beq	$12,$13,.L56
	li	$13,8			# 0x8

	bnel	$12,$13,.L59
	move	$sp,$fp

	lw	$12,28($fp)
	ld	$2,0($12)
.L1:
	move	$sp,$fp
.L59:
	ld	$31,184($sp)
	ld	$fp,176($sp)
	ld	$28,168($sp)
	ld	$18,160($sp)
	ld	$17,152($sp)
	ld	$16,144($sp)
	j	$31
	addiu	$sp,$sp,256

	.align	3
.L43:
	move	$sp,$fp
	ld	$31,184($sp)
	ld	$28,168($sp)
	ld	$18,160($sp)
	ld	$17,152($sp)
	ld	$16,144($sp)
	lb	$2,8($fp)
	ld	$fp,176($sp)
	j	$31
	addiu	$sp,$sp,256

	.align	3
.L46:
	b	.L1
	lw	$2,8($fp)

	.align	3
.L49:
	b	.L1
	lbu	$2,8($fp)

	.align	3
.L50:
	b	.L1
	lh	$2,8($fp)

	.align	3
.L45:
	b	.L1
	lwu	$2,8($fp)

	.align	3
.L51:
	b	.L1
	lhu	$2,8($fp)

	.align	3
.L52:
	b	.L1
	lwc1	$f0,8($fp)

	.align	3
.L47:
	b	.L1
	ld	$2,8($fp)

.L53:
	b	.L1
	ldc1	$f0,8($fp)

.L19:
	addiu	$13,$24,-1
	sltu	$13,$13,16
	beql	$13,$0,.L60
	andi	$13,$12,0x800

	lw	$13,28($fp)
	li	$15,-8			# 0xfffffffffffffff8
	sltu	$25,$24,9
	andi	$14,$13,0x7
	and	$15,$13,$15
	beq	$25,$0,.L24
	addu	$13,$24,$14

	sltu	$25,$13,9
	beq	$25,$0,.L25
	sll	$13,$13,3

	ld	$25,0($15)
	addiu	$13,$13,-1
	li	$15,2			# 0x2
	dsll	$13,$15,$13
	daddiu	$13,$13,-1
	and	$13,$13,$25
	sll	$14,$14,3
	dsra	$2,$13,$14
.L23:
	andi	$13,$12,0x800
.L60:
	beql	$13,$0,.L27
	andi	$12,$12,0x1000

	li	$13,4			# 0x4
	beq	$24,$13,.L57
	li	$13,8			# 0x8

	beql	$24,$13,.L58
	lw	$13,28($fp)

	andi	$12,$12,0x1000
	beql	$12,$0,.L59
	move	$sp,$fp

	li	$12,16			# 0x10
.L61:
	bnel	$24,$12,.L59
	move	$sp,$fp

	lw	$12,28($fp)
	ldc1	$f0,0($12)
	b	.L1
	ldc1	$f2,8($12)

.L27:
	beq	$12,$0,.L1
	li	$12,8			# 0x8

	bne	$24,$12,.L61
	li	$12,16			# 0x10

	lw	$13,28($fp)
	b	.L1
	ldc1	$f0,0($13)

.L24:
	sltu	$25,$13,17
	beq	$25,$0,.L26
	sll	$13,$13,3

	ld	$17,8($15)
	li	$25,2			# 0x2
	addiu	$13,$13,-65
	dsll	$13,$25,$13
	subu	$25,$0,$14
	sll	$25,$25,2
	ld	$16,0($15)
	daddiu	$13,$13,-1
	addiu	$15,$25,32
	and	$13,$13,$17
	sll	$14,$14,3
	dsll	$25,$13,$15
	dsra	$16,$16,$14
	dsll	$15,$25,$15
	or	$2,$16,$15
	b	.L23
	dsra	$3,$13,$14

.L54:
	lw	$12,28($fp)
	b	.L1
	lbu	$2,0($12)

.L55:
	lw	$12,28($fp)
	b	.L1
	lhu	$2,0($12)

.L26:
	ld	$16,8($15)
	ld	$17,0($15)
	addiu	$13,$13,-129
	ld	$18,16($15)
	li	$15,2			# 0x2
	subu	$25,$0,$14
	dsll	$15,$15,$13
	daddiu	$15,$15,-1
	sll	$25,$25,3
	sll	$14,$14,3
	addiu	$25,$25,64
	and	$13,$15,$18
	dsll	$13,$13,$25
	dsra	$15,$17,$14
	dsll	$17,$16,$25
	dsra	$14,$16,$14
	or	$2,$15,$17
	b	.L23
	or	$3,$13,$14

.L57:
	lw	$12,28($fp)
	b	.L1
	lwc1	$f0,0($12)

.L56:
	lw	$12,28($fp)
	b	.L1
	lwu	$2,0($12)

.L25:
	li	$25,2			# 0x2
	addiu	$13,$13,-65
	ld	$17,8($15)
	dsll	$13,$25,$13
	ld	$25,0($15)
	daddiu	$13,$13,-1
	subu	$16,$0,$14
	and	$15,$13,$17
	sll	$14,$14,3
	sll	$13,$16,3
	dsll	$13,$15,$13
	dsra	$14,$25,$14
	b	.L23
	or	$2,$13,$14

.L58:
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
	.ident	"GCC: (GNU) 5.4.0"
