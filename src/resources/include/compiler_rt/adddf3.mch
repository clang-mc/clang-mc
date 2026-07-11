#include "_ll_std"

// -- Begin function __adddf3
__adddf3:                               // @__adddf3
// %bb.0:
sub	rsp, 72
	mov	[rsp+68], x0
	mov	[rsp+64], x1
	mov	[rsp+60], x2
	mov	[rsp+56], x3
	mov	[rsp+52], x4
	mov	[rsp+48], x5
	mov	[rsp+44], x6
	mov	[rsp+40], x7
	mov	[rsp+36], x8
	mov	[rsp+32], x9
	mov	[rsp+28], x10
	mov	[rsp+24], x11
	mov	[rsp+20], x12
	mov	[rsp+16], x13
	mov	[rsp+12], x14
	mov	[rsp+8], x15
	mov	x3, r3
	mov	x15, r2
	mov	x1, r1
	mov	x2, r0
	mov	x6, 0
	mov	r0, 1
	mov	r3, 1
	jl	x1, x6, .LBB0_2
// %bb.1:
	mov	r3, 0
.LBB0_2:
	mov	r1, r3
	mul	r1, -2147483648
	mov	r4, x1
	sub	r4, r1
	mov	r2, -2147483648
	je	r4, r2, .LBB0_4
// %bb.3:
	mov	r0, 0
.LBB0_4:
	mov	r1, 0
	sub	r1, r0
	mov	r0, 1
	mov	r4, 1
	jl	r1, x6, .LBB0_6
// %bb.5:
	mov	r4, 0
.LBB0_6:
	mov	r5, r4
	mul	r5, -2147483648
	mov	r6, r1
	sub	r6, r5
	div	r6, 2
	mul	r4, 1073741824
	add	r4, r6
	mul	r4, 2
	sub	r1, r4
	add	r1, r3
	jl	x3, x6, .LBB0_8
// %bb.7:
	mov	r0, 0
.LBB0_8:
	mul	r1, -2147483648
	mov	r3, r0
	mul	r3, -2147483648
	mov	r5, x3
	sub	r5, r3
	mov	r3, 1
	mov	r4, 1
	je	r5, r2, .LBB0_10
// %bb.9:
	mov	r4, 0
.LBB0_10:
	mov	x0, x1
	mov	x4, 0
	sub	x4, r4
	sub	x0, r1
	jl	x4, x6, .LBB0_12
// %bb.11:
	mov	r3, 0
.LBB0_12:
	mov	r1, r3
	mul	r1, -2147483648
	mov	r2, x4
	sub	r2, r1
	div	r2, 2
	mul	r3, 1073741824
	add	r3, r2
	mul	r3, 2
	sub	x4, r3
	add	x4, r0
	mov	r2, 0
	mov	r3, -2146435072
	mov	x8, -2146435072
	mov	r0, x2
	mov	r1, x0
	call	__adddi3
	mov	x7, 1
	mov	r1, 1
	je	rax, x6, .LBB0_14
// %bb.13:
	mov	r1, 0
.LBB0_14:
	mov	r0, t0
add	r0, -2147483648
	mov	r2, 1048576
	mul	x4, -2147483648
	jl	r0, r2, .LBB0_16
// %bb.15:
	mov	x7, 0
.LBB0_16:
	mov	x5, x3
	sub	x5, x4
	sub	r1, x7
	mov	r0, 1
	je	t0, x8, .LBB0_18
// %bb.17:
	mov	r0, 0
.LBB0_18:
	sub	x6, r0
	mov	r0, x6
	call	__bit_and
	mov	r2, 0
	mov	r3, -2146435072
	add	x7, rax
	mov	r0, x15
	mov	r1, x5
	call	__adddi3
	jnz	x7, .LBB0_26
	jmp	.LBB0_19
.LBB0_19:
	mov	r0, 0
	mov	x4, 1
	mov	r1, 1
	jne	rax, r0, .LBB0_21
// %bb.20:
	mov	r1, 0
.LBB0_21:
	mov	r2, t0
add	r2, -2147483648
	mov	r3, 1048576
	jg	r2, r3, .LBB0_23
// %bb.22:
	mov	x4, 0
.LBB0_23:
	sub	r1, x4
	mov	r3, -2146435072
	mov	r2, 1
	je	t0, r3, .LBB0_25
// %bb.24:
	mov	r2, 0
.LBB0_25:
	sub	r0, r2
	call	__bit_and
	add	x4, rax
	jnz	x4, .LBB0_65
	jmp	.LBB0_26
.LBB0_26:
	mov	r0, 0
	mov	x4, 1
	mov	r1, 1
	je	x2, r0, .LBB0_28
// %bb.27:
	mov	r1, 0
.LBB0_28:
	mov	r2, 2146435072
	jl	x0, r2, .LBB0_30
// %bb.29:
	mov	x4, 0
.LBB0_30:
	sub	r1, x4
	mov	r3, 1
	je	x0, r2, .LBB0_32
// %bb.31:
	mov	r3, 0
.LBB0_32:
	sub	r0, r3
	call	__bit_and
	add	x4, rax
	jnz	x4, .LBB0_36
	jmp	.LBB0_33
.LBB0_33:
	mov	r1, 0
	mov	r0, 1
	jl	x1, r1, .LBB0_35
// %bb.34:
	mov	r0, 0
.LBB0_35:
	mov	r1, r0
	mul	r1, 4096
	mul	r0, -2147483648
	mov	r2, x1
	sub	r2, r0
	div	r2, 524288
	add	r2, r1
	mov	r0, r2
	div	r0, 2
	mul	r0, 2
	sub	r2, r0
	mul	r2, 524288
	sub	x1, r2
add	x1, 524288
	mov	rax, x2
	mov	t0, x1
	jmp	.LBB0_366
.LBB0_36:
	mov	r0, 0
	mov	x4, 1
	mov	r1, 1
	je	x15, r0, .LBB0_38
// %bb.37:
	mov	r1, 0
.LBB0_38:
	mov	r2, 2146435072
	jl	x5, r2, .LBB0_40
// %bb.39:
	mov	x4, 0
.LBB0_40:
	sub	r1, x4
	mov	r3, 1
	je	x5, r2, .LBB0_42
// %bb.41:
	mov	r3, 0
.LBB0_42:
	sub	r0, r3
	call	__bit_and
	add	x4, rax
	jnz	x4, .LBB0_46
	jmp	.LBB0_43
.LBB0_43:
	mov	r1, 0
	mov	r0, 1
	jl	x3, r1, .LBB0_45
// %bb.44:
	mov	r0, 0
.LBB0_45:
	mov	r1, r0
	mul	r1, 4096
	mul	r0, -2147483648
	mov	r2, x3
	sub	r2, r0
	div	r2, 524288
	add	r2, r1
	mov	r0, r2
	div	r0, 2
	mul	r0, 2
	sub	r2, r0
	mul	r2, 524288
	sub	x3, r2
add	x3, 524288
	mov	rax, x15
	mov	t0, x3
	jmp	.LBB0_366
.LBB0_46:
	mov	r1, 0
	mov	r0, 1
	jl	x0, r1, .LBB0_48
// %bb.47:
	mov	r0, 0
.LBB0_48:
	mov	r1, r0
	mul	r1, 2048
	mul	r0, -2147483648
	mov	r2, x0
	sub	r2, r0
	div	r2, 1048576
	add	r2, r1
	mov	r0, r2
	div	r0, 2048
	mul	r0, 2048
	sub	r2, r0
	mul	r2, 1048576
	add	r2, r2
	mov	r1, x0
	sub	r1, r2
add	r1, 2146435072
	mov	r0, x2
	call	__bit_or
	jnz	rax, .LBB0_58
	jmp	.LBB0_49
.LBB0_49:
	mov	r0, x3
	mov	r1, x1
	call	__bit_xor
	mov	x3, rax
	mov	r0, x15
	mov	r1, x2
	call	__bit_xor
	mov	x0, 0
	mov	r2, 1
	mov	r0, 1
	jl	x3, x0, .LBB0_51
// %bb.50:
	mov	r0, 0
.LBB0_51:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r3, x3
	sub	r3, r1
	mov	r1, -2147483648
	je	r3, r1, .LBB0_53
// %bb.52:
	mov	r2, 0
.LBB0_53:
	mov	r1, 0
	sub	r1, r2
	mov	x4, 1
	mov	r2, 1
	jl	r1, x0, .LBB0_55
// %bb.54:
	mov	r2, 0
.LBB0_55:
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
	mul	r1, -2147483648
	add	r1, r1
	sub	x3, r1
add	x3, -2147483648
	mov	r0, rax
	mov	r1, x3
	call	__bit_or
	je	rax, x0, .LBB0_57
// %bb.56:
	mov	x4, 0
.LBB0_57:
	mov	x3, 0
	sub	x3, x4
	mov	r1, 2146959360
	sub	r1, x1
	mov	r0, x3
	call	__bit_and
	mov	x4, rax
	sub	x0, x2
	add	x4, x1
	mov	r0, x3
	mov	r1, x0
	call	__bit_and
	mov	t0, x4
	add	rax, x2
	jmp	.LBB0_366
.LBB0_58:
	mov	r1, 0
	mov	r0, 1
	jl	x5, r1, .LBB0_60
// %bb.59:
	mov	r0, 0
.LBB0_60:
	mov	r1, r0
	mul	r1, 2048
	mul	r0, -2147483648
	mov	r2, x5
	sub	r2, r0
	div	r2, 1048576
	add	r2, r1
	mov	r0, r2
	div	r0, 2048
	mul	r0, 2048
	sub	r2, r0
	mul	r2, 1048576
	add	r2, r2
	mov	r1, x5
	sub	r1, r2
add	r1, 2146435072
	mov	r0, x15
	call	__bit_or
	mov	r0, rax
	mov	rax, x15
	mov	t0, x3
	jz	r0, .LBB0_366
	jmp	.LBB0_61
.LBB0_61:
	mov	r0, x2
	mov	r1, x0
	call	__bit_or
	jnz	rax, .LBB0_64
	jmp	.LBB0_62
.LBB0_62:
	mov	r0, x15
	mov	r1, x5
	call	__bit_or
	mov	r0, rax
	mov	rax, x15
	mov	t0, x3
	jnz	r0, .LBB0_366
	jmp	.LBB0_63
.LBB0_63:
	mov	r0, x15
	mov	r1, x2
	call	__bit_and
	mov	x0, rax
	mov	r0, x3
	mov	r1, x1
	call	__bit_and
	mov	t0, rax
	mov	rax, x0
	jmp	.LBB0_366
.LBB0_64:
	mov	r0, x15
	mov	r1, x5
	call	__bit_or
	mov	r0, rax
	mov	rax, x2
	mov	t0, x1
	jz	r0, .LBB0_366
	jmp	.LBB0_65
.LBB0_65:
	mov	x4, x2
add	x4, -2147483648
	mov	x8, x15
add	x8, -2147483648
	mov	r0, 1
	mov	x6, 1
	jg	x8, x4, .LBB0_67
// %bb.66:
	mov	x6, 0
.LBB0_67:
	mov	r1, x0
add	r1, -2147483648
	mov	r2, x5
add	r2, -2147483648
	jg	r2, r1, .LBB0_69
// %bb.68:
	mov	r0, 0
.LBB0_69:
	mov	r1, x6
	sub	r1, r0
	mov	x9, 1
	mov	r0, 1
	je	x5, x0, .LBB0_71
// %bb.70:
	mov	r0, 0
.LBB0_71:
	mov	x7, 0
	sub	x7, r0
	mov	r0, x7
	call	__bit_and
	jg	x5, x0, .LBB0_73
// %bb.72:
	mov	x9, 0
.LBB0_73:
	sub	x6, x9
	mov	r0, x7
	mov	r1, x6
	call	__bit_and
	add	rax, x9
	mov	x7, x2
	mov	x6, x1
	jnz	rax, .LBB0_75
	jmp	.LBB0_74
.LBB0_74:
	mov	x7, x15
	mov	x6, x3
.LBB0_75:
	mov	r1, 1
	mov	x9, 1
	jg	x5, x0, .LBB0_77
// %bb.76:
	mov	x9, 0
.LBB0_77:
	jg	x8, x4, .LBB0_79
// %bb.78:
	mov	r1, 0
.LBB0_79:
	sub	r1, x9
	mov	r2, 1
	je	x5, x0, .LBB0_81
// %bb.80:
	mov	r2, 0
.LBB0_81:
	mov	r0, 0
	sub	r0, r2
	mov	x4, 0
	call	__bit_and
	add	x9, rax
	mov	rax, x15
	mov	x13, x3
	jnz	x9, .LBB0_83
	jmp	.LBB0_82
.LBB0_82:
	mov	rax, x2
	mov	x13, x1
.LBB0_83:
	mov	r1, 1
	mov	r2, 1
	jl	x13, x4, .LBB0_85
// %bb.84:
	mov	r2, 0
.LBB0_85:
	mov	r3, r2
	mul	r3, 2048
	mul	r2, -2147483648
	mov	r0, x13
	sub	r0, r2
	div	r0, 1048576
	add	r0, r3
	mov	r2, r0
	div	r2, 2048
	mul	r2, 2048
	mov	x0, r0
	sub	x0, r2
	jl	x6, x4, .LBB0_87
// %bb.86:
	mov	r1, 0
.LBB0_87:
	mov	r2, r1
	mul	r2, 2048
	mul	r1, -2147483648
	mov	x14, x6
	sub	x14, r1
	div	x14, 1048576
	add	x14, r2
	mov	r1, x14
	div	r1, 2048
	mul	r1, 2048
	mov	x12, x14
	sub	x12, r1
	mul	r0, 1048576
	mov	x9, x13
	sub	x9, r0
	mul	x14, 1048576
	jnz	x0, .LBB0_137
	jmp	.LBB0_88
.LBB0_88:
	mov	x0, 0
	mov	x8, 1
	mov	r0, 1
	jl	rax, x0, .LBB0_90
// %bb.89:
	mov	r0, 0
.LBB0_90:
	mov	r2, r0
	mul	r2, 1073741824
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 2
	add	r1, r2
	mov	[rsp+4], rax
	mov	r0, rax
	call	__bit_or
	jl	rax, x0, .LBB0_92
// %bb.91:
	mov	x8, 0
.LBB0_92:
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
	jl	rax, x0, .LBB0_94
// %bb.93:
	mov	r1, 0
.LBB0_94:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 16
	mul	r1, 134217728
	add	r1, r2
	mov	r0, rax
	call	__bit_or
	jl	rax, x0, .LBB0_96
// %bb.95:
	mov	x8, 0
.LBB0_96:
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
	mov	x10, 1
	mov	r1, 1
	jl	rax, x0, .LBB0_98
// %bb.97:
	mov	r1, 0
.LBB0_98:
	mov	[rsp], x15
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
	jl	x8, x0, .LBB0_100
// %bb.99:
	mov	x10, 0
.LBB0_100:
	mov	r0, x10
	mul	r0, -2147483648
	mov	r1, x8
	sub	r1, r0
	div	r1, 2
	mul	x10, 1073741824
	add	x10, r1
	mov	r1, 1431655765
	mov	r0, x10
	call	__bit_and
	sub	x8, rax
	mov	x15, 1
	mov	r0, 1
	jl	x8, x0, .LBB0_102
// %bb.101:
	mov	r0, 0
.LBB0_102:
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
	mov	x10, rax
	mov	r0, x8
	call	__bit_and
	add	rax, x10
	mov	x11, rax
	div	x11, 16
	add	x11, rax
	mov	r0, x11
	div	r0, 16
	mul	r0, 16
	mov	r1, x11
	mov	r2, x11
	div	r2, 256
	sub	r1, r0
	mov	r0, r2
	div	r0, 16
	mul	r0, 16
	sub	r2, r0
	mul	r2, 256
	mov	r0, x11
	div	r0, 65536
	add	r2, r1
	mov	r1, r0
	div	r1, 16
	mul	r1, 16
	sub	r0, r1
	mul	r0, 65536
	div	x11, 16777216
	add	r0, r2
	mov	r1, x11
	div	r1, 16
	mul	r1, 16
	sub	x11, r1
	mul	x11, 16777216
	add	x11, r0
	mul	x11, 16843009
	jl	x11, x0, .LBB0_104
// %bb.103:
	mov	x15, 0
.LBB0_104:
	mov	x8, 1
	mov	r0, 1
	jl	x9, x0, .LBB0_106
// %bb.105:
	mov	r0, 0
.LBB0_106:
	mov	r2, r0
	mul	r2, 1073741824
	mul	r0, -2147483648
	mov	r1, x9
	sub	r1, r0
	div	r1, 2
	add	r1, r2
	mov	r0, x9
	call	__bit_or
	jl	rax, x0, .LBB0_108
// %bb.107:
	mov	x8, 0
.LBB0_108:
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
	jl	rax, x0, .LBB0_110
// %bb.109:
	mov	r1, 0
.LBB0_110:
	mov	x4, x15
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 16
	mul	r1, 134217728
	add	r1, r2
	mul	x4, -2147483648
	mov	r0, rax
	call	__bit_or
	jl	rax, x0, .LBB0_112
// %bb.111:
	mov	x8, 0
.LBB0_112:
	mov	r0, x8
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 256
	mul	x8, 8388608
	add	x8, r1
	sub	x11, x4
	mov	r0, rax
	mov	r1, x8
	call	__bit_or
	mov	x10, 1
	mov	r1, 1
	jl	rax, x0, .LBB0_114
// %bb.113:
	mov	r1, 0
.LBB0_114:
	div	x11, 16777216
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 65536
	mul	r1, 32768
	add	r1, r2
	mul	x15, 128
	mov	r0, rax
	call	__bit_or
	mov	x8, rax
	jl	x8, x0, .LBB0_116
// %bb.115:
	mov	x10, 0
.LBB0_116:
	add	x11, x15
	mov	r0, x10
	mul	r0, -2147483648
	mov	r1, x8
	sub	r1, r0
	div	r1, 2
	mul	x10, 1073741824
	add	x10, r1
	mov	r1, 1431655765
	mov	x15, 64
	mov	r0, x10
	call	__bit_and
	sub	x8, rax
	mov	x4, 1
	mov	r0, 1
	jl	x8, x0, .LBB0_118
// %bb.117:
	mov	r0, 0
.LBB0_118:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x8
	sub	r2, r1
	div	r2, 4
	mul	r0, 536870912
	add	r0, r2
	mov	r1, 858993459
	sub	x15, x11
	call	__bit_and
	mov	r1, 858993459
	mov	x10, rax
	mov	r0, x8
	call	__bit_and
	add	rax, x10
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
	jl	r0, x0, .LBB0_120
// %bb.119:
	mov	x4, 0
.LBB0_120:
	mov	r1, x4
	mul	r1, -2147483648
	sub	r0, r1
	div	r0, 16777216
	mul	x4, 128
	add	x4, r0
	add	x4, x15
	mov	x10, 32
	mov	r1, 32
	sub	r1, x4
	mov	x4, 1
	mov	r2, 1
	jne	x9, x0, .LBB0_122
// %bb.121:
	mov	r2, 0
.LBB0_122:
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	x15, rax
	mov	x8, x15
add	x8, -11
	jl	x8, x0, .LBB0_124
// %bb.123:
	mov	x4, 0
.LBB0_124:
	mov	r0, x4
	mul	r0, -2147483648
	mov	r1, x8
	sub	r1, r0
	div	r1, 32
	mul	x4, 67108864
	add	x4, r1
	mul	x4, 32
	sub	x8, x4
	mov	r1, 0
	sub	r1, x8
	mov	r0, x8
	call	__bit_or
	mov	r2, 1
	mov	r0, 1
	jl	rax, x0, .LBB0_126
// %bb.125:
	mov	r0, 0
.LBB0_126:
	mov	r1, r0
	mul	r1, -2147483648
	sub	rax, r1
	mov	x5, -2147483648
	je	rax, x5, .LBB0_128
// %bb.127:
	mov	r2, 0
.LBB0_128:
	mov	r1, 0
	sub	r1, r2
	mov	x4, 1
	mov	r2, 1
	jl	r1, x0, .LBB0_130
// %bb.129:
	mov	r2, 0
.LBB0_130:
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
	sub	x10, x8
	mov	x11, 0
	mov	r0, x10
	div	r0, 32
	mul	r0, 32
	sub	x10, r0
	sub	x11, r1
	mov	r0, [rsp+4]
	mov	r1, x10
	call	__bit_shr
	mov	r0, rax
	mov	r1, x11
	call	__bit_and
	mov	x10, rax
	mov	r0, x9
	mov	r1, x8
	call	__bit_shl
	mov	r0, rax
	mov	r1, x10
	call	__bit_or
	mov	r1, x15
add	r1, -43
	jl	r1, x0, .LBB0_132
// %bb.131:
	mov	x4, 0
.LBB0_132:
	mov	r0, x4
	mul	r0, -2147483648
	sub	r1, r0
	mov	r0, 1
	mov	r2, 1
	je	r1, x5, .LBB0_134
// %bb.133:
	mov	r2, 0
.LBB0_134:
	mov	r1, 0
	sub	r1, r2
	jl	r1, x0, .LBB0_136
// %bb.135:
	mov	r0, 0
.LBB0_136:
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
	sub	x0, r1
	mov	r0, rax
	mov	r1, x0
	call	__bit_and
	mov	x10, rax
	mov	r0, [rsp+4]
	mov	r1, x8
	call	__bit_shl
	mov	r1, -1
	sub	r1, x0
	mov	x5, rax
	mov	r0, x5
	call	__bit_and
	mov	x9, rax
	add	x9, x10
	mov	r0, x5
	mov	r1, x0
	call	__bit_and
	mov	x0, 12
	sub	x0, x15
	mov	x15, [rsp]
.LBB0_137:
	mov	[rsp+4], rax
	sub	x6, x14
	jnz	x12, .LBB0_187
	jmp	.LBB0_138
.LBB0_138:
	mov	x8, 0
	mov	x10, 1
	mov	r0, 1
	jl	x7, x8, .LBB0_140
// %bb.139:
	mov	r0, 0
.LBB0_140:
	mov	r2, r0
	mul	r2, 1073741824
	mul	r0, -2147483648
	mov	r1, x7
	sub	r1, r0
	div	r1, 2
	add	r1, r2
	mov	r0, x7
	call	__bit_or
	jl	rax, x8, .LBB0_142
// %bb.141:
	mov	x10, 0
.LBB0_142:
	mov	r0, x10
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 4
	mul	x10, 536870912
	add	x10, r1
	mov	r0, rax
	mov	r1, x10
	call	__bit_or
	mov	x10, 1
	mov	r1, 1
	jl	rax, x8, .LBB0_144
// %bb.143:
	mov	r1, 0
.LBB0_144:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 16
	mul	r1, 134217728
	add	r1, r2
	mov	r0, rax
	call	__bit_or
	jl	rax, x8, .LBB0_146
// %bb.145:
	mov	x10, 0
.LBB0_146:
	mov	r0, x10
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 256
	mul	x10, 8388608
	add	x10, r1
	mov	r0, rax
	mov	r1, x10
	call	__bit_or
	mov	x11, 1
	mov	r1, 1
	jl	rax, x8, .LBB0_148
// %bb.147:
	mov	r1, 0
.LBB0_148:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 65536
	mul	r1, 32768
	add	r1, r2
	mov	r0, rax
	call	__bit_or
	mov	x10, rax
	jl	x10, x8, .LBB0_150
// %bb.149:
	mov	x11, 0
.LBB0_150:
	mov	r0, x11
	mul	r0, -2147483648
	mov	r1, x10
	sub	r1, r0
	div	r1, 2
	mul	x11, 1073741824
	add	x11, r1
	mov	r1, 1431655765
	mov	r0, x11
	call	__bit_and
	sub	x10, rax
	mov	x14, 1
	mov	r0, 1
	jl	x10, x8, .LBB0_152
// %bb.151:
	mov	r0, 0
.LBB0_152:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x10
	sub	r2, r1
	div	r2, 4
	mul	r0, 536870912
	add	r0, r2
	mov	r1, 858993459
	call	__bit_and
	mov	r1, 858993459
	mov	x11, rax
	mov	r0, x10
	call	__bit_and
	add	rax, x11
	mov	x12, rax
	div	x12, 16
	add	x12, rax
	mov	r0, x12
	div	r0, 16
	mul	r0, 16
	mov	r1, x12
	mov	r2, x12
	div	r2, 256
	sub	r1, r0
	mov	r0, r2
	div	r0, 16
	mul	r0, 16
	sub	r2, r0
	mul	r2, 256
	mov	r0, x12
	div	r0, 65536
	add	r2, r1
	mov	r1, r0
	div	r1, 16
	mul	r1, 16
	sub	r0, r1
	mul	r0, 65536
	div	x12, 16777216
	add	r0, r2
	mov	r1, x12
	div	r1, 16
	mul	r1, 16
	sub	x12, r1
	mul	x12, 16777216
	add	x12, r0
	mul	x12, 16843009
	jl	x12, x8, .LBB0_154
// %bb.153:
	mov	x14, 0
.LBB0_154:
	mov	x10, 1
	mov	r0, 1
	jl	x6, x8, .LBB0_156
// %bb.155:
	mov	r0, 0
.LBB0_156:
	mov	r2, r0
	mul	r2, 1073741824
	mul	r0, -2147483648
	mov	r1, x6
	sub	r1, r0
	div	r1, 2
	add	r1, r2
	mov	r0, x6
	call	__bit_or
	jl	rax, x8, .LBB0_158
// %bb.157:
	mov	x10, 0
.LBB0_158:
	mov	r0, x10
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 4
	mul	x10, 536870912
	add	x10, r1
	mov	r0, rax
	mov	r1, x10
	call	__bit_or
	mov	x10, 1
	mov	r1, 1
	jl	rax, x8, .LBB0_160
// %bb.159:
	mov	r1, 0
.LBB0_160:
	mov	x4, x14
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 16
	mul	r1, 134217728
	add	r1, r2
	mul	x4, -2147483648
	mov	r0, rax
	call	__bit_or
	jl	rax, x8, .LBB0_162
// %bb.161:
	mov	x10, 0
.LBB0_162:
	mov	r0, x10
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 256
	mul	x10, 8388608
	add	x10, r1
	sub	x12, x4
	mov	r0, rax
	mov	r1, x10
	call	__bit_or
	mov	x11, 1
	mov	r1, 1
	jl	rax, x8, .LBB0_164
// %bb.163:
	mov	r1, 0
.LBB0_164:
	div	x12, 16777216
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 65536
	mul	r1, 32768
	add	r1, r2
	mul	x14, 128
	mov	r0, rax
	call	__bit_or
	mov	x10, rax
	jl	x10, x8, .LBB0_166
// %bb.165:
	mov	x11, 0
.LBB0_166:
	add	x12, x14
	mov	r0, x11
	mul	r0, -2147483648
	mov	r1, x10
	sub	r1, r0
	div	r1, 2
	mul	x11, 1073741824
	add	x11, r1
	mov	r1, 1431655765
	mov	x14, 64
	mov	r0, x11
	call	__bit_and
	sub	x10, rax
	mov	x4, 1
	mov	r0, 1
	jl	x10, x8, .LBB0_168
// %bb.167:
	mov	r0, 0
.LBB0_168:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x10
	sub	r2, r1
	div	r2, 4
	mul	r0, 536870912
	add	r0, r2
	mov	r1, 858993459
	sub	x14, x12
	call	__bit_and
	mov	r1, 858993459
	mov	x11, rax
	mov	r0, x10
	call	__bit_and
	add	rax, x11
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
	jl	r0, x8, .LBB0_170
// %bb.169:
	mov	x4, 0
.LBB0_170:
	mov	r1, x4
	mul	r1, -2147483648
	sub	r0, r1
	div	r0, 16777216
	mul	x4, 128
	add	x4, r0
	add	x4, x14
	mov	x11, 32
	mov	r1, 32
	sub	r1, x4
	mov	x4, 1
	mov	r2, 1
	jne	x6, x8, .LBB0_172
// %bb.171:
	mov	r2, 0
.LBB0_172:
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	x14, rax
	mov	x10, x14
add	x10, -11
	jl	x10, x8, .LBB0_174
// %bb.173:
	mov	x4, 0
.LBB0_174:
	mov	r0, x4
	mul	r0, -2147483648
	mov	r1, x10
	sub	r1, r0
	div	r1, 32
	mul	x4, 67108864
	add	x4, r1
	mul	x4, 32
	sub	x10, x4
	mov	r1, 0
	sub	r1, x10
	mov	r0, x10
	call	__bit_or
	mov	r2, 1
	mov	r0, 1
	jl	rax, x8, .LBB0_176
// %bb.175:
	mov	r0, 0
.LBB0_176:
	mov	r1, r0
	mul	r1, -2147483648
	sub	rax, r1
	mov	x5, -2147483648
	je	rax, x5, .LBB0_178
// %bb.177:
	mov	r2, 0
.LBB0_178:
	mov	r1, 0
	sub	r1, r2
	mov	x4, 1
	mov	r2, 1
	jl	r1, x8, .LBB0_180
// %bb.179:
	mov	r2, 0
.LBB0_180:
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
	sub	x11, x10
	mov	x12, 0
	mov	r0, x11
	div	r0, 32
	mul	r0, 32
	sub	x11, r0
	sub	x12, r1
	mov	r0, x7
	mov	r1, x11
	call	__bit_shr
	mov	r0, rax
	mov	r1, x12
	call	__bit_and
	mov	x11, rax
	mov	r0, x6
	mov	r1, x10
	call	__bit_shl
	mov	r0, rax
	mov	r1, x11
	call	__bit_or
	mov	r1, x14
add	r1, -43
	jl	r1, x8, .LBB0_182
// %bb.181:
	mov	x4, 0
.LBB0_182:
	mov	r0, x4
	mul	r0, -2147483648
	sub	r1, r0
	mov	r0, 1
	mov	r2, 1
	je	r1, x5, .LBB0_184
// %bb.183:
	mov	r2, 0
.LBB0_184:
	mov	r1, 0
	sub	r1, r2
	jl	r1, x8, .LBB0_186
// %bb.185:
	mov	r0, 0
.LBB0_186:
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
	sub	x8, r1
	mov	r0, rax
	mov	r1, x8
	call	__bit_and
	mov	x11, rax
	mov	r0, x7
	mov	r1, x10
	call	__bit_shl
	mov	r1, -1
	sub	r1, x8
	mov	x7, rax
	mov	r0, x7
	call	__bit_and
	mov	x6, rax
	add	x6, x11
	mov	r0, x7
	mov	r1, x8
	call	__bit_and
	mov	x7, rax
	mov	x12, 12
	sub	x12, x14
.LBB0_187:
	mov	x11, 0
	mov	r0, 1
	mov	x10, 1
	jl	x13, x11, .LBB0_189
// %bb.188:
	mov	x10, 0
.LBB0_189:
	mov	r1, x10
	mul	r1, -2147483648
	sub	x13, r1
	mov	r1, -2147483648
	je	x13, r1, .LBB0_191
// %bb.190:
	mov	r0, 0
.LBB0_191:
	mov	x8, 0
	sub	x8, r0
	mov	x5, 1
	mov	x13, 1
	jl	x8, x11, .LBB0_193
// %bb.192:
	mov	x13, 0
.LBB0_193:
	mov	r0, x13
	mul	r0, -2147483648
	mov	x4, x8
	sub	x4, r0
	div	x4, 2
	mul	x13, 1073741824
	mov	r0, x15
	mov	r1, x2
	call	__bit_xor
	mov	r0, x3
	mov	r1, x1
	call	__bit_xor
	mov	r4, [rsp+4]
	jl	r4, x11, .LBB0_195
// %bb.194:
	mov	x5, 0
.LBB0_195:
	add	x4, x13
	mov	r0, x5
	mul	r0, 4
	mul	x5, -2147483648
	mov	r1, r4
	sub	r1, x5
	div	r1, 536870912
	add	r1, r0
	mul	x9, 8
	add	x9, r1
	mov	r1, 1
	mov	r0, 1
	jl	x9, x11, .LBB0_197
// %bb.196:
	mov	r0, 0
.LBB0_197:
	mov	r2, r0
	mul	r2, -2147483648
	mov	r3, x9
	sub	r3, r2
	div	r3, 8388608
	mul	r0, 256
	add	r0, r3
	mul	x4, 2
	mov	r2, r0
	div	r2, 2
	mul	r2, 2
	sub	r0, r2
	jl	x7, x11, .LBB0_199
// %bb.198:
	mov	r1, 0
.LBB0_199:
	sub	x8, x4
	mul	r0, 8388608
	mov	r2, r1
	mul	r2, 4
	mul	r1, -2147483648
	mov	r3, x7
	sub	r3, r1
	div	r3, 536870912
	add	r3, r2
	mul	x6, 8
	add	x6, r3
	mov	r1, 1
	jl	x6, x11, .LBB0_201
// %bb.200:
	mov	r1, 0
.LBB0_201:
	add	x8, x10
	mov	r2, r1
	mul	r2, -2147483648
	mov	r3, x6
	sub	r3, r2
	div	r3, 8388608
	mul	r1, 256
	add	r1, r3
	mul	x7, 8
	mov	r2, r1
	div	r2, 2
	mul	r2, 2
	sub	r1, r2
	mul	r1, 8388608
	sub	x6, r1
add	x6, 8388608
	sub	x9, r0
	mov	x3, x7
	mov	x4, x6
	je	x0, x12, .LBB0_234
	jmp	.LBB0_202
.LBB0_202:
	mov	x13, x0
	sub	x13, x12
	mov	x4, 0
	mov	r0, x13
add	r0, -2147483648
	mov	r1, -2147483585
	mov	x3, 1
	jg	r0, r1, .LBB0_234
	jmp	.LBB0_203
.LBB0_203:
	mov	x11, rax
	mov	x2, 64
	sub	x2, x13
	mov	r1, 32
	mov	x1, 32
	mov	r0, x2
	call	__udivsi3
	mul	rax, 32
	sub	x2, rax
	mov	r1, 0
	sub	r1, x2
	mov	x12, 0
	mov	r0, x2
	call	__bit_or
	mov	r1, 1
	mov	r0, 1
	jl	rax, x12, .LBB0_205
// %bb.204:
	mov	r0, 0
.LBB0_205:
	mov	r2, r0
	mul	r2, -2147483648
	sub	rax, r2
	mov	x14, -2147483648
	je	rax, x14, .LBB0_207
// %bb.206:
	mov	r1, 0
.LBB0_207:
	mov	r2, 0
	sub	r2, r1
	mov	x4, 1
	mov	r1, 1
	jl	r2, x12, .LBB0_209
// %bb.208:
	mov	r1, 0
.LBB0_209:
	mov	r3, r1
	mul	r3, -2147483648
	mov	r4, r2
	sub	r4, r3
	div	r4, 2
	mul	r1, 1073741824
	add	r1, r4
	mul	r1, 2
	sub	r2, r1
	add	r2, r0
	mov	r1, 32
	sub	r1, x2
	mov	x3, 0
	mov	r0, r1
	div	r0, 32
	mul	r0, 32
	sub	r1, r0
	sub	x3, r2
	mov	r0, x7
	call	__bit_shr
	mov	r0, rax
	mov	r1, x3
	call	__bit_and
	mov	x3, rax
	mov	r0, x6
	mov	r1, x2
	call	__bit_shl
	mov	r0, rax
	mov	r1, x3
	call	__bit_or
	mov	r1, 32
	sub	r1, x13
	jl	r1, x12, .LBB0_211
// %bb.210:
	mov	x4, 0
.LBB0_211:
	mov	r0, x4
	mul	r0, -2147483648
	sub	r1, r0
	mov	r0, 1
	mov	r2, 1
	je	r1, x14, .LBB0_213
// %bb.212:
	mov	r2, 0
.LBB0_213:
	mov	r1, 0
	sub	r1, r2
	jl	r1, x12, .LBB0_215
// %bb.214:
	mov	r0, 0
.LBB0_215:
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
	mov	x4, 0
	sub	x4, r1
	mov	r0, rax
	mov	r1, x4
	call	__bit_and
	mov	x10, rax
	mov	r0, x7
	mov	r1, x2
	call	__bit_shl
	mov	x2, rax
	mov	r1, -1
	sub	r1, x4
	mov	x3, -1
	mov	r0, x2
	call	__bit_and
	add	x10, rax
	mov	r0, x2
	mov	r1, x4
	call	__bit_and
	mov	r0, rax
	mov	r1, x10
	call	__bit_or
	mov	r0, 1
	mov	x2, 1
	jne	rax, x12, .LBB0_217
// %bb.216:
	mov	x2, 0
.LBB0_217:
	jl	x13, x12, .LBB0_219
// %bb.218:
	mov	r0, 0
.LBB0_219:
	mov	r1, r0
	mul	r1, 67108864
	mul	r0, -2147483648
	mov	r2, x13
	sub	r2, r0
	div	r2, 32
	add	r2, r1
	mul	r2, 32
	mov	x4, x13
	sub	x4, r2
	mov	r1, 0
	sub	r1, x4
	mov	r0, x4
	call	__bit_or
	mov	r2, 1
	mov	r0, 1
	jl	rax, x12, .LBB0_221
// %bb.220:
	mov	r0, 0
.LBB0_221:
	mov	r1, r0
	mul	r1, -2147483648
	sub	rax, r1
	je	rax, x14, .LBB0_223
// %bb.222:
	mov	r2, 0
.LBB0_223:
	mov	r1, 0
	sub	r1, r2
	mov	x15, 1
	mov	r2, 1
	jl	r1, x12, .LBB0_225
// %bb.224:
	mov	r2, 0
.LBB0_225:
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
	sub	x1, x4
	mov	x10, 0
	mov	r0, x1
	div	r0, 32
	mul	r0, 32
	sub	x1, r0
	sub	x10, r1
	mov	r0, x6
	mov	r1, x1
	call	__bit_shl
	mov	r0, rax
	mov	r1, x10
	call	__bit_and
	mov	x1, rax
	mov	r0, x7
	mov	r1, x4
	call	__bit_shr
	mov	r0, rax
	mov	r1, x1
	call	__bit_or
add	x13, -32
	jl	x13, x12, .LBB0_227
// %bb.226:
	mov	x15, 0
.LBB0_227:
	mov	r0, x15
	mul	r0, -2147483648
	sub	x13, r0
	mov	r0, 1
	mov	r2, 1
	je	x13, x14, .LBB0_229
// %bb.228:
	mov	r2, 0
.LBB0_229:
	mov	r1, 0
	sub	r1, r2
	jl	r1, x12, .LBB0_231
// %bb.230:
	mov	r0, 0
.LBB0_231:
	mov	r2, r0
	mul	r2, -2147483648
	mov	r3, r1
	sub	r3, r2
	div	r3, 2
	mul	r0, 1073741824
	add	r0, r3
	mul	r0, 2
	sub	r1, r0
	add	r1, x15
	mov	x7, 0
	sub	x7, r1
	mov	r0, rax
	mov	r1, x7
	call	__bit_and
	mov	x10, rax
	mov	r0, x6
	mov	r1, x4
	call	__bit_shr
	sub	x3, x7
	mov	x4, rax
	mov	r0, x4
	mov	r1, x3
	call	__bit_and
	mov	x1, rax
	add	x1, x10
	mov	r0, x4
	mov	r1, x7
	call	__bit_and
	mov	x4, rax
	mov	r0, 1
	jl	x2, x12, .LBB0_233
// %bb.232:
	mov	r0, 0
.LBB0_233:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x2
	sub	r2, r1
	div	r2, 2
	mul	r0, 1073741824
	add	r0, r2
	mul	r0, 2
	sub	x2, r0
	mov	r0, x1
	mov	r1, x2
	call	__bit_or
	mov	x3, rax
	mov	rax, x11
	mov	r4, [rsp+4]
.LBB0_234:
	mul	x8, -2147483648
	mul	r4, 8
	mov	r0, -1
add	x9, 8388608
	jg	rax, r0, .LBB0_286
	jmp	.LBB0_235
.LBB0_235:
	mov	r0, r4
	mov	r1, x9
	mov	r2, x3
	mov	r3, x4
	mov	x5, r4
	call	__subdi3
	mov	x1, rax
	mov	x2, t0
	mov	r0, x5
	mov	r1, x3
	call	__bit_xor
	mov	x3, rax
	mov	r0, x9
	mov	r1, x4
	call	__bit_xor
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	rax, 0
	mov	t0, 0
	jz	r0, .LBB0_366
	jmp	.LBB0_236
.LBB0_236:
	mov	r0, x2
add	r0, -2147483648
	mov	r1, -2139095041
	jg	r0, r1, .LBB0_296
	jmp	.LBB0_237
.LBB0_237:
	mov	x3, 0
	mov	x4, 1
	mov	r0, 1
	jl	x1, x3, .LBB0_239
// %bb.238:
	mov	r0, 0
.LBB0_239:
	mov	r2, r0
	mul	r2, 1073741824
	mul	r0, -2147483648
	mov	r1, x1
	sub	r1, r0
	div	r1, 2
	add	r1, r2
	mov	r0, x1
	call	__bit_or
	jl	rax, x3, .LBB0_241
// %bb.240:
	mov	x4, 0
.LBB0_241:
	mov	r0, x4
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 4
	mul	x4, 536870912
	add	x4, r1
	mov	r0, rax
	mov	r1, x4
	call	__bit_or
	mov	x4, 1
	mov	r1, 1
	jl	rax, x3, .LBB0_243
// %bb.242:
	mov	r1, 0
.LBB0_243:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 16
	mul	r1, 134217728
	add	r1, r2
	mov	r0, rax
	call	__bit_or
	jl	rax, x3, .LBB0_245
// %bb.244:
	mov	x4, 0
.LBB0_245:
	mov	r0, x4
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 256
	mul	x4, 8388608
	add	x4, r1
	mov	r0, rax
	mov	r1, x4
	call	__bit_or
	mov	x5, 1
	mov	r1, 1
	jl	rax, x3, .LBB0_247
// %bb.246:
	mov	r1, 0
.LBB0_247:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 65536
	mul	r1, 32768
	add	r1, r2
	mov	r0, rax
	call	__bit_or
	mov	x4, rax
	jl	x4, x3, .LBB0_249
// %bb.248:
	mov	x5, 0
.LBB0_249:
	mov	r0, x5
	mul	r0, -2147483648
	mov	r1, x4
	sub	r1, r0
	div	r1, 2
	mul	x5, 1073741824
	add	x5, r1
	mov	r1, 1431655765
	mov	r0, x5
	call	__bit_and
	sub	x4, rax
	mov	x7, 1
	mov	r0, 1
	jl	x4, x3, .LBB0_251
// %bb.250:
	mov	r0, 0
.LBB0_251:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x4
	sub	r2, r1
	div	r2, 4
	mul	r0, 536870912
	add	r0, r2
	mov	r1, 858993459
	call	__bit_and
	mov	r1, 858993459
	mov	x5, rax
	mov	r0, x4
	call	__bit_and
	add	rax, x5
	mov	x6, rax
	div	x6, 16
	add	x6, rax
	mov	r0, x6
	div	r0, 16
	mul	r0, 16
	mov	r1, x6
	mov	r2, x6
	div	r2, 256
	sub	r1, r0
	mov	r0, r2
	div	r0, 16
	mul	r0, 16
	sub	r2, r0
	mul	r2, 256
	mov	r0, x6
	div	r0, 65536
	add	r2, r1
	mov	r1, r0
	div	r1, 16
	mul	r1, 16
	sub	r0, r1
	mul	r0, 65536
	div	x6, 16777216
	add	r0, r2
	mov	r1, x6
	div	r1, 16
	mul	r1, 16
	sub	x6, r1
	mul	x6, 16777216
	add	x6, r0
	mul	x6, 16843009
	jl	x6, x3, .LBB0_253
// %bb.252:
	mov	x7, 0
.LBB0_253:
	mov	x4, 1
	mov	r0, 1
	jl	x2, x3, .LBB0_255
// %bb.254:
	mov	r0, 0
.LBB0_255:
	mov	r2, r0
	mul	r2, 1073741824
	mul	r0, -2147483648
	mov	r1, x2
	sub	r1, r0
	div	r1, 2
	add	r1, r2
	mov	r0, x2
	call	__bit_or
	jl	rax, x3, .LBB0_257
// %bb.256:
	mov	x4, 0
.LBB0_257:
	mov	r0, x4
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 4
	mul	x4, 536870912
	add	x4, r1
	mov	r0, rax
	mov	r1, x4
	call	__bit_or
	mov	x4, 1
	mov	r1, 1
	jl	rax, x3, .LBB0_259
// %bb.258:
	mov	r1, 0
.LBB0_259:
	mov	x5, x7
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 16
	mul	r1, 134217728
	add	r1, r2
	mul	x5, -2147483648
	mov	r0, rax
	call	__bit_or
	jl	rax, x3, .LBB0_261
// %bb.260:
	mov	x4, 0
.LBB0_261:
	mov	r0, x4
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 256
	mul	x4, 8388608
	add	x4, r1
	sub	x6, x5
	mov	r0, rax
	mov	r1, x4
	call	__bit_or
	mov	x5, 1
	mov	r1, 1
	jl	rax, x3, .LBB0_263
// %bb.262:
	mov	r1, 0
.LBB0_263:
	div	x6, 16777216
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 65536
	mul	r1, 32768
	add	r1, r2
	mul	x7, 128
	mov	r0, rax
	call	__bit_or
	mov	x4, rax
	jl	x4, x3, .LBB0_265
// %bb.264:
	mov	x5, 0
.LBB0_265:
	add	x6, x7
	mov	r0, x5
	mul	r0, -2147483648
	mov	r1, x4
	sub	r1, r0
	div	r1, 2
	mul	x5, 1073741824
	add	x5, r1
	mov	r1, 1431655765
	mov	x7, 64
	mov	r0, x5
	call	__bit_and
	sub	x4, rax
	mov	x9, 1
	mov	r0, 1
	jl	x4, x3, .LBB0_267
// %bb.266:
	mov	r0, 0
.LBB0_267:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x4
	sub	r2, r1
	div	r2, 4
	mul	r0, 536870912
	add	r0, r2
	mov	r1, 858993459
	sub	x7, x6
	call	__bit_and
	mov	r1, 858993459
	mov	x5, rax
	mov	r0, x4
	call	__bit_and
	add	rax, x5
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
	jl	r0, x3, .LBB0_269
// %bb.268:
	mov	x9, 0
.LBB0_269:
	mov	r1, x9
	mul	r1, -2147483648
	sub	r0, r1
	div	r0, 16777216
	mul	x9, 128
	add	x9, r0
	add	x9, x7
	mov	x5, 32
	mov	r1, 32
	sub	r1, x9
	mov	x6, 1
	mov	r2, 1
	jne	x2, x3, .LBB0_271
// %bb.270:
	mov	r2, 0
.LBB0_271:
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	x7, rax
	mov	x9, x7
add	x9, -8
	jl	x9, x3, .LBB0_273
// %bb.272:
	mov	x6, 0
.LBB0_273:
	mov	r0, x6
	mul	r0, -2147483648
	mov	r1, x9
	sub	r1, r0
	div	r1, 32
	mul	x6, 67108864
	add	x6, r1
	mul	x6, 32
	mov	x4, x9
	sub	x4, x6
	mov	r1, 0
	sub	r1, x4
	mov	r0, x4
	call	__bit_or
	mov	r2, 1
	mov	r0, 1
	jl	rax, x3, .LBB0_275
// %bb.274:
	mov	r0, 0
.LBB0_275:
	mov	r1, r0
	mul	r1, -2147483648
	sub	rax, r1
	mov	x11, -2147483648
	je	rax, x11, .LBB0_277
// %bb.276:
	mov	r2, 0
.LBB0_277:
	mov	r1, 0
	sub	r1, r2
	mov	x10, 1
	mov	r2, 1
	jl	r1, x3, .LBB0_279
// %bb.278:
	mov	r2, 0
.LBB0_279:
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
	sub	x5, x4
	mov	x6, 0
	mov	r0, x5
	div	r0, 32
	mul	r0, 32
	sub	x5, r0
	sub	x6, r1
	mov	r0, x1
	mov	r1, x5
	call	__bit_shr
	mov	r0, rax
	mov	r1, x6
	call	__bit_and
	mov	x5, rax
	mov	r0, x2
	mov	r1, x4
	call	__bit_shl
	mov	r0, rax
	mov	r1, x5
	call	__bit_or
add	x7, -40
	jl	x7, x3, .LBB0_281
// %bb.280:
	mov	x10, 0
.LBB0_281:
	mov	r0, x10
	mul	r0, -2147483648
	sub	x7, r0
	mov	r0, 1
	mov	r2, 1
	je	x7, x11, .LBB0_283
// %bb.282:
	mov	r2, 0
.LBB0_283:
	mov	r1, 0
	sub	r1, r2
	jl	r1, x3, .LBB0_285
// %bb.284:
	mov	r0, 0
.LBB0_285:
	mov	r2, r0
	mul	r2, -2147483648
	mov	r3, r1
	sub	r3, r2
	div	r3, 2
	mul	r0, 1073741824
	add	r0, r3
	mul	r0, 2
	sub	r1, r0
	add	r1, x10
	sub	x3, r1
	mov	r0, rax
	mov	r1, x3
	call	__bit_and
	mov	x5, rax
	mov	r0, x1
	mov	r1, x4
	call	__bit_shl
	mov	r1, -1
	sub	r1, x3
	mov	x1, rax
	mov	r0, x1
	call	__bit_and
	mov	x2, rax
	add	x2, x5
	mov	r0, x1
	mov	r1, x3
	call	__bit_and
	mov	x1, rax
	sub	x0, x9
	jmp	.LBB0_300
.LBB0_286:
	mov	r0, x3
	mov	r1, x4
	mov	r2, r4
	mov	r3, x9
	call	__adddi3
	mov	x1, rax
	mov	x2, t0
	mov	r1, 0
	mov	r0, 1
	jl	x2, r1, .LBB0_288
// %bb.287:
	mov	r0, 0
.LBB0_288:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x2
	sub	r2, r1
	div	r2, 16777216
	mul	r0, 128
	add	r0, r2
	mov	r1, r0
	div	r1, 2
	mul	r1, 2
	sub	r0, r1
	mul	r0, 16777216
	jz	r0, .LBB0_296
	jmp	.LBB0_289
.LBB0_289:
	mov	r1, 0
	mov	r2, 1
	mov	r0, 1
	jl	x2, r1, .LBB0_291
// %bb.290:
	mov	r0, 0
.LBB0_291:
	mov	r3, r0
	mul	r3, -2147483648
	mov	x4, x2
	sub	x4, r3
	jl	x1, r1, .LBB0_293
// %bb.292:
	mov	r2, 0
.LBB0_293:
	mul	r0, 1073741824
	div	x4, 2
	mov	r3, r2
	mul	r3, 1073741824
	mul	r2, -2147483648
	sub	x1, r2
	div	x1, 2
	add	x1, r3
	mul	x2, -2147483648
	add	x2, x1
	mov	r2, 1
	jl	x3, r1, .LBB0_295
// %bb.294:
	mov	r2, 0
.LBB0_295:
	mov	r1, r2
	mul	r1, 1073741824
	mul	r2, -2147483648
	mov	r3, x3
	sub	r3, r2
	div	r3, 2
	add	r3, r1
	mul	r3, 2
	sub	x3, r3
	add	x4, r0
	mov	r0, x2
	mov	r1, x3
	call	__bit_or
	mov	x1, rax
add	x0, 1
	mov	x2, x4
.LBB0_296:
	mov	r0, 2047
	jl	x0, r0, .LBB0_300
	jmp	.LBB0_297
.LBB0_297:
	mov	rax, 0
	mov	r0, 1
	jl	x8, rax, .LBB0_299
// %bb.298:
	mov	r0, 0
.LBB0_299:
	mov	r1, r0
	mul	r1, 2048
	mul	r0, -2147483648
	mov	r2, x8
	sub	r2, r0
	div	r2, 1048576
	add	r2, r1
	mov	r0, r2
	div	r0, 2048
	mul	r0, 2048
	sub	r2, r0
	mul	r2, 1048576
	sub	x8, r2
add	x8, 2146435072
	mov	t0, x8
	jmp	.LBB0_366
.LBB0_300:
	mov	x11, 0
	jg	x0, x11, .LBB0_334
	jmp	.LBB0_301
.LBB0_301:
	mov	x3, 1
	mov	x6, x0
add	x6, 63
	mov	r0, 1
	jl	x6, x11, .LBB0_303
// %bb.302:
	mov	r0, 0
.LBB0_303:
	mov	r1, r0
	mul	r1, 67108864
	mul	r0, -2147483648
	mov	r2, x6
	sub	r2, r0
	div	r2, 32
	add	r2, r1
	mul	r2, 32
	sub	x6, r2
	mov	r1, 0
	sub	r1, x6
	mov	r0, x6
	call	__bit_or
	mov	r0, 1
	jl	rax, x11, .LBB0_305
// %bb.304:
	mov	r0, 0
.LBB0_305:
	mov	r1, r0
	mul	r1, -2147483648
	sub	rax, r1
	mov	x12, -2147483648
	mov	r1, 1
	mov	r3, 1
	je	rax, x12, .LBB0_307
// %bb.306:
	mov	r3, 0
.LBB0_307:
	mov	r2, 0
	sub	r2, r3
	jl	r2, x11, .LBB0_309
// %bb.308:
	mov	r1, 0
.LBB0_309:
	mov	r3, r1
	mul	r3, -2147483648
	mov	r4, r2
	sub	r4, r3
	div	r4, 2
	mul	r1, 1073741824
	add	r1, r4
	mul	r1, 2
	sub	r2, r1
	add	r2, r0
	mov	x4, 0
	mov	r1, 32
	sub	r1, x6
	sub	x4, r2
	mov	r0, r1
	div	r0, 32
	mul	r0, 32
	sub	r1, r0
	mov	x5, 32
	mov	r0, x1
	call	__bit_shr
	mov	r0, rax
	mov	r1, x4
	call	__bit_and
	mov	x4, rax
	mov	r0, x2
	mov	r1, x6
	call	__bit_shl
	mov	r0, rax
	mov	r1, x4
	call	__bit_or
	mov	r1, x0
add	r1, 31
	mov	r2, 1
	mov	r0, 1
	jl	r1, x11, .LBB0_311
// %bb.310:
	mov	r0, 0
.LBB0_311:
	mov	r3, r0
	mul	r3, -2147483648
	sub	r1, r3
	je	r1, x12, .LBB0_313
// %bb.312:
	mov	r2, 0
.LBB0_313:
	mov	r1, 0
	sub	r1, r2
	mov	x4, 1
	mov	r2, 1
	jl	r1, x11, .LBB0_315
// %bb.314:
	mov	r2, 0
.LBB0_315:
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
	mov	x7, 0
	sub	x7, r1
	sub	x3, x0
	mov	r0, rax
	mov	r1, x7
	call	__bit_and
	mov	x9, rax
	mov	r0, x1
	mov	r1, x6
	call	__bit_shl
	mov	x10, rax
	mov	r1, -1
	sub	r1, x7
	mov	x6, -1
	mov	r0, x10
	call	__bit_and
	add	x9, rax
	mov	r0, x10
	mov	r1, x7
	call	__bit_and
	mov	r0, rax
	mov	r1, x9
	call	__bit_or
	jne	rax, x11, .LBB0_317
// %bb.316:
	mov	x4, 0
.LBB0_317:
	mov	x7, 1
	mov	r0, 1
	jl	x3, x11, .LBB0_319
// %bb.318:
	mov	r0, 0
.LBB0_319:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x3
	sub	r2, r1
	div	r2, 32
	mul	r0, 67108864
	add	r0, r2
	mul	r0, 32
	sub	x3, r0
	mov	r1, 0
	sub	r1, x3
	mov	r0, x3
	call	__bit_or
	jl	rax, x11, .LBB0_321
// %bb.320:
	mov	x7, 0
.LBB0_321:
	mov	r0, x7
	mul	r0, -2147483648
	sub	rax, r0
	mov	r1, 1
	mov	r2, 1
	je	rax, x12, .LBB0_323
// %bb.322:
	mov	r2, 0
.LBB0_323:
	mov	r0, 0
	sub	r0, r2
	jl	r0, x11, .LBB0_325
// %bb.324:
	mov	r1, 0
.LBB0_325:
	mov	r2, r1
	mul	r2, -2147483648
	mov	r3, r0
	sub	r3, r2
	div	r3, 2
	mul	r1, 1073741824
	add	r1, r3
	mul	r1, 2
	sub	r0, r1
	add	r0, x7
	sub	x5, x3
	mov	x7, 0
	mov	r1, x5
	div	r1, 32
	mul	r1, 32
	sub	x5, r1
	sub	x7, r0
	mov	r0, x2
	mov	r1, x5
	call	__bit_shl
	mov	r0, rax
	mov	r1, x7
	call	__bit_and
	mov	x5, rax
	mov	r0, x1
	mov	r1, x3
	call	__bit_shr
	mov	r0, rax
	mov	r1, x5
	call	__bit_or
	mov	r1, -31
	sub	r1, x0
	mov	r2, 1
	mov	r0, 1
	jl	r1, x11, .LBB0_327
// %bb.326:
	mov	r0, 0
.LBB0_327:
	mov	r3, r0
	mul	r3, -2147483648
	sub	r1, r3
	je	r1, x12, .LBB0_329
// %bb.328:
	mov	r2, 0
.LBB0_329:
	mov	r1, 0
	sub	r1, r2
	mov	x7, 1
	mov	r2, 1
	jl	r1, x11, .LBB0_331
// %bb.330:
	mov	r2, 0
.LBB0_331:
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
	mov	x1, 0
	sub	x1, r1
	mov	r0, rax
	mov	r1, x1
	call	__bit_and
	mov	x5, rax
	mov	r0, x2
	mov	r1, x3
	call	__bit_shr
	sub	x6, x1
	mov	x2, rax
	mov	r0, x2
	mov	r1, x6
	call	__bit_and
	mov	x0, rax
	add	x0, x5
	mov	r0, x2
	mov	r1, x1
	call	__bit_and
	mov	x2, rax
	jl	x4, x11, .LBB0_333
// %bb.332:
	mov	x7, 0
.LBB0_333:
	mov	r0, x7
	mul	r0, -2147483648
	mov	r1, x4
	sub	r1, r0
	div	r1, 2
	mul	x7, 1073741824
	add	x7, r1
	mul	x7, 2
	sub	x4, x7
	mov	r0, x0
	mov	r1, x4
	call	__bit_or
	mov	x1, rax
	mov	x0, 0
.LBB0_334:
	mov	r0, 1
	mov	r1, 1
	jl	x1, x11, .LBB0_336
// %bb.335:
	mov	r1, 0
.LBB0_336:
	mov	r2, r1
	mul	r2, 268435456
	mul	r1, -2147483648
	mov	r3, x1
	sub	r3, r1
	div	r3, 8
	add	r3, r2
	mov	x3, x2
	mul	x3, 536870912
	add	x3, r3
	mov	r1, r3
	mul	r1, 8
	jl	x2, x11, .LBB0_338
// %bb.337:
	mov	r0, 0
.LBB0_338:
	mov	r2, r0
	mul	r2, 268435456
	mul	r0, -2147483648
	sub	x2, r0
	div	x2, 8
	add	x2, r2
	mov	r0, x2
	div	r0, 1048576
	mul	r0, 1048576
	sub	x2, r0
	mul	x0, 1048576
	add	x0, x2
	sub	x1, r1
	mov	r0, x0
	mov	r1, x8
	call	__bit_or
	mov	x0, rax
	call	__fe_getround
	mov	r0, 2
	mov	r1, rax
	je	r1, r0, .LBB0_356
	jmp	.LBB0_339
.LBB0_339:
	mov	r0, 1
	je	r1, r0, .LBB0_349
	jmp	.LBB0_340
.LBB0_340:
	mov	rax, x3
	mov	t0, x0
	jnz	r1, .LBB0_363
	jmp	.LBB0_341
.LBB0_341:
	mov	x2, 4
	mov	r2, 1
	jg	x1, x2, .LBB0_343
// %bb.342:
	mov	r2, 0
.LBB0_343:
	mov	r1, 0
	jl	r2, r1, .LBB0_345
// %bb.344:
	mov	r0, 0
.LBB0_345:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r3, r2
	sub	r3, r1
	div	r3, 2
	mul	r0, 1073741824
	add	r0, r3
	mul	r0, 2
	sub	r2, r0
	mov	r3, 0
	mov	r0, x3
	mov	r1, x0
	call	__adddi3
	jne	x1, x2, .LBB0_363
	jmp	.LBB0_346
.LBB0_346:
	mov	r1, 0
	mov	r0, 1
	jl	x3, r1, .LBB0_348
// %bb.347:
	mov	r0, 0
.LBB0_348:
	mov	r1, r0
	mul	r1, 1073741824
	mul	r0, -2147483648
	mov	r3, x3
	sub	r3, r0
	div	r3, 2
	add	r3, r1
	mul	r3, 2
	mov	r2, x3
	sub	r2, r3
	mov	r3, 0
	mov	r0, x3
	mov	r1, x0
	call	__adddi3
	jmp	.LBB0_364
.LBB0_349:
	mov	x4, 0
	jne	x8, x4, .LBB0_351
// %bb.350:
	mov	r0, 0
.LBB0_351:
	mov	x2, 1
	mov	r1, 1
	jne	x1, x4, .LBB0_353
// %bb.352:
	mov	r1, 0
.LBB0_353:
	call	__bit_and
	jl	rax, x4, .LBB0_355
// %bb.354:
	mov	x2, 0
.LBB0_355:
	mov	r0, x2
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 2
	mul	x2, 1073741824
	add	x2, r1
	mul	x2, 2
	sub	rax, x2
	mov	r3, 0
	mov	r0, x3
	mov	r1, x0
	mov	r2, rax
	call	__adddi3
	jmp	.LBB0_363
.LBB0_356:
	mov	x2, 0
	mov	r1, 1
	mov	r0, 1
	je	x8, x2, .LBB0_358
// %bb.357:
	mov	r0, 0
.LBB0_358:
	jne	x1, x2, .LBB0_360
// %bb.359:
	mov	r1, 0
.LBB0_360:
	call	__bit_and
	mov	r0, 1
	jl	rax, x2, .LBB0_362
// %bb.361:
	mov	r0, 0
.LBB0_362:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, rax
	sub	r2, r1
	div	r2, 2
	mul	r0, 1073741824
	add	r0, r2
	mul	r0, 2
	sub	rax, r0
	mov	r3, 0
	mov	r0, x3
	mov	r1, x0
	mov	r2, rax
	call	__adddi3
.LBB0_363:
	jz	x1, .LBB0_365
	jmp	.LBB0_364
.LBB0_364:
	mov	x0, rax
	mov	x1, t0
	call	__fe_raise_inexact
	mov	t0, x1
	mov	rax, x0
.LBB0_365:
.LBB0_366:
	mov	x15, [rsp+8]
	mov	x14, [rsp+12]
	mov	x13, [rsp+16]
	mov	x12, [rsp+20]
	mov	x11, [rsp+24]
	mov	x10, [rsp+28]
	mov	x9, [rsp+32]
	mov	x8, [rsp+36]
	mov	x7, [rsp+40]
	mov	x6, [rsp+44]
	mov	x5, [rsp+48]
	mov	x4, [rsp+52]
	mov	x3, [rsp+56]
	mov	x2, [rsp+60]
	mov	x1, [rsp+64]
	mov	x0, [rsp+68]
add	rsp, 72
	ret
// -- End function
