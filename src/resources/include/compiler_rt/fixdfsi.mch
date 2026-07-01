#include "_ll_std"

// -- Begin function __fixdfsi
__fixdfsi:                              // @__fixdfsi
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
	mov	r1, 20
	mov	x1, r0
	mov	r0, x0
	call	__bit_shr
	mov	r1, 2047
	mov	r0, rax
	call	__bit_and
	mov	r1, 1048575
	mov	x2, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, 1048576
	mov	r0, rax
	call	__bit_or
	mov	r1, 1023
	mov	r0, 0
	jl	x2, r1, .LBB0_6
	jmp	.LBB0_1
.LBB0_1:
	mov	r0, x2
add	r0, 2147482593
	mov	r1, 2147483615
	jg	r0, r1, .LBB0_4
	jmp	.LBB0_2
.LBB0_2:
	mov	r1, -1
	mov	r0, 2147483647
	jg	x0, r1, .LBB0_6
	jmp	.LBB0_3
.LBB0_3:
	mov	r0, -2147483648
	jmp	.LBB0_6
.LBB0_4:
	mov	r0, 1075
	sub	r0, x2
	mov	r1, 31
	mov	x3, rax
	call	__bit_and
	mov	x4, rax
	mov	r1, 0
	sub	r1, x4
	mov	x7, 0
	mov	r0, x4
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r0, 1043
	sub	r0, x2
	mov	r1, 31
	mov	x2, rax
	call	__bit_shr
	mov	x5, rax
	mov	r0, x3
	mov	r1, x4
	call	__bit_shr
	mov	x6, 0
	sub	x6, x5
	mov	x5, rax
	mov	r0, x6
	call	__bit_not
	mov	r0, x5
	mov	r1, rax
	call	__bit_and
	mov	x5, rax
	mov	r0, x1
	mov	r1, x4
	call	__bit_shr
	mov	r0, 32
	sub	r0, x4
	mov	r1, 31
	mov	x1, rax
	call	__bit_and
	mov	r0, x3
	mov	r1, rax
	call	__bit_shl
	mov	r1, 0
	sub	r1, x2
	mov	r0, rax
	call	__bit_and
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x6
	call	__bit_and
	mov	r0, rax
	mov	r1, x5
	call	__bit_or
	mov	r1, -1
	mov	r0, rax
	jg	x0, r1, .LBB0_6
	jmp	.LBB0_5
.LBB0_5:
	sub	x7, r0
	mov	r0, x7
.LBB0_6:
	mov	rax, r0
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
