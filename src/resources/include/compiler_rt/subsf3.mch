#include "_ll_std"

// -- Begin function __subsf3
__subsf3:                               // @__subsf3
// %bb.0:
	mov	r4, 0
	mov	r5, 1
	mov	r2, 1
	jl	r1, r4, .LBB0_2
// %bb.1:
	mov	r2, 0
.LBB0_2:
	mov	r3, r2
	mul	r3, -2147483648
	mov	r6, r1
	sub	r6, r3
	mov	r3, -2147483648
	je	r6, r3, .LBB0_4
// %bb.3:
	mov	r5, 0
.LBB0_4:
	mov	r3, 0
	sub	r3, r5
	mov	r5, 1
	jl	r3, r4, .LBB0_6
// %bb.5:
	mov	r5, 0
.LBB0_6:
	mov	r4, r5
	mul	r4, -2147483648
	mov	r6, r3
	sub	r6, r4
	div	r6, 2
	mul	r5, 1073741824
	add	r5, r6
	mul	r5, 2
	sub	r3, r5
	add	r3, r2
	mul	r3, -2147483648
	add	r3, r3
	sub	r1, r3
add	r1, -2147483648
	call	__addsf3
	ret
// -- End function
