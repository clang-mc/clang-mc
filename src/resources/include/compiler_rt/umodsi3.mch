#include "_ll_std"

// -- Begin function __umodsi3
__umodsi3:                              // @__umodsi3
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
	mov	x1, r0
	mov	x5, 32
	mov	x2, 32
	jz	x0, .LBB0_2
	jmp	.LBB0_1
.LBB0_1:
	mov	r1, 1
	mov	r0, x0
	call	__bit_shr
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	x2, rax
	mov	r0, x2
	call	__bit_shr
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r1, 4
	mov	x2, rax
	mov	r0, x2
	call	__bit_shr
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r1, 8
	mov	x2, rax
	mov	r0, x2
	call	__bit_shr
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r1, 16
	mov	x2, rax
	mov	r0, x2
	call	__bit_shr
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	x2, rax
	mov	r0, x2
	call	__bit_shr
	mov	r1, 1431655765
	mov	r0, rax
	call	__bit_and
	sub	x2, rax
	mov	r1, 2
	mov	r0, x2
	call	__bit_shr
	mov	r1, 858993459
	mov	r0, rax
	call	__bit_and
	mov	r1, 858993459
	mov	x3, rax
	mov	r0, x2
	call	__bit_and
	add	x3, rax
	mov	r1, 4
	mov	r0, x3
	call	__bit_shr
	add	x3, rax
	mov	r1, 252645135
	mov	r0, x3
	call	__bit_and
	mul	rax, 16843009
	mov	r1, 24
	mov	r0, rax
	call	__bit_shr
	mov	x2, 32
	sub	x2, rax
.LBB0_2:
	jz	x1, .LBB0_4
	jmp	.LBB0_3
.LBB0_3:
	mov	r1, 1
	mov	r0, x1
	call	__bit_shr
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	x3, rax
	mov	r0, x3
	call	__bit_shr
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r1, 4
	mov	x3, rax
	mov	r0, x3
	call	__bit_shr
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r1, 8
	mov	x3, rax
	mov	r0, x3
	call	__bit_shr
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r1, 16
	mov	x3, rax
	mov	r0, x3
	call	__bit_shr
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	x3, rax
	mov	r0, x3
	call	__bit_shr
	mov	r1, 1431655765
	mov	r0, rax
	call	__bit_and
	sub	x3, rax
	mov	r1, 2
	mov	r0, x3
	call	__bit_shr
	mov	r1, 858993459
	mov	r0, rax
	call	__bit_and
	mov	r1, 858993459
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	add	x4, rax
	mov	r1, 4
	mov	r0, x4
	call	__bit_shr
	add	x4, rax
	mov	r1, 252645135
	mov	r0, x4
	call	__bit_and
	mul	rax, 16843009
	mov	r1, 24
	mov	r0, rax
	call	__bit_shr
	sub	x5, rax
.LBB0_4:
	mov	x6, x2
	sub	x6, x5
	mov	r0, x6
add	r0, -2147483648
	mov	r1, -2147483617
	mov	x3, x1
	jg	r0, r1, .LBB0_12
	jmp	.LBB0_5
.LBB0_5:
	mov	x4, 31
	mov	x3, 0
	je	x6, x4, .LBB0_12
	jmp	.LBB0_6
.LBB0_6:
	mov	r1, x6
add	r1, 1
	mov	r0, x1
	call	__bit_shr
	sub	x4, x6
	mov	x3, rax
	mov	r0, x1
	mov	r1, x4
	call	__bit_shl
	mov	x4, rax
	mov	r0, x2
	call	__bit_not
	mov	x1, rax
	add	x1, x5
	mov	x6, 0
	mov	x2, 0
.LBB0_7:                                // =>This Inner Loop Header: Depth=1
	mov	r1, 1
	mov	r0, x3
	call	__bit_shl
	mov	r1, 31
	mov	x3, rax
	mov	r0, x4
	call	__bit_shr
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	x3, rax
	mov	r0, x4
	call	__bit_shl
	mov	r0, rax
	mov	r1, x2
	call	__bit_or
	mov	x4, rax
	mov	r0, x3
	call	__bit_not
	mov	x5, rax
	add	x5, x0
	mov	r1, 31
	mov	r0, x5
	call	__bit_shr
	mov	x2, rax
	mov	r2, x0
	jl	x5, x6, .LBB0_9
	jmp	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=1
	mov	r2, 0
.LBB0_9:                                //   in Loop: Header=BB0_7 Depth=1
add	x1, 1
	mov	r0, 1
	je	x1, x6, .LBB0_11
// %bb.10:                              //   in Loop: Header=BB0_7 Depth=1
	mov	r0, 0
.LBB0_11:                               //   in Loop: Header=BB0_7 Depth=1
	mov	r1, 1
	sub	x3, r2
	call	__bit_and
	jz	rax, .LBB0_7
	jmp	.LBB0_12
.LBB0_12:
	mov	rax, x3
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
