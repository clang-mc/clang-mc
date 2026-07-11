#include "_ll_std"

// -- Begin function __muldi3
__muldi3:                               // @__muldi3
// %bb.0:
sub	rsp, 36
	mov	[rsp+32], x0
	mov	[rsp+28], x1
	mov	[rsp+24], x2
	mov	[rsp+20], x3
	mov	[rsp+16], x4
	mov	[rsp+12], x5
	mov	[rsp+8], x6
	mov	[rsp+4], x7
	mov	[rsp], x8
	mov	x0, r3
	mov	x3, r2
	mov	x1, r1
	mov	x2, r0
	mov	x5, 0
	mov	r0, 1
	mov	r1, 1
	jl	x2, x5, .LBB0_2
// %bb.1:
	mov	r1, 0
.LBB0_2:
	mov	r2, r1
	mul	r2, 32768
	mul	r1, -2147483648
	mov	x4, x2
	sub	x4, r1
	div	x4, 65536
	add	x4, r2
	mov	r1, x4
	mul	r1, 65536
	mov	x6, x2
	sub	x6, r1
	jl	x3, x5, .LBB0_4
// %bb.3:
	mov	r0, 0
.LBB0_4:
	mov	r1, r0
	mul	r1, 32768
	mul	r0, -2147483648
	mov	x7, x3
	sub	x7, r0
	div	x7, 65536
	add	x7, r1
	mov	r1, x7
	mul	r1, 65536
	mov	r0, x3
	sub	r0, r1
	mov	r1, r0
	mul	r1, x6
	mov	x8, 1
	mov	r2, 1
	jl	r1, x5, .LBB0_6
// %bb.5:
	mov	r2, 0
.LBB0_6:
	mov	r3, r2
	mul	r3, -2147483648
	mov	r4, r1
	sub	r4, r3
	div	r4, 65536
	mul	r2, 32768
	add	r2, r4
	mov	r3, r2
	mul	r3, 65536
	mul	r0, x4
	add	r0, r2
	sub	r1, r3
	jl	r0, x5, .LBB0_8
// %bb.7:
	mov	x8, 0
.LBB0_8:
	mov	r2, x8
	mul	r2, -2147483648
	mov	r3, r0
	sub	r3, r2
	div	r3, 65536
	mul	x8, 32768
	add	x8, r3
	mov	r2, x8
	mul	r2, 65536
	sub	r0, r2
	mul	x6, x7
	add	x6, r0
	mov	r0, x6
	mul	r0, 65536
	call	__bit_or
	mov	r0, 1
	jl	x6, x5, .LBB0_10
// %bb.9:
	mov	r0, 0
.LBB0_10:
	mov	r1, r0
	mul	r1, -2147483648
	sub	x6, r1
	div	x6, 65536
	mul	r0, 32768
	add	r0, x6
	mul	x7, x4
	mul	x1, x3
	mul	x0, x2
	add	x0, x1
	add	x0, x7
	add	x0, x8
	add	x0, r0
	mov	t0, x0
	mov	x8, [rsp]
	mov	x7, [rsp+4]
	mov	x6, [rsp+8]
	mov	x5, [rsp+12]
	mov	x4, [rsp+16]
	mov	x3, [rsp+20]
	mov	x2, [rsp+24]
	mov	x1, [rsp+28]
	mov	x0, [rsp+32]
add	rsp, 36
	ret
// -- End function
