#include "_ll_std"

// -- Begin function __fixsfsi
__fixsfsi:                              // @__fixsfsi
// %bb.0:
	mov	r1, -2147483648
	mov	r2, r0
	call	__bit_xor
	mov	r1, 2147483647
	mov	r0, rax
	call	__bit_xor
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, 2
	mov	r0, rax
	call	__bit_and
	mov	r1, 23
	mov	r3, rax
	mov	r0, r2
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 8388607
	mov	r4, rax
	mov	r0, r2
	call	__bit_and
	mov	r1, 8388608
	mov	r0, rax
	call	__bit_or
	mov	r5, rax
	mov	r0, 127
	mov	rax, 0
	jl	r4, r0, .LBB0_6
	jmp	.LBB0_1
.LBB0_1:
	mov	r0, r4
	add	r0, -159
	mov	r1, -2147483648
	call	__bit_xor
	mov	r0, 2147483615
	jg	rax, r0, .LBB0_3
	jmp	.LBB0_2
.LBB0_2:
	mov	r0, r2
	call	__bit_xor
	mov	r1, 2147483647
	mov	r0, rax
	call	__bit_xor
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	add	rax, -2147483647
	jmp	.LBB0_6
.LBB0_3:
	mov	r0, 149
	add	r3, -1
	jg	r4, r0, .LBB0_5
	jmp	.LBB0_4
.LBB0_4:
	mov	r1, 150
	sub	r1, r4
	mov	r0, r5
	call	__bit_shr
	mul	rax, r3
	jmp	.LBB0_6
.LBB0_5:
	add	r4, -150
	mov	r0, r5
	mov	r1, r4
	call	__bit_shl
	mul	rax, r3
.LBB0_6:
	ret
// -- End function
