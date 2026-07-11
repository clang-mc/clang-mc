#include "_ll_std"

#define __cmpsf2 __lesf2
#define __eqsf2 __lesf2
#define __ltsf2 __lesf2
#define __nesf2 __lesf2
#define __gtsf2 __gesf2

// -- Begin function __lesf2
__lesf2:                                // @__lesf2
// %bb.0:
sub	rsp, 8
	mov	[rsp+4], x0
	mov	[rsp], x1
	mov	x0, r1
	mov	x1, r0
	mov	r2, 0
	mov	r0, 1
	mov	r4, 1
	jl	x1, r2, .LBB0_2
// %bb.1:
	mov	r4, 0
.LBB0_2:
	mov	r1, r4
	mul	r1, -2147483648
	mov	r3, x1
	sub	r3, r1
	mov	r1, -2147483648
	je	r3, r1, .LBB0_4
// %bb.3:
	mov	r0, 0
.LBB0_4:
	mov	r3, 0
	sub	r3, r0
	mov	r0, 1
	mov	r5, 1
	jl	r3, r2, .LBB0_6
// %bb.5:
	mov	r5, 0
.LBB0_6:
	mov	r6, r5
	mul	r6, -2147483648
	mov	r7, r3
	sub	r7, r6
	div	r7, 2
	mul	r5, 1073741824
	add	r5, r7
	mul	r5, 2
	sub	r3, r5
	add	r3, r4
	jl	x0, r2, .LBB0_8
// %bb.7:
	mov	r0, 0
.LBB0_8:
	mul	r3, -2147483648
	mov	r4, r0
	mul	r4, -2147483648
	mov	r5, x0
	sub	r5, r4
	mov	r4, 1
	mov	r6, 1
	je	r5, r1, .LBB0_10
// %bb.9:
	mov	r6, 0
.LBB0_10:
	mov	r1, x1
	mov	r5, 0
	sub	r5, r6
	sub	r1, r3
	jl	r5, r2, .LBB0_12
// %bb.11:
	mov	r4, 0
.LBB0_12:
	mov	r2, 2139095040
	mov	rax, 1
	jg	r1, r2, .LBB0_28
	jmp	.LBB0_13
.LBB0_13:
	mov	r3, r4
	mul	r3, -2147483648
	mov	r6, r5
	sub	r6, r3
	div	r6, 2
	mul	r4, 1073741824
	add	r4, r6
	mul	r4, 2
	sub	r5, r4
	add	r5, r0
	mul	r5, -2147483648
	mov	r0, x0
	sub	r0, r5
	jg	r0, r2, .LBB0_28
	jmp	.LBB0_14
.LBB0_14:
	call	__bit_or
	mov	r0, rax
	mov	rax, 0
	jz	r0, .LBB0_28
	jmp	.LBB0_15
.LBB0_15:
	mov	r0, x0
	mov	r1, x1
	call	__bit_and
	mov	r0, 0
	jl	rax, r0, .LBB0_22
	jmp	.LBB0_16
.LBB0_16:
	mov	rax, -1
	jl	x1, x0, .LBB0_28
	jmp	.LBB0_17
.LBB0_17:
	mov	r0, 1
	mov	rax, 1
	jne	x1, x0, .LBB0_19
// %bb.18:
	mov	rax, 0
.LBB0_19:
	mov	r1, 0
	jl	rax, r1, .LBB0_21
// %bb.20:
	mov	r0, 0
.LBB0_21:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, rax
	sub	r2, r1
	div	r2, 2
	mul	r0, 1073741824
	add	r0, r2
	mul	r0, 2
	sub	rax, r0
	jmp	.LBB0_28
.LBB0_22:
	mov	rax, -1
	jg	x1, x0, .LBB0_28
	jmp	.LBB0_23
.LBB0_23:
	mov	r0, 1
	mov	rax, 1
	jne	x1, x0, .LBB0_25
// %bb.24:
	mov	rax, 0
.LBB0_25:
	mov	r1, 0
	jl	rax, r1, .LBB0_27
// %bb.26:
	mov	r0, 0
.LBB0_27:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, rax
	sub	r2, r1
	div	r2, 2
	mul	r0, 1073741824
	add	r0, r2
	mul	r0, 2
	sub	rax, r0
.LBB0_28:
	mov	x1, [rsp]
	mov	x0, [rsp+4]
add	rsp, 8
	ret
// -- End function
// -- Begin function __gesf2
__gesf2:                                // @__gesf2
// %bb.0:
sub	rsp, 8
	mov	[rsp+4], x0
	mov	[rsp], x1
	mov	x0, r1
	mov	x1, r0
	mov	r2, 0
	mov	r0, 1
	mov	r4, 1
	jl	x1, r2, .LBB1_2
// %bb.1:
	mov	r4, 0
.LBB1_2:
	mov	r1, r4
	mul	r1, -2147483648
	mov	r3, x1
	sub	r3, r1
	mov	r1, -2147483648
	je	r3, r1, .LBB1_4
// %bb.3:
	mov	r0, 0
.LBB1_4:
	mov	r3, 0
	sub	r3, r0
	mov	r0, 1
	mov	r5, 1
	jl	r3, r2, .LBB1_6
// %bb.5:
	mov	r5, 0
.LBB1_6:
	mov	r6, r5
	mul	r6, -2147483648
	mov	r7, r3
	sub	r7, r6
	div	r7, 2
	mul	r5, 1073741824
	add	r5, r7
	mul	r5, 2
	sub	r3, r5
	add	r3, r4
	jl	x0, r2, .LBB1_8
// %bb.7:
	mov	r0, 0
.LBB1_8:
	mul	r3, -2147483648
	mov	r4, r0
	mul	r4, -2147483648
	mov	r5, x0
	sub	r5, r4
	mov	r4, 1
	mov	r6, 1
	je	r5, r1, .LBB1_10
// %bb.9:
	mov	r6, 0
.LBB1_10:
	mov	r1, x1
	mov	r5, 0
	sub	r5, r6
	sub	r1, r3
	jl	r5, r2, .LBB1_12
// %bb.11:
	mov	r4, 0
.LBB1_12:
	mov	r2, 2139095040
	mov	rax, -1
	jg	r1, r2, .LBB1_28
	jmp	.LBB1_13
.LBB1_13:
	mov	r3, r4
	mul	r3, -2147483648
	mov	r6, r5
	sub	r6, r3
	div	r6, 2
	mul	r4, 1073741824
	add	r4, r6
	mul	r4, 2
	sub	r5, r4
	add	r5, r0
	mul	r5, -2147483648
	mov	r0, x0
	sub	r0, r5
	jg	r0, r2, .LBB1_28
	jmp	.LBB1_14
.LBB1_14:
	call	__bit_or
	mov	r0, rax
	mov	rax, 0
	jz	r0, .LBB1_28
	jmp	.LBB1_15
.LBB1_15:
	mov	r0, x0
	mov	r1, x1
	call	__bit_and
	mov	r0, 0
	jl	rax, r0, .LBB1_22
	jmp	.LBB1_16
.LBB1_16:
	mov	rax, -1
	jl	x1, x0, .LBB1_28
	jmp	.LBB1_17
.LBB1_17:
	mov	r0, 1
	mov	rax, 1
	jne	x1, x0, .LBB1_19
// %bb.18:
	mov	rax, 0
.LBB1_19:
	mov	r1, 0
	jl	rax, r1, .LBB1_21
// %bb.20:
	mov	r0, 0
.LBB1_21:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, rax
	sub	r2, r1
	div	r2, 2
	mul	r0, 1073741824
	add	r0, r2
	mul	r0, 2
	sub	rax, r0
	jmp	.LBB1_28
.LBB1_22:
	mov	rax, -1
	jg	x1, x0, .LBB1_28
	jmp	.LBB1_23
.LBB1_23:
	mov	r0, 1
	mov	rax, 1
	jne	x1, x0, .LBB1_25
// %bb.24:
	mov	rax, 0
.LBB1_25:
	mov	r1, 0
	jl	rax, r1, .LBB1_27
// %bb.26:
	mov	r0, 0
.LBB1_27:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, rax
	sub	r2, r1
	div	r2, 2
	mul	r0, 1073741824
	add	r0, r2
	mul	r0, 2
	sub	rax, r0
.LBB1_28:
	mov	x1, [rsp]
	mov	x0, [rsp+4]
add	rsp, 8
	ret
// -- End function
// -- Begin function __unordsf2
__unordsf2:                             // @__unordsf2
// %bb.0:
sub	rsp, 8
	mov	[rsp+4], x0
	mov	[rsp], x1
	mov	x0, 0
	mov	r4, 1
	mov	r2, 1
	jl	r0, x0, .LBB2_2
// %bb.1:
	mov	r2, 0
.LBB2_2:
	mov	r3, r2
	mul	r3, -2147483648
	mov	r5, r0
	sub	r5, r3
	mov	r3, -2147483648
	je	r5, r3, .LBB2_4
// %bb.3:
	mov	r4, 0
.LBB2_4:
	mov	r5, 0
	sub	r5, r4
	mov	r4, 1
	mov	r6, 1
	jl	r5, x0, .LBB2_6
// %bb.5:
	mov	r6, 0
.LBB2_6:
	mov	r7, r6
	mul	r7, -2147483648
	mov	t0, r5
	sub	t0, r7
	div	t0, 2
	mul	r6, 1073741824
	add	r6, t0
	mul	r6, 2
	sub	r5, r6
	add	r5, r2
	mul	r5, -2147483648
	jl	r1, x0, .LBB2_8
// %bb.7:
	mov	r4, 0
.LBB2_8:
	sub	r0, r5
	mov	r2, r4
	mul	r2, -2147483648
	mov	r6, r1
	sub	r6, r2
	mov	r2, 1
	mov	r5, 1
	je	r6, r3, .LBB2_10
// %bb.9:
	mov	r5, 0
.LBB2_10:
	mov	r3, 0
	sub	r3, r5
	add	r3, r4
	mul	r3, -2147483648
	mov	r4, 2139095040
	sub	r1, r3
	jg	r0, r4, .LBB2_12
// %bb.11:
	mov	r2, 0
.LBB2_12:
add	r1, -2147483648
	mov	r0, -8388608
	mov	x1, 1
	mov	r3, 1
	jg	r1, r0, .LBB2_14
// %bb.13:
	mov	r3, 0
.LBB2_14:
	mov	r0, r2
	mov	r1, r3
	call	__bit_or
	jl	rax, x0, .LBB2_16
// %bb.15:
	mov	x1, 0
.LBB2_16:
	mov	r0, x1
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 2
	mul	x1, 1073741824
	add	x1, r1
	mul	x1, 2
	sub	rax, x1
	mov	x1, [rsp]
	mov	x0, [rsp+4]
add	rsp, 8
	ret
// -- End function
