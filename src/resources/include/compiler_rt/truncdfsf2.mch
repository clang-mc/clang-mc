#include "_ll_std"

// -- Begin function __truncdfsf2
__truncdfsf2:                           // @__truncdfsf2
// %bb.0:
	mov	r2, r1
	mov	r1, 20
	mov	r3, r0
	mov	r0, r2
	call	__bit_shr
	mov	r1, 2047
	mov	r0, rax
	call	__bit_and
	mov	r1, 1048575
	mov	r4, rax
	mov	r0, r2
	call	__bit_and
	mov	r0, r4
	add	r0, -897
	mov	r1, -2147483648
	mov	r6, rax
	call	__bit_xor
	mov	r0, -2147483395
	jg	rax, r0, .LBB0_6
	jmp	.LBB0_1
.LBB0_1:
	mov	r1, 29
	mov	r0, r3
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	mov	r0, r6
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	r1, 536870911
	mov	r5, rax
	mov	r0, r3
	call	__bit_and
	mov	r1, -2147483648
	mov	r0, rax
	call	__bit_xor
	mov	r1, -1879048191
	jl	rax, r1, .LBB0_3
	jmp	.LBB0_2
.LBB0_2:
	add	r5, 1
	jmp	.LBB0_5
.LBB0_3:
	mov	r1, 268435456
	jne	r0, r1, .LBB0_5
	jmp	.LBB0_4
.LBB0_4:
	mov	r1, 1
	mov	r0, r5
	call	__bit_and
	add	r5, rax
.LBB0_5:
	mov	r1, -2147483648
	mov	r0, r5
	call	__bit_xor
	mov	r0, -2139095041
	sub	r0, rax
	mov	r1, 31
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	mov	r0, rax
	mov	r1, 0
	sub	r1, r5
	add	r0, 1
	call	__bit_and
	mov	t1, rax
	mov	r1, 1
	add	t1, r5
	call	__bit_and
	mov	t2, rax
	add	t2, r4
	add	t2, -896
	jmp	.LBB0_18
.LBB0_6:
	mov	r0, r3
	mov	r1, r6
	call	__bit_or
	jz	rax, .LBB0_9
	jmp	.LBB0_7
.LBB0_7:
	mov	r0, 2047
	jne	r4, r0, .LBB0_9
	jmp	.LBB0_8
.LBB0_8:
	mov	r1, 29
	mov	r0, r3
	call	__bit_shr
	mov	r1, 3
	mov	r3, rax
	mov	r0, r6
	call	__bit_shl
	mov	r0, r3
	mov	r1, rax
	call	__bit_or
	mov	r1, 4194304
	mov	r0, rax
	call	__bit_or
	mov	t1, rax
	mov	t2, 255
	jmp	.LBB0_18
.LBB0_9:
	mov	t2, 255
	mov	r0, 1150
	mov	t1, 0
	jg	r4, r0, .LBB0_18
	jmp	.LBB0_10
.LBB0_10:
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
	mov	r1, 1048576
	mov	r7, rax
	mov	r0, r6
	call	__bit_or
	mov	r5, rax
	mov	r0, r7
	call	__bit_not
	mov	t3, rax
	sub	r6, r5
	add	rax, 1
	add	t3, 898
	mov	r0, rax
	mov	r1, r6
	call	__bit_and
	mov	r7, t3
	sub	r7, r4
	mov	r0, 52
	mov	t2, 0
	jg	r7, r0, .LBB0_18
	jmp	.LBB0_11
.LBB0_11:
	add	r5, rax
	mov	r6, 0
	je	t3, r4, .LBB0_13
	jmp	.LBB0_12
.LBB0_12:
	mov	r0, 64
	sub	r0, r7
	mov	r1, 31
	call	__bit_and
	mov	r4, rax
	mov	r1, 0
	sub	r1, r4
	mov	r0, r4
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	t2, rax
	mov	r0, 32
	sub	r0, r7
	mov	t3, 32
	call	__bit_shr
	mov	t4, rax
	mov	r0, r3
	mov	r1, r4
	call	__bit_shl
	mov	t5, 0
	sub	t5, t4
	mov	t4, rax
	mov	r0, t5
	call	__bit_not
	mov	r0, t4
	mov	r1, rax
	call	__bit_and
	mov	t6, rax
	mov	r0, r5
	mov	r1, r4
	call	__bit_shl
	sub	t3, r4
	mov	r1, 31
	mov	r4, rax
	mov	r0, t3
	call	__bit_and
	mov	r0, r3
	mov	r1, rax
	call	__bit_shr
	sub	t1, t2
	mov	r0, rax
	mov	r1, t1
	call	__bit_and
	mov	r0, r4
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, t5
	call	__bit_and
	mov	r0, rax
	mov	r1, t6
	call	__bit_or
	mov	r4, rax
	mov	r0, t4
	mov	r1, t5
	call	__bit_and
	mov	r0, rax
	mov	r1, r4
	call	__bit_or
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	t1, rax
.LBB0_13:
	mov	r1, 31
	mov	r0, r7
	call	__bit_and
	mov	r4, rax
	mov	r1, 0
	sub	r1, r4
	mov	r0, r4
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	add	r7, -32
	mov	t2, rax
	mov	r0, r7
	call	__bit_shr
	mov	r7, rax
	mov	r0, r5
	mov	r1, r4
	call	__bit_shr
	mov	t3, 0
	sub	t3, r7
	mov	r7, rax
	mov	r0, t3
	call	__bit_not
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	t4, rax
	mov	r0, r3
	mov	r1, r4
	call	__bit_shr
	mov	r0, 32
	sub	r0, r4
	mov	r1, 31
	mov	r3, rax
	call	__bit_and
	mov	r0, r5
	mov	r1, rax
	call	__bit_shl
	sub	r6, t2
	mov	r0, rax
	mov	r1, r6
	call	__bit_and
	mov	r0, r3
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, t3
	call	__bit_and
	mov	r0, rax
	mov	r1, t4
	call	__bit_or
	mov	r4, rax
	mov	r0, r7
	mov	r1, t3
	call	__bit_and
	mov	r1, 1
	mov	r3, rax
	mov	r0, t1
	call	__bit_and
	mov	r1, 29
	mov	r5, rax
	mov	r0, r4
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	mov	r0, r3
	call	__bit_shl
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	r1, 536870911
	mov	r3, rax
	mov	r0, r4
	call	__bit_and
	mov	r0, rax
	mov	r1, r5
	call	__bit_or
	mov	r1, -2147483648
	mov	r0, rax
	call	__bit_xor
	mov	r1, -1879048191
	jl	rax, r1, .LBB0_15
	jmp	.LBB0_14
.LBB0_14:
	add	r3, 1
	jmp	.LBB0_17
.LBB0_15:
	mov	r1, 268435456
	jne	r0, r1, .LBB0_17
	jmp	.LBB0_16
.LBB0_16:
	mov	r1, 1
	mov	r0, r3
	call	__bit_and
	add	r3, rax
.LBB0_17:
	mov	r1, -2147483648
	mov	r0, r3
	call	__bit_xor
	mov	r0, -2139095041
	sub	r0, rax
	mov	r1, 31
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r1, 8388608
	mov	r4, rax
	mov	r0, r3
	call	__bit_xor
	mov	r1, rax
	mov	r0, r4
	call	__bit_not
	sub	r1, r3
	add	rax, 1
	mov	r0, rax
	call	__bit_and
	mov	t1, rax
	mov	r1, 1
	add	t1, r3
	mov	r0, r4
	call	__bit_and
	mov	t2, rax
.LBB0_18:
	mov	r1, -2147483648
	mov	r0, r2
	call	__bit_and
	mov	r1, 23
	mov	r2, rax
	mov	r0, t2
	call	__bit_shl
	mov	r0, rax
	mov	r1, r2
	call	__bit_or
	mov	r0, rax
	mov	r1, t1
	call	__bit_or
	ret
// -- End function
