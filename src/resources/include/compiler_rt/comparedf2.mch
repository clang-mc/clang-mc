#include "_ll_std"

#define __cmpdf2 __ledf2
#define __eqdf2 __ledf2
#define __ltdf2 __ledf2
#define __nedf2 __ledf2
#define __gtdf2 __gedf2

// -- Begin function __ledf2
__ledf2:                                // @__ledf2
// %bb.0:
sub	rsp, 40
	mov	[rsp+36], x0
	mov	[rsp+32], x1
	mov	[rsp+28], x2
	mov	[rsp+24], x3
	mov	[rsp+20], x4
	mov	[rsp+16], x5
	mov	[rsp+12], x6
	mov	[rsp+8], x7
	mov	[rsp+4], x8
	mov	[rsp], x9
	mov	x0, r3
	mov	x2, r2
	mov	x1, r1
	mov	x3, r0
	mov	r2, 0
	mov	r4, 1
	mov	r3, 1
	jl	x1, r2, .LBB0_2
// %bb.1:
	mov	r3, 0
.LBB0_2:
	mov	r0, r3
	mul	r0, -2147483648
	mov	r5, x1
	sub	r5, r0
	mov	r1, -2147483648
	je	r5, r1, .LBB0_4
// %bb.3:
	mov	r4, 0
.LBB0_4:
	mov	r0, 0
	sub	r0, r4
	mov	x6, 1
	mov	r4, 1
	jl	r0, r2, .LBB0_6
// %bb.5:
	mov	r4, 0
.LBB0_6:
	mov	r5, r4
	mul	r5, -2147483648
	mov	r6, r0
	sub	r6, r5
	div	r6, 2
	mul	r4, 1073741824
	add	r4, r6
	mul	r4, 2
	sub	r0, r4
	add	r0, r3
	jl	x0, r2, .LBB0_8
// %bb.7:
	mov	x6, 0
.LBB0_8:
	mul	r0, -2147483648
	mov	r3, x6
	mul	r3, -2147483648
	mov	r4, x0
	sub	r4, r3
	mov	x7, 1
	mov	r3, 1
	je	r4, r1, .LBB0_10
// %bb.9:
	mov	r3, 0
.LBB0_10:
	mov	x5, x1
	mov	x8, 0
	sub	x8, r3
	sub	x5, r0
	jl	x8, r2, .LBB0_12
// %bb.11:
	mov	x7, 0
.LBB0_12:
	mov	r0, 2146435072
	mov	x9, 1
	mov	r1, 1
	je	x5, r0, .LBB0_14
// %bb.13:
	mov	r1, 0
.LBB0_14:
	jg	x5, r0, .LBB0_16
// %bb.15:
	mov	x9, 0
.LBB0_16:
	mov	r0, 0
	sub	r0, r1
	mov	r1, 1
	jne	x3, r2, .LBB0_18
// %bb.17:
	mov	r1, 0
.LBB0_18:
	sub	r1, x9
	mov	x4, 1
	call	__bit_and
	add	rax, x9
	jnz	rax, .LBB0_52
	jmp	.LBB0_19
.LBB0_19:
	mov	r0, x7
	mul	r0, -2147483648
	mov	r1, x8
	sub	r1, r0
	div	r1, 2
	mul	x7, 1073741824
	add	x7, r1
	mul	x7, 2
	sub	x8, x7
	add	x8, x6
	mul	x8, -2147483648
	mov	x6, x0
	sub	x6, x8
	mov	r0, 0
	mov	x7, 1
	mov	r1, 1
	jne	x2, r0, .LBB0_21
// %bb.20:
	mov	r1, 0
.LBB0_21:
	mov	r2, 2146435072
	jg	x6, r2, .LBB0_23
// %bb.22:
	mov	x7, 0
.LBB0_23:
	sub	r1, x7
	mov	r3, 1
	je	x6, r2, .LBB0_25
// %bb.24:
	mov	r3, 0
.LBB0_25:
	sub	r0, r3
	call	__bit_and
	add	x7, rax
	jnz	x7, .LBB0_52
	jmp	.LBB0_26
.LBB0_26:
	mov	r0, x2
	mov	r1, x3
	call	__bit_or
	mov	x4, rax
	mov	r0, x6
	mov	r1, x5
	call	__bit_or
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	x4, 0
	jz	rax, .LBB0_52
	jmp	.LBB0_27
.LBB0_27:
	mov	r0, x0
	mov	r1, x1
	call	__bit_and
	mov	r0, 0
	jl	rax, r0, .LBB0_40
	jmp	.LBB0_28
.LBB0_28:
	mov	r1, 1
	mov	x5, 1
	jl	x1, x0, .LBB0_30
// %bb.29:
	mov	x5, 0
.LBB0_30:
	mov	r0, x2
add	r0, -2147483648
	mov	r2, x3
add	r2, -2147483648
	jl	r2, r0, .LBB0_32
// %bb.31:
	mov	r1, 0
.LBB0_32:
	sub	r1, x5
	mov	r2, 1
	je	x1, x0, .LBB0_34
// %bb.33:
	mov	r2, 0
.LBB0_34:
	mov	r0, 0
	sub	r0, r2
	mov	x6, 0
	call	__bit_and
	add	x5, rax
	mov	x4, -1
	jnz	x5, .LBB0_52
	jmp	.LBB0_35
.LBB0_35:
	mov	r0, x3
	mov	r1, x2
	call	__bit_xor
	mov	x2, rax
	mov	r0, x1
	mov	r1, x0
	call	__bit_xor
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r0, 1
	mov	x4, 1
	jne	rax, x6, .LBB0_37
// %bb.36:
	mov	x4, 0
.LBB0_37:
	jl	x4, x6, .LBB0_39
// %bb.38:
	mov	r0, 0
.LBB0_39:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x4
	sub	r2, r1
	div	r2, 2
	mul	r0, 1073741824
	add	r0, r2
	mul	r0, 2
	sub	x4, r0
	jmp	.LBB0_52
.LBB0_40:
	mov	r1, 1
	mov	x5, 1
	jg	x1, x0, .LBB0_42
// %bb.41:
	mov	x5, 0
.LBB0_42:
	mov	r0, x2
add	r0, -2147483648
	mov	r2, x3
add	r2, -2147483648
	jg	r2, r0, .LBB0_44
// %bb.43:
	mov	r1, 0
.LBB0_44:
	sub	r1, x5
	mov	r2, 1
	je	x1, x0, .LBB0_46
// %bb.45:
	mov	r2, 0
.LBB0_46:
	mov	r0, 0
	sub	r0, r2
	mov	x6, 0
	call	__bit_and
	add	x5, rax
	mov	x4, -1
	jnz	x5, .LBB0_52
	jmp	.LBB0_47
.LBB0_47:
	mov	r0, x3
	mov	r1, x2
	call	__bit_xor
	mov	x2, rax
	mov	r0, x1
	mov	r1, x0
	call	__bit_xor
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r0, 1
	mov	x4, 1
	jne	rax, x6, .LBB0_49
// %bb.48:
	mov	x4, 0
.LBB0_49:
	jl	x4, x6, .LBB0_51
// %bb.50:
	mov	r0, 0
.LBB0_51:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x4
	sub	r2, r1
	div	r2, 2
	mul	r0, 1073741824
	add	r0, r2
	mul	r0, 2
	sub	x4, r0
.LBB0_52:
	mov	rax, x4
	mov	x9, [rsp]
	mov	x8, [rsp+4]
	mov	x7, [rsp+8]
	mov	x6, [rsp+12]
	mov	x5, [rsp+16]
	mov	x4, [rsp+20]
	mov	x3, [rsp+24]
	mov	x2, [rsp+28]
	mov	x1, [rsp+32]
	mov	x0, [rsp+36]
add	rsp, 40
	ret
// -- End function
// -- Begin function __gedf2
__gedf2:                                // @__gedf2
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
	mov	x0, r3
	mov	x2, r2
	mov	x1, r1
	mov	x3, r0
	mov	r2, 0
	mov	r4, 1
	mov	r3, 1
	jl	x1, r2, .LBB1_2
// %bb.1:
	mov	r3, 0
.LBB1_2:
	mov	r0, r3
	mul	r0, -2147483648
	mov	r5, x1
	sub	r5, r0
	mov	r1, -2147483648
	je	r5, r1, .LBB1_4
// %bb.3:
	mov	r4, 0
.LBB1_4:
	mov	r0, 0
	sub	r0, r4
	mov	x5, 1
	mov	r4, 1
	jl	r0, r2, .LBB1_6
// %bb.5:
	mov	r4, 0
.LBB1_6:
	mov	r5, r4
	mul	r5, -2147483648
	mov	r6, r0
	sub	r6, r5
	div	r6, 2
	mul	r4, 1073741824
	add	r4, r6
	mul	r4, 2
	sub	r0, r4
	add	r0, r3
	jl	x0, r2, .LBB1_8
// %bb.7:
	mov	x5, 0
.LBB1_8:
	mul	r0, -2147483648
	mov	r3, x5
	mul	r3, -2147483648
	mov	r4, x0
	sub	r4, r3
	mov	x6, 1
	mov	r3, 1
	je	r4, r1, .LBB1_10
// %bb.9:
	mov	r3, 0
.LBB1_10:
	mov	x4, x1
	mov	x7, 0
	sub	x7, r3
	sub	x4, r0
	jl	x7, r2, .LBB1_12
// %bb.11:
	mov	x6, 0
.LBB1_12:
	mov	r0, 2146435072
	mov	x8, 1
	mov	r1, 1
	je	x4, r0, .LBB1_14
// %bb.13:
	mov	r1, 0
.LBB1_14:
	jg	x4, r0, .LBB1_16
// %bb.15:
	mov	x8, 0
.LBB1_16:
	mov	r0, 0
	sub	r0, r1
	mov	r1, 1
	jne	x3, r2, .LBB1_18
// %bb.17:
	mov	r1, 0
.LBB1_18:
	sub	r1, x8
	call	__bit_and
	mov	r0, rax
	add	r0, x8
	mov	rax, -1
	jnz	r0, .LBB1_52
	jmp	.LBB1_19
.LBB1_19:
	mov	r0, x6
	mul	r0, -2147483648
	mov	r1, x7
	sub	r1, r0
	div	r1, 2
	mul	x6, 1073741824
	add	x6, r1
	mul	x6, 2
	sub	x7, x6
	add	x7, x5
	mul	x7, -2147483648
	mov	x5, x0
	sub	x5, x7
	mov	r0, 0
	mov	x6, 1
	mov	r1, 1
	jne	x2, r0, .LBB1_21
// %bb.20:
	mov	r1, 0
.LBB1_21:
	mov	r2, 2146435072
	jg	x5, r2, .LBB1_23
// %bb.22:
	mov	x6, 0
.LBB1_23:
	sub	r1, x6
	mov	r3, 1
	je	x5, r2, .LBB1_25
// %bb.24:
	mov	r3, 0
.LBB1_25:
	sub	r0, r3
	call	__bit_and
	add	x6, rax
	mov	rax, -1
	jnz	x6, .LBB1_52
	jmp	.LBB1_26
.LBB1_26:
	mov	r0, x2
	mov	r1, x3
	call	__bit_or
	mov	x6, rax
	mov	r0, x5
	mov	r1, x4
	call	__bit_or
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	rax, 0
	jz	r0, .LBB1_52
	jmp	.LBB1_27
.LBB1_27:
	mov	r0, x0
	mov	r1, x1
	call	__bit_and
	mov	r0, 0
	jl	rax, r0, .LBB1_40
	jmp	.LBB1_28
.LBB1_28:
	mov	r1, 1
	mov	x4, 1
	jl	x1, x0, .LBB1_30
// %bb.29:
	mov	x4, 0
.LBB1_30:
	mov	r0, x2
add	r0, -2147483648
	mov	r2, x3
add	r2, -2147483648
	jl	r2, r0, .LBB1_32
// %bb.31:
	mov	r1, 0
.LBB1_32:
	sub	r1, x4
	mov	r2, 1
	je	x1, x0, .LBB1_34
// %bb.33:
	mov	r2, 0
.LBB1_34:
	mov	r0, 0
	sub	r0, r2
	mov	x5, 0
	call	__bit_and
	add	x4, rax
	mov	rax, -1
	jnz	x4, .LBB1_52
	jmp	.LBB1_35
.LBB1_35:
	mov	r0, x3
	mov	r1, x2
	call	__bit_xor
	mov	x2, rax
	mov	r0, x1
	mov	r1, x0
	call	__bit_xor
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, 1
	mov	rax, 1
	jne	r0, x5, .LBB1_37
// %bb.36:
	mov	rax, 0
.LBB1_37:
	jl	rax, x5, .LBB1_39
// %bb.38:
	mov	r1, 0
.LBB1_39:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 2
	mul	r1, 1073741824
	add	r1, r2
	mul	r1, 2
	sub	rax, r1
	jmp	.LBB1_52
.LBB1_40:
	mov	r1, 1
	mov	x4, 1
	jg	x1, x0, .LBB1_42
// %bb.41:
	mov	x4, 0
.LBB1_42:
	mov	r0, x2
add	r0, -2147483648
	mov	r2, x3
add	r2, -2147483648
	jg	r2, r0, .LBB1_44
// %bb.43:
	mov	r1, 0
.LBB1_44:
	sub	r1, x4
	mov	r2, 1
	je	x1, x0, .LBB1_46
// %bb.45:
	mov	r2, 0
.LBB1_46:
	mov	r0, 0
	sub	r0, r2
	mov	x5, 0
	call	__bit_and
	add	x4, rax
	mov	rax, -1
	jnz	x4, .LBB1_52
	jmp	.LBB1_47
.LBB1_47:
	mov	r0, x3
	mov	r1, x2
	call	__bit_xor
	mov	x2, rax
	mov	r0, x1
	mov	r1, x0
	call	__bit_xor
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, 1
	mov	rax, 1
	jne	r0, x5, .LBB1_49
// %bb.48:
	mov	rax, 0
.LBB1_49:
	jl	rax, x5, .LBB1_51
// %bb.50:
	mov	r1, 0
.LBB1_51:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 2
	mul	r1, 1073741824
	add	r1, r2
	mul	r1, 2
	sub	rax, r1
.LBB1_52:
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
// -- Begin function __unorddf2
__unorddf2:                             // @__unorddf2
// %bb.0:
sub	rsp, 28
	mov	[rsp+24], x0
	mov	[rsp+20], x1
	mov	[rsp+16], x2
	mov	[rsp+12], x3
	mov	[rsp+8], x4
	mov	[rsp+4], x5
	mov	[rsp], x6
	mov	x1, r3
	mov	x0, r2
	mov	x4, 0
	mov	r4, 1
	mov	r3, 1
	jl	r1, x4, .LBB2_2
// %bb.1:
	mov	r3, 0
.LBB2_2:
	mov	r2, r3
	mul	r2, -2147483648
	mov	r5, r1
	sub	r5, r2
	mov	r2, -2147483648
	je	r5, r2, .LBB2_4
// %bb.3:
	mov	r4, 0
.LBB2_4:
	mov	r5, 0
	sub	r5, r4
	add	r5, r3
	mul	r5, -2147483648
	mov	r4, 1
	mov	r3, 1
	jl	x1, x4, .LBB2_6
// %bb.5:
	mov	r3, 0
.LBB2_6:
	mov	r6, r3
	mul	r6, -2147483648
	mov	r7, x1
	sub	r7, r6
	sub	r1, r5
	je	r7, r2, .LBB2_8
// %bb.7:
	mov	r4, 0
.LBB2_8:
	mov	r2, 0
	sub	r2, r4
	add	r2, r3
	mov	x3, 2146435072
	mov	x2, 1
	mov	r3, 1
	je	r1, x3, .LBB2_10
// %bb.9:
	mov	r3, 0
.LBB2_10:
add	r1, -2147483648
	mov	x5, -1048576
	mul	r2, -2147483648
	jg	r1, x5, .LBB2_12
// %bb.11:
	mov	x2, 0
.LBB2_12:
	sub	x1, r2
	mov	r2, 0
	sub	r2, r3
	mov	x6, 1
	mov	r1, 1
	jne	r0, x4, .LBB2_14
// %bb.13:
	mov	r1, 0
.LBB2_14:
	sub	r1, x2
	mov	r0, r2
	call	__bit_and
	je	x1, x3, .LBB2_16
// %bb.15:
	mov	x6, 0
.LBB2_16:
add	x1, -2147483648
	mov	r1, 1
	mov	x3, 1
	jg	x1, x5, .LBB2_18
// %bb.17:
	mov	x3, 0
.LBB2_18:
	add	x2, rax
	mov	r0, 0
	sub	r0, x6
	jne	x0, x4, .LBB2_20
// %bb.19:
	mov	r1, 0
.LBB2_20:
	sub	r1, x3
	call	__bit_and
	add	x3, rax
	mov	r0, x2
	mov	r1, x3
	call	__bit_or
	mov	r0, 1
	jl	rax, x4, .LBB2_22
// %bb.21:
	mov	r0, 0
.LBB2_22:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, rax
	sub	r2, r1
	div	r2, 2
	mul	r0, 1073741824
	add	r0, r2
	mul	r0, 2
	sub	rax, r0
	mov	x6, [rsp]
	mov	x5, [rsp+4]
	mov	x4, [rsp+8]
	mov	x3, [rsp+12]
	mov	x2, [rsp+16]
	mov	x1, [rsp+20]
	mov	x0, [rsp+24]
add	rsp, 28
	ret
// -- End function
