#include "_ll_std"

// -- Begin function __ashrdi3
__ashrdi3:                              // @__ashrdi3
// %bb.0:
sub	rsp, 16
	mov	[rsp+12], x0
	mov	[rsp+8], x1
	mov	[rsp+4], x2
	mov	[rsp], x3
	mov	x0, r2
	mov	x1, r1
	mov	rax, r0
	mov	r1, 0
	mov	r0, 1
	jl	x0, r1, .LBB0_2
// %bb.1:
	mov	r0, 0
.LBB0_2:
	mov	r1, r0
	mul	r1, 67108864
	mul	r0, -2147483648
	mov	r2, x0
	sub	r2, r0
	div	r2, 32
	add	r2, r1
	mov	r0, r2
	div	r0, 2
	mul	r0, 2
	sub	r2, r0
	mul	r2, 32
	jz	r2, .LBB0_10
	jmp	.LBB0_3
.LBB0_3:
	mov	r1, 0
	mov	r2, 1
	mov	r0, 1
	jl	x1, r1, .LBB0_5
// %bb.4:
	mov	r0, 0
.LBB0_5:
	mov	r3, r0
	mul	r3, -2147483648
	mov	r4, x1
	sub	r4, r3
	mov	r3, -2147483648
	je	r4, r3, .LBB0_7
// %bb.6:
	mov	r2, 0
.LBB0_7:
	mov	x2, 0
	sub	x2, r2
	mov	r2, 1
	jl	x2, r1, .LBB0_9
// %bb.8:
	mov	r2, 0
.LBB0_9:
	mov	r1, r2
	mul	r1, -2147483648
	mov	r3, x2
	sub	r3, r1
	div	r3, 2
	mul	r2, 1073741824
	add	r2, r3
	mul	r2, 2
	sub	x2, r2
add	x0, -32
	sub	x2, r0
	mov	r0, x1
	mov	r1, x0
	call	__bit_sar
	jmp	.LBB0_12
.LBB0_10:
	jz	x0, .LBB0_13
	jmp	.LBB0_11
.LBB0_11:
	mov	r0, x1
	mov	r1, x0
	mov	x3, rax
	call	__bit_sar
	mov	r1, 32
	sub	r1, x0
	mov	x2, rax
	mov	r0, x1
	call	__bit_shl
	mov	x1, rax
	mov	r0, x3
	mov	r1, x0
	call	__bit_shr
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
.LBB0_12:
	mov	x1, x2
.LBB0_13:
	mov	t0, x1
	mov	x3, [rsp]
	mov	x2, [rsp+4]
	mov	x1, [rsp+8]
	mov	x0, [rsp+12]
add	rsp, 16
	ret
// -- End function
