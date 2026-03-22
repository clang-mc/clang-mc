#include "_ll_std"

// -- Begin function __subdf3
__subdf3:                               // @__subdf3
// %bb.0:
	mov	r4, r1
	mov	r1, -2147483648
	mov	r5, r0
	mov	r0, r3
	call	__bit_xor
	mov	r0, r5
	mov	r1, r4
	mov	r3, rax
	jmp	__adddf3
// -- End function
