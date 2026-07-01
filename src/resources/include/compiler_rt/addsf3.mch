#include "_ll_std"

// -- Begin function __addsf3
__addsf3:                               // @__addsf3
// %bb.0:
sub	rsp, 32
	mov	[rsp+28], x0
	mov	[rsp+24], x1
	mov	[rsp+20], x2
	mov	[rsp+16], x3
	mov	[rsp+12], x4
	mov	[rsp+8], x5
	mov	[rsp+4], x6
	mov	[rsp], x7
	mov	x4, r1
	mov	r1, 2147483647
	mov	x1, r0
	mov	x2, x4
	call	__bit_and
	mov	r1, 2147483647
	mov	x0, rax
	mov	r0, x4
	call	__bit_and
	mov	r0, x0
add	r0, 8388608
	mov	r1, 8388609
	jl	r0, r1, .LBB0_2
	jmp	.LBB0_1
.LBB0_1:
	mov	r0, rax
add	r0, -2139095040
add	r0, -2147483648
	mov	r1, 8388608
	jg	r0, r1, .LBB0_15
	jmp	.LBB0_2
.LBB0_2:
	mov	r0, 2139095041
	jl	x0, r0, .LBB0_4
	jmp	.LBB0_3
.LBB0_3:
	mov	r1, 4194304
	mov	r0, x1
	call	__bit_or
	mov	x4, rax
	jmp	.LBB0_60
.LBB0_4:
	jl	rax, r0, .LBB0_6
	jmp	.LBB0_5
.LBB0_5:
	mov	r1, 4194304
	mov	r0, x2
	call	__bit_or
	mov	x4, rax
	jmp	.LBB0_60
.LBB0_6:
	mov	r0, 2139095040
	jne	x0, r0, .LBB0_10
	jmp	.LBB0_7
.LBB0_7:
	mov	r0, x2
	mov	r1, x1
	call	__bit_xor
	mov	r0, -2147483648
	mov	r2, 1
	je	rax, r0, .LBB0_9
// %bb.8:
	mov	r2, 0
.LBB0_9:
	mov	r1, 2143289344
	sub	r1, x1
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	mov	x4, rax
	add	x4, x1
	jmp	.LBB0_60
.LBB0_10:
	je	rax, r0, .LBB0_60
	jmp	.LBB0_11
.LBB0_11:
	jnz	x0, .LBB0_14
	jmp	.LBB0_12
.LBB0_12:
	jnz	rax, .LBB0_60
	jmp	.LBB0_13
.LBB0_13:
	mov	r0, x2
	mov	r1, x1
	call	__bit_and
	mov	x4, rax
	jmp	.LBB0_60
.LBB0_14:
	mov	x4, x1
	jz	rax, .LBB0_60
	jmp	.LBB0_15
.LBB0_15:
	mov	x4, x1
	jg	rax, x0, .LBB0_17
	jmp	.LBB0_16
.LBB0_16:
	mov	x4, x2
.LBB0_17:
add	x0, -2147483648
add	rax, -2147483648
	mov	x3, x2
	jg	rax, x0, .LBB0_19
	jmp	.LBB0_18
.LBB0_18:
	mov	x3, x1
.LBB0_19:
	mov	r1, 23
	mov	r0, x3
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 23
	mov	x0, rax
	mov	r0, x4
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 8388607
	mov	x6, rax
	mov	r0, x3
	call	__bit_and
	mov	r1, 8388607
	mov	x5, rax
	mov	r0, x4
	call	__bit_and
	mov	x4, rax
	jnz	x0, .LBB0_21
	jmp	.LBB0_20
.LBB0_20:
	mov	r1, 1
	mov	r0, x5
	call	__bit_shr
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	x0, rax
	mov	r0, x0
	call	__bit_shr
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	r1, 4
	mov	x0, rax
	mov	r0, x0
	call	__bit_shr
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	r1, 8
	mov	x0, rax
	mov	r0, x0
	call	__bit_shr
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	r1, 16
	mov	x0, rax
	mov	r0, x0
	call	__bit_shr
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	x0, rax
	mov	r0, x0
	call	__bit_shr
	mov	r1, 1431655765
	mov	r0, rax
	call	__bit_and
	sub	x0, rax
	mov	r1, 2
	mov	r0, x0
	call	__bit_shr
	mov	r1, 858993459
	mov	r0, rax
	call	__bit_and
	mov	r1, 858993459
	mov	x7, rax
	mov	r0, x0
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
	mov	x7, 24
	mov	r0, rax
	call	__bit_shr
	mov	x0, rax
	sub	x7, x0
	mov	r0, x5
	mov	r1, x7
	call	__bit_shl
	mov	x5, rax
add	x0, -23
.LBB0_21:
	jnz	x6, .LBB0_23
	jmp	.LBB0_22
.LBB0_22:
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
	mov	x7, 24
	mov	r0, rax
	call	__bit_shr
	mov	x6, rax
	sub	x7, x6
	mov	r0, x4
	mov	r1, x7
	call	__bit_shl
	mov	x4, rax
add	x6, -23
.LBB0_23:
	mov	r1, -2147483648
	mov	r0, x3
	call	__bit_and
	mov	x3, rax
	mov	r0, x2
	mov	r1, x1
	call	__bit_xor
	mov	r1, 3
	mov	x2, rax
	mov	r0, x5
	call	__bit_shl
	mov	r1, 67108864
	mov	r0, rax
	call	__bit_or
	mov	r1, 3
	mov	x1, rax
	mov	r0, x4
	call	__bit_shl
	mov	r1, 67108864
	mov	r0, rax
	call	__bit_or
	mov	x5, rax
	je	x0, x6, .LBB0_28
	jmp	.LBB0_24
.LBB0_24:
	mov	x4, x0
	sub	x4, x6
	mov	r0, x4
add	r0, -2147483648
	mov	r1, -2147483617
	mov	x5, 1
	jg	r0, r1, .LBB0_28
	jmp	.LBB0_25
.LBB0_25:
	mov	r1, 32
	sub	r1, x4
	mov	x6, rax
	mov	r0, rax
	call	__bit_shl
	mov	r0, 0
	jne	rax, r0, .LBB0_27
// %bb.26:
	mov	x5, 0
.LBB0_27:
	mov	r0, x6
	mov	r1, x4
	call	__bit_shr
	mov	r1, 1
	mov	x4, rax
	mov	r0, x5
	call	__bit_and
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	x5, rax
.LBB0_28:
	mov	r0, -1
	jg	x2, r0, .LBB0_32
	jmp	.LBB0_29
.LBB0_29:
	mov	x4, 0
	je	x1, x5, .LBB0_60
	jmp	.LBB0_30
.LBB0_30:
	sub	x1, x5
	mov	r0, x1
add	r0, -2147483648
	mov	r1, -2080374785
	jg	r0, r1, .LBB0_34
	jmp	.LBB0_31
.LBB0_31:
	mov	r1, 1
	mov	r0, x1
	call	__bit_shr
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	x2, rax
	mov	r0, x2
	call	__bit_shr
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r1, 4
	mov	x2, rax
	mov	r0, x2
	call	__bit_shr
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r1, 8
	mov	x2, rax
	mov	r0, x2
	call	__bit_shr
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r1, 16
	mov	x2, rax
	mov	r0, x2
	call	__bit_shr
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	x2, rax
	mov	r0, x2
	call	__bit_shr
	mov	r1, 1431655765
	mov	r0, rax
	call	__bit_and
	sub	x2, rax
	mov	r1, 2
	mov	r0, x2
	call	__bit_shr
	mov	r1, 858993459
	mov	r0, rax
	call	__bit_and
	mov	r1, 858993459
	mov	x4, rax
	mov	r0, x2
	call	__bit_and
	add	x4, rax
	mov	r1, 4
	mov	r0, x4
	call	__bit_shr
	add	x4, rax
	mov	r1, 252645135
	mov	r0, x4
	call	__bit_and
	mul	rax, 16843009
	mov	r1, 24
	mov	r0, rax
	call	__bit_shr
	mov	x2, 27
	sub	x2, rax
	mov	r0, x1
	mov	r1, x2
	call	__bit_shl
	mov	x1, rax
	sub	x0, x2
	jmp	.LBB0_36
.LBB0_32:
	add	x1, x5
	mov	r1, 134217728
	mov	r0, x1
	call	__bit_and
	jz	rax, .LBB0_34
	jmp	.LBB0_33
.LBB0_33:
	mov	r1, 1
	mov	r0, x1
	call	__bit_shr
	mov	r1, 1
	mov	x1, rax
	mov	r0, x5
	call	__bit_and
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	x1, rax
add	x0, 1
.LBB0_34:
	mov	r0, 255
	jl	x0, r0, .LBB0_36
	jmp	.LBB0_35
.LBB0_35:
	mov	r1, 2139095040
	mov	r0, x3
	call	__bit_or
	mov	x4, rax
	jmp	.LBB0_60
.LBB0_36:
	mov	x4, 0
	jg	x0, x4, .LBB0_40
	jmp	.LBB0_37
.LBB0_37:
	mov	x2, 1
	sub	x2, x0
add	x0, 31
	mov	r0, x1
	mov	r1, x0
	call	__bit_shl
	mov	x0, 1
	jne	rax, x4, .LBB0_39
// %bb.38:
	mov	x0, 0
.LBB0_39:
	mov	r0, x1
	mov	r1, x2
	call	__bit_shr
	mov	r1, 1
	mov	x1, rax
	mov	r0, x0
	call	__bit_and
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	x1, rax
	mov	x0, 0
.LBB0_40:
	mov	r1, 7
	mov	r0, x1
	call	__bit_and
	mov	r1, 3
	mov	x2, rax
	mov	r0, x1
	call	__bit_shr
	mov	r1, 8388607
	mov	x1, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 23
	mov	x4, rax
	mov	r0, x0
	call	__bit_shl
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x3
	call	__bit_or
	mov	x0, rax
	call	__fe_getround
	mov	r0, 2
	je	rax, r0, .LBB0_52
	jmp	.LBB0_41
.LBB0_41:
	mov	r0, 1
	je	rax, r0, .LBB0_47
	jmp	.LBB0_42
.LBB0_42:
	mov	x4, x0
	jnz	rax, .LBB0_57
	jmp	.LBB0_43
.LBB0_43:
	mov	x3, 4
	jg	x2, x3, .LBB0_45
// %bb.44:
	mov	r0, 0
.LBB0_45:
	mov	r1, 1
	call	__bit_and
	mov	x4, rax
	add	x4, x0
	jne	x2, x3, .LBB0_57
	jmp	.LBB0_46
.LBB0_46:
	mov	r1, 1
	mov	r0, x1
	call	__bit_and
	add	x0, rax
	mov	x4, x0
	jmp	.LBB0_58
.LBB0_47:
	mov	r2, 0
	jne	x3, r2, .LBB0_49
// %bb.48:
	mov	r0, 0
.LBB0_49:
	mov	r1, 1
	jne	x2, r2, .LBB0_51
// %bb.50:
	mov	r1, 0
.LBB0_51:
	call	__bit_and
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	add	x0, rax
	mov	x4, x0
	jmp	.LBB0_57
.LBB0_52:
	mov	r2, 0
	mov	r1, 1
	mov	r0, 1
	je	x3, r2, .LBB0_54
// %bb.53:
	mov	r0, 0
.LBB0_54:
	jne	x2, r2, .LBB0_56
// %bb.55:
	mov	r1, 0
.LBB0_56:
	call	__bit_and
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	add	x0, rax
	mov	x4, x0
.LBB0_57:
	jz	x2, .LBB0_59
	jmp	.LBB0_58
.LBB0_58:
	call	__fe_raise_inexact
.LBB0_59:
.LBB0_60:
	mov	rax, x4
	mov	x7, [rsp]
	mov	x6, [rsp+4]
	mov	x5, [rsp+8]
	mov	x4, [rsp+12]
	mov	x3, [rsp+16]
	mov	x2, [rsp+20]
	mov	x1, [rsp+24]
	mov	x0, [rsp+28]
add	rsp, 32
	ret
// -- End function
