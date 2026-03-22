#include "_ll_std"

// -- Begin function __umoddi3
__umoddi3:                              // @__umoddi3
// %bb.0:
	mov	[rsp-1], x0
	mov	[rsp-2], x1
	mov	[rsp-3], x2
	mov	[rsp-4], x3
	mov	r4, r3
	mov	r5, r2
	mov	r3, r1
	mov	r2, r0
	mov	r0, r5
	mov	r1, r4
	call	__bit_or
	mov	r6, 64
	mov	r7, 64
	jz	rax, .LBB0_2
	jmp	.LBB0_1
.LBB0_1:
	mov	r1, 1
	mov	r0, r5
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
	mov	r7, rax
	mov	r0, r7
	call	__bit_shr
	mov	r1, 1431655765
	mov	r0, rax
	call	__bit_and
	sub	r7, rax
	mov	r1, 2
	mov	r0, r7
	call	__bit_shr
	mov	r1, 858993459
	mov	r0, rax
	call	__bit_and
	mov	t1, rax
	mov	r0, r7
	call	__bit_and
	add	t1, rax
	mov	r1, 4
	mov	r0, t1
	call	__bit_shr
	add	t1, rax
	mov	r1, 252645135
	mov	r0, t1
	call	__bit_and
	mul	rax, 16843009
	mov	r1, 24
	mov	r0, rax
	call	__bit_shr
	mov	t2, 64
	mov	r1, 1
	sub	t2, rax
	mov	r0, r4
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
	mov	r7, rax
	mov	r0, r7
	call	__bit_shr
	mov	r1, 1431655765
	mov	r0, rax
	call	__bit_and
	sub	r7, rax
	mov	r1, 2
	mov	r0, r7
	call	__bit_shr
	mov	r1, 858993459
	mov	r0, rax
	call	__bit_and
	mov	t1, rax
	mov	r0, r7
	call	__bit_and
	add	t1, rax
	mov	r1, 4
	mov	r0, t1
	call	__bit_shr
	add	t1, rax
	mov	r1, 252645135
	mov	r0, t1
	call	__bit_and
	mul	rax, 16843009
	mov	r1, 24
	mov	r0, rax
	call	__bit_shr
	add	rax, t2
	mov	r7, 32
	sub	r7, rax
	mov	r0, r4
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r0, rax
	mov	r1, r7
	call	__bit_and
	mov	r7, rax
	add	r7, t2
.LBB0_2:
	mov	r0, r2
	mov	r1, r3
	call	__bit_or
	jz	rax, .LBB0_4
	jmp	.LBB0_3
.LBB0_3:
	mov	r1, 1
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
	mov	r6, rax
	mov	r0, r6
	call	__bit_shr
	mov	r1, 1431655765
	mov	r0, rax
	call	__bit_and
	sub	r6, rax
	mov	r1, 2
	mov	r0, r6
	call	__bit_shr
	mov	r1, 858993459
	mov	r0, rax
	call	__bit_and
	mov	t1, rax
	mov	r0, r6
	call	__bit_and
	add	t1, rax
	mov	r1, 4
	mov	r0, t1
	call	__bit_shr
	add	t1, rax
	mov	r1, 252645135
	mov	r0, t1
	call	__bit_and
	mul	rax, 16843009
	mov	r1, 24
	mov	r0, rax
	call	__bit_shr
	mov	t2, 64
	mov	r1, 1
	sub	t2, rax
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
	mov	r6, rax
	mov	r0, r6
	call	__bit_shr
	mov	r1, 1431655765
	mov	r0, rax
	call	__bit_and
	sub	r6, rax
	mov	r1, 2
	mov	r0, r6
	call	__bit_shr
	mov	r1, 858993459
	mov	r0, rax
	call	__bit_and
	mov	t1, rax
	mov	r0, r6
	call	__bit_and
	add	t1, rax
	mov	r1, 4
	mov	r0, t1
	call	__bit_shr
	add	t1, rax
	mov	r1, 252645135
	mov	r0, t1
	call	__bit_and
	mul	rax, 16843009
	mov	r1, 24
	mov	r0, rax
	call	__bit_shr
	add	rax, t2
	mov	r6, 32
	sub	r6, rax
	mov	r0, r3
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r0, rax
	mov	r1, r6
	call	__bit_and
	mov	r6, rax
	add	r6, t2
.LBB0_4:
	mov	t2, r7
	sub	t2, r6
	mov	r1, -2147483648
	mov	r0, t2
	call	__bit_xor
	mov	r0, -2147483585
	mov	t3, r2
	mov	t5, r3
	jg	rax, r0, .LBB0_8
	jmp	.LBB0_5
.LBB0_5:
	mov	t3, 0
	mov	t6, 63
	mov	t5, 0
	je	t2, t6, .LBB0_8
	jmp	.LBB0_6
.LBB0_6:
	mov	r0, t2
	add	r0, 1
	mov	r1, 31
	mov	t4, 31
	call	__bit_and
	mov	t3, rax
	mov	r1, 0
	sub	r1, t3
	mov	t1, 0
	mov	r0, t3
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r0, t2
	add	r0, -31
	mov	t5, rax
	call	__bit_shr
	mov	t7, rax
	mov	r0, r3
	mov	r1, t3
	call	__bit_shr
	mov	x0, 0
	sub	x0, t7
	mov	x1, rax
	mov	r0, x0
	call	__bit_not
	mov	r0, x1
	mov	r1, rax
	call	__bit_and
	mov	x2, rax
	mov	r0, r2
	mov	r1, t3
	call	__bit_shr
	mov	x3, rax
	mov	r0, 32
	sub	r0, t3
	mov	r1, 31
	mov	t7, 32
	call	__bit_and
	mov	r0, r3
	mov	r1, rax
	call	__bit_shl
	mov	r1, 0
	sub	r1, t5
	mov	r0, rax
	call	__bit_and
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x0
	call	__bit_and
	mov	r0, rax
	mov	r1, x2
	call	__bit_or
	mov	t3, rax
	mov	r0, x1
	mov	r1, x0
	call	__bit_and
	sub	t6, t2
	mov	r1, 31
	mov	t5, rax
	mov	r0, t6
	call	__bit_and
	mov	t6, rax
	mov	r1, 0
	sub	r1, t6
	mov	r0, t6
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	sub	t4, t2
	mov	t2, rax
	mov	r0, t4
	call	__bit_shr
	mov	t4, rax
	mov	r0, r2
	mov	r1, t6
	call	__bit_shl
	mov	x0, 0
	sub	x0, t4
	mov	t4, rax
	mov	r0, x0
	call	__bit_not
	mov	r0, t4
	mov	r1, rax
	call	__bit_and
	mov	x1, rax
	mov	r0, r3
	mov	r1, t6
	call	__bit_shl
	sub	t7, t6
	mov	r1, 31
	mov	r3, rax
	mov	r0, t7
	call	__bit_and
	mov	r0, r2
	mov	r1, rax
	call	__bit_shr
	mov	r1, 0
	sub	r1, t2
	mov	r0, rax
	call	__bit_and
	mov	r0, r3
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x0
	call	__bit_and
	mov	r0, rax
	mov	r1, x1
	call	__bit_or
	mov	t2, rax
	mov	r0, t4
	mov	r1, x0
	call	__bit_and
	mov	t4, rax
	mov	r0, r7
	call	__bit_not
	mov	r7, rax
	add	r7, r6
	mov	r6, 0
.LBB0_7:                                // =>This Inner Loop Header: Depth=1
	mov	r1, 31
	mov	r0, t3
	call	__bit_shr
	mov	r1, 1
	mov	r2, rax
	mov	r0, t5
	call	__bit_shl
	mov	r0, rax
	mov	r1, r2
	call	__bit_or
	mov	r1, 1
	mov	t5, rax
	mov	r0, t3
	call	__bit_shl
	mov	r1, 31
	mov	r2, rax
	mov	r0, t2
	call	__bit_shr
	mov	r0, r2
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	t3, rax
	mov	r0, t4
	call	__bit_shl
	mov	r1, 31
	mov	r2, rax
	call	__bit_shr
	mov	r1, 1
	mov	r3, rax
	mov	r0, t2
	call	__bit_shl
	mov	r0, rax
	mov	r1, r3
	call	__bit_or
	mov	r0, rax
	mov	r1, t1
	call	__bit_or
	mov	t2, rax
	mov	r0, r2
	mov	r1, r6
	call	__bit_or
	mov	t4, rax
	mov	r0, t3
	call	__bit_not
	mov	r2, rax
	mov	r0, t5
	call	__bit_not
	mov	r0, r5
	mov	r1, r4
	mov	r3, rax
	call	__adddi3
	mov	r1, 31
	mov	r0, t0
	call	__bit_shr
	mov	r1, -2147483648
	mov	r6, rax
	call	__bit_xor
	add	rax, -2147483648
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	mov	r0, rax
	add	r0, 1
	mov	r1, r5
	call	__bit_and
	mov	r2, rax
	mov	r1, r4
	call	__bit_and
	mov	r0, t3
	mov	r1, t5
	mov	r3, rax
	call	__subdi3
	add	r7, 1
	mov	t3, rax
	mov	t5, t0
	mov	r0, r7
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB0_7
	jmp	.LBB0_8
.LBB0_8:
	mov	rax, t3
	mov	t0, t5
	mov	x3, [rsp-4]
	mov	x2, [rsp-3]
	mov	x1, [rsp-2]
	mov	x0, [rsp-1]
	ret
// -- End function
