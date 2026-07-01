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
	mov	x10, r1
	mov	r1, 20
	mov	x9, r3
	mov	x4, r2
	mov	x1, r0
	mov	r0, x10
	call	__bit_shr
	mov	r1, 2047
	mov	r0, rax
	call	__bit_and
	mov	r1, 20
	mov	x2, rax
	mov	r0, x9
	call	__bit_shr
	mov	r1, 2047
	mov	r0, rax
	call	__bit_and
	mov	x3, rax
	mov	r0, x9
	mov	r1, x10
	call	__bit_xor
	mov	r1, -2147483648
	mov	r0, rax
	call	__bit_and
	mov	x14, rax
	mov	r1, 1048575
	mov	x7, 0
	mov	r0, x10
	call	__bit_and
	mov	r1, 1048575
	mov	x5, rax
	mov	r0, x9
	call	__bit_and
	mov	r0, x2
add	r0, 2147481601
	mov	r1, 2147481602
	mov	x6, rax
	jl	r0, r1, .LBB0_2
	jmp	.LBB0_1
.LBB0_1:
	mov	r0, x3
add	r0, -2047
add	r0, -2147483648
	mov	r1, 2147481601
	jg	r0, r1, .LBB0_36
	jmp	.LBB0_2
.LBB0_2:
	mov	r1, 2147483647
	mov	r0, x10
	call	__bit_and
	mov	r1, 2147483647
	mov	x11, rax
	mov	r0, x9
	call	__bit_and
	mov	x8, rax
	mov	x0, 1
	mov	r1, 1
	je	x1, x7, .LBB0_4
// %bb.3:
	mov	r1, 0
.LBB0_4:
	mov	r0, 2146435072
	jl	x11, r0, .LBB0_6
// %bb.5:
	mov	x0, 0
.LBB0_6:
	sub	r1, x0
	mov	r2, 1
	je	x11, r0, .LBB0_8
// %bb.7:
	mov	r2, 0
.LBB0_8:
	sub	x7, r2
	mov	r0, x7
	call	__bit_and
	add	x0, rax
	jnz	x0, .LBB0_10
	jmp	.LBB0_9
.LBB0_9:
	mov	r1, 524288
	mov	r0, x10
	call	__bit_or
	mov	t0, rax
	jmp	.LBB0_59
.LBB0_10:
	mov	r0, 0
	mov	x0, 1
	mov	r1, 1
	je	x4, r0, .LBB0_12
// %bb.11:
	mov	r1, 0
.LBB0_12:
	mov	r2, 2146435072
	jl	x8, r2, .LBB0_14
// %bb.13:
	mov	x0, 0
.LBB0_14:
	sub	r1, x0
	mov	r3, 1
	je	x8, r2, .LBB0_16
// %bb.15:
	mov	r3, 0
.LBB0_16:
	sub	r0, r3
	call	__bit_and
	add	x0, rax
	jnz	x0, .LBB0_18
	jmp	.LBB0_17
.LBB0_17:
	mov	r1, 524288
	mov	r0, x9
	call	__bit_or
	mov	t0, rax
	mov	x1, x4
	jmp	.LBB0_59
.LBB0_18:
	mov	r1, 2146435072
	mov	r0, x11
	call	__bit_xor
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	jnz	rax, .LBB0_21
	jmp	.LBB0_19
.LBB0_19:
	mov	r0, x4
	mov	r1, x8
	call	__bit_or
	mov	t0, 2146959360
	mov	x1, 0
	jz	rax, .LBB0_59
	jmp	.LBB0_20
.LBB0_20:
	mov	r1, 2146435072
	mov	r0, x14
	call	__bit_or
	mov	t0, rax
	jmp	.LBB0_59
.LBB0_21:
	mov	r1, 2146435072
	mov	r0, x8
	call	__bit_xor
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	jnz	rax, .LBB0_24
	jmp	.LBB0_22
.LBB0_22:
	mov	r0, x1
	mov	r1, x11
	call	__bit_or
	mov	t0, 2146959360
	mov	x1, 0
	jz	rax, .LBB0_59
	jmp	.LBB0_23
.LBB0_23:
	mov	r1, 2146435072
	mov	r0, x14
	call	__bit_or
	mov	t0, rax
	jmp	.LBB0_59
.LBB0_24:
	mov	r0, x1
	mov	r1, x11
	call	__bit_or
	jnz	rax, .LBB0_26
	jmp	.LBB0_25
.LBB0_25:
	mov	x1, 0
	mov	t0, x14
	jmp	.LBB0_59
.LBB0_26:
	mov	r0, x4
	mov	r1, x8
	call	__bit_or
	jnz	rax, .LBB0_28
	jmp	.LBB0_27
.LBB0_27:
	mov	x1, 0
	mov	t0, x14
	jmp	.LBB0_59
.LBB0_28:
	mov	x0, 1048575
	mov	x7, 0
	jg	x11, x0, .LBB0_32
	jmp	.LBB0_29
.LBB0_29:
	mov	r1, 1
	mov	x10, 1
	mov	r0, x1
	call	__bit_shr
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	x7, rax
	mov	r0, x7
	call	__bit_shr
	mov	r0, x7
	mov	r1, rax
	call	__bit_or
	mov	r1, 4
	mov	x7, rax
	mov	r0, x7
	call	__bit_shr
	mov	r0, x7
	mov	r1, rax
	call	__bit_or
	mov	r1, 8
	mov	x7, rax
	mov	r0, x7
	call	__bit_shr
	mov	r0, x7
	mov	r1, rax
	call	__bit_or
	mov	r1, 16
	mov	x7, rax
	mov	r0, x7
	call	__bit_shr
	mov	r0, x7
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	x7, rax
	mov	r0, x7
	call	__bit_shr
	mov	r1, 1431655765
	mov	r0, rax
	call	__bit_and
	sub	x7, rax
	mov	r1, 2
	mov	r0, x7
	call	__bit_shr
	mov	r1, 858993459
	mov	r0, rax
	call	__bit_and
	mov	r1, 858993459
	mov	x9, rax
	mov	r0, x7
	call	__bit_and
	add	x9, rax
	mov	r1, 4
	mov	r0, x9
	call	__bit_shr
	add	x9, rax
	mov	r1, 252645135
	mov	r0, x9
	call	__bit_and
	mul	rax, 16843009
	mov	r1, 24
	mov	r0, rax
	call	__bit_shr
	mov	x13, 64
	mov	r1, 1
	sub	x13, rax
	mov	r0, x5
	call	__bit_shr
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	x7, rax
	mov	r0, x7
	call	__bit_shr
	mov	r0, x7
	mov	r1, rax
	call	__bit_or
	mov	r1, 4
	mov	x7, rax
	mov	r0, x7
	call	__bit_shr
	mov	r0, x7
	mov	r1, rax
	call	__bit_or
	mov	r1, 8
	mov	x7, rax
	mov	r0, x7
	call	__bit_shr
	mov	r0, x7
	mov	r1, rax
	call	__bit_or
	mov	r1, 16
	mov	x7, rax
	mov	r0, x7
	call	__bit_shr
	mov	r0, x7
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	x7, rax
	mov	r0, x7
	call	__bit_shr
	mov	r1, 1431655765
	mov	r0, rax
	call	__bit_and
	sub	x7, rax
	mov	r1, 2
	mov	r0, x7
	call	__bit_shr
	mov	r1, 858993459
	mov	r0, rax
	call	__bit_and
	mov	r1, 858993459
	mov	x9, rax
	mov	r0, x7
	call	__bit_and
	add	x9, rax
	mov	r1, 4
	mov	r0, x9
	call	__bit_shr
	add	x9, rax
	mov	r1, 252645135
	mov	r0, x9
	call	__bit_and
	mul	rax, 16843009
	mov	r1, 24
	mov	r0, rax
	call	__bit_shr
	add	rax, x13
	mov	x9, 32
	mov	r1, 32
	mov	x7, 0
	sub	r1, rax
	jne	x5, x7, .LBB0_31
// %bb.30:
	mov	x10, 0
.LBB0_31:
	mov	r0, 0
	sub	r0, x10
	call	__bit_and
	add	x13, rax
	mov	r0, x13
add	r0, -11
	mov	r1, 31
	call	__bit_and
	mov	x10, rax
	mov	r1, 0
	sub	r1, x10
	mov	r0, x10
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r0, x13
add	r0, -43
	mov	r1, 31
	mov	x11, rax
	call	__bit_shr
	sub	x9, x10
	mov	r1, 31
	mov	x12, rax
	mov	r0, x9
	call	__bit_and
	mov	r0, x1
	mov	r1, rax
	call	__bit_shr
	mov	r1, 0
	sub	r1, x11
	mov	r0, rax
	call	__bit_and
	mov	x9, rax
	mov	r0, x5
	mov	r1, x10
	call	__bit_shl
	mov	r0, rax
	mov	r1, x9
	call	__bit_or
	sub	x7, x12
	mov	r0, rax
	mov	r1, x7
	call	__bit_and
	mov	x5, rax
	mov	r0, x1
	mov	r1, x10
	call	__bit_shl
	mov	x1, rax
	mov	r0, x7
	call	__bit_not
	mov	r0, x1
	mov	r1, rax
	call	__bit_and
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	x5, rax
	mov	r0, x1
	mov	r1, x7
	call	__bit_and
	mov	x1, rax
	mov	x7, 12
	sub	x7, x13
.LBB0_32:
	jg	x8, x0, .LBB0_36
	jmp	.LBB0_33
.LBB0_33:
	mov	r1, 1
	mov	x0, 1
	mov	r0, x4
	call	__bit_shr
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	x8, rax
	mov	r0, x8
	call	__bit_shr
	mov	r0, x8
	mov	r1, rax
	call	__bit_or
	mov	r1, 4
	mov	x8, rax
	mov	r0, x8
	call	__bit_shr
	mov	r0, x8
	mov	r1, rax
	call	__bit_or
	mov	r1, 8
	mov	x8, rax
	mov	r0, x8
	call	__bit_shr
	mov	r0, x8
	mov	r1, rax
	call	__bit_or
	mov	r1, 16
	mov	x8, rax
	mov	r0, x8
	call	__bit_shr
	mov	r0, x8
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	x8, rax
	mov	r0, x8
	call	__bit_shr
	mov	r1, 1431655765
	mov	r0, rax
	call	__bit_and
	sub	x8, rax
	mov	r1, 2
	mov	r0, x8
	call	__bit_shr
	mov	r1, 858993459
	mov	r0, rax
	call	__bit_and
	mov	r1, 858993459
	mov	x9, rax
	mov	r0, x8
	call	__bit_and
	add	x9, rax
	mov	r1, 4
	mov	r0, x9
	call	__bit_shr
	add	x9, rax
	mov	r1, 252645135
	mov	r0, x9
	call	__bit_and
	mul	rax, 16843009
	mov	r1, 24
	mov	r0, rax
	call	__bit_shr
	mov	x13, 64
	mov	r1, 1
	sub	x13, rax
	mov	r0, x6
	call	__bit_shr
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	x8, rax
	mov	r0, x8
	call	__bit_shr
	mov	r0, x8
	mov	r1, rax
	call	__bit_or
	mov	r1, 4
	mov	x8, rax
	mov	r0, x8
	call	__bit_shr
	mov	r0, x8
	mov	r1, rax
	call	__bit_or
	mov	r1, 8
	mov	x8, rax
	mov	r0, x8
	call	__bit_shr
	mov	r0, x8
	mov	r1, rax
	call	__bit_or
	mov	r1, 16
	mov	x8, rax
	mov	r0, x8
	call	__bit_shr
	mov	r0, x8
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	x8, rax
	mov	r0, x8
	call	__bit_shr
	mov	r1, 1431655765
	mov	r0, rax
	call	__bit_and
	sub	x8, rax
	mov	r1, 2
	mov	r0, x8
	call	__bit_shr
	mov	r1, 858993459
	mov	r0, rax
	call	__bit_and
	mov	r1, 858993459
	mov	x9, rax
	mov	r0, x8
	call	__bit_and
	add	x9, rax
	mov	r1, 4
	mov	r0, x9
	call	__bit_shr
	add	x9, rax
	mov	r1, 252645135
	mov	r0, x9
	call	__bit_and
	mul	rax, 16843009
	mov	r1, 24
	mov	r0, rax
	call	__bit_shr
	add	rax, x13
	mov	x9, 32
	mov	r1, 32
	mov	x8, 0
	sub	r1, rax
	jne	x6, x8, .LBB0_35
// %bb.34:
	mov	x0, 0
.LBB0_35:
	mov	r0, 0
	sub	r0, x0
	call	__bit_and
	add	x13, rax
	mov	r0, x13
add	r0, -11
	mov	r1, 31
	call	__bit_and
	mov	x10, rax
	mov	r1, 0
	sub	r1, x10
	mov	r0, x10
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r0, x13
add	r0, -43
	mov	r1, 31
	mov	x11, rax
	call	__bit_shr
	sub	x9, x10
	mov	r1, 31
	mov	x12, rax
	mov	r0, x9
	call	__bit_and
	mov	r0, x4
	mov	r1, rax
	call	__bit_shr
	mov	r1, 0
	sub	r1, x11
	mov	r0, rax
	call	__bit_and
	mov	x9, rax
	mov	r0, x6
	mov	r1, x10
	call	__bit_shl
	mov	r0, rax
	mov	r1, x9
	call	__bit_or
	sub	x8, x12
	mov	r0, rax
	mov	r1, x8
	call	__bit_and
	mov	x6, rax
	mov	r0, x4
	mov	r1, x10
	call	__bit_shl
	mov	x4, rax
	mov	r0, x8
	call	__bit_not
	mov	r0, x4
	mov	r1, rax
	call	__bit_and
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	x6, rax
	mov	r0, x4
	mov	r1, x8
	call	__bit_and
	mov	x4, rax
	sub	x7, x13
add	x7, 12
.LBB0_36:
	mov	r1, 21
	mov	r0, x4
	call	__bit_shr
	mov	r1, 11
	mov	x8, rax
	mov	r0, x6
	call	__bit_shl
	mov	r0, rax
	mov	r1, x8
	call	__bit_or
	mov	r1, 11
	mov	x6, rax
	mov	r0, x4
	call	__bit_shl
	mov	r1, 0
	mov	r3, 0
	mov	x4, rax
	mov	r0, x4
	mov	r2, x1
	call	__muldi3
	mov	r1, -2147483648
	mov	x8, rax
	mov	x9, t0
	mov	r0, x6
	call	__bit_or
	mov	r1, 0
	mov	r3, 0
	mov	x6, rax
	mov	r0, x6
	mov	r2, x1
	call	__muldi3
	mov	r1, 1048576
	mov	x10, rax
	mov	x1, t0
	mov	r0, x5
	call	__bit_or
	mov	r1, 0
	mov	r3, 0
	mov	x5, rax
	mov	r0, x4
	mov	r2, x5
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x11, rax
	mov	x12, t0
	mov	r0, x6
	mov	r2, x5
	call	__muldi3
	mov	r1, -2048
	mov	x6, rax
	mov	x13, t0
	mov	r0, x8
	call	__bit_and
	mov	r1, -2048
	mov	x4, rax
	mov	r0, x11
	call	__bit_and
	mov	r1, 0
	mov	r3, 0
	mov	r0, rax
	mov	r2, x9
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x10
	call	__adddi3
	mov	r1, 0
	mov	x5, rax
	mov	x8, t0
	mov	r0, x12
	mov	r2, x6
	mov	r3, x13
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x1
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x8
	call	__adddi3
	mov	x1, rax
	mov	x6, t0
	add	x2, x3
	add	x2, x7
	mov	r1, 1048576
add	x2, -1023
	mov	r0, x6
	call	__bit_and
	jz	rax, .LBB0_38
	jmp	.LBB0_37
.LBB0_37:
add	x2, 1
	jmp	.LBB0_39
.LBB0_38:
	mov	r1, 31
	mov	r0, x1
	call	__bit_shr
	mov	r1, 1
	mov	x3, rax
	mov	r0, x6
	call	__bit_shl
	mov	r0, rax
	mov	r1, x3
	call	__bit_or
	mov	r1, 1
	mov	x6, rax
	mov	r0, x1
	call	__bit_shl
	mov	r1, 31
	mov	x1, rax
	mov	r0, x5
	call	__bit_shr
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	x1, rax
	mov	r0, x4
	call	__bit_shr
	mov	r1, 1
	mov	x3, rax
	mov	r0, x5
	call	__bit_shl
	mov	r0, rax
	mov	r1, x3
	call	__bit_or
	mov	r1, 1
	mov	x5, rax
	mov	r0, x4
	call	__bit_shl
	mov	x4, rax
.LBB0_39:
	mov	r0, 2047
	jl	x2, r0, .LBB0_41
	jmp	.LBB0_40
.LBB0_40:
	mov	r1, 2146435072
	mov	r0, x14
	call	__bit_or
	mov	t0, rax
	mov	x1, 0
	jmp	.LBB0_59
.LBB0_41:
	mov	r0, 0
	jg	x2, r0, .LBB0_47
	jmp	.LBB0_42
.LBB0_42:
	mov	x7, 1
	sub	x7, x2
	mov	r0, 63
	jg	x7, r0, .LBB0_46
	jmp	.LBB0_43
.LBB0_43:
	mov	[rsp], x14
	mov	r0, x2
add	r0, 63
	mov	r1, 31
	call	__bit_and
	mov	x10, rax
	mov	r0, x4
	mov	r1, x10
	call	__bit_shl
add	x2, 31
	mov	r1, 31
	mov	x14, rax
	mov	r0, x2
	call	__bit_shr
	mov	x9, 0
	sub	x9, rax
	mov	x2, 0
	mov	r0, x9
	call	__bit_not
	mov	x11, rax
	mov	r0, x14
	mov	r1, x11
	call	__bit_and
	mov	x15, rax
	mov	r0, x5
	mov	r1, x10
	call	__bit_shl
	mov	x3, rax
	mov	r0, 32
	sub	r0, x10
	mov	r1, 31
	mov	x8, 32
	call	__bit_and
	mov	x12, rax
	mov	r0, x4
	mov	r1, x12
	call	__bit_shr
	mov	r1, 0
	sub	r1, x10
	mov	x0, rax
	mov	r0, x10
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	x13, 0
	sub	x13, rax
	mov	r0, x0
	mov	r1, x13
	call	__bit_and
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x9
	call	__bit_and
	mov	r0, rax
	mov	r1, x15
	mov	x15, 1
	call	__bit_or
	mov	x0, rax
	mov	r0, x14
	mov	r1, x9
	call	__bit_and
	mov	r0, rax
	mov	r1, x0
	call	__bit_or
	jne	rax, x2, .LBB0_45
// %bb.44:
	mov	x15, 0
.LBB0_45:
	mov	r0, x1
	mov	r1, x10
	call	__bit_shl
	mov	x0, rax
	mov	r0, x0
	mov	r1, x11
	call	__bit_and
	mov	x3, rax
	mov	r0, x6
	mov	r1, x10
	call	__bit_shl
	mov	x10, rax
	mov	r0, x1
	mov	r1, x12
	call	__bit_shr
	mov	r0, rax
	mov	r1, x13
	call	__bit_and
	mov	r0, x10
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x9
	call	__bit_and
	mov	r0, rax
	mov	r1, x3
	call	__bit_or
	mov	x10, rax
	mov	r0, x0
	mov	r1, x9
	call	__bit_and
	mov	r1, 31
	mov	x12, rax
	mov	r0, x7
	call	__bit_and
	mov	x9, rax
	mov	r0, x5
	mov	r1, x9
	call	__bit_shr
add	x7, -32
	mov	r1, 31
	mov	x0, rax
	mov	r0, x7
	call	__bit_shr
	mov	x7, 0
	sub	x7, rax
	mov	r0, x7
	call	__bit_not
	mov	x11, rax
	mov	r0, x0
	mov	r1, x11
	call	__bit_and
	mov	x3, rax
	mov	r0, x4
	mov	r1, x9
	call	__bit_shr
	sub	x8, x9
	mov	r1, 31
	mov	x4, rax
	mov	r0, x8
	call	__bit_and
	mov	x8, rax
	mov	r0, x5
	mov	r1, x8
	call	__bit_shl
	mov	r1, 0
	sub	r1, x9
	mov	x5, rax
	mov	r0, x9
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	sub	x2, rax
	mov	r0, x5
	mov	r1, x2
	call	__bit_and
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x7
	call	__bit_and
	mov	r0, rax
	mov	r1, x3
	call	__bit_or
	mov	x3, rax
	mov	r0, x0
	mov	r1, x7
	call	__bit_and
	mov	r0, x10
	mov	r1, rax
	call	__bit_or
	mov	x5, rax
	mov	r0, x12
	mov	r1, x3
	call	__bit_or
	mov	r1, 1
	mov	x0, rax
	mov	r0, x15
	call	__bit_and
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	x4, rax
	mov	r0, x6
	mov	r1, x9
	call	__bit_shr
	mov	x0, rax
	mov	r0, x0
	mov	r1, x11
	call	__bit_and
	mov	x3, rax
	mov	r0, x1
	mov	r1, x9
	call	__bit_shr
	mov	x1, rax
	mov	r0, x6
	mov	r1, x8
	call	__bit_shl
	mov	r0, rax
	mov	r1, x2
	call	__bit_and
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x7
	call	__bit_and
	mov	r0, rax
	mov	r1, x3
	call	__bit_or
	mov	x1, rax
	mov	r0, x0
	mov	r1, x7
	call	__bit_and
	mov	x14, [rsp]
	jmp	.LBB0_48
.LBB0_46:
	mov	x1, 0
	mov	t0, x14
	jmp	.LBB0_59
.LBB0_47:
	mov	r1, 1048575
	mov	r0, x6
	call	__bit_and
	mov	r1, 20
	mov	x0, rax
	mov	r0, x2
	call	__bit_shl
	mov	r0, rax
	mov	r1, x0
	call	__bit_or
.LBB0_48:
	mov	r0, rax
	mov	r1, x14
	call	__bit_or
	mov	x0, rax
	mov	r0, 0
	mov	x2, 1
	mov	r1, 1
	je	x4, r0, .LBB0_50
// %bb.49:
	mov	r1, 0
.LBB0_50:
	mov	r2, -1
	jg	x5, r2, .LBB0_52
// %bb.51:
	mov	x2, 0
.LBB0_52:
	sub	r1, x2
	mov	r3, -2147483648
	mov	r2, 1
	je	x5, r3, .LBB0_54
// %bb.53:
	mov	r2, 0
.LBB0_54:
	sub	r0, r2
	call	__bit_and
	add	x2, rax
	jnz	x2, .LBB0_56
	jmp	.LBB0_55
.LBB0_55:
	mov	r2, 1
	mov	r3, 0
	mov	r0, x1
	mov	r1, x0
	call	__adddi3
	mov	x1, rax
	jmp	.LBB0_58
.LBB0_56:
	mov	r1, -2147483648
	mov	r0, x5
	call	__bit_xor
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	t0, x0
	jnz	rax, .LBB0_58
	jmp	.LBB0_57
.LBB0_57:
	mov	r1, 1
	mov	r0, x1
	mov	x0, t0
	call	__bit_and
	mov	r3, 0
	mov	r0, x1
	mov	r1, x0
	mov	r2, rax
	call	__adddi3
	mov	x1, rax
.LBB0_58:
.LBB0_59:
	mov	rax, x1
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
