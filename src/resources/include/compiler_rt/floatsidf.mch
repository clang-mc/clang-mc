#include "_ll_std"

// -- Begin function __floatsidf
__floatsidf:                            // @__floatsidf
// %bb.0:
	mov	r2, 0
	mov	t0, 0
	jz	r0, .LBB0_2
	jmp	.LBB0_1
.LBB0_1:
	mov	r1, -2147483648
	mov	r2, r0
	call	__bit_xor
	add	rax, -2147483648
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r1, 31
	mov	r3, rax
	mov	r0, r2
	call	__bit_sar
	mov	r1, rax
	call	__bit_xor
	mov	r2, rax
	sub	r2, r1
	mov	r0, r3
	call	__bit_not
	add	rax, 1
	mov	r1, -2147483648
	mov	r0, rax
	call	__bit_and
	mov	r1, 1
	mov	r4, rax
	mov	r0, r2
	call	__bit_shr
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	r0, rax
	call	__bit_shr
	mov	r1, rax
	call	__bit_or
	mov	r1, 4
	mov	r0, rax
	call	__bit_shr
	mov	r1, rax
	call	__bit_or
	mov	r1, 8
	mov	r0, rax
	call	__bit_shr
	mov	r1, rax
	call	__bit_or
	mov	r1, 16
	mov	r0, rax
	call	__bit_shr
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	r3, rax
	mov	r0, r3
	call	__bit_shr
	mov	r1, 1431655765
	mov	r0, rax
	call	__bit_and
	sub	r3, rax
	mov	r1, 2
	mov	r0, r3
	call	__bit_shr
	mov	r1, 858993459
	mov	r0, rax
	call	__bit_and
	mov	r5, rax
	mov	r0, r3
	call	__bit_and
	add	r5, rax
	mov	r1, 4
	mov	r0, r5
	call	__bit_shr
	add	r5, rax
	mov	r1, 252645135
	mov	r0, r5
	call	__bit_and
	mul	rax, 16843009
	mov	r1, 24
	mov	r0, rax
	call	__bit_shr
	mov	r3, 32
	sub	r3, rax
	mov	r1, 31
	mov	r5, 32
	mov	r0, r3
	call	__bit_xor
	mov	r6, rax
	mov	r0, 52
	sub	r0, r6
	call	__bit_and
	mov	r7, rax
	mov	r1, 0
	sub	r1, r7
	mov	t1, 0
	mov	r0, r7
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r0, 20
	sub	r0, r6
	mov	r6, rax
	call	__bit_shr
	sub	r5, r7
	mov	t2, rax
	mov	r0, r5
	call	__bit_and
	mov	r0, r2
	mov	r1, rax
	call	__bit_shr
	mov	r1, 0
	sub	r1, r6
	mov	r0, rax
	call	__bit_and
	sub	t1, t2
	mov	r0, rax
	mov	r1, t1
	call	__bit_and
	mov	r5, rax
	mov	r0, r2
	mov	r1, r7
	call	__bit_shl
	mov	r2, rax
	mov	r0, t1
	call	__bit_not
	mov	r0, r2
	mov	r1, rax
	call	__bit_and
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	r5, rax
	mov	r0, r2
	mov	r1, t1
	call	__bit_and
	mov	r1, 1048576
	mov	r6, rax
	mov	r0, r5
	call	__bit_xor
	mov	r0, 1054
	sub	r0, r3
	mov	r1, 20
	mov	r3, rax
	call	__bit_shl
	mov	r2, 0
	mov	r0, r6
	mov	r1, r3
	mov	r3, rax
	call	__adddi3
	mov	r2, rax
	mov	r0, t0
	mov	r1, r4
	call	__bit_or
	mov	t0, rax
.LBB0_2:
	mov	rax, r2
	ret
// -- End function
