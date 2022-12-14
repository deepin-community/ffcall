	.set noreorder
	.set volatile
	.set noat
	.set nomacro
	.text
	.align 2
	.align 4
	.globl avcall_call
	.ent avcall_call
avcall_call:
	.frame $15,32,$26,0
	.mask 0x4008200,-32
	ldah $29,0($27)		!gpdisp!1
	lda $29,0($29)		!gpdisp!1
$avcall_call..ng:
	lda $30,-32($30)
	ldq $1,40($16)
	ldq $3,48($16)
	stq $9,8($30)
	mov $16,$9
	stq $15,16($30)
	mov $30,$15
	subq $1,$3,$1
	stq $26,0($30)
	.prologue 1
	srl $1,3,$1
	lda $30,-2064($30)
	addl $31,$1,$7
	cmple $7,6,$2
	bne $2,$L2
	mov $30,$5
	lda $6,6($31)
	lda $4,48($3)
	.align 4
$L4:
	lda $6,1($6)
	ldq $1,0($4)
	cmpeq $7,$6,$2
	lda $4,8($4)
	stq $1,0($5)
	lda $5,8($5)
	beq $2,$L4
$L2:
	.set	macro
	ldq $16,0($3)
	ldt $f16,0($3)
	.set	nomacro
	lda $1,8($3)
	.set	macro
	ldq $17,0($1)
	ldt $f17,0($1)
	.set	nomacro
	lda $2,16($3)
	.set	macro
	ldq $18,0($2)
	ldt $f18,0($2)
	.set	nomacro
	lda $1,24($3)
	.set	macro
	ldq $19,0($1)
	ldt $f19,0($1)
	.set	nomacro
	lda $2,32($3)
	.set	macro
	ldq $20,0($2)
	ldt $f20,0($2)
	.set	nomacro
	lda $3,40($3)
	.set	macro
	ldq $21,0($3)
	ldt $f21,0($3)
	.set	nomacro
	ldq $27,8($9)
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!2
	lda $29,0($29)		!gpdisp!2
	mov $1,$4
	ldl $1,24($9)
	zapnot $1,15,$3
	cmpeq $3,1,$2
	bne $2,$L5
	cmpeq $3,2,$1
	bne $1,$L50
	cmpeq $3,3,$1
	bne $1,$L50
	cmpeq $3,4,$1
	bne $1,$L50
	cmpeq $3,5,$1
	bne $1,$L52
	cmpeq $3,6,$1
	bne $1,$L52
	cmpeq $3,7,$1
	bne $1,$L53
	cmpeq $3,8,$1
	bne $1,$L53
	cmpeq $3,9,$1
	bne $1,$L54
	cmpeq $3,10,$1
	bne $1,$L54
	cmpeq $3,11,$1
	bne $1,$L54
	cmpeq $3,12,$1
	bne $1,$L54
	cmpeq $3,13,$1
	bne $1,$L56
	cmpeq $3,14,$1
	bne $1,$L57
	cmpeq $3,15,$1
	bne $1,$L54
	cmpeq $3,16,$1
	beq $1,$L5
	.align 3 #realign
	lda $1,512($31)
	ldl $2,0($9)
	and $1,$2,$1
	beq $1,$L5
	ldq $2,32($9)
	cmpeq $2,1,$1
	bne $1,$L50
	cmpeq $2,2,$1
	bne $1,$L52
	cmpeq $2,4,$1
	bne $1,$L53
	cmpeq $2,8,$1
	bne $1,$L54
	cmpeq $2,16,$1
	beq $1,$L5
	ldq $1,16($9)
	stq $4,8($1)
	cpys $f31,$f31,$f31
	stq $0,0($1)
	br $31,$L5
	.align 4
$L50:
	ldq $1,16($9)
	bis $31,$31,$31
	insbl $0,$1,$3
	ldq_u $2,0($1)
	mskbl $2,$1,$2
	bis $3,$2,$3
	stq_u $3,0($1)
$L5:
	mov $15,$30
	mov $31,$0
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $15,16($30)
	lda $30,32($30)
	ret $31,($26),1
$L52:
	mov $15,$30
	ldq $1,16($9)
	inswl $0,$1,$3
	ldq_u $2,0($1)
	mov $31,$0
	mskwl $2,$1,$2
	bis $3,$2,$3
	stq_u $3,0($1)
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $15,16($30)
	lda $30,32($30)
	ret $31,($26),1
$L54:
	ldq $1,16($9)
	stq $0,0($1)
	br $31,$L5
$L53:
	ldq $1,16($9)
	bis $31,$31,$31
	stl $0,0($1)
	br $31,$L5
$L56:
	cvtts $f0,$f0
	ldq $1,16($9)
	sts $f0,0($1)
	br $31,$L5
$L57:
	ldq $1,16($9)
	bis $31,$31,$31
	stt $f0,0($1)
	br $31,$L5
	.end avcall_call
#if defined __linux__ || defined __FreeBSD__ || defined __FreeBSD_kernel__ || defined __DragonFly__
	.section .note.GNU-stack,"",@progbits
#endif
