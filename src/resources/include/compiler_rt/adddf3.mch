#include "_ll_std"

// -- Begin function __adddf3
__adddf3:                               // @__adddf3
// %bb.0:
	mov	[rsp-1], x0
	mov	[rsp-2], x1
	mov	[rsp-3], x2
	mov	[rsp-4], x3
	mov	r4, r1
	mov	r1, 2147483647
	mov	t1, r3
	mov	r7, r2
	mov	r5, r0
	mov	t2, r7
	mov	r0, r4
	call	__bit_and
	mov	r6, rax
	mov	r0, t1
	call	__bit_and
	mov	t3, rax
	mov	r2, 0
	mov	r3, -2146435072
	mov	t4, -2146435072
	mov	r0, r5
	mov	r1, r6
	call	__adddi3
	mov	r1, -2146435072
	mov	r2, rax
	mov	r3, t0
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
	mov	r0, rax
	call	__bit_not
	mov	t5, rax
	mov	r0, r2
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
	add	r3, 2146435072
	mov	r1, 31
	mov	r2, rax
	mov	r0, r3
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	t6, rax
	sub	r2, t6
	add	t5, 1
	mov	r0, t5
	mov	r1, r2
	call	__bit_and
	mov	t5, rax
	mov	r2, 0
	mov	r3, -2146435072
	add	t5, t6
	mov	r0, r7
	mov	r1, t3
	call	__adddi3
	mov	r2, rax
	mov	r3, t0
	jnz	t5, .LBB0_2
	jmp	.LBB0_1
.LBB0_1:
	mov	r1, -2146435072
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
	mov	r0, rax
	call	__bit_not
	sub	t4, r3
	mov	r1, 31
	mov	r3, rax
	mov	r0, t4
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	t4, rax
	mov	r0, r2
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	sub	rax, t4
	add	r3, 1
	mov	r0, r3
	mov	r1, rax
	call	__bit_and
	add	rax, t4
	jnz	rax, .LBB0_13
	jmp	.LBB0_2
.LBB0_2:
	mov	r1, 2146435072
	mov	r0, r6
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
	mov	r0, rax
	call	__bit_not
	mov	r1, -2147483648
	mov	r2, rax
	mov	r0, r6
	call	__bit_xor
	add	rax, 1048576
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r3, rax
	mov	r0, r5
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
	sub	rax, r3
	add	r2, 1
	mov	r0, r2
	mov	r1, rax
	call	__bit_and
	add	rax, r3
	jnz	rax, .LBB0_4
	jmp	.LBB0_3
.LBB0_3:
	mov	r1, 524288
	mov	r0, r4
	call	__bit_or
	mov	t0, rax
	mov	rax, r5
	jmp	.LBB0_40
.LBB0_4:
	mov	r1, 2146435072
	mov	r0, t3
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
	mov	r0, rax
	call	__bit_not
	mov	r1, -2147483648
	mov	r2, rax
	mov	r0, t3
	call	__bit_xor
	add	rax, 1048576
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r3, rax
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
	sub	rax, r3
	add	r2, 1
	mov	r0, r2
	mov	r1, rax
	call	__bit_and
	add	rax, r3
	jnz	rax, .LBB0_6
	jmp	.LBB0_5
.LBB0_5:
	mov	r1, 524288
	mov	r0, t1
	call	__bit_or
	mov	t0, rax
	mov	rax, r7
	jmp	.LBB0_40
.LBB0_6:
	mov	r1, 2146435072
	mov	r0, r6
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	jnz	rax, .LBB0_8
	jmp	.LBB0_7
.LBB0_7:
	mov	r0, t2
	mov	r1, r5
	call	__bit_xor
	mov	r2, rax
	mov	r0, t1
	mov	r1, r4
	call	__bit_xor
	mov	r1, -2147483648
	mov	r0, rax
	call	__bit_xor
	mov	r0, r2
	mov	r1, rax
	call	__bit_or
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
	mov	r0, rax
	call	__bit_not
	mov	r0, rax
	add	r0, 1
	mov	r1, 2146959360
	sub	r1, r4
	call	__bit_and
	mov	r2, rax
	mov	r1, 0
	sub	r1, r5
	add	r2, r4
	call	__bit_and
	mov	t0, r2
	add	rax, r5
	jmp	.LBB0_40
.LBB0_8:
	mov	r1, 2146435072
	mov	r0, t3
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	rax, r7
	mov	t0, t1
	jz	r0, .LBB0_40
	jmp	.LBB0_9
.LBB0_9:
	mov	r0, r5
	mov	r1, r6
	call	__bit_or
	jnz	rax, .LBB0_12
	jmp	.LBB0_10
.LBB0_10:
	mov	r0, r7
	mov	r1, t3
	call	__bit_or
	mov	r0, rax
	mov	rax, r7
	mov	t0, t1
	jnz	r0, .LBB0_40
	jmp	.LBB0_11
.LBB0_11:
	mov	r0, t2
	mov	r1, r5
	call	__bit_and
	mov	r2, rax
	mov	r0, t1
	mov	r1, r4
	call	__bit_and
	mov	t0, rax
	mov	rax, r2
	jmp	.LBB0_40
.LBB0_12:
	mov	r0, r7
	mov	r1, t3
	call	__bit_or
	mov	r0, rax
	mov	rax, r5
	mov	t0, r4
	jz	r0, .LBB0_40
	jmp	.LBB0_13
.LBB0_13:
	mov	r0, t3
	mov	r1, r6
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
	mov	r0, rax
	call	__bit_not
	sub	r6, t3
	mov	r1, 31
	mov	r2, rax
	mov	r0, r6
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r3, r5
	sub	r3, r7
	mov	r1, 31
	mov	r6, rax
	mov	r0, r3
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	rax, r6
	add	r2, 1
	mov	r0, r2
	mov	r1, rax
	call	__bit_and
	add	r6, rax
	mov	r0, r6
	call	__bit_not
	mov	r0, rax
	add	r0, 1
	mov	r1, r3
	call	__bit_and
	mov	r1, r4
	sub	r1, t1
	mov	t3, rax
	call	__bit_and
	mov	t4, rax
	mov	r1, r7
	sub	r1, r5
	add	t4, t1
	call	__bit_and
	mov	r2, rax
	mov	r1, t1
	sub	r1, r4
	add	r2, r5
	call	__bit_and
	mov	r3, rax
	add	r3, r4
	mov	r1, 20
	mov	r0, r3
	call	__bit_shr
	mov	r1, 2047
	mov	r0, rax
	call	__bit_and
	mov	r1, 20
	mov	r6, rax
	mov	r0, t4
	call	__bit_shr
	mov	r1, 2047
	mov	r0, rax
	call	__bit_and
	mov	r1, 1048575
	mov	t6, rax
	mov	r0, r3
	call	__bit_and
	mov	t5, rax
	mov	r0, t4
	call	__bit_and
	mov	t4, rax
	jnz	r6, .LBB0_15
	jmp	.LBB0_14
.LBB0_14:
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
	mov	t7, rax
	mov	r0, r6
	call	__bit_and
	add	t7, rax
	mov	r1, 4
	mov	r0, t7
	call	__bit_shr
	add	t7, rax
	mov	r1, 252645135
	mov	r0, t7
	call	__bit_and
	mul	rax, 16843009
	mov	r1, 24
	mov	r0, rax
	call	__bit_shr
	mov	x1, 64
	mov	r1, 1
	sub	x1, rax
	mov	r0, t5
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
	mov	t7, rax
	mov	r0, r6
	call	__bit_and
	add	t7, rax
	mov	r1, 4
	mov	r0, t7
	call	__bit_shr
	add	t7, rax
	mov	r1, 252645135
	mov	r0, t7
	call	__bit_and
	mul	rax, 16843009
	mov	r1, 24
	mov	r0, rax
	call	__bit_shr
	add	rax, x1
	mov	x0, 32
	mov	r6, 32
	sub	r6, rax
	mov	r0, t5
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
	mov	t7, rax
	add	t7, x1
	mov	r0, t7
	add	r0, -11
	mov	r1, 31
	call	__bit_and
	mov	x1, rax
	mov	r1, 0
	sub	r1, x1
	mov	r6, 0
	mov	r0, x1
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r0, t7
	add	r0, -43
	mov	x2, rax
	call	__bit_shr
	sub	x0, x1
	mov	x3, rax
	mov	r0, x0
	call	__bit_and
	mov	r0, r2
	mov	r1, rax
	call	__bit_shr
	mov	r1, 0
	sub	r1, x2
	mov	r0, rax
	call	__bit_and
	mov	x0, rax
	mov	r0, t5
	mov	r1, x1
	call	__bit_shl
	mov	r0, rax
	mov	r1, x0
	call	__bit_or
	sub	r6, x3
	mov	r0, rax
	mov	r1, r6
	call	__bit_and
	mov	t5, rax
	mov	r0, r2
	mov	r1, x1
	call	__bit_shl
	mov	r2, rax
	mov	r0, r6
	call	__bit_not
	mov	r0, r2
	mov	r1, rax
	call	__bit_and
	mov	r0, t5
	mov	r1, rax
	call	__bit_or
	mov	t5, rax
	mov	r0, r2
	mov	r1, r6
	call	__bit_and
	mov	r2, rax
	mov	r6, 12
	sub	r6, t7
.LBB0_15:
	add	r7, t3
	jnz	t6, .LBB0_17
	jmp	.LBB0_16
.LBB0_16:
	mov	r1, 1
	mov	r0, r7
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
	mov	t3, rax
	mov	r0, t3
	call	__bit_shr
	mov	r1, 1431655765
	mov	r0, rax
	call	__bit_and
	sub	t3, rax
	mov	r1, 2
	mov	r0, t3
	call	__bit_shr
	mov	r1, 858993459
	mov	r0, rax
	call	__bit_and
	mov	t6, rax
	mov	r0, t3
	call	__bit_and
	add	t6, rax
	mov	r1, 4
	mov	r0, t6
	call	__bit_shr
	add	t6, rax
	mov	r1, 252645135
	mov	r0, t6
	call	__bit_and
	mul	rax, 16843009
	mov	r1, 24
	mov	r0, rax
	call	__bit_shr
	mov	x0, 64
	mov	r1, 1
	sub	x0, rax
	mov	r0, t4
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
	mov	t3, rax
	mov	r0, t3
	call	__bit_shr
	mov	r1, 1431655765
	mov	r0, rax
	call	__bit_and
	sub	t3, rax
	mov	r1, 2
	mov	r0, t3
	call	__bit_shr
	mov	r1, 858993459
	mov	r0, rax
	call	__bit_and
	mov	t6, rax
	mov	r0, t3
	call	__bit_and
	add	t6, rax
	mov	r1, 4
	mov	r0, t6
	call	__bit_shr
	add	t6, rax
	mov	r1, 252645135
	mov	r0, t6
	call	__bit_and
	mul	rax, 16843009
	mov	r1, 24
	mov	r0, rax
	call	__bit_shr
	add	rax, x0
	mov	t7, 32
	mov	t3, 32
	sub	t3, rax
	mov	r0, t4
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
	mov	r1, t3
	call	__bit_and
	mov	t3, rax
	add	t3, x0
	mov	r0, t3
	add	r0, -11
	mov	r1, 31
	call	__bit_and
	mov	x0, rax
	mov	r1, 0
	sub	r1, x0
	mov	t6, 0
	mov	r0, x0
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r0, t3
	add	r0, -43
	mov	x1, rax
	call	__bit_shr
	sub	t7, x0
	mov	x2, rax
	mov	r0, t7
	call	__bit_and
	mov	r0, r7
	mov	r1, rax
	call	__bit_shr
	mov	r1, 0
	sub	r1, x1
	mov	r0, rax
	call	__bit_and
	mov	t7, rax
	mov	r0, t4
	mov	r1, x0
	call	__bit_shl
	mov	r0, rax
	mov	r1, t7
	call	__bit_or
	sub	t6, x2
	mov	r0, rax
	mov	r1, t6
	call	__bit_and
	mov	t4, rax
	mov	r0, r7
	mov	r1, x0
	call	__bit_shl
	mov	r7, rax
	mov	r0, t6
	call	__bit_not
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r0, t4
	mov	r1, rax
	call	__bit_or
	mov	t4, rax
	mov	r0, r7
	mov	r1, t6
	call	__bit_and
	mov	r7, rax
	mov	t6, 12
	sub	t6, t3
.LBB0_17:
	mov	r1, -2147483648
	mov	r0, r3
	call	__bit_and
	mov	t3, rax
	mov	r0, t2
	mov	r1, r5
	call	__bit_xor
	mov	r0, t1
	mov	r1, r4
	call	__bit_xor
	mov	r1, 3
	mov	r3, rax
	mov	r0, r2
	call	__bit_shl
	mov	r1, 29
	mov	r4, rax
	call	__bit_shr
	mov	r1, 3
	mov	r2, rax
	mov	r0, t5
	call	__bit_shl
	mov	r0, rax
	mov	r1, r2
	call	__bit_or
	mov	r1, 8388608
	mov	r0, rax
	call	__bit_or
	mov	r1, 3
	mov	r5, rax
	mov	r0, r7
	call	__bit_shl
	mov	r1, 29
	mov	r2, rax
	call	__bit_shr
	mov	r1, 3
	mov	r7, rax
	mov	r0, t4
	call	__bit_shl
	mov	r0, rax
	mov	r1, r7
	call	__bit_or
	mov	r1, 8388608
	mov	r0, rax
	call	__bit_or
	mov	r7, rax
	mov	t1, r2
	mov	t5, r7
	je	r6, t6, .LBB0_20
	jmp	.LBB0_18
.LBB0_18:
	mov	t2, r6
	sub	t2, t6
	mov	t5, 0
	mov	r1, -2147483648
	mov	t1, 1
	mov	r0, t2
	call	__bit_xor
	mov	r0, -2147483585
	jg	rax, r0, .LBB0_20
	jmp	.LBB0_19
.LBB0_19:
	mov	r0, 64
	sub	r0, t2
	mov	r1, 31
	call	__bit_and
	mov	t5, rax
	mov	r1, 0
	sub	r1, t5
	mov	t1, 0
	mov	r0, t5
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	t6, rax
	mov	r0, 32
	sub	r0, t2
	mov	t4, 32
	call	__bit_shr
	mov	t7, rax
	mov	r0, r2
	mov	r1, t5
	call	__bit_shl
	mov	x0, 0
	sub	x0, t7
	mov	t7, rax
	mov	r0, x0
	call	__bit_not
	mov	r0, t7
	mov	r1, rax
	call	__bit_and
	mov	x1, rax
	mov	r0, r7
	mov	r1, t5
	call	__bit_shl
	mov	r0, 32
	sub	r0, t5
	mov	r1, 31
	mov	t5, rax
	call	__bit_and
	mov	r0, r2
	mov	r1, rax
	call	__bit_shr
	mov	r1, 0
	sub	r1, t6
	mov	r0, rax
	call	__bit_and
	mov	r0, t5
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x0
	call	__bit_and
	mov	r0, rax
	mov	r1, x1
	call	__bit_or
	mov	t5, rax
	mov	r0, t7
	mov	r1, x0
	call	__bit_and
	mov	r0, rax
	mov	r1, t5
	call	__bit_or
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r0, t2
	add	r0, -32
	mov	t6, rax
	call	__bit_shr
	mov	t5, rax
	mov	r0, t2
	call	__bit_and
	mov	t2, rax
	mov	r0, r7
	mov	r1, t2
	call	__bit_shr
	mov	t7, 0
	sub	t7, t5
	mov	x0, rax
	mov	r0, x0
	mov	r1, t7
	call	__bit_and
	mov	r1, 0
	sub	r1, t2
	mov	t5, rax
	mov	r0, t2
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	x1, rax
	mov	r0, t7
	call	__bit_not
	mov	r0, x0
	mov	r1, rax
	call	__bit_and
	mov	x0, rax
	mov	r0, r2
	mov	r1, t2
	call	__bit_shr
	sub	t4, t2
	mov	r1, 31
	mov	r2, rax
	mov	r0, t4
	call	__bit_and
	mov	r0, r7
	mov	r1, rax
	call	__bit_shl
	sub	t1, x1
	mov	r0, rax
	mov	r1, t1
	call	__bit_and
	mov	r0, r2
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, t7
	call	__bit_and
	mov	r0, rax
	mov	r1, x0
	call	__bit_or
	mov	r1, 1
	mov	r2, rax
	mov	r0, t6
	call	__bit_and
	mov	r0, r2
	mov	r1, rax
	call	__bit_or
	mov	t1, rax
.LBB0_20:
	mov	r0, -1
	jg	r3, r0, .LBB0_24
	jmp	.LBB0_21
.LBB0_21:
	mov	r0, r4
	mov	r1, r5
	mov	r2, t1
	mov	r3, t5
	call	__subdi3
	mov	r3, rax
	mov	r2, t0
	mov	r1, t1
	call	__bit_xor
	mov	r4, rax
	mov	r0, r5
	mov	r1, t5
	call	__bit_xor
	mov	r0, r4
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	rax, 0
	mov	t0, 0
	jz	r0, .LBB0_40
	jmp	.LBB0_22
.LBB0_22:
	mov	r1, -2147483648
	mov	r0, r2
	call	__bit_xor
	mov	r0, -2139095041
	jg	rax, r0, .LBB0_26
	jmp	.LBB0_23
.LBB0_23:
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
	mov	r4, 64
	mov	r1, 1
	sub	r4, rax
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
	add	rax, r4
	mov	t1, 32
	mov	r5, 32
	sub	r5, rax
	mov	r0, r2
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
	mov	r1, r5
	call	__bit_and
	add	r4, rax
	mov	r5, r4
	add	r5, -8
	mov	r1, 31
	mov	r0, r5
	call	__bit_and
	mov	t2, rax
	mov	r1, 0
	sub	r1, t2
	mov	r7, 0
	mov	r0, t2
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	add	r4, -40
	mov	t4, rax
	mov	r0, r4
	call	__bit_shr
	sub	t1, t2
	mov	r4, rax
	mov	r0, t1
	call	__bit_and
	mov	r0, r3
	mov	r1, rax
	call	__bit_shr
	mov	r1, 0
	sub	r1, t4
	mov	r0, rax
	call	__bit_and
	mov	t1, rax
	mov	r0, r2
	mov	r1, t2
	call	__bit_shl
	mov	r0, rax
	mov	r1, t1
	call	__bit_or
	sub	r7, r4
	mov	r0, rax
	mov	r1, r7
	call	__bit_and
	mov	r2, rax
	mov	r0, r3
	mov	r1, t2
	call	__bit_shl
	mov	r3, rax
	mov	r0, r7
	call	__bit_not
	mov	r0, r3
	mov	r1, rax
	call	__bit_and
	mov	r0, r2
	mov	r1, rax
	call	__bit_or
	mov	r2, rax
	mov	r0, r3
	mov	r1, r7
	call	__bit_and
	mov	r3, rax
	sub	r6, r5
	jmp	.LBB0_28
.LBB0_24:
	mov	r0, t1
	mov	r1, t5
	mov	r2, r4
	mov	r3, r5
	call	__adddi3
	mov	r1, 16777216
	mov	r3, rax
	mov	r2, t0
	mov	r0, r2
	call	__bit_and
	jz	rax, .LBB0_26
	jmp	.LBB0_25
.LBB0_25:
	mov	r1, 1
	mov	r0, r2
	call	__bit_shr
	mov	r4, rax
	mov	r0, r3
	call	__bit_shr
	mov	r1, 31
	mov	r3, rax
	mov	r0, r2
	call	__bit_shl
	mov	r0, r3
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	r2, rax
	mov	r0, t1
	call	__bit_and
	mov	r0, r2
	mov	r1, rax
	call	__bit_or
	mov	r3, rax
	add	r6, 1
	mov	r2, r4
.LBB0_26:
	mov	r0, 2047
	jl	r6, r0, .LBB0_28
	jmp	.LBB0_27
.LBB0_27:
	mov	r1, 2146435072
	mov	r0, t3
	call	__bit_or
	mov	t0, rax
	mov	rax, 0
	jmp	.LBB0_40
.LBB0_28:
	mov	r4, 0
	jg	r6, r4, .LBB0_30
	jmp	.LBB0_29
.LBB0_29:
	mov	r5, 1
	mov	r0, r6
	add	r0, 63
	mov	r1, 31
	sub	r5, r6
	call	__bit_and
	mov	r7, rax
	mov	r1, 0
	sub	r1, r7
	mov	r0, r7
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r0, r6
	add	r0, 31
	mov	t1, rax
	call	__bit_shr
	mov	t2, rax
	mov	r0, r3
	mov	r1, r7
	call	__bit_shl
	mov	t4, 0
	sub	t4, t2
	mov	t2, rax
	mov	r0, t4
	call	__bit_not
	mov	r0, t2
	mov	r1, rax
	call	__bit_and
	mov	t5, rax
	mov	r0, r2
	mov	r1, r7
	call	__bit_shl
	mov	t6, rax
	mov	r0, 32
	sub	r0, r7
	mov	r1, 31
	mov	r7, 32
	call	__bit_and
	mov	r0, r3
	mov	r1, rax
	call	__bit_shr
	mov	r1, 0
	sub	r1, t1
	mov	r0, rax
	call	__bit_and
	mov	r0, t6
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, t4
	call	__bit_and
	mov	r0, rax
	mov	r1, t5
	call	__bit_or
	mov	t1, rax
	mov	r0, t2
	mov	r1, t4
	call	__bit_and
	mov	r0, rax
	mov	r1, t1
	call	__bit_or
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r0, -31
	sub	r0, r6
	mov	r6, rax
	call	__bit_shr
	mov	t1, rax
	mov	r0, r5
	call	__bit_and
	mov	r5, rax
	mov	r0, r2
	mov	r1, r5
	call	__bit_shr
	mov	t2, 0
	sub	t2, t1
	mov	t1, rax
	mov	r0, t1
	mov	r1, t2
	call	__bit_and
	mov	r1, 0
	sub	r1, r5
	mov	t4, rax
	mov	r0, r5
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	t5, rax
	mov	r0, t2
	call	__bit_not
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	t1, rax
	mov	r0, r3
	mov	r1, r5
	call	__bit_shr
	sub	r7, r5
	mov	r1, 31
	mov	r3, rax
	mov	r0, r7
	call	__bit_and
	mov	r0, r2
	mov	r1, rax
	call	__bit_shl
	sub	r4, t5
	mov	r0, rax
	mov	r1, r4
	call	__bit_and
	mov	r0, r3
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, t2
	call	__bit_and
	mov	r0, rax
	mov	r1, t1
	call	__bit_or
	mov	r1, 1
	mov	r2, rax
	mov	r0, r6
	call	__bit_and
	mov	r0, r2
	mov	r1, rax
	call	__bit_or
	mov	r3, rax
	mov	r2, t4
	mov	r6, 0
.LBB0_30:
	mov	r1, 7
	mov	r0, r3
	call	__bit_and
	mov	r1, 3
	mov	r4, rax
	call	__bit_shr
	mov	r1, 29
	mov	r3, rax
	mov	r0, r2
	call	__bit_shl
	mov	r0, r3
	mov	r1, rax
	call	__bit_or
	mov	r1, 3
	mov	r5, rax
	mov	r0, r2
	call	__bit_shr
	mov	r1, 1048575
	mov	r0, rax
	call	__bit_and
	mov	r1, 20
	mov	r2, rax
	mov	r0, r6
	call	__bit_shl
	mov	r0, rax
	mov	r1, r2
	call	__bit_or
	mov	r0, rax
	mov	r1, t3
	call	__bit_or
	mov	r6, rax
	call	__fe_getround
	mov	r1, 2
	mov	r0, rax
	je	r0, r1, .LBB0_36
	jmp	.LBB0_31
.LBB0_31:
	mov	r1, 1
	je	r0, r1, .LBB0_35
	jmp	.LBB0_32
.LBB0_32:
	mov	rax, r5
	mov	t0, r6
	jnz	r0, .LBB0_37
	jmp	.LBB0_33
.LBB0_33:
	mov	r1, -2147483648
	mov	r0, r4
	call	__bit_xor
	mov	r0, -2147483644
	sub	r0, rax
	mov	r1, 31
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_and
	mov	r3, 0
	mov	r0, r5
	mov	r1, r6
	mov	r2, rax
	call	__adddi3
	mov	r0, 4
	jne	r4, r0, .LBB0_37
	jmp	.LBB0_34
.LBB0_34:
	mov	r1, 1
	mov	r0, r5
	call	__bit_and
	mov	r1, r6
	mov	r2, rax
	call	__adddi3
	jmp	.LBB0_38
.LBB0_35:
	mov	r0, t3
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r2, rax
	mov	r0, r4
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r0, r2
	mov	r1, rax
	call	__bit_and
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r3, 0
	mov	r0, r5
	mov	r1, r6
	mov	r2, rax
	call	__adddi3
	jmp	.LBB0_37
.LBB0_36:
	mov	r0, t3
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
	mov	r2, rax
	mov	r0, r4
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r0, r2
	mov	r1, rax
	call	__bit_and
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r3, 0
	mov	r0, r5
	mov	r1, r6
	mov	r2, rax
	call	__adddi3
.LBB0_37:
	jz	r4, .LBB0_39
	jmp	.LBB0_38
.LBB0_38:
	mov	r0, t0
	mov	r1, rax
	call	__fe_raise_inexact
	mov	rax, r1
	mov	t0, r0
.LBB0_39:
.LBB0_40:
	mov	x3, [rsp-4]
	mov	x2, [rsp-3]
	mov	x1, [rsp-2]
	mov	x0, [rsp-1]
	ret
// -- End function
