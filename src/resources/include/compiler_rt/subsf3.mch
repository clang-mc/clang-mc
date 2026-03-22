#include "_ll_std"

// -- Begin function __subsf3
__subsf3:                               // @__subsf3
// %bb.0:
	mov	r2, r1
	mov	r1, -2147483648
	mov	r3, r0
	mov	r0, r2
	call	__bit_xor
	mov	r0, r3
	mov	r1, rax
	jmp	__addsf3
// -- End function
