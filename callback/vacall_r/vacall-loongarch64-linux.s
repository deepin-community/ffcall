	.file	"vacall-loongarch64.c"
	.text
	.align	2
	.type	callback_receiver, @function
callback_receiver:
.LFB0 = .
	.cfi_startproc
	addi.d	$r3,$r3,-288
	.cfi_def_cfa_offset 288
	st.d	$r1,$r3,264
	st.d	$r22,$r3,256
	st.d	$r23,$r3,248
	.cfi_offset 1, -24
	.cfi_offset 22, -32
	.cfi_offset 23, -40
	addi.d	$r22,$r3,272
	.cfi_def_cfa 22, 16
	addi.d	$r13,$r22,16
	ldptr.d	$r12,$r20,0
	st.d	$r11,$r22,8
	st.d	$r5,$r22,-192
	st.d	$r6,$r22,-184
	st.d	$r7,$r22,-176
	st.d	$r8,$r22,-168
	st.d	$r9,$r22,-160
	st.d	$r10,$r22,-152
	st.d	$r11,$r22,-144
	fst.s	$f0,$r22,-132
	fst.s	$f1,$r22,-128
	fst.s	$f2,$r22,-124
	fst.s	$f3,$r22,-120
	fst.s	$f4,$r22,-116
	fst.s	$f5,$r22,-112
	fst.s	$f6,$r22,-108
	fst.s	$f7,$r22,-104
	fst.d	$f0,$r22,-96
	fst.d	$f1,$r22,-88
	fst.d	$f2,$r22,-80
	fst.d	$f3,$r22,-72
	fst.d	$f4,$r22,-64
	fst.d	$f5,$r22,-56
	fst.d	$f6,$r22,-48
	fst.d	$f7,$r22,-40
	st.d	$r13,$r22,-240
	st.d	$r4,$r22,-200
	st.w	$r0,$r22,-264
	st.d	$r0,$r22,-232
	ld.d	$r4,$r20,8
	st.w	$r0,$r22,-224
	st.w	$r0,$r22,-208
	st.w	$r0,$r22,-136
	addi.d	$r5,$r22,-264
	jirl	$r1,$r12,0
	ldptr.w	$r12,$r22,-224
	beqz	$r12,.L1
	addi.w	$r13,$r0,15			# 0xf
	bgtu	$r12,$r13,.L1
	la.local	$r13,.L4
	slli.d	$r12,$r12,3
	ldx.d	$r12,$r13,$r12
	add.d	$r13,$r13,$r12
	jr	$r13
	.section	.rodata
	.align	3
	.align	2
.L4:
	.dword	.L1-.L4
	.dword	.L15-.L4
	.dword	.L15-.L4
	.dword	.L14-.L4
	.dword	.L13-.L4
	.dword	.L12-.L4
	.dword	.L11-.L4
	.dword	.L10-.L4
	.dword	.L5-.L4
	.dword	.L5-.L4
	.dword	.L5-.L4
	.dword	.L5-.L4
	.dword	.L7-.L4
	.dword	.L6-.L4
	.dword	.L5-.L4
	.dword	.L3-.L4
	.text
.L5:
	ld.d	$r4,$r22,-256
.L1:
	ld.d	$r1,$r3,264
	.cfi_remember_state
	.cfi_restore 1
	ld.d	$r22,$r3,256
	.cfi_restore 22
	ld.d	$r23,$r3,248
	.cfi_restore 23
	addi.d	$r3,$r3,288
	.cfi_def_cfa 3, 0
	jr	$r1
.L15:
	.cfi_restore_state
	ld.b	$r4,$r22,-256
	b	.L1
.L10:
	ld.wu	$r4,$r22,-256
	b	.L1
.L14:
	ld.bu	$r4,$r22,-256
	b	.L1
.L13:
	ld.h	$r4,$r22,-256
	b	.L1
.L12:
	ld.hu	$r4,$r22,-256
	b	.L1
.L11:
	ldptr.w	$r4,$r22,-256
	b	.L1
.L6:
	fld.d	$f0,$r22,-256
	b	.L1
.L7:
	fld.s	$f0,$r22,-256
	b	.L1
.L3:
	ldptr.w	$r12,$r22,-264
	andi	$r12,$r12,1024
	beqz	$r12,.L1
	ld.d	$r12,$r22,-216
	addi.w	$r13,$r0,15			# 0xf
	addi.d	$r14,$r12,-1
	bgtu	$r14,$r13,.L1
	ld.d	$r13,$r22,-232
	addi.w	$r15,$r0,-8			# 0xfffffffffffffff8
	addi.w	$r23,$r0,8			# 0x8
	andi	$r14,$r13,7
	add.d	$r16,$r12,$r14
	and	$r13,$r13,$r15
	ldptr.d	$r17,$r13,0
	slli.w	$r15,$r16,3
	slli.w	$r18,$r14,3
	bgtu	$r12,$r23,.L17
	bgtu	$r16,$r23,.L18
	addi.w	$r15,$r15,-1
	addi.w	$r4,$r0,2			# 0x2
	sll.d	$r4,$r4,$r15
	addi.d	$r4,$r4,-1
	and	$r4,$r4,$r17
	sra.d	$r4,$r4,$r18
	b	.L1
.L17:
	addi.w	$r12,$r0,16			# 0x10
	ld.d	$r19,$r13,8
	sra.d	$r17,$r17,$r18
	sub.d	$r23,$r23,$r14
	bgtu	$r16,$r12,.L19
	addi.w	$r15,$r15,-65
	addi.w	$r5,$r0,2			# 0x2
	sll.d	$r5,$r5,$r15
	addi.d	$r5,$r5,-1
	and	$r5,$r5,$r19
	slli.w	$r23,$r23,2
	sll.d	$r4,$r5,$r23
	sll.d	$r4,$r4,$r23
	or	$r4,$r4,$r17
	sra.d	$r5,$r5,$r18
	b	.L1
.L18:
	ld.d	$r16,$r13,8
	addi.w	$r15,$r15,-65
	addi.w	$r12,$r0,2			# 0x2
	sll.d	$r12,$r12,$r15
	addi.d	$r12,$r12,-1
	sub.d	$r13,$r23,$r14
	and	$r12,$r12,$r16
	slli.w	$r13,$r13,3
	sll.d	$r12,$r12,$r13
	sra.d	$r17,$r17,$r18
	or	$r4,$r12,$r17
	b	.L1
.L19:
	ld.d	$r14,$r13,16
	addi.w	$r15,$r15,-129
	addi.w	$r12,$r0,2			# 0x2
	sll.d	$r12,$r12,$r15
	addi.d	$r12,$r12,-1
	slli.w	$r13,$r23,3
	and	$r12,$r12,$r14
	sll.d	$r4,$r19,$r13
	sll.d	$r12,$r12,$r13
	sra.d	$r19,$r19,$r18
	or	$r4,$r4,$r17
	or	$r5,$r12,$r19
	b	.L1
	.cfi_endproc
.LFE0:
	.size	callback_receiver, .-callback_receiver
	.align	2
	.globl	callback_get_receiver
	.type	callback_get_receiver, @function
callback_get_receiver:
.LFB1 = .
	.cfi_startproc
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	ld.d	$r22,$r3,8
	.cfi_restore 22
	la.local	$r4,callback_receiver
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
	jr	$r1
	.cfi_endproc
.LFE1:
	.size	callback_get_receiver, .-callback_get_receiver
	.ident	"GCC: (GNU) 12.1.0"
	.section	.note.GNU-stack,"",@progbits
