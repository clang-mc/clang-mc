#include "_ll_std"

// -- Begin function __udivsi3
__udivsi3:                              // @__udivsi3
// %bb.0:
sub	rsp, 56
	mov	[rsp+52], x0
	mov	[rsp+48], x1
	mov	[rsp+44], x2
	mov	[rsp+40], x3
	mov	[rsp+36], x4
	mov	[rsp+32], x5
	mov	[rsp+28], x6
	mov	[rsp+24], x7
	mov	[rsp+20], x8
	mov	[rsp+16], x9
	mov	[rsp+12], x10
	mov	[rsp+8], x11
	mov	[rsp+4], x12
	mov	[rsp], x13
	mov	x0, r1
	mov	x1, r0
	mov	x2, 0
	jz	x0, .LBB0_36
	jmp	.LBB0_1
.LBB0_1:
	mov	x6, x0
add	x6, -2147483648
	mov	r0, x1
add	r0, -2147483648
	jl	r0, x6, .LBB0_36
	jmp	.LBB0_2
.LBB0_2:
	mov	r0, 1
	mov	x2, x1
	je	x0, r0, .LBB0_36
	jmp	.LBB0_3
.LBB0_3:
	mov	x7, 0
	mov	x8, -1
	mov	x9, -2147483648
	mov	x2, 0
	mov	x3, 0
.LBB0_4:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_16 Depth 2
	mov	r1, 1
	mov	r0, 1
	jl	x1, x7, .LBB0_6
// %bb.5:                               //   in Loop: Header=BB0_4 Depth=1
	mov	r0, 0
.LBB0_6:                                //   in Loop: Header=BB0_4 Depth=1
	jl	x3, x7, .LBB0_8
// %bb.7:                               //   in Loop: Header=BB0_4 Depth=1
	mov	r1, 0
.LBB0_8:                                //   in Loop: Header=BB0_4 Depth=1
	mov	r2, r1
	mul	r2, 1073741824
	mul	r1, -2147483648
	mov	x10, x3
	sub	x10, r1
	div	x10, 2
	add	x10, r2
	mov	r1, 1
	mov	x4, 1
	jl	x10, x7, .LBB0_10
// %bb.9:                               //   in Loop: Header=BB0_4 Depth=1
	mov	x4, 0
.LBB0_10:                               //   in Loop: Header=BB0_4 Depth=1
	mov	r2, r0
	mul	r2, 1073741824
	mul	r0, -2147483648
	mov	r3, x1
	sub	r3, r0
	div	r3, 2
	add	r3, r2
	mov	x12, x3
	mul	x12, -2147483648
	add	x12, r3
add	x12, -2147483648
	jl	x12, x6, .LBB0_12
// %bb.11:                              //   in Loop: Header=BB0_4 Depth=1
	mov	r1, 0
.LBB0_12:                               //   in Loop: Header=BB0_4 Depth=1
	mov	r2, 1
	je	x10, x7, .LBB0_14
// %bb.13:                              //   in Loop: Header=BB0_4 Depth=1
	mov	r2, 0
.LBB0_14:                               //   in Loop: Header=BB0_4 Depth=1
	sub	r1, x4
	mov	r0, 0
	sub	r0, r2
	mov	x11, 1
	call	__bit_and
	add	rax, x4
	mov	x5, x0
	mov	x4, 0
	jnz	rax, .LBB0_29
	jmp	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_4 Depth=1
	mov	x5, x0
.LBB0_16:                               //   Parent Loop BB0_4 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, 1
	jl	x5, x7, .LBB0_18
// %bb.17:                              //   in Loop: Header=BB0_16 Depth=2
	mov	r0, 0
.LBB0_18:                               //   in Loop: Header=BB0_16 Depth=2
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x5
	sub	r2, r1
	mov	r1, 1
	mov	r3, 1
	je	r2, x9, .LBB0_20
// %bb.19:                              //   in Loop: Header=BB0_16 Depth=2
	mov	r3, 0
.LBB0_20:                               //   in Loop: Header=BB0_16 Depth=2
	mov	r2, 0
	sub	r2, r3
	jl	r2, x7, .LBB0_22
// %bb.21:                              //   in Loop: Header=BB0_16 Depth=2
	mov	r1, 0
.LBB0_22:                               //   in Loop: Header=BB0_16 Depth=2
	mov	r3, r1
	mul	r3, -2147483648
	mov	r4, r2
	sub	r4, r3
	div	r4, 2
	mul	r1, 1073741824
	add	r1, r4
	mul	r1, 2
	sub	r2, r1
	add	r2, r0
	mul	x4, 2
	add	x4, r2
	mov	x13, 1
	mov	r2, 1
	je	x4, x10, .LBB0_24
// %bb.23:                              //   in Loop: Header=BB0_16 Depth=2
	mov	r2, 0
.LBB0_24:                               //   in Loop: Header=BB0_16 Depth=2
	jle	x4, x10, .LBB0_26
// %bb.25:                              //   in Loop: Header=BB0_16 Depth=2
	mov	x13, 0
.LBB0_26:                               //   in Loop: Header=BB0_16 Depth=2
	mul	x5, 2
	mov	r0, x5
add	r0, -2147483648
	mov	r1, 1
	jle	r0, x12, .LBB0_28
// %bb.27:                              //   in Loop: Header=BB0_16 Depth=2
	mov	r1, 0
.LBB0_28:                               //   in Loop: Header=BB0_16 Depth=2
	mov	r0, 0
	sub	r0, r2
	sub	r1, x13
	mul	x11, 2
	call	__bit_and
	add	rax, x13
	jnz	rax, .LBB0_16
	jmp	.LBB0_29
.LBB0_29:                               //   in Loop: Header=BB0_4 Depth=1
	mov	r0, x1
	mov	r1, x3
	mov	r2, x5
	mov	r3, x4
	call	__subdi3
	mov	x1, rax
	mov	x3, t0
	mov	r1, 1
	mov	x4, 1
	jg	x3, x8, .LBB0_31
// %bb.30:                              //   in Loop: Header=BB0_4 Depth=1
	mov	x4, 0
.LBB0_31:                               //   in Loop: Header=BB0_4 Depth=1
	mov	r0, x1
add	r0, -2147483648
	jge	r0, x6, .LBB0_33
// %bb.32:                              //   in Loop: Header=BB0_4 Depth=1
	mov	r1, 0
.LBB0_33:                               //   in Loop: Header=BB0_4 Depth=1
	mov	r2, 1
	je	x3, x7, .LBB0_35
// %bb.34:                              //   in Loop: Header=BB0_4 Depth=1
	mov	r2, 0
.LBB0_35:                               //   in Loop: Header=BB0_4 Depth=1
	sub	r1, x4
	mov	r0, 0
	sub	r0, r2
	add	x2, x11
	call	__bit_and
	add	rax, x4
	jnz	rax, .LBB0_4
	jmp	.LBB0_36
.LBB0_36:
	mov	rax, x2
	mov	x13, [rsp]
	mov	x12, [rsp+4]
	mov	x11, [rsp+8]
	mov	x10, [rsp+12]
	mov	x9, [rsp+16]
	mov	x8, [rsp+20]
	mov	x7, [rsp+24]
	mov	x6, [rsp+28]
	mov	x5, [rsp+32]
	mov	x4, [rsp+36]
	mov	x3, [rsp+40]
	mov	x2, [rsp+44]
	mov	x1, [rsp+48]
	mov	x0, [rsp+52]
add	rsp, 56
	ret
// -- End function
