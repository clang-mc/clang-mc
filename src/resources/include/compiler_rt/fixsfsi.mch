#include "_ll_std"

// -- Begin function __fixsfsi
__fixsfsi:                              // @__fixsfsi
// %bb.0:
sub	rsp, 4
	mov	[rsp], x0
	mov	r1, 1
	mov	r2, -1
	mov	x0, 1
	jg	r0, r2, .LBB0_2
	jmp	.LBB0_1
.LBB0_1:
	mov	x0, -1
.LBB0_2:
	mov	rax, 0
	jl	r0, rax, .LBB0_4
// %bb.3:
	mov	r1, 0
.LBB0_4:
	mov	r3, r1
	mul	r3, 256
	mul	r1, -2147483648
	mov	r2, r0
	sub	r2, r1
	div	r2, 8388608
	add	r2, r3
	mov	r3, r2
	div	r3, 256
	mul	r3, 256
	mov	r1, r2
	sub	r1, r3
	mov	r3, 127
	jl	r1, r3, .LBB0_11
	jmp	.LBB0_5
.LBB0_5:
	mov	r3, r1
add	r3, 2147483489
	mov	r4, 2147483615
	jg	r3, r4, .LBB0_8
	jmp	.LBB0_6
.LBB0_6:
	mov	r1, -1
	mov	rax, 2147483647
	jg	r0, r1, .LBB0_11
	jmp	.LBB0_7
.LBB0_7:
	mov	rax, -2147483648
	jmp	.LBB0_11
.LBB0_8:
	mul	r2, 8388608
	sub	r0, r2
	mov	r2, 149
add	r0, 8388608
	jg	r1, r2, .LBB0_10
	jmp	.LBB0_9
.LBB0_9:
	mov	r2, 150
	sub	r2, r1
	mov	r1, r2
	call	__bit_shr
	mul	rax, x0
	jmp	.LBB0_11
.LBB0_10:
add	r1, -150
	call	__bit_shl
	mul	rax, x0
.LBB0_11:
	mov	x0, [rsp]
add	rsp, 4
	ret
// -- End function
