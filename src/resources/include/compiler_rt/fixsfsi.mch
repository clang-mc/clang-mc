#include "_ll_std"

// -- Begin function __fixsfsi
__fixsfsi:                              // @__fixsfsi
// %bb.0:
sub	rsp, 12
	mov	[rsp+8], x0
	mov	[rsp+4], x1
	mov	[rsp], x2
	mov	x0, r0
	mov	r0, -1
	mov	x2, 1
	jg	x0, r0, .LBB0_2
	jmp	.LBB0_1
.LBB0_1:
	mov	x2, -1
.LBB0_2:
	mov	r1, 23
	mov	r0, x0
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 8388607
	mov	x1, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, 8388608
	mov	r0, rax
	call	__bit_or
	mov	r1, 127
	mov	r0, 0
	jl	x1, r1, .LBB0_9
	jmp	.LBB0_3
.LBB0_3:
	mov	r0, x1
add	r0, 2147483489
	mov	r1, 2147483615
	jg	r0, r1, .LBB0_6
	jmp	.LBB0_4
.LBB0_4:
	mov	r1, -1
	mov	r0, 2147483647
	jg	x0, r1, .LBB0_9
	jmp	.LBB0_5
.LBB0_5:
	mov	r0, -2147483648
	jmp	.LBB0_9
.LBB0_6:
	mov	r0, 149
	jg	x1, r0, .LBB0_8
	jmp	.LBB0_7
.LBB0_7:
	mov	r1, 150
	sub	r1, x1
	mov	r0, rax
	call	__bit_shr
	mov	r0, rax
	mul	r0, x2
	jmp	.LBB0_9
.LBB0_8:
add	x1, -150
	mov	r0, rax
	mov	r1, x1
	call	__bit_shl
	mov	r0, rax
	mul	r0, x2
.LBB0_9:
	mov	rax, r0
	mov	x2, [rsp]
	mov	x1, [rsp+4]
	mov	x0, [rsp+8]
add	rsp, 12
	ret
// -- End function
