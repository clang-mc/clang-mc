#include "_ll_std"

// -- Begin function __addsf3
__addsf3:                               // @__addsf3
// %bb.0:
	mov	r4, r1
	mov	r1, 2147483647
	mov	r3, r0
	call	__bit_and
	mov	r2, rax
	mov	r0, r4
	call	__bit_and
	mov	r0, r2
	add	r0, -2139095040
	mov	r1, -2147483648
	mov	r5, rax
	call	__bit_xor
	mov	r0, 8388609
	jl	rax, r0, .LBB0_2
	jmp	.LBB0_1
.LBB0_1:
	mov	r0, r5
	add	r0, -2139095040
	call	__bit_xor
	mov	r0, 8388608
	jg	rax, r0, .LBB0_13
	jmp	.LBB0_2
.LBB0_2:
	mov	r0, 2139095041
	jl	r2, r0, .LBB0_4
	jmp	.LBB0_3
.LBB0_3:
	mov	r1, 4194304
	mov	r0, r3
	call	__bit_or
	jmp	.LBB0_40
.LBB0_4:
	jl	r5, r0, .LBB0_6
	jmp	.LBB0_5
.LBB0_5:
	mov	r1, 4194304
	mov	r0, r4
	call	__bit_or
	jmp	.LBB0_40
.LBB0_6:
	mov	r0, 2139095040
	jne	r2, r0, .LBB0_8
	jmp	.LBB0_7
.LBB0_7:
	mov	r0, r4
	mov	r1, r3
	call	__bit_xor
	mov	r1, -2147483648
	mov	r0, rax
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
	add	rax, 1
	mov	r1, 2143289344
	sub	r1, r3
	mov	r0, rax
	call	__bit_and
	add	rax, r3
	jmp	.LBB0_40
.LBB0_8:
	mov	rax, r4
	je	r5, r0, .LBB0_40
	jmp	.LBB0_9
.LBB0_9:
	jnz	r2, .LBB0_12
	jmp	.LBB0_10
.LBB0_10:
	mov	rax, r4
	jnz	r5, .LBB0_40
	jmp	.LBB0_11
.LBB0_11:
	mov	r0, r4
	mov	r1, r3
	call	__bit_and
	jmp	.LBB0_40
.LBB0_12:
	mov	rax, r3
	jz	r5, .LBB0_40
	jmp	.LBB0_13
.LBB0_13:
	mov	r0, r5
	call	__bit_xor
	mov	r5, rax
	mov	r0, r2
	call	__bit_xor
	sub	rax, r5
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
	mov	r1, r3
	sub	r1, r4
	call	__bit_and
	mov	r6, rax
	mov	r1, r4
	sub	r1, r3
	add	r6, r4
	call	__bit_and
	mov	r5, rax
	add	r5, r3
	mov	r1, 23
	mov	r0, r5
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 23
	mov	r2, rax
	mov	r0, r6
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 8388607
	mov	t1, rax
	mov	r0, r5
	call	__bit_and
	mov	r7, rax
	mov	r0, r6
	call	__bit_and
	mov	r6, rax
	jnz	r2, .LBB0_15
	jmp	.LBB0_14
.LBB0_14:
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
	mov	r2, rax
	mov	r0, r2
	call	__bit_shr
	mov	r1, 1431655765
	mov	r0, rax
	call	__bit_and
	sub	r2, rax
	mov	r1, 2
	mov	r0, r2
	call	__bit_shr
	mov	r1, 858993459
	mov	r0, rax
	call	__bit_and
	mov	t2, rax
	mov	r0, r2
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
	mov	t2, 24
	mov	r0, rax
	call	__bit_shr
	mov	r2, rax
	sub	t2, r2
	mov	r0, r7
	mov	r1, t2
	call	__bit_shl
	mov	r7, rax
	add	r2, -23
.LBB0_15:
	jnz	t1, .LBB0_17
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
	mov	t2, 24
	mov	r0, rax
	call	__bit_shr
	mov	t1, rax
	sub	t2, t1
	mov	r0, r6
	mov	r1, t2
	call	__bit_shl
	mov	r6, rax
	add	t1, -23
.LBB0_17:
	mov	r1, -2147483648
	mov	r0, r5
	call	__bit_and
	mov	r5, rax
	mov	r0, r4
	mov	r1, r3
	call	__bit_xor
	mov	r1, 3
	mov	r4, rax
	mov	r0, r7
	call	__bit_shl
	mov	r1, 67108864
	mov	r0, rax
	call	__bit_or
	mov	r1, 3
	mov	r3, rax
	mov	r0, r6
	call	__bit_shl
	mov	r1, 67108864
	mov	r0, rax
	call	__bit_or
	mov	r7, rax
	mov	r6, r7
	je	r2, t1, .LBB0_20
	jmp	.LBB0_18
.LBB0_18:
	mov	t2, r2
	sub	t2, t1
	mov	r1, -2147483648
	mov	r6, 1
	mov	r0, t2
	call	__bit_xor
	mov	r0, -2147483617
	jg	rax, r0, .LBB0_20
	jmp	.LBB0_19
.LBB0_19:
	mov	r1, 32
	sub	r1, t2
	mov	r0, r7
	call	__bit_shl
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r6, rax
	mov	r0, r7
	mov	r1, t2
	call	__bit_shr
	mov	r1, 1
	mov	r7, rax
	mov	r0, r6
	call	__bit_and
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	r6, rax
.LBB0_20:
	mov	r0, -1
	jg	r4, r0, .LBB0_24
	jmp	.LBB0_21
.LBB0_21:
	mov	rax, 0
	je	r3, r6, .LBB0_40
	jmp	.LBB0_22
.LBB0_22:
	sub	r3, r6
	mov	r1, -2147483648
	mov	r0, r3
	call	__bit_xor
	mov	r0, -2080374785
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
	mov	r6, rax
	mov	r0, r4
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
	mov	r1, 27
	sub	r1, rax
	mov	r0, r3
	call	__bit_shl
	mov	r3, rax
	sub	r2, r1
	jmp	.LBB0_28
.LBB0_24:
	add	r3, r6
	mov	r1, 134217728
	mov	r0, r3
	call	__bit_and
	jz	rax, .LBB0_26
	jmp	.LBB0_25
.LBB0_25:
	mov	r1, 1
	mov	r0, r3
	call	__bit_shr
	mov	r3, rax
	mov	r0, r6
	call	__bit_and
	mov	r0, r3
	mov	r1, rax
	call	__bit_or
	mov	r3, rax
	add	r2, 1
.LBB0_26:
	mov	r0, 255
	jl	r2, r0, .LBB0_28
	jmp	.LBB0_27
.LBB0_27:
	mov	r1, 2139095040
	mov	r0, r5
	call	__bit_or
	jmp	.LBB0_40
.LBB0_28:
	mov	r0, 0
	jg	r2, r0, .LBB0_30
	jmp	.LBB0_29
.LBB0_29:
	mov	r4, 1
	sub	r4, r2
	add	r2, 31
	mov	r0, r3
	mov	r1, r2
	call	__bit_shl
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r2, rax
	mov	r0, r3
	mov	r1, r4
	call	__bit_shr
	mov	r1, 1
	mov	r3, rax
	mov	r0, r2
	call	__bit_and
	mov	r0, r3
	mov	r1, rax
	call	__bit_or
	mov	r3, rax
	mov	r2, 0
.LBB0_30:
	mov	r1, 7
	mov	r0, r3
	call	__bit_and
	mov	r1, 3
	mov	r4, rax
	call	__bit_shr
	mov	r1, 8388607
	mov	r3, rax
	mov	r0, r3
	call	__bit_and
	mov	r1, 23
	mov	r6, rax
	mov	r0, r2
	call	__bit_shl
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, r5
	call	__bit_or
	mov	r2, rax
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
	mov	rax, r2
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
	mov	r0, 4
	add	rax, r2
	jne	r4, r0, .LBB0_37
	jmp	.LBB0_34
.LBB0_34:
	mov	r0, r3
	call	__bit_and
	add	r2, rax
	mov	rax, r2
	jmp	.LBB0_38
.LBB0_35:
	mov	r0, r5
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r3, rax
	mov	r0, r4
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r0, r3
	mov	r1, rax
	call	__bit_and
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	add	r2, rax
	mov	rax, r2
	jmp	.LBB0_37
.LBB0_36:
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
	mov	r3, rax
	mov	r0, r4
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r0, r3
	mov	r1, rax
	call	__bit_and
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	add	r2, rax
	mov	rax, r2
.LBB0_37:
	jz	r4, .LBB0_39
	jmp	.LBB0_38
.LBB0_38:
	mov	r0, rax
	call	__fe_raise_inexact
	mov	rax, r0
.LBB0_39:
.LBB0_40:
	ret
// -- End function
