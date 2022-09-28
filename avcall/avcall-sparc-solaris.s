	.file	"avcall-sparc.c"
	.section	".text"
	.align 4
.LLGETPC0:
	retl
	add	%o7, %l7, %l7
	.align 4
	.global avcall_call
	.type	avcall_call,#function
	.proc	04
avcall_call:
	!#PROLOGUE# 0
	save	%sp, -1128, %sp
	sethi	%hi(_GLOBAL_OFFSET_TABLE_-4), %l7
	call	.LLGETPC0
	add	%l7, %lo(_GLOBAL_OFFSET_TABLE_+4), %l7
	add	%sp, 68, %l1
	ld	[%i0+20], %o7
	ld	[%i0+24], %g3
	sub	%o7, %g3, %g1
	ld	[%i0+12], %g3
	cmp	%g3, 16
	bne	.LL2
	sra	%g1, 2, %g1
	ld	[%i0+8], %g3
	st	%g3, [%sp+64]
.LL2:
	mov	6, %l0
	cmp	%l0, %g1
	bge,a	.LL53
	ld	[%i0+12], %g3
	ld	[%i0+24], %g4
.LL7:
	sll	%l0, 2, %o7
	ld	[%g4+%o7], %g3
	add	%l0, 1, %l0
	cmp	%l0, %g1
	bl	.LL7
	st	%g3, [%l1+%o7]
	ld	[%i0+12], %g3
.LL53:
	cmp	%g3, 16
	bne,a	.LL54
	ld	[%i0+24], %g3
	ld	[%i0], %g3
	andcc	%g3, 16, %g0
	be,a	.LL54
	ld	[%i0+24], %g3
	ld	[%i0+16], %g3
	sll	%g3, 1, %o7
	add	%o7, %g3, %o7
	sll	%o7, 3, %o7
	sethi	%hi(_GLOBAL_OFFSET_TABLE_-(.LL9-.)), %g3
	or	%g3, %lo(_GLOBAL_OFFSET_TABLE_-(.LL9-.)), %g3
	sub	%l7, %g3, %g3
	add	%o7, %g3, %o7
	ld	[%i0+24], %g3
	ld [%g3],%o0
	ld [%g3+4],%o1
	ld [%g3+8],%o2
	ld [%g3+12],%o3
	ld [%g3+16],%o4
	ld [%g3+20],%o5
	ld	[%i0+4], %g2
	jmp %o7
	nop
.LL9:
	call %g2
	nop
	.long 0
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 5
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 6
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 7
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 8
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 9
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 10
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 11
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 12
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 13
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 14
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 15
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 16
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 17
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 18
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 19
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 20
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 21
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 22
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 23
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 24
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 25
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 26
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 27
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 28
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 29
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 30
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 31
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 32
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 33
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 34
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 35
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 36
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 37
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 38
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 39
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 40
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 41
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 42
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 43
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 44
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 45
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 46
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 47
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 48
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 49
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 50
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 51
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 52
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 53
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 54
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 55
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 56
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 57
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 58
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 59
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 60
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 61
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 62
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 63
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 64
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 65
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 66
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 67
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 68
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 69
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 70
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 71
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 72
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 73
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 74
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 75
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 76
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 77
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 78
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 79
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 80
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 81
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 82
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 83
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 84
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 85
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 86
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 87
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 88
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 89
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 90
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 91
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 92
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 93
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 94
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 95
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 96
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 97
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 98
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 99
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 100
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 101
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 102
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 103
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 104
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 105
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 106
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 107
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 108
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 109
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 110
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 111
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 112
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 113
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 114
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 115
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 116
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 117
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 118
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 119
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 120
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 121
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 122
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 123
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 124
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 125
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 126
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 127
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 128
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 129
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 130
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 131
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 132
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 133
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 134
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 135
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 136
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 137
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 138
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 139
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 140
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 141
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 142
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 143
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 144
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 145
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 146
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 147
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 148
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 149
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 150
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 151
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 152
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 153
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 154
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 155
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 156
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 157
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 158
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 159
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 160
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 161
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 162
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 163
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 164
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 165
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 166
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 167
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 168
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 169
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 170
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 171
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 172
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 173
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 174
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 175
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 176
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 177
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 178
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 179
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 180
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 181
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 182
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 183
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 184
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 185
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 186
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 187
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 188
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 189
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 190
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 191
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 192
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 193
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 194
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 195
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 196
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 197
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 198
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 199
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 200
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 201
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 202
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 203
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 204
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 205
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 206
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 207
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 208
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 209
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 210
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 211
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 212
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 213
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 214
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 215
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 216
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 217
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 218
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 219
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 220
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 221
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 222
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 223
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 224
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 225
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 226
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 227
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 228
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 229
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 230
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 231
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 232
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 233
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 234
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 235
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 236
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 237
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 238
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 239
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 240
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 241
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 242
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 243
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 244
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 245
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 246
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 247
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 248
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 249
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 250
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 251
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 252
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 253
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 254
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 255
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 256
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 257
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 258
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 259
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 260
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 261
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 262
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 263
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 264
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 265
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 266
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 267
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 268
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 269
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 270
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 271
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 272
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 273
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 274
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 275
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 276
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 277
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 278
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 279
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 280
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 281
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 282
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 283
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 284
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 285
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 286
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 287
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 288
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 289
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 290
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 291
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 292
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 293
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 294
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 295
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 296
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 297
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 298
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 299
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 300
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 301
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 302
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 303
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 304
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 305
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 306
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 307
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 308
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 309
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 310
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 311
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 312
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 313
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 314
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 315
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 316
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 317
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 318
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 319
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 320
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 321
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 322
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 323
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 324
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 325
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 326
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 327
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 328
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 329
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 330
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 331
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 332
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 333
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 334
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 335
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 336
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 337
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 338
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 339
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 340
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 341
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 342
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 343
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 344
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 345
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 346
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 347
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 348
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 349
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 350
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 351
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 352
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 353
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 354
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 355
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 356
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 357
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 358
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 359
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 360
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 361
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 362
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 363
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 364
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 365
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 366
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 367
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 368
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 369
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 370
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 371
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 372
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 373
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 374
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 375
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 376
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 377
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 378
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 379
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 380
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 381
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 382
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 383
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 384
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 385
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 386
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 387
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 388
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 389
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 390
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 391
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 392
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 393
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 394
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 395
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 396
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 397
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 398
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 399
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 400
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 401
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 402
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 403
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 404
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 405
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 406
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 407
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 408
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 409
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 410
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 411
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 412
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 413
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 414
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 415
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 416
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 417
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 418
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 419
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 420
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 421
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 422
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 423
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 424
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 425
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 426
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 427
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 428
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 429
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 430
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 431
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 432
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 433
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 434
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 435
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 436
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 437
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 438
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 439
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 440
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 441
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 442
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 443
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 444
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 445
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 446
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 447
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 448
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 449
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 450
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 451
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 452
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 453
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 454
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 455
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 456
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 457
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 458
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 459
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 460
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 461
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 462
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 463
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 464
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 465
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 466
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 467
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 468
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 469
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 470
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 471
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 472
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 473
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 474
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 475
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 476
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 477
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 478
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 479
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 480
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 481
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 482
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 483
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 484
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 485
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 486
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 487
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 488
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 489
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 490
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 491
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 492
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 493
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 494
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 495
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 496
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 497
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 498
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 499
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 500
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 501
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 502
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 503
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 504
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 505
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 506
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 507
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 508
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 509
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 510
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 511
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 512
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 513
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 514
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 515
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 516
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 517
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 518
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 519
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 520
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 521
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 522
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 523
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 524
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 525
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 526
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 527
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 528
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 529
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 530
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 531
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 532
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 533
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 534
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 535
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 536
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 537
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 538
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 539
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 540
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 541
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 542
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 543
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 544
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 545
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 546
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 547
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 548
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 549
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 550
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 551
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 552
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 553
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 554
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 555
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 556
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 557
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 558
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 559
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 560
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 561
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 562
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 563
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 564
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 565
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 566
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 567
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 568
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 569
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 570
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 571
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 572
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 573
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 574
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 575
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 576
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 577
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 578
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 579
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 580
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 581
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 582
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 583
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 584
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 585
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 586
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 587
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 588
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 589
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 590
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 591
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 592
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 593
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 594
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 595
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 596
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 597
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 598
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 599
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 600
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 601
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 602
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 603
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 604
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 605
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 606
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 607
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 608
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 609
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 610
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 611
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 612
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 613
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 614
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 615
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 616
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 617
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 618
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 619
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 620
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 621
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 622
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 623
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 624
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 625
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 626
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 627
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 628
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 629
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 630
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 631
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 632
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 633
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 634
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 635
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 636
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 637
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 638
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 639
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 640
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 641
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 642
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 643
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 644
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 645
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 646
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 647
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 648
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 649
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 650
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 651
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 652
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 653
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 654
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 655
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 656
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 657
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 658
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 659
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 660
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 661
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 662
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 663
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 664
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 665
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 666
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 667
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 668
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 669
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 670
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 671
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 672
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 673
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 674
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 675
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 676
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 677
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 678
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 679
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 680
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 681
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 682
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 683
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 684
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 685
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 686
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 687
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 688
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 689
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 690
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 691
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 692
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 693
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 694
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 695
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 696
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 697
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 698
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 699
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 700
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 701
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 702
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 703
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 704
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 705
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 706
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 707
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 708
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 709
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 710
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 711
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 712
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 713
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 714
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 715
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 716
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 717
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 718
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 719
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 720
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 721
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 722
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 723
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 724
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 725
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 726
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 727
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 728
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 729
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 730
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 731
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 732
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 733
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 734
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 735
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 736
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 737
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 738
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 739
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 740
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 741
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 742
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 743
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 744
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 745
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 746
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 747
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 748
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 749
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 750
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 751
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 752
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 753
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 754
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 755
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 756
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 757
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 758
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 759
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 760
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 761
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 762
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 763
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 764
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 765
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 766
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 767
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 768
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 769
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 770
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 771
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 772
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 773
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 774
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 775
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 776
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 777
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 778
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 779
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 780
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 781
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 782
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 783
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 784
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 785
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 786
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 787
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 788
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 789
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 790
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 791
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 792
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 793
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 794
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 795
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 796
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 797
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 798
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 799
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 800
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 801
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 802
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 803
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 804
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 805
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 806
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 807
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 808
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 809
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 810
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 811
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 812
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 813
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 814
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 815
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 816
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 817
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 818
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 819
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 820
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 821
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 822
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 823
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 824
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 825
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 826
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 827
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 828
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 829
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 830
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 831
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 832
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 833
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 834
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 835
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 836
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 837
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 838
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 839
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 840
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 841
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 842
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 843
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 844
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 845
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 846
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 847
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 848
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 849
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 850
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 851
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 852
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 853
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 854
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 855
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 856
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 857
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 858
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 859
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 860
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 861
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 862
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 863
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 864
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 865
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 866
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 867
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 868
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 869
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 870
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 871
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 872
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 873
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 874
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 875
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 876
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 877
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 878
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 879
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 880
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 881
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 882
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 883
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 884
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 885
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 886
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 887
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 888
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 889
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 890
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 891
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 892
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 893
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 894
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 895
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 896
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 897
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 898
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 899
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 900
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 901
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 902
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 903
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 904
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 905
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 906
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 907
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 908
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 909
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 910
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 911
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 912
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 913
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 914
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 915
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 916
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 917
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 918
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 919
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 920
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 921
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 922
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 923
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 924
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 925
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 926
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 927
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 928
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 929
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 930
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 931
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 932
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 933
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 934
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 935
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 936
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 937
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 938
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 939
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 940
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 941
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 942
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 943
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 944
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 945
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 946
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 947
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 948
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 949
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 950
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 951
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 952
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 953
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 954
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 955
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 956
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 957
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 958
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 959
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 960
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 961
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 962
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 963
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 964
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 965
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 966
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 967
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 968
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 969
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 970
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 971
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 972
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 973
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 974
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 975
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 976
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 977
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 978
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 979
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 980
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 981
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 982
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 983
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 984
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 985
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 986
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 987
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 988
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 989
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 990
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 991
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 992
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 993
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 994
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 995
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 996
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 997
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 998
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 999
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1000
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1001
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1002
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1003
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1004
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1005
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1006
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1007
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1008
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1009
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1010
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1011
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1012
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1013
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1014
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1015
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1016
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1017
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1018
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1019
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1020
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1021
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1022
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1023
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1024
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1025
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1026
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1027
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1028
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1029
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1030
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1031
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1032
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1033
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1034
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1035
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1036
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1037
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1038
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1039
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1040
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1041
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1042
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1043
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1044
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1045
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1046
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1047
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1048
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1049
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1050
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1051
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1052
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1053
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1054
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1055
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1056
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1057
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1058
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1059
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1060
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1061
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1062
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1063
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1064
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1065
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1066
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1067
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1068
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1069
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1070
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1071
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1072
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1073
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1074
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1075
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1076
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1077
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1078
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1079
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1080
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1081
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1082
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1083
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1084
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1085
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1086
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1087
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1088
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1089
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1090
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1091
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1092
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1093
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1094
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1095
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1096
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1097
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1098
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1099
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1100
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1101
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1102
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1103
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1104
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1105
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1106
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1107
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1108
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1109
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1110
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1111
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1112
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1113
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1114
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1115
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1116
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1117
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1118
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1119
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1120
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1121
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1122
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1123
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1124
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1125
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1126
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1127
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1128
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1129
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1130
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1131
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1132
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1133
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1134
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1135
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1136
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1137
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1138
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1139
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1140
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1141
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1142
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1143
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1144
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1145
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1146
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1147
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1148
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1149
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1150
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1151
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1152
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1153
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1154
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1155
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1156
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1157
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1158
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1159
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1160
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1161
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1162
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1163
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1164
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1165
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1166
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1167
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1168
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1169
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1170
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1171
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1172
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1173
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1174
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1175
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1176
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1177
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1178
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1179
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1180
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1181
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1182
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1183
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1184
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1185
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1186
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1187
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1188
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1189
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1190
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1191
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1192
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1193
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1194
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1195
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1196
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1197
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1198
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1199
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1200
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1201
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1202
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1203
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1204
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1205
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1206
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1207
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1208
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1209
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1210
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1211
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1212
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1213
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1214
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1215
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1216
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1217
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1218
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1219
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1220
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1221
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1222
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1223
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1224
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1225
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1226
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1227
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1228
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1229
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1230
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1231
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1232
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1233
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1234
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1235
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1236
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1237
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1238
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1239
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1240
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1241
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1242
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1243
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1244
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1245
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1246
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1247
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1248
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1249
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1250
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1251
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1252
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1253
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1254
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1255
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1256
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1257
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1258
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1259
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1260
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1261
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1262
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1263
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1264
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1265
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1266
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1267
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1268
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1269
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1270
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1271
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1272
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1273
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1274
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1275
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1276
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1277
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1278
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1279
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1280
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1281
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1282
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1283
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1284
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1285
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1286
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1287
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1288
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1289
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1290
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1291
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1292
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1293
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1294
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1295
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1296
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1297
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1298
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1299
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1300
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1301
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1302
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1303
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1304
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1305
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1306
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1307
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1308
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1309
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1310
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1311
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1312
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1313
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1314
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1315
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1316
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1317
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1318
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1319
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1320
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1321
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1322
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1323
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1324
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1325
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1326
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1327
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1328
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1329
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1330
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1331
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1332
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1333
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1334
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1335
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1336
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1337
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1338
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1339
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1340
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1341
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1342
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1343
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1344
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1345
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1346
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1347
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1348
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1349
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1350
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1351
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1352
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1353
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1354
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1355
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1356
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1357
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1358
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1359
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1360
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1361
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1362
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1363
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1364
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1365
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1366
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1367
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1368
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1369
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1370
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1371
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1372
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1373
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1374
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1375
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1376
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1377
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1378
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1379
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1380
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1381
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1382
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1383
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1384
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1385
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1386
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1387
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1388
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1389
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1390
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1391
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1392
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1393
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1394
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1395
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1396
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1397
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1398
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1399
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1400
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1401
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1402
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1403
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1404
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1405
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1406
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1407
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1408
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1409
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1410
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1411
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1412
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1413
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1414
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1415
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1416
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1417
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1418
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1419
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1420
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1421
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1422
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1423
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1424
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1425
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1426
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1427
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1428
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1429
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1430
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1431
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1432
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1433
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1434
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1435
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1436
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1437
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1438
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1439
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1440
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1441
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1442
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1443
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1444
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1445
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1446
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1447
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1448
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1449
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1450
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1451
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1452
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1453
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1454
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1455
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1456
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1457
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1458
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1459
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1460
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1461
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1462
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1463
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1464
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1465
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1466
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1467
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1468
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1469
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1470
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1471
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1472
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1473
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1474
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1475
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1476
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1477
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1478
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1479
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1480
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1481
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1482
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1483
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1484
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1485
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1486
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1487
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1488
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1489
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1490
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1491
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1492
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1493
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1494
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1495
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1496
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1497
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1498
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1499
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1500
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1501
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1502
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1503
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1504
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1505
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1506
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1507
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1508
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1509
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1510
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1511
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1512
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1513
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1514
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1515
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1516
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1517
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1518
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1519
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1520
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1521
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1522
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1523
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1524
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1525
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1526
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1527
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1528
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1529
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1530
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1531
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1532
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1533
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1534
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1535
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1536
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1537
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1538
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1539
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1540
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1541
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1542
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1543
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1544
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1545
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1546
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1547
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1548
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1549
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1550
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1551
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1552
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1553
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1554
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1555
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1556
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1557
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1558
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1559
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1560
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1561
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1562
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1563
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1564
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1565
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1566
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1567
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1568
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1569
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1570
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1571
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1572
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1573
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1574
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1575
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1576
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1577
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1578
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1579
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1580
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1581
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1582
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1583
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1584
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1585
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1586
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1587
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1588
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1589
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1590
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1591
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1592
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1593
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1594
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1595
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1596
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1597
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1598
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1599
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1600
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1601
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1602
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1603
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1604
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1605
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1606
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1607
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1608
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1609
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1610
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1611
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1612
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1613
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1614
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1615
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1616
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1617
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1618
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1619
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1620
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1621
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1622
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1623
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1624
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1625
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1626
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1627
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1628
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1629
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1630
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1631
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1632
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1633
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1634
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1635
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1636
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1637
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1638
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1639
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1640
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1641
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1642
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1643
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1644
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1645
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1646
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1647
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1648
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1649
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1650
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1651
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1652
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1653
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1654
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1655
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1656
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1657
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1658
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1659
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1660
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1661
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1662
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1663
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1664
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1665
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1666
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1667
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1668
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1669
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1670
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1671
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1672
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1673
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1674
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1675
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1676
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1677
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1678
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1679
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1680
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1681
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1682
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1683
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1684
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1685
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1686
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1687
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1688
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1689
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1690
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1691
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1692
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1693
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1694
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1695
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1696
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1697
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1698
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1699
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1700
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1701
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1702
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1703
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1704
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1705
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1706
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1707
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1708
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1709
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1710
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1711
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1712
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1713
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1714
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1715
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1716
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1717
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1718
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1719
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1720
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1721
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1722
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1723
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1724
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1725
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1726
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1727
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1728
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1729
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1730
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1731
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1732
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1733
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1734
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1735
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1736
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1737
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1738
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1739
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1740
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1741
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1742
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1743
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1744
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1745
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1746
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1747
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1748
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1749
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1750
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1751
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1752
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1753
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1754
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1755
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1756
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1757
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1758
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1759
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1760
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1761
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1762
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1763
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1764
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1765
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1766
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1767
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1768
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1769
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1770
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1771
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1772
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1773
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1774
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1775
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1776
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1777
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1778
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1779
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1780
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1781
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1782
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1783
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1784
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1785
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1786
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1787
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1788
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1789
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1790
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1791
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1792
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1793
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1794
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1795
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1796
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1797
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1798
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1799
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1800
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1801
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1802
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1803
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1804
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1805
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1806
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1807
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1808
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1809
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1810
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1811
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1812
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1813
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1814
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1815
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1816
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1817
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1818
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1819
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1820
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1821
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1822
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1823
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1824
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1825
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1826
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1827
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1828
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1829
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1830
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1831
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1832
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1833
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1834
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1835
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1836
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1837
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1838
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1839
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1840
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1841
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1842
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1843
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1844
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1845
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1846
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1847
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1848
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1849
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1850
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1851
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1852
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1853
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1854
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1855
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1856
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1857
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1858
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1859
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1860
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1861
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1862
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1863
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1864
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1865
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1866
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1867
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1868
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1869
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1870
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1871
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1872
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1873
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1874
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1875
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1876
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1877
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1878
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1879
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1880
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1881
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1882
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1883
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1884
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1885
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1886
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1887
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1888
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1889
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1890
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1891
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1892
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1893
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1894
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1895
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1896
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1897
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1898
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1899
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1900
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1901
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1902
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1903
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1904
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1905
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1906
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1907
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1908
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1909
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1910
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1911
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1912
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1913
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1914
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1915
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1916
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1917
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1918
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1919
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1920
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1921
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1922
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1923
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1924
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1925
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1926
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1927
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1928
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1929
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1930
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1931
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1932
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1933
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1934
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1935
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1936
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1937
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1938
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1939
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1940
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1941
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1942
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1943
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1944
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1945
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1946
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1947
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1948
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1949
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1950
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1951
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1952
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1953
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1954
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1955
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1956
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1957
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1958
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1959
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1960
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1961
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1962
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1963
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1964
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1965
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1966
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1967
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1968
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1969
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1970
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1971
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1972
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1973
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1974
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1975
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1976
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1977
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1978
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1979
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1980
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1981
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1982
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1983
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1984
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1985
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1986
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1987
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1988
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1989
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1990
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1991
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1992
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1993
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1994
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1995
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1996
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1997
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1998
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 1999
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2000
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2001
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2002
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2003
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2004
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2005
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2006
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2007
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2008
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2009
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2010
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2011
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2012
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2013
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2014
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2015
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2016
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2017
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2018
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2019
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2020
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2021
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2022
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2023
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2024
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2025
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2026
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2027
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2028
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2029
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2030
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2031
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2032
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2033
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2034
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2035
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2036
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2037
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2038
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2039
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2040
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2041
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2042
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2043
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2044
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2045
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2046
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2047
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2048
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2049
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2050
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2051
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2052
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2053
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2054
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2055
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2056
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2057
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2058
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2059
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2060
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2061
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2062
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2063
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2064
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2065
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2066
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2067
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2068
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2069
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2070
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2071
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2072
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2073
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2074
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2075
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2076
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2077
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2078
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2079
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2080
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2081
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2082
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2083
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2084
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2085
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2086
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2087
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2088
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2089
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2090
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2091
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2092
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2093
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2094
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2095
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2096
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2097
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2098
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2099
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2100
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2101
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2102
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2103
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2104
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2105
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2106
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2107
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2108
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2109
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2110
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2111
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2112
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2113
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2114
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2115
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2116
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2117
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2118
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2119
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2120
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2121
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2122
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2123
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2124
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2125
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2126
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2127
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2128
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2129
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2130
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2131
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2132
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2133
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2134
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2135
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2136
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2137
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2138
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2139
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2140
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2141
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2142
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2143
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2144
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2145
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2146
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2147
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2148
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2149
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2150
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2151
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2152
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2153
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2154
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2155
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2156
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2157
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2158
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2159
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2160
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2161
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2162
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2163
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2164
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2165
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2166
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2167
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2168
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2169
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2170
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2171
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2172
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2173
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2174
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2175
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2176
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2177
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2178
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2179
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2180
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2181
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2182
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2183
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2184
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2185
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2186
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2187
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2188
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2189
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2190
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2191
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2192
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2193
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2194
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2195
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2196
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2197
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2198
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2199
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2200
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2201
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2202
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2203
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2204
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2205
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2206
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2207
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2208
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2209
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2210
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2211
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2212
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2213
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2214
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2215
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2216
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2217
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2218
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2219
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2220
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2221
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2222
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2223
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2224
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2225
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2226
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2227
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2228
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2229
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2230
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2231
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2232
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2233
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2234
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2235
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2236
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2237
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2238
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2239
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2240
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2241
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2242
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2243
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2244
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2245
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2246
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2247
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2248
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2249
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2250
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2251
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2252
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2253
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2254
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2255
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2256
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2257
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2258
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2259
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2260
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2261
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2262
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2263
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2264
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2265
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2266
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2267
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2268
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2269
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2270
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2271
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2272
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2273
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2274
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2275
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2276
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2277
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2278
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2279
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2280
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2281
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2282
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2283
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2284
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2285
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2286
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2287
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2288
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2289
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2290
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2291
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2292
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2293
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2294
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2295
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2296
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2297
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2298
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2299
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2300
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2301
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2302
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2303
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2304
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2305
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2306
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2307
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2308
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2309
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2310
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2311
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2312
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2313
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2314
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2315
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2316
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2317
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2318
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2319
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2320
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2321
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2322
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2323
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2324
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2325
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2326
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2327
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2328
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2329
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2330
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2331
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2332
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2333
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2334
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2335
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2336
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2337
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2338
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2339
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2340
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2341
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2342
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2343
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2344
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2345
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2346
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2347
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2348
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2349
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2350
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2351
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2352
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2353
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2354
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2355
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2356
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2357
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2358
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2359
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2360
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2361
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2362
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2363
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2364
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2365
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2366
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2367
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2368
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2369
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2370
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2371
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2372
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2373
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2374
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2375
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2376
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2377
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2378
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2379
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2380
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2381
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2382
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2383
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2384
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2385
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2386
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2387
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2388
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2389
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2390
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2391
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2392
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2393
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2394
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2395
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2396
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2397
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2398
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2399
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2400
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2401
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2402
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2403
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2404
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2405
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2406
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2407
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2408
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2409
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2410
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2411
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2412
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2413
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2414
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2415
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2416
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2417
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2418
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2419
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2420
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2421
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2422
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2423
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2424
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2425
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2426
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2427
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2428
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2429
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2430
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2431
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2432
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2433
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2434
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2435
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2436
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2437
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2438
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2439
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2440
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2441
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2442
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2443
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2444
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2445
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2446
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2447
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2448
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2449
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2450
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2451
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2452
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2453
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2454
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2455
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2456
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2457
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2458
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2459
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2460
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2461
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2462
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2463
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2464
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2465
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2466
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2467
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2468
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2469
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2470
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2471
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2472
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2473
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2474
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2475
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2476
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2477
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2478
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2479
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2480
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2481
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2482
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2483
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2484
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2485
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2486
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2487
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2488
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2489
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2490
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2491
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2492
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2493
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2494
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2495
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2496
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2497
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2498
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2499
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2500
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2501
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2502
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2503
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2504
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2505
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2506
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2507
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2508
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2509
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2510
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2511
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2512
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2513
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2514
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2515
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2516
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2517
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2518
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2519
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2520
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2521
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2522
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2523
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2524
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2525
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2526
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2527
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2528
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2529
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2530
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2531
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2532
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2533
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2534
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2535
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2536
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2537
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2538
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2539
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2540
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2541
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2542
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2543
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2544
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2545
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2546
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2547
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2548
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2549
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2550
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2551
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2552
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2553
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2554
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2555
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2556
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2557
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2558
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2559
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2560
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2561
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2562
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2563
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2564
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2565
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2566
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2567
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2568
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2569
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2570
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2571
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2572
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2573
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2574
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2575
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2576
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2577
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2578
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2579
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2580
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2581
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2582
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2583
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2584
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2585
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2586
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2587
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2588
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2589
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2590
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2591
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2592
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2593
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2594
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2595
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2596
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2597
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2598
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2599
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2600
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2601
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2602
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2603
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2604
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2605
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2606
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2607
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2608
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2609
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2610
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2611
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2612
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2613
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2614
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2615
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2616
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2617
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2618
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2619
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2620
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2621
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2622
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2623
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2624
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2625
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2626
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2627
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2628
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2629
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2630
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2631
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2632
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2633
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2634
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2635
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2636
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2637
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2638
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2639
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2640
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2641
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2642
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2643
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2644
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2645
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2646
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2647
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2648
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2649
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2650
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2651
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2652
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2653
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2654
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2655
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2656
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2657
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2658
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2659
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2660
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2661
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2662
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2663
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2664
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2665
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2666
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2667
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2668
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2669
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2670
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2671
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2672
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2673
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2674
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2675
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2676
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2677
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2678
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2679
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2680
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2681
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2682
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2683
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2684
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2685
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2686
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2687
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2688
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2689
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2690
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2691
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2692
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2693
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2694
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2695
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2696
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2697
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2698
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2699
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2700
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2701
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2702
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2703
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2704
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2705
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2706
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2707
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2708
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2709
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2710
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2711
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2712
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2713
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2714
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2715
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2716
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2717
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2718
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2719
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2720
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2721
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2722
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2723
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2724
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2725
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2726
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2727
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2728
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2729
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2730
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2731
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2732
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2733
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2734
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2735
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2736
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2737
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2738
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2739
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2740
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2741
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2742
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2743
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2744
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2745
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2746
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2747
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2748
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2749
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2750
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2751
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2752
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2753
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2754
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2755
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2756
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2757
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2758
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2759
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2760
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2761
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2762
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2763
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2764
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2765
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2766
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2767
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2768
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2769
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2770
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2771
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2772
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2773
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2774
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2775
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2776
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2777
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2778
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2779
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2780
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2781
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2782
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2783
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2784
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2785
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2786
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2787
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2788
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2789
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2790
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2791
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2792
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2793
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2794
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2795
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2796
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2797
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2798
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2799
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2800
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2801
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2802
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2803
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2804
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2805
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2806
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2807
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2808
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2809
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2810
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2811
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2812
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2813
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2814
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2815
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2816
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2817
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2818
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2819
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2820
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2821
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2822
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2823
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2824
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2825
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2826
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2827
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2828
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2829
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2830
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2831
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2832
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2833
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2834
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2835
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2836
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2837
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2838
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2839
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2840
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2841
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2842
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2843
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2844
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2845
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2846
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2847
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2848
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2849
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2850
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2851
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2852
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2853
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2854
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2855
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2856
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2857
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2858
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2859
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2860
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2861
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2862
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2863
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2864
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2865
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2866
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2867
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2868
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2869
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2870
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2871
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2872
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2873
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2874
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2875
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2876
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2877
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2878
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2879
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2880
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2881
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2882
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2883
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2884
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2885
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2886
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2887
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2888
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2889
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2890
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2891
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2892
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2893
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2894
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2895
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2896
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2897
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2898
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2899
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2900
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2901
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2902
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2903
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2904
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2905
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2906
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2907
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2908
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2909
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2910
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2911
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2912
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2913
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2914
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2915
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2916
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2917
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2918
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2919
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2920
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2921
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2922
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2923
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2924
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2925
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2926
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2927
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2928
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2929
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2930
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2931
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2932
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2933
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2934
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2935
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2936
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2937
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2938
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2939
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2940
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2941
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2942
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2943
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2944
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2945
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2946
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2947
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2948
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2949
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2950
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2951
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2952
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2953
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2954
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2955
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2956
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2957
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2958
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2959
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2960
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2961
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2962
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2963
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2964
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2965
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2966
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2967
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2968
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2969
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2970
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2971
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2972
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2973
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2974
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2975
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2976
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2977
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2978
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2979
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2980
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2981
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2982
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2983
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2984
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2985
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2986
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2987
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2988
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2989
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2990
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2991
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2992
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2993
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2994
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2995
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2996
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2997
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2998
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 2999
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3000
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3001
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3002
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3003
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3004
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3005
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3006
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3007
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3008
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3009
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3010
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3011
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3012
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3013
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3014
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3015
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3016
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3017
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3018
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3019
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3020
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3021
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3022
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3023
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3024
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3025
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3026
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3027
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3028
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3029
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3030
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3031
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3032
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3033
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3034
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3035
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3036
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3037
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3038
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3039
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3040
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3041
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3042
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3043
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3044
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3045
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3046
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3047
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3048
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3049
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3050
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3051
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3052
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3053
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3054
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3055
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3056
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3057
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3058
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3059
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3060
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3061
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3062
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3063
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3064
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3065
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3066
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3067
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3068
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3069
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3070
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3071
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3072
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3073
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3074
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3075
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3076
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3077
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3078
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3079
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3080
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3081
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3082
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3083
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3084
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3085
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3086
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3087
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3088
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3089
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3090
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3091
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3092
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3093
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3094
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3095
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3096
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3097
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3098
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3099
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3100
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3101
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3102
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3103
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3104
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3105
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3106
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3107
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3108
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3109
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3110
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3111
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3112
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3113
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3114
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3115
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3116
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3117
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3118
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3119
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3120
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3121
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3122
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3123
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3124
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3125
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3126
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3127
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3128
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3129
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3130
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3131
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3132
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3133
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3134
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3135
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3136
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3137
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3138
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3139
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3140
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3141
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3142
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3143
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3144
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3145
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3146
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3147
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3148
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3149
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3150
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3151
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3152
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3153
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3154
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3155
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3156
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3157
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3158
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3159
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3160
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3161
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3162
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3163
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3164
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3165
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3166
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3167
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3168
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3169
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3170
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3171
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3172
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3173
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3174
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3175
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3176
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3177
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3178
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3179
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3180
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3181
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3182
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3183
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3184
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3185
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3186
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3187
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3188
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3189
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3190
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3191
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3192
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3193
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3194
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3195
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3196
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3197
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3198
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3199
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3200
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3201
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3202
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3203
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3204
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3205
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3206
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3207
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3208
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3209
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3210
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3211
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3212
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3213
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3214
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3215
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3216
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3217
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3218
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3219
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3220
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3221
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3222
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3223
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3224
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3225
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3226
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3227
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3228
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3229
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3230
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3231
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3232
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3233
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3234
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3235
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3236
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3237
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3238
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3239
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3240
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3241
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3242
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3243
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3244
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3245
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3246
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3247
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3248
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3249
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3250
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3251
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3252
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3253
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3254
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3255
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3256
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3257
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3258
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3259
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3260
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3261
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3262
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3263
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3264
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3265
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3266
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3267
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3268
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3269
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3270
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3271
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3272
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3273
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3274
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3275
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3276
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3277
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3278
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3279
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3280
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3281
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3282
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3283
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3284
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3285
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3286
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3287
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3288
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3289
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3290
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3291
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3292
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3293
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3294
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3295
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3296
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3297
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3298
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3299
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3300
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3301
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3302
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3303
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3304
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3305
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3306
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3307
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3308
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3309
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3310
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3311
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3312
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3313
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3314
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3315
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3316
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3317
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3318
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3319
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3320
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3321
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3322
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3323
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3324
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3325
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3326
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3327
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3328
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3329
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3330
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3331
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3332
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3333
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3334
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3335
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3336
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3337
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3338
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3339
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3340
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3341
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3342
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3343
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3344
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3345
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3346
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3347
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3348
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3349
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3350
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3351
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3352
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3353
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3354
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3355
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3356
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3357
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3358
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3359
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3360
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3361
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3362
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3363
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3364
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3365
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3366
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3367
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3368
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3369
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3370
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3371
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3372
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3373
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3374
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3375
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3376
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3377
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3378
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3379
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3380
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3381
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3382
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3383
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3384
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3385
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3386
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3387
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3388
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3389
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3390
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3391
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3392
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3393
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3394
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3395
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3396
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3397
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3398
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3399
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3400
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3401
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3402
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3403
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3404
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3405
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3406
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3407
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3408
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3409
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3410
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3411
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3412
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3413
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3414
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3415
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3416
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3417
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3418
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3419
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3420
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3421
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3422
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3423
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3424
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3425
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3426
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3427
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3428
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3429
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3430
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3431
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3432
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3433
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3434
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3435
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3436
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3437
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3438
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3439
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3440
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3441
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3442
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3443
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3444
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3445
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3446
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3447
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3448
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3449
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3450
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3451
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3452
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3453
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3454
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3455
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3456
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3457
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3458
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3459
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3460
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3461
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3462
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3463
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3464
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3465
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3466
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3467
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3468
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3469
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3470
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3471
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3472
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3473
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3474
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3475
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3476
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3477
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3478
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3479
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3480
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3481
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3482
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3483
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3484
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3485
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3486
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3487
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3488
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3489
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3490
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3491
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3492
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3493
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3494
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3495
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3496
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3497
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3498
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3499
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3500
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3501
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3502
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3503
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3504
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3505
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3506
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3507
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3508
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3509
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3510
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3511
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3512
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3513
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3514
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3515
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3516
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3517
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3518
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3519
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3520
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3521
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3522
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3523
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3524
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3525
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3526
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3527
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3528
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3529
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3530
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3531
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3532
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3533
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3534
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3535
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3536
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3537
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3538
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3539
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3540
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3541
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3542
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3543
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3544
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3545
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3546
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3547
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3548
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3549
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3550
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3551
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3552
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3553
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3554
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3555
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3556
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3557
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3558
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3559
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3560
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3561
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3562
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3563
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3564
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3565
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3566
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3567
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3568
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3569
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3570
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3571
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3572
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3573
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3574
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3575
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3576
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3577
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3578
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3579
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3580
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3581
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3582
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3583
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3584
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3585
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3586
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3587
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3588
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3589
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3590
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3591
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3592
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3593
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3594
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3595
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3596
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3597
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3598
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3599
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3600
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3601
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3602
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3603
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3604
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3605
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3606
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3607
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3608
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3609
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3610
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3611
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3612
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3613
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3614
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3615
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3616
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3617
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3618
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3619
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3620
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3621
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3622
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3623
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3624
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3625
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3626
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3627
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3628
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3629
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3630
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3631
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3632
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3633
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3634
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3635
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3636
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3637
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3638
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3639
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3640
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3641
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3642
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3643
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3644
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3645
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3646
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3647
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3648
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3649
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3650
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3651
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3652
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3653
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3654
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3655
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3656
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3657
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3658
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3659
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3660
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3661
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3662
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3663
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3664
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3665
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3666
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3667
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3668
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3669
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3670
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3671
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3672
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3673
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3674
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3675
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3676
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3677
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3678
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3679
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3680
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3681
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3682
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3683
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3684
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3685
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3686
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3687
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3688
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3689
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3690
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3691
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3692
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3693
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3694
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3695
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3696
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3697
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3698
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3699
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3700
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3701
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3702
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3703
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3704
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3705
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3706
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3707
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3708
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3709
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3710
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3711
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3712
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3713
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3714
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3715
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3716
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3717
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3718
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3719
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3720
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3721
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3722
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3723
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3724
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3725
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3726
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3727
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3728
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3729
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3730
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3731
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3732
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3733
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3734
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3735
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3736
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3737
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3738
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3739
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3740
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3741
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3742
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3743
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3744
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3745
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3746
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3747
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3748
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3749
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3750
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3751
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3752
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3753
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3754
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3755
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3756
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3757
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3758
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3759
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3760
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3761
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3762
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3763
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3764
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3765
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3766
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3767
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3768
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3769
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3770
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3771
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3772
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3773
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3774
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3775
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3776
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3777
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3778
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3779
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3780
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3781
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3782
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3783
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3784
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3785
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3786
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3787
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3788
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3789
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3790
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3791
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3792
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3793
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3794
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3795
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3796
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3797
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3798
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3799
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3800
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3801
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3802
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3803
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3804
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3805
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3806
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3807
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3808
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3809
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3810
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3811
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3812
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3813
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3814
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3815
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3816
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3817
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3818
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3819
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3820
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3821
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3822
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3823
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3824
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3825
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3826
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3827
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3828
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3829
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3830
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3831
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3832
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3833
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3834
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3835
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3836
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3837
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3838
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3839
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3840
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3841
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3842
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3843
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3844
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3845
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3846
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3847
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3848
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3849
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3850
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3851
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3852
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3853
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3854
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3855
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3856
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3857
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3858
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3859
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3860
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3861
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3862
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3863
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3864
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3865
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3866
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3867
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3868
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3869
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3870
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3871
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3872
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3873
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3874
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3875
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3876
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3877
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3878
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3879
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3880
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3881
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3882
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3883
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3884
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3885
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3886
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3887
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3888
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3889
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3890
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3891
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3892
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3893
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3894
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3895
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3896
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3897
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3898
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3899
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3900
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3901
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3902
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3903
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3904
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3905
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3906
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3907
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3908
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3909
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3910
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3911
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3912
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3913
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3914
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3915
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3916
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3917
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3918
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3919
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3920
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3921
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3922
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3923
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3924
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3925
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3926
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3927
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3928
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3929
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3930
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3931
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3932
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3933
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3934
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3935
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3936
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3937
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3938
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3939
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3940
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3941
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3942
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3943
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3944
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3945
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3946
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3947
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3948
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3949
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3950
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3951
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3952
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3953
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3954
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3955
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3956
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3957
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3958
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3959
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3960
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3961
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3962
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3963
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3964
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3965
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3966
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3967
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3968
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3969
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3970
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3971
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3972
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3973
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3974
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3975
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3976
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3977
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3978
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3979
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3980
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3981
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3982
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3983
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3984
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3985
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3986
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3987
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3988
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3989
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3990
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3991
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3992
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3993
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3994
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3995
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3996
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3997
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3998
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 3999
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4000
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4001
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4002
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4003
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4004
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4005
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4006
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4007
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4008
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4009
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4010
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4011
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4012
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4013
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4014
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4015
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4016
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4017
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4018
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4019
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4020
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4021
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4022
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4023
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4024
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4025
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4026
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4027
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4028
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4029
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4030
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4031
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4032
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4033
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4034
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4035
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4036
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4037
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4038
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4039
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4040
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4041
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4042
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4043
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4044
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4045
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4046
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4047
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4048
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4049
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4050
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4051
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4052
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4053
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4054
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4055
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4056
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4057
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4058
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4059
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4060
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4061
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4062
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4063
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4064
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4065
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4066
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4067
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4068
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4069
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4070
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4071
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4072
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4073
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4074
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4075
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4076
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4077
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4078
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4079
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4080
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4081
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4082
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4083
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4084
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4085
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4086
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4087
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4088
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4089
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4090
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4091
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4092
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4093
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4094
	mov 0,%i0
	ret
	restore
	call %g2
	nop
	.long 4095
	mov 0,%i0
	ret
	restore
	ld	[%i0+24], %g3
.LL54:
	ld	[%i0+4], %l0
	ld	[%g3], %o0
	ld	[%g3+4], %o1
	ld	[%g3+8], %o2
	ld	[%g3+12], %o3
	ld	[%g3+16], %o4
	call	%l0, 0
	ld	[%g3+20], %o5
	nop
	ld	[%i0+12], %g3
	cmp	%g3, 1
	be	.LL11
	mov	%o0, %o7
	cmp	%g3, 2
	be	.LL52
	cmp	%g3, 3
	be	.LL52
	cmp	%g3, 4
	be	.LL52
	cmp	%g3, 5
	be	.LL51
	cmp	%g3, 6
	be	.LL51
	cmp	%g3, 7
	be	.LL49
	cmp	%g3, 8
	be	.LL49
	cmp	%g3, 9
	be	.LL49
	cmp	%g3, 10
	be	.LL49
	add	%g3, -11, %g3
	cmp	%g3, 1
	bgu,a	.LL30
	ld	[%i0+12], %g3
	ld	[%i0+8], %g3
	st	%o0, [%g3]
	b	.LL11
	st	%o1, [%g3+4]
.LL30:
	cmp	%g3, 13
	bne,a	.LL32
	ld	[%i0+12], %g3
	ld	[%i0], %g3
	andcc	%g3, 32, %g0
	be	.LL33
	ld	[%i0+8], %g3
	fdtos	%f0, %f0
.LL33:
	b	.LL11
	st	%f0, [%g3]
.LL32:
	cmp	%g3, 14
	bne,a	.LL36
	ld	[%i0+12], %g3
	ld	[%i0+8], %g3
	b	.LL11
	std	%f0, [%g3]
.LL36:
	cmp	%g3, 15
	be,a	.LL55
	ld	[%i0+8], %g3
	ld	[%i0+12], %g3
	cmp	%g3, 16
	bne	.LL11
	nop
	ld	[%i0], %g3
	andcc	%g3, 2, %g0
	be	.LL11
	nop
	ld	[%i0+16], %g3
	cmp	%g3, 1
	bne	.LL42
	cmp	%g3, 2
.LL52:
	ld	[%i0+8], %g3
	b	.LL11
	stb	%o7, [%g3]
.LL42:
	bne,a	.LL44
	ld	[%i0+16], %g3
.LL51:
	ld	[%i0+8], %g3
	b	.LL11
	sth	%o7, [%g3]
.LL44:
	cmp	%g3, 4
	bne	.LL11
	nop
.LL49:
	ld	[%i0+8], %g3
.LL55:
	st	%o7, [%g3]
.LL11:
	ret
	restore %g0, 0, %o0
.LLfe1:
	.size	avcall_call,.LLfe1-avcall_call
	.ident	"GCC: (GNU) 3.1"
