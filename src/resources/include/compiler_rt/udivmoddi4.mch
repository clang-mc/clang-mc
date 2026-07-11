#include "_ll_std"

// -- Begin function __udivmoddi4
__udivmoddi4:                           // @__udivmoddi4
// %bb.0:
sub	rsp, 64
	mov	[rsp+60], x0
	mov	[rsp+56], x1
	mov	[rsp+52], x2
	mov	[rsp+48], x3
	mov	[rsp+44], x4
	mov	[rsp+40], x5
	mov	[rsp+36], x6
	mov	[rsp+32], x7
	mov	[rsp+28], x8
	mov	[rsp+24], x9
	mov	[rsp+20], x10
	mov	[rsp+16], x11
	mov	[rsp+12], x12
	mov	[rsp+8], x13
	mov	[rsp+4], x14
	mov	[rsp], x15
	mov	x2, r4
	mov	x4, r3
	mov	x3, r2
	mov	x0, r1
	mov	x1, r0
	jnz	x0, .LBB0_7
	jmp	.LBB0_1
.LBB0_1:
	jnz	x4, .LBB0_5
	jmp	.LBB0_2
.LBB0_2:
	mov	r0, x1
	mov	r1, x3
	call	__udivsi3
	jz	x2, .LBB0_4
	jmp	.LBB0_3
.LBB0_3:
	mul	x3, rax
	sub	x1, x3
	mov	[x2], x1
add	x2, 4
	mov	[x2], 0
.LBB0_4:
	mov	x6, 0
	jmp	.LBB0_239
.LBB0_5:
	mov	rax, 0
	mov	x6, 0
	jz	x2, .LBB0_239
	jmp	.LBB0_6
.LBB0_6:
	mov	[x2], x1
add	x2, 4
	mov	[x2], x0
	jmp	.LBB0_239
.LBB0_7:
	jnz	x3, .LBB0_85
	jmp	.LBB0_8
.LBB0_8:
                                        // implicit-def: $rax
                                        // implicit-def: $x6
	jz	x4, .LBB0_239
	jmp	.LBB0_9
.LBB0_9:
	jnz	x1, .LBB0_13
	jmp	.LBB0_10
.LBB0_10:
	mov	r0, x0
	mov	r1, x4
	call	__udivsi3
	jz	x2, .LBB0_12
	jmp	.LBB0_11
.LBB0_11:
	mul	x4, rax
	sub	x0, x4
	mov	r0, x2
add	r0, 4
	mov	[r0], x0
	mov	[x2], 0
.LBB0_12:
	mov	x6, 0
	jmp	.LBB0_239
.LBB0_13:
	mov	x5, x4
add	x5, -1
	mov	r0, x4
	mov	r1, x5
	call	__bit_and
	jnz	rax, .LBB0_49
	jmp	.LBB0_14
.LBB0_14:
	jz	x2, .LBB0_16
	jmp	.LBB0_15
.LBB0_15:
	mov	r0, x5
	mov	r1, x0
	call	__bit_and
	mov	r0, x2
add	r0, 4
	mov	[r0], rax
	mov	[x2], x1
.LBB0_16:
	mov	r1, 0
	sub	r1, x4
	mov	x6, 0
	mov	r0, x4
	call	__bit_and
	mov	x3, rax
	mov	x5, 1
	mov	x1, 1
	jl	x3, x6, .LBB0_18
// %bb.17:
	mov	x1, 0
.LBB0_18:
	mov	r0, x1
	mul	r0, -2147483648
	mov	x4, x3
	sub	x4, r0
	mov	r0, x4
	div	r0, 4096
	mov	r1, x1
	mul	r1, 524288
	add	r1, r0
	mov	r0, r1
	div	r0, 16
	mul	r0, 16
	sub	r1, r0
	mov	r0, x4
	div	r0, 16
	mov	r2, x1
	mul	r2, 134217728
	add	r2, r0
	mul	r1, 4096
	mov	r0, r2
	div	r0, 16
	mul	r0, 16
	sub	r2, r0
	mul	r2, 16
	mov	r0, x4
	div	r0, 1048576
	mov	r3, x1
	mul	r3, 2048
	add	r3, r0
	add	r2, r1
	mov	r0, r3
	div	r0, 16
	mul	r0, 16
	sub	r3, r0
	mul	r3, 1048576
	add	r3, r2
	mov	r1, x4
	div	r1, 268435456
	mov	r0, x1
	mul	r0, 8
	add	r0, r1
	mul	r0, 268435456
	add	r0, r3
	mov	r1, 0
	sub	r1, r0
	call	__bit_or
	jl	rax, x6, .LBB0_20
// %bb.19:
	mov	x5, 0
.LBB0_20:
	mov	r0, x5
	mul	r0, -2147483648
	sub	rax, r0
	mov	x7, -2147483648
	mov	x13, 1
	mov	r0, 1
	je	rax, x7, .LBB0_22
// %bb.21:
	mov	r0, 0
.LBB0_22:
	mov	x8, 0
	sub	x8, r0
	jl	x8, x6, .LBB0_24
// %bb.23:
	mov	x13, 0
.LBB0_24:
	mov	r1, -1431655766
	mov	r0, x3
	call	__bit_and
	mov	r1, 0
	sub	r1, rax
	mov	r0, rax
	call	__bit_or
	mov	r0, 1
	mov	x9, 1
	jl	rax, x6, .LBB0_26
// %bb.25:
	mov	x9, 0
.LBB0_26:
	mov	r1, x9
	mul	r1, -2147483648
	sub	rax, r1
	je	rax, x7, .LBB0_28
// %bb.27:
	mov	r0, 0
.LBB0_28:
	mov	x2, 0
	sub	x2, r0
	mov	x10, 1
	mov	x14, 1
	jl	x2, x6, .LBB0_30
// %bb.29:
	mov	x14, 0
.LBB0_30:
	mul	x13, -2147483648
	mov	r0, x14
	mul	r0, -2147483648
	mov	x11, x2
	mov	r1, -858993460
	sub	x11, r0
	mov	r0, x3
	call	__bit_and
	mov	r1, 0
	sub	r1, rax
	mov	r0, rax
	call	__bit_or
	jl	rax, x6, .LBB0_32
// %bb.31:
	mov	x10, 0
.LBB0_32:
	mov	x12, x8
	sub	x12, x13
	div	x11, 2
	mul	x14, 1073741824
	mov	r0, x10
	mul	r0, -2147483648
	sub	rax, r0
	mov	r2, 1
	mov	r0, 1
	je	rax, x7, .LBB0_34
// %bb.33:
	mov	r0, 0
.LBB0_34:
	div	x12, 2
	mov	x3, 0
	sub	x3, r0
	add	x11, x14
	jl	x3, x6, .LBB0_36
// %bb.35:
	mov	r2, 0
.LBB0_36:
	mul	x12, 2
	mul	x11, 2
	mov	r0, r2
	mul	r0, -2147483648
	mov	r1, x3
	sub	r1, r0
	div	r1, 2
	mul	r2, 1073741824
	add	r2, r1
	mov	r0, x4
	div	r0, 256
	mov	r1, x1
	mul	r1, 8388608
	add	r1, r0
	mul	r2, 2
	mov	r0, r1
	div	r0, 256
	mul	r0, 256
	sub	r1, r0
	mul	r1, 256
	mov	r3, x4
	div	r3, 16777216
	mov	r0, x1
	mul	r0, 128
	add	r0, r3
	mul	r0, 16777216
	add	r0, r1
	mov	r1, 0
	sub	r1, r0
	sub	x3, r2
	call	__bit_or
	mov	r1, 1
	mov	r0, 1
	jl	rax, x6, .LBB0_38
// %bb.37:
	mov	r0, 0
.LBB0_38:
	sub	x8, x12
	sub	x2, x11
	mov	r2, r0
	mul	r2, -2147483648
	sub	rax, r2
	add	x3, x10
	je	rax, x7, .LBB0_40
// %bb.39:
	mov	r1, 0
.LBB0_40:
	add	x8, x5
	add	x2, x9
	mul	x3, 2
	mov	x9, 0
	sub	x9, r1
	mov	x5, 1
	mov	r1, 1
	jl	x9, x6, .LBB0_42
// %bb.41:
	mov	r1, 0
.LBB0_42:
	mul	x8, 4
	add	x2, x3
	mul	r1, -2147483648
	mov	r2, x9
	sub	r2, r1
	div	r2, 2
	mul	r2, 2
	sub	x9, r2
	div	x4, 65536
	mul	x1, 32768
	add	x1, x4
	mul	x1, 65536
	mov	r1, 0
	sub	r1, x1
	add	x9, r0
	mov	r0, x1
	call	__bit_or
	jl	rax, x6, .LBB0_44
// %bb.43:
	mov	x5, 0
.LBB0_44:
	add	x2, x8
	mul	x9, 8
	mov	r0, x5
	mul	r0, -2147483648
	sub	rax, r0
	mov	r1, 1
	mov	r2, 1
	je	rax, x7, .LBB0_46
// %bb.45:
	mov	r2, 0
.LBB0_46:
	mov	r0, 0
	sub	r0, r2
	add	x2, x9
	jl	r0, x6, .LBB0_48
// %bb.47:
	mov	r1, 0
.LBB0_48:
	mul	r1, -2147483648
	mov	r2, r0
	sub	r2, r1
	div	r2, 2
	mul	r2, 2
	sub	r0, r2
	add	r0, x5
	mul	r0, 16
	add	x2, r0
	mov	r0, x0
	mov	r1, x2
	call	__bit_shr
	jmp	.LBB0_239
.LBB0_49:
	mov	x8, 0
	mov	x5, 1
	mov	r0, 1
	jl	x4, x8, .LBB0_51
// %bb.50:
	mov	r0, 0
.LBB0_51:
	mov	r2, r0
	mul	r2, 1073741824
	mul	r0, -2147483648
	mov	r1, x4
	sub	r1, r0
	div	r1, 2
	add	r1, r2
	mov	r0, x4
	call	__bit_or
	jl	rax, x8, .LBB0_53
// %bb.52:
	mov	x5, 0
.LBB0_53:
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
	jl	rax, x8, .LBB0_55
// %bb.54:
	mov	r1, 0
.LBB0_55:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 16
	mul	r1, 134217728
	add	r1, r2
	mov	r0, rax
	call	__bit_or
	jl	rax, x8, .LBB0_57
// %bb.56:
	mov	x5, 0
.LBB0_57:
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
	jl	rax, x8, .LBB0_59
// %bb.58:
	mov	r1, 0
.LBB0_59:
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
	jl	x5, x8, .LBB0_61
// %bb.60:
	mov	x6, 0
.LBB0_61:
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
	mov	x7, 1
	mov	r0, 1
	jl	x5, x8, .LBB0_63
// %bb.62:
	mov	r0, 0
.LBB0_63:
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
	jl	x9, x8, .LBB0_65
// %bb.64:
	mov	x7, 0
.LBB0_65:
	mov	x5, 1
	mov	r0, 1
	jl	x0, x8, .LBB0_67
// %bb.66:
	mov	r0, 0
.LBB0_67:
	mov	r2, r0
	mul	r2, 1073741824
	mul	r0, -2147483648
	mov	r1, x0
	sub	r1, r0
	div	r1, 2
	add	r1, r2
	mov	r0, x0
	call	__bit_or
	jl	rax, x8, .LBB0_69
// %bb.68:
	mov	x5, 0
.LBB0_69:
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
	mov	x5, 0
.LBB0_73:
	mov	x10, x7
	mov	r0, x5
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 256
	mul	x5, 8388608
	add	x5, r1
	mul	x10, -2147483648
	mov	r0, rax
	mov	r1, x5
	call	__bit_or
	mov	x6, 1
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
	sub	x9, x10
	mov	r0, rax
	call	__bit_or
	mov	x5, rax
	jl	x5, x8, .LBB0_77
// %bb.76:
	mov	x6, 0
.LBB0_77:
	div	x9, 16777216
	mov	r0, x6
	mul	r0, -2147483648
	mov	r1, x5
	sub	r1, r0
	div	r1, 2
	mul	x6, 1073741824
	add	x6, r1
	mov	r1, 1431655765
	mul	x7, 128
	mov	r0, x6
	call	__bit_and
	sub	x5, rax
	mov	x6, 1
	mov	r0, 1
	jl	x5, x8, .LBB0_79
// %bb.78:
	mov	r0, 0
.LBB0_79:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x5
	sub	r2, r1
	div	r2, 4
	mul	r0, 536870912
	add	r0, r2
	mov	r1, 858993459
	add	x9, x7
	call	__bit_and
	mov	r1, 858993459
	mov	x7, rax
	mov	r0, x5
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
	jl	r0, x8, .LBB0_81
// %bb.80:
	mov	x6, 0
.LBB0_81:
	mov	r1, x6
	mul	r1, -2147483648
	sub	r0, r1
	div	r0, 16777216
	mul	x6, 128
	add	x6, r0
	sub	x6, x9
	mov	r0, x6
add	r0, -2147483648
	mov	r1, -2147483617
	jl	r0, r1, .LBB0_84
	jmp	.LBB0_82
.LBB0_82:
	mov	rax, 0
	mov	x6, 0
	jz	x2, .LBB0_239
	jmp	.LBB0_83
.LBB0_83:
	mov	[x2], x1
add	x2, 4
	mov	[x2], x0
	jmp	.LBB0_239
.LBB0_84:
	mov	x5, 31
	sub	x5, x6
add	x6, 1
	mov	r0, x1
	mov	r1, x5
	call	__bit_shl
	mov	x8, rax
	mov	r0, x0
	mov	r1, x6
	call	__bit_shr
	mov	x7, rax
	mov	r0, x0
	mov	r1, x5
	call	__bit_shl
	mov	x0, rax
	mov	r0, x1
	mov	r1, x6
	call	__bit_shr
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	x0, rax
	mov	x5, 0
	mov	x1, x8
	jmp	.LBB0_200
.LBB0_85:
	jnz	x4, .LBB0_163
	jmp	.LBB0_86
.LBB0_86:
	mov	x5, x3
add	x5, -1
	mov	r0, x3
	mov	r1, x5
	call	__bit_and
	jnz	rax, .LBB0_127
	jmp	.LBB0_87
.LBB0_87:
	jz	x2, .LBB0_89
	jmp	.LBB0_88
.LBB0_88:
	mov	r0, x5
	mov	r1, x1
	call	__bit_and
	mov	[x2], rax
add	x2, 4
	mov	[x2], 0
.LBB0_89:
	mov	x2, 1
	mov	rax, x1
	mov	x6, x0
	je	x3, x2, .LBB0_239
	jmp	.LBB0_90
.LBB0_90:
	mov	r1, 0
	sub	r1, x3
	mov	x5, 0
	mov	r0, x3
	call	__bit_and
	mov	x4, rax
	jl	x4, x5, .LBB0_92
// %bb.91:
	mov	x2, 0
.LBB0_92:
	mov	r0, x2
	mul	r0, -2147483648
	mov	x6, x4
	sub	x6, r0
	mov	r0, x6
	div	r0, 4096
	mov	r1, x2
	mul	r1, 524288
	add	r1, r0
	mov	r0, r1
	div	r0, 16
	mul	r0, 16
	sub	r1, r0
	mov	r0, x6
	div	r0, 16
	mov	r2, x2
	mul	r2, 134217728
	add	r2, r0
	mul	r1, 4096
	mov	r0, r2
	div	r0, 16
	mul	r0, 16
	sub	r2, r0
	mul	r2, 16
	mov	r0, x6
	div	r0, 1048576
	mov	r3, x2
	mul	r3, 2048
	add	r3, r0
	add	r2, r1
	mov	r0, r3
	div	r0, 16
	mul	r0, 16
	sub	r3, r0
	mul	r3, 1048576
	add	r3, r2
	mov	r1, x6
	div	r1, 268435456
	mov	r0, x2
	mul	r0, 8
	add	r0, r1
	mul	r0, 268435456
	add	r0, r3
	mov	r1, 0
	sub	r1, r0
	call	__bit_or
	mov	r0, 1
	mov	x9, 1
	jl	rax, x5, .LBB0_94
// %bb.93:
	mov	x9, 0
.LBB0_94:
	mov	r1, x9
	mul	r1, -2147483648
	sub	rax, r1
	mov	x7, -2147483648
	je	rax, x7, .LBB0_96
// %bb.95:
	mov	r0, 0
.LBB0_96:
	mov	x8, 0
	sub	x8, r0
	mov	x10, 1
	mov	x12, 1
	jl	x8, x5, .LBB0_98
// %bb.97:
	mov	x12, 0
.LBB0_98:
	mov	r1, -1431655766
	mov	r0, x4
	call	__bit_and
	mov	r1, 0
	sub	r1, rax
	mov	r0, rax
	call	__bit_or
	jl	rax, x5, .LBB0_100
// %bb.99:
	mov	x10, 0
.LBB0_100:
	mov	r0, x10
	mul	r0, -2147483648
	sub	rax, r0
	mov	x15, 1
	mov	r0, 1
	je	rax, x7, .LBB0_102
// %bb.101:
	mov	r0, 0
.LBB0_102:
	mov	x3, 0
	sub	x3, r0
	jl	x3, x5, .LBB0_104
// %bb.103:
	mov	x15, 0
.LBB0_104:
	mul	x12, -2147483648
	mov	r0, x15
	mul	r0, -2147483648
	mov	x11, x3
	mov	r1, -858993460
	sub	x11, r0
	mov	r0, x4
	call	__bit_and
	mov	r1, 0
	sub	r1, rax
	mov	r0, rax
	call	__bit_or
	mov	r0, 1
	mov	x13, 1
	jl	rax, x5, .LBB0_106
// %bb.105:
	mov	x13, 0
.LBB0_106:
	mov	x14, x8
	sub	x14, x12
	div	x11, 2
	mov	r1, x13
	mul	r1, -2147483648
	sub	rax, r1
	mul	x15, 1073741824
	je	rax, x7, .LBB0_108
// %bb.107:
	mov	r0, 0
.LBB0_108:
	div	x14, 2
	add	x11, x15
	mov	x12, 0
	sub	x12, r0
	mov	x4, 1
	mov	r2, 1
	jl	x12, x5, .LBB0_110
// %bb.109:
	mov	r2, 0
.LBB0_110:
	mul	x14, 2
	mul	x11, 2
	mov	r0, r2
	mul	r0, -2147483648
	mov	r1, x12
	sub	r1, r0
	div	r1, 2
	mul	r2, 1073741824
	add	r2, r1
	mov	r0, x6
	div	r0, 256
	mov	r1, x2
	mul	r1, 8388608
	add	r1, r0
	mul	r2, 2
	mov	r0, r1
	div	r0, 256
	mul	r0, 256
	sub	r1, r0
	mul	r1, 256
	mov	r3, x6
	div	r3, 16777216
	mov	r0, x2
	mul	r0, 128
	add	r0, r3
	mul	r0, 16777216
	add	r0, r1
	mov	r1, 0
	sub	r1, r0
	sub	x12, r2
	call	__bit_or
	jl	rax, x5, .LBB0_112
// %bb.111:
	mov	x4, 0
.LBB0_112:
	sub	x8, x14
	sub	x3, x11
	add	x12, x13
	mov	r0, x4
	mul	r0, -2147483648
	sub	rax, r0
	mov	r0, 1
	mov	r1, 1
	je	rax, x7, .LBB0_114
// %bb.113:
	mov	r1, 0
.LBB0_114:
	add	x8, x9
	add	x3, x10
	mov	x9, 0
	sub	x9, r1
	mul	x12, 2
	jl	x9, x5, .LBB0_116
// %bb.115:
	mov	r0, 0
.LBB0_116:
	mul	x8, 4
	add	x3, x12
	mul	r0, -2147483648
	mov	r1, x9
	sub	r1, r0
	div	r1, 2
	mul	r1, 2
	sub	x9, r1
	div	x6, 65536
	mul	x2, 32768
	add	x2, x6
	mul	x2, 65536
	mov	r1, 0
	sub	r1, x2
	add	x9, x4
	mov	r0, x2
	call	__bit_or
	mov	r1, 1
	mov	r0, 1
	jl	rax, x5, .LBB0_118
// %bb.117:
	mov	r0, 0
.LBB0_118:
	add	x3, x8
	mov	r2, r0
	mul	r2, -2147483648
	sub	rax, r2
	mul	x9, 8
	je	rax, x7, .LBB0_120
// %bb.119:
	mov	r1, 0
.LBB0_120:
	add	x3, x9
	mov	r2, 0
	sub	r2, r1
	mov	x2, 1
	mov	r1, 1
	jl	r2, x5, .LBB0_122
// %bb.121:
	mov	r1, 0
.LBB0_122:
	mul	r1, -2147483648
	mov	r3, r2
	sub	r3, r1
	div	r3, 2
	mul	r3, 2
	sub	r2, r3
	add	r2, r0
	mul	r2, 16
	add	x3, r2
	mov	r0, x0
	mov	r1, x3
	call	__bit_shr
	mov	r1, -1
	sub	r1, x3
	mov	x6, rax
	jl	r1, x5, .LBB0_124
// %bb.123:
	mov	x2, 0
.LBB0_124:
	mov	r0, x2
	mul	r0, -2147483648
	mov	r2, r1
	sub	r2, r0
	div	r2, 32
	mul	x2, 67108864
	add	x2, r2
	mul	x2, 32
	sub	r1, x2
	mul	x0, 2
	mov	r0, x0
	call	__bit_shl
	mov	x0, rax
	mov	r0, 1
	jl	x3, x5, .LBB0_126
// %bb.125:
	mov	r0, 0
.LBB0_126:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x3
	sub	r2, r1
	div	r2, 32
	mul	r0, 67108864
	add	r0, r2
	mul	r0, 32
	sub	x3, r0
	mov	r0, x1
	mov	r1, x3
	call	__bit_shr
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	jmp	.LBB0_239
.LBB0_127:
	mov	x5, 0
	mov	x6, 1
	mov	r0, 1
	jl	x3, x5, .LBB0_129
// %bb.128:
	mov	r0, 0
.LBB0_129:
	mov	r2, r0
	mul	r2, 1073741824
	mul	r0, -2147483648
	mov	r1, x3
	sub	r1, r0
	div	r1, 2
	add	r1, r2
	mov	r0, x3
	call	__bit_or
	jl	rax, x5, .LBB0_131
// %bb.130:
	mov	x6, 0
.LBB0_131:
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
	jl	rax, x5, .LBB0_133
// %bb.132:
	mov	r1, 0
.LBB0_133:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 16
	mul	r1, 134217728
	add	r1, r2
	mov	r0, rax
	call	__bit_or
	jl	rax, x5, .LBB0_135
// %bb.134:
	mov	x6, 0
.LBB0_135:
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
	jl	rax, x5, .LBB0_137
// %bb.136:
	mov	r1, 0
.LBB0_137:
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
	jl	x6, x5, .LBB0_139
// %bb.138:
	mov	x7, 0
.LBB0_139:
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
	mov	x10, 1
	mov	r0, 1
	jl	x6, x5, .LBB0_141
// %bb.140:
	mov	r0, 0
.LBB0_141:
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
	jl	x9, x5, .LBB0_143
// %bb.142:
	mov	x10, 0
.LBB0_143:
	mov	x6, 1
	mov	r0, 1
	jl	x0, x5, .LBB0_145
// %bb.144:
	mov	r0, 0
.LBB0_145:
	mov	r2, r0
	mul	r2, 1073741824
	mul	r0, -2147483648
	mov	r1, x0
	sub	r1, r0
	div	r1, 2
	add	r1, r2
	mov	r0, x0
	call	__bit_or
	jl	rax, x5, .LBB0_147
// %bb.146:
	mov	x6, 0
.LBB0_147:
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
	jl	rax, x5, .LBB0_149
// %bb.148:
	mov	r1, 0
.LBB0_149:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 16
	mul	r1, 134217728
	add	r1, r2
	mov	r0, rax
	call	__bit_or
	jl	rax, x5, .LBB0_151
// %bb.150:
	mov	x6, 0
.LBB0_151:
	mov	x8, x10
	mov	r0, x6
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 256
	mul	x6, 8388608
	add	x6, r1
	mul	x8, -2147483648
	mov	r0, rax
	mov	r1, x6
	call	__bit_or
	mov	x7, 1
	mov	r1, 1
	jl	rax, x5, .LBB0_153
// %bb.152:
	mov	r1, 0
.LBB0_153:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 65536
	mul	r1, 32768
	add	r1, r2
	sub	x9, x8
	mov	r0, rax
	call	__bit_or
	mov	x6, rax
	jl	x6, x5, .LBB0_155
// %bb.154:
	mov	x7, 0
.LBB0_155:
	div	x9, 16777216
	mov	r0, x7
	mul	r0, -2147483648
	mov	r1, x6
	sub	r1, r0
	div	r1, 2
	mul	x7, 1073741824
	add	x7, r1
	mov	r1, 1431655765
	mul	x10, 128
	mov	r0, x7
	call	__bit_and
	sub	x6, rax
	mov	x8, 1
	mov	r0, 1
	jl	x6, x5, .LBB0_157
// %bb.156:
	mov	r0, 0
.LBB0_157:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x6
	sub	r2, r1
	div	r2, 4
	mul	r0, 536870912
	add	r0, r2
	mov	r1, 858993459
	add	x9, x10
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
	jl	r0, x5, .LBB0_159
// %bb.158:
	mov	x8, 0
.LBB0_159:
	mov	r1, x8
	mul	r1, -2147483648
	sub	r0, r1
	div	r0, 16777216
	mul	x8, 128
	add	x8, r0
	sub	x8, x9
add	x8, 33
	mov	x6, 32
	mov	x7, 0
	je	x8, x6, .LBB0_200
	jmp	.LBB0_160
.LBB0_160:
	mov	r0, 31
	jg	x8, r0, .LBB0_162
	jmp	.LBB0_161
.LBB0_161:
	sub	x6, x8
	mov	r0, x1
	mov	r1, x6
	call	__bit_shl
	mov	x9, rax
	mov	r0, x0
	mov	r1, x8
	call	__bit_shr
	mov	x7, rax
	mov	r0, x0
	mov	r1, x6
	call	__bit_shl
	mov	x0, rax
	mov	r0, x1
	mov	r1, x8
	call	__bit_shr
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	x0, rax
	mov	x6, x8
	mov	x1, x9
	jmp	.LBB0_200
.LBB0_162:
	mov	x6, 64
	sub	x6, x8
	mov	r0, x1
	mov	r1, x6
	call	__bit_shl
	mov	x5, rax
	mov	r0, x0
	mov	r1, x6
	call	__bit_shl
	mov	x6, x8
add	x6, -32
	mov	x7, rax
	mov	r0, x1
	mov	r1, x6
	call	__bit_shr
	mov	r0, x7
	mov	r1, rax
	call	__bit_or
	mov	x1, rax
	mov	r0, x0
	mov	r1, x6
	call	__bit_shr
	mov	x0, rax
	mov	x6, x8
	mov	x7, 0
	jmp	.LBB0_200
.LBB0_163:
	mov	x7, 0
	mov	x5, 1
	mov	r0, 1
	jl	x4, x7, .LBB0_165
// %bb.164:
	mov	r0, 0
.LBB0_165:
	mov	r2, r0
	mul	r2, 1073741824
	mul	r0, -2147483648
	mov	r1, x4
	sub	r1, r0
	div	r1, 2
	add	r1, r2
	mov	r0, x4
	call	__bit_or
	jl	rax, x7, .LBB0_167
// %bb.166:
	mov	x5, 0
.LBB0_167:
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
	jl	rax, x7, .LBB0_169
// %bb.168:
	mov	r1, 0
.LBB0_169:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 16
	mul	r1, 134217728
	add	r1, r2
	mov	r0, rax
	call	__bit_or
	jl	rax, x7, .LBB0_171
// %bb.170:
	mov	x5, 0
.LBB0_171:
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
	jl	rax, x7, .LBB0_173
// %bb.172:
	mov	r1, 0
.LBB0_173:
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
	jl	x5, x7, .LBB0_175
// %bb.174:
	mov	x6, 0
.LBB0_175:
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
	mov	x9, 1
	mov	r0, 1
	jl	x5, x7, .LBB0_177
// %bb.176:
	mov	r0, 0
.LBB0_177:
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
	mov	x8, rax
	div	x8, 16
	add	x8, rax
	mov	r0, x8
	div	r0, 16
	mul	r0, 16
	mov	r1, x8
	mov	r2, x8
	div	r2, 256
	sub	r1, r0
	mov	r0, r2
	div	r0, 16
	mul	r0, 16
	sub	r2, r0
	mul	r2, 256
	mov	r0, x8
	div	r0, 65536
	add	r2, r1
	mov	r1, r0
	div	r1, 16
	mul	r1, 16
	sub	r0, r1
	mul	r0, 65536
	div	x8, 16777216
	add	r0, r2
	mov	r1, x8
	div	r1, 16
	mul	r1, 16
	sub	x8, r1
	mul	x8, 16777216
	add	x8, r0
	mul	x8, 16843009
	jl	x8, x7, .LBB0_179
// %bb.178:
	mov	x9, 0
.LBB0_179:
	mov	x5, 1
	mov	r0, 1
	jl	x0, x7, .LBB0_181
// %bb.180:
	mov	r0, 0
.LBB0_181:
	mov	r2, r0
	mul	r2, 1073741824
	mul	r0, -2147483648
	mov	r1, x0
	sub	r1, r0
	div	r1, 2
	add	r1, r2
	mov	r0, x0
	call	__bit_or
	jl	rax, x7, .LBB0_183
// %bb.182:
	mov	x5, 0
.LBB0_183:
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
	jl	rax, x7, .LBB0_185
// %bb.184:
	mov	r1, 0
.LBB0_185:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 16
	mul	r1, 134217728
	add	r1, r2
	mov	r0, rax
	call	__bit_or
	jl	rax, x7, .LBB0_187
// %bb.186:
	mov	x5, 0
.LBB0_187:
	mov	x10, x9
	mov	r0, x5
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 256
	mul	x5, 8388608
	add	x5, r1
	mul	x10, -2147483648
	mov	r0, rax
	mov	r1, x5
	call	__bit_or
	mov	x6, 1
	mov	r1, 1
	jl	rax, x7, .LBB0_189
// %bb.188:
	mov	r1, 0
.LBB0_189:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 65536
	mul	r1, 32768
	add	r1, r2
	sub	x8, x10
	mov	r0, rax
	call	__bit_or
	mov	x5, rax
	jl	x5, x7, .LBB0_191
// %bb.190:
	mov	x6, 0
.LBB0_191:
	div	x8, 16777216
	mov	r0, x6
	mul	r0, -2147483648
	mov	r1, x5
	sub	r1, r0
	div	r1, 2
	mul	x6, 1073741824
	add	x6, r1
	mov	r1, 1431655765
	mul	x9, 128
	mov	r0, x6
	call	__bit_and
	sub	x5, rax
	mov	x10, 1
	mov	r0, 1
	jl	x5, x7, .LBB0_193
// %bb.192:
	mov	r0, 0
.LBB0_193:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x5
	sub	r2, r1
	div	r2, 4
	mul	r0, 536870912
	add	r0, r2
	mov	r1, 858993459
	add	x8, x9
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
	jl	r0, x7, .LBB0_195
// %bb.194:
	mov	x10, 0
.LBB0_195:
	mov	r1, x10
	mul	r1, -2147483648
	sub	r0, r1
	div	r0, 16777216
	mul	x10, 128
	add	x10, r0
	sub	x10, x8
	mov	r0, x10
add	r0, -2147483648
	mov	r1, -2147483616
	jl	r0, r1, .LBB0_198
	jmp	.LBB0_196
.LBB0_196:
	mov	rax, 0
	mov	x6, 0
	jz	x2, .LBB0_239
	jmp	.LBB0_197
.LBB0_197:
	mov	[x2], x1
add	x2, 4
	mov	[x2], x0
	jmp	.LBB0_239
.LBB0_198:
	mov	x8, x10
add	x8, 1
	mov	x5, 0
	mov	x6, 32
	je	x8, x6, .LBB0_200
	jmp	.LBB0_199
.LBB0_199:
	mov	x6, 31
	sub	x6, x10
	mov	r0, x1
	mov	r1, x6
	call	__bit_shl
	mov	x9, rax
	mov	r0, x0
	mov	r1, x8
	call	__bit_shr
	mov	x7, rax
	mov	r0, x0
	mov	r1, x6
	call	__bit_shl
	mov	x0, rax
	mov	r0, x1
	mov	r1, x8
	call	__bit_shr
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	x0, rax
	mov	x6, x8
	mov	x1, x9
.LBB0_200:
	mov	x9, 0
	mov	x10, -2147483648
	mov	x8, 0
.LBB0_201:                              // =>This Inner Loop Header: Depth=1
	mov	r1, 1
	mov	r0, 1
	jl	x0, x9, .LBB0_203
// %bb.202:                             //   in Loop: Header=BB0_201 Depth=1
	mov	r0, 0
.LBB0_203:                              //   in Loop: Header=BB0_201 Depth=1
	mov	r2, r0
	mul	r2, -2147483648
	mov	r3, x0
	sub	r3, r2
	je	r3, x10, .LBB0_205
// %bb.204:                             //   in Loop: Header=BB0_201 Depth=1
	mov	r1, 0
.LBB0_205:                              //   in Loop: Header=BB0_201 Depth=1
	mov	r2, 0
	sub	r2, r1
	mov	r1, 1
	mov	r5, 1
	jl	r2, x9, .LBB0_207
// %bb.206:                             //   in Loop: Header=BB0_201 Depth=1
	mov	r5, 0
.LBB0_207:                              //   in Loop: Header=BB0_201 Depth=1
	jl	x1, x9, .LBB0_209
// %bb.208:                             //   in Loop: Header=BB0_201 Depth=1
	mov	r1, 0
.LBB0_209:                              //   in Loop: Header=BB0_201 Depth=1
	mov	r3, r1
	mul	r3, -2147483648
	mov	r7, x1
	sub	r7, r3
	mov	r4, 1
	mov	r6, 1
	je	r7, x10, .LBB0_211
// %bb.210:                             //   in Loop: Header=BB0_201 Depth=1
	mov	r6, 0
.LBB0_211:                              //   in Loop: Header=BB0_201 Depth=1
	mov	r3, 0
	sub	r3, r6
	jl	r3, x9, .LBB0_213
// %bb.212:                             //   in Loop: Header=BB0_201 Depth=1
	mov	r4, 0
.LBB0_213:                              //   in Loop: Header=BB0_201 Depth=1
	mov	r6, 1
	mov	x12, 1
	jl	x5, x9, .LBB0_215
// %bb.214:                             //   in Loop: Header=BB0_201 Depth=1
	mov	x12, 0
.LBB0_215:                              //   in Loop: Header=BB0_201 Depth=1
	mov	r7, x12
	mul	r7, -2147483648
	mov	t0, x5
	sub	t0, r7
	je	t0, x10, .LBB0_217
// %bb.216:                             //   in Loop: Header=BB0_201 Depth=1
	mov	r6, 0
.LBB0_217:                              //   in Loop: Header=BB0_201 Depth=1
	mov	x13, 0
	sub	x13, r6
	mov	x11, 1
	mov	x14, 1
	jl	x13, x9, .LBB0_219
// %bb.218:                             //   in Loop: Header=BB0_201 Depth=1
	mov	x14, 0
.LBB0_219:                              //   in Loop: Header=BB0_201 Depth=1
	mov	r6, r5
	mul	r6, -2147483648
	mov	r7, r2
	sub	r7, r6
	div	r7, 2
	mul	r5, 1073741824
	add	r5, r7
	mul	r5, 2
	sub	r2, r5
	add	r2, r0
	mul	x7, 2
	add	x7, r2
	mov	r0, r4
	mul	r0, -2147483648
	mov	r2, r3
	sub	r2, r0
	div	r2, 2
	mul	r4, 1073741824
	add	r4, r2
	mul	r4, 2
	sub	r3, r4
	add	r3, r1
	mul	x0, 2
	mul	x5, 2
	add	x0, r3
	mov	r0, x8
	mov	r1, x5
	call	__bit_or
	mov	r2, -1
	sub	r2, x0
	mov	r3, -1
	sub	r3, x7
	mov	x5, rax
	mov	r0, x3
	mov	r1, x4
	call	__adddi3
	jl	t0, x9, .LBB0_221
// %bb.220:                             //   in Loop: Header=BB0_201 Depth=1
	mov	x11, 0
.LBB0_221:                              //   in Loop: Header=BB0_201 Depth=1
	mov	r0, x11
	mul	r0, -2147483648
	mov	r2, t0
	sub	r2, r0
	mov	r0, 1
	mov	r1, 1
	je	r2, x10, .LBB0_223
// %bb.222:                             //   in Loop: Header=BB0_201 Depth=1
	mov	r1, 0
.LBB0_223:                              //   in Loop: Header=BB0_201 Depth=1
	mov	x8, 0
	sub	x8, r1
	jl	x8, x9, .LBB0_225
// %bb.224:                             //   in Loop: Header=BB0_201 Depth=1
	mov	r0, 0
.LBB0_225:                              //   in Loop: Header=BB0_201 Depth=1
	mov	r2, x3
	mov	r3, x4
	jl	t0, x9, .LBB0_227
	jmp	.LBB0_226
.LBB0_226:                              //   in Loop: Header=BB0_201 Depth=1
	mov	r2, 0
	mov	r3, 0
.LBB0_227:                              //   in Loop: Header=BB0_201 Depth=1
	mov	r1, x14
	mul	r1, -2147483648
	mov	r4, x13
	sub	r4, r1
	div	r4, 2
	mul	x14, 1073741824
	add	x14, r4
	mul	x14, 2
	sub	x13, x14
	add	x13, x12
	mul	x1, 2
	add	x1, x13
	mov	r1, r0
	mul	r1, -2147483648
	mov	r4, x8
	sub	r4, r1
	div	r4, 2
	mul	r0, 1073741824
	add	r0, r4
	mul	r0, 2
	sub	x8, r0
	add	x8, x11
	mov	r0, x0
	mov	r1, x7
	call	__subdi3
add	x6, -1
	mov	x0, rax
	mov	x7, t0
	jnz	x6, .LBB0_201
	jmp	.LBB0_228
.LBB0_228:
	mov	r1, 0
	mov	r2, 1
	mov	r0, 1
	jl	x5, r1, .LBB0_230
// %bb.229:
	mov	r0, 0
.LBB0_230:
	mov	r3, r0
	mul	r3, -2147483648
	mov	r4, x5
	sub	r4, r3
	mov	r3, -2147483648
	je	r4, r3, .LBB0_232
// %bb.231:
	mov	r2, 0
.LBB0_232:
	mov	x6, 0
	sub	x6, r2
	mov	r2, 1
	jl	x6, r1, .LBB0_234
// %bb.233:
	mov	r2, 0
.LBB0_234:
	mul	x1, 2
	mov	r1, r2
	mul	r1, -2147483648
	mov	r3, x6
	sub	r3, r1
	div	r3, 2
	mul	r2, 1073741824
	add	r2, r3
	mul	r2, 2
	sub	x6, r2
	add	x6, r0
	mul	x5, 2
	jz	x2, .LBB0_236
	jmp	.LBB0_235
.LBB0_235:
	mov	[x2], x0
add	x2, 4
	mov	[x2], x7
.LBB0_236:
	add	x6, x1
	mov	r1, 0
	mov	r0, 1
	jl	x5, r1, .LBB0_238
// %bb.237:
	mov	r0, 0
.LBB0_238:
	mov	r1, r0
	mul	r1, 1073741824
	mul	r0, -2147483648
	sub	x5, r0
	div	x5, 2
	add	x5, r1
	mul	x5, 2
	mov	r0, x8
	mov	r1, x5
	call	__bit_or
.LBB0_239:
	mov	t0, x6
	mov	x15, [rsp]
	mov	x14, [rsp+4]
	mov	x13, [rsp+8]
	mov	x12, [rsp+12]
	mov	x11, [rsp+16]
	mov	x10, [rsp+20]
	mov	x9, [rsp+24]
	mov	x8, [rsp+28]
	mov	x7, [rsp+32]
	mov	x6, [rsp+36]
	mov	x5, [rsp+40]
	mov	x4, [rsp+44]
	mov	x3, [rsp+48]
	mov	x2, [rsp+52]
	mov	x1, [rsp+56]
	mov	x0, [rsp+60]
add	rsp, 64
	ret
// -- End function
