#include "_ll_std"

// -- Begin function __divdf3
__divdf3:                               // @__divdf3
// %bb.0:
sub	rsp, 84
	mov	[rsp+80], x0
	mov	[rsp+76], x1
	mov	[rsp+72], x2
	mov	[rsp+68], x3
	mov	[rsp+64], x4
	mov	[rsp+60], x5
	mov	[rsp+56], x6
	mov	[rsp+52], x7
	mov	[rsp+48], x8
	mov	[rsp+44], x9
	mov	[rsp+40], x10
	mov	[rsp+36], x11
	mov	[rsp+32], x12
	mov	[rsp+28], x13
	mov	[rsp+24], x14
	mov	[rsp+20], x15
	mov	x6, r3
	mov	x10, r2
	mov	x5, r1
	mov	x14, r0
	mov	x15, 0
	mov	r0, 1
	mov	r1, 1
	jl	x5, x15, .LBB0_2
// %bb.1:
	mov	r1, 0
.LBB0_2:
	mov	r2, r1
	mul	r2, 2048
	mul	r1, -2147483648
	mov	x1, x5
	sub	x1, r1
	div	x1, 1048576
	add	x1, r2
	jl	x6, x15, .LBB0_4
// %bb.3:
	mov	r0, 0
.LBB0_4:
	mov	x0, x1
	div	x0, 2048
	mov	r1, r0
	mul	r1, 2048
	mul	r0, -2147483648
	mov	x3, x6
	sub	x3, r0
	div	x3, 1048576
	add	x3, r1
	mov	r0, x6
	mov	r1, x5
	call	__bit_xor
	mov	r2, 1
	mov	r0, 1
	jl	rax, x15, .LBB0_6
// %bb.5:
	mov	r0, 0
.LBB0_6:
	mov	r1, x3
	div	r1, 2048
	mov	r3, r0
	mul	r3, -2147483648
	sub	rax, r3
	mov	r3, -2147483648
	mul	x0, 2048
	je	rax, r3, .LBB0_8
// %bb.7:
	mov	r2, 0
.LBB0_8:
	mul	r1, 2048
	mov	x11, x1
	sub	x11, x0
	mov	x0, 0
	sub	x0, r2
	mov	r2, 1
	jl	x0, x15, .LBB0_10
// %bb.9:
	mov	r2, 0
.LBB0_10:
	mov	x4, x3
	sub	x4, r1
	mov	r1, r2
	mul	r1, -2147483648
	mov	r3, x0
	sub	r3, r1
	div	r3, 2
	mul	r2, 1073741824
	add	r2, r3
	mul	r2, 2
	sub	x0, r2
	add	x0, r0
	mul	x0, -2147483648
	mul	x1, 1048576
	mov	r0, x5
	sub	r0, x1
	mov	[rsp+16], r0
	mul	x3, 1048576
	mov	x13, x6
	mov	r0, x11
add	r0, 2147481601
	mov	r1, 2147481602
	sub	x13, x3
	jl	r0, r1, .LBB0_12
	jmp	.LBB0_11
.LBB0_11:
	mov	r0, x4
add	r0, -2047
add	r0, -2147483648
	mov	r1, 2147481601
	jg	r0, r1, .LBB0_165
	jmp	.LBB0_12
.LBB0_12:
	mov	r2, 0
	mov	r4, 1
	mov	r3, 1
	jl	x5, r2, .LBB0_14
// %bb.13:
	mov	r3, 0
.LBB0_14:
	mov	r0, r3
	mul	r0, -2147483648
	mov	r5, x5
	sub	r5, r0
	mov	r1, -2147483648
	je	r5, r1, .LBB0_16
// %bb.15:
	mov	r4, 0
.LBB0_16:
	mov	r0, 0
	sub	r0, r4
	mov	x1, 1
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
	jl	x6, r2, .LBB0_20
// %bb.19:
	mov	x1, 0
.LBB0_20:
	mul	r0, -2147483648
	mov	r3, x1
	mul	r3, -2147483648
	mov	r4, x6
	sub	r4, r3
	mov	x3, 1
	mov	r3, 1
	je	r4, r1, .LBB0_22
// %bb.21:
	mov	r3, 0
.LBB0_22:
	mov	x7, x5
	mov	x8, 0
	sub	x8, r3
	sub	x7, r0
	jl	x8, r2, .LBB0_24
// %bb.23:
	mov	x3, 0
.LBB0_24:
	mov	r0, 2146435072
	mov	x2, 1
	mov	r1, 1
	je	x7, r0, .LBB0_26
// %bb.25:
	mov	r1, 0
.LBB0_26:
	jl	x7, r0, .LBB0_28
// %bb.27:
	mov	x2, 0
.LBB0_28:
	mov	r0, 0
	sub	r0, r1
	mov	r1, 1
	je	x14, r2, .LBB0_30
// %bb.29:
	mov	r1, 0
.LBB0_30:
	sub	r1, x2
	call	__bit_and
	add	rax, x2
	jnz	rax, .LBB0_34
	jmp	.LBB0_31
.LBB0_31:
	mov	r1, 0
	mov	r0, 1
	jl	x5, r1, .LBB0_33
// %bb.32:
	mov	r0, 0
.LBB0_33:
	mov	r1, r0
	mul	r1, 4096
	mul	r0, -2147483648
	mov	r2, x5
	sub	r2, r0
	div	r2, 524288
	add	r2, r1
	mov	r0, r2
	div	r0, 2
	mul	r0, 2
	sub	r2, r0
	mul	r2, 524288
	sub	x5, r2
add	x5, 524288
	jmp	.LBB0_292
.LBB0_34:
	mov	r0, x3
	mul	r0, -2147483648
	mov	r1, x8
	sub	r1, r0
	div	r1, 2
	mul	x3, 1073741824
	add	x3, r1
	mul	x3, 2
	sub	x8, x3
	add	x8, x1
	mul	x8, -2147483648
	mov	x5, x6
	sub	x5, x8
	mov	r0, 0
	mov	x1, 1
	mov	r1, 1
	je	x10, r0, .LBB0_36
// %bb.35:
	mov	r1, 0
.LBB0_36:
	mov	r2, 2146435072
	jl	x5, r2, .LBB0_38
// %bb.37:
	mov	x1, 0
.LBB0_38:
	sub	r1, x1
	mov	r3, 1
	je	x5, r2, .LBB0_40
// %bb.39:
	mov	r3, 0
.LBB0_40:
	sub	r0, r3
	call	__bit_and
	add	x1, rax
	jnz	x1, .LBB0_44
	jmp	.LBB0_41
.LBB0_41:
	mov	r1, 0
	mov	r0, 1
	jl	x6, r1, .LBB0_43
// %bb.42:
	mov	r0, 0
.LBB0_43:
	mov	r1, r0
	mul	r1, 4096
	mul	r0, -2147483648
	mov	r2, x6
	sub	r2, r0
	div	r2, 524288
	add	r2, r1
	mov	r0, r2
	div	r0, 2
	mul	r0, 2
	sub	r2, r0
	mul	r2, 524288
	sub	x6, r2
add	x6, 524288
	mov	x14, x10
	mov	x5, x6
	jmp	.LBB0_292
.LBB0_44:
	mov	r1, 0
	mov	r0, 1
	jl	x7, r1, .LBB0_46
// %bb.45:
	mov	r0, 0
.LBB0_46:
	mov	r1, r0
	mul	r1, 2048
	mul	r0, -2147483648
	mov	r2, x7
	sub	r2, r0
	div	r2, 1048576
	add	r2, r1
	mov	r0, r2
	div	r0, 2048
	mul	r0, 2048
	sub	r2, r0
	mul	r2, 1048576
	add	r2, r2
	mov	r1, x7
	sub	r1, r2
add	r1, 2146435072
	mov	r0, x14
	call	__bit_or
	jnz	rax, .LBB0_53
	jmp	.LBB0_47
.LBB0_47:
	mov	x14, 0
	mov	r0, 1
	jl	x5, x14, .LBB0_49
// %bb.48:
	mov	r0, 0
.LBB0_49:
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
	sub	x5, r2
add	x5, 2146435072
	mov	r0, x10
	mov	r1, x5
	call	__bit_or
	mov	x5, 2146959360
	jz	rax, .LBB0_292
	jmp	.LBB0_50
.LBB0_50:
	mov	r0, 1
	jl	x0, x14, .LBB0_52
// %bb.51:
	mov	r0, 0
.LBB0_52:
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
	sub	x0, r2
add	x0, 2146435072
	mov	x5, x0
	jmp	.LBB0_292
.LBB0_53:
	mov	r1, 0
	mov	r0, 1
	jl	x5, r1, .LBB0_55
// %bb.54:
	mov	r0, 0
.LBB0_55:
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
	mov	r0, x10
	call	__bit_or
	jnz	rax, .LBB0_57
	jmp	.LBB0_56
.LBB0_56:
	mov	x14, 0
	mov	x5, x0
	jmp	.LBB0_292
.LBB0_57:
	mov	r0, x14
	mov	r1, x7
	call	__bit_or
	jnz	rax, .LBB0_61
	jmp	.LBB0_58
.LBB0_58:
	mov	r0, x10
	mov	r1, x5
	call	__bit_or
	mov	x14, 0
	mov	r2, 1
	je	rax, x14, .LBB0_60
// %bb.59:
	mov	r2, 0
.LBB0_60:
	mov	r1, 2146959360
	sub	r1, x0
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	mov	x5, rax
	add	x5, x0
	jmp	.LBB0_292
.LBB0_61:
	mov	r0, x10
	mov	r1, x5
	call	__bit_or
	jnz	rax, .LBB0_65
	jmp	.LBB0_62
.LBB0_62:
	mov	x14, 0
	mov	r0, 1
	jl	x0, x14, .LBB0_64
// %bb.63:
	mov	r0, 0
.LBB0_64:
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
	sub	x0, r2
add	x0, 2146435072
	mov	x5, x0
	jmp	.LBB0_292
.LBB0_65:
	mov	r0, 1048575
	jg	x7, r0, .LBB0_115
	jmp	.LBB0_66
.LBB0_66:
	mov	x6, 0
	mov	x7, 1
	mov	r0, 1
	jl	x14, x6, .LBB0_68
// %bb.67:
	mov	r0, 0
.LBB0_68:
	mov	r2, r0
	mul	r2, 1073741824
	mul	r0, -2147483648
	mov	r1, x14
	sub	r1, r0
	div	r1, 2
	add	r1, r2
	mov	r0, x14
	call	__bit_or
	jl	rax, x6, .LBB0_70
// %bb.69:
	mov	x7, 0
.LBB0_70:
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
	jl	rax, x6, .LBB0_72
// %bb.71:
	mov	r1, 0
.LBB0_72:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 16
	mul	r1, 134217728
	add	r1, r2
	mov	r0, rax
	call	__bit_or
	jl	rax, x6, .LBB0_74
// %bb.73:
	mov	x7, 0
.LBB0_74:
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
	jl	rax, x6, .LBB0_76
// %bb.75:
	mov	r1, 0
.LBB0_76:
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
	jl	x7, x6, .LBB0_78
// %bb.77:
	mov	x8, 0
.LBB0_78:
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
	mov	x1, 1
	mov	r0, 1
	jl	x7, x6, .LBB0_80
// %bb.79:
	mov	r0, 0
.LBB0_80:
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
	jl	x9, x6, .LBB0_82
// %bb.81:
	mov	x1, 0
.LBB0_82:
	mov	x7, 1
	mov	r3, 1
	mov	r0, [rsp+16]
	jl	r0, x6, .LBB0_84
// %bb.83:
	mov	r3, 0
.LBB0_84:
	mov	r2, r3
	mul	r2, 1073741824
	mul	r3, -2147483648
	mov	r0, [rsp+16]
	mov	r1, r0
	sub	r1, r3
	div	r1, 2
	add	r1, r2
	call	__bit_or
	jl	rax, x6, .LBB0_86
// %bb.85:
	mov	x7, 0
.LBB0_86:
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
	jl	rax, x6, .LBB0_88
// %bb.87:
	mov	r1, 0
.LBB0_88:
	mov	x2, x1
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 16
	mul	r1, 134217728
	add	r1, r2
	mul	x2, -2147483648
	mov	r0, rax
	call	__bit_or
	jl	rax, x6, .LBB0_90
// %bb.89:
	mov	x7, 0
.LBB0_90:
	mov	r0, x7
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 256
	mul	x7, 8388608
	add	x7, r1
	sub	x9, x2
	mov	r0, rax
	mov	r1, x7
	call	__bit_or
	mov	x8, 1
	mov	r1, 1
	jl	rax, x6, .LBB0_92
// %bb.91:
	mov	r1, 0
.LBB0_92:
	div	x9, 16777216
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 65536
	mul	r1, 32768
	add	r1, r2
	mul	x1, 128
	mov	r0, rax
	call	__bit_or
	mov	x7, rax
	jl	x7, x6, .LBB0_94
// %bb.93:
	mov	x8, 0
.LBB0_94:
	add	x9, x1
	mov	r0, x8
	mul	r0, -2147483648
	mov	r1, x7
	sub	r1, r0
	div	r1, 2
	mul	x8, 1073741824
	add	x8, r1
	mov	r1, 1431655765
	mov	x1, 64
	mov	r0, x8
	call	__bit_and
	sub	x7, rax
	mov	x3, 1
	mov	r0, 1
	jl	x7, x6, .LBB0_96
// %bb.95:
	mov	r0, 0
.LBB0_96:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x7
	sub	r2, r1
	div	r2, 4
	mul	r0, 536870912
	add	r0, r2
	mov	r1, 858993459
	sub	x1, x9
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
	jl	r0, x6, .LBB0_98
// %bb.97:
	mov	x3, 0
.LBB0_98:
	mov	r1, x3
	mul	r1, -2147483648
	sub	r0, r1
	div	r0, 16777216
	mul	x3, 128
	add	x3, r0
	add	x3, x1
	mov	x8, 32
	mov	r1, 32
	sub	r1, x3
	mov	x2, 1
	mov	r2, 1
	mov	r0, [rsp+16]
	jne	r0, x6, .LBB0_100
// %bb.99:
	mov	r2, 0
.LBB0_100:
	mov	x12, x4
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	x1, rax
	mov	x7, x1
add	x7, -11
	jl	x7, x6, .LBB0_102
// %bb.101:
	mov	x2, 0
.LBB0_102:
	mov	x4, x11
	mov	r0, x2
	mul	r0, -2147483648
	mov	r1, x7
	sub	r1, r0
	div	r1, 32
	mul	x2, 67108864
	add	x2, r1
	mul	x2, 32
	sub	x7, x2
	mov	r1, 0
	sub	r1, x7
	mov	r0, x7
	call	__bit_or
	mov	r2, 1
	mov	r0, 1
	jl	rax, x6, .LBB0_104
// %bb.103:
	mov	r0, 0
.LBB0_104:
	mov	r1, r0
	mul	r1, -2147483648
	sub	rax, r1
	mov	x11, -2147483648
	je	rax, x11, .LBB0_106
// %bb.105:
	mov	r2, 0
.LBB0_106:
	mov	r1, 0
	sub	r1, r2
	mov	x3, 1
	mov	r2, 1
	jl	r1, x6, .LBB0_108
// %bb.107:
	mov	r2, 0
.LBB0_108:
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
	mov	r0, x14
	mov	r1, x8
	call	__bit_shr
	mov	r0, rax
	mov	r1, x9
	call	__bit_and
	mov	x8, rax
	mov	r0, [rsp+16]
	mov	r1, x7
	call	__bit_shl
	mov	r0, rax
	mov	r1, x8
	call	__bit_or
	mov	r1, x1
add	r1, -43
	jl	r1, x6, .LBB0_110
// %bb.109:
	mov	x3, 0
.LBB0_110:
	mov	r0, x3
	mul	r0, -2147483648
	sub	r1, r0
	mov	r0, 1
	mov	r2, 1
	je	r1, x11, .LBB0_112
// %bb.111:
	mov	r2, 0
.LBB0_112:
	mov	r1, 0
	sub	r1, r2
	jl	r1, x6, .LBB0_114
// %bb.113:
	mov	r0, 0
.LBB0_114:
	mov	r2, r0
	mul	r2, -2147483648
	mov	r3, r1
	sub	r3, r2
	div	r3, 2
	mul	r0, 1073741824
	add	r0, r3
	mul	r0, 2
	sub	r1, r0
	add	r1, x3
	sub	x6, r1
	mov	r0, rax
	mov	r1, x6
	call	__bit_and
	mov	x8, rax
	mov	r0, x14
	mov	r1, x7
	call	__bit_shl
	mov	r1, -1
	sub	r1, x6
	mov	x3, rax
	mov	r0, x3
	call	__bit_and
	add	rax, x8
	mov	[rsp+16], rax
	mov	r0, x3
	mov	r1, x6
	call	__bit_and
	mov	x14, rax
	mov	x15, 12
	sub	x15, x1
	mov	x11, x4
	mov	x4, x12
	mov	r0, 1048575
.LBB0_115:
	jg	x5, r0, .LBB0_165
	jmp	.LBB0_116
.LBB0_116:
	mov	x5, 0
	mov	x6, 1
	mov	r0, 1
	jl	x10, x5, .LBB0_118
// %bb.117:
	mov	r0, 0
.LBB0_118:
	mov	r2, r0
	mul	r2, 1073741824
	mul	r0, -2147483648
	mov	r1, x10
	sub	r1, r0
	div	r1, 2
	add	r1, r2
	mov	r0, x10
	call	__bit_or
	jl	rax, x5, .LBB0_120
// %bb.119:
	mov	x6, 0
.LBB0_120:
	mov	r0, x6
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 4
	mul	x6, 536870912
	add	x6, r1
	mov	r0, rax
	mov	r1, x6
	call	__bit_or
	mov	x6, 1
	mov	r1, 1
	jl	rax, x5, .LBB0_122
// %bb.121:
	mov	r1, 0
.LBB0_122:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 16
	mul	r1, 134217728
	add	r1, r2
	mov	r0, rax
	call	__bit_or
	jl	rax, x5, .LBB0_124
// %bb.123:
	mov	x6, 0
.LBB0_124:
	mov	r0, x6
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 256
	mul	x6, 8388608
	add	x6, r1
	mov	r0, rax
	mov	r1, x6
	call	__bit_or
	mov	x7, 1
	mov	r1, 1
	jl	rax, x5, .LBB0_126
// %bb.125:
	mov	r1, 0
.LBB0_126:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 65536
	mul	r1, 32768
	add	r1, r2
	mov	r0, rax
	call	__bit_or
	mov	x6, rax
	jl	x6, x5, .LBB0_128
// %bb.127:
	mov	x7, 0
.LBB0_128:
	mov	r0, x7
	mul	r0, -2147483648
	mov	r1, x6
	sub	r1, r0
	div	r1, 2
	mul	x7, 1073741824
	add	x7, r1
	mov	r1, 1431655765
	mov	r0, x7
	call	__bit_and
	sub	x6, rax
	mov	x8, 1
	mov	r0, 1
	jl	x6, x5, .LBB0_130
// %bb.129:
	mov	r0, 0
.LBB0_130:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x6
	sub	r2, r1
	div	r2, 4
	mul	r0, 536870912
	add	r0, r2
	mov	r1, 858993459
	call	__bit_and
	mov	r1, 858993459
	mov	x7, rax
	mov	r0, x6
	call	__bit_and
	add	rax, x7
	mov	x1, rax
	div	x1, 16
	add	x1, rax
	mov	r0, x1
	div	r0, 16
	mul	r0, 16
	mov	r1, x1
	mov	r2, x1
	div	r2, 256
	sub	r1, r0
	mov	r0, r2
	div	r0, 16
	mul	r0, 16
	sub	r2, r0
	mul	r2, 256
	mov	r0, x1
	div	r0, 65536
	add	r2, r1
	mov	r1, r0
	div	r1, 16
	mul	r1, 16
	sub	r0, r1
	mul	r0, 65536
	div	x1, 16777216
	add	r0, r2
	mov	r1, x1
	div	r1, 16
	mul	r1, 16
	sub	x1, r1
	mul	x1, 16777216
	add	x1, r0
	mul	x1, 16843009
	jl	x1, x5, .LBB0_132
// %bb.131:
	mov	x8, 0
.LBB0_132:
	mov	x6, 1
	mov	r0, 1
	jl	x13, x5, .LBB0_134
// %bb.133:
	mov	r0, 0
.LBB0_134:
	mov	r2, r0
	mul	r2, 1073741824
	mul	r0, -2147483648
	mov	r1, x13
	sub	r1, r0
	div	r1, 2
	add	r1, r2
	mov	r0, x13
	call	__bit_or
	jl	rax, x5, .LBB0_136
// %bb.135:
	mov	x6, 0
.LBB0_136:
	mov	r0, x6
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 4
	mul	x6, 536870912
	add	x6, r1
	mov	r0, rax
	mov	r1, x6
	call	__bit_or
	mov	x6, 1
	mov	r1, 1
	jl	rax, x5, .LBB0_138
// %bb.137:
	mov	r1, 0
.LBB0_138:
	mov	x2, x8
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 16
	mul	r1, 134217728
	add	r1, r2
	mul	x2, -2147483648
	mov	r0, rax
	call	__bit_or
	jl	rax, x5, .LBB0_140
// %bb.139:
	mov	x6, 0
.LBB0_140:
	mov	r0, x6
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 256
	mul	x6, 8388608
	add	x6, r1
	sub	x1, x2
	mov	r0, rax
	mov	r1, x6
	call	__bit_or
	mov	x7, 1
	mov	r1, 1
	jl	rax, x5, .LBB0_142
// %bb.141:
	mov	r1, 0
.LBB0_142:
	div	x1, 16777216
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 65536
	mul	r1, 32768
	add	r1, r2
	mul	x8, 128
	mov	r0, rax
	call	__bit_or
	mov	x6, rax
	jl	x6, x5, .LBB0_144
// %bb.143:
	mov	x7, 0
.LBB0_144:
	add	x1, x8
	mov	r0, x7
	mul	r0, -2147483648
	mov	r1, x6
	sub	r1, r0
	div	r1, 2
	mul	x7, 1073741824
	add	x7, r1
	mov	r1, 1431655765
	mov	x9, 64
	mov	r0, x7
	call	__bit_and
	sub	x6, rax
	mov	x3, 1
	mov	r0, 1
	jl	x6, x5, .LBB0_146
// %bb.145:
	mov	r0, 0
.LBB0_146:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x6
	sub	r2, r1
	div	r2, 4
	mul	r0, 536870912
	add	r0, r2
	mov	r1, 858993459
	sub	x9, x1
	call	__bit_and
	mov	r1, 858993459
	mov	x7, rax
	mov	r0, x6
	call	__bit_and
	add	rax, x7
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
	jl	r0, x5, .LBB0_148
// %bb.147:
	mov	x3, 0
.LBB0_148:
	mov	r1, x3
	mul	r1, -2147483648
	sub	r0, r1
	div	r0, 16777216
	mul	x3, 128
	add	x3, r0
	add	x3, x9
	mov	x7, 32
	mov	r1, 32
	sub	r1, x3
	mov	x1, 1
	mov	r2, 1
	jne	x13, x5, .LBB0_150
// %bb.149:
	mov	r2, 0
.LBB0_150:
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	x9, rax
	mov	x6, x9
add	x6, -11
	jl	x6, x5, .LBB0_152
// %bb.151:
	mov	x1, 0
.LBB0_152:
	mov	r0, x1
	mul	r0, -2147483648
	mov	r1, x6
	sub	r1, r0
	div	r1, 32
	mul	x1, 67108864
	add	x1, r1
	mul	x1, 32
	sub	x6, x1
	mov	r1, 0
	sub	r1, x6
	mov	r0, x6
	call	__bit_or
	mov	r2, 1
	mov	r0, 1
	jl	rax, x5, .LBB0_154
// %bb.153:
	mov	r0, 0
.LBB0_154:
	mov	r1, r0
	mul	r1, -2147483648
	sub	rax, r1
	mov	x3, -2147483648
	je	rax, x3, .LBB0_156
// %bb.155:
	mov	r2, 0
.LBB0_156:
	mov	r1, 0
	sub	r1, r2
	mov	x1, 1
	mov	r2, 1
	jl	r1, x5, .LBB0_158
// %bb.157:
	mov	r2, 0
.LBB0_158:
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
	sub	x7, x6
	mov	x8, 0
	mov	r0, x7
	div	r0, 32
	mul	r0, 32
	sub	x7, r0
	sub	x8, r1
	mov	r0, x10
	mov	r1, x7
	call	__bit_shr
	mov	r0, rax
	mov	r1, x8
	call	__bit_and
	mov	x7, rax
	mov	r0, x13
	mov	r1, x6
	call	__bit_shl
	mov	r0, rax
	mov	r1, x7
	call	__bit_or
	mov	r1, x9
add	r1, -43
	jl	r1, x5, .LBB0_160
// %bb.159:
	mov	x1, 0
.LBB0_160:
	mov	r0, x1
	mul	r0, -2147483648
	sub	r1, r0
	mov	r0, 1
	mov	r2, 1
	je	r1, x3, .LBB0_162
// %bb.161:
	mov	r2, 0
.LBB0_162:
	mov	r1, 0
	sub	r1, r2
	jl	r1, x5, .LBB0_164
// %bb.163:
	mov	r0, 0
.LBB0_164:
	mov	r2, r0
	mul	r2, -2147483648
	mov	r3, r1
	sub	r3, r2
	div	r3, 2
	mul	r0, 1073741824
	add	r0, r3
	mul	r0, 2
	sub	r1, r0
	add	r1, x1
	sub	x5, r1
	mov	r0, rax
	mov	r1, x5
	call	__bit_and
	mov	x7, rax
	mov	r0, x10
	mov	r1, x6
	call	__bit_shl
	mov	r1, -1
	sub	r1, x5
	mov	x1, rax
	mov	r0, x1
	call	__bit_and
	mov	x13, rax
	add	x13, x7
	mov	r0, x1
	mov	r1, x5
	call	__bit_and
	add	x9, x15
add	x9, -12
	mov	x10, rax
	mov	x15, x9
.LBB0_165:
	mov	x1, 0
	mov	r0, 1
	mov	x12, 1
	mov	r1, [rsp+16]
	jl	r1, x1, .LBB0_167
// %bb.166:
	mov	x12, 0
.LBB0_167:
	jl	x13, x1, .LBB0_169
// %bb.168:
	mov	r0, 0
.LBB0_169:
	mov	r1, r0
	mul	r1, 2048
	mul	r0, -2147483648
	mov	r2, x13
	sub	r2, r0
	div	r2, 1048576
	add	r2, r1
	mov	r0, r2
	div	r0, 2
	mul	r0, 2
	sub	r2, r0
	mul	r2, 1048576
	sub	x13, r2
add	x13, 1048576
	mov	r0, x13
	mul	r0, 2048
	mov	x3, 1
	mov	r1, 1
	jl	x10, x1, .LBB0_171
// %bb.170:
	mov	r1, 0
.LBB0_171:
	mov	r2, r1
	mul	r2, 1024
	mul	r1, -2147483648
	mov	x5, x10
	sub	x5, r1
	div	x5, 2097152
	add	x5, r2
	add	x5, r0
	mov	x6, 1963258675
	sub	x6, x5
	mov	r1, 0
	mov	r3, 0
	mov	r0, x5
	mov	r2, x6
	call	__muldi3
	mov	r0, 0
	sub	r0, t0
	mov	r1, 0
	mov	r3, 0
	mov	r2, x6
	call	__muldi3
	mov	x6, t0
	jl	rax, x1, .LBB0_173
// %bb.172:
	mov	x3, 0
.LBB0_173:
	mov	r0, x3
	mul	r0, -2147483648
	sub	rax, r0
	mov	x9, -2147483648
	mov	r0, 1
	mov	r2, 1
	je	rax, x9, .LBB0_175
// %bb.174:
	mov	r2, 0
.LBB0_175:
	mov	r1, 0
	sub	r1, r2
	jl	r1, x1, .LBB0_177
// %bb.176:
	mov	r0, 0
.LBB0_177:
	mov	r2, r0
	mul	r2, -2147483648
	mov	r3, r1
	sub	r3, r2
	div	r3, 2
	mul	r0, 1073741824
	add	r0, r3
	mul	r0, 2
	sub	r1, r0
	add	r1, x3
	mul	x6, 2
	add	x6, r1
	mov	r1, 0
	mov	r3, 0
	mov	r0, x6
	mov	r2, x5
	call	__muldi3
	mov	r2, 0
	sub	r2, t0
	mov	r1, 0
	mov	r3, 0
	mov	r0, x6
	call	__muldi3
	mov	x6, t0
	mov	r2, 1
	mov	r0, 1
	jl	rax, x1, .LBB0_179
// %bb.178:
	mov	r0, 0
.LBB0_179:
	mov	r1, r0
	mul	r1, -2147483648
	sub	rax, r1
	je	rax, x9, .LBB0_181
// %bb.180:
	mov	r2, 0
.LBB0_181:
	mov	r1, 0
	sub	r1, r2
	mov	x3, 1
	mov	r2, 1
	jl	r1, x1, .LBB0_183
// %bb.182:
	mov	r2, 0
.LBB0_183:
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
	mul	x6, 2
	add	x6, r1
	mov	r1, 0
	mov	r3, 0
	mov	r0, x6
	mov	r2, x5
	call	__muldi3
	mov	r2, 0
	sub	r2, t0
	mov	r1, 0
	mov	r3, 0
	mov	r0, x6
	call	__muldi3
	mov	x7, t0
	jl	rax, x1, .LBB0_185
// %bb.184:
	mov	x3, 0
.LBB0_185:
	mov	r0, x3
	mul	r0, -2147483648
	sub	rax, r0
	mov	r0, 1
	mov	r2, 1
	je	rax, x9, .LBB0_187
// %bb.186:
	mov	r2, 0
.LBB0_187:
	mov	[rsp+12], x14
	mov	[rsp+4], x13
	mov	[rsp+8], x10
	mov	r1, 0
	sub	r1, r2
	mul	x10, 2048
	jl	r1, x1, .LBB0_189
// %bb.188:
	mov	r0, 0
.LBB0_189:
	mov	[rsp], x4
	mov	r2, r0
	mul	r2, -2147483648
	mov	r3, r1
	sub	r3, r2
	div	r3, 2
	mul	r0, 1073741824
	add	r0, r3
	mul	r0, 2
	sub	r1, r0
	add	r1, x3
	mul	x7, 2
	add	x7, r1
add	x7, -1
	mov	r1, 0
	mov	r3, 0
	mov	r0, x5
	mov	r2, x7
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x5, rax
	mov	x8, t0
	mov	r0, x10
	mov	r2, x7
	call	__muldi3
	mov	r3, 0
	mov	r2, t0
	mov	r0, x5
	mov	r1, x8
	call	__adddi3
	mov	r3, t0
	mov	r0, 1
	mov	r1, 0
	mov	x3, 1
	mov	r2, rax
	call	__subdi3
	mov	r1, 0
	mov	r3, 0
	mov	x8, rax
	mov	r2, t0
	mov	r0, x7
	call	__muldi3
	mov	x6, rax
	mov	x5, t0
	mov	x14, 1
	mov	x13, [rsp+16]
	jl	x6, x1, .LBB0_191
// %bb.190:
	mov	x14, 0
.LBB0_191:
	mov	x4, x11
	mov	r0, x12
	mov	r1, x14
	mul	r1, -2147483648
	mov	r2, x6
	sub	r2, r1
	mul	r0, -2147483648
	je	r2, x9, .LBB0_193
// %bb.192:
	mov	x3, 0
.LBB0_193:
	sub	x13, r0
	mov	x10, 0
	sub	x10, x3
	mov	x11, 1
	mov	x2, 1
	jl	x10, x1, .LBB0_195
// %bb.194:
	mov	x2, 0
.LBB0_195:
	mul	x12, 2048
	div	x13, 1048576
	mov	r0, x2
	mul	r0, -2147483648
	mov	x3, x10
	sub	x3, r0
	div	x3, 2
	mov	r1, 0
	mov	r3, 0
	mul	x2, 1073741824
	mov	r0, x8
	mov	r2, x7
	call	__muldi3
	mov	x7, t0
	jl	x7, x1, .LBB0_197
// %bb.196:
	mov	x11, 0
.LBB0_197:
	add	x13, x12
	add	x3, x2
	mov	r0, x11
	mul	r0, -2147483648
	mov	r2, x7
	sub	r2, r0
	mov	r1, 1
	mov	r0, 1
	je	r2, x9, .LBB0_199
// %bb.198:
	mov	r0, 0
.LBB0_199:
	mov	r2, x13
	div	r2, 2
	mov	x8, 0
	sub	x8, r0
	mul	x3, 2
	jl	x8, x1, .LBB0_201
// %bb.200:
	mov	r1, 0
.LBB0_201:
	mul	r2, 2
	sub	x10, x3
	mov	r0, r1
	mul	r0, -2147483648
	mov	r3, x8
	sub	r3, r0
	div	r3, 2
	mul	r1, 1073741824
	add	r1, r3
	mul	r1, 2
	mov	r3, 1
	mov	r0, 1
	jl	rax, x1, .LBB0_203
// %bb.202:
	mov	r0, 0
.LBB0_203:
	sub	x13, r2
	add	x10, x14
	mul	x5, 2
	mov	r2, r0
	mul	r2, -2147483648
	sub	rax, r2
	sub	x8, r1
	je	rax, x9, .LBB0_205
// %bb.204:
	mov	r3, 0
.LBB0_205:
	mul	x13, 1048576
	add	x5, x10
	mul	x6, 2
	add	x8, x11
	mov	r1, 0
	sub	r1, r3
	mov	x3, 1
	mov	r2, 1
	mov	x2, [rsp+12]
	jl	r1, x1, .LBB0_207
// %bb.206:
	mov	r2, 0
.LBB0_207:
	mov	x10, [rsp+16]
	sub	x10, x13
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
	mul	x7, 2
	mov	r2, -225
	mov	r3, -1
	add	x7, r1
	mov	r0, x6
	mov	r1, x5
	call	__adddi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x7
	mov	r3, x8
	call	__adddi3
	mov	x6, rax
	mov	x5, t0
	jl	x2, x1, .LBB0_209
// %bb.208:
	mov	x3, 0
.LBB0_209:
add	x10, 1048576
	mov	r0, x3
	mul	r0, -2147483648
	mov	r3, x2
	sub	r3, r0
	mov	r1, 1
	mov	r2, 1
	je	r3, x9, .LBB0_211
// %bb.210:
	mov	r2, 0
.LBB0_211:
	mov	r0, [rsp]
	sub	x4, r0
	mov	[rsp+16], x10
	mov	x8, x10
	mov	r0, 0
	sub	r0, r2
	mul	x8, 2
	jl	r0, x1, .LBB0_213
// %bb.212:
	mov	r1, 0
.LBB0_213:
	add	x15, x4
	mov	r2, r1
	mul	r2, -2147483648
	mov	r3, r0
	sub	r3, r2
	div	r3, 2
	mul	r1, 1073741824
	add	r1, r3
	mul	r1, 2
	sub	r0, r1
	add	r0, x3
	mov	x7, x2
	mul	x7, 2
	mov	r1, 0
	mov	r3, 0
	add	x8, r0
	mov	r0, x6
	mov	r2, x7
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x13, t0
	mov	r0, x6
	mov	r2, x8
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x14, rax
	mov	x6, t0
	mov	r0, x5
	mov	r2, x7
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x12, rax
	mov	x9, t0
	mov	r0, x5
	mov	r2, x8
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x10, rax
	mov	x11, t0
	mov	r0, x13
	mov	r2, x14
	call	__adddi3
	mov	r1, t0
	mov	r2, 1
	jl	x12, x1, .LBB0_215
// %bb.214:
	mov	r2, 0
.LBB0_215:
	mov	x5, x15
	mov	r0, r2
	mul	r0, -2147483648
	sub	x12, r0
	div	x12, 2
	mul	r2, 1073741824
	add	r2, x12
	mul	r2, 2
	mov	r3, 0
add	x5, 1023
	mov	r0, rax
	call	__adddi3
	mov	r1, 0
	mov	x12, t0
	mov	r0, x9
	mov	r2, x10
	mov	r3, x11
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x6
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x12
	call	__adddi3
	mov	x10, t0
	mov	r0, x10
add	r0, -2147483648
	mov	r1, -2145386497
	mov	x2, [rsp+8]
	mov	x11, [rsp+4]
	jg	r0, r1, .LBB0_225
	jmp	.LBB0_216
.LBB0_216:
	mov	r2, -2146435072
	mov	r1, 1
	mov	x4, 1
	jl	r0, r2, .LBB0_218
// %bb.217:
	mov	x4, 0
.LBB0_218:
	mov	r0, 0
	mov	x1, [rsp+12]
	jl	x4, r0, .LBB0_220
// %bb.219:
	mov	r1, 0
.LBB0_220:
	mov	r2, r1
	mul	r2, -2147483648
	mov	r3, x4
	sub	r3, r2
	div	r3, 2
	mul	r1, 1073741824
	add	r1, r3
	mul	r1, 2
	sub	x4, r1
	mov	r1, x4
	div	r1, 2
	mul	r1, 2
	mov	r2, x4
	sub	r2, r1
	add	r2, r2
	mov	r1, x4
	sub	r1, r2
add	r1, 31
	mov	r2, 1
	jl	rax, r0, .LBB0_222
// %bb.221:
	mov	r2, 0
.LBB0_222:
	mov	r3, r2
	mul	r3, 1073741824
	mul	r2, -2147483648
	mov	r0, rax
	sub	r0, r2
	div	r0, 2
	add	r0, r3
add	x15, 1022
	mov	x6, rax
	call	__bit_shr
	mov	x9, rax
	mov	r0, x10
	mov	r1, x4
	call	__bit_shl
	mov	r0, rax
	mov	r1, x9
	call	__bit_or
	mov	x9, rax
	mov	r0, x6
	mov	r1, x4
	call	__bit_shl
	mov	r0, 1048576
	mov	x6, rax
	jl	x10, r0, .LBB0_224
	jmp	.LBB0_223
.LBB0_223:
	mov	x15, x5
.LBB0_224:
	mul	x1, 2097152
	mov	r0, x6
	mov	r1, x9
	mov	r2, x2
	mov	r3, x11
	call	__muldi3
	mov	r0, 0
	mov	r3, t0
	mov	r1, x1
	mov	r2, rax
	call	__subdi3
add	x15, -1
	mov	x5, x15
	jmp	.LBB0_230
.LBB0_225:
	mov	r1, 0
	mov	r0, 1
	mov	r2, 1
	jl	x10, r1, .LBB0_227
// %bb.226:
	mov	r2, 0
.LBB0_227:
	mov	r3, r2
	mul	r3, 1073741824
	mul	r2, -2147483648
	mov	x9, x10
	sub	x9, r2
	div	x9, 2
	add	x9, r3
	mov	x7, [rsp+12]
	mov	x8, [rsp+16]
	jl	rax, r1, .LBB0_229
// %bb.228:
	mov	r0, 0
.LBB0_229:
	mov	r1, r0
	mul	r1, 1073741824
	mul	r0, -2147483648
	sub	rax, r0
	div	rax, 2
	add	rax, r1
	mul	x10, -2147483648
	add	x10, rax
	mov	x6, x7
	mul	x6, 1048576
	mov	r0, x10
	mov	r1, x9
	mov	r2, x2
	mov	r3, x11
	call	__muldi3
	mov	r0, 0
	mov	r3, t0
	mov	r1, x6
	mov	r2, rax
	call	__subdi3
	mov	x6, x10
.LBB0_230:
	mov	r0, 2047
	jl	x5, r0, .LBB0_234
	jmp	.LBB0_231
.LBB0_231:
	mov	x14, 0
	mov	r0, 1
	jl	x0, x14, .LBB0_233
// %bb.232:
	mov	r0, 0
.LBB0_233:
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
	sub	x0, r2
add	x0, 2146435072
	mov	x5, x0
	jmp	.LBB0_292
.LBB0_234:
	mov	r0, 1
	jl	x5, r0, .LBB0_244
	jmp	.LBB0_235
.LBB0_235:
	mov	r1, 0
	jl	x9, r1, .LBB0_237
// %bb.236:
	mov	r0, 0
.LBB0_237:
	mov	r3, r0
	mul	r3, 2048
	mul	r0, -2147483648
	mov	r2, x9
	sub	r2, r0
	div	r2, 1048576
	add	r2, r3
	mov	r3, 1
	mov	r0, 1
	jl	rax, r1, .LBB0_239
// %bb.238:
	mov	r0, 0
.LBB0_239:
	mov	r4, r0
	mul	r4, -2147483648
	mov	r5, rax
	sub	r5, r4
	mov	r4, -2147483648
	mul	r2, 1048576
	je	r5, r4, .LBB0_241
// %bb.240:
	mov	r3, 0
.LBB0_241:
	sub	x9, r2
	mul	x5, 1048576
	mov	r2, 0
	sub	r2, r3
	mov	r3, 1
	jl	r2, r1, .LBB0_243
// %bb.242:
	mov	r3, 0
.LBB0_243:
	add	x5, x9
	mov	r1, r3
	mul	r1, -2147483648
	mov	r4, r2
	sub	r4, r1
	div	r4, 2
	mul	r3, 1073741824
	add	r3, r4
	mul	r3, 2
	sub	r2, r3
	add	r2, r0
	mul	t0, 2
	add	t0, r2
	mul	rax, 2
	jmp	.LBB0_281
.LBB0_244:
	mov	r0, -53
	jg	x5, r0, .LBB0_246
	jmp	.LBB0_245
.LBB0_245:
	mov	x14, 0
	mov	x5, x0
	jmp	.LBB0_292
.LBB0_246:
	mov	x4, 1
	mov	x3, 1
	sub	x3, x5
	mov	x1, 0
	mov	r0, 1
	jl	x3, x1, .LBB0_248
// %bb.247:
	mov	r0, 0
.LBB0_248:
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
	jl	rax, x1, .LBB0_250
// %bb.249:
	mov	x4, 0
.LBB0_250:
	mov	r0, x4
	mul	r0, -2147483648
	sub	rax, r0
	mov	x13, -2147483648
	mov	r1, 1
	mov	r2, 1
	je	rax, x13, .LBB0_252
// %bb.251:
	mov	r2, 0
.LBB0_252:
	mov	r0, 0
	sub	r0, r2
	jl	r0, x1, .LBB0_254
// %bb.253:
	mov	r1, 0
.LBB0_254:
	mov	r2, r1
	mul	r2, -2147483648
	mov	r3, r0
	sub	r3, r2
	div	r3, 2
	mul	r1, 1073741824
	add	r1, r3
	mul	r1, 2
	sub	r0, r1
	add	r0, x4
	mov	x4, 0
	mov	r1, 32
	sub	r1, x3
	sub	x4, r0
	mov	r0, r1
	div	r0, 32
	mul	r0, 32
	sub	r1, r0
	mov	x10, 32
	mov	r0, x9
	call	__bit_shl
	mov	r0, rax
	mov	r1, x4
	call	__bit_and
	mov	x4, rax
	mov	r0, x6
	mov	r1, x3
	call	__bit_shr
	mov	r0, rax
	mov	r1, x4
	call	__bit_or
	mov	r1, -31
	sub	r1, x5
	mov	r2, 1
	mov	r0, 1
	jl	r1, x1, .LBB0_256
// %bb.255:
	mov	r0, 0
.LBB0_256:
	mov	r3, r0
	mul	r3, -2147483648
	sub	r1, r3
	je	r1, x13, .LBB0_258
// %bb.257:
	mov	r2, 0
.LBB0_258:
	mov	x4, x5
add	x4, 52
	mov	r1, 0
	sub	r1, r2
	mov	x14, 1
	mov	r2, 1
	jl	r1, x1, .LBB0_260
// %bb.259:
	mov	r2, 0
.LBB0_260:
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
	mov	r0, rax
	mov	r1, x12
	call	__bit_and
	mov	x6, rax
	mov	r0, x9
	mov	r1, x3
	call	__bit_shr
	mov	x3, rax
	mov	r1, -1
	sub	r1, x12
	mov	x9, -1
	mov	r0, x3
	call	__bit_and
	mov	x11, rax
	mov	r0, x3
	mov	r1, x12
	call	__bit_and
	mov	x3, rax
	jl	x4, x1, .LBB0_262
// %bb.261:
	mov	x14, 0
.LBB0_262:
	mov	r0, x14
	mul	r0, 67108864
	mul	x14, -2147483648
	mov	r1, x4
	sub	r1, x14
	div	r1, 32
	add	r1, r0
	mul	r1, 32
	sub	x4, r1
	mov	r1, 0
	sub	r1, x4
	mov	r0, x4
	call	__bit_or
	mov	r2, 1
	mov	r0, 1
	jl	rax, x1, .LBB0_264
// %bb.263:
	mov	r0, 0
.LBB0_264:
	mov	r1, r0
	mul	r1, -2147483648
	sub	rax, r1
	je	rax, x13, .LBB0_266
// %bb.265:
	mov	r2, 0
.LBB0_266:
	mov	r1, 0
	sub	r1, r2
	mov	x14, 1
	mov	r2, 1
	jl	r1, x1, .LBB0_268
// %bb.267:
	mov	r2, 0
.LBB0_268:
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
	sub	x10, x4
	mov	x12, 0
	mov	r0, x10
	div	r0, 32
	mul	r0, 32
	sub	x10, r0
	sub	x12, r1
	mov	r0, x7
	mov	r1, x10
	call	__bit_shr
	mov	r0, rax
	mov	r1, x12
	call	__bit_and
	mov	x10, rax
	mov	r0, x8
	mov	r1, x4
	call	__bit_shl
	mov	r0, rax
	mov	r1, x10
	call	__bit_or
add	x5, 20
	jl	x5, x1, .LBB0_270
// %bb.269:
	mov	x14, 0
.LBB0_270:
	mov	r0, x14
	mul	r0, -2147483648
	sub	x5, r0
	mov	r0, 1
	mov	r2, 1
	je	x5, x13, .LBB0_272
// %bb.271:
	mov	r2, 0
.LBB0_272:
	mov	r1, 0
	sub	r1, r2
	add	x6, x11
	jl	r1, x1, .LBB0_274
// %bb.273:
	mov	r0, 0
.LBB0_274:
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
	mov	x8, 0
	sub	x8, r1
	mov	r0, rax
	mov	r1, x8
	call	__bit_and
	mov	x5, rax
	mov	r0, x7
	mov	r1, x4
	call	__bit_shl
	sub	x9, x8
	mov	x4, rax
	mov	r0, x4
	mov	r1, x9
	call	__bit_and
	mov	x7, rax
	mov	r0, x4
	mov	r1, x8
	call	__bit_and
	mov	x4, rax
	mov	x2, [rsp+8]
	mov	r0, x2
	mov	x11, [rsp+4]
	mov	r1, x11
	mov	r2, x6
	mov	r3, x3
	call	__muldi3
	mov	r3, t0
	mov	r2, 1
	mov	r0, 1
	jl	rax, x1, .LBB0_276
// %bb.275:
	mov	r0, 0
.LBB0_276:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r4, rax
	sub	r4, r1
	je	r4, x13, .LBB0_278
// %bb.277:
	mov	r2, 0
.LBB0_278:
	add	x5, x7
	mov	r1, 0
	sub	r1, r2
	mov	r2, 1
	jl	r1, x1, .LBB0_280
// %bb.279:
	mov	r2, 0
.LBB0_280:
	mov	r4, r2
	mul	r4, -2147483648
	mov	r5, r1
	sub	r5, r4
	div	r5, 2
	mul	r2, 1073741824
	add	r2, r5
	mul	r2, 2
	sub	r1, r2
	add	r1, r0
	mul	r3, 2
	add	r3, r1
	mul	rax, 2
	mov	r0, x4
	mov	r1, x5
	mov	r2, rax
	call	__subdi3
	mov	x5, x3
.LBB0_281:
	mov	x1, 0
	mov	x3, 1
	mov	r0, 1
	jl	x6, x1, .LBB0_283
// %bb.282:
	mov	r0, 0
.LBB0_283:
	mov	r1, r0
	mul	r1, 1073741824
	mul	r0, -2147483648
	mov	r2, x6
	sub	r2, r0
	div	r2, 2
	add	r2, r1
	mul	r2, 2
	mov	r0, x6
	sub	r0, r2
	mov	r1, 0
	mov	r2, rax
	mov	r3, t0
	call	__adddi3
	mov	r0, t0
add	r0, -2147483648
	mov	r1, x11
add	r1, -2147483648
	jg	r0, r1, .LBB0_285
// %bb.284:
	mov	x3, 0
.LBB0_285:
add	rax, -2147483648
add	x2, -2147483648
	mov	r2, 1
	mov	r1, 1
	jg	rax, x2, .LBB0_287
// %bb.286:
	mov	r1, 0
.LBB0_287:
	sub	r1, x3
	je	t0, x11, .LBB0_289
// %bb.288:
	mov	r2, 0
.LBB0_289:
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	x3, rax
	mov	r0, 1
	jl	x3, x1, .LBB0_291
// %bb.290:
	mov	r0, 0
.LBB0_291:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x3
	sub	r2, r1
	div	r2, 2
	mul	r0, 1073741824
	add	r0, r2
	mul	r0, 2
	sub	x3, r0
	mov	r3, 0
	mov	r0, x6
	mov	r1, x5
	mov	r2, x3
	call	__adddi3
	mov	x14, rax
	mov	r0, t0
	mov	r1, x0
	call	__bit_or
	mov	x5, rax
.LBB0_292:
	mov	rax, x14
	mov	t0, x5
	mov	x15, [rsp+20]
	mov	x14, [rsp+24]
	mov	x13, [rsp+28]
	mov	x12, [rsp+32]
	mov	x11, [rsp+36]
	mov	x10, [rsp+40]
	mov	x9, [rsp+44]
	mov	x8, [rsp+48]
	mov	x7, [rsp+52]
	mov	x6, [rsp+56]
	mov	x5, [rsp+60]
	mov	x4, [rsp+64]
	mov	x3, [rsp+68]
	mov	x2, [rsp+72]
	mov	x1, [rsp+76]
	mov	x0, [rsp+80]
add	rsp, 84
	ret
// -- End function
