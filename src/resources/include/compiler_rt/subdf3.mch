#include "_ll_std"

// -- Begin function __subdf3
__subdf3:                               // @__subdf3
// %bb.0:
sub	rsp, 12
	mov	[rsp+8], x0
	mov	[rsp+4], x1
	mov	[rsp], x2
	mov	x0, r1
	mov	r1, -2147483648
	mov	x1, r2
	mov	x2, r0
	mov	r0, r3
	call	__bit_xor
	mov	r0, x2
	mov	r1, x0
	mov	r2, x1
	mov	r3, rax
	call	__adddf3
	mov	x2, [rsp]
	mov	x1, [rsp+4]
	mov	x0, [rsp+8]
add	rsp, 12
	ret
// -- End function
