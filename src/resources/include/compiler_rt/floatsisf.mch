#include "_ll_std"

// -- Begin function __floatsisf
__floatsisf:                            // @__floatsisf
// %bb.0:
	mov	rax, 0
	jz	r0, .LBB0_5
	jmp	.LBB0_1
.LBB0_1:
	mov	r1, 31
	call	__bit_sar
	mov	r1, rax
	call	__bit_xor
	mov	r3, rax
	sub	r3, r1
	mov	r1, -2147483648
	mov	r4, -2147483648
	call	__bit_and
	mov	r1, 1
	mov	r2, rax
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
	mov	r0, rax
	mov	r1, 8
	mov	r6, 8
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
	mov	r7, rax
	mov	r0, r5
	call	__bit_and
	add	r7, rax
	mov	r1, 4
	mov	r0, r7
	call	__bit_shr
	add	r7, rax
	mov	r1, 252645135
	mov	r0, r7
	call	__bit_and
	mul	rax, 16843009
	mov	r1, 24
	mov	r0, rax
	call	__bit_shr
	mov	r5, 32
	sub	r5, rax
	mov	r1, 31
	mov	r0, r5
	call	__bit_xor
	mov	r1, 23
	jg	rax, r1, .LBB0_3
	jmp	.LBB0_2
.LBB0_2:
	sub	r1, rax
	mov	r0, r3
	call	__bit_shl
	mov	r1, 8388608
	mov	r0, rax
	call	__bit_xor
	mov	r3, rax
	jmp	.LBB0_4
.LBB0_3:
	sub	r6, r5
	mov	r0, r3
	mov	r1, r6
	call	__bit_shr
	mov	r1, 8388608
	mov	r0, rax
	call	__bit_xor
	mov	r1, r5
	add	r1, 24
	mov	r6, rax
	mov	r0, r3
	call	__bit_shl
	mov	r3, rax
	sub	r4, r3
	mov	r1, 31
	mov	r0, r4
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_and
	mov	r4, rax
	mov	r1, -2147483648
	add	r4, r6
	mov	r0, r3
	call	__bit_xor
	mov	r0, rax
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
	mov	r3, rax
	mov	r0, r4
	call	__bit_and
	mov	r1, rax
	mov	r0, r3
	call	__bit_not
	add	rax, 1
	mov	r0, rax
	call	__bit_and
	mov	r3, rax
	add	r3, r4
.LBB0_4:
	mov	r1, 23
	mov	r0, r5
	call	__bit_shl
	sub	r3, rax
	add	r3, 1325400064
	mov	r0, r3
	mov	r1, r2
	call	__bit_or
.LBB0_5:
	ret
// -- End function
