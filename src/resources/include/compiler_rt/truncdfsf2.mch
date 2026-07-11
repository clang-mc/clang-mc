#include "_ll_std"

// -- Begin function __truncdfsf2
__truncdfsf2:                           // @__truncdfsf2
// %bb.0:
sub	rsp, 40
	mov	[rsp+36], x0
	mov	[rsp+32], x1
	mov	[rsp+28], x2
	mov	[rsp+24], x3
	mov	[rsp+20], x4
	mov	[rsp+16], x5
	mov	[rsp+12], x6
	mov	[rsp+8], x7
	mov	[rsp+4], x8
	mov	[rsp], x9
	mov	x0, r1
	mov	x2, r0
	mov	r1, 0
	mov	r0, 1
	jl	x0, r1, .LBB0_2
// %bb.1:
	mov	r0, 0
.LBB0_2:
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
	mov	x4, r2
	sub	x4, r0
	mul	r2, 1048576
	mov	x1, x0
	mov	r0, x4
add	r0, 2147482751
	mov	r1, -2147483395
	sub	x1, r2
	jg	r0, r1, .LBB0_18
	jmp	.LBB0_3
.LBB0_3:
	mov	r2, 0
	mov	r0, 1
	mov	r3, 1
	jl	x2, r2, .LBB0_5
// %bb.4:
	mov	r3, 0
.LBB0_5:
	mov	r4, r3
	mul	r4, 4
	mul	r3, -2147483648
	mov	r1, x2
	sub	r1, r3
	div	r1, 536870912
	add	r1, r4
	mul	x1, 8
	jl	x2, r2, .LBB0_7
// %bb.6:
	mov	r0, 0
.LBB0_7:
	mov	r2, r0
	mul	r2, 4
	mul	r0, -2147483648
	mov	r3, x2
	sub	r3, r0
	div	r3, 536870912
	add	r3, r2
	mul	r3, 536870912
	sub	x2, r3
	mov	r0, x2
add	r0, -2147483648
	mov	r2, -1879048191
	add	r1, x1
	jl	r0, r2, .LBB0_9
	jmp	.LBB0_8
.LBB0_8:
add	r1, 1
	jmp	.LBB0_13
.LBB0_9:
	mov	r0, 268435456
	jne	x2, r0, .LBB0_13
	jmp	.LBB0_10
.LBB0_10:
	mov	r2, 0
	mov	r0, 1
	jl	r1, r2, .LBB0_12
// %bb.11:
	mov	r0, 0
.LBB0_12:
	mov	r2, r0
	mul	r2, 1073741824
	mul	r0, -2147483648
	mov	r3, r1
	sub	r3, r0
	div	r3, 2
	add	r3, r2
	mul	r3, 2
	mov	r0, r1
	sub	r0, r3
	add	r1, r0
.LBB0_13:
	mov	r0, 8388607
	mov	x3, 0
	jg	r1, r0, .LBB0_15
	jmp	.LBB0_14
.LBB0_14:
	mov	x3, r1
.LBB0_15:
add	r1, -2147483648
	mov	r2, -2139095041
	mov	r0, -895
	jg	r1, r2, .LBB0_17
	jmp	.LBB0_16
.LBB0_16:
	mov	r0, -896
.LBB0_17:
	add	r0, x4
	jmp	.LBB0_86
.LBB0_18:
	mov	r0, x2
	mov	r1, x1
	call	__bit_or
	jz	rax, .LBB0_25
	jmp	.LBB0_19
.LBB0_19:
	mov	r0, 2047
	jne	x4, r0, .LBB0_25
	jmp	.LBB0_20
.LBB0_20:
	mov	r1, 0
	mov	r0, 1
	mov	r2, 1
	jl	x2, r1, .LBB0_22
// %bb.21:
	mov	r2, 0
.LBB0_22:
	mov	r3, r2
	mul	r3, 4
	mul	r2, -2147483648
	sub	x2, r2
	div	x2, 536870912
	add	x2, r3
	mul	x1, 8
	add	x1, x2
	jl	x1, r1, .LBB0_24
// %bb.23:
	mov	r0, 0
.LBB0_24:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x1
	sub	r2, r1
	div	r2, 4194304
	mul	r0, 512
	add	r0, r2
	mov	r1, r0
	div	r1, 2
	mul	r1, 2
	sub	r0, r1
	mul	r0, 4194304
	sub	x1, r0
add	x1, 4194304
	mov	r0, 255
	mov	x3, x1
	jmp	.LBB0_86
.LBB0_25:
	mov	r0, 255
	mov	r1, 1150
	mov	x3, 0
	jg	x4, r1, .LBB0_86
	jmp	.LBB0_26
.LBB0_26:
	mov	r1, 0
	mov	r0, 1
	mov	r2, 1
	je	x4, r1, .LBB0_28
// %bb.27:
	mov	r2, 0
.LBB0_28:
	jl	x1, r1, .LBB0_30
// %bb.29:
	mov	r0, 0
.LBB0_30:
	mov	r1, 896
	jz	x4, .LBB0_32
	jmp	.LBB0_31
.LBB0_31:
	mov	r1, 897
.LBB0_32:
	jnz	r2, .LBB0_34
	jmp	.LBB0_33
.LBB0_33:
	mov	r2, r0
	mul	r2, -2147483648
	mov	r3, x1
	sub	r3, r2
	mul	r0, 2048
	div	r3, 1048576
	add	r3, r0
	mov	r0, r3
	div	r0, 2
	mul	r0, 2
	sub	r3, r0
	mul	r3, 1048576
	sub	x1, r3
add	x1, 1048576
.LBB0_34:
	mov	x8, r1
	sub	x8, x4
	mov	r2, 52
	mov	r0, 0
	jg	x8, r2, .LBB0_86
	jmp	.LBB0_35
.LBB0_35:
	mov	x7, 0
	je	r1, x4, .LBB0_53
	jmp	.LBB0_36
.LBB0_36:
	mov	x4, 64
	sub	x4, x8
	mov	x9, 0
	mov	x3, 1
	mov	r0, 1
	jl	x4, x9, .LBB0_38
// %bb.37:
	mov	r0, 0
.LBB0_38:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x4
	sub	r2, r1
	div	r2, 32
	mul	r0, 67108864
	add	r0, r2
	mul	r0, 32
	sub	x4, r0
	mov	r1, 0
	sub	r1, x4
	mov	r0, x4
	call	__bit_or
	jl	rax, x9, .LBB0_40
// %bb.39:
	mov	x3, 0
.LBB0_40:
	mov	r0, x3
	mul	r0, -2147483648
	sub	rax, r0
	mov	x5, -2147483648
	mov	r1, 1
	mov	r2, 1
	je	rax, x5, .LBB0_42
// %bb.41:
	mov	r2, 0
.LBB0_42:
	mov	r0, 0
	sub	r0, r2
	jl	r0, x9, .LBB0_44
// %bb.43:
	mov	r1, 0
.LBB0_44:
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
	mov	x3, 0
	mov	r1, 32
	sub	r1, x4
	sub	x3, r0
	mov	r0, r1
	div	r0, 32
	mul	r0, 32
	sub	r1, r0
	mov	x6, 32
	mov	r0, x2
	call	__bit_shr
	mov	r0, rax
	mov	r1, x3
	call	__bit_and
	mov	x3, rax
	mov	r0, x1
	mov	r1, x4
	call	__bit_shl
	mov	r0, rax
	mov	r1, x3
	call	__bit_or
	sub	x6, x8
	mov	r2, 1
	mov	r0, 1
	jl	x6, x9, .LBB0_46
// %bb.45:
	mov	r0, 0
.LBB0_46:
	mov	r1, r0
	mul	r1, -2147483648
	sub	x6, r1
	je	x6, x5, .LBB0_48
// %bb.47:
	mov	r2, 0
.LBB0_48:
	mov	r1, 0
	sub	r1, r2
	mov	x3, 1
	mov	r2, 1
	jl	r1, x9, .LBB0_50
// %bb.49:
	mov	r2, 0
.LBB0_50:
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
	mov	x5, 0
	sub	x5, r1
	mov	r0, rax
	mov	r1, x5
	call	__bit_and
	mov	x6, rax
	mov	r0, x2
	mov	r1, x4
	call	__bit_shl
	mov	r1, -1
	sub	r1, x5
	mov	x4, rax
	mov	r0, x4
	call	__bit_and
	add	x6, rax
	mov	r0, x4
	mov	r1, x5
	call	__bit_and
	mov	r0, rax
	mov	r1, x6
	call	__bit_or
	jne	rax, x9, .LBB0_52
// %bb.51:
	mov	x3, 0
.LBB0_52:
.LBB0_53:
	mov	x5, 1
	mov	r0, 1
	jl	x8, x7, .LBB0_55
// %bb.54:
	mov	r0, 0
.LBB0_55:
	mov	r1, r0
	mul	r1, 67108864
	mul	r0, -2147483648
	mov	r2, x8
	sub	r2, r0
	div	r2, 32
	add	r2, r1
	mul	r2, 32
	mov	x4, x8
	sub	x4, r2
	mov	r1, 0
	sub	r1, x4
	mov	r0, x4
	call	__bit_or
	jl	rax, x7, .LBB0_57
// %bb.56:
	mov	x5, 0
.LBB0_57:
	mov	r0, x5
	mul	r0, -2147483648
	sub	rax, r0
	mov	x6, -2147483648
	mov	r1, 1
	mov	r2, 1
	je	rax, x6, .LBB0_59
// %bb.58:
	mov	r2, 0
.LBB0_59:
	mov	r0, 0
	sub	r0, r2
	jl	r0, x7, .LBB0_61
// %bb.60:
	mov	r1, 0
.LBB0_61:
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
	mov	r1, 32
	sub	r1, x4
	mov	x5, 0
	mov	r2, r1
	div	r2, 32
	mul	r2, 32
	sub	r1, r2
	sub	x5, r0
	mov	r0, x1
	call	__bit_shl
	mov	r0, rax
	mov	r1, x5
	call	__bit_and
	mov	x5, rax
	mov	r0, x2
	mov	r1, x4
	call	__bit_shr
	mov	r0, rax
	mov	r1, x5
	call	__bit_or
add	x8, -32
	mov	r2, 1
	mov	r0, 1
	jl	x8, x7, .LBB0_63
// %bb.62:
	mov	r0, 0
.LBB0_63:
	mov	r1, r0
	mul	r1, -2147483648
	sub	x8, r1
	je	x8, x6, .LBB0_65
// %bb.64:
	mov	r2, 0
.LBB0_65:
	mov	r1, 0
	sub	r1, r2
	mov	x8, 1
	mov	r2, 1
	jl	r1, x7, .LBB0_67
// %bb.66:
	mov	r2, 0
.LBB0_67:
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
	mov	x5, 0
	sub	x5, r1
	mov	r0, rax
	mov	r1, x5
	call	__bit_and
	mov	x6, rax
	mov	r0, x1
	mov	r1, x4
	call	__bit_shr
	mov	r1, -1
	sub	r1, x5
	mov	x1, rax
	mov	r0, x1
	call	__bit_and
	mov	x2, rax
	add	x2, x6
	mov	r0, x1
	mov	r1, x5
	call	__bit_and
	mov	x1, rax
	jl	x3, x7, .LBB0_69
// %bb.68:
	mov	x8, 0
.LBB0_69:
	mov	r0, x8
	mul	r0, 1073741824
	mul	x8, -2147483648
	mov	r1, x3
	sub	r1, x8
	div	r1, 2
	add	r1, r0
	mul	r1, 2
	sub	x3, r1
	mov	r0, 1
	jl	x2, x7, .LBB0_71
// %bb.70:
	mov	r0, 0
.LBB0_71:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x2
	sub	r2, r1
	div	r2, 536870912
	mul	r0, 4
	add	r0, r2
	mul	x1, 8
	add	x1, r0
	mul	r0, 536870912
	sub	x2, r0
	mov	r0, x2
	mov	r1, x3
	call	__bit_or
	mov	r0, rax
add	r0, -2147483648
	mov	r1, -1879048191
	jl	r0, r1, .LBB0_73
	jmp	.LBB0_72
.LBB0_72:
add	x1, 1
	jmp	.LBB0_77
.LBB0_73:
	mov	r0, 268435456
	jne	rax, r0, .LBB0_77
	jmp	.LBB0_74
.LBB0_74:
	mov	r1, 0
	mov	r0, 1
	jl	x1, r1, .LBB0_76
// %bb.75:
	mov	r0, 0
.LBB0_76:
	mov	r1, r0
	mul	r1, 1073741824
	mul	r0, -2147483648
	mov	r2, x1
	sub	r2, r0
	div	r2, 2
	add	r2, r1
	mul	r2, 2
	mov	r0, x1
	sub	r0, r2
	add	x1, r0
.LBB0_77:
	mov	r1, 0
	mov	r0, 1
	jl	x1, r1, .LBB0_79
// %bb.78:
	mov	r0, 0
.LBB0_79:
	mov	r1, r0
	mul	r1, 256
	mul	r0, -2147483648
	mov	r2, x1
	sub	r2, r0
	div	r2, 8388608
	add	r2, r1
	mov	r0, r2
	div	r0, 2
	mul	r0, 2
	sub	r2, r0
	mul	r2, 8388608
	add	r2, r2
	mov	x3, x1
	sub	x3, r2
	mov	r0, 8388607
add	x3, 8388608
	jg	x1, r0, .LBB0_81
	jmp	.LBB0_80
.LBB0_80:
	mov	x3, x1
.LBB0_81:
add	x1, -2147483648
	mov	r2, -2139095041
	mov	r1, 1
	mov	r0, 1
	jg	x1, r2, .LBB0_83
// %bb.82:
	mov	r0, 0
.LBB0_83:
	mov	r2, 0
	jl	r0, r2, .LBB0_85
// %bb.84:
	mov	r1, 0
.LBB0_85:
	mov	r2, r1
	mul	r2, -2147483648
	mov	r3, r0
	sub	r3, r2
	div	r3, 2
	mul	r1, 1073741824
	add	r1, r3
	mul	r1, 2
	sub	r0, r1
.LBB0_86:
	mov	r3, 0
	mov	r4, 1
	mov	r2, 1
	jl	x0, r3, .LBB0_88
// %bb.87:
	mov	r2, 0
.LBB0_88:
	mov	r1, r2
	mul	r1, -2147483648
	sub	x0, r1
	mov	r1, -2147483648
	je	x0, r1, .LBB0_90
// %bb.89:
	mov	r4, 0
.LBB0_90:
	mov	r1, 0
	sub	r1, r4
	mov	r4, 1
	jl	r1, r3, .LBB0_92
// %bb.91:
	mov	r4, 0
.LBB0_92:
	mov	r3, r4
	mul	r3, -2147483648
	mov	r5, r1
	sub	r5, r3
	div	r5, 2
	mul	r4, 1073741824
	add	r4, r5
	mul	r4, 2
	sub	r1, r4
	add	r1, r2
	mul	r1, -2147483648
	mul	r0, 8388608
	call	__bit_or
	mov	r0, rax
	mov	r1, x3
	call	__bit_or
	mov	x9, [rsp]
	mov	x8, [rsp+4]
	mov	x7, [rsp+8]
	mov	x6, [rsp+12]
	mov	x5, [rsp+16]
	mov	x4, [rsp+20]
	mov	x3, [rsp+24]
	mov	x2, [rsp+28]
	mov	x1, [rsp+32]
	mov	x0, [rsp+36]
add	rsp, 40
	ret
// -- End function
