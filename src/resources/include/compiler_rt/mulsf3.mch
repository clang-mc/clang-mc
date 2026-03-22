#include "_ll_std"

// -- Begin function __mulsf3
__mulsf3:                               // @__mulsf3
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
	mov	r6, rax
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
	mov	r2, rax
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
	mov	r0, r6
	add	r0, -255
	mov	r7, 0
	call	__bit_xor
	mov	r0, 2147483393
	jg	rax, r0, .LBB0_20
	jmp	.LBB0_2
.LBB0_2:
	mov	r1, 2147483647
	mov	r0, t2
	call	__bit_and
	mov	t3, rax
	mov	r0, t1
	call	__bit_and
	mov	r0, 2139095041
	mov	t0, rax
	jl	t3, r0, .LBB0_4
	jmp	.LBB0_3
.LBB0_3:
	mov	r1, 4194304
	mov	r0, t2
	call	__bit_or
	jmp	.LBB0_35
.LBB0_4:
	jl	t0, r0, .LBB0_6
	jmp	.LBB0_5
.LBB0_5:
	mov	r1, 4194304
	mov	r0, t1
	call	__bit_or
	jmp	.LBB0_35
.LBB0_6:
	mov	r0, 2139095040
	jne	t3, r0, .LBB0_9
	jmp	.LBB0_7
.LBB0_7:
	mov	rax, 2143289344
	jz	t0, .LBB0_35
	jmp	.LBB0_8
.LBB0_8:
	mov	r1, 2139095040
	mov	r0, r4
	call	__bit_or
	jmp	.LBB0_35
.LBB0_9:
	jne	t0, r0, .LBB0_12
	jmp	.LBB0_10
.LBB0_10:
	mov	rax, 2143289344
	jz	t3, .LBB0_35
	jmp	.LBB0_11
.LBB0_11:
	mov	r1, 2139095040
	mov	r0, r4
	call	__bit_or
	jmp	.LBB0_35
.LBB0_12:
	jnz	t3, .LBB0_14
	jmp	.LBB0_13
.LBB0_13:
	mov	rax, r4
	jmp	.LBB0_35
.LBB0_14:
	jnz	t0, .LBB0_16
	jmp	.LBB0_15
.LBB0_15:
	mov	rax, r4
	jmp	.LBB0_35
.LBB0_16:
	mov	t2, 8388607
	mov	r7, 0
	jg	t3, t2, .LBB0_18
	jmp	.LBB0_17
.LBB0_17:
	mov	r1, 1
	mov	r0, r2
	mov	t3, t0
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
	mov	r0, r2
	mov	r1, t1
	call	__bit_shl
	mov	r2, rax
	mov	t0, t3
	add	r7, -23
.LBB0_18:
	jg	t0, t2, .LBB0_20
	jmp	.LBB0_19
.LBB0_19:
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
	add	r7, t2
	add	r7, -23
.LBB0_20:
	mov	r1, 8388608
	mov	r0, r2
	call	__bit_or
	mov	r1, 8
	mov	r2, rax
	mov	r0, r3
	call	__bit_shl
	mov	r1, -2147483648
	mov	r0, rax
	call	__bit_or
	mov	r1, 0
	mov	r3, 0
	mov	r0, rax
	call	__muldi3
	mov	r2, rax
	mov	r3, t0
	add	r5, r6
	add	r5, r7
	mov	r1, 8388608
	add	r5, -127
	mov	r0, r3
	call	__bit_and
	jz	rax, .LBB0_22
	jmp	.LBB0_21
.LBB0_21:
	add	r5, 1
	jmp	.LBB0_23
.LBB0_22:
	mov	r1, 1
	mov	r0, r3
	call	__bit_shl
	mov	r1, 31
	mov	r3, rax
	mov	r0, r2
	call	__bit_shr
	mov	r0, r3
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	r3, rax
	mov	r0, r2
	call	__bit_shl
	mov	r2, rax
.LBB0_23:
	mov	r0, 255
	jl	r5, r0, .LBB0_25
	jmp	.LBB0_24
.LBB0_24:
	mov	r1, 2139095040
	mov	r0, r4
	call	__bit_or
	jmp	.LBB0_35
.LBB0_25:
	mov	r0, 0
	jg	r5, r0, .LBB0_29
	jmp	.LBB0_26
.LBB0_26:
	mov	r6, 1
	sub	r6, r5
	mov	r0, 31
	jg	r6, r0, .LBB0_28
	jmp	.LBB0_27
.LBB0_27:
	add	r5, 31
	mov	r0, r2
	mov	r1, r5
	call	__bit_shl
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r7, rax
	mov	r0, r3
	mov	r1, r5
	call	__bit_shl
	mov	r5, rax
	mov	r0, r2
	mov	r1, r6
	call	__bit_shr
	mov	r1, 1
	add	r5, rax
	mov	r0, r7
	call	__bit_and
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	r2, rax
	mov	r0, r3
	mov	r1, r6
	call	__bit_shr
	mov	r3, rax
	jmp	.LBB0_30
.LBB0_28:
	mov	rax, r4
	jmp	.LBB0_35
.LBB0_29:
	mov	r1, 8388607
	mov	r0, r3
	call	__bit_and
	mov	r1, 23
	mov	r3, rax
	mov	r0, r5
	call	__bit_shl
	mov	r0, rax
	mov	r1, r3
	call	__bit_or
	mov	r3, rax
.LBB0_30:
	mov	r0, r3
	mov	r1, r4
	call	__bit_or
	mov	r4, rax
	mov	r1, -2147483648
	mov	r5, -2147483648
	mov	r0, r2
	call	__bit_xor
	mov	r0, 1
	jl	rax, r0, .LBB0_32
	jmp	.LBB0_31
.LBB0_31:
	mov	rax, r4
	add	rax, 1
	jmp	.LBB0_34
.LBB0_32:
	mov	rax, r4
	jne	r2, r5, .LBB0_34
	jmp	.LBB0_33
.LBB0_33:
	mov	r1, 1
	mov	r0, r3
	call	__bit_and
	mov	r0, rax
	mov	rax, r4
	add	rax, r0
.LBB0_34:
.LBB0_35:
	ret
// -- End function
