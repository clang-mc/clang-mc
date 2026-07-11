#include "_ll_std"

// -- Begin function __divsf3
__divsf3:                               // @__divsf3
// %bb.0:
sub	rsp, 52
	mov	[rsp+48], x0
	mov	[rsp+44], x1
	mov	[rsp+40], x2
	mov	[rsp+36], x3
	mov	[rsp+32], x4
	mov	[rsp+28], x5
	mov	[rsp+24], x6
	mov	[rsp+20], x7
	mov	[rsp+16], x8
	mov	[rsp+12], x9
	mov	[rsp+8], x10
	mov	[rsp+4], x11
	mov	[rsp], x12
	mov	x4, r1
	mov	x3, r0
	mov	x7, 0
	mov	r0, 1
	mov	r1, 1
	jl	x3, x7, .LBB0_2
// %bb.1:
	mov	r1, 0
.LBB0_2:
	mov	r2, r1
	mul	r2, 256
	mul	r1, -2147483648
	mov	x1, x3
	sub	x1, r1
	div	x1, 8388608
	add	x1, r2
	jl	x4, x7, .LBB0_4
// %bb.3:
	mov	r0, 0
.LBB0_4:
	mov	x0, x1
	div	x0, 256
	mov	r1, r0
	mul	r1, 256
	mul	r0, -2147483648
	mov	x8, x4
	sub	x8, r0
	div	x8, 8388608
	add	x8, r1
	mov	r0, x4
	mov	r1, x3
	call	__bit_xor
	mov	r2, 1
	mov	r0, 1
	jl	rax, x7, .LBB0_6
// %bb.5:
	mov	r0, 0
.LBB0_6:
	mov	r1, x8
	div	r1, 256
	mov	r3, r0
	mul	r3, -2147483648
	sub	rax, r3
	mov	r3, -2147483648
	mul	x0, 256
	je	rax, r3, .LBB0_8
// %bb.7:
	mov	r2, 0
.LBB0_8:
	mul	r1, 256
	mov	x5, x1
	sub	x5, x0
	mov	x0, 0
	sub	x0, r2
	mov	r2, 1
	jl	x0, x7, .LBB0_10
// %bb.9:
	mov	r2, 0
.LBB0_10:
	mov	x6, x8
	sub	x6, r1
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
	mul	x1, 8388608
	mov	x2, x3
	sub	x2, x1
	mul	x8, 8388608
	mov	x1, x4
	mov	r0, x5
add	r0, 2147483393
	mov	r1, 2147483394
	sub	x1, x8
	jl	r0, r1, .LBB0_12
	jmp	.LBB0_11
.LBB0_11:
	mov	r0, x6
add	r0, -255
add	r0, -2147483648
	mov	r1, 2147483393
	jg	r0, r1, .LBB0_83
	jmp	.LBB0_12
.LBB0_12:
	mov	r1, 0
	mov	r0, 1
	mov	r4, 1
	jl	x3, r1, .LBB0_14
// %bb.13:
	mov	r4, 0
.LBB0_14:
	mov	r2, r4
	mul	r2, -2147483648
	mov	r3, x3
	sub	r3, r2
	mov	r2, -2147483648
	je	r3, r2, .LBB0_16
// %bb.15:
	mov	r0, 0
.LBB0_16:
	mov	r3, 0
	sub	r3, r0
	mov	r0, 1
	mov	r5, 1
	jl	r3, r1, .LBB0_18
// %bb.17:
	mov	r5, 0
.LBB0_18:
	mov	r6, r5
	mul	r6, -2147483648
	mov	r7, r3
	sub	r7, r6
	div	r7, 2
	mul	r5, 1073741824
	add	r5, r7
	mul	r5, 2
	sub	r3, r5
	add	r3, r4
	jl	x4, r1, .LBB0_20
// %bb.19:
	mov	r0, 0
.LBB0_20:
	mul	r3, -2147483648
	mov	r4, r0
	mul	r4, -2147483648
	mov	r5, x4
	sub	r5, r4
	mov	r4, 1
	mov	r6, 1
	je	r5, r2, .LBB0_22
// %bb.21:
	mov	r6, 0
.LBB0_22:
	mov	r2, x3
	mov	r5, 0
	sub	r5, r6
	sub	r2, r3
	jl	r5, r1, .LBB0_24
// %bb.23:
	mov	r4, 0
.LBB0_24:
	mov	r1, 2139095041
	jl	r2, r1, .LBB0_28
	jmp	.LBB0_25
.LBB0_25:
	mov	r1, 0
	mov	r0, 1
	jl	x3, r1, .LBB0_27
// %bb.26:
	mov	r0, 0
.LBB0_27:
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
	jmp	.LBB0_134
.LBB0_28:
	mov	r3, r4
	mul	r3, -2147483648
	mov	r6, r5
	sub	r6, r3
	div	r6, 2
	mul	r4, 1073741824
	add	r4, r6
	mul	r4, 2
	sub	r5, r4
	add	r5, r0
	mul	r5, -2147483648
	mov	x8, x4
	sub	x8, r5
	jl	x8, r1, .LBB0_32
	jmp	.LBB0_29
.LBB0_29:
	mov	r1, 0
	mov	r0, 1
	jl	x4, r1, .LBB0_31
// %bb.30:
	mov	r0, 0
.LBB0_31:
	mov	r1, r0
	mul	r1, 512
	mul	r0, -2147483648
	mov	r2, x4
	sub	r2, r0
	div	r2, 4194304
	add	r2, r1
	mov	r0, r2
	div	r0, 2
	mul	r0, 2
	sub	r2, r0
	mul	r2, 4194304
	sub	x4, r2
add	x4, 4194304
	mov	x3, x4
	jmp	.LBB0_134
.LBB0_32:
	mov	r0, 2139095040
	jne	r2, r0, .LBB0_37
	jmp	.LBB0_33
.LBB0_33:
	mov	x3, 2143289344
	je	x8, r0, .LBB0_134
	jmp	.LBB0_34
.LBB0_34:
	mov	r1, 0
	mov	r0, 1
	jl	x0, r1, .LBB0_36
// %bb.35:
	mov	r0, 0
.LBB0_36:
	mov	r1, r0
	mul	r1, 256
	mul	r0, -2147483648
	mov	r2, x0
	sub	r2, r0
	div	r2, 8388608
	add	r2, r1
	mov	r0, r2
	div	r0, 256
	mul	r0, 256
	sub	r2, r0
	mul	r2, 8388608
	sub	x0, r2
add	x0, 2139095040
	mov	x3, x0
	jmp	.LBB0_134
.LBB0_37:
	jne	x8, r0, .LBB0_39
	jmp	.LBB0_38
.LBB0_38:
	mov	x3, x0
	jmp	.LBB0_134
.LBB0_39:
	jnz	r2, .LBB0_43
	jmp	.LBB0_40
.LBB0_40:
	mov	r0, 0
	mov	r2, 1
	je	x8, r0, .LBB0_42
// %bb.41:
	mov	r2, 0
.LBB0_42:
	mov	r1, 2143289344
	sub	r1, x0
	sub	r0, r2
	call	__bit_and
	mov	x3, rax
	add	x3, x0
	jmp	.LBB0_134
.LBB0_43:
	jnz	x8, .LBB0_47
	jmp	.LBB0_44
.LBB0_44:
	mov	r1, 0
	mov	r0, 1
	jl	x0, r1, .LBB0_46
// %bb.45:
	mov	r0, 0
.LBB0_46:
	mov	r1, r0
	mul	r1, 256
	mul	r0, -2147483648
	mov	r2, x0
	sub	r2, r0
	div	r2, 8388608
	add	r2, r1
	mov	r0, r2
	div	r0, 256
	mul	r0, 256
	sub	r2, r0
	mul	r2, 8388608
	sub	x0, r2
add	x0, 2139095040
	mov	x3, x0
	jmp	.LBB0_134
.LBB0_47:
	mov	x9, 8388607
	jg	r2, x9, .LBB0_65
	jmp	.LBB0_48
.LBB0_48:
	mov	x10, 0
	mov	x3, 1
	mov	r0, 1
	jl	x2, x10, .LBB0_50
// %bb.49:
	mov	r0, 0
.LBB0_50:
	mov	r2, r0
	mul	r2, 1073741824
	mul	r0, -2147483648
	mov	r1, x2
	sub	r1, r0
	div	r1, 2
	add	r1, r2
	mov	r0, x2
	call	__bit_or
	jl	rax, x10, .LBB0_52
// %bb.51:
	mov	x3, 0
.LBB0_52:
	mov	r0, x3
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 4
	mul	x3, 536870912
	add	x3, r1
	mov	r0, rax
	mov	r1, x3
	call	__bit_or
	mov	x3, 1
	mov	r1, 1
	jl	rax, x10, .LBB0_54
// %bb.53:
	mov	r1, 0
.LBB0_54:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 16
	mul	r1, 134217728
	add	r1, r2
	mov	r0, rax
	call	__bit_or
	jl	rax, x10, .LBB0_56
// %bb.55:
	mov	x3, 0
.LBB0_56:
	mov	r0, x3
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 256
	mul	x3, 8388608
	add	x3, r1
	mov	r0, rax
	mov	r1, x3
	call	__bit_or
	mov	x4, 1
	mov	r1, 1
	jl	rax, x10, .LBB0_58
// %bb.57:
	mov	r1, 0
.LBB0_58:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 65536
	mul	r1, 32768
	add	r1, r2
	mov	r0, rax
	call	__bit_or
	mov	x3, rax
	jl	x3, x10, .LBB0_60
// %bb.59:
	mov	x4, 0
.LBB0_60:
	mov	r0, x4
	mul	r0, -2147483648
	mov	r1, x3
	sub	r1, r0
	div	r1, 2
	mul	x4, 1073741824
	add	x4, r1
	mov	r1, 1431655765
	mov	r0, x4
	call	__bit_and
	sub	x3, rax
	mov	x7, 1
	mov	r0, 1
	jl	x3, x10, .LBB0_62
// %bb.61:
	mov	r0, 0
.LBB0_62:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x3
	sub	r2, r1
	div	r2, 4
	mul	r0, 536870912
	add	r0, r2
	mov	r1, 858993459
	call	__bit_and
	mov	r1, 858993459
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	add	rax, x4
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
	jl	r0, x10, .LBB0_64
// %bb.63:
	mov	x7, 0
.LBB0_64:
	mov	r1, x7
	mul	r1, -2147483648
	sub	r0, r1
	div	r0, 16777216
	mul	x7, 128
	add	x7, r0
	mov	r1, 24
	sub	r1, x7
	mov	r0, x2
	call	__bit_shl
	mov	x2, rax
add	x7, -23
.LBB0_65:
	jg	x8, x9, .LBB0_83
	jmp	.LBB0_66
.LBB0_66:
	mov	x8, 0
	mov	x3, 1
	mov	r0, 1
	jl	x1, x8, .LBB0_68
// %bb.67:
	mov	r0, 0
.LBB0_68:
	mov	r2, r0
	mul	r2, 1073741824
	mul	r0, -2147483648
	mov	r1, x1
	sub	r1, r0
	div	r1, 2
	add	r1, r2
	mov	r0, x1
	call	__bit_or
	jl	rax, x8, .LBB0_70
// %bb.69:
	mov	x3, 0
.LBB0_70:
	mov	r0, x3
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 4
	mul	x3, 536870912
	add	x3, r1
	mov	r0, rax
	mov	r1, x3
	call	__bit_or
	mov	x3, 1
	mov	r1, 1
	jl	rax, x8, .LBB0_72
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
	jl	rax, x8, .LBB0_74
// %bb.73:
	mov	x3, 0
.LBB0_74:
	mov	r0, x3
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 256
	mul	x3, 8388608
	add	x3, r1
	mov	r0, rax
	mov	r1, x3
	call	__bit_or
	mov	x4, 1
	mov	r1, 1
	jl	rax, x8, .LBB0_76
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
	mov	x3, rax
	jl	x3, x8, .LBB0_78
// %bb.77:
	mov	x4, 0
.LBB0_78:
	mov	r0, x4
	mul	r0, -2147483648
	mov	r1, x3
	sub	r1, r0
	div	r1, 2
	mul	x4, 1073741824
	add	x4, r1
	mov	r1, 1431655765
	mov	r0, x4
	call	__bit_and
	sub	x3, rax
	mov	x9, 1
	mov	r0, 1
	jl	x3, x8, .LBB0_80
// %bb.79:
	mov	r0, 0
.LBB0_80:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x3
	sub	r2, r1
	div	r2, 4
	mul	r0, 536870912
	add	r0, r2
	mov	r1, 858993459
	call	__bit_and
	mov	r1, 858993459
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	add	rax, x4
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
	jl	r0, x8, .LBB0_82
// %bb.81:
	mov	x9, 0
.LBB0_82:
	mov	r1, x9
	mul	r1, -2147483648
	sub	r0, r1
	div	r0, 16777216
	mul	x9, 128
	add	x9, r0
	mov	r1, 24
	sub	r1, x9
	mov	r0, x1
	call	__bit_shl
	mov	x1, rax
	sub	x7, x9
add	x7, 23
.LBB0_83:
	mov	x8, 0
	mov	r1, 1
	mov	x11, 1
	jl	x2, x8, .LBB0_85
// %bb.84:
	mov	x11, 0
.LBB0_85:
	mov	r0, x11
	mul	r0, -2147483648
	jl	x1, x8, .LBB0_87
// %bb.86:
	mov	r1, 0
.LBB0_87:
	mov	r2, r1
	mul	r2, 256
	mul	r1, -2147483648
	mov	r3, x1
	sub	r3, r1
	div	r3, 8388608
	add	r3, r2
	mov	r1, r3
	div	r1, 2
	mul	r1, 2
	sub	r3, r1
	mul	r3, 8388608
	sub	x1, r3
add	x1, 8388608
	mov	x9, x2
	mov	x3, x1
	mul	x3, 256
	mov	x4, 1963258675
	sub	x4, x3
	mov	r1, 0
	mov	r3, 0
	sub	x9, r0
	mov	r0, x4
	mov	r2, x3
	call	__muldi3
	mov	r0, 0
	sub	r0, t0
	mov	r1, 0
	mov	r3, 0
	mov	r2, x4
	call	__muldi3
	mov	x4, t0
	mov	r2, 1
	mov	r0, 1
	jl	rax, x8, .LBB0_89
// %bb.88:
	mov	r0, 0
.LBB0_89:
	mul	x11, 256
	mov	r1, r0
	mul	r1, -2147483648
	sub	rax, r1
	mov	x10, -2147483648
	div	x9, 8388608
	je	rax, x10, .LBB0_91
// %bb.90:
	mov	r2, 0
.LBB0_91:
	add	x9, x11
	mov	r1, 0
	sub	r1, r2
	mov	x11, 1
	mov	r2, 1
	jl	r1, x8, .LBB0_93
// %bb.92:
	mov	r2, 0
.LBB0_93:
	mov	x12, x9
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
	mul	x4, 2
	add	x4, r1
	mov	r1, 0
	mov	r3, 0
	div	x12, 2
	mov	r0, x4
	mov	r2, x3
	call	__muldi3
	mov	r2, 0
	sub	r2, t0
	mov	r1, 0
	mov	r3, 0
	mov	r0, x4
	call	__muldi3
	mov	x4, t0
	jl	rax, x8, .LBB0_95
// %bb.94:
	mov	x11, 0
.LBB0_95:
	mul	x12, 2
	mov	r0, x11
	mul	r0, -2147483648
	sub	rax, r0
	mov	r0, 1
	mov	r2, 1
	je	rax, x10, .LBB0_97
// %bb.96:
	mov	r2, 0
.LBB0_97:
	mov	r1, 0
	sub	r1, r2
	sub	x9, x12
	jl	r1, x8, .LBB0_99
// %bb.98:
	mov	r0, 0
.LBB0_99:
	mov	r2, r0
	mul	r2, -2147483648
	mov	r3, r1
	sub	r3, r2
	div	r3, 2
	mul	r0, 1073741824
	add	r0, r3
	mul	r0, 2
	sub	r1, r0
	add	r1, x11
	mul	x4, 2
	add	x4, r1
	mov	r1, 0
	mov	r3, 0
	mul	x9, 8388608
	mov	r0, x4
	mov	r2, x3
	call	__muldi3
	mov	r2, 0
	sub	r2, t0
	mov	r1, 0
	mov	r3, 0
	mov	r0, x4
	call	__muldi3
	mov	r0, t0
	mov	r3, 1
	mov	r1, 1
	jl	rax, x8, .LBB0_101
// %bb.100:
	mov	r1, 0
.LBB0_101:
	sub	x5, x6
	mov	x6, x2
	mov	r2, r1
	mul	r2, -2147483648
	sub	rax, r2
	sub	x6, x9
	je	rax, x10, .LBB0_103
// %bb.102:
	mov	r3, 0
.LBB0_103:
	add	x7, x5
add	x6, 8388608
	mov	r2, 0
	sub	r2, r3
	mov	r3, 1
	jl	r2, x8, .LBB0_105
// %bb.104:
	mov	r3, 0
.LBB0_105:
	mov	x3, x7
	mov	r4, r3
	mul	r4, -2147483648
	mov	r5, r2
	sub	r5, r4
	div	r5, 2
	mul	r3, 1073741824
	add	r3, r5
	mul	r3, 2
	sub	r2, r3
	add	r2, r1
	mul	r0, 2
	add	r0, r2
add	r0, -12
	mov	x4, x6
	mul	x4, 2
	mov	r1, 0
	mov	r3, 0
add	x3, 127
	mov	r2, x4
	call	__muldi3
	mov	r0, t0
add	r0, -2147483648
	mov	r1, -2130706433
	jg	r0, r1, .LBB0_113
	jmp	.LBB0_106
.LBB0_106:
	mov	x5, 8388608
	mov	r0, 1
	mov	r1, 1
	jl	t0, x5, .LBB0_108
// %bb.107:
	mov	r1, 0
.LBB0_108:
	mov	r2, 0
	jl	r1, r2, .LBB0_110
// %bb.109:
	mov	r0, 0
.LBB0_110:
	mov	r2, r0
	mul	r2, -2147483648
	mov	r3, r1
	sub	r3, r2
	div	r3, 2
	mul	r0, 1073741824
	add	r0, r3
	mul	r0, 2
	sub	r1, r0
add	x7, 126
	mov	r0, t0
	mov	x6, t0
	call	__bit_shl
	jl	x6, x5, .LBB0_112
	jmp	.LBB0_111
.LBB0_111:
	mov	x7, x3
.LBB0_112:
	mul	x2, 16777216
	mov	r0, rax
	mul	r0, x1
add	x7, -1
	sub	x2, r0
	mov	x3, x7
	jmp	.LBB0_116
.LBB0_113:
	mov	r1, 0
	mov	r0, 1
	jl	t0, r1, .LBB0_115
// %bb.114:
	mov	r0, 0
.LBB0_115:
	mov	r1, r0
	mul	r1, 1073741824
	mul	r0, -2147483648
	sub	t0, r0
	div	t0, 2
	add	t0, r1
	mul	x2, 8388608
	mov	r0, t0
	mul	r0, x1
	sub	x2, r0
	mov	rax, t0
	mov	x4, x6
.LBB0_116:
	mov	r0, 255
	jl	x3, r0, .LBB0_120
	jmp	.LBB0_117
.LBB0_117:
	mov	r1, 0
	mov	r0, 1
	jl	x0, r1, .LBB0_119
// %bb.118:
	mov	r0, 0
.LBB0_119:
	mov	r1, r0
	mul	r1, 256
	mul	r0, -2147483648
	mov	r2, x0
	sub	r2, r0
	div	r2, 8388608
	add	r2, r1
	mov	r0, r2
	div	r0, 256
	mul	r0, 256
	sub	r2, r0
	mul	r2, 8388608
	sub	x0, r2
add	x0, 2139095040
	mov	x3, x0
	jmp	.LBB0_134
.LBB0_120:
	mov	r0, 1
	jl	x3, r0, .LBB0_124
	jmp	.LBB0_121
.LBB0_121:
	mov	r1, 0
	jl	rax, r1, .LBB0_123
// %bb.122:
	mov	r0, 0
.LBB0_123:
	mov	r1, r0
	mul	r1, 256
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 8388608
	add	r2, r1
	mul	r2, 8388608
	sub	rax, r2
	mul	x3, 8388608
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mul	x2, 2
	jmp	.LBB0_127
.LBB0_124:
	mov	r0, -24
	jg	x3, r0, .LBB0_126
	jmp	.LBB0_125
.LBB0_125:
	mov	x3, x0
	jmp	.LBB0_134
.LBB0_126:
	mov	r1, 1
	sub	r1, x3
add	x3, 23
	mov	r0, rax
	call	__bit_shr
	mov	x5, rax
	mov	r0, x4
	mov	r1, x3
	call	__bit_shl
	mov	x2, rax
	mov	r0, x5
	mov	r1, r0
	mul	r1, x1
	mul	r1, 2
	sub	x2, r1
.LBB0_127:
	mov	r2, 0
	mov	r1, 1
	mov	r3, 1
	jl	r0, r2, .LBB0_129
// %bb.128:
	mov	r3, 0
.LBB0_129:
	mov	r4, r3
	mul	r4, 1073741824
	mul	r3, -2147483648
	mov	r5, r0
	sub	r5, r3
	div	r5, 2
	add	r5, r4
	mul	r5, 2
	mov	r3, r0
	sub	r3, r5
	add	r3, x2
add	r3, -2147483648
add	x1, -2147483648
	jg	r3, x1, .LBB0_131
// %bb.130:
	mov	r1, 0
.LBB0_131:
	mov	r3, 1
	jl	r1, r2, .LBB0_133
// %bb.132:
	mov	r3, 0
.LBB0_133:
	mov	r2, r3
	mul	r2, -2147483648
	mov	r4, r1
	sub	r4, r2
	div	r4, 2
	mul	r3, 1073741824
	add	r3, r4
	mul	r3, 2
	sub	r1, r3
	add	r0, r1
	mov	r1, x0
	call	__bit_or
	mov	x3, rax
.LBB0_134:
	mov	rax, x3
	mov	x12, [rsp]
	mov	x11, [rsp+4]
	mov	x10, [rsp+8]
	mov	x9, [rsp+12]
	mov	x8, [rsp+16]
	mov	x7, [rsp+20]
	mov	x6, [rsp+24]
	mov	x5, [rsp+28]
	mov	x4, [rsp+32]
	mov	x3, [rsp+36]
	mov	x2, [rsp+40]
	mov	x1, [rsp+44]
	mov	x0, [rsp+48]
add	rsp, 52
	ret
// -- End function
