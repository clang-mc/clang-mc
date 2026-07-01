#include "_ll_std"

// -- Begin function __adddi3
__adddi3:                               // @__adddi3
// %bb.0:
sub	rsp, 8
	mov	[rsp+4], x0
	mov	[rsp], x1
	mov	x0, r0
	add	x0, r2
	mov	x1, r3
	mov	r3, r1
	mov	r1, x0
add	r1, -2147483648
add	r2, -2147483648
	mov	r0, 1
	jl	r1, r2, .LBB0_2
// %bb.1:
	mov	r0, 0
.LBB0_2:
	mov	r1, 1
	add	x1, r3
	call	__bit_and
	add	x1, rax
	mov	rax, x0
	mov	t0, x1
	mov	x1, [rsp]
	mov	x0, [rsp+4]
add	rsp, 8
	ret
// -- End function
