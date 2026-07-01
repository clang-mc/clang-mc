#include "_ll_std"

#define __cmpsf2 __lesf2
#define __eqsf2 __lesf2
#define __ltsf2 __lesf2
#define __nesf2 __lesf2
#define __gtsf2 __gesf2

// -- Begin function __lesf2
__lesf2:                                // @__lesf2
// %bb.0:
sub	rsp, 12
	mov	[rsp+8], x0
	mov	[rsp+4], x1
	mov	[rsp], x2
	mov	x0, r1
	mov	r1, 2147483647
	mov	x1, r0
	call	__bit_and
	mov	r1, 2147483647
	mov	x2, rax
	mov	r0, x0
	call	__bit_and
	mov	r0, rax
	mov	r1, 2139095040
	mov	rax, 1
	jg	x2, r1, .LBB0_12
	jmp	.LBB0_1
.LBB0_1:
	jg	r0, r1, .LBB0_12
	jmp	.LBB0_2
.LBB0_2:
	mov	r1, x2
	call	__bit_or
	mov	r0, rax
	mov	rax, 0
	jz	r0, .LBB0_12
	jmp	.LBB0_3
.LBB0_3:
	mov	r0, x0
	mov	r1, x1
	call	__bit_and
	mov	r0, 0
	jl	rax, r0, .LBB0_8
	jmp	.LBB0_4
.LBB0_4:
	mov	rax, -1
	jl	x1, x0, .LBB0_12
	jmp	.LBB0_5
.LBB0_5:
	mov	r0, 1
	jne	x1, x0, .LBB0_7
// %bb.6:
	mov	r0, 0
.LBB0_7:
	mov	r1, 1
	call	__bit_and
	jmp	.LBB0_12
.LBB0_8:
	mov	rax, -1
	jg	x1, x0, .LBB0_12
	jmp	.LBB0_9
.LBB0_9:
	mov	r0, 1
	jne	x1, x0, .LBB0_11
// %bb.10:
	mov	r0, 0
.LBB0_11:
	mov	r1, 1
	call	__bit_and
.LBB0_12:
	mov	x2, [rsp]
	mov	x1, [rsp+4]
	mov	x0, [rsp+8]
add	rsp, 12
	ret
// -- End function
// -- Begin function __gesf2
__gesf2:                                // @__gesf2
// %bb.0:
sub	rsp, 12
	mov	[rsp+8], x0
	mov	[rsp+4], x1
	mov	[rsp], x2
	mov	x0, r1
	mov	r1, 2147483647
	mov	x1, r0
	call	__bit_and
	mov	r1, 2147483647
	mov	x2, rax
	mov	r0, x0
	call	__bit_and
	mov	r0, rax
	mov	r1, 2139095040
	mov	rax, -1
	jg	x2, r1, .LBB1_12
	jmp	.LBB1_1
.LBB1_1:
	jg	r0, r1, .LBB1_12
	jmp	.LBB1_2
.LBB1_2:
	mov	r1, x2
	call	__bit_or
	mov	r0, rax
	mov	rax, 0
	jz	r0, .LBB1_12
	jmp	.LBB1_3
.LBB1_3:
	mov	r0, x0
	mov	r1, x1
	call	__bit_and
	mov	r0, 0
	jl	rax, r0, .LBB1_8
	jmp	.LBB1_4
.LBB1_4:
	mov	rax, -1
	jl	x1, x0, .LBB1_12
	jmp	.LBB1_5
.LBB1_5:
	mov	r0, 1
	jne	x1, x0, .LBB1_7
// %bb.6:
	mov	r0, 0
.LBB1_7:
	mov	r1, 1
	call	__bit_and
	jmp	.LBB1_12
.LBB1_8:
	mov	rax, -1
	jg	x1, x0, .LBB1_12
	jmp	.LBB1_9
.LBB1_9:
	mov	r0, 1
	jne	x1, x0, .LBB1_11
// %bb.10:
	mov	r0, 0
.LBB1_11:
	mov	r1, 1
	call	__bit_and
.LBB1_12:
	mov	x2, [rsp]
	mov	x1, [rsp+4]
	mov	x0, [rsp+8]
add	rsp, 12
	ret
// -- End function
// -- Begin function __unordsf2
__unordsf2:                             // @__unordsf2
// %bb.0:
sub	rsp, 8
	mov	[rsp+4], x0
	mov	[rsp], x1
	mov	x0, r1
	mov	r1, 2147483647
	call	__bit_and
	mov	r1, 2147483647
	mov	x1, rax
	mov	r0, x0
	call	__bit_and
	mov	r2, 2139095040
	mov	r1, 1
	mov	r0, 1
	jg	x1, r2, .LBB2_2
// %bb.1:
	mov	r0, 0
.LBB2_2:
add	rax, -2147483648
	mov	r2, -8388608
	jg	rax, r2, .LBB2_4
// %bb.3:
	mov	r1, 0
.LBB2_4:
	call	__bit_or
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	x1, [rsp]
	mov	x0, [rsp+4]
add	rsp, 8
	ret
// -- End function
