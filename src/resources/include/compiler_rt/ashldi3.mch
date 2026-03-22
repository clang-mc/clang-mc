#include "_ll_std"

// -- Begin function __ashldi3
__ashldi3:                              // @__ashldi3
// %bb.0:
	mov	r3, r1
	mov	r1, 32
	mov	r4, r2
	mov	r2, r0
	mov	r0, r4
	call	__bit_and
	jz	rax, .LBB0_2
	jmp	.LBB0_1
.LBB0_1:
	add	r4, -32
	mov	r0, r3
	mov	r1, r4
	call	__bit_shl
	mov	r2, rax
	mov	r3, 0
	jmp	.LBB0_4
.LBB0_2:
	jz	r4, .LBB0_5
	jmp	.LBB0_3
.LBB0_3:
	mov	r0, r3
	mov	r1, r4
	call	__bit_shl
	mov	r5, rax
	mov	r0, r2
	call	__bit_shl
	mov	r1, 32
	sub	r1, r4
	mov	r2, rax
	mov	r0, r3
	call	__bit_shr
	mov	r0, rax
	mov	r1, r2
	call	__bit_or
	mov	r2, rax
	mov	r3, r5
.LBB0_4:
.LBB0_5:
	mov	rax, r2
	mov	t0, r3
	ret
// -- End function
