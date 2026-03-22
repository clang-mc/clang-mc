#include "_ll_std"

// -- Begin function __extendsfdf2
__extendsfdf2:                          // @__extendsfdf2
// %bb.0:
	mov	r1, 23
	mov	r2, r0
	call	__bit_shr
	mov	r1, 8388607
	mov	r4, rax
	call	__bit_and
	mov	r3, rax
	mov	r1, 255
	mov	r5, 255
	mov	r0, r4
	call	__bit_and
	jz	rax, .LBB0_4
	jmp	.LBB0_1
.LBB0_1:
	je	rax, r5, .LBB0_3
	jmp	.LBB0_2
.LBB0_2:
	mov	r0, r4
	call	__bit_and
	mov	r4, rax
	mov	r1, 3
	add	r4, 896
	mov	r0, r3
	call	__bit_shr
	mov	r1, 29
	mov	r6, rax
	call	__bit_shl
	mov	r5, rax
	jmp	.LBB0_6
.LBB0_3:
	mov	r1, 3
	mov	r0, r3
	call	__bit_shr
	mov	r1, 29
	mov	r6, rax
	call	__bit_shl
	mov	r5, rax
	mov	r4, 2047
	jmp	.LBB0_6
.LBB0_4:
	mov	r5, 0
	mov	r6, 0
	mov	r4, 0
	jz	r3, .LBB0_6
	jmp	.LBB0_5
.LBB0_5:
	mov	r1, 1
	mov	r0, r3
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
	mov	r4, rax
	mov	r0, r4
	call	__bit_shr
	mov	r1, 1431655765
	mov	r0, rax
	call	__bit_and
	sub	r4, rax
	mov	r1, 2
	mov	r0, r4
	call	__bit_shr
	mov	r1, 858993459
	mov	r0, rax
	call	__bit_and
	mov	r5, rax
	mov	r0, r4
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
	mov	r6, 32
	mov	r0, 32
	sub	r0, rax
	mov	r4, 905
	sub	r4, r0
	mov	r5, 53
	mov	r0, 21
	sub	r0, rax
	mov	r1, 31
	sub	r5, rax
	call	__bit_shr
	mov	r7, rax
	mov	r0, r5
	call	__bit_and
	mov	t1, rax
	mov	r0, r3
	mov	r1, t1
	call	__bit_shl
	mov	t2, rax
	mov	t3, 0
	sub	t3, r7
	mov	r7, 0
	mov	r0, t2
	mov	r1, t3
	call	__bit_and
	mov	r1, 0
	sub	r1, t1
	mov	r5, rax
	mov	r0, t1
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	sub	r6, t1
	mov	t1, rax
	mov	r0, r6
	call	__bit_and
	mov	r0, r3
	mov	r1, rax
	call	__bit_shr
	sub	r7, t1
	mov	r0, rax
	mov	r1, r7
	call	__bit_and
	mov	r0, rax
	mov	r1, t3
	call	__bit_and
	mov	r3, rax
	mov	r0, t3
	call	__bit_not
	mov	r0, t2
	mov	r1, rax
	call	__bit_and
	mov	r0, r3
	mov	r1, rax
	call	__bit_or
	mov	r1, 1048576
	mov	r0, rax
	call	__bit_xor
	mov	r6, rax
.LBB0_6:
	mov	r1, 31
	mov	r0, r2
	call	__bit_shr
	mov	r0, rax
	call	__bit_shl
	mov	r1, 20
	mov	r2, rax
	mov	r0, r4
	call	__bit_shl
	mov	r0, rax
	mov	r1, r2
	call	__bit_or
	mov	r0, rax
	mov	r1, r6
	call	__bit_or
	mov	t0, rax
	mov	rax, r5
	ret
// -- End function
