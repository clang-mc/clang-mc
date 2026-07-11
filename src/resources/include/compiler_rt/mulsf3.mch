#include "_ll_std"

// -- Begin function __mulsf3
__mulsf3:                               // @__mulsf3
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
	mov	x6, 0
	mov	r0, 1
	mov	r1, 1
	jl	x2, x6, .LBB0_2
// %bb.1:
	mov	r1, 0
.LBB0_2:
	mov	r2, r1
	mul	r2, 256
	mul	r1, -2147483648
	mov	x4, x2
	sub	x4, r1
	div	x4, 8388608
	add	x4, r2
	jl	x3, x6, .LBB0_4
// %bb.3:
	mov	r0, 0
.LBB0_4:
	mov	x0, x4
	div	x0, 256
	mov	r1, r0
	mul	r1, 256
	mul	r0, -2147483648
	mov	x7, x3
	sub	x7, r0
	div	x7, 8388608
	add	x7, r1
	mov	r0, x3
	mov	r1, x2
	call	__bit_xor
	mov	r2, 1
	mov	r0, 1
	jl	rax, x6, .LBB0_6
// %bb.5:
	mov	r0, 0
.LBB0_6:
	mov	r1, x7
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
	mov	x1, x4
	sub	x1, x0
	mov	x0, 0
	sub	x0, r2
	mov	r2, 1
	jl	x0, x6, .LBB0_10
// %bb.9:
	mov	r2, 0
.LBB0_10:
	mov	x5, x7
	sub	x5, r1
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
	mul	x4, 8388608
	mov	r2, x2
	sub	r2, x4
	mul	x7, 8388608
	mov	r0, x3
	mov	r1, x1
add	r1, 2147483393
	mov	r3, 2147483394
	sub	r0, x7
	jl	r1, r3, .LBB0_12
	jmp	.LBB0_11
.LBB0_11:
	mov	r1, x5
add	r1, -255
add	r1, -2147483648
	mov	r3, 2147483393
	jg	r1, r3, .LBB0_82
	jmp	.LBB0_12
.LBB0_12:
	mov	r3, 0
	mov	r1, 1
	mov	r6, 1
	jl	x2, r3, .LBB0_14
// %bb.13:
	mov	r6, 0
.LBB0_14:
	mov	r4, r6
	mul	r4, -2147483648
	mov	r5, x2
	sub	r5, r4
	mov	r4, -2147483648
	je	r5, r4, .LBB0_16
// %bb.15:
	mov	r1, 0
.LBB0_16:
	mov	r5, 0
	sub	r5, r1
	mov	r1, 1
	mov	r7, 1
	jl	r5, r3, .LBB0_18
// %bb.17:
	mov	r7, 0
.LBB0_18:
	mov	t0, r7
	mul	t0, -2147483648
	mov	t1, r5
	sub	t1, t0
	div	t1, 2
	mul	r7, 1073741824
	add	r7, t1
	mul	r7, 2
	sub	r5, r7
	add	r5, r6
	jl	x3, r3, .LBB0_20
// %bb.19:
	mov	r1, 0
.LBB0_20:
	mul	r5, -2147483648
	mov	r6, r1
	mul	r6, -2147483648
	mov	r7, x3
	sub	r7, r6
	mov	r6, 1
	mov	t0, 1
	je	r7, r4, .LBB0_22
// %bb.21:
	mov	t0, 0
.LBB0_22:
	mov	r4, x2
	mov	r7, 0
	sub	r7, t0
	sub	r4, r5
	jl	r7, r3, .LBB0_24
// %bb.23:
	mov	r6, 0
.LBB0_24:
	mov	r3, 2139095041
	jl	r4, r3, .LBB0_28
	jmp	.LBB0_25
.LBB0_25:
	mov	r1, 0
	mov	r0, 1
	jl	x2, r1, .LBB0_27
// %bb.26:
	mov	r0, 0
.LBB0_27:
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
	jmp	.LBB0_123
.LBB0_28:
	mov	r5, r6
	mul	r5, -2147483648
	mov	t0, r7
	sub	t0, r5
	div	t0, 2
	mul	r6, 1073741824
	add	r6, t0
	mul	r6, 2
	sub	r7, r6
	add	r7, r1
	mul	r7, -2147483648
	mov	x7, x3
	sub	x7, r7
	jl	x7, r3, .LBB0_32
	jmp	.LBB0_29
.LBB0_29:
	mov	r1, 0
	mov	r0, 1
	jl	x3, r1, .LBB0_31
// %bb.30:
	mov	r0, 0
.LBB0_31:
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
	mov	x2, x3
	jmp	.LBB0_123
.LBB0_32:
	mov	r1, 2139095040
	jne	r4, r1, .LBB0_37
	jmp	.LBB0_33
.LBB0_33:
	mov	x2, 2143289344
	jz	x7, .LBB0_123
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
	mov	x2, x0
	jmp	.LBB0_123
.LBB0_37:
	jne	x7, r1, .LBB0_42
	jmp	.LBB0_38
.LBB0_38:
	mov	x2, 2143289344
	jz	r4, .LBB0_123
	jmp	.LBB0_39
.LBB0_39:
	mov	r1, 0
	mov	r0, 1
	jl	x0, r1, .LBB0_41
// %bb.40:
	mov	r0, 0
.LBB0_41:
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
	mov	x2, x0
	jmp	.LBB0_123
.LBB0_42:
	jnz	r4, .LBB0_44
	jmp	.LBB0_43
.LBB0_43:
	mov	x2, x0
	jmp	.LBB0_123
.LBB0_44:
	jnz	x7, .LBB0_46
	jmp	.LBB0_45
.LBB0_45:
	mov	x2, x0
	jmp	.LBB0_123
.LBB0_46:
	mov	x8, 8388607
	jg	r4, x8, .LBB0_64
	jmp	.LBB0_47
.LBB0_47:
	mov	x9, r0
	mov	x10, 0
	mov	x3, 1
	mov	r0, 1
	jl	r2, x10, .LBB0_49
// %bb.48:
	mov	r0, 0
.LBB0_49:
	mov	r3, r0
	mul	r3, 1073741824
	mul	r0, -2147483648
	mov	r1, r2
	sub	r1, r0
	div	r1, 2
	add	r1, r3
	mov	x2, r2
	mov	r0, r2
	call	__bit_or
	jl	rax, x10, .LBB0_51
// %bb.50:
	mov	x3, 0
.LBB0_51:
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
	jl	rax, x10, .LBB0_53
// %bb.52:
	mov	r1, 0
.LBB0_53:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 16
	mul	r1, 134217728
	add	r1, r2
	mov	r0, rax
	call	__bit_or
	jl	rax, x10, .LBB0_55
// %bb.54:
	mov	x3, 0
.LBB0_55:
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
	jl	rax, x10, .LBB0_57
// %bb.56:
	mov	r1, 0
.LBB0_57:
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
	jl	x3, x10, .LBB0_59
// %bb.58:
	mov	x4, 0
.LBB0_59:
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
	mov	x6, 1
	mov	r0, 1
	jl	x3, x10, .LBB0_61
// %bb.60:
	mov	r0, 0
.LBB0_61:
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
	jl	r0, x10, .LBB0_63
// %bb.62:
	mov	x6, 0
.LBB0_63:
	mov	r1, x6
	mul	r1, -2147483648
	sub	r0, r1
	div	r0, 16777216
	mul	x6, 128
	add	x6, r0
	mov	r1, 24
	sub	r1, x6
	mov	r0, x2
	call	__bit_shl
	mov	r2, rax
add	x6, -23
	mov	r0, x9
.LBB0_64:
	jg	x7, x8, .LBB0_82
	jmp	.LBB0_65
.LBB0_65:
	mov	x7, r2
	mov	x8, 0
	mov	x3, 1
	mov	r2, 1
	jl	r0, x8, .LBB0_67
// %bb.66:
	mov	r2, 0
.LBB0_67:
	mov	r3, r2
	mul	r3, 1073741824
	mul	r2, -2147483648
	mov	r1, r0
	sub	r1, r2
	div	r1, 2
	add	r1, r3
	mov	x2, r0
	call	__bit_or
	jl	rax, x8, .LBB0_69
// %bb.68:
	mov	x3, 0
.LBB0_69:
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
	jl	rax, x8, .LBB0_71
// %bb.70:
	mov	r1, 0
.LBB0_71:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 16
	mul	r1, 134217728
	add	r1, r2
	mov	r0, rax
	call	__bit_or
	jl	rax, x8, .LBB0_73
// %bb.72:
	mov	x3, 0
.LBB0_73:
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
	jl	rax, x8, .LBB0_75
// %bb.74:
	mov	r1, 0
.LBB0_75:
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
	jl	x3, x8, .LBB0_77
// %bb.76:
	mov	x4, 0
.LBB0_77:
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
	jl	x3, x8, .LBB0_79
// %bb.78:
	mov	r0, 0
.LBB0_79:
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
	jl	r0, x8, .LBB0_81
// %bb.80:
	mov	x9, 0
.LBB0_81:
	mov	r1, x9
	mul	r1, -2147483648
	sub	r0, r1
	div	r0, 16777216
	mul	x9, 128
	add	x9, r0
	mov	r1, 24
	sub	r1, x9
	mov	r0, x2
	call	__bit_shl
	add	x9, x6
add	x9, -23
	mov	r0, rax
	mov	x6, x9
	mov	r2, x7
.LBB0_82:
	mov	x2, 0
	mov	r1, 1
	mov	r4, 1
	jl	r2, x2, .LBB0_84
// %bb.83:
	mov	r4, 0
.LBB0_84:
	mov	r5, r4
	mul	r5, 256
	mul	r4, -2147483648
	mov	r3, r2
	sub	r3, r4
	div	r3, 8388608
	add	r3, r5
	mov	r4, r3
	div	r4, 2
	mul	r4, 2
	sub	r3, r4
	mul	r0, 256
	mul	r3, 8388608
	jl	r0, x2, .LBB0_86
// %bb.85:
	mov	r1, 0
.LBB0_86:
	sub	r2, r3
	mov	r3, r1
	mul	r3, -2147483648
	mov	r4, r0
	sub	r4, r3
	mov	r6, -2147483648
	mov	r3, 1
	mov	r5, 1
	je	r4, r6, .LBB0_88
// %bb.87:
	mov	r5, 0
.LBB0_88:
	mov	r4, 0
	sub	r4, r5
add	r2, 8388608
	jl	r4, x2, .LBB0_90
// %bb.89:
	mov	r3, 0
.LBB0_90:
	mov	r5, r3
	mul	r5, -2147483648
	mov	r6, r4
	sub	r6, r5
	div	r6, 2
	mul	r3, 1073741824
	add	r3, r6
	mul	r3, 2
	sub	r4, r3
	add	r4, r1
	mul	r4, -2147483648
	sub	r0, r4
add	r0, -2147483648
	mov	r1, 0
	mov	r3, 0
	call	__muldi3
	mov	x3, rax
	add	x1, x5
	add	x1, x6
	mov	r0, 1
	jl	t0, x2, .LBB0_92
// %bb.91:
	mov	r0, 0
.LBB0_92:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, t0
	sub	r2, r1
	div	r2, 8388608
	mul	r0, 256
	add	r0, r2
	mov	r1, r0
	div	r1, 2
	mul	r1, 2
	sub	r0, r1
	mul	r0, 8388608
add	x1, -127
	jz	r0, .LBB0_94
	jmp	.LBB0_93
.LBB0_93:
add	x1, 1
	jmp	.LBB0_101
.LBB0_94:
	mov	r2, 0
	mov	r3, 1
	mov	r0, 1
	jl	x3, r2, .LBB0_96
// %bb.95:
	mov	r0, 0
.LBB0_96:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r4, x3
	sub	r4, r1
	mov	r1, -2147483648
	je	r4, r1, .LBB0_98
// %bb.97:
	mov	r3, 0
.LBB0_98:
	mov	r1, 0
	sub	r1, r3
	mov	r3, 1
	jl	r1, r2, .LBB0_100
// %bb.99:
	mov	r3, 0
.LBB0_100:
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
	mul	t0, 2
	add	t0, r1
	mul	x3, 2
.LBB0_101:
	mov	r0, 255
	jl	x1, r0, .LBB0_105
	jmp	.LBB0_102
.LBB0_102:
	mov	r1, 0
	mov	r0, 1
	jl	x0, r1, .LBB0_104
// %bb.103:
	mov	r0, 0
.LBB0_104:
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
	mov	x2, x0
	jmp	.LBB0_123
.LBB0_105:
	mov	r1, 0
	jg	x1, r1, .LBB0_113
	jmp	.LBB0_106
.LBB0_106:
	mov	x2, 1
	sub	x2, x1
	mov	r0, 31
	mov	x5, 1
	jg	x2, r0, .LBB0_112
	jmp	.LBB0_107
.LBB0_107:
	mov	x4, t0
add	x1, 31
	mov	r0, x3
	mov	r1, x1
	call	__bit_shl
	mov	x6, 0
	jne	rax, x6, .LBB0_109
// %bb.108:
	mov	x5, 0
.LBB0_109:
	mov	r0, x4
	mov	r1, x1
	call	__bit_shl
	mov	x1, rax
	mov	r0, x3
	mov	r1, x2
	call	__bit_shr
	add	rax, x1
	mov	r0, 1
	jl	x5, x6, .LBB0_111
// %bb.110:
	mov	r0, 0
.LBB0_111:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x5
	sub	r2, r1
	div	r2, 2
	mul	r0, 1073741824
	add	r0, r2
	mul	r0, 2
	sub	x5, r0
	mov	r0, rax
	mov	r1, x5
	call	__bit_or
	mov	x3, rax
	mov	r0, x4
	mov	r1, x2
	call	__bit_shr
	mov	x1, rax
	jmp	.LBB0_116
.LBB0_112:
	mov	x2, x0
	jmp	.LBB0_123
.LBB0_113:
	mov	r0, 1
	jl	t0, r1, .LBB0_115
// %bb.114:
	mov	r0, 0
.LBB0_115:
	mov	r1, r0
	mul	r1, 256
	mul	r0, -2147483648
	mov	r2, t0
	sub	r2, r0
	div	r2, 8388608
	add	r2, r1
	mul	r2, 8388608
	sub	t0, r2
	mul	x1, 8388608
	mov	r0, x1
	mov	r1, t0
	call	__bit_or
	mov	x1, rax
.LBB0_116:
	mov	r0, x1
	mov	r1, x0
	call	__bit_or
	mov	r0, x3
add	r0, -2147483648
	mov	r1, 1
	mov	x2, rax
	jl	r0, r1, .LBB0_118
	jmp	.LBB0_117
.LBB0_117:
add	x2, 1
	jmp	.LBB0_122
.LBB0_118:
	mov	r0, -2147483648
	jne	x3, r0, .LBB0_122
	jmp	.LBB0_119
.LBB0_119:
	mov	r1, 0
	mov	r0, 1
	jl	x1, r1, .LBB0_121
// %bb.120:
	mov	r0, 0
.LBB0_121:
	mov	r1, r0
	mul	r1, 1073741824
	mul	r0, -2147483648
	mov	r2, x1
	sub	r2, r0
	div	r2, 2
	add	r2, r1
	mul	r2, 2
	sub	x1, r2
	add	x2, x1
.LBB0_122:
.LBB0_123:
	mov	rax, x2
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
