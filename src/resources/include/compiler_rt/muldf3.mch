#include "_ll_std"

// -- Begin function __muldf3
__muldf3:                               // @__muldf3
// %bb.0:
	mov	[rsp-1], x0
	mov	[rsp-2], x1
	mov	[rsp-3], x2
	mov	[rsp-4], x3
	mov	t5, r1
	mov	r1, 20
	mov	t3, r3
	mov	r4, r0
	mov	r0, t5
	call	__bit_shr
	mov	r1, 2047
	mov	r0, rax
	call	__bit_and
	mov	r1, 20
	mov	r6, rax
	mov	r0, t3
	call	__bit_shr
	mov	r1, 2047
	mov	r0, rax
	call	__bit_and
	mov	r7, rax
	mov	r0, t3
	mov	r1, t5
	call	__bit_xor
	mov	r1, -2147483648
	mov	r0, rax
	call	__bit_and
	mov	r1, 1048575
	mov	r5, rax
	mov	r0, t5
	call	__bit_and
	mov	t1, rax
	mov	r0, t3
	call	__bit_and
	mov	r0, r6
	add	r0, -2047
	mov	r1, -2147483648
	mov	r3, rax
	call	__bit_xor
	mov	r0, 2147481602
	jl	rax, r0, .LBB0_2
	jmp	.LBB0_1
.LBB0_1:
	mov	r0, r7
	add	r0, -2047
	mov	x2, 0
	call	__bit_xor
	mov	r0, 2147481601
	jg	rax, r0, .LBB0_20
	jmp	.LBB0_2
.LBB0_2:
	mov	r1, 2147483647
	mov	r0, t5
	call	__bit_and
	mov	t4, rax
	mov	r0, t3
	call	__bit_and
	mov	r1, 2146435072
	mov	t2, rax
	mov	r0, t4
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
	mov	t6, rax
	mov	r0, t4
	call	__bit_xor
	add	rax, 1048576
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	t7, rax
	mov	r0, r4
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
	sub	rax, t7
	add	t6, 1
	mov	r0, t6
	mov	r1, rax
	call	__bit_and
	add	rax, t7
	jnz	rax, .LBB0_4
	jmp	.LBB0_3
.LBB0_3:
	mov	r1, 524288
	mov	r0, t5
	call	__bit_or
	mov	t0, rax
	jmp	.LBB0_35
.LBB0_4:
	mov	r1, 2146435072
	mov	r0, t2
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
	mov	t5, rax
	mov	r0, t2
	call	__bit_xor
	add	rax, 1048576
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	t6, rax
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
	sub	rax, t6
	add	t5, 1
	mov	r0, t5
	mov	r1, rax
	call	__bit_and
	add	rax, t6
	jnz	rax, .LBB0_6
	jmp	.LBB0_5
.LBB0_5:
	mov	r1, 524288
	mov	r0, t3
	call	__bit_or
	mov	t0, rax
	mov	r4, r2
	jmp	.LBB0_35
.LBB0_6:
	mov	r1, 2146435072
	mov	r0, t4
	call	__bit_xor
	mov	r0, r4
	mov	r1, rax
	call	__bit_or
	jnz	rax, .LBB0_9
	jmp	.LBB0_7
.LBB0_7:
	mov	r0, r2
	mov	r1, t2
	call	__bit_or
	mov	t0, 2146959360
	mov	r4, 0
	jz	rax, .LBB0_35
	jmp	.LBB0_8
.LBB0_8:
	mov	r1, 2146435072
	mov	r0, r5
	call	__bit_or
	mov	t0, rax
	jmp	.LBB0_35
.LBB0_9:
	mov	r1, 2146435072
	mov	r0, t2
	call	__bit_xor
	mov	r0, r2
	mov	r1, rax
	call	__bit_or
	jnz	rax, .LBB0_12
	jmp	.LBB0_10
.LBB0_10:
	mov	r0, r4
	mov	r1, t4
	call	__bit_or
	mov	t0, 2146959360
	mov	r4, 0
	jz	rax, .LBB0_35
	jmp	.LBB0_11
.LBB0_11:
	mov	r1, 2146435072
	mov	r0, r5
	call	__bit_or
	mov	t0, rax
	jmp	.LBB0_35
.LBB0_12:
	mov	r0, r4
	mov	r1, t4
	call	__bit_or
	jnz	rax, .LBB0_14
	jmp	.LBB0_13
.LBB0_13:
	mov	r4, 0
	mov	t0, r5
	jmp	.LBB0_35
.LBB0_14:
	mov	r0, r2
	mov	r1, t2
	call	__bit_or
	jnz	rax, .LBB0_16
	jmp	.LBB0_15
.LBB0_15:
	mov	r4, 0
	mov	t0, r5
	jmp	.LBB0_35
.LBB0_16:
	mov	x1, 1048575
	mov	x2, 0
	jg	t4, x1, .LBB0_18
	jmp	.LBB0_17
.LBB0_17:
	mov	r1, 1
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
	mov	t4, rax
	mov	r0, t3
	call	__bit_and
	add	t4, rax
	mov	r1, 4
	mov	r0, t4
	call	__bit_shr
	add	t4, rax
	mov	r1, 252645135
	mov	r0, t4
	call	__bit_and
	mul	rax, 16843009
	mov	r1, 24
	mov	r0, rax
	call	__bit_shr
	mov	t6, 64
	mov	r1, 1
	sub	t6, rax
	mov	r0, t1
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
	mov	t4, rax
	mov	r0, t3
	call	__bit_and
	add	t4, rax
	mov	r1, 4
	mov	r0, t4
	call	__bit_shr
	add	t4, rax
	mov	r1, 252645135
	mov	r0, t4
	call	__bit_and
	mul	rax, 16843009
	mov	r1, 24
	mov	r0, rax
	call	__bit_shr
	add	rax, t6
	mov	t5, 32
	mov	t3, 32
	sub	t3, rax
	mov	r0, t1
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
	add	t3, t6
	mov	r0, t3
	add	r0, -11
	mov	r1, 31
	call	__bit_and
	mov	t6, rax
	mov	r1, 0
	sub	r1, t6
	mov	t4, 0
	mov	r0, t6
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r0, t3
	add	r0, -43
	mov	t7, rax
	call	__bit_shr
	sub	t5, t6
	mov	x0, rax
	mov	r0, t5
	call	__bit_and
	mov	r0, r4
	mov	r1, rax
	call	__bit_shr
	mov	r1, 0
	sub	r1, t7
	mov	r0, rax
	call	__bit_and
	mov	t5, rax
	mov	r0, t1
	mov	r1, t6
	call	__bit_shl
	mov	r0, rax
	mov	r1, t5
	call	__bit_or
	sub	t4, x0
	mov	r0, rax
	mov	r1, t4
	call	__bit_and
	mov	t1, rax
	mov	r0, r4
	mov	r1, t6
	call	__bit_shl
	mov	r4, rax
	mov	r0, t4
	call	__bit_not
	mov	r0, r4
	mov	r1, rax
	call	__bit_and
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	t1, rax
	mov	r0, r4
	mov	r1, t4
	call	__bit_and
	mov	r4, rax
	mov	x2, 12
	sub	x2, t3
.LBB0_18:
	jg	t2, x1, .LBB0_20
	jmp	.LBB0_19
.LBB0_19:
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
	mov	t2, rax
	mov	r0, t2
	call	__bit_shr
	mov	r1, 1431655765
	mov	r0, rax
	call	__bit_and
	sub	t2, rax
	mov	r1, 2
	mov	r0, t2
	call	__bit_shr
	mov	r1, 858993459
	mov	r0, rax
	call	__bit_and
	mov	t3, rax
	mov	r0, t2
	call	__bit_and
	add	t3, rax
	mov	r1, 4
	mov	r0, t3
	call	__bit_shr
	add	t3, rax
	mov	r1, 252645135
	mov	r0, t3
	call	__bit_and
	mul	rax, 16843009
	mov	r1, 24
	mov	r0, rax
	call	__bit_shr
	mov	t5, 64
	mov	r1, 1
	sub	t5, rax
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
	mov	t2, rax
	mov	r0, t2
	call	__bit_shr
	mov	r1, 1431655765
	mov	r0, rax
	call	__bit_and
	sub	t2, rax
	mov	r1, 2
	mov	r0, t2
	call	__bit_shr
	mov	r1, 858993459
	mov	r0, rax
	call	__bit_and
	mov	t3, rax
	mov	r0, t2
	call	__bit_and
	add	t3, rax
	mov	r1, 4
	mov	r0, t3
	call	__bit_shr
	add	t3, rax
	mov	r1, 252645135
	mov	r0, t3
	call	__bit_and
	mul	rax, 16843009
	mov	r1, 24
	mov	r0, rax
	call	__bit_shr
	add	rax, t5
	mov	t4, 32
	mov	t2, 32
	sub	t2, rax
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
	mov	r1, t2
	call	__bit_and
	mov	t2, rax
	add	t2, t5
	mov	r0, t2
	add	r0, -11
	mov	r1, 31
	call	__bit_and
	mov	t5, rax
	mov	r1, 0
	sub	r1, t5
	mov	t3, 0
	mov	r0, t5
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r0, t2
	add	r0, -43
	mov	t6, rax
	call	__bit_shr
	sub	t4, t5
	mov	t7, rax
	mov	r0, t4
	call	__bit_and
	mov	r0, r2
	mov	r1, rax
	call	__bit_shr
	mov	r1, 0
	sub	r1, t6
	mov	r0, rax
	call	__bit_and
	mov	t4, rax
	mov	r0, r3
	mov	r1, t5
	call	__bit_shl
	mov	r0, rax
	mov	r1, t4
	call	__bit_or
	sub	t3, t7
	mov	r0, rax
	mov	r1, t3
	call	__bit_and
	mov	r3, rax
	mov	r0, r2
	mov	r1, t5
	call	__bit_shl
	mov	r2, rax
	mov	r0, t3
	call	__bit_not
	mov	r0, r2
	mov	r1, rax
	call	__bit_and
	mov	r0, r3
	mov	r1, rax
	call	__bit_or
	mov	r3, rax
	mov	r0, r2
	mov	r1, t3
	call	__bit_and
	mov	r2, rax
	sub	x2, t2
	add	x2, 12
.LBB0_20:
	mov	r1, 21
	mov	r0, r2
	call	__bit_shr
	mov	r1, 11
	mov	t2, rax
	mov	r0, r3
	call	__bit_shl
	mov	r0, rax
	mov	r1, t2
	call	__bit_or
	mov	r1, 11
	mov	t2, rax
	mov	r0, r2
	call	__bit_shl
	mov	r1, 0
	mov	r3, 0
	mov	t3, rax
	mov	r0, t3
	mov	r2, r4
	call	__muldi3
	mov	r1, -2147483648
	mov	t4, rax
	mov	t5, t0
	mov	r0, t2
	call	__bit_or
	mov	r1, 0
	mov	t2, rax
	mov	r0, t2
	call	__muldi3
	mov	r1, 1048576
	mov	t6, rax
	mov	r4, t0
	mov	r0, t1
	call	__bit_or
	mov	r1, 0
	mov	r2, rax
	mov	r0, t3
	call	__muldi3
	mov	t3, rax
	mov	t7, t0
	mov	r0, t2
	call	__muldi3
	mov	r1, -2048
	mov	x0, rax
	mov	x1, t0
	mov	r0, t4
	call	__bit_and
	mov	t1, rax
	mov	r0, t3
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	mov	r2, t5
	call	__adddi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, t6
	call	__adddi3
	mov	r1, 0
	mov	t2, rax
	mov	t3, t0
	mov	r0, t7
	mov	r2, x0
	mov	r3, x1
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, r4
	call	__adddi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, t3
	call	__adddi3
	mov	r4, rax
	mov	r2, t0
	add	r6, r7
	add	r6, x2
	mov	r1, 1048576
	add	r6, -1023
	mov	r0, r2
	call	__bit_and
	jz	rax, .LBB0_22
	jmp	.LBB0_21
.LBB0_21:
	add	r6, 1
	jmp	.LBB0_23
.LBB0_22:
	mov	r1, 31
	mov	r0, r4
	call	__bit_shr
	mov	r1, 1
	mov	r3, rax
	mov	r0, r2
	call	__bit_shl
	mov	r0, rax
	mov	r1, r3
	call	__bit_or
	mov	r1, 1
	mov	r2, rax
	mov	r0, r4
	call	__bit_shl
	mov	r1, 31
	mov	r3, rax
	mov	r0, t2
	call	__bit_shr
	mov	r0, r3
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r4, rax
	mov	r0, t1
	call	__bit_shr
	mov	r1, 1
	mov	r3, rax
	mov	r0, t2
	call	__bit_shl
	mov	r0, rax
	mov	r1, r3
	call	__bit_or
	mov	r1, 1
	mov	t2, rax
	mov	r0, t1
	call	__bit_shl
	mov	t1, rax
.LBB0_23:
	mov	r0, 2047
	jl	r6, r0, .LBB0_25
	jmp	.LBB0_24
.LBB0_24:
	mov	r1, 2146435072
	mov	r0, r5
	call	__bit_or
	mov	t0, rax
	mov	r4, 0
	jmp	.LBB0_35
.LBB0_25:
	mov	r0, 0
	jg	r6, r0, .LBB0_29
	jmp	.LBB0_26
.LBB0_26:
	mov	r7, 1
	sub	r7, r6
	mov	r0, 63
	jg	r7, r0, .LBB0_28
	jmp	.LBB0_27
.LBB0_27:
	mov	r0, r6
	add	r0, 63
	mov	r1, 31
	call	__bit_and
	mov	t5, rax
	mov	r0, t1
	mov	r1, t5
	call	__bit_shl
	add	r6, 31
	mov	r1, 31
	mov	t3, rax
	mov	r0, r6
	call	__bit_shr
	mov	t4, 0
	sub	t4, rax
	mov	r3, 0
	mov	r0, t4
	call	__bit_not
	mov	t6, rax
	mov	r0, t3
	mov	r1, t6
	call	__bit_and
	mov	x0, rax
	mov	r0, t2
	mov	r1, t5
	call	__bit_shl
	mov	x1, rax
	mov	r0, 32
	sub	r0, t5
	mov	r1, 31
	mov	r6, 32
	call	__bit_and
	mov	t7, rax
	mov	r0, t1
	mov	r1, t7
	call	__bit_shr
	mov	r1, 0
	sub	r1, t5
	mov	x2, rax
	mov	r0, t5
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	x3, 0
	sub	x3, rax
	mov	r0, x2
	mov	r1, x3
	call	__bit_and
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, t4
	call	__bit_and
	mov	r0, rax
	mov	r1, x0
	call	__bit_or
	mov	x0, rax
	mov	r0, t3
	mov	r1, t4
	call	__bit_and
	mov	r0, rax
	mov	r1, x0
	call	__bit_or
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	t3, rax
	mov	r0, r4
	mov	r1, t5
	call	__bit_shl
	mov	x0, rax
	mov	r0, x0
	mov	r1, t6
	call	__bit_and
	mov	t6, rax
	mov	r0, r2
	mov	r1, t5
	call	__bit_shl
	mov	t5, rax
	mov	r0, r4
	mov	r1, t7
	call	__bit_shr
	mov	r0, rax
	mov	r1, x3
	call	__bit_and
	mov	r0, t5
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, t4
	call	__bit_and
	mov	r0, rax
	mov	r1, t6
	call	__bit_or
	mov	t5, rax
	mov	r0, x0
	mov	r1, t4
	call	__bit_and
	mov	r1, 31
	mov	t7, rax
	mov	r0, r7
	call	__bit_and
	mov	t4, rax
	mov	r0, t2
	mov	r1, t4
	call	__bit_shr
	add	r7, -32
	mov	r1, 31
	mov	x0, rax
	mov	r0, r7
	call	__bit_shr
	mov	r7, 0
	sub	r7, rax
	mov	r0, r7
	call	__bit_not
	mov	t6, rax
	mov	r0, x0
	mov	r1, t6
	call	__bit_and
	mov	x1, rax
	mov	r0, t1
	mov	r1, t4
	call	__bit_shr
	sub	r6, t4
	mov	r1, 31
	mov	t1, rax
	mov	r0, r6
	call	__bit_and
	mov	r6, rax
	mov	r0, t2
	mov	r1, r6
	call	__bit_shl
	mov	r1, 0
	sub	r1, t4
	mov	t2, rax
	mov	r0, t4
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	sub	r3, rax
	mov	r0, t2
	mov	r1, r3
	call	__bit_and
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, r7
	call	__bit_and
	mov	r0, rax
	mov	r1, x1
	call	__bit_or
	mov	t1, rax
	mov	r0, x0
	mov	r1, r7
	call	__bit_and
	mov	r0, t5
	mov	r1, rax
	call	__bit_or
	mov	t2, rax
	mov	r0, t7
	mov	r1, t1
	call	__bit_or
	mov	r1, 1
	mov	t1, rax
	mov	r0, t3
	call	__bit_and
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	t1, rax
	mov	r0, r2
	mov	r1, t4
	call	__bit_shr
	mov	t3, rax
	mov	r0, t3
	mov	r1, t6
	call	__bit_and
	mov	t5, rax
	mov	r0, r4
	mov	r1, t4
	call	__bit_shr
	mov	r4, rax
	mov	r0, r2
	mov	r1, r6
	call	__bit_shl
	mov	r0, rax
	mov	r1, r3
	call	__bit_and
	mov	r0, r4
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, r7
	call	__bit_and
	mov	r0, rax
	mov	r1, t5
	call	__bit_or
	mov	r4, rax
	mov	r0, t3
	mov	r1, r7
	call	__bit_and
	jmp	.LBB0_30
.LBB0_28:
	mov	r4, 0
	mov	t0, r5
	jmp	.LBB0_35
.LBB0_29:
	mov	r1, 1048575
	mov	r0, r2
	call	__bit_and
	mov	r1, 20
	mov	r2, rax
	mov	r0, r6
	call	__bit_shl
	mov	r0, rax
	mov	r1, r2
	call	__bit_or
.LBB0_30:
	mov	r0, rax
	mov	r1, r5
	call	__bit_or
	mov	r1, -2147483648
	mov	r5, rax
	mov	r0, t2
	call	__bit_xor
	mov	r2, rax
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
	mov	r0, rax
	call	__bit_not
	mov	r1, 2147483647
	mov	r3, rax
	mov	r0, r2
	call	__bit_xor
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r2, rax
	mov	r0, t1
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
	sub	rax, r2
	add	r3, 1
	mov	r0, r3
	mov	r1, rax
	call	__bit_and
	add	rax, r2
	jnz	rax, .LBB0_32
	jmp	.LBB0_31
.LBB0_31:
	mov	r2, 1
	mov	r3, 0
	mov	r0, r4
	mov	r1, r5
	call	__adddi3
	mov	r4, rax
	jmp	.LBB0_34
.LBB0_32:
	mov	r1, -2147483648
	mov	r0, t2
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	t0, r5
	jnz	rax, .LBB0_34
	jmp	.LBB0_33
.LBB0_33:
	mov	r1, 1
	mov	r0, r4
	mov	r2, t0
	call	__bit_and
	mov	r3, 0
	mov	r1, r2
	mov	r2, rax
	call	__adddi3
	mov	r4, rax
.LBB0_34:
.LBB0_35:
	mov	rax, r4
	mov	x3, [rsp-4]
	mov	x2, [rsp-3]
	mov	x1, [rsp-2]
	mov	x0, [rsp-1]
	ret
// -- End function
