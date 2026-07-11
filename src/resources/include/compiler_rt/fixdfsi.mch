#include "_ll_std"

// -- Begin function __fixdfsi
__fixdfsi:                              // @__fixdfsi
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
	mov	x0, r1
	mov	rax, 0
	mov	r1, 1
	jl	x0, rax, .LBB0_2
// %bb.1:
	mov	r1, 0
.LBB0_2:
	mov	r2, r1
	mul	r2, 2048
	mul	r1, -2147483648
	mov	x4, x0
	sub	x4, r1
	div	x4, 1048576
	add	x4, r2
	mov	r1, x4
	div	r1, 2048
	mul	r1, 2048
	mov	x7, x4
	sub	x7, r1
	mov	r1, 1023
	jl	x7, r1, .LBB0_20
	jmp	.LBB0_3
.LBB0_3:
	mov	r1, x7
add	r1, 2147482593
	mov	r2, 2147483615
	mov	x5, x0
	jg	r1, r2, .LBB0_6
	jmp	.LBB0_4
.LBB0_4:
	mov	r0, -1
	mov	rax, 2147483647
	jg	x5, r0, .LBB0_20
	jmp	.LBB0_5
.LBB0_5:
	mov	rax, -2147483648
	jmp	.LBB0_20
.LBB0_6:
	mov	x2, r0
	mul	x4, 1048576
	mov	x1, 1075
	sub	x1, x7
	mov	r1, 32
	mov	x3, 32
	mov	r0, x1
	call	__udivsi3
	mul	rax, 32
	sub	x1, rax
	mov	r1, 0
	sub	r1, x1
	mov	x6, 0
	mov	r0, x1
	call	__bit_or
	mov	r2, 1
	mov	r0, 1
	jl	rax, x6, .LBB0_8
// %bb.7:
	mov	r0, 0
.LBB0_8:
	mov	r1, r0
	mul	r1, -2147483648
	sub	rax, r1
	mov	x9, -2147483648
	sub	x0, x4
	je	rax, x9, .LBB0_10
// %bb.9:
	mov	r2, 0
.LBB0_10:
add	x0, 1048576
	mov	r1, 0
	sub	r1, r2
	mov	x8, 1
	mov	r2, 1
	jl	r1, x6, .LBB0_12
// %bb.11:
	mov	r2, 0
.LBB0_12:
	mov	r3, r2
	mul	r3, -2147483648
	mov	r4, r1
	sub	r4, r3
	div	r4, 2
	mul	r2, 1073741824
	add	r2, r4
	mul	r2, 2
	sub	r1, r2
	add	r1, r0
	sub	x3, x1
	mov	x4, 0
	mov	r0, x3
	div	r0, 32
	mul	r0, 32
	sub	x3, r0
	sub	x4, r1
	mov	r0, x0
	mov	r1, x3
	call	__bit_shl
	mov	r0, rax
	mov	r1, x4
	call	__bit_and
	mov	x3, rax
	mov	r0, x2
	mov	r1, x1
	call	__bit_shr
	mov	r0, rax
	mov	r1, x3
	call	__bit_or
	mov	r1, 1043
	sub	r1, x7
	jl	r1, x6, .LBB0_14
// %bb.13:
	mov	x8, 0
.LBB0_14:
	mov	r0, x8
	mul	r0, -2147483648
	sub	r1, r0
	mov	r0, 1
	mov	r2, 1
	je	r1, x9, .LBB0_16
// %bb.15:
	mov	r2, 0
.LBB0_16:
	mov	r1, 0
	sub	r1, r2
	jl	r1, x6, .LBB0_18
// %bb.17:
	mov	r0, 0
.LBB0_18:
	mov	r2, r0
	mul	r2, -2147483648
	mov	r3, r1
	sub	r3, r2
	div	r3, 2
	mul	r0, 1073741824
	add	r0, r3
	mul	r0, 2
	sub	r1, r0
	add	r1, x8
	mov	x2, 0
	sub	x2, r1
	mov	r0, rax
	mov	r1, x2
	call	__bit_and
	mov	x3, rax
	mov	r0, x0
	mov	r1, x1
	call	__bit_shr
	mov	r1, -1
	sub	r1, x2
	mov	x0, -1
	mov	r0, rax
	call	__bit_and
	add	rax, x3
	jg	x5, x0, .LBB0_20
	jmp	.LBB0_19
.LBB0_19:
	sub	x6, rax
	mov	rax, x6
.LBB0_20:
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
