#include "_ll_std"

// -- Begin function __adddf3
__adddf3:                               // @__adddf3
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
	mov	x1, r1
	mov	r1, 2147483647
	mov	x3, r3
	mov	x4, r2
	mov	x2, r0
	mov	r0, x1
	call	__bit_and
	mov	r1, 2147483647
	mov	x0, rax
	mov	r0, x3
	call	__bit_and
	mov	x5, rax
	mov	x6, 0
	mov	r2, 0
	mov	r3, -2146435072
	mov	x8, -2146435072
	mov	r0, x2
	mov	r1, x0
	call	__adddi3
	mov	x7, 1
	mov	r1, 1
	je	rax, x6, .LBB0_2
// %bb.1:
	mov	r1, 0
.LBB0_2:
	mov	r0, t0
add	r0, -2147483648
	mov	r2, 1048576
	jl	r0, r2, .LBB0_4
// %bb.3:
	mov	x7, 0
.LBB0_4:
	sub	r1, x7
	mov	r0, 1
	je	t0, x8, .LBB0_6
// %bb.5:
	mov	r0, 0
.LBB0_6:
	sub	x6, r0
	mov	r0, x6
	call	__bit_and
	mov	r2, 0
	mov	r3, -2146435072
	add	x7, rax
	mov	r0, x4
	mov	r1, x5
	call	__adddi3
	jnz	x7, .LBB0_14
	jmp	.LBB0_7
.LBB0_7:
	mov	r0, 0
	mov	x6, 1
	mov	r1, 1
	jne	rax, r0, .LBB0_9
// %bb.8:
	mov	r1, 0
.LBB0_9:
	mov	r2, t0
add	r2, -2147483648
	mov	r3, 1048576
	jg	r2, r3, .LBB0_11
// %bb.10:
	mov	x6, 0
.LBB0_11:
	sub	r1, x6
	mov	r3, -2146435072
	mov	r2, 1
	je	t0, r3, .LBB0_13
// %bb.12:
	mov	r2, 0
.LBB0_13:
	sub	r0, r2
	call	__bit_and
	add	x6, rax
	jnz	x6, .LBB0_39
	jmp	.LBB0_14
.LBB0_14:
	mov	r0, 0
	mov	x6, 1
	mov	r1, 1
	je	x2, r0, .LBB0_16
// %bb.15:
	mov	r1, 0
.LBB0_16:
	mov	r2, 2146435072
	jl	x0, r2, .LBB0_18
// %bb.17:
	mov	x6, 0
.LBB0_18:
	sub	r1, x6
	mov	r3, 1
	je	x0, r2, .LBB0_20
// %bb.19:
	mov	r3, 0
.LBB0_20:
	sub	r0, r3
	call	__bit_and
	add	x6, rax
	jnz	x6, .LBB0_22
	jmp	.LBB0_21
.LBB0_21:
	mov	r1, 524288
	mov	r0, x1
	call	__bit_or
	mov	t0, rax
	mov	rax, x2
	jmp	.LBB0_104
.LBB0_22:
	mov	r0, 0
	mov	x6, 1
	mov	r1, 1
	je	x4, r0, .LBB0_24
// %bb.23:
	mov	r1, 0
.LBB0_24:
	mov	r2, 2146435072
	jl	x5, r2, .LBB0_26
// %bb.25:
	mov	x6, 0
.LBB0_26:
	sub	r1, x6
	mov	r3, 1
	je	x5, r2, .LBB0_28
// %bb.27:
	mov	r3, 0
.LBB0_28:
	sub	r0, r3
	call	__bit_and
	add	x6, rax
	jnz	x6, .LBB0_30
	jmp	.LBB0_29
.LBB0_29:
	mov	r1, 524288
	mov	r0, x3
	call	__bit_or
	mov	t0, rax
	mov	rax, x4
	jmp	.LBB0_104
.LBB0_30:
	mov	r1, 2146435072
	mov	r0, x0
	call	__bit_xor
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	jnz	rax, .LBB0_34
	jmp	.LBB0_31
.LBB0_31:
	mov	r0, x4
	mov	r1, x2
	call	__bit_xor
	mov	x0, rax
	mov	r0, x3
	mov	r1, x1
	call	__bit_xor
	mov	r1, -2147483648
	mov	r0, rax
	call	__bit_xor
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	x0, 0
	mov	r0, 1
	je	rax, x0, .LBB0_33
// %bb.32:
	mov	r0, 0
.LBB0_33:
	mov	x3, 0
	sub	x3, r0
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
	jmp	.LBB0_104
.LBB0_34:
	mov	r1, 2146435072
	mov	r0, x5
	call	__bit_xor
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	rax, x4
	mov	t0, x3
	jz	r0, .LBB0_104
	jmp	.LBB0_35
.LBB0_35:
	mov	r0, x2
	mov	r1, x0
	call	__bit_or
	jnz	rax, .LBB0_38
	jmp	.LBB0_36
.LBB0_36:
	mov	r0, x4
	mov	r1, x5
	call	__bit_or
	mov	r0, rax
	mov	rax, x4
	mov	t0, x3
	jnz	r0, .LBB0_104
	jmp	.LBB0_37
.LBB0_37:
	mov	r0, x4
	mov	r1, x2
	call	__bit_and
	mov	x0, rax
	mov	r0, x3
	mov	r1, x1
	call	__bit_and
	mov	t0, rax
	mov	rax, x0
	jmp	.LBB0_104
.LBB0_38:
	mov	r0, x4
	mov	r1, x5
	call	__bit_or
	mov	r0, rax
	mov	rax, x2
	mov	t0, x1
	jz	r0, .LBB0_104
	jmp	.LBB0_39
.LBB0_39:
	mov	x9, x2
add	x9, -2147483648
	mov	x10, x4
add	x10, -2147483648
	mov	r0, 1
	mov	x6, 1
	jg	x10, x9, .LBB0_41
// %bb.40:
	mov	x6, 0
.LBB0_41:
	mov	r1, x0
add	r1, -2147483648
	mov	r2, x5
add	r2, -2147483648
	jg	r2, r1, .LBB0_43
// %bb.42:
	mov	r0, 0
.LBB0_43:
	mov	r1, x6
	sub	r1, r0
	mov	x8, 1
	mov	r0, 1
	je	x5, x0, .LBB0_45
// %bb.44:
	mov	r0, 0
.LBB0_45:
	mov	x7, 0
	sub	x7, r0
	mov	r0, x7
	call	__bit_and
	jg	x5, x0, .LBB0_47
// %bb.46:
	mov	x8, 0
.LBB0_47:
	sub	x6, x8
	mov	r0, x7
	mov	r1, x6
	call	__bit_and
	add	rax, x8
	mov	x6, x2
	mov	x8, x1
	jnz	rax, .LBB0_49
	jmp	.LBB0_48
.LBB0_48:
	mov	x6, x4
	mov	x8, x3
.LBB0_49:
	mov	r1, 1
	mov	x11, 1
	jg	x5, x0, .LBB0_51
// %bb.50:
	mov	x11, 0
.LBB0_51:
	jg	x10, x9, .LBB0_53
// %bb.52:
	mov	r1, 0
.LBB0_53:
	sub	r1, x11
	mov	r2, 1
	je	x5, x0, .LBB0_55
// %bb.54:
	mov	r2, 0
.LBB0_55:
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	x11, rax
	mov	x7, x4
	mov	x5, x3
	jnz	x11, .LBB0_57
	jmp	.LBB0_56
.LBB0_56:
	mov	x7, x2
	mov	x5, x1
.LBB0_57:
	mov	r1, 20
	mov	r0, x5
	call	__bit_shr
	mov	r1, 2047
	mov	r0, rax
	call	__bit_and
	mov	r1, 20
	mov	x0, rax
	mov	r0, x8
	call	__bit_shr
	mov	r1, 2047
	mov	r0, rax
	call	__bit_and
	mov	r1, 1048575
	mov	x10, rax
	mov	r0, x5
	call	__bit_and
	mov	r1, 1048575
	mov	x9, rax
	mov	r0, x8
	call	__bit_and
	mov	x8, rax
	jnz	x0, .LBB0_61
	jmp	.LBB0_58
.LBB0_58:
	mov	r1, 1
	mov	x12, 1
	mov	r0, x7
	call	__bit_shr
	mov	r0, x7
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	x0, rax
	mov	r0, x0
	call	__bit_shr
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	r1, 4
	mov	x0, rax
	mov	r0, x0
	call	__bit_shr
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	r1, 8
	mov	x0, rax
	mov	r0, x0
	call	__bit_shr
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	r1, 16
	mov	x0, rax
	mov	r0, x0
	call	__bit_shr
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	x0, rax
	mov	r0, x0
	call	__bit_shr
	mov	r1, 1431655765
	mov	r0, rax
	call	__bit_and
	sub	x0, rax
	mov	r1, 2
	mov	r0, x0
	call	__bit_shr
	mov	r1, 858993459
	mov	r0, rax
	call	__bit_and
	mov	r1, 858993459
	mov	x11, rax
	mov	r0, x0
	call	__bit_and
	add	x11, rax
	mov	r1, 4
	mov	r0, x11
	call	__bit_shr
	add	x11, rax
	mov	r1, 252645135
	mov	r0, x11
	call	__bit_and
	mul	rax, 16843009
	mov	r1, 24
	mov	r0, rax
	call	__bit_shr
	mov	x15, 64
	mov	r1, 1
	sub	x15, rax
	mov	r0, x9
	call	__bit_shr
	mov	r0, x9
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	x0, rax
	mov	r0, x0
	call	__bit_shr
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	r1, 4
	mov	x0, rax
	mov	r0, x0
	call	__bit_shr
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	r1, 8
	mov	x0, rax
	mov	r0, x0
	call	__bit_shr
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	r1, 16
	mov	x0, rax
	mov	r0, x0
	call	__bit_shr
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	x0, rax
	mov	r0, x0
	call	__bit_shr
	mov	r1, 1431655765
	mov	r0, rax
	call	__bit_and
	sub	x0, rax
	mov	r1, 2
	mov	r0, x0
	call	__bit_shr
	mov	r1, 858993459
	mov	r0, rax
	call	__bit_and
	mov	r1, 858993459
	mov	x11, rax
	mov	r0, x0
	call	__bit_and
	add	x11, rax
	mov	r1, 4
	mov	r0, x11
	call	__bit_shr
	add	x11, rax
	mov	r1, 252645135
	mov	r0, x11
	call	__bit_and
	mul	rax, 16843009
	mov	r1, 24
	mov	r0, rax
	call	__bit_shr
	add	rax, x15
	mov	x11, 32
	mov	r1, 32
	mov	x0, 0
	sub	r1, rax
	jne	x9, x0, .LBB0_60
// %bb.59:
	mov	x12, 0
.LBB0_60:
	mov	r0, 0
	sub	r0, x12
	call	__bit_and
	add	x15, rax
	mov	r0, x15
add	r0, -11
	mov	r1, 31
	call	__bit_and
	mov	x12, rax
	mov	r1, 0
	sub	r1, x12
	mov	r0, x12
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r0, x15
add	r0, -43
	mov	r1, 31
	mov	x13, rax
	call	__bit_shr
	sub	x11, x12
	mov	r1, 31
	mov	x14, rax
	mov	r0, x11
	call	__bit_and
	mov	r0, x7
	mov	r1, rax
	call	__bit_shr
	mov	r1, 0
	sub	r1, x13
	mov	r0, rax
	call	__bit_and
	mov	x11, rax
	mov	r0, x9
	mov	r1, x12
	call	__bit_shl
	mov	r0, rax
	mov	r1, x11
	call	__bit_or
	sub	x0, x14
	mov	r0, rax
	mov	r1, x0
	call	__bit_and
	mov	x9, rax
	mov	r0, x7
	mov	r1, x12
	call	__bit_shl
	mov	x7, rax
	mov	r0, x0
	call	__bit_not
	mov	r0, x7
	mov	r1, rax
	call	__bit_and
	mov	r0, x9
	mov	r1, rax
	call	__bit_or
	mov	x9, rax
	mov	r0, x7
	mov	r1, x0
	call	__bit_and
	mov	x7, rax
	mov	x0, 12
	sub	x0, x15
.LBB0_61:
	jnz	x10, .LBB0_65
	jmp	.LBB0_62
.LBB0_62:
	mov	r1, 1
	mov	x12, 1
	mov	r0, x6
	call	__bit_shr
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	x10, rax
	mov	r0, x10
	call	__bit_shr
	mov	r0, x10
	mov	r1, rax
	call	__bit_or
	mov	r1, 4
	mov	x10, rax
	mov	r0, x10
	call	__bit_shr
	mov	r0, x10
	mov	r1, rax
	call	__bit_or
	mov	r1, 8
	mov	x10, rax
	mov	r0, x10
	call	__bit_shr
	mov	r0, x10
	mov	r1, rax
	call	__bit_or
	mov	r1, 16
	mov	x10, rax
	mov	r0, x10
	call	__bit_shr
	mov	r0, x10
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	x10, rax
	mov	r0, x10
	call	__bit_shr
	mov	r1, 1431655765
	mov	r0, rax
	call	__bit_and
	sub	x10, rax
	mov	r1, 2
	mov	r0, x10
	call	__bit_shr
	mov	r1, 858993459
	mov	r0, rax
	call	__bit_and
	mov	r1, 858993459
	mov	x11, rax
	mov	r0, x10
	call	__bit_and
	add	x11, rax
	mov	r1, 4
	mov	r0, x11
	call	__bit_shr
	add	x11, rax
	mov	r1, 252645135
	mov	r0, x11
	call	__bit_and
	mul	rax, 16843009
	mov	r1, 24
	mov	r0, rax
	call	__bit_shr
	mov	x15, 64
	mov	r1, 1
	sub	x15, rax
	mov	r0, x8
	call	__bit_shr
	mov	r0, x8
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	x10, rax
	mov	r0, x10
	call	__bit_shr
	mov	r0, x10
	mov	r1, rax
	call	__bit_or
	mov	r1, 4
	mov	x10, rax
	mov	r0, x10
	call	__bit_shr
	mov	r0, x10
	mov	r1, rax
	call	__bit_or
	mov	r1, 8
	mov	x10, rax
	mov	r0, x10
	call	__bit_shr
	mov	r0, x10
	mov	r1, rax
	call	__bit_or
	mov	r1, 16
	mov	x10, rax
	mov	r0, x10
	call	__bit_shr
	mov	r0, x10
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	x10, rax
	mov	r0, x10
	call	__bit_shr
	mov	r1, 1431655765
	mov	r0, rax
	call	__bit_and
	sub	x10, rax
	mov	r1, 2
	mov	r0, x10
	call	__bit_shr
	mov	r1, 858993459
	mov	r0, rax
	call	__bit_and
	mov	r1, 858993459
	mov	x11, rax
	mov	r0, x10
	call	__bit_and
	add	x11, rax
	mov	r1, 4
	mov	r0, x11
	call	__bit_shr
	add	x11, rax
	mov	r1, 252645135
	mov	r0, x11
	call	__bit_and
	mul	rax, 16843009
	mov	r1, 24
	mov	r0, rax
	call	__bit_shr
	add	rax, x15
	mov	x11, 32
	mov	r1, 32
	mov	x10, 0
	sub	r1, rax
	jne	x8, x10, .LBB0_64
// %bb.63:
	mov	x12, 0
.LBB0_64:
	mov	r0, 0
	sub	r0, x12
	call	__bit_and
	add	x15, rax
	mov	r0, x15
add	r0, -11
	mov	r1, 31
	call	__bit_and
	mov	x12, rax
	mov	r1, 0
	sub	r1, x12
	mov	r0, x12
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r0, x15
add	r0, -43
	mov	r1, 31
	mov	x13, rax
	call	__bit_shr
	sub	x11, x12
	mov	r1, 31
	mov	x14, rax
	mov	r0, x11
	call	__bit_and
	mov	r0, x6
	mov	r1, rax
	call	__bit_shr
	mov	r1, 0
	sub	r1, x13
	mov	r0, rax
	call	__bit_and
	mov	x11, rax
	mov	r0, x8
	mov	r1, x12
	call	__bit_shl
	mov	r0, rax
	mov	r1, x11
	call	__bit_or
	sub	x10, x14
	mov	r0, rax
	mov	r1, x10
	call	__bit_and
	mov	x8, rax
	mov	r0, x6
	mov	r1, x12
	call	__bit_shl
	mov	x6, rax
	mov	r0, x10
	call	__bit_not
	mov	r0, x6
	mov	r1, rax
	call	__bit_and
	mov	r0, x8
	mov	r1, rax
	call	__bit_or
	mov	x8, rax
	mov	r0, x6
	mov	r1, x10
	call	__bit_and
	mov	x6, rax
	mov	x10, 12
	sub	x10, x15
.LBB0_65:
	mov	r1, -2147483648
	mov	r0, x5
	call	__bit_and
	mov	x5, rax
	mov	r0, x4
	mov	r1, x2
	call	__bit_xor
	mov	r0, x3
	mov	r1, x1
	call	__bit_xor
	mov	r1, 3
	mov	x1, rax
	mov	r0, x7
	call	__bit_shl
	mov	r1, 29
	mov	x3, rax
	mov	r0, x7
	call	__bit_shr
	mov	r1, 3
	mov	x2, rax
	mov	r0, x9
	call	__bit_shl
	mov	r0, rax
	mov	r1, x2
	call	__bit_or
	mov	r1, 8388608
	mov	r0, rax
	call	__bit_or
	mov	r1, 3
	mov	x4, rax
	mov	r0, x6
	call	__bit_shl
	mov	r1, 29
	mov	x2, rax
	mov	r0, x6
	call	__bit_shr
	mov	r1, 3
	mov	x6, rax
	mov	r0, x8
	call	__bit_shl
	mov	r0, rax
	mov	r1, x6
	call	__bit_or
	mov	r1, 8388608
	mov	r0, rax
	call	__bit_or
	mov	x6, rax
	mov	x7, x2
	mov	x11, x6
	je	x0, x10, .LBB0_70
	jmp	.LBB0_66
.LBB0_66:
	mov	x9, x0
	sub	x9, x10
	mov	x11, 0
	mov	r0, x9
add	r0, -2147483648
	mov	r1, -2147483585
	mov	x7, 1
	jg	r0, r1, .LBB0_70
	jmp	.LBB0_67
.LBB0_67:
	mov	r0, 64
	sub	r0, x9
	mov	r1, 31
	call	__bit_and
	mov	x10, rax
	mov	r1, 0
	sub	r1, x10
	mov	x7, 0
	mov	r0, x10
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	x11, rax
	mov	r0, 32
	sub	r0, x9
	mov	r1, 31
	mov	x8, 32
	call	__bit_shr
	mov	x12, rax
	mov	r0, x2
	mov	r1, x10
	call	__bit_shl
	mov	x13, 0
	sub	x13, x12
	mov	x12, rax
	mov	r0, x13
	call	__bit_not
	mov	r0, x12
	mov	r1, rax
	call	__bit_and
	mov	x14, rax
	mov	r0, x6
	mov	r1, x10
	call	__bit_shl
	mov	r0, 32
	sub	r0, x10
	mov	r1, 31
	mov	x10, rax
	call	__bit_and
	mov	r0, x2
	mov	r1, rax
	call	__bit_shr
	mov	r1, 0
	sub	r1, x11
	mov	r0, rax
	call	__bit_and
	mov	r0, x10
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x13
	call	__bit_and
	mov	r0, rax
	mov	r1, x14
	call	__bit_or
	mov	x10, rax
	mov	r0, x12
	mov	r1, x13
	call	__bit_and
	mov	r0, rax
	mov	r1, x10
	call	__bit_or
	mov	x10, 1
	jne	rax, x7, .LBB0_69
// %bb.68:
	mov	x10, 0
.LBB0_69:
	mov	r0, x9
add	r0, -32
	mov	r1, 31
	call	__bit_shr
	mov	r1, 31
	mov	x11, rax
	mov	r0, x9
	call	__bit_and
	mov	x9, rax
	mov	r0, x6
	mov	r1, x9
	call	__bit_shr
	mov	x12, 0
	sub	x12, x11
	mov	x13, rax
	mov	r0, x13
	mov	r1, x12
	call	__bit_and
	mov	r1, 0
	sub	r1, x9
	mov	x11, rax
	mov	r0, x9
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	x14, rax
	mov	r0, x12
	call	__bit_not
	mov	r0, x13
	mov	r1, rax
	call	__bit_and
	mov	x13, rax
	mov	r0, x2
	mov	r1, x9
	call	__bit_shr
	sub	x8, x9
	mov	r1, 31
	mov	x2, rax
	mov	r0, x8
	call	__bit_and
	mov	r0, x6
	mov	r1, rax
	call	__bit_shl
	sub	x7, x14
	mov	r0, rax
	mov	r1, x7
	call	__bit_and
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x12
	call	__bit_and
	mov	r0, rax
	mov	r1, x13
	call	__bit_or
	mov	r1, 1
	mov	x2, rax
	mov	r0, x10
	call	__bit_and
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	x7, rax
.LBB0_70:
	mov	r0, -1
	jg	x1, r0, .LBB0_76
	jmp	.LBB0_71
.LBB0_71:
	mov	r0, x3
	mov	r1, x4
	mov	r2, x7
	mov	r3, x11
	call	__subdi3
	mov	x2, rax
	mov	x1, t0
	mov	r0, x3
	mov	r1, x7
	call	__bit_xor
	mov	x3, rax
	mov	r0, x4
	mov	r1, x11
	call	__bit_xor
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	rax, 0
	mov	t0, 0
	jz	r0, .LBB0_104
	jmp	.LBB0_72
.LBB0_72:
	mov	r0, x1
add	r0, -2147483648
	mov	r1, -2139095041
	jg	r0, r1, .LBB0_78
	jmp	.LBB0_73
.LBB0_73:
	mov	r1, 1
	mov	x8, 1
	mov	r0, x2
	call	__bit_shr
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	x3, rax
	mov	r0, x3
	call	__bit_shr
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r1, 4
	mov	x3, rax
	mov	r0, x3
	call	__bit_shr
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r1, 8
	mov	x3, rax
	mov	r0, x3
	call	__bit_shr
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r1, 16
	mov	x3, rax
	mov	r0, x3
	call	__bit_shr
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	x3, rax
	mov	r0, x3
	call	__bit_shr
	mov	r1, 1431655765
	mov	r0, rax
	call	__bit_and
	sub	x3, rax
	mov	r1, 2
	mov	r0, x3
	call	__bit_shr
	mov	r1, 858993459
	mov	r0, rax
	call	__bit_and
	mov	r1, 858993459
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	add	x4, rax
	mov	r1, 4
	mov	r0, x4
	call	__bit_shr
	add	x4, rax
	mov	r1, 252645135
	mov	r0, x4
	call	__bit_and
	mul	rax, 16843009
	mov	r1, 24
	mov	r0, rax
	call	__bit_shr
	mov	x3, 64
	mov	r1, 1
	sub	x3, rax
	mov	r0, x1
	call	__bit_shr
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	x4, rax
	mov	r0, x4
	call	__bit_shr
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	r1, 4
	mov	x4, rax
	mov	r0, x4
	call	__bit_shr
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	r1, 8
	mov	x4, rax
	mov	r0, x4
	call	__bit_shr
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	r1, 16
	mov	x4, rax
	mov	r0, x4
	call	__bit_shr
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	x4, rax
	mov	r0, x4
	call	__bit_shr
	mov	r1, 1431655765
	mov	r0, rax
	call	__bit_and
	sub	x4, rax
	mov	r1, 2
	mov	r0, x4
	call	__bit_shr
	mov	r1, 858993459
	mov	r0, rax
	call	__bit_and
	mov	r1, 858993459
	mov	x6, rax
	mov	r0, x4
	call	__bit_and
	add	x6, rax
	mov	r1, 4
	mov	r0, x6
	call	__bit_shr
	add	x6, rax
	mov	r1, 252645135
	mov	r0, x6
	call	__bit_and
	mul	rax, 16843009
	mov	r1, 24
	mov	r0, rax
	call	__bit_shr
	add	rax, x3
	mov	x7, 32
	mov	r1, 32
	mov	x4, 0
	sub	r1, rax
	jne	x1, x4, .LBB0_75
// %bb.74:
	mov	x8, 0
.LBB0_75:
	mov	r0, 0
	sub	r0, x8
	call	__bit_and
	add	x3, rax
	mov	x6, x3
add	x6, -8
	mov	r1, 31
	mov	r0, x6
	call	__bit_and
	mov	x8, rax
	mov	r1, 0
	sub	r1, x8
	mov	r0, x8
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
add	x3, -40
	mov	r1, 31
	mov	x9, rax
	mov	r0, x3
	call	__bit_shr
	sub	x7, x8
	mov	r1, 31
	mov	x3, rax
	mov	r0, x7
	call	__bit_and
	mov	r0, x2
	mov	r1, rax
	call	__bit_shr
	mov	r1, 0
	sub	r1, x9
	mov	r0, rax
	call	__bit_and
	mov	x7, rax
	mov	r0, x1
	mov	r1, x8
	call	__bit_shl
	mov	r0, rax
	mov	r1, x7
	call	__bit_or
	sub	x4, x3
	mov	r0, rax
	mov	r1, x4
	call	__bit_and
	mov	x1, rax
	mov	r0, x2
	mov	r1, x8
	call	__bit_shl
	mov	x2, rax
	mov	r0, x4
	call	__bit_not
	mov	r0, x2
	mov	r1, rax
	call	__bit_and
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	x1, rax
	mov	r0, x2
	mov	r1, x4
	call	__bit_and
	mov	x2, rax
	sub	x0, x6
	jmp	.LBB0_80
.LBB0_76:
	mov	r0, x7
	mov	r1, x11
	mov	r2, x3
	mov	r3, x4
	call	__adddi3
	mov	r1, 16777216
	mov	x2, rax
	mov	x1, t0
	mov	r0, x1
	call	__bit_and
	jz	rax, .LBB0_78
	jmp	.LBB0_77
.LBB0_77:
	mov	r1, 1
	mov	r0, x1
	call	__bit_shr
	mov	r1, 1
	mov	x3, rax
	mov	r0, x2
	call	__bit_shr
	mov	r1, 31
	mov	x2, rax
	mov	r0, x1
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	x1, rax
	mov	r0, x7
	call	__bit_and
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	x2, rax
add	x0, 1
	mov	x1, x3
.LBB0_78:
	mov	r0, 2047
	jl	x0, r0, .LBB0_80
	jmp	.LBB0_79
.LBB0_79:
	mov	r1, 2146435072
	mov	r0, x5
	call	__bit_or
	mov	t0, rax
	mov	rax, 0
	jmp	.LBB0_104
.LBB0_80:
	mov	x3, 0
	jg	x0, x3, .LBB0_84
	jmp	.LBB0_81
.LBB0_81:
	mov	x4, 1
	mov	r0, x0
add	r0, 63
	mov	r1, 31
	sub	x4, x0
	call	__bit_and
	mov	x6, rax
	mov	r1, 0
	sub	r1, x6
	mov	r0, x6
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r0, x0
add	r0, 31
	mov	r1, 31
	mov	x7, rax
	call	__bit_shr
	mov	x8, rax
	mov	r0, x2
	mov	r1, x6
	call	__bit_shl
	mov	x9, 0
	sub	x9, x8
	mov	x8, rax
	mov	r0, x9
	call	__bit_not
	mov	r0, x8
	mov	r1, rax
	call	__bit_and
	mov	x10, rax
	mov	r0, x1
	mov	r1, x6
	call	__bit_shl
	mov	x11, rax
	mov	r0, 32
	sub	r0, x6
	mov	r1, 31
	mov	x6, 32
	call	__bit_and
	mov	r0, x2
	mov	r1, rax
	call	__bit_shr
	mov	r1, 0
	sub	r1, x7
	mov	r0, rax
	call	__bit_and
	mov	r0, x11
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x9
	call	__bit_and
	mov	r0, rax
	mov	r1, x10
	call	__bit_or
	mov	x7, rax
	mov	r0, x8
	mov	r1, x9
	call	__bit_and
	mov	r0, rax
	mov	r1, x7
	call	__bit_or
	mov	x7, 1
	jne	rax, x3, .LBB0_83
// %bb.82:
	mov	x7, 0
.LBB0_83:
	mov	r0, -31
	sub	r0, x0
	mov	r1, 31
	call	__bit_shr
	mov	r1, 31
	mov	x0, rax
	mov	r0, x4
	call	__bit_and
	mov	x4, rax
	mov	r0, x1
	mov	r1, x4
	call	__bit_shr
	mov	x8, 0
	sub	x8, x0
	mov	x0, rax
	mov	r0, x0
	mov	r1, x8
	call	__bit_and
	mov	r1, 0
	sub	r1, x4
	mov	x9, rax
	mov	r0, x4
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	x10, rax
	mov	r0, x8
	call	__bit_not
	mov	r0, x0
	mov	r1, rax
	call	__bit_and
	mov	x0, rax
	mov	r0, x2
	mov	r1, x4
	call	__bit_shr
	sub	x6, x4
	mov	r1, 31
	mov	x2, rax
	mov	r0, x6
	call	__bit_and
	mov	r0, x1
	mov	r1, rax
	call	__bit_shl
	sub	x3, x10
	mov	r0, rax
	mov	r1, x3
	call	__bit_and
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x8
	call	__bit_and
	mov	r0, rax
	mov	r1, x0
	call	__bit_or
	mov	r1, 1
	mov	x0, rax
	mov	r0, x7
	call	__bit_and
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	x2, rax
	mov	x1, x9
	mov	x0, 0
.LBB0_84:
	mov	r1, 7
	mov	r0, x2
	call	__bit_and
	mov	r1, 3
	mov	x3, rax
	mov	r0, x2
	call	__bit_shr
	mov	r1, 29
	mov	x2, rax
	mov	r0, x1
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r1, 3
	mov	x2, rax
	mov	r0, x1
	call	__bit_shr
	mov	r1, 1048575
	mov	r0, rax
	call	__bit_and
	mov	r1, 20
	mov	x1, rax
	mov	r0, x0
	call	__bit_shl
	mov	r0, rax
	mov	r1, x1
	call	__bit_or
	mov	r0, rax
	mov	r1, x5
	call	__bit_or
	mov	x0, rax
	call	__fe_getround
	mov	r0, 2
	mov	r1, rax
	je	r1, r0, .LBB0_96
	jmp	.LBB0_85
.LBB0_85:
	mov	r0, 1
	je	r1, r0, .LBB0_91
	jmp	.LBB0_86
.LBB0_86:
	mov	rax, x2
	mov	t0, x0
	jnz	r1, .LBB0_101
	jmp	.LBB0_87
.LBB0_87:
	mov	x1, 4
	jg	x3, x1, .LBB0_89
// %bb.88:
	mov	r0, 0
.LBB0_89:
	mov	r1, 1
	call	__bit_and
	mov	r3, 0
	mov	r0, x2
	mov	r1, x0
	mov	r2, rax
	call	__adddi3
	jne	x3, x1, .LBB0_101
	jmp	.LBB0_90
.LBB0_90:
	mov	r1, 1
	mov	r0, x2
	call	__bit_and
	mov	r3, 0
	mov	r0, x2
	mov	r1, x0
	mov	r2, rax
	call	__adddi3
	jmp	.LBB0_102
.LBB0_91:
	mov	r2, 0
	jne	x5, r2, .LBB0_93
// %bb.92:
	mov	r0, 0
.LBB0_93:
	mov	r1, 1
	jne	x3, r2, .LBB0_95
// %bb.94:
	mov	r1, 0
.LBB0_95:
	call	__bit_and
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r3, 0
	mov	r0, x2
	mov	r1, x0
	mov	r2, rax
	call	__adddi3
	jmp	.LBB0_101
.LBB0_96:
	mov	r2, 0
	mov	r1, 1
	mov	r0, 1
	je	x5, r2, .LBB0_98
// %bb.97:
	mov	r0, 0
.LBB0_98:
	jne	x3, r2, .LBB0_100
// %bb.99:
	mov	r1, 0
.LBB0_100:
	call	__bit_and
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r3, 0
	mov	r0, x2
	mov	r1, x0
	mov	r2, rax
	call	__adddi3
.LBB0_101:
	jz	x3, .LBB0_103
	jmp	.LBB0_102
.LBB0_102:
	mov	x0, t0
	mov	x1, rax
	call	__fe_raise_inexact
	mov	rax, x1
	mov	t0, x0
.LBB0_103:
.LBB0_104:
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
