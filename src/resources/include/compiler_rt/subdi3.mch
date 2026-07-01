#include "_ll_std"

// -- Begin function __subdi3
__subdi3:                               // @__subdi3
// %bb.0:
	mov	rax, r0
	sub	rax, r2
	sub	r1, r3
add	r2, -2147483648
add	r0, -2147483648
	mov	r3, 1
	jl	r0, r2, .LBB0_2
// %bb.1:
	mov	r3, 0
.LBB0_2:
	mov	r0, 0
	sub	r0, r3
	add	r1, r0
	mov	t0, r1
	ret
// -- End function
