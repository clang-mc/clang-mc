#include "_ll_std"

// -- Begin function __muldf3
__muldf3:                               // @__muldf3
// %bb.0:
sub	rsp, 68
	mov	[rsp+64], x0
	mov	[rsp+60], x1
	mov	[rsp+56], x2
	mov	[rsp+52], x3
	mov	[rsp+48], x4
	mov	[rsp+44], x5
	mov	[rsp+40], x6
	mov	[rsp+36], x7
	mov	[rsp+32], x8
	mov	[rsp+28], x9
	mov	[rsp+24], x10
	mov	[rsp+20], x11
	mov	[rsp+16], x12
	mov	[rsp+12], x13
	mov	[rsp+8], x14
	mov	[rsp+4], x15
	mov	x8, r3
	mov	x3, r2
	mov	x7, r1
	mov	x0, r0
	mov	x10, 0
	mov	r0, 1
	mov	r1, 1
	jl	x7, x10, .LBB0_2
// %bb.1:
	mov	r1, 0
.LBB0_2:
	mov	r2, r1
	mul	r2, 2048
	mul	r1, -2147483648
	mov	x5, x7
	sub	x5, r1
	div	x5, 1048576
	add	x5, r2
	jl	x8, x10, .LBB0_4
// %bb.3:
	mov	r0, 0
.LBB0_4:
	mov	x1, x5
	div	x1, 2048
	mov	r1, r0
	mul	r1, 2048
	mul	r0, -2147483648
	mov	x6, x8
	sub	x6, r0
	div	x6, 1048576
	add	x6, r1
	mov	r0, x8
	mov	r1, x7
	call	__bit_xor
	mov	r2, 1
	mov	r0, 1
	jl	rax, x10, .LBB0_6
// %bb.5:
	mov	r0, 0
.LBB0_6:
	mov	r1, x6
	div	r1, 2048
	mov	r3, r0
	mul	r3, -2147483648
	sub	rax, r3
	mov	r3, -2147483648
	mul	x1, 2048
	je	rax, r3, .LBB0_8
// %bb.7:
	mov	r2, 0
.LBB0_8:
	mul	r1, 2048
	mov	x2, x5
	sub	x2, x1
	mov	x1, 0
	sub	x1, r2
	mov	r2, 1
	jl	x1, x10, .LBB0_10
// %bb.9:
	mov	r2, 0
.LBB0_10:
	mov	x11, x6
	sub	x11, r1
	mov	r1, r2
	mul	r1, -2147483648
	mov	r3, x1
	sub	r3, r1
	div	r3, 2
	mul	r2, 1073741824
	add	r2, r3
	mul	r2, 2
	sub	x1, r2
	add	x1, r0
	mul	x1, -2147483648
	mul	x5, 1048576
	mov	x4, x7
	sub	x4, x5
	mul	x6, 1048576
	mov	x5, x8
	mov	r0, x2
add	r0, 2147481601
	mov	r1, 2147481602
	sub	x5, x6
	jl	r0, r1, .LBB0_12
	jmp	.LBB0_11
.LBB0_11:
	mov	r0, x11
add	r0, -2047
add	r0, -2147483648
	mov	r1, 2147481601
	jg	r0, r1, .LBB0_162
	jmp	.LBB0_12
.LBB0_12:
	mov	r2, 0
	mov	r4, 1
	mov	r3, 1
	jl	x7, r2, .LBB0_14
// %bb.13:
	mov	r3, 0
.LBB0_14:
	mov	r0, r3
	mul	r0, -2147483648
	mov	r5, x7
	sub	r5, r0
	mov	r1, -2147483648
	je	r5, r1, .LBB0_16
// %bb.15:
	mov	r4, 0
.LBB0_16:
	mov	r0, 0
	sub	r0, r4
	mov	x6, 1
	mov	r4, 1
	jl	r0, r2, .LBB0_18
// %bb.17:
	mov	r4, 0
.LBB0_18:
	mov	r5, r4
	mul	r5, -2147483648
	mov	r6, r0
	sub	r6, r5
	div	r6, 2
	mul	r4, 1073741824
	add	r4, r6
	mul	r4, 2
	sub	r0, r4
	add	r0, r3
	jl	x8, r2, .LBB0_20
// %bb.19:
	mov	x6, 0
.LBB0_20:
	mul	r0, -2147483648
	mov	r3, x6
	mul	r3, -2147483648
	mov	r4, x8
	sub	r4, r3
	mov	x10, 1
	mov	r3, 1
	je	r4, r1, .LBB0_22
// %bb.21:
	mov	r3, 0
.LBB0_22:
	mov	x9, x7
	mov	x12, 0
	sub	x12, r3
	sub	x9, r0
	jl	x12, r2, .LBB0_24
// %bb.23:
	mov	x10, 0
.LBB0_24:
	mov	r0, 2146435072
	mov	x13, 1
	mov	r1, 1
	je	x9, r0, .LBB0_26
// %bb.25:
	mov	r1, 0
.LBB0_26:
	jl	x9, r0, .LBB0_28
// %bb.27:
	mov	x13, 0
.LBB0_28:
	mov	r0, 0
	sub	r0, r1
	mov	r1, 1
	je	x0, r2, .LBB0_30
// %bb.29:
	mov	r1, 0
.LBB0_30:
	sub	r1, x13
	call	__bit_and
	add	rax, x13
	jnz	rax, .LBB0_34
	jmp	.LBB0_31
.LBB0_31:
	mov	r1, 0
	mov	r0, 1
	jl	x7, r1, .LBB0_33
// %bb.32:
	mov	r0, 0
.LBB0_33:
	mov	r1, r0
	mul	r1, 4096
	mul	r0, -2147483648
	mov	r2, x7
	sub	r2, r0
	div	r2, 524288
	add	r2, r1
	mov	r0, r2
	div	r0, 2
	mul	r0, 2
	sub	r2, r0
	mul	r2, 524288
	sub	x7, r2
add	x7, 524288
	jmp	.LBB0_261
.LBB0_34:
	mov	r0, x10
	mul	r0, -2147483648
	mov	r1, x12
	sub	r1, r0
	div	r1, 2
	mul	x10, 1073741824
	add	x10, r1
	mul	x10, 2
	sub	x12, x10
	add	x12, x6
	mul	x12, -2147483648
	mov	x6, x8
	sub	x6, x12
	mov	r0, 0
	mov	x7, 1
	mov	r1, 1
	je	x3, r0, .LBB0_36
// %bb.35:
	mov	r1, 0
.LBB0_36:
	mov	r2, 2146435072
	jl	x6, r2, .LBB0_38
// %bb.37:
	mov	x7, 0
.LBB0_38:
	sub	r1, x7
	mov	r3, 1
	je	x6, r2, .LBB0_40
// %bb.39:
	mov	r3, 0
.LBB0_40:
	sub	r0, r3
	call	__bit_and
	add	x7, rax
	jnz	x7, .LBB0_44
	jmp	.LBB0_41
.LBB0_41:
	mov	r1, 0
	mov	r0, 1
	jl	x8, r1, .LBB0_43
// %bb.42:
	mov	r0, 0
.LBB0_43:
	mov	r1, r0
	mul	r1, 4096
	mul	r0, -2147483648
	mov	r2, x8
	sub	r2, r0
	div	r2, 524288
	add	r2, r1
	mov	r0, r2
	div	r0, 2
	mul	r0, 2
	sub	r2, r0
	mul	r2, 524288
	sub	x8, r2
add	x8, 524288
	mov	x0, x3
	mov	x7, x8
	jmp	.LBB0_261
.LBB0_44:
	mov	r1, 0
	mov	r0, 1
	jl	x9, r1, .LBB0_46
// %bb.45:
	mov	r0, 0
.LBB0_46:
	mov	r1, r0
	mul	r1, 2048
	mul	r0, -2147483648
	mov	r2, x9
	sub	r2, r0
	div	r2, 1048576
	add	r2, r1
	mov	r0, r2
	div	r0, 2048
	mul	r0, 2048
	sub	r2, r0
	mul	r2, 1048576
	add	r2, r2
	mov	r1, x9
	sub	r1, r2
add	r1, 2146435072
	mov	r0, x0
	call	__bit_or
	jnz	rax, .LBB0_51
	jmp	.LBB0_47
.LBB0_47:
	mov	r0, x3
	mov	r1, x6
	call	__bit_or
	mov	x7, 2146959360
	mov	x0, 0
	jz	rax, .LBB0_261
	jmp	.LBB0_48
.LBB0_48:
	mov	r0, 1
	jl	x1, x0, .LBB0_50
// %bb.49:
	mov	r0, 0
.LBB0_50:
	mov	r1, r0
	mul	r1, 2048
	mul	r0, -2147483648
	mov	r2, x1
	sub	r2, r0
	div	r2, 1048576
	add	r2, r1
	mov	r0, r2
	div	r0, 2048
	mul	r0, 2048
	sub	r2, r0
	mul	r2, 1048576
	sub	x1, r2
add	x1, 2146435072
	mov	x7, x1
	jmp	.LBB0_261
.LBB0_51:
	mov	r1, 0
	mov	r0, 1
	jl	x6, r1, .LBB0_53
// %bb.52:
	mov	r0, 0
.LBB0_53:
	mov	r1, r0
	mul	r1, 2048
	mul	r0, -2147483648
	mov	r2, x6
	sub	r2, r0
	div	r2, 1048576
	add	r2, r1
	mov	r0, r2
	div	r0, 2048
	mul	r0, 2048
	sub	r2, r0
	mul	r2, 1048576
	add	r2, r2
	mov	r1, x6
	sub	r1, r2
add	r1, 2146435072
	mov	r0, x3
	call	__bit_or
	jnz	rax, .LBB0_58
	jmp	.LBB0_54
.LBB0_54:
	mov	r0, x0
	mov	r1, x9
	call	__bit_or
	mov	x7, 2146959360
	mov	x0, 0
	jz	rax, .LBB0_261
	jmp	.LBB0_55
.LBB0_55:
	mov	r0, 1
	jl	x1, x0, .LBB0_57
// %bb.56:
	mov	r0, 0
.LBB0_57:
	mov	r1, r0
	mul	r1, 2048
	mul	r0, -2147483648
	mov	r2, x1
	sub	r2, r0
	div	r2, 1048576
	add	r2, r1
	mov	r0, r2
	div	r0, 2048
	mul	r0, 2048
	sub	r2, r0
	mul	r2, 1048576
	sub	x1, r2
add	x1, 2146435072
	mov	x7, x1
	jmp	.LBB0_261
.LBB0_58:
	mov	r0, x0
	mov	r1, x9
	call	__bit_or
	jnz	rax, .LBB0_60
	jmp	.LBB0_59
.LBB0_59:
	mov	x0, 0
	mov	x7, x1
	jmp	.LBB0_261
.LBB0_60:
	mov	r0, x3
	mov	r1, x6
	call	__bit_or
	jnz	rax, .LBB0_62
	jmp	.LBB0_61
.LBB0_61:
	mov	x0, 0
	mov	x7, x1
	jmp	.LBB0_261
.LBB0_62:
	mov	x12, 1048575
	mov	x10, 0
	jg	x9, x12, .LBB0_112
	jmp	.LBB0_63
.LBB0_63:
	mov	x7, 0
	mov	x8, 1
	mov	r0, 1
	jl	x0, x7, .LBB0_65
// %bb.64:
	mov	r0, 0
.LBB0_65:
	mov	r2, r0
	mul	r2, 1073741824
	mul	r0, -2147483648
	mov	r1, x0
	sub	r1, r0
	div	r1, 2
	add	r1, r2
	mov	r0, x0
	call	__bit_or
	jl	rax, x7, .LBB0_67
// %bb.66:
	mov	x8, 0
.LBB0_67:
	mov	r0, x8
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 4
	mul	x8, 536870912
	add	x8, r1
	mov	r0, rax
	mov	r1, x8
	call	__bit_or
	mov	x8, 1
	mov	r1, 1
	jl	rax, x7, .LBB0_69
// %bb.68:
	mov	r1, 0
.LBB0_69:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 16
	mul	r1, 134217728
	add	r1, r2
	mov	r0, rax
	call	__bit_or
	jl	rax, x7, .LBB0_71
// %bb.70:
	mov	x8, 0
.LBB0_71:
	mov	r0, x8
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 256
	mul	x8, 8388608
	add	x8, r1
	mov	r0, rax
	mov	r1, x8
	call	__bit_or
	mov	x9, 1
	mov	r1, 1
	jl	rax, x7, .LBB0_73
// %bb.72:
	mov	r1, 0
.LBB0_73:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 65536
	mul	r1, 32768
	add	r1, r2
	mov	r0, rax
	call	__bit_or
	mov	x8, rax
	jl	x8, x7, .LBB0_75
// %bb.74:
	mov	x9, 0
.LBB0_75:
	mov	r0, x9
	mul	r0, -2147483648
	mov	r1, x8
	sub	r1, r0
	div	r1, 2
	mul	x9, 1073741824
	add	x9, r1
	mov	r1, 1431655765
	mov	r0, x9
	call	__bit_and
	sub	x8, rax
	mov	x13, 1
	mov	r0, 1
	jl	x8, x7, .LBB0_77
// %bb.76:
	mov	r0, 0
.LBB0_77:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x8
	sub	r2, r1
	div	r2, 4
	mul	r0, 536870912
	add	r0, r2
	mov	r1, 858993459
	call	__bit_and
	mov	r1, 858993459
	mov	x9, rax
	mov	r0, x8
	call	__bit_and
	add	rax, x9
	mov	x10, rax
	div	x10, 16
	add	x10, rax
	mov	r0, x10
	div	r0, 16
	mul	r0, 16
	mov	r1, x10
	mov	r2, x10
	div	r2, 256
	sub	r1, r0
	mov	r0, r2
	div	r0, 16
	mul	r0, 16
	sub	r2, r0
	mul	r2, 256
	mov	r0, x10
	div	r0, 65536
	add	r2, r1
	mov	r1, r0
	div	r1, 16
	mul	r1, 16
	sub	r0, r1
	mul	r0, 65536
	div	x10, 16777216
	add	r0, r2
	mov	r1, x10
	div	r1, 16
	mul	r1, 16
	sub	x10, r1
	mul	x10, 16777216
	add	x10, r0
	mul	x10, 16843009
	jl	x10, x7, .LBB0_79
// %bb.78:
	mov	x13, 0
.LBB0_79:
	mov	x8, 1
	mov	r0, 1
	jl	x4, x7, .LBB0_81
// %bb.80:
	mov	r0, 0
.LBB0_81:
	mov	r2, r0
	mul	r2, 1073741824
	mul	r0, -2147483648
	mov	r1, x4
	sub	r1, r0
	div	r1, 2
	add	r1, r2
	mov	r0, x4
	call	__bit_or
	jl	rax, x7, .LBB0_83
// %bb.82:
	mov	x8, 0
.LBB0_83:
	mov	r0, x8
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 4
	mul	x8, 536870912
	add	x8, r1
	mov	r0, rax
	mov	r1, x8
	call	__bit_or
	mov	x8, 1
	mov	r1, 1
	jl	rax, x7, .LBB0_85
// %bb.84:
	mov	r1, 0
.LBB0_85:
	mov	x9, x13
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 16
	mul	r1, 134217728
	add	r1, r2
	mul	x9, -2147483648
	mov	r0, rax
	call	__bit_or
	jl	rax, x7, .LBB0_87
// %bb.86:
	mov	x8, 0
.LBB0_87:
	mov	r0, x8
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 256
	mul	x8, 8388608
	add	x8, r1
	sub	x10, x9
	mov	r0, rax
	mov	r1, x8
	call	__bit_or
	mov	x9, 1
	mov	r1, 1
	jl	rax, x7, .LBB0_89
// %bb.88:
	mov	r1, 0
.LBB0_89:
	div	x10, 16777216
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 65536
	mul	r1, 32768
	add	r1, r2
	mul	x13, 128
	mov	r0, rax
	call	__bit_or
	mov	x8, rax
	jl	x8, x7, .LBB0_91
// %bb.90:
	mov	x9, 0
.LBB0_91:
	add	x10, x13
	mov	r0, x9
	mul	r0, -2147483648
	mov	r1, x8
	sub	r1, r0
	div	r1, 2
	mul	x9, 1073741824
	add	x9, r1
	mov	r1, 1431655765
	mov	x13, 64
	mov	r0, x9
	call	__bit_and
	sub	x8, rax
	mov	x14, 1
	mov	r0, 1
	jl	x8, x7, .LBB0_93
// %bb.92:
	mov	r0, 0
.LBB0_93:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x8
	sub	r2, r1
	div	r2, 4
	mul	r0, 536870912
	add	r0, r2
	mov	r1, 858993459
	sub	x13, x10
	call	__bit_and
	mov	r1, 858993459
	mov	x9, rax
	mov	r0, x8
	call	__bit_and
	add	rax, x9
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
	jl	r0, x7, .LBB0_95
// %bb.94:
	mov	x14, 0
.LBB0_95:
	mov	r1, x14
	mul	r1, -2147483648
	sub	r0, r1
	div	r0, 16777216
	mul	x14, 128
	add	x14, r0
	add	x14, x13
	mov	x9, 32
	mov	r1, 32
	sub	r1, x14
	mov	x10, 1
	mov	r2, 1
	jne	x4, x7, .LBB0_97
// %bb.96:
	mov	r2, 0
.LBB0_97:
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	x13, rax
	mov	x8, x13
add	x8, -11
	jl	x8, x7, .LBB0_99
// %bb.98:
	mov	x10, 0
.LBB0_99:
	mov	r0, x10
	mul	r0, -2147483648
	mov	r1, x8
	sub	r1, r0
	div	r1, 32
	mul	x10, 67108864
	add	x10, r1
	mul	x10, 32
	sub	x8, x10
	mov	r1, 0
	sub	r1, x8
	mov	r0, x8
	call	__bit_or
	mov	r2, 1
	mov	r0, 1
	jl	rax, x7, .LBB0_101
// %bb.100:
	mov	r0, 0
.LBB0_101:
	mov	r1, r0
	mul	r1, -2147483648
	sub	rax, r1
	mov	x15, -2147483648
	je	rax, x15, .LBB0_103
// %bb.102:
	mov	r2, 0
.LBB0_103:
	mov	r1, 0
	sub	r1, r2
	mov	x14, 1
	mov	r2, 1
	jl	r1, x7, .LBB0_105
// %bb.104:
	mov	r2, 0
.LBB0_105:
	mov	r3, r2
	mul	r3, -2147483648
	mov	r4, r1
	sub	r4, r3
	div	r4, 2
	mul	r2, 1073741824
	add	r2, r4
	mul	r2, 2
	sub	r1, r2
	add	r1, r0
	sub	x9, x8
	mov	x10, 0
	mov	r0, x9
	div	r0, 32
	mul	r0, 32
	sub	x9, r0
	sub	x10, r1
	mov	r0, x0
	mov	r1, x9
	call	__bit_shr
	mov	r0, rax
	mov	r1, x10
	call	__bit_and
	mov	x9, rax
	mov	r0, x4
	mov	r1, x8
	call	__bit_shl
	mov	r0, rax
	mov	r1, x9
	call	__bit_or
	mov	r1, x13
add	r1, -43
	jl	r1, x7, .LBB0_107
// %bb.106:
	mov	x14, 0
.LBB0_107:
	mov	r0, x14
	mul	r0, -2147483648
	sub	r1, r0
	mov	r0, 1
	mov	r2, 1
	je	r1, x15, .LBB0_109
// %bb.108:
	mov	r2, 0
.LBB0_109:
	mov	r1, 0
	sub	r1, r2
	jl	r1, x7, .LBB0_111
// %bb.110:
	mov	r0, 0
.LBB0_111:
	mov	r2, r0
	mul	r2, -2147483648
	mov	r3, r1
	sub	r3, r2
	div	r3, 2
	mul	r0, 1073741824
	add	r0, r3
	mul	r0, 2
	sub	r1, r0
	add	r1, x14
	sub	x7, r1
	mov	r0, rax
	mov	r1, x7
	call	__bit_and
	mov	x9, rax
	mov	r0, x0
	mov	r1, x8
	call	__bit_shl
	mov	r1, -1
	sub	r1, x7
	mov	x0, rax
	mov	r0, x0
	call	__bit_and
	mov	x4, rax
	add	x4, x9
	mov	r0, x0
	mov	r1, x7
	call	__bit_and
	mov	x0, rax
	mov	x10, 12
	sub	x10, x13
.LBB0_112:
	jg	x6, x12, .LBB0_162
	jmp	.LBB0_113
.LBB0_113:
	mov	x6, 0
	mov	x7, 1
	mov	r0, 1
	jl	x3, x6, .LBB0_115
// %bb.114:
	mov	r0, 0
.LBB0_115:
	mov	r2, r0
	mul	r2, 1073741824
	mul	r0, -2147483648
	mov	r1, x3
	sub	r1, r0
	div	r1, 2
	add	r1, r2
	mov	r0, x3
	call	__bit_or
	jl	rax, x6, .LBB0_117
// %bb.116:
	mov	x7, 0
.LBB0_117:
	mov	r0, x7
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 4
	mul	x7, 536870912
	add	x7, r1
	mov	r0, rax
	mov	r1, x7
	call	__bit_or
	mov	x7, 1
	mov	r1, 1
	jl	rax, x6, .LBB0_119
// %bb.118:
	mov	r1, 0
.LBB0_119:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 16
	mul	r1, 134217728
	add	r1, r2
	mov	r0, rax
	call	__bit_or
	jl	rax, x6, .LBB0_121
// %bb.120:
	mov	x7, 0
.LBB0_121:
	mov	r0, x7
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 256
	mul	x7, 8388608
	add	x7, r1
	mov	r0, rax
	mov	r1, x7
	call	__bit_or
	mov	x8, 1
	mov	r1, 1
	jl	rax, x6, .LBB0_123
// %bb.122:
	mov	r1, 0
.LBB0_123:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 65536
	mul	r1, 32768
	add	r1, r2
	mov	r0, rax
	call	__bit_or
	mov	x7, rax
	jl	x7, x6, .LBB0_125
// %bb.124:
	mov	x8, 0
.LBB0_125:
	mov	r0, x8
	mul	r0, -2147483648
	mov	r1, x7
	sub	r1, r0
	div	r1, 2
	mul	x8, 1073741824
	add	x8, r1
	mov	r1, 1431655765
	mov	r0, x8
	call	__bit_and
	sub	x7, rax
	mov	x12, 1
	mov	r0, 1
	jl	x7, x6, .LBB0_127
// %bb.126:
	mov	r0, 0
.LBB0_127:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x7
	sub	r2, r1
	div	r2, 4
	mul	r0, 536870912
	add	r0, r2
	mov	r1, 858993459
	call	__bit_and
	mov	r1, 858993459
	mov	x8, rax
	mov	r0, x7
	call	__bit_and
	add	rax, x8
	mov	x9, rax
	div	x9, 16
	add	x9, rax
	mov	r0, x9
	div	r0, 16
	mul	r0, 16
	mov	r1, x9
	mov	r2, x9
	div	r2, 256
	sub	r1, r0
	mov	r0, r2
	div	r0, 16
	mul	r0, 16
	sub	r2, r0
	mul	r2, 256
	mov	r0, x9
	div	r0, 65536
	add	r2, r1
	mov	r1, r0
	div	r1, 16
	mul	r1, 16
	sub	r0, r1
	mul	r0, 65536
	div	x9, 16777216
	add	r0, r2
	mov	r1, x9
	div	r1, 16
	mul	r1, 16
	sub	x9, r1
	mul	x9, 16777216
	add	x9, r0
	mul	x9, 16843009
	jl	x9, x6, .LBB0_129
// %bb.128:
	mov	x12, 0
.LBB0_129:
	mov	x7, 1
	mov	r0, 1
	jl	x5, x6, .LBB0_131
// %bb.130:
	mov	r0, 0
.LBB0_131:
	mov	r2, r0
	mul	r2, 1073741824
	mul	r0, -2147483648
	mov	r1, x5
	sub	r1, r0
	div	r1, 2
	add	r1, r2
	mov	r0, x5
	call	__bit_or
	jl	rax, x6, .LBB0_133
// %bb.132:
	mov	x7, 0
.LBB0_133:
	mov	r0, x7
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 4
	mul	x7, 536870912
	add	x7, r1
	mov	r0, rax
	mov	r1, x7
	call	__bit_or
	mov	x7, 1
	mov	r1, 1
	jl	rax, x6, .LBB0_135
// %bb.134:
	mov	r1, 0
.LBB0_135:
	mov	x8, x12
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 16
	mul	r1, 134217728
	add	r1, r2
	mul	x8, -2147483648
	mov	r0, rax
	call	__bit_or
	jl	rax, x6, .LBB0_137
// %bb.136:
	mov	x7, 0
.LBB0_137:
	mov	r0, x7
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 256
	mul	x7, 8388608
	add	x7, r1
	sub	x9, x8
	mov	r0, rax
	mov	r1, x7
	call	__bit_or
	mov	x8, 1
	mov	r1, 1
	jl	rax, x6, .LBB0_139
// %bb.138:
	mov	r1, 0
.LBB0_139:
	div	x9, 16777216
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 65536
	mul	r1, 32768
	add	r1, r2
	mul	x12, 128
	mov	r0, rax
	call	__bit_or
	mov	x7, rax
	jl	x7, x6, .LBB0_141
// %bb.140:
	mov	x8, 0
.LBB0_141:
	add	x9, x12
	mov	r0, x8
	mul	r0, -2147483648
	mov	r1, x7
	sub	r1, r0
	div	r1, 2
	mul	x8, 1073741824
	add	x8, r1
	mov	r1, 1431655765
	mov	x12, 64
	mov	r0, x8
	call	__bit_and
	sub	x7, rax
	mov	x13, 1
	mov	r0, 1
	jl	x7, x6, .LBB0_143
// %bb.142:
	mov	r0, 0
.LBB0_143:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x7
	sub	r2, r1
	div	r2, 4
	mul	r0, 536870912
	add	r0, r2
	mov	r1, 858993459
	sub	x12, x9
	call	__bit_and
	mov	r1, 858993459
	mov	x8, rax
	mov	r0, x7
	call	__bit_and
	add	rax, x8
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
	jl	r0, x6, .LBB0_145
// %bb.144:
	mov	x13, 0
.LBB0_145:
	mov	r1, x13
	mul	r1, -2147483648
	sub	r0, r1
	div	r0, 16777216
	mul	x13, 128
	add	x13, r0
	add	x13, x12
	mov	x8, 32
	mov	r1, 32
	sub	r1, x13
	mov	x9, 1
	mov	r2, 1
	jne	x5, x6, .LBB0_147
// %bb.146:
	mov	r2, 0
.LBB0_147:
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	x12, rax
	mov	x7, x12
add	x7, -11
	jl	x7, x6, .LBB0_149
// %bb.148:
	mov	x9, 0
.LBB0_149:
	mov	r0, x9
	mul	r0, -2147483648
	mov	r1, x7
	sub	r1, r0
	div	r1, 32
	mul	x9, 67108864
	add	x9, r1
	mul	x9, 32
	sub	x7, x9
	mov	r1, 0
	sub	r1, x7
	mov	r0, x7
	call	__bit_or
	mov	r2, 1
	mov	r0, 1
	jl	rax, x6, .LBB0_151
// %bb.150:
	mov	r0, 0
.LBB0_151:
	mov	r1, r0
	mul	r1, -2147483648
	sub	rax, r1
	mov	x14, -2147483648
	je	rax, x14, .LBB0_153
// %bb.152:
	mov	r2, 0
.LBB0_153:
	mov	r1, 0
	sub	r1, r2
	mov	x13, 1
	mov	r2, 1
	jl	r1, x6, .LBB0_155
// %bb.154:
	mov	r2, 0
.LBB0_155:
	mov	r3, r2
	mul	r3, -2147483648
	mov	r4, r1
	sub	r4, r3
	div	r4, 2
	mul	r2, 1073741824
	add	r2, r4
	mul	r2, 2
	sub	r1, r2
	add	r1, r0
	sub	x8, x7
	mov	x9, 0
	mov	r0, x8
	div	r0, 32
	mul	r0, 32
	sub	x8, r0
	sub	x9, r1
	mov	r0, x3
	mov	r1, x8
	call	__bit_shr
	mov	r0, rax
	mov	r1, x9
	call	__bit_and
	mov	x8, rax
	mov	r0, x5
	mov	r1, x7
	call	__bit_shl
	mov	r0, rax
	mov	r1, x8
	call	__bit_or
	mov	r1, x12
add	r1, -43
	jl	r1, x6, .LBB0_157
// %bb.156:
	mov	x13, 0
.LBB0_157:
	mov	r0, x13
	mul	r0, -2147483648
	sub	r1, r0
	mov	r0, 1
	mov	r2, 1
	je	r1, x14, .LBB0_159
// %bb.158:
	mov	r2, 0
.LBB0_159:
	mov	r1, 0
	sub	r1, r2
	jl	r1, x6, .LBB0_161
// %bb.160:
	mov	r0, 0
.LBB0_161:
	mov	r2, r0
	mul	r2, -2147483648
	mov	r3, r1
	sub	r3, r2
	div	r3, 2
	mul	r0, 1073741824
	add	r0, r3
	mul	r0, 2
	sub	r1, r0
	add	r1, x13
	sub	x6, r1
	mov	r0, rax
	mov	r1, x6
	call	__bit_and
	mov	x8, rax
	mov	r0, x3
	mov	r1, x7
	call	__bit_shl
	mov	r1, -1
	sub	r1, x6
	mov	x3, rax
	mov	r0, x3
	call	__bit_and
	mov	x5, rax
	add	x5, x8
	mov	r0, x3
	mov	r1, x6
	call	__bit_and
	mov	x3, rax
	sub	x10, x12
add	x10, 12
.LBB0_162:
	mov	x12, 0
	mov	x8, 1
	mov	r0, 1
	jl	x3, x12, .LBB0_164
// %bb.163:
	mov	r0, 0
.LBB0_164:
	mov	r1, r0
	mul	r1, 1024
	mul	r0, -2147483648
	mov	r2, x3
	sub	r2, r0
	div	r2, 2097152
	add	r2, r1
	mul	x5, 2048
	mul	x3, 2048
	mov	r1, 0
	mov	r3, 0
	add	x5, r2
	mov	r0, x3
	mov	r2, x0
	call	__muldi3
	mov	x6, rax
	mov	x7, t0
	jl	x5, x12, .LBB0_166
// %bb.165:
	mov	x8, 0
.LBB0_166:
	mov	r0, x8
	mul	r0, -2147483648
	mov	r1, x5
	sub	r1, r0
	mov	r3, -2147483648
	mov	r0, 1
	mov	r2, 1
	je	r1, r3, .LBB0_168
// %bb.167:
	mov	r2, 0
.LBB0_168:
	mov	r1, 0
	sub	r1, r2
	jl	r1, x12, .LBB0_170
// %bb.169:
	mov	r0, 0
.LBB0_170:
	mov	r2, r0
	mul	r2, -2147483648
	mov	r3, r1
	sub	r3, r2
	div	r3, 2
	mul	r0, 1073741824
	add	r0, r3
	mul	r0, 2
	sub	r1, r0
	add	r1, x8
	mul	r1, -2147483648
	sub	x5, r1
add	x5, -2147483648
	mov	r1, 0
	mov	r3, 0
	mov	r0, x5
	mov	r2, x0
	call	__muldi3
	mov	x8, rax
	mov	x0, t0
	mov	x14, 1
	mov	r0, 1
	jl	x4, x12, .LBB0_172
// %bb.171:
	mov	r0, 0
.LBB0_172:
	mov	r1, r0
	mul	r1, 2048
	mul	r0, -2147483648
	mov	r2, x4
	sub	r2, r0
	div	r2, 1048576
	add	r2, r1
	mov	r0, r2
	div	r0, 2
	mul	r0, 2
	sub	r2, r0
	mul	r2, 1048576
	sub	x4, r2
add	x4, 1048576
	mov	r1, 0
	mov	r3, 0
	mov	r0, x3
	mov	r2, x4
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x3, rax
	mov	x9, t0
	mov	r0, x5
	mov	r2, x4
	call	__muldi3
	mov	x4, rax
	mov	x5, t0
	jl	x6, x12, .LBB0_174
// %bb.173:
	mov	x14, 0
.LBB0_174:
	mov	r0, x14
	mul	r0, -2147483648
	sub	x6, r0
	div	x6, 2048
	mul	x14, 1048576
	mov	x13, 1
	mov	r0, 1
	jl	x3, x12, .LBB0_176
// %bb.175:
	mov	r0, 0
.LBB0_176:
	mov	r1, r0
	mul	r1, -2147483648
	sub	x3, r1
	div	x3, 2048
	mul	r0, 1048576
	add	r0, x3
	mul	r0, 2048
	mov	r1, 0
	mov	r3, 0
	add	x6, x14
	mov	r2, x7
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x8
	call	__adddi3
	mov	r1, 0
	mov	x3, rax
	mov	x7, t0
	mov	r0, x9
	mov	r2, x4
	mov	r3, x5
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x0
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x7
	call	__adddi3
	mov	x0, rax
	add	x2, x11
	add	x2, x10
	jl	t0, x12, .LBB0_178
// %bb.177:
	mov	x13, 0
.LBB0_178:
	mov	r0, x13
	mul	r0, -2147483648
	mov	r1, t0
	sub	r1, r0
	div	r1, 1048576
	mul	x13, 2048
	add	x13, r1
	mul	x6, 2048
	mov	r0, x13
	div	r0, 2
	mul	r0, 2
	sub	x13, r0
	mul	x13, 1048576
add	x2, -1023
	jz	x13, .LBB0_180
	jmp	.LBB0_179
.LBB0_179:
add	x2, 1
	jmp	.LBB0_199
.LBB0_180:
	mov	r0, 0
	mov	r4, 1
	mov	r2, 1
	jl	x0, r0, .LBB0_182
// %bb.181:
	mov	r2, 0
.LBB0_182:
	mov	r1, r2
	mul	r1, -2147483648
	mov	r5, x0
	sub	r5, r1
	mov	r3, -2147483648
	je	r5, r3, .LBB0_184
// %bb.183:
	mov	r4, 0
.LBB0_184:
	mov	r1, 0
	sub	r1, r4
	mov	r4, 1
	mov	r7, 1
	jl	r1, r0, .LBB0_186
// %bb.185:
	mov	r7, 0
.LBB0_186:
	mov	r5, r7
	mul	r5, -2147483648
	mov	r6, r1
	sub	r6, r5
	jl	x3, r0, .LBB0_188
// %bb.187:
	mov	r4, 0
.LBB0_188:
	div	r6, 2
	mul	r7, 1073741824
	mov	r5, r4
	mul	r5, -2147483648
	mov	t3, x3
	sub	t3, r5
	mov	t1, 1
	mov	t2, 1
	je	t3, r3, .LBB0_190
// %bb.189:
	mov	t2, 0
.LBB0_190:
	mov	r5, 0
	sub	r5, t2
	add	r6, r7
	jl	r5, r0, .LBB0_192
// %bb.191:
	mov	t1, 0
.LBB0_192:
	mul	r6, 2
	mov	r7, t1
	mul	r7, -2147483648
	mov	t2, r5
	sub	t2, r7
	div	t2, 2
	mul	t1, 1073741824
	add	t1, t2
	mul	t1, 2
	mov	t2, 1
	mov	r7, 1
	jl	x6, r0, .LBB0_194
// %bb.193:
	mov	r7, 0
.LBB0_194:
	sub	r1, r6
	mov	r6, r7
	mul	r6, -2147483648
	mov	t3, x6
	sub	t3, r6
	sub	r5, t1
	je	t3, r3, .LBB0_196
// %bb.195:
	mov	t2, 0
.LBB0_196:
	add	r1, r2
	mul	t0, 2
	add	r5, r4
	mul	x0, 2
	mov	r2, 0
	sub	r2, t2
	mov	r3, 1
	jl	r2, r0, .LBB0_198
// %bb.197:
	mov	r3, 0
.LBB0_198:
	add	t0, r1
	add	x0, r5
	mov	r0, r3
	mul	r0, -2147483648
	mov	r1, r2
	sub	r1, r0
	div	r1, 2
	mul	r3, 1073741824
	add	r3, r1
	mul	r3, 2
	sub	r2, r3
	add	r2, r7
	mul	x3, 2
	add	x3, r2
	mul	x6, 2
.LBB0_199:
	mov	r0, 2047
	jl	x2, r0, .LBB0_203
	jmp	.LBB0_200
.LBB0_200:
	mov	x0, 0
	mov	r0, 1
	jl	x1, x0, .LBB0_202
// %bb.201:
	mov	r0, 0
.LBB0_202:
	mov	r1, r0
	mul	r1, 2048
	mul	r0, -2147483648
	mov	r2, x1
	sub	r2, r0
	div	r2, 1048576
	add	r2, r1
	mov	r0, r2
	div	r0, 2048
	mul	r0, 2048
	sub	r2, r0
	mul	r2, 1048576
	sub	x1, r2
add	x1, 2146435072
	mov	x7, x1
	jmp	.LBB0_261
.LBB0_203:
	mov	r1, 0
	jg	x2, r1, .LBB0_239
	jmp	.LBB0_204
.LBB0_204:
	mov	x15, 1
	sub	x15, x2
	mov	r1, 63
	mov	r0, 1
	jg	x15, r1, .LBB0_238
	jmp	.LBB0_205
.LBB0_205:
	mov	[rsp], t0
	mov	x8, x2
add	x8, 63
	mov	x14, 0
	jl	x8, x14, .LBB0_207
// %bb.206:
	mov	r0, 0
.LBB0_207:
	mov	r1, r0
	mul	r1, 67108864
	mul	r0, -2147483648
	mov	r2, x8
	sub	r2, r0
	div	r2, 32
	add	r2, r1
	mul	r2, 32
	sub	x8, r2
	mov	x9, 32
	sub	x9, x8
	mov	r0, x9
	div	r0, 32
	mul	r0, 32
	sub	x9, r0
	mov	x5, 32
	mov	r0, x6
	mov	r1, x9
	call	__bit_shr
	mov	r1, 0
	sub	r1, x8
	mov	x7, rax
	mov	r0, x8
	call	__bit_or
	mov	r2, 1
	mov	r0, 1
	jl	rax, x14, .LBB0_209
// %bb.208:
	mov	r0, 0
.LBB0_209:
	mov	r1, r0
	mul	r1, -2147483648
	sub	rax, r1
	mov	r1, -2147483648
	je	rax, r1, .LBB0_211
// %bb.210:
	mov	r2, 0
.LBB0_211:
	mov	r1, 0
	sub	r1, r2
	mov	x4, 1
	mov	r2, 1
	jl	r1, x14, .LBB0_213
// %bb.212:
	mov	r2, 0
.LBB0_213:
	mov	r3, r2
	mul	r3, -2147483648
	mov	r4, r1
	sub	r4, r3
	div	r4, 2
	mul	r2, 1073741824
	add	r2, r4
	mul	r2, 2
	sub	r1, r2
	add	r1, r0
	mov	x10, 0
	sub	x10, r1
	mov	r0, x7
	mov	r1, x10
	call	__bit_and
	mov	x7, rax
	mov	r0, x3
	mov	r1, x8
	call	__bit_shl
	mov	r0, rax
	mov	r1, x7
	call	__bit_or
add	x2, 31
	jl	x2, x14, .LBB0_215
// %bb.214:
	mov	x4, 0
.LBB0_215:
	mov	r0, x4
	mul	r0, -2147483648
	sub	x2, r0
	mov	r0, 1
	mov	r2, 1
	mov	r1, -2147483648
	je	x2, r1, .LBB0_217
// %bb.216:
	mov	r2, 0
.LBB0_217:
	mov	r1, 0
	sub	r1, r2
	jl	r1, x14, .LBB0_219
// %bb.218:
	mov	r0, 0
.LBB0_219:
	mov	r2, r0
	mul	r2, -2147483648
	mov	r3, r1
	sub	r3, r2
	div	r3, 2
	mul	r0, 1073741824
	add	r0, r3
	mul	r0, 2
	sub	r1, r0
	add	r1, x4
	sub	x12, r1
	mov	r0, rax
	mov	r1, x12
	call	__bit_and
	mov	x7, rax
	mov	r0, x6
	mov	r1, x8
	call	__bit_shl
	mov	x13, rax
	mov	x11, -1
	sub	x11, x12
	mov	x2, -1
	mov	r0, x13
	mov	r1, x11
	call	__bit_and
	add	x7, rax
	mov	r0, x13
	mov	r1, x12
	call	__bit_and
	mov	r0, rax
	mov	r1, x7
	call	__bit_or
	mov	x4, 1
	mov	x7, 1
	jne	rax, x14, .LBB0_221
// %bb.220:
	mov	x7, 0
.LBB0_221:
	mov	r0, x0
	mov	r1, x9
	call	__bit_shr
	mov	r0, rax
	mov	r1, x10
	call	__bit_and
	mov	x9, rax
	mov	r0, [rsp]
	mov	r1, x8
	call	__bit_shl
	mov	r0, rax
	mov	r1, x9
	call	__bit_or
	mov	r0, rax
	mov	r1, x12
	call	__bit_and
	mov	x9, rax
	mov	r0, x0
	mov	r1, x8
	call	__bit_shl
	mov	x8, rax
	mov	r0, x8
	mov	r1, x11
	call	__bit_and
	mov	x11, rax
	mov	r0, x8
	mov	r1, x12
	call	__bit_and
	mov	x10, rax
	jl	x15, x14, .LBB0_223
// %bb.222:
	mov	x4, 0
.LBB0_223:
	mov	r0, x4
	mul	r0, 67108864
	mul	x4, -2147483648
	mov	r1, x15
	sub	r1, x4
	div	r1, 32
	add	r1, r0
	mul	r1, 32
	mov	x8, x15
	sub	x8, r1
	sub	x5, x8
	mov	r0, x5
	div	r0, 32
	mul	r0, 32
	sub	x5, r0
	mov	r0, x3
	mov	r1, x5
	call	__bit_shl
	mov	r1, 0
	sub	r1, x8
	mov	x13, rax
	mov	r0, x8
	call	__bit_or
	mov	r2, 1
	mov	r0, 1
	jl	rax, x14, .LBB0_225
// %bb.224:
	mov	r0, 0
.LBB0_225:
	mov	r1, r0
	mul	r1, -2147483648
	sub	rax, r1
	mov	r1, -2147483648
	je	rax, r1, .LBB0_227
// %bb.226:
	mov	r2, 0
.LBB0_227:
	mov	r1, 0
	sub	r1, r2
	mov	x4, 1
	mov	r2, 1
	jl	r1, x14, .LBB0_229
// %bb.228:
	mov	r2, 0
.LBB0_229:
	mov	r3, r2
	mul	r3, -2147483648
	mov	r4, r1
	sub	r4, r3
	div	r4, 2
	mul	r2, 1073741824
	add	r2, r4
	mul	r2, 2
	sub	r1, r2
	add	r1, r0
	mov	x12, 0
	sub	x12, r1
	mov	r0, x13
	mov	r1, x12
	call	__bit_and
	mov	x13, rax
	mov	r0, x6
	mov	r1, x8
	call	__bit_shr
	mov	r0, rax
	mov	r1, x13
	call	__bit_or
add	x15, -32
	jl	x15, x14, .LBB0_231
// %bb.230:
	mov	x4, 0
.LBB0_231:
	mov	r0, x4
	mul	r0, -2147483648
	sub	x15, r0
	mov	r0, 1
	mov	r2, 1
	mov	r1, -2147483648
	je	x15, r1, .LBB0_233
// %bb.232:
	mov	r2, 0
.LBB0_233:
	mov	r1, 0
	sub	r1, r2
	add	x9, x11
	jl	r1, x14, .LBB0_235
// %bb.234:
	mov	r0, 0
.LBB0_235:
	mov	r2, r0
	mul	r2, -2147483648
	mov	r3, r1
	sub	r3, r2
	div	r3, 2
	mul	r0, 1073741824
	add	r0, r3
	mul	r0, 2
	sub	r1, r0
	add	r1, x4
	mov	x11, 0
	sub	x11, r1
	mov	r0, rax
	mov	r1, x11
	call	__bit_and
	mov	x6, rax
	mov	r0, x3
	mov	r1, x8
	call	__bit_shr
	sub	x2, x11
	mov	x3, rax
	mov	r0, x3
	mov	r1, x2
	call	__bit_and
	add	x6, rax
	mov	r0, x3
	mov	r1, x11
	call	__bit_and
	mov	r0, x9
	mov	r1, rax
	call	__bit_or
	mov	x3, rax
	mov	r0, x10
	mov	r1, x6
	call	__bit_or
	mov	r0, 1
	jl	x7, x14, .LBB0_237
// %bb.236:
	mov	r0, 0
.LBB0_237:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x7
	sub	r2, r1
	div	r2, 2
	mul	r0, 1073741824
	add	r0, r2
	mul	r0, 2
	sub	x7, r0
	mov	r0, rax
	mov	r1, x7
	call	__bit_or
	mov	x6, rax
	mov	x4, [rsp]
	mov	r0, x4
	mov	r1, x5
	call	__bit_shl
	mov	r0, rax
	mov	r1, x12
	call	__bit_and
	mov	x5, rax
	mov	r0, x0
	mov	r1, x8
	call	__bit_shr
	mov	r0, rax
	mov	r1, x5
	call	__bit_or
	mov	r0, rax
	mov	r1, x11
	call	__bit_and
	mov	x5, rax
	mov	r0, x4
	mov	r1, x8
	call	__bit_shr
	mov	x4, rax
	mov	r0, x4
	mov	r1, x2
	call	__bit_and
	mov	x0, rax
	add	x0, x5
	mov	r0, x4
	mov	r1, x11
	call	__bit_and
	mov	x2, rax
	jmp	.LBB0_242
.LBB0_238:
	mov	x0, 0
	mov	x7, x1
	jmp	.LBB0_261
.LBB0_239:
	mov	r0, 1
	jl	t0, r1, .LBB0_241
// %bb.240:
	mov	r0, 0
.LBB0_241:
	mov	r1, r0
	mul	r1, 2048
	mul	r0, -2147483648
	mov	r2, t0
	sub	r2, r0
	div	r2, 1048576
	add	r2, r1
	mul	r2, 1048576
	sub	t0, r2
	mul	x2, 1048576
	add	x2, t0
.LBB0_242:
	mov	r0, x2
	mov	r1, x1
	call	__bit_or
	mov	x7, rax
	mov	r0, 0
	mov	x1, 1
	mov	r1, 1
	je	x6, r0, .LBB0_244
// %bb.243:
	mov	r1, 0
.LBB0_244:
	mov	r2, -1
	jg	x3, r2, .LBB0_246
// %bb.245:
	mov	x1, 0
.LBB0_246:
	sub	r1, x1
	mov	r3, -2147483648
	mov	r2, 1
	je	x3, r3, .LBB0_248
// %bb.247:
	mov	r2, 0
.LBB0_248:
	sub	r0, r2
	call	__bit_and
	add	x1, rax
	jnz	x1, .LBB0_250
	jmp	.LBB0_249
.LBB0_249:
	mov	r2, 1
	mov	r3, 0
	mov	r0, x0
	mov	r1, x7
	call	__adddi3
	mov	x0, rax
	mov	x7, t0
	jmp	.LBB0_260
.LBB0_250:
	mov	r2, 0
	mov	r3, 1
	mov	r0, 1
	jl	x3, r2, .LBB0_252
// %bb.251:
	mov	r0, 0
.LBB0_252:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r4, x3
	sub	r4, r1
	mov	r1, -2147483648
	je	r4, r1, .LBB0_254
// %bb.253:
	mov	r3, 0
.LBB0_254:
	mov	r1, 0
	sub	r1, r3
	mov	r3, 1
	jl	r1, r2, .LBB0_256
// %bb.255:
	mov	r3, 0
.LBB0_256:
	mov	r2, r3
	mul	r2, -2147483648
	mov	r4, r1
	sub	r4, r2
	div	r4, 2
	mul	r3, 1073741824
	add	r3, r4
	mul	r3, 2
	sub	r1, r3
	add	r1, r0
	mul	r1, -2147483648
	add	r1, r1
	sub	x3, r1
add	x3, -2147483648
	mov	r0, x6
	mov	r1, x3
	call	__bit_or
	jnz	rax, .LBB0_260
	jmp	.LBB0_257
.LBB0_257:
	mov	r1, 0
	mov	r0, 1
	jl	x0, r1, .LBB0_259
// %bb.258:
	mov	r0, 0
.LBB0_259:
	mov	r1, r0
	mul	r1, 1073741824
	mul	r0, -2147483648
	mov	r3, x0
	sub	r3, r0
	div	r3, 2
	add	r3, r1
	mul	r3, 2
	mov	r2, x0
	sub	r2, r3
	mov	r3, 0
	mov	r0, x0
	mov	r1, x7
	call	__adddi3
	mov	x0, rax
	mov	x7, t0
.LBB0_260:
.LBB0_261:
	mov	rax, x0
	mov	t0, x7
	mov	x15, [rsp+4]
	mov	x14, [rsp+8]
	mov	x13, [rsp+12]
	mov	x12, [rsp+16]
	mov	x11, [rsp+20]
	mov	x10, [rsp+24]
	mov	x9, [rsp+28]
	mov	x8, [rsp+32]
	mov	x7, [rsp+36]
	mov	x6, [rsp+40]
	mov	x5, [rsp+44]
	mov	x4, [rsp+48]
	mov	x3, [rsp+52]
	mov	x2, [rsp+56]
	mov	x1, [rsp+60]
	mov	x0, [rsp+64]
add	rsp, 68
	ret
// -- End function
