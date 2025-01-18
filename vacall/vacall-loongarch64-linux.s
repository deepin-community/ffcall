	.file	"vacall-loongarch64.c"
	.text
	.align	2
	.globl	vacall_receiver
	.type	vacall_receiver, @function
vacall_receiver:
.LFB0 = .
	.cfi_startproc
	addi.d	$r3,$r3,-272
	.cfi_def_cfa_offset 272
	st.d	$r1,$r3,248
	st.d	$r22,$r3,240
	la.global	$r12,vacall_function
	.cfi_offset 1, -24
	.cfi_offset 22, -32
	addi.d	$r22,$r3,256
	.cfi_def_cfa 22, 16
	addi.d	$r13,$r22,16
	ldptr.d	$r12,$r12,0
	st.d	$r4,$r22,-184
	st.d	$r11,$r22,8
	st.d	$r5,$r22,-176
	st.d	$r6,$r22,-168
	st.d	$r7,$r22,-160
	st.d	$r8,$r22,-152
	st.d	$r9,$r22,-144
	st.d	$r10,$r22,-136
	st.d	$r11,$r22,-128
	fst.s	$f0,$r22,-116
	fst.s	$f1,$r22,-112
	fst.s	$f2,$r22,-108
	fst.s	$f3,$r22,-104
	fst.s	$f4,$r22,-100
	fst.s	$f5,$r22,-96
	fst.s	$f6,$r22,-92
	fst.s	$f7,$r22,-88
	fst.d	$f0,$r22,-80
	fst.d	$f1,$r22,-72
	fst.d	$f2,$r22,-64
	fst.d	$f3,$r22,-56
	fst.d	$f4,$r22,-48
	fst.d	$f5,$r22,-40
	fst.d	$f6,$r22,-32
	fst.d	$f7,$r22,-24
	st.d	$r13,$r22,-224
	st.w	$r0,$r22,-248
	st.d	$r0,$r22,-216
	st.w	$r0,$r22,-208
	addi.d	$r4,$r22,-248
	st.w	$r0,$r22,-192
	st.w	$r0,$r22,-120
	jirl	$r1,$r12,0
	ldptr.w	$r12,$r22,-208
	beqz	$r12,.L1
	addi.w	$r13,$r0,15			# 0xf
	bgtu	$r12,$r13,.L1
	slli.d	$r12,$r12,3
	la.local	$r13,.L4
	ldx.d	$r12,$r13,$r12
	jr	$r12
	.section	.rodata
	.align	3
	.align	2
.L4:
	.dword	.L1
	.dword	.L15
	.dword	.L15
	.dword	.L14
	.dword	.L13
	.dword	.L12
	.dword	.L11
	.dword	.L10
	.dword	.L5
	.dword	.L5
	.dword	.L5
	.dword	.L5
	.dword	.L7
	.dword	.L6
	.dword	.L5
	.dword	.L3
	.text
.L5:
	ld.d	$r4,$r22,-240
.L1:
	ld.d	$r1,$r3,248
	.cfi_remember_state
	.cfi_restore 1
	ld.d	$r22,$r3,240
	.cfi_restore 22
	addi.d	$r3,$r3,272
	.cfi_def_cfa 3, 0
	jr	$r1
.L15:
	.cfi_restore_state
	ld.b	$r4,$r22,-240
	b	.L1
.L10:
	ld.wu	$r4,$r22,-240
	b	.L1
.L14:
	ld.bu	$r4,$r22,-240
	b	.L1
.L13:
	ld.h	$r4,$r22,-240
	b	.L1
.L12:
	ld.hu	$r4,$r22,-240
	b	.L1
.L11:
	ldptr.w	$r4,$r22,-240
	b	.L1
.L6:
	fld.d	$f0,$r22,-240
	b	.L1
.L7:
	fld.s	$f0,$r22,-240
	b	.L1
.L3:
	ldptr.w	$r12,$r22,-248
	andi	$r12,$r12,1024
	beqz	$r12,.L1
	ld.d	$r13,$r22,-200
	addi.w	$r12,$r0,15			# 0xf
	addi.d	$r14,$r13,-1
	bgtu	$r14,$r12,.L1
	ld.d	$r14,$r22,-216
	addi.w	$r15,$r0,-8			# 0xfffffffffffffff8
	addi.w	$r12,$r0,8			# 0x8
	andi	$r16,$r14,7
	add.d	$r17,$r13,$r16
	and	$r14,$r14,$r15
	ldptr.d	$r19,$r14,0
	slli.w	$r15,$r17,3
	slli.w	$r18,$r16,3
	bgtu	$r13,$r12,.L17
	bgtu	$r17,$r12,.L18
	addi.w	$r15,$r15,-1
	addi.w	$r4,$r0,2			# 0x2
	sll.d	$r4,$r4,$r15
	addi.d	$r4,$r4,-1
	and	$r4,$r4,$r19
	sra.d	$r4,$r4,$r18
	b	.L1
.L17:
	addi.w	$r13,$r0,16			# 0x10
	ld.d	$r20,$r14,8
	sra.d	$r19,$r19,$r18
	sub.d	$r12,$r12,$r16
	bgtu	$r17,$r13,.L19
	addi.w	$r15,$r15,-65
	addi.w	$r5,$r0,2			# 0x2
	sll.d	$r5,$r5,$r15
	addi.d	$r5,$r5,-1
	and	$r5,$r5,$r20
	slli.w	$r12,$r12,2
	sll.d	$r4,$r5,$r12
	sll.d	$r4,$r4,$r12
	or	$r4,$r4,$r19
	sra.d	$r5,$r5,$r18
	b	.L1
.L18:
	ld.d	$r14,$r14,8
	addi.w	$r15,$r15,-65
	addi.w	$r13,$r0,2			# 0x2
	sll.d	$r13,$r13,$r15
	addi.d	$r13,$r13,-1
	sub.d	$r12,$r12,$r16
	and	$r13,$r13,$r14
	slli.w	$r12,$r12,3
	sll.d	$r12,$r13,$r12
	sra.d	$r19,$r19,$r18
	or	$r4,$r12,$r19
	b	.L1
.L19:
	ld.d	$r14,$r14,16
	addi.w	$r15,$r15,-129
	addi.w	$r13,$r0,2			# 0x2
	sll.d	$r13,$r13,$r15
	addi.d	$r13,$r13,-1
	slli.w	$r12,$r12,3
	and	$r13,$r13,$r14
	sll.d	$r4,$r20,$r12
	sll.d	$r12,$r13,$r12
	sra.d	$r20,$r20,$r18
	or	$r4,$r4,$r19
	or	$r5,$r12,$r20
	b	.L1
	.cfi_endproc
.LFE0:
	.size	vacall_receiver, .-vacall_receiver
	.ident	"GCC: (GNU) 12.1.0"
	.section	.note.GNU-stack,"",@progbits
