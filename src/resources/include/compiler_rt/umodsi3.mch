#include "_ll_std"

// -- Begin function __umodsi3
__umodsi3:                              // @__umodsi3
// %bb.0:
	mov	r2, r1
	mov	r3, r0
	mov	t1, 32
	mov	r4, 32
	jz	r2, .LBB0_2
	jmp	.LBB0_1
.LBB0_1:
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
	mov	r4, 32
	sub	r4, rax
.LBB0_2:
	jz	r3, .LBB0_4
	jmp	.LBB0_3
.LBB0_3:
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
	mov	r5, rax
	mov	r0, r5
	call	__bit_shr
	mov	r1, 1431655765
	mov	r0, rax
	call	__bit_and
	sub	r5, rax
	mov	r1, 2
	mov	r0, r5
	call	__bit_shr
	mov	r1, 858993459
	mov	r0, rax
	call	__bit_and
	mov	r6, rax
	mov	r0, r5
	call	__bit_and
	add	r6, rax
	mov	r1, 4
	mov	r0, r6
	call	__bit_shr
	add	r6, rax
	mov	r1, 252645135
	mov	r0, r6
	call	__bit_and
	mul	rax, 16843009
	mov	r1, 24
	mov	r0, rax
	call	__bit_shr
	sub	t1, rax
.LBB0_4:
	mov	r6, r4
	sub	r6, t1
	mov	r1, -2147483648
	mov	r0, r6
	call	__bit_xor
	mov	r0, -2147483617
	mov	r5, r3
	jg	rax, r0, .LBB0_8
	jmp	.LBB0_5
.LBB0_5:
	mov	r7, 31
	mov	r5, 0
	je	r6, r7, .LBB0_8
	jmp	.LBB0_6
.LBB0_6:
	mov	r1, r6
	add	r1, 1
	mov	r0, r3
	call	__bit_shr
	sub	r7, r6
	mov	r5, rax
	mov	r1, r7
	call	__bit_shl
	mov	r6, rax
	mov	r0, r4
	call	__bit_not
	mov	r3, rax
	add	r3, t1
	mov	r4, 0
.LBB0_7:                                // =>This Inner Loop Header: Depth=1
	mov	r1, 1
	mov	r0, r5
	call	__bit_shl
	mov	r1, 31
	mov	r5, rax
	mov	r0, r6
	call	__bit_shr
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	r5, rax
	mov	r0, r6
	call	__bit_shl
	mov	r0, rax
	mov	r1, r4
	call	__bit_or
	mov	r6, rax
	mov	r0, r5
	call	__bit_not
	mov	r0, rax
	add	r0, r2
	mov	r1, 31
	call	__bit_shr
	mov	r1, -2147483648
	mov	r4, rax
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
	add	rax, 1
	mov	r0, rax
	mov	r1, r2
	call	__bit_and
	add	r3, 1
	sub	r5, rax
	mov	r0, r3
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
	mov	rax, r5
	ret
// -- End function
