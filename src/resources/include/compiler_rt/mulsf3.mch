#include "_ll_std"

// -- Begin function __mulsf3
__mulsf3:                               // @__mulsf3
// %bb.0:
sub	rsp, 36
	mov	[rsp+32], x0
	mov	[rsp+28], x1
	mov	[rsp+24], x2
	mov	[rsp+20], x3
	mov	[rsp+16], x4
	mov	[rsp+12], x5
	mov	[rsp+8], x6
	mov	[rsp+4], x7
	mov	[rsp], x8
	mov	x6, r1
	mov	r1, 23
	mov	x7, r0
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 23
	mov	x1, rax
	mov	r0, x6
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	x2, rax
	mov	r0, x6
	mov	r1, x7
	call	__bit_xor
	mov	r1, -2147483648
	mov	r0, rax
	call	__bit_and
	mov	r1, 8388607
	mov	x0, rax
	mov	r0, x7
	call	__bit_and
	mov	r1, 8388607
	mov	x3, rax
	mov	r0, x6
	call	__bit_and
	mov	r0, x1
add	r0, 2147483393
	mov	r1, 2147483394
	mov	x4, rax
	jl	r0, r1, .LBB0_2
	jmp	.LBB0_1
.LBB0_1:
	mov	r0, x2
add	r0, -255
add	r0, -2147483648
	mov	r1, 2147483393
	mov	x5, 0
	jg	r0, r1, .LBB0_20
	jmp	.LBB0_2
.LBB0_2:
	mov	r1, 2147483647
	mov	r0, x7
	call	__bit_and
	mov	r1, 2147483647
	mov	x8, rax
	mov	r0, x6
	call	__bit_and
	mov	r0, 2139095041
	mov	r2, rax
	jl	x8, r0, .LBB0_4
	jmp	.LBB0_3
.LBB0_3:
	mov	r1, 4194304
	mov	r0, x7
	call	__bit_or
	jmp	.LBB0_37
.LBB0_4:
	jl	r2, r0, .LBB0_6
	jmp	.LBB0_5
.LBB0_5:
	mov	r1, 4194304
	mov	r0, x6
	call	__bit_or
	jmp	.LBB0_37
.LBB0_6:
	mov	r0, 2139095040
	jne	x8, r0, .LBB0_9
	jmp	.LBB0_7
.LBB0_7:
	mov	rax, 2143289344
	jz	r2, .LBB0_37
	jmp	.LBB0_8
.LBB0_8:
	mov	r1, 2139095040
	mov	r0, x0
	call	__bit_or
	jmp	.LBB0_37
.LBB0_9:
	jne	r2, r0, .LBB0_12
	jmp	.LBB0_10
.LBB0_10:
	mov	rax, 2143289344
	jz	x8, .LBB0_37
	jmp	.LBB0_11
.LBB0_11:
	mov	r1, 2139095040
	mov	r0, x0
	call	__bit_or
	jmp	.LBB0_37
.LBB0_12:
	jnz	x8, .LBB0_14
	jmp	.LBB0_13
.LBB0_13:
	mov	rax, x0
	jmp	.LBB0_37
.LBB0_14:
	jnz	r2, .LBB0_16
	jmp	.LBB0_15
.LBB0_15:
	mov	rax, x0
	jmp	.LBB0_37
.LBB0_16:
	mov	x7, 8388607
	mov	x5, 0
	jg	x8, x7, .LBB0_18
	jmp	.LBB0_17
.LBB0_17:
	mov	r1, 1
	mov	r0, x3
	mov	x8, r2
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
	mov	x6, 24
	mov	r0, rax
	call	__bit_shr
	mov	x5, rax
	sub	x6, x5
	mov	r0, x3
	mov	r1, x6
	call	__bit_shl
	mov	x3, rax
	mov	r2, x8
add	x5, -23
.LBB0_18:
	jg	r2, x7, .LBB0_20
	jmp	.LBB0_19
.LBB0_19:
	mov	r1, 1
	mov	r0, x4
	call	__bit_shr
	mov	r0, x4
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
	mov	x6, 24
	mov	r0, rax
	call	__bit_shr
	mov	x7, rax
	sub	x6, x7
	mov	r0, x4
	mov	r1, x6
	call	__bit_shl
	mov	x4, rax
	add	x5, x7
add	x5, -23
.LBB0_20:
	mov	r1, 8388608
	mov	r0, x3
	call	__bit_or
	mov	r1, 8
	mov	x3, rax
	mov	r0, x4
	call	__bit_shl
	mov	r1, -2147483648
	mov	r0, rax
	call	__bit_or
	mov	r1, 0
	mov	r3, 0
	mov	r0, rax
	mov	r2, x3
	call	__muldi3
	mov	x3, rax
	mov	x4, t0
	add	x1, x2
	add	x1, x5
	mov	r1, 8388608
add	x1, -127
	mov	r0, x4
	call	__bit_and
	jz	rax, .LBB0_22
	jmp	.LBB0_21
.LBB0_21:
add	x1, 1
	jmp	.LBB0_23
.LBB0_22:
	mov	r1, 1
	mov	r0, x4
	call	__bit_shl
	mov	r1, 31
	mov	x2, rax
	mov	r0, x3
	call	__bit_shr
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	x4, rax
	mov	r0, x3
	call	__bit_shl
	mov	x3, rax
.LBB0_23:
	mov	r0, 255
	jl	x1, r0, .LBB0_25
	jmp	.LBB0_24
.LBB0_24:
	mov	r1, 2139095040
	mov	r0, x0
	call	__bit_or
	jmp	.LBB0_37
.LBB0_25:
	mov	r0, 0
	jg	x1, r0, .LBB0_31
	jmp	.LBB0_26
.LBB0_26:
	mov	x2, 1
	sub	x2, x1
	mov	r0, 31
	mov	x5, 1
	jg	x2, r0, .LBB0_30
	jmp	.LBB0_27
.LBB0_27:
add	x1, 31
	mov	r0, x3
	mov	r1, x1
	call	__bit_shl
	mov	r0, 0
	jne	rax, r0, .LBB0_29
// %bb.28:
	mov	x5, 0
.LBB0_29:
	mov	r0, x4
	mov	r1, x1
	call	__bit_shl
	mov	x1, rax
	mov	r0, x3
	mov	r1, x2
	call	__bit_shr
	mov	r1, 1
	add	x1, rax
	mov	r0, x5
	call	__bit_and
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	x3, rax
	mov	r0, x4
	mov	r1, x2
	call	__bit_shr
	mov	x1, rax
	jmp	.LBB0_32
.LBB0_30:
	mov	rax, x0
	jmp	.LBB0_37
.LBB0_31:
	mov	r1, 8388607
	mov	r0, x4
	call	__bit_and
	mov	r1, 23
	mov	x2, rax
	mov	r0, x1
	call	__bit_shl
	mov	r0, rax
	mov	r1, x2
	call	__bit_or
	mov	x1, rax
.LBB0_32:
	mov	r0, x1
	mov	r1, x0
	call	__bit_or
	mov	r0, x3
add	r0, -2147483648
	mov	r1, 1
	jl	r0, r1, .LBB0_34
	jmp	.LBB0_33
.LBB0_33:
add	rax, 1
	jmp	.LBB0_36
.LBB0_34:
	mov	r0, -2147483648
	jne	x3, r0, .LBB0_36
	jmp	.LBB0_35
.LBB0_35:
	mov	r0, x1
	mov	x0, rax
	call	__bit_and
	mov	r0, rax
	mov	rax, x0
	add	rax, r0
.LBB0_36:
.LBB0_37:
	mov	x8, [rsp]
	mov	x7, [rsp+4]
	mov	x6, [rsp+8]
	mov	x5, [rsp+12]
	mov	x4, [rsp+16]
	mov	x3, [rsp+20]
	mov	x2, [rsp+24]
	mov	x1, [rsp+28]
	mov	x0, [rsp+32]
add	rsp, 36
	ret
// -- End function
