#include "_ll_std"

// -- Begin function __floatunsidf
__floatunsidf:                          // @__floatunsidf
// %bb.0:
sub	rsp, 36
	mov	[rsp+32], x0
	mov	[rsp+28], x1
	mov	[rsp+24], x2
	mov	[rsp+20], x3
	mov	[rsp+16], x4
	mov	[rsp+12], x5
	mov	[rsp+8], x6
	mov	[rsp+4], x7
	mov	[rsp], x8
	mov	x0, r0
	mov	rax, 0
	mov	t0, 0
	jz	x0, .LBB0_32
	jmp	.LBB0_1
.LBB0_1:
	mov	x4, 0
	mov	x1, 1
	mov	r0, 1
	jl	x0, x4, .LBB0_3
// %bb.2:
	mov	r0, 0
.LBB0_3:
	mov	r2, r0
	mul	r2, 1073741824
	mul	r0, -2147483648
	mov	r1, x0
	sub	r1, r0
	div	r1, 2
	add	r1, r2
	mov	r0, x0
	call	__bit_or
	jl	rax, x4, .LBB0_5
// %bb.4:
	mov	x1, 0
.LBB0_5:
	mov	r0, x1
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 4
	mul	x1, 536870912
	add	x1, r1
	mov	r0, rax
	mov	r1, x1
	call	__bit_or
	mov	x1, 1
	mov	r1, 1
	jl	rax, x4, .LBB0_7
// %bb.6:
	mov	r1, 0
.LBB0_7:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 16
	mul	r1, 134217728
	add	r1, r2
	mov	r0, rax
	call	__bit_or
	jl	rax, x4, .LBB0_9
// %bb.8:
	mov	x1, 0
.LBB0_9:
	mov	r0, x1
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 256
	mul	x1, 8388608
	add	x1, r1
	mov	r0, rax
	mov	r1, x1
	call	__bit_or
	mov	x2, 1
	mov	r1, 1
	jl	rax, x4, .LBB0_11
// %bb.10:
	mov	r1, 0
.LBB0_11:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 65536
	mul	r1, 32768
	add	r1, r2
	mov	r0, rax
	call	__bit_or
	mov	x1, rax
	jl	x1, x4, .LBB0_13
// %bb.12:
	mov	x2, 0
.LBB0_13:
	mov	r0, x2
	mul	r0, -2147483648
	mov	r1, x1
	sub	r1, r0
	div	r1, 2
	mul	x2, 1073741824
	add	x2, r1
	mov	r1, 1431655765
	mov	r0, x2
	call	__bit_and
	sub	x1, rax
	mov	x3, 1
	mov	r0, 1
	jl	x1, x4, .LBB0_15
// %bb.14:
	mov	r0, 0
.LBB0_15:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x1
	sub	r2, r1
	div	r2, 4
	mul	r0, 536870912
	add	r0, r2
	mov	r1, 858993459
	call	__bit_and
	mov	r1, 858993459
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	add	rax, x2
	mov	r0, rax
	div	r0, 16
	add	r0, rax
	mov	r1, r0
	div	r1, 16
	mul	r1, 16
	mov	r2, r0
	mov	r3, r0
	div	r3, 256
	sub	r2, r1
	mov	r1, r3
	div	r1, 16
	mul	r1, 16
	sub	r3, r1
	mul	r3, 256
	mov	r1, r0
	div	r1, 65536
	add	r3, r2
	mov	r2, r1
	div	r2, 16
	mul	r2, 16
	sub	r1, r2
	mul	r1, 65536
	div	r0, 16777216
	add	r1, r3
	mov	r2, r0
	div	r2, 16
	mul	r2, 16
	sub	r0, r2
	mul	r0, 16777216
	add	r0, r1
	mul	r0, 16843009
	jl	r0, x4, .LBB0_17
// %bb.16:
	mov	x3, 0
.LBB0_17:
	mov	r1, x3
	mul	r1, -2147483648
	sub	r0, r1
	div	r0, 16777216
	mul	x3, 128
	add	x3, r0
	mov	x5, 32
	sub	x5, x3
	mov	r0, x5
	div	r0, 32
	mul	r0, 32
	mov	r1, x5
	sub	r1, r0
	add	r1, r1
	mov	x7, x5
	sub	x7, r1
	mov	x1, 21
	sub	x1, x7
	mov	r1, 32
	mov	x2, 32
	mov	r0, x1
	call	__udivsi3
	mul	rax, 32
	sub	x1, rax
	mov	r1, 0
	sub	r1, x1
	mov	r0, x1
	call	__bit_or
	mov	r2, 1
	mov	r0, 1
	jl	rax, x4, .LBB0_19
// %bb.18:
	mov	r0, 0
.LBB0_19:
	mov	r1, r0
	mul	r1, -2147483648
	sub	rax, r1
	mov	x8, -2147483648
	je	rax, x8, .LBB0_21
// %bb.20:
	mov	r2, 0
.LBB0_21:
	mov	r1, 0
	sub	r1, r2
	mov	x6, 1
	mov	r2, 1
	jl	r1, x4, .LBB0_23
// %bb.22:
	mov	r2, 0
.LBB0_23:
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
	sub	x2, x1
	mov	x3, 0
	mov	r0, x2
	div	r0, 32
	mul	r0, 32
	sub	x2, r0
	sub	x3, r1
	mov	r0, x0
	mov	r1, x2
	call	__bit_shr
	mov	r0, rax
	mov	r1, x3
	call	__bit_and
	mov	r1, -11
	sub	r1, x7
	jl	r1, x4, .LBB0_25
// %bb.24:
	mov	x6, 0
.LBB0_25:
	mov	r0, x6
	mul	r0, -2147483648
	sub	r1, r0
	mov	r0, 1
	mov	r2, 1
	je	r1, x8, .LBB0_27
// %bb.26:
	mov	r2, 0
.LBB0_27:
	mov	r1, 0
	sub	r1, r2
	jl	r1, x4, .LBB0_29
// %bb.28:
	mov	r0, 0
.LBB0_29:
	mov	r2, r0
	mul	r2, -2147483648
	mov	r3, r1
	sub	r3, r2
	div	r3, 2
	mul	r0, 1073741824
	add	r0, r3
	mul	r0, 2
	sub	r1, r0
	add	r1, x6
	mov	x2, 0
	sub	x2, r1
	mov	r0, rax
	mov	r1, x2
	call	__bit_and
	mov	x3, rax
	mov	r0, x0
	mov	r1, x1
	call	__bit_shl
	mov	r1, -1
	sub	r1, x2
	mov	x1, rax
	mov	r0, x1
	call	__bit_and
	mov	x0, rax
	add	x0, x3
	mov	r0, x1
	mov	r1, x2
	call	__bit_and
	mov	r0, 1
	jl	x0, x4, .LBB0_31
// %bb.30:
	mov	r0, 0
.LBB0_31:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x0
	sub	r2, r1
	div	r2, 1048576
	mul	r0, 2048
	add	r0, r2
	mov	r1, r0
	div	r1, 2
	mul	r1, 2
	sub	r0, r1
	mul	r0, 1048576
	add	r0, r0
	sub	x0, r0
add	x0, 1048576
	mov	r3, 1054
	sub	r3, x5
	mul	r3, 1048576
	mov	r2, 0
	mov	r0, rax
	mov	r1, x0
	call	__adddi3
.LBB0_32:
	mov	x8, [rsp]
	mov	x7, [rsp+4]
	mov	x6, [rsp+8]
	mov	x5, [rsp+12]
	mov	x4, [rsp+16]
	mov	x3, [rsp+20]
	mov	x2, [rsp+24]
	mov	x1, [rsp+28]
	mov	x0, [rsp+32]
add	rsp, 36
	ret
// -- End function
