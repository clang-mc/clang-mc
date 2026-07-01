#include "_ll_std"

// -- Begin function __subsf3
__subsf3:                               // @__subsf3
// %bb.0:
sub	rsp, 4
	mov	[rsp], x0
	mov	r2, r1
	mov	r1, -2147483648
	mov	x0, r0
	mov	r0, r2
	call	__bit_xor
	mov	r0, x0
	mov	r1, rax
	call	__addsf3
	mov	x0, [rsp]
add	rsp, 4
	ret
// -- End function
