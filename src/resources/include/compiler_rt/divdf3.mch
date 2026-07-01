#include "_ll_std"

// -- Begin function __divdf3
__divdf3:                               // @__divdf3
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
	mov	x1, r2
	mov	x2, r0
	mov	r0, x10
	call	__bit_shr
	mov	r1, 2047
	mov	r0, rax
	call	__bit_and
	mov	r1, 20
	mov	x3, rax
	mov	r0, x9
	call	__bit_shr
	mov	r1, 2047
	mov	r0, rax
	call	__bit_and
	mov	x4, rax
	mov	r0, x9
	mov	r1, x10
	call	__bit_xor
	mov	r1, -2147483648
	mov	r0, rax
	call	__bit_and
	mov	x14, rax
	mov	r1, 1048575
	mov	x8, 0
	mov	r0, x10
	call	__bit_and
	mov	r1, 1048575
	mov	x5, rax
	mov	r0, x9
	call	__bit_and
	mov	r0, x3
add	r0, 2147481601
	mov	r1, 2147481602
	mov	x6, rax
	jl	r0, r1, .LBB0_2
	jmp	.LBB0_1
.LBB0_1:
	mov	r0, x4
add	r0, -2047
add	r0, -2147483648
	mov	r1, 2147481601
	jg	r0, r1, .LBB0_37
	jmp	.LBB0_2
.LBB0_2:
	mov	r1, 2147483647
	mov	r0, x10
	call	__bit_and
	mov	r1, 2147483647
	mov	x11, rax
	mov	r0, x9
	call	__bit_and
	mov	x7, rax
	mov	x0, 1
	mov	r1, 1
	je	x2, x8, .LBB0_4
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
	sub	x8, r2
	mov	r0, x8
	call	__bit_and
	add	x0, rax
	jnz	x0, .LBB0_10
	jmp	.LBB0_9
.LBB0_9:
	mov	r1, 524288
	mov	r0, x10
	call	__bit_or
	mov	t0, rax
	jmp	.LBB0_58
.LBB0_10:
	mov	r0, 0
	mov	x0, 1
	mov	r1, 1
	je	x1, r0, .LBB0_12
// %bb.11:
	mov	r1, 0
.LBB0_12:
	mov	r2, 2146435072
	jl	x7, r2, .LBB0_14
// %bb.13:
	mov	x0, 0
.LBB0_14:
	sub	r1, x0
	mov	r3, 1
	je	x7, r2, .LBB0_16
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
	mov	x2, x1
	jmp	.LBB0_58
.LBB0_18:
	mov	r1, 2146435072
	mov	r0, x11
	call	__bit_xor
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	jnz	rax, .LBB0_21
	jmp	.LBB0_19
.LBB0_19:
	mov	r1, 2146435072
	mov	r0, x7
	call	__bit_xor
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	t0, 2146959360
	mov	x2, 0
	jz	rax, .LBB0_58
	jmp	.LBB0_20
.LBB0_20:
	mov	r1, 2146435072
	mov	r0, x14
	call	__bit_or
	mov	t0, rax
	jmp	.LBB0_58
.LBB0_21:
	mov	r1, 2146435072
	mov	r0, x7
	call	__bit_xor
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	jnz	rax, .LBB0_23
	jmp	.LBB0_22
.LBB0_22:
	mov	x2, 0
	mov	t0, x14
	jmp	.LBB0_58
.LBB0_23:
	mov	r0, x2
	mov	r1, x11
	call	__bit_or
	jnz	rax, .LBB0_27
	jmp	.LBB0_24
.LBB0_24:
	mov	r0, x1
	mov	r1, x7
	call	__bit_or
	mov	x2, 0
	mov	r2, 1
	je	rax, x2, .LBB0_26
// %bb.25:
	mov	r2, 0
.LBB0_26:
	mov	r1, 2146959360
	sub	r1, x14
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	mov	t0, rax
	add	t0, x14
	jmp	.LBB0_58
.LBB0_27:
	mov	r0, x1
	mov	r1, x7
	call	__bit_or
	jnz	rax, .LBB0_29
	jmp	.LBB0_28
.LBB0_28:
	mov	r1, 2146435072
	mov	r0, x14
	call	__bit_or
	mov	t0, rax
	mov	x2, 0
	jmp	.LBB0_58
.LBB0_29:
	mov	x0, 1048575
	mov	x8, 0
	jg	x11, x0, .LBB0_33
	jmp	.LBB0_30
.LBB0_30:
	mov	r1, 1
	mov	x10, 1
	mov	r0, x2
	call	__bit_shr
	mov	r0, x2
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
	mov	r0, x5
	call	__bit_shr
	mov	r0, x5
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
	jne	x5, x8, .LBB0_32
// %bb.31:
	mov	x10, 0
.LBB0_32:
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
	mov	r0, x2
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
	sub	x8, x12
	mov	r0, rax
	mov	r1, x8
	call	__bit_and
	mov	x5, rax
	mov	r0, x2
	mov	r1, x10
	call	__bit_shl
	mov	x2, rax
	mov	r0, x8
	call	__bit_not
	mov	r0, x2
	mov	r1, rax
	call	__bit_and
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	x5, rax
	mov	r0, x2
	mov	r1, x8
	call	__bit_and
	mov	x2, rax
	mov	x8, 12
	sub	x8, x13
.LBB0_33:
	jg	x7, x0, .LBB0_37
	jmp	.LBB0_34
.LBB0_34:
	mov	r1, 1
	mov	x0, 1
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
	mov	r0, x6
	call	__bit_shr
	mov	r0, x6
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
	jne	x6, x7, .LBB0_36
// %bb.35:
	mov	x0, 0
.LBB0_36:
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
	mov	r0, x1
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
	sub	x7, x12
	mov	r0, rax
	mov	r1, x7
	call	__bit_and
	mov	x6, rax
	mov	r0, x1
	mov	r1, x10
	call	__bit_shl
	mov	x1, rax
	mov	r0, x7
	call	__bit_not
	mov	r0, x1
	mov	r1, rax
	call	__bit_and
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	x6, rax
	mov	r0, x1
	mov	r1, x7
	call	__bit_and
	add	x13, x8
add	x13, -12
	mov	x1, rax
	mov	x8, x13
.LBB0_37:
	mov	[rsp], x14
	mov	r1, 1048576
	mov	r0, x5
	call	__bit_or
	mov	r1, 1048576
	mov	x7, rax
	mov	r0, x6
	call	__bit_or
	sub	x3, x4
	add	x3, x8
	mov	x4, rax
	mov	x5, x3
	mov	r1, 11
add	x5, 1023
	mov	r0, x1
	call	__bit_shl
	mov	r1, 21
	mov	x8, rax
	mov	r0, x1
	call	__bit_shr
	mov	r1, 11
	mov	x6, rax
	mov	r0, x4
	call	__bit_shl
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	x9, rax
	mov	x6, 1963258675
	sub	x6, x9
	mov	r1, 0
	mov	r3, 0
	mov	x10, 0
	mov	r0, x9
	mov	r2, x6
	call	__muldi3
	mov	r0, 0
	sub	r0, t0
	mov	r1, 0
	mov	r3, 0
	mov	r2, x6
	call	__muldi3
	mov	r1, 31
	mov	x11, t0
	mov	r0, rax
	call	__bit_shr
	mov	x12, rax
	mov	r1, 1
	mov	x6, 1
	mov	r0, x11
	call	__bit_shl
	mov	r0, x12
	mov	r1, rax
	call	__bit_or
	mov	r1, 0
	mov	r3, 0
	mov	x11, rax
	mov	r0, x11
	mov	r2, x9
	call	__muldi3
	mov	r2, 0
	sub	r2, t0
	mov	r1, 0
	mov	r3, 0
	mov	r0, x11
	call	__muldi3
	mov	r1, 31
	mov	x11, t0
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	x12, rax
	mov	r0, x11
	call	__bit_shl
	mov	r0, x12
	mov	r1, rax
	call	__bit_or
	mov	r1, 0
	mov	r3, 0
	mov	x11, rax
	mov	r0, x11
	mov	r2, x9
	call	__muldi3
	sub	x10, t0
	mov	r1, 0
	mov	r3, 0
	mov	r0, x11
	mov	r2, x10
	call	__muldi3
	mov	r1, 31
	mov	x10, t0
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	x11, rax
	mov	r0, x10
	call	__bit_shl
	mov	r0, x11
	mov	r1, rax
	call	__bit_or
	mov	x10, rax
add	x10, -1
	mov	r1, 0
	mov	r3, 0
	mov	r0, x9
	mov	r2, x10
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x9, rax
	mov	x11, t0
	mov	r0, x8
	mov	r2, x10
	call	__muldi3
	mov	r3, 0
	mov	r2, t0
	mov	r0, x9
	mov	r1, x11
	call	__adddi3
	mov	r0, 1
	mov	r1, 0
	mov	r3, t0
	mov	r2, rax
	call	__subdi3
	mov	r1, 0
	mov	r3, 0
	mov	x8, rax
	mov	r2, t0
	mov	r0, x10
	call	__muldi3
	mov	r1, 1
	mov	x9, rax
	mov	r0, t0
	call	__bit_shl
	mov	r1, 31
	mov	x11, rax
	mov	r0, x9
	call	__bit_shr
	mov	r0, x11
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	x11, rax
	mov	r0, x9
	call	__bit_shl
	mov	r1, 0
	mov	r3, 0
	mov	x9, rax
	mov	r0, x8
	mov	r2, x10
	call	__muldi3
	mov	r1, 31
	mov	x8, t0
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	x10, rax
	mov	r0, x8
	call	__bit_shl
	mov	r0, x10
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	x10, rax
	mov	r0, x8
	call	__bit_shr
	mov	r2, -225
	mov	r3, -1
	mov	x8, rax
	mov	r0, x9
	mov	r1, x11
	call	__adddi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x10
	mov	r3, x8
	call	__adddi3
	mov	r1, 31
	mov	x10, rax
	mov	x11, t0
	mov	r0, x2
	call	__bit_shr
	mov	r1, 1
	mov	x8, rax
	mov	r0, x7
	call	__bit_shl
	mov	r0, rax
	mov	r1, x8
	call	__bit_or
	mov	r1, 1
	mov	x9, rax
	mov	r0, x2
	call	__bit_shl
	mov	r1, 0
	mov	r3, 0
	mov	x8, rax
	mov	r0, x10
	mov	r2, x8
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x12, t0
	mov	r0, x10
	mov	r2, x9
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x10, rax
	mov	x13, t0
	mov	r0, x11
	mov	r2, x8
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x14, rax
	mov	x15, t0
	mov	r0, x11
	mov	r2, x9
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x11, rax
	mov	x0, t0
	mov	r0, x12
	mov	r2, x10
	call	__adddi3
	mov	r1, -2
	mov	x10, rax
	mov	x12, t0
	mov	r0, x14
	call	__bit_and
	mov	r3, 0
	mov	r0, x10
	mov	r1, x12
	mov	r2, rax
	call	__adddi3
	mov	r1, 0
	mov	x10, t0
	mov	r0, x15
	mov	r2, x11
	mov	r3, x0
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x13
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x10
	call	__adddi3
	mov	x11, t0
	mov	r0, x11
add	r0, -2147483648
	mov	r1, -2145386497
	mov	x12, rax
	jg	r0, r1, .LBB0_43
	jmp	.LBB0_38
.LBB0_38:
	mov	r1, -2146435072
	jl	r0, r1, .LBB0_40
// %bb.39:
	mov	x6, 0
.LBB0_40:
	mov	r1, 1
add	x3, 1022
	mov	r0, x6
	call	__bit_and
	mov	x0, rax
	mov	r0, x11
	mov	r1, x0
	call	__bit_shl
	mov	r1, 1
	mov	x6, rax
	mov	r0, x12
	call	__bit_shr
	mov	r1, 31
	mov	x7, rax
	mov	r0, x0
	call	__bit_xor
	mov	r0, x7
	mov	r1, rax
	call	__bit_shr
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	x10, rax
	mov	r0, x12
	mov	r1, x0
	call	__bit_shl
	mov	r0, 1048576
	mov	x6, rax
	mov	x15, [rsp]
	jl	x11, r0, .LBB0_42
	jmp	.LBB0_41
.LBB0_41:
	mov	x3, x5
.LBB0_42:
	mov	r1, 21
	mov	r0, x2
	call	__bit_shl
	mov	x0, rax
	mov	r0, x6
	mov	r1, x10
	mov	r2, x1
	mov	r3, x4
	call	__muldi3
	mov	r0, 0
	mov	r3, t0
	mov	r1, x0
	mov	r2, rax
	call	__subdi3
add	x3, -1
	mov	x5, x3
	jmp	.LBB0_44
.LBB0_43:
	mov	r1, 1
	mov	r0, x11
	call	__bit_shr
	mov	r1, 1
	mov	x10, rax
	mov	r0, x12
	call	__bit_shr
	mov	r1, 31
	mov	x0, rax
	mov	r0, x11
	call	__bit_shl
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	r1, 20
	mov	x6, rax
	mov	r0, x2
	call	__bit_shl
	mov	x0, rax
	mov	r0, x6
	mov	r1, x10
	mov	r2, x1
	mov	r3, x4
	call	__muldi3
	mov	r0, 0
	mov	r3, t0
	mov	r1, x0
	mov	r2, rax
	call	__subdi3
	mov	x8, x2
	mov	x9, x7
	mov	x15, [rsp]
.LBB0_44:
	mov	r0, 2047
	jl	x5, r0, .LBB0_46
	jmp	.LBB0_45
.LBB0_45:
	mov	r1, 2146435072
	mov	r0, x15
	call	__bit_or
	mov	t0, rax
	mov	x2, 0
	jmp	.LBB0_58
.LBB0_46:
	mov	r0, 1
	jl	x5, r0, .LBB0_48
	jmp	.LBB0_47
.LBB0_47:
	mov	r1, 1048575
	mov	r0, x10
	mov	x0, rax
	mov	x3, t0
	call	__bit_and
	mov	r1, 20
	mov	x2, rax
	mov	r0, x5
	call	__bit_shl
	mov	r0, rax
	mov	r1, x2
	call	__bit_or
	mov	r1, 31
	mov	x2, rax
	mov	r0, x0
	call	__bit_shr
	mov	r1, 1
	mov	x5, rax
	mov	r0, x3
	call	__bit_shl
	mov	r0, rax
	mov	r1, x5
	call	__bit_or
	mov	r1, 1
	mov	x5, rax
	mov	r0, x0
	call	__bit_shl
	mov	x7, rax
	jmp	.LBB0_51
.LBB0_48:
	mov	r0, -53
	jg	x5, r0, .LBB0_50
	jmp	.LBB0_49
.LBB0_49:
	mov	x2, 0
	mov	t0, x15
	jmp	.LBB0_58
.LBB0_50:
	mov	x7, x5
	mov	r0, 1
	sub	r0, x5
	mov	r1, 31
add	x7, 52
	call	__bit_and
	mov	x0, rax
	mov	r1, 0
	sub	r1, x0
	mov	x3, 0
	mov	r0, x0
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r0, -31
	sub	r0, x5
	mov	r1, 31
	mov	x2, rax
	call	__bit_shr
	mov	x11, rax
	mov	r0, x10
	mov	r1, x0
	call	__bit_shr
	mov	x12, 0
	sub	x12, x11
	mov	x13, rax
	mov	r0, x12
	call	__bit_not
	mov	r0, x13
	mov	r1, rax
	call	__bit_and
	mov	x14, rax
	mov	r0, x6
	mov	r1, x0
	call	__bit_shr
	mov	x6, rax
	mov	r0, 32
	sub	r0, x0
	mov	r1, 31
	mov	x11, 32
	call	__bit_and
	mov	r0, x10
	mov	r1, rax
	call	__bit_shl
	mov	r1, 0
	sub	r1, x2
	mov	r0, rax
	call	__bit_and
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x12
	call	__bit_and
	mov	r0, rax
	mov	r1, x14
	call	__bit_or
	mov	x6, rax
	mov	r0, x13
	mov	r1, x12
	call	__bit_and
	mov	r1, 31
	mov	x2, rax
	mov	r0, x7
	call	__bit_and
	mov	x0, rax
	mov	r1, 0
	sub	r1, x0
	mov	r0, x0
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
add	x5, 20
	mov	r1, 31
	mov	x7, rax
	mov	r0, x5
	call	__bit_shr
	mov	x5, rax
	mov	r0, x8
	mov	r1, x0
	call	__bit_shl
	mov	x10, 0
	sub	x10, x5
	mov	x5, rax
	mov	r0, x10
	call	__bit_not
	mov	r0, x5
	mov	r1, rax
	call	__bit_and
	mov	x12, rax
	mov	r0, x9
	mov	r1, x0
	call	__bit_shl
	sub	x11, x0
	mov	r1, 31
	mov	x0, rax
	mov	r0, x11
	call	__bit_and
	mov	r0, x8
	mov	r1, rax
	call	__bit_shr
	sub	x3, x7
	mov	r0, rax
	mov	r1, x3
	call	__bit_and
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x10
	call	__bit_and
	mov	r0, rax
	mov	r1, x12
	call	__bit_or
	mov	x0, rax
	mov	r0, x5
	mov	r1, x10
	call	__bit_and
	mov	x3, rax
	mov	r0, x1
	mov	r1, x4
	mov	r2, x6
	mov	r3, x2
	call	__muldi3
	mov	r1, 1
	mov	x5, rax
	mov	r0, t0
	call	__bit_shl
	mov	r1, 31
	mov	x7, rax
	mov	r0, x5
	call	__bit_shr
	mov	r0, x7
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	x7, rax
	mov	r0, x5
	call	__bit_shl
	mov	r0, x3
	mov	r1, x0
	mov	r2, rax
	mov	r3, x7
	call	__subdi3
	mov	x7, rax
	mov	x5, t0
.LBB0_51:
	mov	r1, 1
	mov	r0, x6
	call	__bit_and
	mov	r1, 0
	mov	x3, 0
	mov	r0, rax
	mov	r2, x7
	mov	r3, x5
	call	__adddi3
	mov	r0, t0
add	r0, -2147483648
	mov	r1, x4
add	r1, -2147483648
	mov	x5, 1
	jg	r0, r1, .LBB0_53
// %bb.52:
	mov	x5, 0
.LBB0_53:
add	rax, -2147483648
add	x1, -2147483648
	mov	r1, 1
	jg	rax, x1, .LBB0_55
// %bb.54:
	mov	r1, 0
.LBB0_55:
	sub	r1, x5
	mov	r0, 1
	je	t0, x4, .LBB0_57
// %bb.56:
	mov	r0, 0
.LBB0_57:
	sub	x3, r0
	mov	r0, x3
	call	__bit_and
	add	x5, rax
	mov	r1, 1
	mov	r0, x5
	call	__bit_and
	mov	r3, 0
	mov	r0, x6
	mov	r1, x2
	mov	r2, rax
	call	__adddi3
	mov	x2, rax
	mov	r0, t0
	mov	r1, x15
	call	__bit_or
	mov	t0, rax
.LBB0_58:
	mov	rax, x2
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
