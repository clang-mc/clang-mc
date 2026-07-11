#include "_ll_std"

// -- Begin function __lshrdi3
__lshrdi3:                              // @__lshrdi3
// %bb.0:
sub	rsp, 16
	mov	[rsp+12], x0
	mov	[rsp+8], x1
	mov	[rsp+4], x2
	mov	[rsp], x3
	mov	x1, r2
	mov	x0, r1
	mov	rax, r0
	mov	r1, 0
	mov	r0, 1
	jl	x1, r1, .LBB0_2
// %bb.1:
	mov	r0, 0
.LBB0_2:
	mov	r1, r0
	mul	r1, 67108864
	mul	r0, -2147483648
	mov	r2, x1
	sub	r2, r0
	div	r2, 32
	add	r2, r1
	mov	r0, r2
	div	r0, 2
	mul	r0, 2
	sub	r2, r0
	mul	r2, 32
	jz	r2, .LBB0_4
	jmp	.LBB0_3
.LBB0_3:
add	x1, -32
	mov	r0, x0
	mov	r1, x1
	call	__bit_shr
	mov	x0, 0
	jmp	.LBB0_6
.LBB0_4:
	jz	x1, .LBB0_7
	jmp	.LBB0_5
.LBB0_5:
	mov	r0, x0
	mov	r1, x1
	mov	x2, rax
	call	__bit_shr
	mov	r1, 32
	sub	r1, x1
	mov	x3, rax
	mov	r0, x0
	call	__bit_shl
	mov	x0, rax
	mov	r0, x2
	mov	r1, x1
	call	__bit_shr
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	x0, x3
.LBB0_6:
.LBB0_7:
	mov	t0, x0
	mov	x3, [rsp]
	mov	x2, [rsp+4]
	mov	x1, [rsp+8]
	mov	x0, [rsp+12]
add	rsp, 16
	ret
// -- End function
