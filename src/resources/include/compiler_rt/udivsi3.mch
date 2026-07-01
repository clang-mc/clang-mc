#include "_ll_std"

// -- Begin function __udivsi3
__udivsi3:                              // @__udivsi3
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
	mov	x0, r1
	mov	x1, r0
	mov	x2, 0
	jz	x0, .LBB0_26
	jmp	.LBB0_1
.LBB0_1:
	mov	x10, x0
add	x10, -2147483648
	mov	r0, x1
add	r0, -2147483648
	jl	r0, x10, .LBB0_26
	jmp	.LBB0_2
.LBB0_2:
	mov	r0, 1
	mov	x2, x1
	je	x0, r0, .LBB0_26
	jmp	.LBB0_3
.LBB0_3:
	mov	x11, 0
	mov	x12, -1
	mov	x2, 0
	mov	x3, 0
.LBB0_4:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_12 Depth 2
	mov	r1, 1
	mov	r0, x1
	call	__bit_shr
	mov	r1, 31
	mov	x4, rax
	mov	r0, x3
	call	__bit_shl
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	x4, rax
	mov	r0, x3
	call	__bit_shr
	mov	x5, rax
add	x4, -2147483648
	mov	r1, 1
	jl	x4, x10, .LBB0_6
// %bb.5:                               //   in Loop: Header=BB0_4 Depth=1
	mov	r1, 0
.LBB0_6:                                //   in Loop: Header=BB0_4 Depth=1
	mov	r2, 1
	mov	x6, 1
	jl	x5, x11, .LBB0_8
// %bb.7:                               //   in Loop: Header=BB0_4 Depth=1
	mov	x6, 0
.LBB0_8:                                //   in Loop: Header=BB0_4 Depth=1
	je	x5, x11, .LBB0_10
// %bb.9:                               //   in Loop: Header=BB0_4 Depth=1
	mov	r2, 0
.LBB0_10:                               //   in Loop: Header=BB0_4 Depth=1
	sub	r1, x6
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	rax, x6
	mov	x7, x0
	mov	x8, 0
	mov	x6, 1
	jnz	rax, .LBB0_19
	jmp	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_4 Depth=1
	mov	x7, x0
.LBB0_12:                               //   Parent Loop BB0_4 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 31
	mov	r0, x7
	call	__bit_shr
	mov	r1, 1
	mov	x9, rax
	mov	r0, x8
	call	__bit_shl
	mov	r0, rax
	mov	r1, x9
	call	__bit_or
	mov	r1, 1
	mov	x8, rax
	mov	r0, x7
	call	__bit_shl
	mov	r1, 1
	mov	x7, rax
	mov	r0, x6
	call	__bit_shl
	mov	x6, rax
	mov	r2, 1
	je	x8, x5, .LBB0_14
// %bb.13:                              //   in Loop: Header=BB0_12 Depth=2
	mov	r2, 0
.LBB0_14:                               //   in Loop: Header=BB0_12 Depth=2
	mov	r1, 1
	mov	x9, 1
	jle	x8, x5, .LBB0_16
// %bb.15:                              //   in Loop: Header=BB0_12 Depth=2
	mov	x9, 0
.LBB0_16:                               //   in Loop: Header=BB0_12 Depth=2
	mov	r0, x7
add	r0, -2147483648
	jle	r0, x4, .LBB0_18
// %bb.17:                              //   in Loop: Header=BB0_12 Depth=2
	mov	r1, 0
.LBB0_18:                               //   in Loop: Header=BB0_12 Depth=2
	mov	r0, 0
	sub	r0, r2
	sub	r1, x9
	call	__bit_and
	add	rax, x9
	jnz	rax, .LBB0_12
	jmp	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_4 Depth=1
	mov	r0, x1
	mov	r1, x3
	mov	r2, x7
	mov	r3, x8
	call	__subdi3
	mov	x1, rax
	mov	x3, t0
	mov	r1, 1
	mov	x4, 1
	jg	x3, x12, .LBB0_21
// %bb.20:                              //   in Loop: Header=BB0_4 Depth=1
	mov	x4, 0
.LBB0_21:                               //   in Loop: Header=BB0_4 Depth=1
	mov	r0, x1
add	r0, -2147483648
	jge	r0, x10, .LBB0_23
// %bb.22:                              //   in Loop: Header=BB0_4 Depth=1
	mov	r1, 0
.LBB0_23:                               //   in Loop: Header=BB0_4 Depth=1
	mov	r2, 1
	je	x3, x11, .LBB0_25
// %bb.24:                              //   in Loop: Header=BB0_4 Depth=1
	mov	r2, 0
.LBB0_25:                               //   in Loop: Header=BB0_4 Depth=1
	sub	r1, x4
	mov	r0, 0
	sub	r0, r2
	add	x2, x6
	call	__bit_and
	add	rax, x4
	jnz	rax, .LBB0_4
	jmp	.LBB0_26
.LBB0_26:
	mov	rax, x2
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
