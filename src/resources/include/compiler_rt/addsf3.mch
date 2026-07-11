#include "_ll_std"

// -- Begin function __addsf3
__addsf3:                               // @__addsf3
// %bb.0:
sub	rsp, 44
	mov	[rsp+40], x0
	mov	[rsp+36], x1
	mov	[rsp+32], x2
	mov	[rsp+28], x3
	mov	[rsp+24], x4
	mov	[rsp+20], x5
	mov	[rsp+16], x6
	mov	[rsp+12], x7
	mov	[rsp+8], x8
	mov	[rsp+4], x9
	mov	[rsp], x10
	mov	x3, r1
	mov	x2, r0
	mov	r1, 0
	mov	r3, 1
	mov	r0, 1
	jl	x2, r1, .LBB0_2
// %bb.1:
	mov	r0, 0
.LBB0_2:
	mov	r2, r0
	mul	r2, -2147483648
	mov	r4, x2
	sub	r4, r2
	mov	r2, -2147483648
	je	r4, r2, .LBB0_4
// %bb.3:
	mov	r3, 0
.LBB0_4:
	mov	r5, 0
	sub	r5, r3
	add	r5, r0
	mul	r5, -2147483648
	mov	r4, 1
	mov	r3, 1
	jl	x3, r1, .LBB0_6
// %bb.5:
	mov	r3, 0
.LBB0_6:
	mov	r0, x2
	mov	r6, r3
	mul	r6, -2147483648
	mov	r7, x3
	sub	r7, r6
	sub	r0, r5
	je	r7, r2, .LBB0_8
// %bb.7:
	mov	r4, 0
.LBB0_8:
	sub	r1, r4
	add	r1, r3
	mul	r1, -2147483648
	mov	r2, x3
	mov	r3, r0
add	r3, 8388608
	mov	r4, 8388609
	sub	r2, r1
	jl	r3, r4, .LBB0_10
	jmp	.LBB0_9
.LBB0_9:
	mov	r1, r2
add	r1, -2139095040
add	r1, -2147483648
	mov	r3, 8388608
	jg	r1, r3, .LBB0_27
	jmp	.LBB0_10
.LBB0_10:
	mov	r1, 2139095041
	jl	r0, r1, .LBB0_14
	jmp	.LBB0_11
.LBB0_11:
	mov	r1, 0
	mov	r0, 1
	jl	x2, r1, .LBB0_13
// %bb.12:
	mov	r0, 0
.LBB0_13:
	mov	r1, r0
	mul	r1, 512
	mul	r0, -2147483648
	mov	r2, x2
	sub	r2, r0
	div	r2, 4194304
	add	r2, r1
	mov	r0, r2
	div	r0, 2
	mul	r0, 2
	sub	r2, r0
	mul	r2, 4194304
	sub	x2, r2
add	x2, 4194304
	mov	rax, x2
	jmp	.LBB0_156
.LBB0_14:
	jl	r2, r1, .LBB0_18
	jmp	.LBB0_15
.LBB0_15:
	mov	r1, 0
	mov	r0, 1
	jl	x3, r1, .LBB0_17
// %bb.16:
	mov	r0, 0
.LBB0_17:
	mov	r1, r0
	mul	r1, 512
	mul	r0, -2147483648
	mov	r2, x3
	sub	r2, r0
	div	r2, 4194304
	add	r2, r1
	mov	r0, r2
	div	r0, 2
	mul	r0, 2
	sub	r2, r0
	mul	r2, 4194304
	sub	x3, r2
add	x3, 4194304
	mov	rax, x3
	jmp	.LBB0_156
.LBB0_18:
	mov	r1, 2139095040
	jne	r0, r1, .LBB0_22
	jmp	.LBB0_19
.LBB0_19:
	mov	r0, x3
	mov	r1, x2
	call	__bit_xor
	mov	r0, -2147483648
	mov	r2, 1
	je	rax, r0, .LBB0_21
// %bb.20:
	mov	r2, 0
.LBB0_21:
	mov	r1, 2143289344
	sub	r1, x2
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	rax, x2
	jmp	.LBB0_156
.LBB0_22:
	mov	rax, x3
	je	r2, r1, .LBB0_156
	jmp	.LBB0_23
.LBB0_23:
	jnz	r0, .LBB0_26
	jmp	.LBB0_24
.LBB0_24:
	mov	rax, x3
	jnz	r2, .LBB0_156
	jmp	.LBB0_25
.LBB0_25:
	mov	r0, x3
	mov	r1, x2
	call	__bit_and
	jmp	.LBB0_156
.LBB0_26:
	mov	rax, x2
	jz	r2, .LBB0_156
	jmp	.LBB0_27
.LBB0_27:
	mov	x4, x2
	jg	r2, r0, .LBB0_29
	jmp	.LBB0_28
.LBB0_28:
	mov	x4, x3
.LBB0_29:
add	r0, -2147483648
add	r2, -2147483648
	mov	x7, x3
	jg	r2, r0, .LBB0_31
	jmp	.LBB0_30
.LBB0_30:
	mov	x7, x2
.LBB0_31:
	mov	r2, 0
	mov	r1, 1
	mov	r3, 1
	jl	x7, r2, .LBB0_33
// %bb.32:
	mov	r3, 0
.LBB0_33:
	mov	r4, r3
	mul	r4, 256
	mul	r3, -2147483648
	mov	r0, x7
	sub	r0, r3
	div	r0, 8388608
	add	r0, r4
	mov	r3, r0
	div	r3, 256
	mul	r3, 256
	mov	x1, r0
	sub	x1, r3
	jl	x4, r2, .LBB0_35
// %bb.34:
	mov	r1, 0
.LBB0_35:
	mov	r2, r1
	mul	r2, 256
	mul	r1, -2147483648
	mov	x9, x4
	sub	x9, r1
	div	x9, 8388608
	add	x9, r2
	mov	r1, x9
	div	r1, 256
	mul	r1, 256
	mov	x8, x9
	sub	x8, r1
	mul	r0, 8388608
	mov	x0, x7
	sub	x0, r0
	mul	x9, 8388608
	jnz	x1, .LBB0_53
	jmp	.LBB0_36
.LBB0_36:
	mov	x10, 0
	mov	x1, 1
	mov	r0, 1
	jl	x0, x10, .LBB0_38
// %bb.37:
	mov	r0, 0
.LBB0_38:
	mov	r2, r0
	mul	r2, 1073741824
	mul	r0, -2147483648
	mov	r1, x0
	sub	r1, r0
	div	r1, 2
	add	r1, r2
	mov	r0, x0
	call	__bit_or
	jl	rax, x10, .LBB0_40
// %bb.39:
	mov	x1, 0
.LBB0_40:
	mov	r0, x1
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 4
	mul	x1, 536870912
	add	x1, r1
	mov	r0, rax
	mov	r1, x1
	call	__bit_or
	mov	x1, 1
	mov	r1, 1
	jl	rax, x10, .LBB0_42
// %bb.41:
	mov	r1, 0
.LBB0_42:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 16
	mul	r1, 134217728
	add	r1, r2
	mov	r0, rax
	call	__bit_or
	jl	rax, x10, .LBB0_44
// %bb.43:
	mov	x1, 0
.LBB0_44:
	mov	r0, x1
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 256
	mul	x1, 8388608
	add	x1, r1
	mov	r0, rax
	mov	r1, x1
	call	__bit_or
	mov	x1, 1
	mov	r1, 1
	jl	rax, x10, .LBB0_46
// %bb.45:
	mov	r1, 0
.LBB0_46:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 65536
	mul	r1, 32768
	add	r1, r2
	mov	r0, rax
	call	__bit_or
	mov	x5, rax
	jl	x5, x10, .LBB0_48
// %bb.47:
	mov	x1, 0
.LBB0_48:
	mov	r0, x1
	mul	r0, -2147483648
	mov	r1, x5
	sub	r1, r0
	div	r1, 2
	mul	x1, 1073741824
	add	x1, r1
	mov	r1, 1431655765
	mov	r0, x1
	call	__bit_and
	sub	x5, rax
	mov	x1, 1
	mov	r0, 1
	jl	x5, x10, .LBB0_50
// %bb.49:
	mov	r0, 0
.LBB0_50:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x5
	sub	r2, r1
	div	r2, 4
	mul	r0, 536870912
	add	r0, r2
	mov	r1, 858993459
	call	__bit_and
	mov	r1, 858993459
	mov	x6, rax
	mov	r0, x5
	call	__bit_and
	add	rax, x6
	mov	r0, rax
	div	r0, 16
	add	r0, rax
	mov	r1, r0
	div	r1, 16
	mul	r1, 16
	mov	r2, r0
	mov	r3, r0
	div	r3, 256
	sub	r2, r1
	mov	r1, r3
	div	r1, 16
	mul	r1, 16
	sub	r3, r1
	mul	r3, 256
	mov	r1, r0
	div	r1, 65536
	add	r3, r2
	mov	r2, r1
	div	r2, 16
	mul	r2, 16
	sub	r1, r2
	mul	r1, 65536
	div	r0, 16777216
	add	r1, r3
	mov	r2, r0
	div	r2, 16
	mul	r2, 16
	sub	r0, r2
	mul	r0, 16777216
	add	r0, r1
	mul	r0, 16843009
	jl	r0, x10, .LBB0_52
// %bb.51:
	mov	x1, 0
.LBB0_52:
	mov	r1, x1
	mul	r1, -2147483648
	sub	r0, r1
	div	r0, 16777216
	mul	x1, 128
	add	x1, r0
	mov	r1, 24
	sub	r1, x1
	mov	r0, x0
	call	__bit_shl
	mov	x0, rax
add	x1, -23
.LBB0_53:
	sub	x4, x9
	jnz	x8, .LBB0_71
	jmp	.LBB0_54
.LBB0_54:
	mov	x9, 0
	mov	x5, 1
	mov	r0, 1
	jl	x4, x9, .LBB0_56
// %bb.55:
	mov	r0, 0
.LBB0_56:
	mov	r2, r0
	mul	r2, 1073741824
	mul	r0, -2147483648
	mov	r1, x4
	sub	r1, r0
	div	r1, 2
	add	r1, r2
	mov	r0, x4
	call	__bit_or
	jl	rax, x9, .LBB0_58
// %bb.57:
	mov	x5, 0
.LBB0_58:
	mov	r0, x5
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 4
	mul	x5, 536870912
	add	x5, r1
	mov	r0, rax
	mov	r1, x5
	call	__bit_or
	mov	x5, 1
	mov	r1, 1
	jl	rax, x9, .LBB0_60
// %bb.59:
	mov	r1, 0
.LBB0_60:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 16
	mul	r1, 134217728
	add	r1, r2
	mov	r0, rax
	call	__bit_or
	jl	rax, x9, .LBB0_62
// %bb.61:
	mov	x5, 0
.LBB0_62:
	mov	r0, x5
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 256
	mul	x5, 8388608
	add	x5, r1
	mov	r0, rax
	mov	r1, x5
	call	__bit_or
	mov	x6, 1
	mov	r1, 1
	jl	rax, x9, .LBB0_64
// %bb.63:
	mov	r1, 0
.LBB0_64:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 65536
	mul	r1, 32768
	add	r1, r2
	mov	r0, rax
	call	__bit_or
	mov	x5, rax
	jl	x5, x9, .LBB0_66
// %bb.65:
	mov	x6, 0
.LBB0_66:
	mov	r0, x6
	mul	r0, -2147483648
	mov	r1, x5
	sub	r1, r0
	div	r1, 2
	mul	x6, 1073741824
	add	x6, r1
	mov	r1, 1431655765
	mov	r0, x6
	call	__bit_and
	sub	x5, rax
	mov	x8, 1
	mov	r0, 1
	jl	x5, x9, .LBB0_68
// %bb.67:
	mov	r0, 0
.LBB0_68:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x5
	sub	r2, r1
	div	r2, 4
	mul	r0, 536870912
	add	r0, r2
	mov	r1, 858993459
	call	__bit_and
	mov	r1, 858993459
	mov	x6, rax
	mov	r0, x5
	call	__bit_and
	add	rax, x6
	mov	r0, rax
	div	r0, 16
	add	r0, rax
	mov	r1, r0
	div	r1, 16
	mul	r1, 16
	mov	r2, r0
	mov	r3, r0
	div	r3, 256
	sub	r2, r1
	mov	r1, r3
	div	r1, 16
	mul	r1, 16
	sub	r3, r1
	mul	r3, 256
	mov	r1, r0
	div	r1, 65536
	add	r3, r2
	mov	r2, r1
	div	r2, 16
	mul	r2, 16
	sub	r1, r2
	mul	r1, 65536
	div	r0, 16777216
	add	r1, r3
	mov	r2, r0
	div	r2, 16
	mul	r2, 16
	sub	r0, r2
	mul	r0, 16777216
	add	r0, r1
	mul	r0, 16843009
	jl	r0, x9, .LBB0_70
// %bb.69:
	mov	x8, 0
.LBB0_70:
	mov	r1, x8
	mul	r1, -2147483648
	sub	r0, r1
	div	r0, 16777216
	mul	x8, 128
	add	x8, r0
	mov	r1, 24
	sub	r1, x8
	mov	r0, x4
	call	__bit_shl
	mov	x4, rax
add	x8, -23
.LBB0_71:
	mov	x9, 0
	mov	r0, 1
	mov	x6, 1
	jl	x7, x9, .LBB0_73
// %bb.72:
	mov	x6, 0
.LBB0_73:
	mov	r1, x6
	mul	r1, -2147483648
	sub	x7, r1
	mov	r1, -2147483648
	je	x7, r1, .LBB0_75
// %bb.74:
	mov	r0, 0
.LBB0_75:
	mov	x5, 0
	sub	x5, r0
	mov	x10, 1
	mov	x7, 1
	jl	x5, x9, .LBB0_77
// %bb.76:
	mov	x7, 0
.LBB0_77:
	mov	r0, x7
	mul	r0, -2147483648
	mov	r1, x5
	sub	r1, r0
	div	r1, 2
	mul	x7, 1073741824
	add	x7, r1
	mul	x7, 2
	mov	r0, x3
	mov	r1, x2
	call	__bit_xor
	mul	x0, 8
	jl	x0, x9, .LBB0_79
// %bb.78:
	mov	x10, 0
.LBB0_79:
	mov	r1, x10
	mul	r1, 32
	mul	x10, -2147483648
	mov	r0, x0
	sub	r0, x10
	div	r0, 67108864
	add	r0, r1
	sub	x5, x7
	mov	r1, r0
	div	r1, 2
	mul	r1, 2
	sub	r0, r1
	mul	r0, 67108864
	mul	x4, 8
	mov	r1, 1
	jl	x4, x9, .LBB0_81
// %bb.80:
	mov	r1, 0
.LBB0_81:
	mov	r2, r1
	mul	r1, -2147483648
	mov	r3, x4
	sub	r3, r1
	mul	r2, 32
	div	r3, 67108864
	add	r3, r2
	add	x5, x6
	mov	r1, r3
	div	r1, 2
	mul	r1, 2
	sub	r3, r1
	mul	r3, 67108864
	sub	x4, r3
add	x4, 67108864
	sub	x0, r0
	mov	r1, x4
	je	x1, x8, .LBB0_88
	jmp	.LBB0_82
.LBB0_82:
	mov	x3, x1
	sub	x3, x8
	mov	r0, x3
add	r0, -2147483648
	mov	r2, -2147483617
	mov	r1, 1
	jg	r0, r2, .LBB0_88
	jmp	.LBB0_83
.LBB0_83:
	mov	x6, rax
	mov	r1, 32
	sub	r1, x3
	mov	r0, x4
	call	__bit_shl
	mov	x8, 0
	mov	x7, 1
	mov	x2, 1
	jne	rax, x8, .LBB0_85
// %bb.84:
	mov	x2, 0
.LBB0_85:
	mov	r0, x4
	mov	r1, x3
	call	__bit_shr
	jl	x2, x8, .LBB0_87
// %bb.86:
	mov	x7, 0
.LBB0_87:
	mov	r0, x7
	mul	r0, -2147483648
	mov	r1, x2
	sub	r1, r0
	div	r1, 2
	mul	x7, 1073741824
	add	x7, r1
	mul	x7, 2
	sub	x2, x7
	mov	r0, rax
	mov	r1, x2
	call	__bit_or
	mov	r1, rax
	mov	rax, x6
.LBB0_88:
	mul	x5, -2147483648
	mov	r0, -1
add	x0, 67108864
	jg	rax, r0, .LBB0_108
	jmp	.LBB0_89
.LBB0_89:
	mov	rax, 0
	je	x0, r1, .LBB0_156
	jmp	.LBB0_90
.LBB0_90:
	sub	x0, r1
	mov	r0, x0
add	r0, -2147483648
	mov	r1, -2080374785
	jg	r0, r1, .LBB0_116
	jmp	.LBB0_91
.LBB0_91:
	mov	x4, 0
	mov	x2, 1
	mov	r0, 1
	jl	x0, x4, .LBB0_93
// %bb.92:
	mov	r0, 0
.LBB0_93:
	mov	r2, r0
	mul	r2, 1073741824
	mul	r0, -2147483648
	mov	r1, x0
	sub	r1, r0
	div	r1, 2
	add	r1, r2
	mov	r0, x0
	call	__bit_or
	jl	rax, x4, .LBB0_95
// %bb.94:
	mov	x2, 0
.LBB0_95:
	mov	r0, x2
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 4
	mul	x2, 536870912
	add	x2, r1
	mov	r0, rax
	mov	r1, x2
	call	__bit_or
	mov	x2, 1
	mov	r1, 1
	jl	rax, x4, .LBB0_97
// %bb.96:
	mov	r1, 0
.LBB0_97:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 16
	mul	r1, 134217728
	add	r1, r2
	mov	r0, rax
	call	__bit_or
	jl	rax, x4, .LBB0_99
// %bb.98:
	mov	x2, 0
.LBB0_99:
	mov	r0, x2
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 256
	mul	x2, 8388608
	add	x2, r1
	mov	r0, rax
	mov	r1, x2
	call	__bit_or
	mov	x3, 1
	mov	r1, 1
	jl	rax, x4, .LBB0_101
// %bb.100:
	mov	r1, 0
.LBB0_101:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 65536
	mul	r1, 32768
	add	r1, r2
	mov	r0, rax
	call	__bit_or
	mov	x2, rax
	jl	x2, x4, .LBB0_103
// %bb.102:
	mov	x3, 0
.LBB0_103:
	mov	r0, x3
	mul	r0, -2147483648
	mov	r1, x2
	sub	r1, r0
	div	r1, 2
	mul	x3, 1073741824
	add	x3, r1
	mov	r1, 1431655765
	mov	r0, x3
	call	__bit_and
	sub	x2, rax
	mov	x6, 1
	mov	r0, 1
	jl	x2, x4, .LBB0_105
// %bb.104:
	mov	r0, 0
.LBB0_105:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x2
	sub	r2, r1
	div	r2, 4
	mul	r0, 536870912
	add	r0, r2
	mov	r1, 858993459
	call	__bit_and
	mov	r1, 858993459
	mov	x3, rax
	mov	r0, x2
	call	__bit_and
	add	rax, x3
	mov	r0, rax
	div	r0, 16
	add	r0, rax
	mov	r1, r0
	div	r1, 16
	mul	r1, 16
	mov	r2, r0
	mov	r3, r0
	div	r3, 256
	sub	r2, r1
	mov	r1, r3
	div	r1, 16
	mul	r1, 16
	sub	r3, r1
	mul	r3, 256
	mov	r1, r0
	div	r1, 65536
	add	r3, r2
	mov	r2, r1
	div	r2, 16
	mul	r2, 16
	sub	r1, r2
	mul	r1, 65536
	div	r0, 16777216
	add	r1, r3
	mov	r2, r0
	div	r2, 16
	mul	r2, 16
	sub	r0, r2
	mul	r0, 16777216
	add	r0, r1
	mul	r0, 16843009
	jl	r0, x4, .LBB0_107
// %bb.106:
	mov	x6, 0
.LBB0_107:
	mov	r1, x6
	mul	r1, -2147483648
	sub	r0, r1
	div	r0, 16777216
	mul	x6, 128
	add	x6, r0
	mov	x2, 27
	sub	x2, x6
	mov	r0, x0
	mov	r1, x2
	call	__bit_shl
	mov	x0, rax
	sub	x1, x2
	jmp	.LBB0_120
.LBB0_108:
	add	x0, r1
	mov	r2, 0
	mov	r0, 1
	jl	x0, r2, .LBB0_110
// %bb.109:
	mov	r0, 0
.LBB0_110:
	mov	r2, r0
	mul	r2, -2147483648
	mov	r3, x0
	sub	r3, r2
	div	r3, 134217728
	mul	r0, 16
	add	r0, r3
	mov	r2, r0
	div	r2, 2
	mul	r2, 2
	sub	r0, r2
	mul	r0, 134217728
	jz	r0, .LBB0_116
	jmp	.LBB0_111
.LBB0_111:
	mov	r2, 0
	mov	r0, 1
	mov	r3, 1
	jl	x0, r2, .LBB0_113
// %bb.112:
	mov	r3, 0
.LBB0_113:
	mov	r4, r3
	mul	r4, 1073741824
	mul	r3, -2147483648
	sub	x0, r3
	div	x0, 2
	add	x0, r4
	jl	r1, r2, .LBB0_115
// %bb.114:
	mov	r0, 0
.LBB0_115:
	mov	r2, r0
	mul	r2, 1073741824
	mul	r0, -2147483648
	mov	r3, r1
	sub	r3, r0
	div	r3, 2
	add	r3, r2
	mul	r3, 2
	sub	r1, r3
	mov	r0, x0
	call	__bit_or
	mov	x0, rax
add	x1, 1
.LBB0_116:
	mov	r0, 255
	jl	x1, r0, .LBB0_120
	jmp	.LBB0_117
.LBB0_117:
	mov	r1, 0
	mov	r0, 1
	jl	x5, r1, .LBB0_119
// %bb.118:
	mov	r0, 0
.LBB0_119:
	mov	r1, r0
	mul	r1, 256
	mul	r0, -2147483648
	mov	r2, x5
	sub	r2, r0
	div	r2, 8388608
	add	r2, r1
	mov	r0, r2
	div	r0, 256
	mul	r0, 256
	sub	r2, r0
	mul	r2, 8388608
	sub	x5, r2
add	x5, 2139095040
	mov	rax, x5
	jmp	.LBB0_156
.LBB0_120:
	mov	x3, 0
	jg	x1, x3, .LBB0_126
	jmp	.LBB0_121
.LBB0_121:
	mov	x2, 1
	sub	x2, x1
add	x1, 31
	mov	x4, 1
	mov	r0, x0
	mov	r1, x1
	call	__bit_shl
	mov	x1, 1
	jne	rax, x3, .LBB0_123
// %bb.122:
	mov	x1, 0
.LBB0_123:
	mov	r0, x0
	mov	r1, x2
	call	__bit_shr
	jl	x1, x3, .LBB0_125
// %bb.124:
	mov	x4, 0
.LBB0_125:
	mov	r0, x4
	mul	r0, -2147483648
	mov	r1, x1
	sub	r1, r0
	div	r1, 2
	mul	x4, 1073741824
	add	x4, r1
	mul	x4, 2
	sub	x1, x4
	mov	r0, rax
	mov	r1, x1
	call	__bit_or
	mov	x0, rax
	mov	x1, 0
.LBB0_126:
	mov	r0, 1
	jl	x0, x3, .LBB0_128
// %bb.127:
	mov	r0, 0
.LBB0_128:
	mov	r1, r0
	mul	r1, 268435456
	mul	r0, -2147483648
	mov	x2, x0
	sub	x2, r0
	div	x2, 8
	add	x2, r1
	mov	r1, x2
	mul	r1, 8
	mov	r2, x2
	div	r2, 8388608
	mul	r2, 8388608
	mov	r0, x2
	sub	r0, r2
	mul	x1, 8388608
	sub	x0, r1
	mov	r1, x1
	call	__bit_or
	mov	r0, rax
	mov	r1, x5
	call	__bit_or
	mov	x1, rax
	call	__fe_getround
	mov	r0, 2
	mov	r1, rax
	je	r1, r0, .LBB0_146
	jmp	.LBB0_129
.LBB0_129:
	mov	r0, 1
	je	r1, r0, .LBB0_139
	jmp	.LBB0_130
.LBB0_130:
	mov	rax, x1
	jnz	r1, .LBB0_153
	jmp	.LBB0_131
.LBB0_131:
	mov	r0, 4
	mov	r1, 1
	mov	rax, 1
	jg	x0, r0, .LBB0_133
// %bb.132:
	mov	rax, 0
.LBB0_133:
	mov	r2, 0
	jl	rax, r2, .LBB0_135
// %bb.134:
	mov	r1, 0
.LBB0_135:
	mov	r2, r1
	mul	r2, -2147483648
	mov	r3, rax
	sub	r3, r2
	div	r3, 2
	mul	r1, 1073741824
	add	r1, r3
	mul	r1, 2
	sub	rax, r1
	add	rax, x1
	jne	x0, r0, .LBB0_153
	jmp	.LBB0_136
.LBB0_136:
	mov	r1, 0
	mov	r0, 1
	jl	x2, r1, .LBB0_138
// %bb.137:
	mov	r0, 0
.LBB0_138:
	mov	r1, r0
	mul	r1, 1073741824
	mul	r0, -2147483648
	mov	r2, x2
	sub	r2, r0
	div	r2, 2
	add	r2, r1
	mul	r2, 2
	sub	x2, r2
	add	x1, x2
	mov	rax, x1
	jmp	.LBB0_154
.LBB0_139:
	jne	x5, x3, .LBB0_141
// %bb.140:
	mov	r0, 0
.LBB0_141:
	mov	x2, 1
	mov	r1, 1
	jne	x0, x3, .LBB0_143
// %bb.142:
	mov	r1, 0
.LBB0_143:
	call	__bit_and
	jl	rax, x3, .LBB0_145
// %bb.144:
	mov	x2, 0
.LBB0_145:
	mov	r0, x2
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 2
	mul	x2, 1073741824
	add	x2, r1
	mul	x2, 2
	sub	rax, x2
	add	x1, rax
	mov	rax, x1
	jmp	.LBB0_153
.LBB0_146:
	mov	x2, 0
	mov	r1, 1
	mov	r0, 1
	je	x5, x2, .LBB0_148
// %bb.147:
	mov	r0, 0
.LBB0_148:
	jne	x0, x2, .LBB0_150
// %bb.149:
	mov	r1, 0
.LBB0_150:
	call	__bit_and
	mov	r0, 1
	jl	rax, x2, .LBB0_152
// %bb.151:
	mov	r0, 0
.LBB0_152:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, rax
	sub	r2, r1
	div	r2, 2
	mul	r0, 1073741824
	add	r0, r2
	mul	r0, 2
	sub	rax, r0
	add	x1, rax
	mov	rax, x1
.LBB0_153:
	jz	x0, .LBB0_155
	jmp	.LBB0_154
.LBB0_154:
	mov	x0, rax
	call	__fe_raise_inexact
	mov	rax, x0
.LBB0_155:
.LBB0_156:
	mov	x10, [rsp]
	mov	x9, [rsp+4]
	mov	x8, [rsp+8]
	mov	x7, [rsp+12]
	mov	x6, [rsp+16]
	mov	x5, [rsp+20]
	mov	x4, [rsp+24]
	mov	x3, [rsp+28]
	mov	x2, [rsp+32]
	mov	x1, [rsp+36]
	mov	x0, [rsp+40]
add	rsp, 44
	ret
// -- End function
