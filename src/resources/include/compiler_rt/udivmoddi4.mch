#include "_ll_std"

// -- Begin function __udivmoddi4
__udivmoddi4:                           // @__udivmoddi4
// %bb.0:
sub	rsp, 44
	mov	[rsp+40], x0
	mov	[rsp+36], x1
	mov	[rsp+32], x2
	mov	[rsp+28], x3
	mov	[rsp+24], x4
	mov	[rsp+20], x5
	mov	[rsp+16], x6
	mov	[rsp+12], x7
	mov	[rsp+8], x8
	mov	[rsp+4], x9
	mov	[rsp], x10
	mov	x2, r4
	mov	x4, r3
	mov	x3, r2
	mov	x0, r1
	mov	x1, r0
	jnz	x0, .LBB0_7
	jmp	.LBB0_1
.LBB0_1:
	jnz	x4, .LBB0_5
	jmp	.LBB0_2
.LBB0_2:
	mov	r0, x1
	mov	r1, x3
	call	__udivsi3
	jz	x2, .LBB0_4
	jmp	.LBB0_3
.LBB0_3:
	mul	x3, rax
	sub	x1, x3
	mov	[x2], x1
add	x2, 4
	mov	[x2], 0
.LBB0_4:
	mov	x5, 0
	jmp	.LBB0_43
.LBB0_5:
	mov	rax, 0
	mov	x5, 0
	jz	x2, .LBB0_43
	jmp	.LBB0_6
.LBB0_6:
	mov	[x2], x1
add	x2, 4
	mov	[x2], x0
	jmp	.LBB0_43
.LBB0_7:
	jnz	x3, .LBB0_21
	jmp	.LBB0_8
.LBB0_8:
                                        // implicit-def: $rax
                                        // implicit-def: $x5
	jz	x4, .LBB0_43
	jmp	.LBB0_9
.LBB0_9:
	jnz	x1, .LBB0_13
	jmp	.LBB0_10
.LBB0_10:
	mov	r0, x0
	mov	r1, x4
	call	__udivsi3
	jz	x2, .LBB0_12
	jmp	.LBB0_11
.LBB0_11:
	mul	x4, rax
	sub	x0, x4
	mov	r0, x2
add	r0, 4
	mov	[r0], x0
	mov	[x2], 0
.LBB0_12:
	mov	x5, 0
	jmp	.LBB0_43
.LBB0_13:
	mov	x5, x4
add	x5, -1
	mov	r0, x4
	mov	r1, x5
	call	__bit_and
	jnz	rax, .LBB0_17
	jmp	.LBB0_14
.LBB0_14:
	jz	x2, .LBB0_16
	jmp	.LBB0_15
.LBB0_15:
	mov	r0, x5
	mov	r1, x0
	call	__bit_and
	mov	r0, x2
add	r0, 4
	mov	[r0], rax
	mov	[x2], x1
.LBB0_16:
	mov	r0, x4
	call	__bit_not
add	rax, 1
	mov	r0, x4
	mov	r1, rax
	call	__bit_and
	mov	r1, -858993460
	mov	x1, rax
	mov	r0, x1
	call	__bit_and
	mov	x2, rax
	mov	r0, x2
	call	__bit_not
add	rax, 1
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_shl
	mov	r1, -1431655766
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	x3, rax
	mov	r0, x3
	call	__bit_not
add	rax, 1
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, -252645136
	add	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	x3, rax
	mov	r0, x3
	call	__bit_not
add	rax, 1
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 2
	mov	r0, rax
	call	__bit_shl
	mov	r1, -16711936
	add	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	x3, rax
	mov	r0, x3
	call	__bit_not
add	rax, 1
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 3
	mov	r0, rax
	call	__bit_shl
	mov	r1, -65536
	add	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	x1, rax
	mov	r0, x1
	call	__bit_not
add	rax, 1
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 4
	mov	r0, rax
	call	__bit_shl
	add	x2, rax
	mov	r0, x0
	mov	r1, x2
	call	__bit_shr
	mov	x5, 0
	jmp	.LBB0_43
.LBB0_17:
	mov	r1, 1
	mov	r0, x4
	call	__bit_shr
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	x5, rax
	mov	r0, x5
	call	__bit_shr
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	r1, 4
	mov	x5, rax
	mov	r0, x5
	call	__bit_shr
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	r1, 8
	mov	x5, rax
	mov	r0, x5
	call	__bit_shr
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	r1, 16
	mov	x5, rax
	mov	r0, x5
	call	__bit_shr
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	x5, rax
	mov	r0, x5
	call	__bit_shr
	mov	r1, 1431655765
	mov	r0, rax
	call	__bit_and
	sub	x5, rax
	mov	r1, 2
	mov	r0, x5
	call	__bit_shr
	mov	r1, 858993459
	mov	r0, rax
	call	__bit_and
	mov	r1, 858993459
	mov	x6, rax
	mov	r0, x5
	call	__bit_and
	add	x6, rax
	mov	r1, 4
	mov	r0, x6
	call	__bit_shr
	add	x6, rax
	mov	r1, 252645135
	mov	r0, x6
	call	__bit_and
	mul	rax, 16843009
	mov	r1, 24
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	x5, rax
	mov	r0, x0
	call	__bit_shr
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	x6, rax
	mov	r0, x6
	call	__bit_shr
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	r1, 4
	mov	x6, rax
	mov	r0, x6
	call	__bit_shr
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	r1, 8
	mov	x6, rax
	mov	r0, x6
	call	__bit_shr
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	r1, 16
	mov	x6, rax
	mov	r0, x6
	call	__bit_shr
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	x6, rax
	mov	r0, x6
	call	__bit_shr
	mov	r1, 1431655765
	mov	r0, rax
	call	__bit_and
	sub	x6, rax
	mov	r1, 2
	mov	r0, x6
	call	__bit_shr
	mov	r1, 858993459
	mov	r0, rax
	call	__bit_and
	mov	r1, 858993459
	mov	x7, rax
	mov	r0, x6
	call	__bit_and
	add	x7, rax
	mov	r1, 4
	mov	r0, x7
	call	__bit_shr
	add	x7, rax
	mov	r1, 252645135
	mov	r0, x7
	call	__bit_and
	mul	rax, 16843009
	mov	r1, 24
	mov	r0, rax
	call	__bit_shr
	mov	x6, rax
	sub	x6, x5
	mov	r0, x6
add	r0, -2147483648
	mov	r1, -2147483617
	jl	r0, r1, .LBB0_20
	jmp	.LBB0_18
.LBB0_18:
	mov	rax, 0
	mov	x5, 0
	jz	x2, .LBB0_43
	jmp	.LBB0_19
.LBB0_19:
	mov	[x2], x1
add	x2, 4
	mov	[x2], x0
	jmp	.LBB0_43
.LBB0_20:
	mov	x5, 31
	sub	x5, x6
add	x6, 1
	mov	r0, x1
	mov	r1, x5
	call	__bit_shl
	mov	x7, rax
	mov	r0, x0
	mov	r1, x6
	call	__bit_shr
	mov	x8, rax
	mov	r0, x0
	mov	r1, x5
	call	__bit_shl
	mov	x0, rax
	mov	r0, x1
	mov	r1, x6
	call	__bit_shr
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	t0, x8
	mov	x0, rax
	mov	x5, 0
	mov	x1, x7
	jmp	.LBB0_36
.LBB0_21:
	jnz	x4, .LBB0_31
	jmp	.LBB0_22
.LBB0_22:
	mov	x5, x3
add	x5, -1
	mov	r0, x3
	mov	r1, x5
	call	__bit_and
	jnz	rax, .LBB0_27
	jmp	.LBB0_23
.LBB0_23:
	jz	x2, .LBB0_25
	jmp	.LBB0_24
.LBB0_24:
	mov	r0, x5
	mov	r1, x1
	call	__bit_and
	mov	[x2], rax
add	x2, 4
	mov	[x2], 0
.LBB0_25:
	mov	r0, 1
	mov	rax, x1
	mov	x5, x0
	je	x3, r0, .LBB0_43
	jmp	.LBB0_26
.LBB0_26:
	mov	r0, x3
	call	__bit_not
add	rax, 1
	mov	r0, x3
	mov	r1, rax
	call	__bit_and
	mov	r1, -858993460
	mov	x3, rax
	mov	r0, x3
	call	__bit_and
	mov	x2, rax
	mov	r0, x2
	call	__bit_not
add	rax, 1
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_shl
	mov	r1, -1431655766
	mov	x2, rax
	mov	r0, x3
	call	__bit_and
	mov	x4, rax
	mov	r0, x4
	call	__bit_not
add	rax, 1
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, -252645136
	add	x2, rax
	mov	r0, x3
	call	__bit_and
	mov	x4, rax
	mov	r0, x4
	call	__bit_not
add	rax, 1
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 2
	mov	r0, rax
	call	__bit_shl
	mov	r1, -16711936
	add	x2, rax
	mov	r0, x3
	call	__bit_and
	mov	x4, rax
	mov	r0, x4
	call	__bit_not
add	rax, 1
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 3
	mov	r0, rax
	call	__bit_shl
	mov	r1, -65536
	add	x2, rax
	mov	r0, x3
	call	__bit_and
	mov	x3, rax
	mov	r0, x3
	call	__bit_not
add	rax, 1
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 4
	mov	r0, rax
	call	__bit_shl
	add	x2, rax
	mov	r0, x0
	mov	r1, x2
	call	__bit_shr
	mov	x5, rax
	mov	r0, x2
	call	__bit_not
	mov	r1, 31
	mov	r0, rax
	call	__bit_and
	mov	r1, 1
	mov	x3, rax
	mov	r0, x0
	call	__bit_shl
	mov	r0, rax
	mov	r1, x3
	call	__bit_shl
	mov	r1, 31
	mov	x0, rax
	mov	r0, x2
	call	__bit_and
	mov	r0, x1
	mov	r1, rax
	call	__bit_shr
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	jmp	.LBB0_43
.LBB0_27:
	mov	r1, 1
	mov	r0, x3
	call	__bit_shr
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	x5, rax
	mov	r0, x5
	call	__bit_shr
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	r1, 4
	mov	x5, rax
	mov	r0, x5
	call	__bit_shr
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	r1, 8
	mov	x5, rax
	mov	r0, x5
	call	__bit_shr
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	r1, 16
	mov	x5, rax
	mov	r0, x5
	call	__bit_shr
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	x5, rax
	mov	r0, x5
	call	__bit_shr
	mov	r1, 1431655765
	mov	r0, rax
	call	__bit_and
	sub	x5, rax
	mov	r1, 2
	mov	r0, x5
	call	__bit_shr
	mov	r1, 858993459
	mov	r0, rax
	call	__bit_and
	mov	r1, 858993459
	mov	x6, rax
	mov	r0, x5
	call	__bit_and
	add	x6, rax
	mov	r1, 4
	mov	r0, x6
	call	__bit_shr
	add	x6, rax
	mov	r1, 252645135
	mov	r0, x6
	call	__bit_and
	mul	rax, 16843009
	mov	r1, 24
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	x5, rax
	mov	r0, x0
	call	__bit_shr
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	x6, rax
	mov	r0, x6
	call	__bit_shr
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	r1, 4
	mov	x6, rax
	mov	r0, x6
	call	__bit_shr
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	r1, 8
	mov	x6, rax
	mov	r0, x6
	call	__bit_shr
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	r1, 16
	mov	x6, rax
	mov	r0, x6
	call	__bit_shr
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	x6, rax
	mov	r0, x6
	call	__bit_shr
	mov	r1, 1431655765
	mov	r0, rax
	call	__bit_and
	sub	x6, rax
	mov	r1, 2
	mov	r0, x6
	call	__bit_shr
	mov	r1, 858993459
	mov	r0, rax
	call	__bit_and
	mov	r1, 858993459
	mov	x7, rax
	mov	r0, x6
	call	__bit_and
	add	x7, rax
	mov	r1, 4
	mov	r0, x7
	call	__bit_shr
	add	x7, rax
	mov	r1, 252645135
	mov	r0, x7
	call	__bit_and
	mul	rax, 16843009
	mov	r1, 24
	mov	r0, rax
	call	__bit_shr
	sub	rax, x5
add	rax, 33
	mov	x5, 0
	mov	x6, 32
	mov	t0, 0
	je	rax, x6, .LBB0_36
	jmp	.LBB0_28
.LBB0_28:
	mov	r0, 31
	jg	rax, r0, .LBB0_30
	jmp	.LBB0_29
.LBB0_29:
	sub	x6, rax
	mov	r0, x1
	mov	r1, x6
	mov	x7, rax
	call	__bit_shl
	mov	x8, rax
	mov	r0, x0
	mov	r1, x7
	call	__bit_shr
	mov	x9, rax
	mov	r0, x0
	mov	r1, x6
	call	__bit_shl
	mov	x0, rax
	mov	r0, x1
	mov	r1, x7
	call	__bit_shr
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	t0, x9
	mov	x0, rax
	mov	x6, x7
	mov	x1, x8
	jmp	.LBB0_36
.LBB0_30:
	mov	x6, 64
	sub	x6, rax
	mov	r0, x1
	mov	r1, x6
	mov	x8, rax
	call	__bit_shl
	mov	x5, rax
	mov	r0, x0
	mov	r1, x6
	call	__bit_shl
	mov	x6, x8
add	x6, -32
	mov	x7, rax
	mov	r0, x1
	mov	r1, x6
	call	__bit_shr
	mov	r0, x7
	mov	r1, rax
	call	__bit_or
	mov	x1, rax
	mov	r0, x0
	mov	r1, x6
	call	__bit_shr
	mov	x0, rax
	mov	x6, x8
	mov	t0, 0
	jmp	.LBB0_36
.LBB0_31:
	mov	r1, 1
	mov	r0, x4
	call	__bit_shr
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	x5, rax
	mov	r0, x5
	call	__bit_shr
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	r1, 4
	mov	x5, rax
	mov	r0, x5
	call	__bit_shr
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	r1, 8
	mov	x5, rax
	mov	r0, x5
	call	__bit_shr
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	r1, 16
	mov	x5, rax
	mov	r0, x5
	call	__bit_shr
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	x5, rax
	mov	r0, x5
	call	__bit_shr
	mov	r1, 1431655765
	mov	r0, rax
	call	__bit_and
	sub	x5, rax
	mov	r1, 2
	mov	r0, x5
	call	__bit_shr
	mov	r1, 858993459
	mov	r0, rax
	call	__bit_and
	mov	r1, 858993459
	mov	x6, rax
	mov	r0, x5
	call	__bit_and
	add	x6, rax
	mov	r1, 4
	mov	r0, x6
	call	__bit_shr
	add	x6, rax
	mov	r1, 252645135
	mov	r0, x6
	call	__bit_and
	mul	rax, 16843009
	mov	r1, 24
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	x5, rax
	mov	r0, x0
	call	__bit_shr
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	x6, rax
	mov	r0, x6
	call	__bit_shr
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	r1, 4
	mov	x6, rax
	mov	r0, x6
	call	__bit_shr
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	r1, 8
	mov	x6, rax
	mov	r0, x6
	call	__bit_shr
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	r1, 16
	mov	x6, rax
	mov	r0, x6
	call	__bit_shr
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	x6, rax
	mov	r0, x6
	call	__bit_shr
	mov	r1, 1431655765
	mov	r0, rax
	call	__bit_and
	sub	x6, rax
	mov	r1, 2
	mov	r0, x6
	call	__bit_shr
	mov	r1, 858993459
	mov	r0, rax
	call	__bit_and
	mov	r1, 858993459
	mov	x7, rax
	mov	r0, x6
	call	__bit_and
	add	x7, rax
	mov	r1, 4
	mov	r0, x7
	call	__bit_shr
	add	x7, rax
	mov	r1, 252645135
	mov	r0, x7
	call	__bit_and
	mul	rax, 16843009
	mov	r1, 24
	mov	r0, rax
	call	__bit_shr
	sub	rax, x5
	mov	r0, rax
add	r0, -2147483648
	mov	r1, -2147483616
	jl	r0, r1, .LBB0_34
	jmp	.LBB0_32
.LBB0_32:
	mov	rax, 0
	mov	x5, 0
	jz	x2, .LBB0_43
	jmp	.LBB0_33
.LBB0_33:
	mov	[x2], x1
add	x2, 4
	mov	[x2], x0
	jmp	.LBB0_43
.LBB0_34:
	mov	x7, rax
add	x7, 1
	mov	x5, 0
	mov	x6, 32
	mov	t0, 0
	je	x7, x6, .LBB0_36
	jmp	.LBB0_35
.LBB0_35:
	mov	x6, 31
	sub	x6, rax
	mov	r0, x1
	mov	r1, x6
	call	__bit_shl
	mov	x8, rax
	mov	r0, x0
	mov	r1, x7
	call	__bit_shr
	mov	x9, rax
	mov	r0, x0
	mov	r1, x6
	call	__bit_shl
	mov	x0, rax
	mov	r0, x1
	mov	r1, x7
	call	__bit_shr
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	t0, x9
	mov	x0, rax
	mov	x6, x7
	mov	x1, x8
.LBB0_36:
	mov	x10, 0
	mov	x7, 0
.LBB0_37:                               // =>This Inner Loop Header: Depth=1
	mov	r1, 1
	mov	r0, t0
	call	__bit_shl
	mov	r1, 31
	mov	x8, rax
	mov	r0, x0
	call	__bit_shr
	mov	r0, x8
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	x8, rax
	mov	r0, x0
	call	__bit_shl
	mov	r1, 31
	mov	x0, rax
	mov	r0, x1
	call	__bit_shr
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	x0, rax
	mov	r0, x1
	call	__bit_shl
	mov	r1, 31
	mov	x1, rax
	mov	r0, x5
	call	__bit_shr
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	x1, rax
	mov	r0, x5
	call	__bit_shl
	mov	r0, x7
	mov	r1, rax
	call	__bit_or
	mov	x5, rax
	mov	r0, x0
	call	__bit_not
	mov	x7, rax
	mov	r0, x8
	call	__bit_not
	mov	r0, x3
	mov	r1, x4
	mov	r2, x7
	mov	r3, rax
	call	__adddi3
	mov	r1, 31
	mov	x9, t0
	mov	r0, x9
	call	__bit_shr
	mov	x7, rax
	mov	r2, x3
	mov	r3, x4
	jl	x9, x10, .LBB0_39
	jmp	.LBB0_38
.LBB0_38:                               //   in Loop: Header=BB0_37 Depth=1
	mov	r2, 0
	mov	r3, 0
.LBB0_39:                               //   in Loop: Header=BB0_37 Depth=1
	mov	r0, x0
	mov	r1, x8
	call	__subdi3
add	x6, -1
	mov	x0, rax
	jnz	x6, .LBB0_37
	jmp	.LBB0_40
.LBB0_40:
	mov	x4, t0
	mov	r1, 1
	mov	r0, x1
	call	__bit_shl
	mov	r1, 1
	mov	x3, rax
	mov	r0, x5
	call	__bit_shl
	mov	r1, 31
	mov	x1, rax
	mov	r0, x5
	call	__bit_shr
	mov	r0, rax
	mov	r1, x3
	call	__bit_or
	mov	x5, rax
	jz	x2, .LBB0_42
	jmp	.LBB0_41
.LBB0_41:
	mov	[x2], x0
add	x2, 4
	mov	[x2], x4
.LBB0_42:
	mov	r1, -2
	mov	r0, x1
	call	__bit_and
	mov	r0, x7
	mov	r1, rax
	call	__bit_or
.LBB0_43:
	mov	t0, x5
	mov	x10, [rsp]
	mov	x9, [rsp+4]
	mov	x8, [rsp+8]
	mov	x7, [rsp+12]
	mov	x6, [rsp+16]
	mov	x5, [rsp+20]
	mov	x4, [rsp+24]
	mov	x3, [rsp+28]
	mov	x2, [rsp+32]
	mov	x1, [rsp+36]
	mov	x0, [rsp+40]
add	rsp, 44
	ret
// -- End function
