#include "_ll_std"

// -- Begin function __divsf3
__divsf3:                               // @__divsf3
// %bb.0:
	mov	t1, r1
	mov	r1, 23
	mov	t2, r0
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 23
	mov	r5, rax
	mov	r0, t1
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r2, rax
	mov	r0, t1
	mov	r1, t2
	call	__bit_xor
	mov	r1, -2147483648
	mov	r0, rax
	call	__bit_and
	mov	r1, 8388607
	mov	r4, rax
	mov	r0, t2
	call	__bit_and
	mov	r6, rax
	mov	r0, t1
	call	__bit_and
	mov	r0, r5
	add	r0, -255
	mov	r1, -2147483648
	mov	r3, rax
	call	__bit_xor
	mov	r0, 2147483394
	jl	rax, r0, .LBB0_2
	jmp	.LBB0_1
.LBB0_1:
	mov	r0, r2
	add	r0, -255
	mov	r7, 0
	call	__bit_xor
	mov	r0, 2147483393
	jg	rax, r0, .LBB0_19
	jmp	.LBB0_2
.LBB0_2:
	mov	r1, 2147483647
	mov	r0, t2
	call	__bit_and
	mov	t3, rax
	mov	r0, t1
	call	__bit_and
	mov	r0, 2139095041
	jl	t3, r0, .LBB0_4
	jmp	.LBB0_3
.LBB0_3:
	mov	r1, 4194304
	mov	r0, t2
	call	__bit_or
	mov	r0, rax
	jmp	.LBB0_30
.LBB0_4:
	jl	rax, r0, .LBB0_6
	jmp	.LBB0_5
.LBB0_5:
	mov	r1, 4194304
	mov	r0, t1
	call	__bit_or
	mov	r0, rax
	jmp	.LBB0_30
.LBB0_6:
	mov	r1, 2139095040
	jne	t3, r1, .LBB0_9
	jmp	.LBB0_7
.LBB0_7:
	mov	r0, 2143289344
	je	rax, r1, .LBB0_30
	jmp	.LBB0_8
.LBB0_8:
	mov	r0, r4
	call	__bit_or
	mov	r0, rax
	jmp	.LBB0_30
.LBB0_9:
	jne	rax, r1, .LBB0_11
	jmp	.LBB0_10
.LBB0_10:
	mov	r0, r4
	jmp	.LBB0_30
.LBB0_11:
	jnz	t3, .LBB0_13
	jmp	.LBB0_12
.LBB0_12:
	mov	r0, rax
	mov	r1, rax
	call	__bit_not
	add	rax, 1
	mov	r0, r1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	mov	r1, 2143289344
	sub	r1, r4
	add	rax, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	add	r0, r4
	jmp	.LBB0_30
.LBB0_13:
	jnz	rax, .LBB0_15
	jmp	.LBB0_14
.LBB0_14:
	mov	r0, r4
	call	__bit_or
	mov	r0, rax
	jmp	.LBB0_30
.LBB0_15:
	mov	t2, 8388607
	mov	r7, 0
	jg	t3, t2, .LBB0_17
	jmp	.LBB0_16
.LBB0_16:
	mov	r1, 1
	mov	r0, r6
	mov	t3, rax
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
	mov	t1, 24
	mov	r0, rax
	call	__bit_shr
	mov	r7, rax
	sub	t1, r7
	mov	r0, r6
	mov	r1, t1
	call	__bit_shl
	mov	r6, rax
	mov	rax, t3
	add	r7, -23
.LBB0_17:
	jg	rax, t2, .LBB0_19
	jmp	.LBB0_18
.LBB0_18:
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
	mov	t1, rax
	mov	r0, t1
	call	__bit_shr
	mov	r1, 1431655765
	mov	r0, rax
	call	__bit_and
	sub	t1, rax
	mov	r1, 2
	mov	r0, t1
	call	__bit_shr
	mov	r1, 858993459
	mov	r0, rax
	call	__bit_and
	mov	t2, rax
	mov	r0, t1
	call	__bit_and
	add	t2, rax
	mov	r1, 4
	mov	r0, t2
	call	__bit_shr
	add	t2, rax
	mov	r1, 252645135
	mov	r0, t2
	call	__bit_and
	mul	rax, 16843009
	mov	r1, 24
	mov	t1, 24
	mov	r0, rax
	call	__bit_shr
	mov	t2, rax
	sub	t1, t2
	mov	r0, r3
	mov	r1, t1
	call	__bit_shl
	mov	r3, rax
	sub	r7, t2
	add	r7, 23
.LBB0_19:
	mov	r1, 8388608
	mov	r0, r6
	call	__bit_or
	mov	t2, rax
	mov	r0, r3
	call	__bit_or
	sub	r5, r2
	add	r5, r7
	mov	r7, rax
	mov	t1, r5
	mov	r1, 8
	add	t1, 127
	mov	r0, r7
	call	__bit_shl
	mov	t4, rax
	mov	t5, 1963258675
	sub	t5, t4
	mov	r1, 0
	mov	r3, 0
	mov	t3, 0
	mov	r0, t5
	mov	r2, t4
	call	__muldi3
	mov	r0, 0
	sub	r0, t0
	mov	r2, t5
	call	__muldi3
	mov	r1, 31
	mov	r2, t0
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r3, rax
	mov	r0, r2
	call	__bit_shl
	mov	r0, r3
	mov	r1, rax
	call	__bit_or
	mov	r1, 0
	mov	r3, 0
	mov	r0, rax
	mov	r2, t4
	call	__muldi3
	mov	r2, 0
	sub	r2, t0
	call	__muldi3
	mov	r1, 31
	mov	r2, t0
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r3, rax
	mov	r0, r2
	call	__bit_shl
	mov	r0, r3
	mov	r1, rax
	call	__bit_or
	mov	r1, 0
	mov	r3, 0
	mov	r0, rax
	mov	r2, t4
	call	__muldi3
	sub	t3, t0
	mov	r2, t3
	call	__muldi3
	mov	r1, 31
	mov	r2, t0
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r3, rax
	mov	r0, r2
	call	__bit_shl
	mov	r0, r3
	mov	r1, rax
	call	__bit_or
	mov	t3, rax
	mov	r1, 1
	add	t3, -12
	mov	r0, t2
	call	__bit_shl
	mov	r1, 0
	mov	r3, 0
	mov	r2, rax
	mov	r0, t3
	call	__muldi3
	mov	r1, -2147483648
	mov	r3, t0
	mov	r0, r3
	call	__bit_xor
	mov	r0, -2130706433
	jg	rax, r0, .LBB0_21
	jmp	.LBB0_20
.LBB0_20:
	mov	r0, r3
	call	__bit_xor
	add	rax, 2139095040
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	t2, rax
	mov	r0, t2
	call	__bit_and
	mov	r0, r3
	mov	r1, rax
	call	__bit_shl
	mov	r3, rax
	mov	r0, t2
	call	__bit_not
	sub	r5, t1
	add	r5, 126
	add	rax, 1
	mov	r0, rax
	mov	r1, r5
	call	__bit_and
	mov	r5, rax
	mov	r1, 24
	add	r5, t1
	mov	r0, r6
	call	__bit_shl
	mov	r0, r3
	mul	r0, r7
	add	r5, -1
	sub	rax, r0
	mov	t1, r5
	jmp	.LBB0_22
.LBB0_21:
	mov	r1, 1
	mov	r0, r3
	call	__bit_shr
	mov	r1, 23
	mov	r3, rax
	mov	r0, r6
	call	__bit_shl
	mov	r0, r3
	mul	r0, r7
	sub	rax, r0
	mov	r2, t2
.LBB0_22:
	mov	r0, 255
	jl	t1, r0, .LBB0_24
	jmp	.LBB0_23
.LBB0_23:
	mov	r1, 2139095040
	mov	r0, r4
	call	__bit_or
	mov	r0, rax
	jmp	.LBB0_30
.LBB0_24:
	mov	r0, 1
	jl	t1, r0, .LBB0_26
	jmp	.LBB0_25
.LBB0_25:
	mov	r1, 8388607
	mov	r0, r3
	mov	r2, rax
	call	__bit_and
	mov	r1, 23
	mov	r3, rax
	mov	r0, t1
	call	__bit_shl
	mov	r0, rax
	mov	r1, r3
	call	__bit_or
	mov	r1, 1
	mov	r3, rax
	mov	r0, r2
	call	__bit_shl
	mov	r2, rax
	jmp	.LBB0_29
.LBB0_26:
	mov	r0, -24
	jg	t1, r0, .LBB0_28
	jmp	.LBB0_27
.LBB0_27:
	mov	r0, r4
	jmp	.LBB0_30
.LBB0_28:
	mov	r1, 1
	sub	r1, t1
	add	t1, 23
	mov	r0, r3
	call	__bit_shr
	mov	r3, rax
	mov	r0, r2
	mov	r1, t1
	call	__bit_shl
	mov	r1, 1
	mov	r2, rax
	mov	r0, r7
	call	__bit_shl
	mul	rax, r3
	sub	r2, rax
.LBB0_29:
	mov	r0, r3
	call	__bit_and
	add	rax, r2
	sub	r7, rax
	mov	r1, 31
	mov	r0, r7
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_and
	add	r3, rax
	mov	r0, r3
	mov	r1, r4
	call	__bit_or
	mov	r0, rax
.LBB0_30:
	mov	rax, r0
	ret
// -- End function
