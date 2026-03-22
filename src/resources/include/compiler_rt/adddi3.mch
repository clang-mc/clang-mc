#include "_ll_std"

// -- Begin function __adddi3
__adddi3:                               // @__adddi3
// %bb.0:
	mov	r4, r1
	mov	r5, r0
	mov	r1, 31
	add	r3, r4
	mov	r0, r4
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	add	r5, r2
	mov	r0, rax
	call	__bit_and
	add	rax, r5
	mov	t0, r3
	ret
// -- End function
