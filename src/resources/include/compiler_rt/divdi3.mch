#include "_ll_std"

// -- Begin function __divdi3
__divdi3:                               // @__divdi3
// %bb.0:
sub	rsp, 32
	mov	[rsp+28], x0
	mov	[rsp+24], x1
	mov	[rsp+20], x2
	mov	[rsp+16], x3
	mov	[rsp+12], x4
	mov	[rsp+8], x5
	mov	[rsp+4], x6
	mov	[rsp], x7
	mov	x0, r3
	mov	x1, r2
	mov	x3, r1
	mov	r1, r0
	mov	r0, 0
	mov	r2, 1
	mov	r3, 1
	jl	x3, r0, .LBB0_2
// %bb.1:
	mov	r3, 0
.LBB0_2:
	mov	r4, r3
	mul	r4, -2147483648
	mov	r5, x3
	sub	r5, r4
	mov	r4, -2147483648
	je	r5, r4, .LBB0_4
// %bb.3:
	mov	r2, 0
.LBB0_4:
	mov	x2, 0
	sub	x2, r2
	mov	r2, 1
	mov	r5, 1
	jl	x2, r0, .LBB0_6
// %bb.5:
	mov	r5, 0
.LBB0_6:
	mov	r6, r5
	mul	r6, -2147483648
	mov	r7, x2
	sub	r7, r6
	div	r7, 2
	mul	r5, 1073741824
	add	r5, r7
	mul	r5, 2
	jl	x0, r0, .LBB0_8
// %bb.7:
	mov	r2, 0
.LBB0_8:
	sub	x2, r5
	mov	r5, r2
	mul	r5, -2147483648
	mov	r7, x0
	sub	r7, r5
	mov	r5, 1
	mov	r6, 1
	je	r7, r4, .LBB0_10
// %bb.9:
	mov	r6, 0
.LBB0_10:
	mov	x5, x2
	add	x5, r3
	mov	x4, 0
	sub	x4, r6
	sub	x2, r3
	jl	x4, r0, .LBB0_12
// %bb.11:
	mov	r5, 0
.LBB0_12:
	mov	r0, r5
	mul	r0, -2147483648
	mov	r3, x4
	sub	r3, r0
	div	r3, 2
	mul	r5, 1073741824
	add	r5, r3
	mul	r5, 2
	sub	x4, r5
	mov	x6, x4
	add	x6, r2
	sub	x4, r2
	mov	r0, x2
	call	__bit_xor
	mov	x7, rax
	mov	r0, x2
	mov	r1, x3
	call	__bit_xor
	mov	r3, 0
	mov	r0, x7
	mov	r1, rax
	mov	r2, x5
	call	__adddi3
	mov	x3, rax
	mov	x5, t0
	mov	r0, x4
	mov	r1, x1
	call	__bit_xor
	mov	x1, rax
	mov	r0, x4
	mov	r1, x0
	call	__bit_xor
	mov	r3, 0
	mov	r0, x1
	mov	r1, rax
	mov	r2, x6
	call	__adddi3
	mov	x0, rax
	mov	x1, t0
	mov	r0, x4
	mov	r1, x2
	call	__bit_xor
	mov	r4, 0
	mov	x2, rax
	mov	r0, x3
	mov	r1, x5
	mov	r2, x0
	mov	r3, x1
	call	__udivmoddi4
	mov	x0, t0
	mov	r0, rax
	mov	r1, x2
	call	__bit_xor
	mov	x1, rax
	mov	r0, x0
	mov	r1, x2
	call	__bit_xor
	mov	r0, x1
	mov	r1, rax
	mov	r2, x2
	mov	r3, x2
	call	__subdi3
	mov	x7, [rsp]
	mov	x6, [rsp+4]
	mov	x5, [rsp+8]
	mov	x4, [rsp+12]
	mov	x3, [rsp+16]
	mov	x2, [rsp+20]
	mov	x1, [rsp+24]
	mov	x0, [rsp+28]
add	rsp, 32
	ret
// -- End function
