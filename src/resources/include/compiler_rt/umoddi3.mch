#include "_ll_std"

// -- Begin function __umoddi3
__umoddi3:                              // @__umoddi3
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
	mov	x0, r3
	mov	x1, r2
	mov	x3, r1
	mov	x14, r0
	mov	r0, x1
	mov	r1, x0
	call	__bit_or
	mov	x15, 64
	mov	x2, 64
	jz	rax, .LBB0_4
	jmp	.LBB0_1
.LBB0_1:
	mov	r1, 1
	mov	x7, 1
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
	mov	x5, rax
	mov	r0, x4
	call	__bit_and
	add	x5, rax
	mov	r1, 4
	mov	r0, x5
	call	__bit_shr
	add	x5, rax
	mov	r1, 252645135
	mov	r0, x5
	call	__bit_and
	mul	rax, 16843009
	mov	r1, 24
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	sub	x2, rax
	mov	r0, x0
	call	__bit_shr
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	x5, rax
	mov	r0, x5
	call	__bit_shr
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	r1, 4
	mov	x5, rax
	mov	r0, x5
	call	__bit_shr
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	r1, 8
	mov	x5, rax
	mov	r0, x5
	call	__bit_shr
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	r1, 16
	mov	x5, rax
	mov	r0, x5
	call	__bit_shr
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	x5, rax
	mov	r0, x5
	call	__bit_shr
	mov	r1, 1431655765
	mov	r0, rax
	call	__bit_and
	sub	x5, rax
	mov	r1, 2
	mov	r0, x5
	call	__bit_shr
	mov	r1, 858993459
	mov	r0, rax
	call	__bit_and
	mov	r1, 858993459
	mov	x6, rax
	mov	r0, x5
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
	add	rax, x2
	mov	r1, 32
	mov	r0, 0
	sub	r1, rax
	jne	x0, r0, .LBB0_3
// %bb.2:
	mov	x7, 0
.LBB0_3:
	sub	r0, x7
	call	__bit_and
	add	x2, rax
.LBB0_4:
	mov	r0, x14
	mov	r1, x3
	call	__bit_or
	jz	rax, .LBB0_8
	jmp	.LBB0_5
.LBB0_5:
	mov	r1, 1
	mov	x7, 1
	mov	r0, x14
	call	__bit_shr
	mov	r0, x14
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	x5, rax
	mov	r0, x5
	call	__bit_shr
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	r1, 4
	mov	x5, rax
	mov	r0, x5
	call	__bit_shr
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	r1, 8
	mov	x5, rax
	mov	r0, x5
	call	__bit_shr
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	r1, 16
	mov	x5, rax
	mov	r0, x5
	call	__bit_shr
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	x5, rax
	mov	r0, x5
	call	__bit_shr
	mov	r1, 1431655765
	mov	r0, rax
	call	__bit_and
	sub	x5, rax
	mov	r1, 2
	mov	r0, x5
	call	__bit_shr
	mov	r1, 858993459
	mov	r0, rax
	call	__bit_and
	mov	r1, 858993459
	mov	x6, rax
	mov	r0, x5
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
	mov	r1, 1
	sub	x15, rax
	mov	r0, x3
	call	__bit_shr
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	x5, rax
	mov	r0, x5
	call	__bit_shr
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	r1, 4
	mov	x5, rax
	mov	r0, x5
	call	__bit_shr
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	r1, 8
	mov	x5, rax
	mov	r0, x5
	call	__bit_shr
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	r1, 16
	mov	x5, rax
	mov	r0, x5
	call	__bit_shr
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	x5, rax
	mov	r0, x5
	call	__bit_shr
	mov	r1, 1431655765
	mov	r0, rax
	call	__bit_and
	sub	x5, rax
	mov	r1, 2
	mov	r0, x5
	call	__bit_shr
	mov	r1, 858993459
	mov	r0, rax
	call	__bit_and
	mov	r1, 858993459
	mov	x6, rax
	mov	r0, x5
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
	add	rax, x15
	mov	r1, 32
	mov	r0, 0
	sub	r1, rax
	jne	x3, r0, .LBB0_7
// %bb.6:
	mov	x7, 0
.LBB0_7:
	sub	r0, x7
	call	__bit_and
	add	x15, rax
.LBB0_8:
	mov	x4, x2
	sub	x4, x15
	mov	r0, x4
add	r0, -2147483648
	mov	r1, -2147483585
	mov	x6, x14
	mov	x7, x3
	jg	r0, r1, .LBB0_16
	jmp	.LBB0_9
.LBB0_9:
	mov	x6, 0
	mov	x9, 63
	mov	x7, 0
	je	x4, x9, .LBB0_16
	jmp	.LBB0_10
.LBB0_10:
	mov	r0, x4
add	r0, 1
	mov	r1, 31
	mov	x8, 31
	call	__bit_and
	mov	x6, rax
	mov	r1, 0
	sub	r1, x6
	mov	x5, 0
	mov	r0, x6
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r0, x4
add	r0, -31
	mov	r1, 31
	mov	x7, rax
	call	__bit_shr
	mov	x10, rax
	mov	r0, x3
	mov	r1, x6
	call	__bit_shr
	mov	x11, 0
	sub	x11, x10
	mov	x12, rax
	mov	r0, x11
	call	__bit_not
	mov	r0, x12
	mov	r1, rax
	call	__bit_and
	mov	x13, rax
	mov	r0, x14
	mov	r1, x6
	call	__bit_shr
	mov	[rsp], x14
	mov	x14, rax
	mov	r0, 32
	sub	r0, x6
	mov	r1, 31
	mov	x10, 32
	call	__bit_and
	mov	r0, x3
	mov	r1, rax
	call	__bit_shl
	mov	r1, 0
	sub	r1, x7
	mov	r0, rax
	call	__bit_and
	mov	r0, x14
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x11
	call	__bit_and
	mov	r0, rax
	mov	r1, x13
	call	__bit_or
	mov	x6, rax
	mov	r0, x12
	mov	r1, x11
	call	__bit_and
	sub	x9, x4
	mov	r1, 31
	mov	x7, rax
	mov	r0, x9
	call	__bit_and
	mov	x9, rax
	mov	r1, 0
	sub	r1, x9
	mov	r0, x9
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	sub	x8, x4
	mov	r1, 31
	mov	x11, rax
	mov	r0, x8
	call	__bit_shr
	mov	x8, rax
	mov	x4, [rsp]
	mov	r0, x4
	mov	r1, x9
	call	__bit_shl
	mov	x12, 0
	sub	x12, x8
	mov	x8, rax
	mov	r0, x12
	call	__bit_not
	mov	r0, x8
	mov	r1, rax
	call	__bit_and
	mov	x13, rax
	mov	r0, x3
	mov	r1, x9
	call	__bit_shl
	sub	x10, x9
	mov	r1, 31
	mov	x3, rax
	mov	r0, x10
	call	__bit_and
	mov	r0, x4
	mov	r1, rax
	call	__bit_shr
	mov	r1, 0
	sub	r1, x11
	mov	r0, rax
	call	__bit_and
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x12
	call	__bit_and
	mov	r0, rax
	mov	r1, x13
	call	__bit_or
	mov	x3, rax
	mov	r0, x8
	mov	r1, x12
	call	__bit_and
	mov	x8, rax
	mov	r0, x2
	call	__bit_not
	mov	x2, rax
	add	x2, x15
	mov	x4, 0
.LBB0_11:                               // =>This Inner Loop Header: Depth=1
	mov	r1, 31
	mov	r0, x6
	call	__bit_shr
	mov	r1, 1
	mov	x9, rax
	mov	r0, x7
	call	__bit_shl
	mov	r0, rax
	mov	r1, x9
	call	__bit_or
	mov	r1, 1
	mov	x7, rax
	mov	r0, x6
	call	__bit_shl
	mov	r1, 31
	mov	x6, rax
	mov	r0, x3
	call	__bit_shr
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	x6, rax
	mov	r0, x8
	call	__bit_shl
	mov	r1, 31
	mov	x9, rax
	mov	r0, x8
	call	__bit_shr
	mov	r1, 1
	mov	x8, rax
	mov	r0, x3
	call	__bit_shl
	mov	r0, rax
	mov	r1, x8
	call	__bit_or
	mov	r0, rax
	mov	r1, x5
	call	__bit_or
	mov	x3, rax
	mov	r0, x9
	mov	r1, x4
	call	__bit_or
	mov	x8, rax
	mov	r0, x6
	call	__bit_not
	mov	x4, rax
	mov	r0, x7
	call	__bit_not
	mov	r0, x1
	mov	r1, x0
	mov	r2, x4
	mov	r3, rax
	call	__adddi3
	mov	r1, 31
	mov	x9, t0
	mov	r0, x9
	call	__bit_shr
	mov	x4, rax
	mov	r2, x1
	mov	r3, x0
	jl	x9, x5, .LBB0_13
	jmp	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_11 Depth=1
	mov	r2, 0
	mov	r3, 0
.LBB0_13:                               //   in Loop: Header=BB0_11 Depth=1
	mov	r0, x6
	mov	r1, x7
	call	__subdi3
	mov	x6, rax
	mov	x7, t0
add	x2, 1
	mov	r0, 1
	je	x2, x5, .LBB0_15
// %bb.14:                              //   in Loop: Header=BB0_11 Depth=1
	mov	r0, 0
.LBB0_15:                               //   in Loop: Header=BB0_11 Depth=1
	mov	r1, 1
	call	__bit_and
	jz	rax, .LBB0_11
	jmp	.LBB0_16
.LBB0_16:
	mov	rax, x6
	mov	t0, x7
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
