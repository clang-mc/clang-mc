#include "_ll_std"

// -- Begin function __divdf3
__divdf3:                               // @__divdf3
// %bb.0:
	mov	[rsp-1], x0
	mov	[rsp-2], x1
	mov	[rsp-3], x2
	mov	[rsp-4], x3
	mov	[rsp-5], x4
	mov	t5, r1
	mov	r1, 20
	mov	t3, r3
	mov	r5, r2
	mov	r6, r0
	mov	r0, t5
	call	__bit_shr
	mov	r1, 2047
	mov	r0, rax
	call	__bit_and
	mov	r1, 20
	mov	r7, rax
	mov	r0, t3
	call	__bit_shr
	mov	r1, 2047
	mov	r0, rax
	call	__bit_and
	mov	r2, rax
	mov	r0, t3
	mov	r1, t5
	call	__bit_xor
	mov	r1, -2147483648
	mov	r0, rax
	call	__bit_and
	mov	r1, 1048575
	mov	r4, rax
	mov	r0, t5
	call	__bit_and
	mov	r3, rax
	mov	r0, t3
	call	__bit_and
	mov	r0, r7
	add	r0, -2047
	mov	r1, -2147483648
	mov	t1, rax
	call	__bit_xor
	mov	r0, 2147481602
	jl	rax, r0, .LBB0_2
	jmp	.LBB0_1
.LBB0_1:
	mov	r0, r2
	add	r0, -2047
	mov	x0, 0
	call	__bit_xor
	mov	r0, 2147481601
	jg	rax, r0, .LBB0_19
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
	mov	r0, r6
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
	jmp	.LBB0_30
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
	mov	r6, r5
	jmp	.LBB0_30
.LBB0_6:
	mov	r1, 2146435072
	mov	r0, t4
	call	__bit_xor
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	jnz	rax, .LBB0_9
	jmp	.LBB0_7
.LBB0_7:
	mov	r1, 2146435072
	mov	r0, t2
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	t0, 2146959360
	mov	r6, 0
	jz	rax, .LBB0_30
	jmp	.LBB0_8
.LBB0_8:
	mov	r1, 2146435072
	mov	r0, r4
	call	__bit_or
	mov	t0, rax
	jmp	.LBB0_30
.LBB0_9:
	mov	r1, 2146435072
	mov	r0, t2
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	jnz	rax, .LBB0_11
	jmp	.LBB0_10
.LBB0_10:
	mov	r6, 0
	mov	t0, r4
	jmp	.LBB0_30
.LBB0_11:
	mov	r0, r6
	mov	r1, t4
	call	__bit_or
	jnz	rax, .LBB0_13
	jmp	.LBB0_12
.LBB0_12:
	mov	r0, r5
	mov	r1, t2
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
	add	rax, 1
	mov	r1, 2146959360
	sub	r1, r4
	mov	r0, rax
	call	__bit_and
	mov	t0, rax
	add	t0, r4
	mov	r6, 0
	jmp	.LBB0_30
.LBB0_13:
	mov	r0, r5
	mov	r1, t2
	call	__bit_or
	jnz	rax, .LBB0_15
	jmp	.LBB0_14
.LBB0_14:
	mov	r1, 2146435072
	mov	r0, r4
	call	__bit_or
	mov	t0, rax
	mov	r6, 0
	jmp	.LBB0_30
.LBB0_15:
	mov	x1, 1048575
	mov	x0, 0
	jg	t4, x1, .LBB0_17
	jmp	.LBB0_16
.LBB0_16:
	mov	r1, 1
	mov	r0, r6
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
	mov	r0, r6
	mov	r1, rax
	call	__bit_shr
	mov	r1, 0
	sub	r1, t7
	mov	r0, rax
	call	__bit_and
	mov	t5, rax
	mov	r0, r3
	mov	r1, t6
	call	__bit_shl
	mov	r0, rax
	mov	r1, t5
	call	__bit_or
	sub	t4, x0
	mov	r0, rax
	mov	r1, t4
	call	__bit_and
	mov	r3, rax
	mov	r0, r6
	mov	r1, t6
	call	__bit_shl
	mov	r6, rax
	mov	r0, t4
	call	__bit_not
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	r0, r3
	mov	r1, rax
	call	__bit_or
	mov	r3, rax
	mov	r0, r6
	mov	r1, t4
	call	__bit_and
	mov	r6, rax
	mov	x0, 12
	sub	x0, t3
.LBB0_17:
	jg	t2, x1, .LBB0_19
	jmp	.LBB0_18
.LBB0_18:
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
	mov	r0, r5
	mov	r1, rax
	call	__bit_shr
	mov	r1, 0
	sub	r1, t6
	mov	r0, rax
	call	__bit_and
	mov	t4, rax
	mov	r0, t1
	mov	r1, t5
	call	__bit_shl
	mov	r0, rax
	mov	r1, t4
	call	__bit_or
	sub	t3, t7
	mov	r0, rax
	mov	r1, t3
	call	__bit_and
	mov	t1, rax
	mov	r0, r5
	mov	r1, t5
	call	__bit_shl
	mov	r5, rax
	mov	r0, t3
	call	__bit_not
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	t1, rax
	mov	r0, r5
	mov	r1, t3
	call	__bit_and
	add	t2, x0
	add	t2, -12
	mov	r5, rax
	mov	x0, t2
.LBB0_19:
	mov	r1, 1048576
	mov	r0, r3
	call	__bit_or
	mov	t3, rax
	mov	r0, t1
	call	__bit_or
	sub	r7, r2
	add	r7, x0
	mov	t1, rax
	mov	t2, r7
	mov	r1, 11
	add	t2, 1023
	mov	r0, r5
	call	__bit_shl
	mov	r1, 21
	mov	t4, rax
	call	__bit_shr
	mov	r1, 11
	mov	r2, rax
	mov	r0, t1
	call	__bit_shl
	mov	r0, r2
	mov	r1, rax
	call	__bit_or
	mov	t5, rax
	mov	r2, 1963258675
	sub	r2, t5
	mov	r1, 0
	mov	r3, 0
	mov	t6, 0
	mov	r0, t5
	call	__muldi3
	mov	r0, 0
	sub	r0, t0
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
	mov	r2, t5
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
	mov	r2, t5
	call	__muldi3
	sub	t6, t0
	mov	r2, t6
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
	mov	t6, rax
	add	t6, -1
	mov	r1, 0
	mov	r3, 0
	mov	r0, t5
	mov	r2, t6
	call	__muldi3
	mov	t5, rax
	mov	t7, t0
	mov	r0, t4
	call	__muldi3
	mov	r2, t0
	mov	r0, t5
	mov	r1, t7
	call	__adddi3
	mov	r0, 1
	mov	r1, 0
	mov	r3, t0
	mov	r2, rax
	call	__subdi3
	mov	r3, 0
	mov	t4, rax
	mov	r2, t0
	mov	r0, t6
	call	__muldi3
	mov	r1, 1
	mov	r2, rax
	mov	r0, t0
	call	__bit_shl
	mov	r1, 31
	mov	r3, rax
	mov	r0, r2
	call	__bit_shr
	mov	r0, r3
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	t5, rax
	mov	r0, r2
	call	__bit_shl
	mov	r1, 0
	mov	r3, 0
	mov	t7, rax
	mov	r0, t4
	mov	r2, t6
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
	mov	r1, 31
	mov	t4, rax
	mov	r0, r2
	call	__bit_shr
	mov	r2, -225
	mov	r3, -1
	mov	t6, rax
	mov	r0, t7
	mov	r1, t5
	call	__adddi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, t4
	mov	r3, t6
	call	__adddi3
	mov	r1, 31
	mov	t4, rax
	mov	t7, t0
	mov	r0, r6
	call	__bit_shr
	mov	r1, 1
	mov	r2, rax
	mov	r0, t3
	call	__bit_shl
	mov	r0, rax
	mov	r1, r2
	call	__bit_or
	mov	r1, 1
	mov	t6, rax
	mov	r0, r6
	call	__bit_shl
	mov	r1, 0
	mov	r3, 0
	mov	t5, rax
	mov	r0, t4
	mov	r2, t5
	call	__muldi3
	mov	x0, t0
	mov	r2, t6
	call	__muldi3
	mov	t4, rax
	mov	x1, t0
	mov	r0, t7
	mov	r2, t5
	call	__muldi3
	mov	x2, rax
	mov	x3, t0
	mov	r2, t6
	call	__muldi3
	mov	t7, rax
	mov	x4, t0
	mov	r0, x0
	mov	r2, t4
	call	__adddi3
	mov	r1, -2
	mov	r2, rax
	mov	t4, t0
	mov	r0, x2
	call	__bit_and
	mov	r0, r2
	mov	r1, t4
	mov	r2, rax
	call	__adddi3
	mov	r1, 0
	mov	t4, t0
	mov	r0, x3
	mov	r2, t7
	mov	r3, x4
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x1
	call	__adddi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, t4
	call	__adddi3
	mov	r1, -2147483648
	mov	r2, rax
	mov	r3, t0
	mov	r0, r3
	call	__bit_xor
	mov	r0, -2145386497
	jg	rax, r0, .LBB0_21
	jmp	.LBB0_20
.LBB0_20:
	mov	r0, r3
	add	r0, -1048576
	mov	r1, 31
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	t3, rax
	mov	r0, t3
	call	__bit_and
	mov	t7, rax
	mov	r0, r2
	mov	r1, t7
	call	__bit_shl
	mov	t4, rax
	mov	r0, r3
	call	__bit_shl
	mov	r1, 1
	mov	r3, rax
	mov	r0, r2
	call	__bit_shr
	mov	r1, 31
	mov	r2, rax
	mov	r0, t7
	call	__bit_xor
	mov	r0, r2
	mov	r1, rax
	call	__bit_shr
	mov	r0, r3
	mov	r1, rax
	call	__bit_or
	mov	t7, rax
	mov	r0, t3
	call	__bit_not
	sub	r7, t2
	add	r7, 1022
	add	rax, 1
	mov	r0, rax
	mov	r1, r7
	call	__bit_and
	mov	r7, rax
	mov	r1, 21
	add	r7, t2
	mov	r0, r6
	call	__bit_shl
	mov	r6, rax
	mov	r0, t4
	mov	r1, t7
	mov	r2, r5
	mov	r3, t1
	call	__muldi3
	mov	r0, 0
	mov	r3, t0
	mov	r1, r6
	mov	r2, rax
	call	__subdi3
	add	r7, -1
	mov	t2, r7
	jmp	.LBB0_22
.LBB0_21:
	mov	r1, 1
	mov	r0, r3
	call	__bit_shr
	mov	t7, rax
	mov	r0, r2
	call	__bit_shr
	mov	r1, 31
	mov	r2, rax
	mov	r0, r3
	call	__bit_shl
	mov	r0, r2
	mov	r1, rax
	call	__bit_or
	mov	r1, 20
	mov	t4, rax
	mov	r0, r6
	call	__bit_shl
	mov	r7, rax
	mov	r0, t4
	mov	r1, t7
	mov	r2, r5
	mov	r3, t1
	call	__muldi3
	mov	r0, 0
	mov	r3, t0
	mov	r1, r7
	mov	r2, rax
	call	__subdi3
	mov	t5, r6
	mov	t6, t3
.LBB0_22:
	mov	r0, 2047
	jl	t2, r0, .LBB0_24
	jmp	.LBB0_23
.LBB0_23:
	mov	r1, 2146435072
	mov	r0, r4
	call	__bit_or
	mov	t0, rax
	mov	r6, 0
	jmp	.LBB0_30
.LBB0_24:
	mov	r0, 1
	jl	t2, r0, .LBB0_26
	jmp	.LBB0_25
.LBB0_25:
	mov	r1, 1048575
	mov	r0, t7
	mov	r2, rax
	mov	r3, t0
	call	__bit_and
	mov	r1, 20
	mov	r6, rax
	mov	r0, t2
	call	__bit_shl
	mov	r0, rax
	mov	r1, r6
	call	__bit_or
	mov	r1, 31
	mov	r6, rax
	mov	r0, r2
	call	__bit_shr
	mov	r1, 1
	mov	r7, rax
	mov	r0, r3
	call	__bit_shl
	mov	r0, rax
	mov	r1, r7
	call	__bit_or
	mov	r1, 1
	mov	r3, rax
	mov	r0, r2
	call	__bit_shl
	mov	r2, rax
	jmp	.LBB0_29
.LBB0_26:
	mov	r0, -53
	jg	t2, r0, .LBB0_28
	jmp	.LBB0_27
.LBB0_27:
	mov	r6, 0
	mov	t0, r4
	jmp	.LBB0_30
.LBB0_28:
	mov	r3, t2
	mov	r0, 1
	sub	r0, t2
	mov	r1, 31
	add	r3, 52
	call	__bit_and
	mov	r6, rax
	mov	r1, 0
	sub	r1, r6
	mov	r2, 0
	mov	r0, r6
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r0, -31
	sub	r0, t2
	mov	t3, rax
	call	__bit_shr
	mov	r7, rax
	mov	r0, t7
	mov	r1, r6
	call	__bit_shr
	mov	x0, 0
	sub	x0, r7
	mov	x1, rax
	mov	r0, x0
	call	__bit_not
	mov	r0, x1
	mov	r1, rax
	call	__bit_and
	mov	x2, rax
	mov	r0, t4
	mov	r1, r6
	call	__bit_shr
	mov	t4, rax
	mov	r0, 32
	sub	r0, r6
	mov	r1, 31
	mov	r7, 32
	call	__bit_and
	mov	r0, t7
	mov	r1, rax
	call	__bit_shl
	mov	r1, 0
	sub	r1, t3
	mov	r0, rax
	call	__bit_and
	mov	r0, t4
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x0
	call	__bit_and
	mov	r0, rax
	mov	r1, x2
	call	__bit_or
	mov	t4, rax
	mov	r0, x1
	mov	r1, x0
	call	__bit_and
	mov	r1, 31
	mov	r6, rax
	mov	r0, r3
	call	__bit_and
	mov	r3, rax
	mov	r1, 0
	sub	r1, r3
	mov	r0, r3
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	add	t2, 20
	mov	t3, rax
	mov	r0, t2
	call	__bit_shr
	mov	t2, rax
	mov	r0, t5
	mov	r1, r3
	call	__bit_shl
	mov	t7, 0
	sub	t7, t2
	mov	t2, rax
	mov	r0, t7
	call	__bit_not
	mov	r0, t2
	mov	r1, rax
	call	__bit_and
	mov	x0, rax
	mov	r0, t6
	mov	r1, r3
	call	__bit_shl
	sub	r7, r3
	mov	r1, 31
	mov	r3, rax
	mov	r0, r7
	call	__bit_and
	mov	r0, t5
	mov	r1, rax
	call	__bit_shr
	sub	r2, t3
	mov	r0, rax
	mov	r1, r2
	call	__bit_and
	mov	r0, r3
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, t7
	call	__bit_and
	mov	r0, rax
	mov	r1, x0
	call	__bit_or
	mov	r7, rax
	mov	r0, t2
	mov	r1, t7
	call	__bit_and
	mov	t2, rax
	mov	r0, r5
	mov	r1, t1
	mov	r2, t4
	mov	r3, r6
	call	__muldi3
	mov	r1, 1
	mov	r2, rax
	mov	r0, t0
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
	mov	r0, t2
	mov	r1, r7
	mov	r2, rax
	call	__subdi3
	mov	r2, rax
	mov	r3, t0
.LBB0_29:
	mov	r1, 1
	mov	r0, t4
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__adddi3
	mov	r2, rax
	mov	r3, t0
	mov	r0, r3
	mov	r1, t1
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
	sub	t1, r3
	mov	r1, 31
	mov	r3, rax
	mov	r0, t1
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	r5, r2
	mov	r1, 31
	mov	r2, rax
	mov	r0, r5
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	rax, r2
	add	r3, 1
	mov	r0, r3
	mov	r1, rax
	call	__bit_and
	add	r2, rax
	mov	r1, 1
	mov	r0, r2
	call	__bit_and
	mov	r3, 0
	mov	r0, t4
	mov	r1, r6
	mov	r2, rax
	call	__adddi3
	mov	r6, rax
	mov	r0, t0
	mov	r1, r4
	call	__bit_or
	mov	t0, rax
.LBB0_30:
	mov	rax, r6
	mov	x4, [rsp-5]
	mov	x3, [rsp-4]
	mov	x2, [rsp-3]
	mov	x1, [rsp-2]
	mov	x0, [rsp-1]
	ret
// -- End function
