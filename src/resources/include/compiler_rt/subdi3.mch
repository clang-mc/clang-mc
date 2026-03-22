#include "_ll_std"

// -- Begin function __subdi3
__subdi3:                               // @__subdi3
// %bb.0:
	mov	r4, r1
	mov	r5, r0
	sub	r4, r3
	mov	r1, 31
	sub	r5, r2
	mov	r0, r4
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	add	rax, r5
	add	rax, 1
	mov	t0, r4
	ret
// -- End function
