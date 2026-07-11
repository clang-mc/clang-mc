#include "_ll_std"

// -- Begin function __udivdi3
__udivdi3:                              // @__udivdi3
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
	mov	x0, r3
	mov	x1, r2
	mov	x3, r1
	mov	x2, r0
	mov	r0, x1
	mov	r1, x0
	call	__bit_or
	mov	x12, 64
	mov	x13, 64
	jz	rax, .LBB0_36
	jmp	.LBB0_1
.LBB0_1:
	mov	x4, 0
	mov	x5, 1
	mov	r0, 1
	jl	x1, x4, .LBB0_3
// %bb.2:
	mov	r0, 0
.LBB0_3:
	mov	r2, r0
	mul	r2, 1073741824
	mul	r0, -2147483648
	mov	r1, x1
	sub	r1, r0
	div	r1, 2
	add	r1, r2
	mov	r0, x1
	call	__bit_or
	jl	rax, x4, .LBB0_5
// %bb.4:
	mov	x5, 0
.LBB0_5:
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
	jl	rax, x4, .LBB0_7
// %bb.6:
	mov	r1, 0
.LBB0_7:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 16
	mul	r1, 134217728
	add	r1, r2
	mov	r0, rax
	call	__bit_or
	jl	rax, x4, .LBB0_9
// %bb.8:
	mov	x5, 0
.LBB0_9:
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
	jl	rax, x4, .LBB0_11
// %bb.10:
	mov	r1, 0
.LBB0_11:
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
	jl	x5, x4, .LBB0_13
// %bb.12:
	mov	x6, 0
.LBB0_13:
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
	jl	x5, x4, .LBB0_15
// %bb.14:
	mov	r0, 0
.LBB0_15:
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
	mov	x7, rax
	div	x7, 16
	add	x7, rax
	mov	r0, x7
	div	r0, 16
	mul	r0, 16
	mov	r1, x7
	mov	r2, x7
	div	r2, 256
	sub	r1, r0
	mov	r0, r2
	div	r0, 16
	mul	r0, 16
	sub	r2, r0
	mul	r2, 256
	mov	r0, x7
	div	r0, 65536
	add	r2, r1
	mov	r1, r0
	div	r1, 16
	mul	r1, 16
	sub	r0, r1
	mul	r0, 65536
	div	x7, 16777216
	add	r0, r2
	mov	r1, x7
	div	r1, 16
	mul	r1, 16
	sub	x7, r1
	mul	x7, 16777216
	add	x7, r0
	mul	x7, 16843009
	jl	x7, x4, .LBB0_17
// %bb.16:
	mov	x8, 0
.LBB0_17:
	mov	x5, 1
	mov	r0, 1
	jl	x0, x4, .LBB0_19
// %bb.18:
	mov	r0, 0
.LBB0_19:
	mov	r2, r0
	mul	r2, 1073741824
	mul	r0, -2147483648
	mov	r1, x0
	sub	r1, r0
	div	r1, 2
	add	r1, r2
	mov	r0, x0
	call	__bit_or
	jl	rax, x4, .LBB0_21
// %bb.20:
	mov	x5, 0
.LBB0_21:
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
	jl	rax, x4, .LBB0_23
// %bb.22:
	mov	r1, 0
.LBB0_23:
	mov	x6, x8
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 16
	mul	r1, 134217728
	add	r1, r2
	mul	x6, -2147483648
	mov	r0, rax
	call	__bit_or
	jl	rax, x4, .LBB0_25
// %bb.24:
	mov	x5, 0
.LBB0_25:
	mov	r0, x5
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 256
	mul	x5, 8388608
	add	x5, r1
	sub	x7, x6
	mov	r0, rax
	mov	r1, x5
	call	__bit_or
	mov	x6, 1
	mov	r1, 1
	jl	rax, x4, .LBB0_27
// %bb.26:
	mov	r1, 0
.LBB0_27:
	div	x7, 16777216
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
	mov	x5, rax
	jl	x5, x4, .LBB0_29
// %bb.28:
	mov	x6, 0
.LBB0_29:
	add	x7, x8
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
	jl	x5, x4, .LBB0_31
// %bb.30:
	mov	r0, 0
.LBB0_31:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x5
	sub	r2, r1
	div	r2, 4
	mul	r0, 536870912
	add	r0, r2
	mov	r1, 858993459
	sub	x13, x7
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
	jl	r0, x4, .LBB0_33
// %bb.32:
	mov	x8, 0
.LBB0_33:
	mov	r1, x8
	mul	r1, -2147483648
	sub	r0, r1
	div	r0, 16777216
	mul	x8, 128
	add	x8, r0
	add	x8, x13
	mov	r1, 32
	sub	r1, x8
	mov	r0, 1
	jne	x0, x4, .LBB0_35
// %bb.34:
	mov	r0, 0
.LBB0_35:
	sub	x4, r0
	mov	r0, x4
	call	__bit_and
	add	x13, rax
.LBB0_36:
	mov	r0, x2
	mov	r1, x3
	call	__bit_or
	jz	rax, .LBB0_72
	jmp	.LBB0_37
.LBB0_37:
	mov	x4, 0
	mov	x5, 1
	mov	r0, 1
	jl	x2, x4, .LBB0_39
// %bb.38:
	mov	r0, 0
.LBB0_39:
	mov	r2, r0
	mul	r2, 1073741824
	mul	r0, -2147483648
	mov	r1, x2
	sub	r1, r0
	div	r1, 2
	add	r1, r2
	mov	r0, x2
	call	__bit_or
	jl	rax, x4, .LBB0_41
// %bb.40:
	mov	x5, 0
.LBB0_41:
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
	jl	rax, x4, .LBB0_43
// %bb.42:
	mov	r1, 0
.LBB0_43:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 16
	mul	r1, 134217728
	add	r1, r2
	mov	r0, rax
	call	__bit_or
	jl	rax, x4, .LBB0_45
// %bb.44:
	mov	x5, 0
.LBB0_45:
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
	jl	rax, x4, .LBB0_47
// %bb.46:
	mov	r1, 0
.LBB0_47:
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
	jl	x5, x4, .LBB0_49
// %bb.48:
	mov	x6, 0
.LBB0_49:
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
	jl	x5, x4, .LBB0_51
// %bb.50:
	mov	r0, 0
.LBB0_51:
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
	mov	x7, rax
	div	x7, 16
	add	x7, rax
	mov	r0, x7
	div	r0, 16
	mul	r0, 16
	mov	r1, x7
	mov	r2, x7
	div	r2, 256
	sub	r1, r0
	mov	r0, r2
	div	r0, 16
	mul	r0, 16
	sub	r2, r0
	mul	r2, 256
	mov	r0, x7
	div	r0, 65536
	add	r2, r1
	mov	r1, r0
	div	r1, 16
	mul	r1, 16
	sub	r0, r1
	mul	r0, 65536
	div	x7, 16777216
	add	r0, r2
	mov	r1, x7
	div	r1, 16
	mul	r1, 16
	sub	x7, r1
	mul	x7, 16777216
	add	x7, r0
	mul	x7, 16843009
	jl	x7, x4, .LBB0_53
// %bb.52:
	mov	x8, 0
.LBB0_53:
	mov	x5, 1
	mov	r0, 1
	jl	x3, x4, .LBB0_55
// %bb.54:
	mov	r0, 0
.LBB0_55:
	mov	r2, r0
	mul	r2, 1073741824
	mul	r0, -2147483648
	mov	r1, x3
	sub	r1, r0
	div	r1, 2
	add	r1, r2
	mov	r0, x3
	call	__bit_or
	jl	rax, x4, .LBB0_57
// %bb.56:
	mov	x5, 0
.LBB0_57:
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
	jl	rax, x4, .LBB0_59
// %bb.58:
	mov	r1, 0
.LBB0_59:
	mov	x6, x8
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 16
	mul	r1, 134217728
	add	r1, r2
	mul	x6, -2147483648
	mov	r0, rax
	call	__bit_or
	jl	rax, x4, .LBB0_61
// %bb.60:
	mov	x5, 0
.LBB0_61:
	mov	r0, x5
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 256
	mul	x5, 8388608
	add	x5, r1
	sub	x7, x6
	mov	r0, rax
	mov	r1, x5
	call	__bit_or
	mov	x6, 1
	mov	r1, 1
	jl	rax, x4, .LBB0_63
// %bb.62:
	mov	r1, 0
.LBB0_63:
	div	x7, 16777216
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
	mov	x5, rax
	jl	x5, x4, .LBB0_65
// %bb.64:
	mov	x6, 0
.LBB0_65:
	add	x7, x8
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
	jl	x5, x4, .LBB0_67
// %bb.66:
	mov	r0, 0
.LBB0_67:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x5
	sub	r2, r1
	div	r2, 4
	mul	r0, 536870912
	add	r0, r2
	mov	r1, 858993459
	sub	x12, x7
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
	jl	r0, x4, .LBB0_69
// %bb.68:
	mov	x8, 0
.LBB0_69:
	mov	r1, x8
	mul	r1, -2147483648
	sub	r0, r1
	div	r0, 16777216
	mul	x8, 128
	add	x8, r0
	add	x8, x12
	mov	r1, 32
	sub	r1, x8
	mov	r0, 1
	jne	x3, x4, .LBB0_71
// %bb.70:
	mov	r0, 0
.LBB0_71:
	sub	x4, r0
	mov	r0, x4
	call	__bit_and
	add	x12, rax
.LBB0_72:
	mov	x14, x13
	sub	x14, x12
	mov	rax, 0
	mov	r0, x14
add	r0, -2147483648
	mov	r1, -2147483585
	mov	x7, 0
	jg	r0, r1, .LBB0_139
	jmp	.LBB0_73
.LBB0_73:
	mov	r0, 63
	mov	rax, x2
	mov	x7, x3
	je	x14, r0, .LBB0_139
	jmp	.LBB0_74
.LBB0_74:
	mov	x6, x14
add	x6, 1
	mov	x4, 0
	mov	x5, 1
	mov	r0, 1
	jl	x6, x4, .LBB0_76
// %bb.75:
	mov	r0, 0
.LBB0_76:
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
	jl	rax, x4, .LBB0_78
// %bb.77:
	mov	x5, 0
.LBB0_78:
	mov	r0, x5
	mul	r0, -2147483648
	sub	rax, r0
	mov	x15, -2147483648
	mov	r1, 1
	mov	r2, 1
	je	rax, x15, .LBB0_80
// %bb.79:
	mov	r2, 0
.LBB0_80:
	mov	r0, 0
	sub	r0, r2
	jl	r0, x4, .LBB0_82
// %bb.81:
	mov	r1, 0
.LBB0_82:
	mov	r2, r1
	mul	r2, -2147483648
	mov	r3, r0
	sub	r3, r2
	div	r3, 2
	mul	r1, 1073741824
	add	r1, r3
	mul	r1, 2
	sub	r0, r1
	add	r0, x5
	mov	x5, 0
	mov	r1, 32
	sub	r1, x6
	sub	x5, r0
	mov	r0, r1
	div	r0, 32
	mul	r0, 32
	sub	r1, r0
	mov	x8, 32
	mov	r0, x3
	call	__bit_shl
	mov	r0, rax
	mov	r1, x5
	call	__bit_and
	mov	x5, rax
	mov	r0, x2
	mov	r1, x6
	call	__bit_shr
	mov	r0, rax
	mov	r1, x5
	call	__bit_or
	mov	r1, x14
add	r1, -31
	mov	r2, 1
	mov	r0, 1
	jl	r1, x4, .LBB0_84
// %bb.83:
	mov	r0, 0
.LBB0_84:
	mov	r3, r0
	mul	r3, -2147483648
	sub	r1, r3
	je	r1, x15, .LBB0_86
// %bb.85:
	mov	r2, 0
.LBB0_86:
	mov	r1, 0
	sub	r1, r2
	mov	x11, 1
	mov	r2, 1
	jl	r1, x4, .LBB0_88
// %bb.87:
	mov	r2, 0
.LBB0_88:
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
	mov	x9, 0
	sub	x9, r1
	mov	r0, rax
	mov	r1, x9
	call	__bit_and
	mov	x5, rax
	mov	r0, x3
	mov	r1, x6
	call	__bit_shr
	mov	x6, rax
	mov	r1, -1
	sub	r1, x9
	mov	x7, -1
	mov	r0, x6
	call	__bit_and
	mov	x10, rax
	mov	r0, x6
	mov	r1, x9
	call	__bit_and
	mov	x9, 63
	sub	x9, x14
	mov	r1, 32
	mov	x6, rax
	mov	r0, x9
	call	__udivsi3
	mul	rax, 32
	sub	x9, rax
	mov	r1, 0
	sub	r1, x9
	mov	r0, x9
	call	__bit_or
	jl	rax, x4, .LBB0_90
// %bb.89:
	mov	x11, 0
.LBB0_90:
	mov	r0, x11
	mul	r0, -2147483648
	sub	rax, r0
	mov	r1, 1
	mov	r2, 1
	je	rax, x15, .LBB0_92
// %bb.91:
	mov	r2, 0
.LBB0_92:
	mov	r0, 0
	sub	r0, r2
	jl	r0, x4, .LBB0_94
// %bb.93:
	mov	r1, 0
.LBB0_94:
	mov	r2, r1
	mul	r2, -2147483648
	mov	r3, r0
	sub	r3, r2
	div	r3, 2
	mul	r1, 1073741824
	add	r1, r3
	mul	r1, 2
	sub	r0, r1
	add	r0, x11
	sub	x8, x9
	mov	x11, 0
	mov	r1, x8
	div	r1, 32
	mul	r1, 32
	sub	x8, r1
	sub	x11, r0
	mov	r0, x2
	mov	r1, x8
	call	__bit_shr
	mov	r0, rax
	mov	r1, x11
	call	__bit_and
	mov	x8, rax
	mov	r0, x3
	mov	r1, x9
	call	__bit_shl
	mov	r0, rax
	mov	r1, x8
	call	__bit_or
	mov	r1, 31
	sub	r1, x14
	mov	r2, 1
	mov	r0, 1
	jl	r1, x4, .LBB0_96
// %bb.95:
	mov	r0, 0
.LBB0_96:
	mov	r3, r0
	mul	r3, -2147483648
	sub	r1, r3
	je	r1, x15, .LBB0_98
// %bb.97:
	mov	r2, 0
.LBB0_98:
	mov	r1, 0
	sub	r1, r2
	mov	r2, 1
	jl	r1, x4, .LBB0_100
// %bb.99:
	mov	r2, 0
.LBB0_100:
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
	mov	x3, 0
	sub	x3, r1
	add	x5, x10
	mov	r0, rax
	mov	r1, x3
	call	__bit_and
	mov	x8, rax
	mov	r0, x2
	mov	r1, x9
	call	__bit_shl
	sub	x7, x3
	mov	x2, rax
	mov	r0, x2
	mov	r1, x7
	call	__bit_and
	mov	x7, rax
	add	x7, x8
	mov	r0, x2
	mov	r1, x3
	call	__bit_and
	mov	x2, rax
	sub	x12, x13
add	x12, -1
	mov	x3, -2147483648
	mov	x8, 0
	mov	r1, 0
.LBB0_101:                              // =>This Inner Loop Header: Depth=1
	mov	r2, 1
	mov	r0, 1
	jl	x7, x8, .LBB0_103
// %bb.102:                             //   in Loop: Header=BB0_101 Depth=1
	mov	r0, 0
.LBB0_103:                              //   in Loop: Header=BB0_101 Depth=1
	mov	r3, r0
	mul	r3, -2147483648
	mov	r4, x7
	sub	r4, r3
	je	r4, x3, .LBB0_105
// %bb.104:                             //   in Loop: Header=BB0_101 Depth=1
	mov	r2, 0
.LBB0_105:                              //   in Loop: Header=BB0_101 Depth=1
	mov	r3, 0
	sub	r3, r2
	mov	r2, 1
	mov	r7, 1
	jl	r3, x8, .LBB0_107
// %bb.106:                             //   in Loop: Header=BB0_101 Depth=1
	mov	r7, 0
.LBB0_107:                              //   in Loop: Header=BB0_101 Depth=1
	jl	x5, x8, .LBB0_109
// %bb.108:                             //   in Loop: Header=BB0_101 Depth=1
	mov	r2, 0
.LBB0_109:                              //   in Loop: Header=BB0_101 Depth=1
	mov	r4, r2
	mul	r4, -2147483648
	mov	r6, x5
	sub	r6, r4
	mov	r5, 1
	mov	r4, 1
	je	r6, x3, .LBB0_111
// %bb.110:                             //   in Loop: Header=BB0_101 Depth=1
	mov	r4, 0
.LBB0_111:                              //   in Loop: Header=BB0_101 Depth=1
	mov	r6, 0
	sub	r6, r4
	jl	r6, x8, .LBB0_113
// %bb.112:                             //   in Loop: Header=BB0_101 Depth=1
	mov	r5, 0
.LBB0_113:                              //   in Loop: Header=BB0_101 Depth=1
	mov	t1, 1
	mov	r4, 1
	jl	x2, x8, .LBB0_115
// %bb.114:                             //   in Loop: Header=BB0_101 Depth=1
	mov	r4, 0
.LBB0_115:                              //   in Loop: Header=BB0_101 Depth=1
	mov	t0, r4
	mul	t0, -2147483648
	mov	t2, x2
	sub	t2, t0
	je	t2, x3, .LBB0_117
// %bb.116:                             //   in Loop: Header=BB0_101 Depth=1
	mov	t1, 0
.LBB0_117:                              //   in Loop: Header=BB0_101 Depth=1
	mov	t0, 0
	sub	t0, t1
	mov	x9, 1
	mov	t1, 1
	jl	t0, x8, .LBB0_119
// %bb.118:                             //   in Loop: Header=BB0_101 Depth=1
	mov	t1, 0
.LBB0_119:                              //   in Loop: Header=BB0_101 Depth=1
	mov	t2, r7
	mul	t2, -2147483648
	mov	t3, r3
	sub	t3, t2
	div	t3, 2
	mul	r7, 1073741824
	add	r7, t3
	mul	r7, 2
	sub	r3, r7
	add	r3, r0
	mul	x5, 2
	add	x5, r3
	mov	r0, r5
	mul	r0, -2147483648
	mov	r3, r6
	sub	r3, r0
	div	r3, 2
	mul	r5, 1073741824
	add	r5, r3
	mul	r5, 2
	sub	r6, r5
	add	r6, r2
	mul	x6, 2
	add	x6, r6
	mov	r0, t1
	mul	r0, -2147483648
	mov	r2, t0
	sub	r2, r0
	div	r2, 2
	mul	t1, 1073741824
	add	t1, r2
	mul	t1, 2
	sub	t0, t1
	add	t0, r4
	mul	x7, 2
	add	x7, t0
	mul	x2, 2
	mov	r0, x7
	call	__bit_or
	mov	x7, rax
	mov	r0, x2
	mov	r1, x4
	call	__bit_or
	mov	r3, -1
	sub	r3, x6
	mov	r2, -1
	sub	r2, x5
	mov	x2, rax
	mov	r0, x1
	mov	r1, x0
	call	__adddi3
	jl	t0, x8, .LBB0_121
// %bb.120:                             //   in Loop: Header=BB0_101 Depth=1
	mov	x9, 0
.LBB0_121:                              //   in Loop: Header=BB0_101 Depth=1
	mov	r0, x9
	mul	r0, -2147483648
	mov	r1, t0
	sub	r1, r0
	mov	x10, 1
	mov	r0, 1
	je	r1, x3, .LBB0_123
// %bb.122:                             //   in Loop: Header=BB0_101 Depth=1
	mov	r0, 0
.LBB0_123:                              //   in Loop: Header=BB0_101 Depth=1
	mov	x4, 0
	sub	x4, r0
	jl	x4, x8, .LBB0_125
// %bb.124:                             //   in Loop: Header=BB0_101 Depth=1
	mov	x10, 0
.LBB0_125:                              //   in Loop: Header=BB0_101 Depth=1
	mov	r2, x1
	mov	r3, x0
	jl	t0, x8, .LBB0_127
	jmp	.LBB0_126
.LBB0_126:                              //   in Loop: Header=BB0_101 Depth=1
	mov	r2, 0
	mov	r3, 0
.LBB0_127:                              //   in Loop: Header=BB0_101 Depth=1
	mov	r0, x5
	mov	r1, x6
	call	__subdi3
	mov	x5, rax
	mov	x6, t0
add	x12, 1
	mov	r1, 1
	mov	r0, 1
	je	x12, x8, .LBB0_129
// %bb.128:                             //   in Loop: Header=BB0_101 Depth=1
	mov	r0, 0
.LBB0_129:                              //   in Loop: Header=BB0_101 Depth=1
	jl	r0, x8, .LBB0_131
// %bb.130:                             //   in Loop: Header=BB0_101 Depth=1
	mov	r1, 0
.LBB0_131:                              //   in Loop: Header=BB0_101 Depth=1
	mov	r2, x10
	mul	r2, -2147483648
	mov	r3, x4
	sub	r3, r2
	div	r3, 2
	mul	x10, 1073741824
	add	x10, r3
	mul	x10, 2
	sub	x4, x10
	add	x4, x9
	mov	r2, r1
	mul	r2, -2147483648
	mov	r3, r0
	sub	r3, r2
	div	r3, 2
	mul	r1, 1073741824
	add	r1, r3
	mul	r1, 2
	sub	r0, r1
	mov	r1, 0
	jz	r0, .LBB0_101
	jmp	.LBB0_132
.LBB0_132:
	mov	r2, 0
	mov	r3, 1
	mov	r0, 1
	jl	x2, r2, .LBB0_134
// %bb.133:
	mov	r0, 0
.LBB0_134:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r4, x2
	sub	r4, r1
	mov	r1, -2147483648
	je	r4, r1, .LBB0_136
// %bb.135:
	mov	r3, 0
.LBB0_136:
	mov	r1, 0
	sub	r1, r3
	mov	r3, 1
	jl	r1, r2, .LBB0_138
// %bb.137:
	mov	r3, 0
.LBB0_138:
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
	mul	x7, 2
	mul	x2, 2
	add	x7, r1
	mov	r0, x4
	mov	r1, x2
	call	__bit_or
.LBB0_139:
	mov	t0, x7
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
