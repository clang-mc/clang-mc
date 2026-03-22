#include "_ll_std"

// -- Begin function __fixdfsi
__fixdfsi:                              // @__fixdfsi
// %bb.0:
	mov	r5, r1
	mov	r1, 20
	mov	r2, r0
	mov	r0, r5
	call	__bit_shr
	mov	r1, 2047
	mov	r0, rax
	call	__bit_and
	mov	r1, 1048575
	mov	r4, rax
	mov	r0, r5
	call	__bit_and
	mov	r1, 1048576
	mov	r0, rax
	call	__bit_or
	mov	r3, rax
	mov	r0, 1023
	mov	rax, 0
	jl	r4, r0, .LBB0_4
	jmp	.LBB0_1
.LBB0_1:
	mov	r0, r4
	add	r0, -1055
	mov	r1, -2147483648
	call	__bit_xor
	mov	r0, 2147483615
	jg	rax, r0, .LBB0_3
	jmp	.LBB0_2
.LBB0_2:
	mov	r0, r5
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
	jmp	.LBB0_4
.LBB0_3:
	mov	r0, r5
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
	mov	r0, 1075
	sub	r0, r4
	mov	r1, 31
	mov	r5, rax
	call	__bit_and
	mov	r6, rax
	mov	r1, 0
	sub	r1, r6
	mov	r7, 0
	mov	r0, r6
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r0, 1043
	sub	r0, r4
	mov	r4, rax
	call	__bit_shr
	mov	t1, rax
	mov	r0, r3
	mov	r1, r6
	call	__bit_shr
	mov	t2, 0
	sub	t2, t1
	mov	r1, rax
	mov	r0, t2
	call	__bit_not
	mov	r0, r1
	mov	r1, rax
	call	__bit_and
	mov	t1, rax
	mov	r0, r2
	mov	r1, r6
	call	__bit_shr
	mov	r0, 32
	sub	r0, r6
	mov	r1, 31
	mov	r2, rax
	call	__bit_and
	mov	r0, r3
	mov	r1, rax
	call	__bit_shl
	sub	r7, r4
	mov	r0, rax
	mov	r1, r7
	call	__bit_and
	mov	r0, r2
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, t2
	call	__bit_and
	mov	r0, rax
	mov	r1, t1
	call	__bit_or
	mov	r2, rax
	mov	r1, r2
	add	r1, r1
	mov	r0, r5
	call	__bit_not
	add	rax, 1
	mov	r0, rax
	call	__bit_and
	sub	rax, r2
.LBB0_4:
	ret
// -- End function
