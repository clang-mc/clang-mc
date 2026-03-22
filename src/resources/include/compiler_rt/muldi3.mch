#include "_ll_std"

// -- Begin function __muldi3
__muldi3:                               // @__muldi3
// %bb.0:
	mov	r4, r1
	mov	r1, 65535
	mov	r5, r3
	mov	r3, r0
	mov	r0, r4
	call	__bit_and
	mov	r6, rax
	mov	r0, r5
	call	__bit_and
	mov	r7, rax
	mov	r0, r7
	mul	r0, r6
	mov	r1, 16
	call	__bit_shr
	mov	r1, 65535
	mov	t1, rax
	call	__bit_and
	mov	r1, 16
	mov	t2, rax
	mov	r0, r4
	call	__bit_shr
	mov	t3, rax
	mul	r7, t3
	add	r7, t1
	mov	r0, r7
	call	__bit_shr
	mov	r1, 65535
	mov	t1, rax
	call	__bit_and
	mov	r1, 16
	mov	r7, rax
	mov	r0, r5
	call	__bit_shr
	mov	t4, rax
	mul	r6, t4
	add	r6, r7
	mov	r0, r6
	call	__bit_shl
	mov	r0, rax
	mov	r1, t2
	call	__bit_or
	mov	r1, 16
	mov	r7, rax
	mov	r0, r6
	call	__bit_shr
	mul	t4, t3
	mul	r3, r5
	mul	r4, r2
	add	r4, r3
	add	r4, t4
	add	r4, t1
	add	rax, r4
	mov	t0, r7
	ret
// -- End function
