#include "_ll_std"

// -- Begin function __adddi3
__adddi3:                               // @__adddi3
// %bb.0:
	mov	rax, r0
	add	rax, r2
	mov	r5, rax
add	r5, -2147483648
add	r2, -2147483648
	mov	r4, 1
	mov	r0, 1
	jl	r5, r2, .LBB0_2
// %bb.1:
	mov	r0, 0
.LBB0_2:
	mov	r2, 0
	add	r3, r1
	jl	r0, r2, .LBB0_4
// %bb.3:
	mov	r4, 0
.LBB0_4:
	mov	r1, r4
	mul	r1, -2147483648
	mov	r2, r0
	sub	r2, r1
	div	r2, 2
	mul	r4, 1073741824
	add	r4, r2
	mul	r4, 2
	sub	r0, r4
	add	r3, r0
	mov	t0, r3
	ret
// -- End function
