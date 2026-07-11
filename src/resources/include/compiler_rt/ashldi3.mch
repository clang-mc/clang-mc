#include "_ll_std"

// -- Begin function __ashldi3
__ashldi3:                              // @__ashldi3
// %bb.0:
sub	rsp, 16
	mov	[rsp+12], x0
	mov	[rsp+8], x1
	mov	[rsp+4], x2
	mov	[rsp], x3
	mov	x0, r2
	mov	r3, 0
	mov	r2, 1
	jl	x0, r3, .LBB0_2
// %bb.1:
	mov	r2, 0
.LBB0_2:
	mov	r3, r2
	mul	r3, 67108864
	mul	r2, -2147483648
	mov	r4, x0
	sub	r4, r2
	div	r4, 32
	add	r4, r3
	mov	r2, r4
	div	r2, 2
	mul	r2, 2
	sub	r4, r2
	mul	r4, 32
	jz	r4, .LBB0_4
	jmp	.LBB0_3
.LBB0_3:
add	x0, -32
	mov	r1, x0
	call	__bit_shl
	mov	r1, rax
	mov	r0, 0
	jmp	.LBB0_6
.LBB0_4:
	jz	x0, .LBB0_7
	jmp	.LBB0_5
.LBB0_5:
	mov	x1, r0
	mov	x2, r1
	mov	r1, x0
	call	__bit_shl
	mov	x3, rax
	mov	r0, x2
	mov	r1, x0
	call	__bit_shl
	mov	r1, 32
	sub	r1, x0
	mov	x0, rax
	mov	r0, x1
	call	__bit_shr
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	r1, rax
	mov	r0, x3
.LBB0_6:
.LBB0_7:
	mov	rax, r0
	mov	t0, r1
	mov	x3, [rsp]
	mov	x2, [rsp+4]
	mov	x1, [rsp+8]
	mov	x0, [rsp+12]
add	rsp, 16
	ret
// -- End function
