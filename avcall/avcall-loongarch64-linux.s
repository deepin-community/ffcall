	.file	"avcall-loongarch64.c"
	.text
	.align	2
	.globl	avcall_call
	.type	avcall_call, @function
avcall_call:
.LFB0 = .
	.cfi_startproc
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,32
	st.d	$r23,$r3,24
	st.d	$r24,$r3,16
	st.d	$r25,$r3,8
	stptr.d	$r26,$r3,0
	st.d	$r1,$r3,40
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 1, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	ld.d	$r24,$r4,48
	ld.d	$r12,$r4,40
	addi.w	$r13,$r0,8			# 0x8
	ldptr.w	$r26,$r4,64
	sub.d	$r12,$r12,$r24
	srai.d	$r12,$r12,3
	slli.w	$r25,$r12,0
	or	$r23,$r4,$r0
	addi.d	$r3,$r3,-2048
	ble	$r25,$r13,.L72
	addi.w	$r6,$r12,-9
	or	$r14,$r3,$r0
	bstrpick.d	$r6,$r6,31,0
	alsl.d	$r6,$r6,$r0,3
	addi.d	$r6,$r6,8
	addi.d	$r5,$r24,64
	or	$r4,$r14,$r0
	bl	%plt(memcpy)
	ldptr.d	$r4,$r24,0
.L5:
	addi.w	$r12,$r0,2			# 0x2
	ld.d	$r5,$r24,8
	beq	$r25,$r12,.L6
	addi.w	$r12,$r0,3			# 0x3
	ld.d	$r6,$r24,16
	beq	$r25,$r12,.L6
	addi.w	$r12,$r0,4			# 0x4
	ld.d	$r7,$r24,24
	beq	$r25,$r12,.L6
	addi.w	$r12,$r0,5			# 0x5
	ld.d	$r8,$r24,32
	beq	$r25,$r12,.L6
	addi.w	$r12,$r0,6			# 0x6
	ld.d	$r9,$r24,40
	beq	$r25,$r12,.L6
	addi.w	$r12,$r0,7			# 0x7
	ld.d	$r10,$r24,48
	beq	$r25,$r12,.L6
	ld.d	$r11,$r24,56
.L6:
	beqz	$r26,.L8
	ldptr.w	$r12,$r23,72
	andi	$r13,$r12,1
	beqz	$r13,.L9
	fld.d	$f0,$r23,112
.L10:
	addi.w	$r13,$r0,1			# 0x1
	beq	$r26,$r13,.L8
	andi	$r13,$r12,2
	bnez	$r13,.L73
	ldptr.w	$r13,$r23,68
	andi	$r13,$r13,2
	beqz	$r13,.L13
	fld.s	$f1,$r23,80
.L13:
	addi.w	$r13,$r0,2			# 0x2
	beq	$r26,$r13,.L8
	andi	$r13,$r12,4
	beqz	$r13,.L14
	fld.d	$f2,$r23,128
.L15:
	addi.w	$r13,$r0,3			# 0x3
	beq	$r26,$r13,.L8
	andi	$r13,$r12,8
	beqz	$r13,.L16
	fld.d	$f3,$r23,136
.L17:
	addi.w	$r13,$r0,4			# 0x4
	beq	$r26,$r13,.L8
	andi	$r13,$r12,16
	bnez	$r13,.L74
	ldptr.w	$r13,$r23,68
	andi	$r13,$r13,16
	beqz	$r13,.L19
	fld.s	$f4,$r23,92
.L19:
	addi.w	$r13,$r0,5			# 0x5
	beq	$r26,$r13,.L8
	andi	$r13,$r12,32
	beqz	$r13,.L20
	fld.d	$f5,$r23,152
.L21:
	addi.w	$r13,$r0,6			# 0x6
	beq	$r26,$r13,.L8
	andi	$r13,$r12,64
	beqz	$r13,.L22
	fld.d	$f6,$r23,160
.L23:
	addi.w	$r13,$r0,7			# 0x7
	beq	$r26,$r13,.L8
	andi	$r12,$r12,128
	beqz	$r12,.L24
	fld.d	$f7,$r23,168
.L8:
	ldptr.w	$r12,$r23,24
	addi.w	$r13,$r0,13			# 0xd
	ld.d	$r14,$r23,8
	beq	$r12,$r13,.L75
	addi.w	$r13,$r0,14			# 0xe
	beq	$r12,$r13,.L76
	jirl	$r1,$r14,0
	ldptr.w	$r12,$r23,24
	addi.w	$r13,$r0,1			# 0x1
	beq	$r12,$r13,.L26
	addi.w	$r13,$r0,16			# 0x10
	bgtu	$r12,$r13,.L26
	la.local	$r13,.L29
	slli.d	$r12,$r12,3
	ldx.d	$r12,$r13,$r12
	add.d	$r13,$r13,$r12
	jr	$r13
	.section	.rodata
	.align	3
	.align	2
.L29:
	.dword	.L26-.L29
	.dword	.L26-.L29
	.dword	.L37-.L29
	.dword	.L37-.L29
	.dword	.L37-.L29
	.dword	.L35-.L29
	.dword	.L35-.L29
	.dword	.L33-.L29
	.dword	.L33-.L29
	.dword	.L30-.L29
	.dword	.L30-.L29
	.dword	.L30-.L29
	.dword	.L30-.L29
	.dword	.L26-.L29
	.dword	.L26-.L29
	.dword	.L30-.L29
	.dword	.L28-.L29
	.text
.L9:
	ldptr.w	$r13,$r23,68
	andi	$r13,$r13,1
	beqz	$r13,.L10
	fld.s	$f0,$r23,76
	b	.L10
.L76:
	ld.d	$r23,$r23,16
	jirl	$r1,$r14,0
	fst.d	$f0,$r23,0
.L26:
	addi.d	$r3,$r22,-48
	.cfi_remember_state
	.cfi_def_cfa 3, 48
	ld.d	$r1,$r3,40
	.cfi_restore 1
	ld.d	$r22,$r3,32
	.cfi_restore 22
	ld.d	$r23,$r3,24
	.cfi_restore 23
	ld.d	$r24,$r3,16
	.cfi_restore 24
	ld.d	$r25,$r3,8
	.cfi_restore 25
	ldptr.d	$r26,$r3,0
	.cfi_restore 26
	or	$r4,$r0,$r0
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
	jr	$r1
.L72:
	.cfi_restore_state
	ble	$r25,$r0,.L6
	addi.w	$r12,$r0,1			# 0x1
	ldptr.d	$r4,$r24,0
	bne	$r25,$r12,.L5
	b	.L6
.L75:
	ld.d	$r23,$r23,16
	jirl	$r1,$r14,0
	fst.s	$f0,$r23,0
	b	.L26
.L73:
	fld.d	$f1,$r23,120
	b	.L13
.L30:
	ld.d	$r12,$r23,16
	stptr.d	$r4,$r12,0
	b	.L26
.L37:
	ld.d	$r12,$r23,16
	st.b	$r4,$r12,0
	b	.L26
.L14:
	ldptr.w	$r13,$r23,68
	andi	$r13,$r13,4
	beqz	$r13,.L15
	fld.s	$f2,$r23,84
	b	.L15
.L16:
	ldptr.w	$r13,$r23,68
	andi	$r13,$r13,8
	beqz	$r13,.L17
	fld.s	$f3,$r23,88
	b	.L17
.L74:
	fld.d	$f4,$r23,144
	b	.L19
.L35:
	ld.d	$r12,$r23,16
	st.h	$r4,$r12,0
	b	.L26
.L33:
	ld.d	$r12,$r23,16
	stptr.w	$r4,$r12,0
	b	.L26
.L28:
	ldptr.w	$r12,$r23,0
	andi	$r12,$r12,512
	beqz	$r12,.L26
	ld.d	$r24,$r23,32
	addi.w	$r12,$r0,15			# 0xf
	addi.d	$r13,$r24,-1
	bgtu	$r13,$r12,.L26
	ld.d	$r12,$r23,16
	addi.w	$r16,$r0,-8			# 0xfffffffffffffff8
	addi.w	$r13,$r0,1			# 0x1
	and	$r16,$r12,$r16
	ldptr.d	$r17,$r16,0
	andi	$r12,$r12,7
	slli.w	$r20,$r12,3
	add.d	$r25,$r24,$r12
	sll.d	$r19,$r4,$r20
	addi.w	$r23,$r0,8			# 0x8
	sll.d	$r13,$r13,$r20
	xor	$r19,$r19,$r17
	slli.w	$r18,$r25,3
	bgtu	$r24,$r23,.L40
	bgtu	$r25,$r23,.L41
	addi.w	$r18,$r18,-1
	addi.w	$r12,$r0,2			# 0x2
	sll.d	$r12,$r12,$r18
	sub.d	$r12,$r12,$r13
	and	$r12,$r12,$r19
	xor	$r12,$r12,$r17
	stptr.d	$r12,$r16,0
	b	.L26
.L20:
	ldptr.w	$r13,$r23,68
	andi	$r13,$r13,32
	beqz	$r13,.L21
	fld.s	$f5,$r23,96
	b	.L21
.L22:
	ldptr.w	$r13,$r23,68
	andi	$r13,$r13,64
	beqz	$r13,.L23
	fld.s	$f6,$r23,100
	b	.L23
.L24:
	ldptr.w	$r12,$r23,68
	andi	$r12,$r12,128
	beqz	$r12,.L8
	fld.s	$f7,$r23,104
	b	.L8
.L40:
	sub.d	$r13,$r0,$r13
	and	$r13,$r13,$r19
	xor	$r13,$r13,$r17
	stptr.d	$r13,$r16,0
	addi.w	$r13,$r0,16			# 0x10
	sub.d	$r12,$r23,$r12
	sll.d	$r20,$r5,$r20
	bgtu	$r25,$r13,.L42
	slli.w	$r12,$r12,2
	ld.d	$r15,$r16,8
	sra.d	$r14,$r4,$r12
	sra.d	$r12,$r14,$r12
	addi.w	$r18,$r18,-65
	addi.w	$r13,$r0,2			# 0x2
	or	$r12,$r12,$r20
	sll.d	$r13,$r13,$r18
	xor	$r12,$r12,$r15
	addi.d	$r13,$r13,-1
	and	$r12,$r12,$r13
	xor	$r12,$r12,$r15
	st.d	$r12,$r16,8
	b	.L26
.L41:
	ld.d	$r15,$r16,8
	sub.d	$r12,$r23,$r12
	slli.w	$r12,$r12,3
	addi.w	$r18,$r18,-65
	addi.w	$r14,$r0,2			# 0x2
	sra.d	$r12,$r4,$r12
	sll.d	$r14,$r14,$r18
	sub.d	$r13,$r0,$r13
	xor	$r12,$r12,$r15
	addi.d	$r14,$r14,-1
	and	$r13,$r13,$r19
	and	$r12,$r12,$r14
	xor	$r13,$r13,$r17
	xor	$r12,$r12,$r15
	stptr.d	$r13,$r16,0
	st.d	$r12,$r16,8
	b	.L26
.L42:
	ld.d	$r19,$r16,16
	slli.w	$r12,$r12,3
	addi.w	$r13,$r18,-129
	addi.w	$r17,$r0,2			# 0x2
	sll.d	$r17,$r17,$r13
	sra.d	$r13,$r5,$r12
	addi.d	$r15,$r17,-1
	xor	$r13,$r13,$r19
	sra.d	$r12,$r4,$r12
	and	$r13,$r15,$r13
	or	$r12,$r12,$r20
	xor	$r13,$r13,$r19
	st.d	$r12,$r16,8
	st.d	$r13,$r16,16
	b	.L26
	.cfi_endproc
.LFE0:
	.size	avcall_call, .-avcall_call
	.ident	"GCC: (GNU) 12.1.0"
	.section	.note.GNU-stack,"",@progbits
