#include "_ll_std"

// -- Begin function __subdf3
__subdf3:                               // @__subdf3
// %bb.0:
	mov	r6, 0
	mov	r7, 1
	mov	r4, 1
	jl	r3, r6, .LBB0_2
// %bb.1:
	mov	r4, 0
.LBB0_2:
	mov	r5, r4
	mul	r5, -2147483648
	mov	t0, r3
	sub	t0, r5
	mov	r5, -2147483648
	je	t0, r5, .LBB0_4
// %bb.3:
	mov	r7, 0
.LBB0_4:
	mov	r5, 0
	sub	r5, r7
	mov	r7, 1
	jl	r5, r6, .LBB0_6
// %bb.5:
	mov	r7, 0
.LBB0_6:
	mov	r6, r7
	mul	r6, -2147483648
	mov	t0, r5
	sub	t0, r6
	div	t0, 2
	mul	r7, 1073741824
	add	r7, t0
	mul	r7, 2
	sub	r5, r7
	add	r5, r4
	mul	r5, -2147483648
	add	r5, r5
	sub	r3, r5
add	r3, -2147483648
	call	__adddf3
	ret
// -- End function
