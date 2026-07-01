#include "_ll_std"

#define __cmpdf2 __ledf2
#define __eqdf2 __ledf2
#define __ltdf2 __ledf2
#define __nedf2 __ledf2
#define __gtdf2 __gedf2

// -- Begin function __ledf2
__ledf2:                                // @__ledf2
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
	mov	x0, r1
	mov	r1, 2147483647
	mov	x1, r3
	mov	x2, r2
	mov	x3, r0
	mov	r0, x0
	call	__bit_and
	mov	r1, 2147483647
	mov	x4, rax
	mov	r0, x1
	call	__bit_and
	mov	x5, rax
	mov	r0, 0
	mov	x7, 1
	mov	r1, 1
	jne	x3, r0, .LBB0_2
// %bb.1:
	mov	r1, 0
.LBB0_2:
	mov	r2, 2146435072
	jg	x4, r2, .LBB0_4
// %bb.3:
	mov	x7, 0
.LBB0_4:
	sub	r1, x7
	mov	r3, 1
	je	x4, r2, .LBB0_6
// %bb.5:
	mov	r3, 0
.LBB0_6:
	sub	r0, r3
	mov	x6, 1
	call	__bit_and
	add	x7, rax
	jnz	x7, .LBB0_36
	jmp	.LBB0_7
.LBB0_7:
	mov	r0, 0
	mov	x7, 1
	mov	r1, 1
	jne	x2, r0, .LBB0_9
// %bb.8:
	mov	r1, 0
.LBB0_9:
	mov	r2, 2146435072
	jg	x5, r2, .LBB0_11
// %bb.10:
	mov	x7, 0
.LBB0_11:
	sub	r1, x7
	mov	r3, 1
	je	x5, r2, .LBB0_13
// %bb.12:
	mov	r3, 0
.LBB0_13:
	sub	r0, r3
	call	__bit_and
	add	x7, rax
	jnz	x7, .LBB0_36
	jmp	.LBB0_14
.LBB0_14:
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
	mov	x6, 0
	jz	rax, .LBB0_36
	jmp	.LBB0_15
.LBB0_15:
	mov	r0, x1
	mov	r1, x0
	call	__bit_and
	mov	r0, 0
	jl	rax, r0, .LBB0_26
	jmp	.LBB0_16
.LBB0_16:
	mov	r1, 1
	mov	x4, 1
	jl	x0, x1, .LBB0_18
// %bb.17:
	mov	x4, 0
.LBB0_18:
	mov	r0, x2
add	r0, -2147483648
	mov	r2, x3
add	r2, -2147483648
	jl	r2, r0, .LBB0_20
// %bb.19:
	mov	r1, 0
.LBB0_20:
	sub	r1, x4
	mov	r2, 1
	je	x0, x1, .LBB0_22
// %bb.21:
	mov	r2, 0
.LBB0_22:
	mov	r0, 0
	sub	r0, r2
	mov	x5, 0
	call	__bit_and
	add	x4, rax
	mov	x6, -1
	jnz	x4, .LBB0_36
	jmp	.LBB0_23
.LBB0_23:
	mov	r0, x3
	mov	r1, x2
	call	__bit_xor
	mov	x2, rax
	mov	r0, x0
	mov	r1, x1
	call	__bit_xor
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r0, 1
	jne	rax, x5, .LBB0_25
// %bb.24:
	mov	r0, 0
.LBB0_25:
	mov	r1, 1
	call	__bit_and
	mov	x6, rax
	jmp	.LBB0_36
.LBB0_26:
	mov	r1, 1
	mov	x4, 1
	jg	x0, x1, .LBB0_28
// %bb.27:
	mov	x4, 0
.LBB0_28:
	mov	r0, x2
add	r0, -2147483648
	mov	r2, x3
add	r2, -2147483648
	jg	r2, r0, .LBB0_30
// %bb.29:
	mov	r1, 0
.LBB0_30:
	sub	r1, x4
	mov	r2, 1
	je	x0, x1, .LBB0_32
// %bb.31:
	mov	r2, 0
.LBB0_32:
	mov	r0, 0
	sub	r0, r2
	mov	x5, 0
	call	__bit_and
	add	x4, rax
	mov	x6, -1
	jnz	x4, .LBB0_36
	jmp	.LBB0_33
.LBB0_33:
	mov	r0, x3
	mov	r1, x2
	call	__bit_xor
	mov	x2, rax
	mov	r0, x0
	mov	r1, x1
	call	__bit_xor
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r0, 1
	jne	rax, x5, .LBB0_35
// %bb.34:
	mov	r0, 0
.LBB0_35:
	mov	r1, 1
	call	__bit_and
	mov	x6, rax
.LBB0_36:
	mov	rax, x6
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
// -- Begin function __gedf2
__gedf2:                                // @__gedf2
// %bb.0:
sub	rsp, 28
	mov	[rsp+24], x0
	mov	[rsp+20], x1
	mov	[rsp+16], x2
	mov	[rsp+12], x3
	mov	[rsp+8], x4
	mov	[rsp+4], x5
	mov	[rsp], x6
	mov	x0, r1
	mov	r1, 2147483647
	mov	x1, r3
	mov	x2, r2
	mov	x3, r0
	mov	r0, x0
	call	__bit_and
	mov	r1, 2147483647
	mov	x4, rax
	mov	r0, x1
	call	__bit_and
	mov	x5, rax
	mov	r0, 0
	mov	x6, 1
	mov	r1, 1
	jne	x3, r0, .LBB1_2
// %bb.1:
	mov	r1, 0
.LBB1_2:
	mov	r2, 2146435072
	jg	x4, r2, .LBB1_4
// %bb.3:
	mov	x6, 0
.LBB1_4:
	sub	r1, x6
	mov	r3, 1
	je	x4, r2, .LBB1_6
// %bb.5:
	mov	r3, 0
.LBB1_6:
	sub	r0, r3
	call	__bit_and
	add	x6, rax
	mov	rax, -1
	jnz	x6, .LBB1_36
	jmp	.LBB1_7
.LBB1_7:
	mov	r0, 0
	mov	x6, 1
	mov	r1, 1
	jne	x2, r0, .LBB1_9
// %bb.8:
	mov	r1, 0
.LBB1_9:
	mov	r2, 2146435072
	jg	x5, r2, .LBB1_11
// %bb.10:
	mov	x6, 0
.LBB1_11:
	sub	r1, x6
	mov	r3, 1
	je	x5, r2, .LBB1_13
// %bb.12:
	mov	r3, 0
.LBB1_13:
	sub	r0, r3
	call	__bit_and
	add	x6, rax
	mov	rax, -1
	jnz	x6, .LBB1_36
	jmp	.LBB1_14
.LBB1_14:
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
	jz	r0, .LBB1_36
	jmp	.LBB1_15
.LBB1_15:
	mov	r0, x1
	mov	r1, x0
	call	__bit_and
	mov	r0, 0
	jl	rax, r0, .LBB1_26
	jmp	.LBB1_16
.LBB1_16:
	mov	r1, 1
	mov	x4, 1
	jl	x0, x1, .LBB1_18
// %bb.17:
	mov	x4, 0
.LBB1_18:
	mov	r0, x2
add	r0, -2147483648
	mov	r2, x3
add	r2, -2147483648
	jl	r2, r0, .LBB1_20
// %bb.19:
	mov	r1, 0
.LBB1_20:
	sub	r1, x4
	mov	r2, 1
	je	x0, x1, .LBB1_22
// %bb.21:
	mov	r2, 0
.LBB1_22:
	mov	r0, 0
	sub	r0, r2
	mov	x5, 0
	call	__bit_and
	add	x4, rax
	mov	rax, -1
	jnz	x4, .LBB1_36
	jmp	.LBB1_23
.LBB1_23:
	mov	r0, x3
	mov	r1, x2
	call	__bit_xor
	mov	x2, rax
	mov	r0, x0
	mov	r1, x1
	call	__bit_xor
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r0, 1
	jne	rax, x5, .LBB1_25
// %bb.24:
	mov	r0, 0
.LBB1_25:
	mov	r1, 1
	call	__bit_and
	jmp	.LBB1_36
.LBB1_26:
	mov	r1, 1
	mov	x4, 1
	jg	x0, x1, .LBB1_28
// %bb.27:
	mov	x4, 0
.LBB1_28:
	mov	r0, x2
add	r0, -2147483648
	mov	r2, x3
add	r2, -2147483648
	jg	r2, r0, .LBB1_30
// %bb.29:
	mov	r1, 0
.LBB1_30:
	sub	r1, x4
	mov	r2, 1
	je	x0, x1, .LBB1_32
// %bb.31:
	mov	r2, 0
.LBB1_32:
	mov	r0, 0
	sub	r0, r2
	mov	x5, 0
	call	__bit_and
	add	x4, rax
	mov	rax, -1
	jnz	x4, .LBB1_36
	jmp	.LBB1_33
.LBB1_33:
	mov	r0, x3
	mov	r1, x2
	call	__bit_xor
	mov	x2, rax
	mov	r0, x0
	mov	r1, x1
	call	__bit_xor
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r0, 1
	jne	rax, x5, .LBB1_35
// %bb.34:
	mov	r0, 0
.LBB1_35:
	mov	r1, 1
	call	__bit_and
.LBB1_36:
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
// -- Begin function __unorddf2
__unorddf2:                             // @__unorddf2
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
	mov	r4, r1
	mov	r1, 2147483647
	mov	x0, r3
	mov	x3, r2
	mov	x4, r0
	mov	r0, r4
	call	__bit_and
	mov	r1, 2147483647
	mov	x5, rax
	mov	r0, x0
	call	__bit_and
	mov	x2, rax
	mov	x1, 0
	mov	x0, 1
	mov	r1, 1
	jne	x4, x1, .LBB2_2
// %bb.1:
	mov	r1, 0
.LBB2_2:
	mov	r0, x5
add	r0, -2147483648
	mov	x7, -1048576
	jg	r0, x7, .LBB2_4
// %bb.3:
	mov	x0, 0
.LBB2_4:
	sub	r1, x0
	mov	x6, 2146435072
	mov	x4, 1
	mov	r2, 1
	je	x5, x6, .LBB2_6
// %bb.5:
	mov	r2, 0
.LBB2_6:
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	jne	x3, x1, .LBB2_8
// %bb.7:
	mov	x4, 0
.LBB2_8:
	mov	r1, x2
add	r1, -2147483648
	mov	r0, 1
	mov	x3, 1
	jg	r1, x7, .LBB2_10
// %bb.9:
	mov	x3, 0
.LBB2_10:
	add	x0, rax
	sub	x4, x3
	je	x2, x6, .LBB2_12
// %bb.11:
	mov	r0, 0
.LBB2_12:
	sub	x1, r0
	mov	r0, x1
	mov	r1, x4
	call	__bit_and
	add	x3, rax
	mov	r0, x0
	mov	r1, x3
	call	__bit_or
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
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
