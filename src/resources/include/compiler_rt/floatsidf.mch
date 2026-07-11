#include "_ll_std"

// -- Begin function __floatsidf
__floatsidf:                            // @__floatsidf
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
	mov	x1, 0
	mov	t0, 0
	jz	r0, .LBB0_36
	jmp	.LBB0_1
.LBB0_1:
	mov	r1, -1
	mov	x1, r0
	jg	r0, r1, .LBB0_3
	jmp	.LBB0_2
.LBB0_2:
	mov	x1, 0
	sub	x1, r0
.LBB0_3:
	mov	x5, 0
	mov	x0, -2147483648
	jl	r0, x5, .LBB0_5
	jmp	.LBB0_4
.LBB0_4:
	mov	x0, 0
.LBB0_5:
	mov	x2, 1
	mov	r0, 1
	jl	x1, x5, .LBB0_7
// %bb.6:
	mov	r0, 0
.LBB0_7:
	mov	r2, r0
	mul	r2, 1073741824
	mul	r0, -2147483648
	mov	r1, x1
	sub	r1, r0
	div	r1, 2
	add	r1, r2
	mov	r0, x1
	call	__bit_or
	jl	rax, x5, .LBB0_9
// %bb.8:
	mov	x2, 0
.LBB0_9:
	mov	r0, x2
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 4
	mul	x2, 536870912
	add	x2, r1
	mov	r0, rax
	mov	r1, x2
	call	__bit_or
	mov	x2, 1
	mov	r1, 1
	jl	rax, x5, .LBB0_11
// %bb.10:
	mov	r1, 0
.LBB0_11:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 16
	mul	r1, 134217728
	add	r1, r2
	mov	r0, rax
	call	__bit_or
	jl	rax, x5, .LBB0_13
// %bb.12:
	mov	x2, 0
.LBB0_13:
	mov	r0, x2
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 256
	mul	x2, 8388608
	add	x2, r1
	mov	r0, rax
	mov	r1, x2
	call	__bit_or
	mov	x3, 1
	mov	r1, 1
	jl	rax, x5, .LBB0_15
// %bb.14:
	mov	r1, 0
.LBB0_15:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 65536
	mul	r1, 32768
	add	r1, r2
	mov	r0, rax
	call	__bit_or
	mov	x2, rax
	jl	x2, x5, .LBB0_17
// %bb.16:
	mov	x3, 0
.LBB0_17:
	mov	r0, x3
	mul	r0, -2147483648
	mov	r1, x2
	sub	r1, r0
	div	r1, 2
	mul	x3, 1073741824
	add	x3, r1
	mov	r1, 1431655765
	mov	r0, x3
	call	__bit_and
	sub	x2, rax
	mov	x4, 1
	mov	r0, 1
	jl	x2, x5, .LBB0_19
// %bb.18:
	mov	r0, 0
.LBB0_19:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x2
	sub	r2, r1
	div	r2, 4
	mul	r0, 536870912
	add	r0, r2
	mov	r1, 858993459
	call	__bit_and
	mov	r1, 858993459
	mov	x3, rax
	mov	r0, x2
	call	__bit_and
	add	rax, x3
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
	jl	r0, x5, .LBB0_21
// %bb.20:
	mov	x4, 0
.LBB0_21:
	mov	r1, x4
	mul	r1, -2147483648
	sub	r0, r1
	div	r0, 16777216
	mul	x4, 128
	add	x4, r0
	mov	x6, 32
	sub	x6, x4
	mov	r0, x6
	div	r0, 32
	mul	r0, 32
	mov	r1, x6
	sub	r1, r0
	add	r1, r1
	mov	x8, x6
	sub	x8, r1
	mov	x2, 21
	sub	x2, x8
	mov	r1, 32
	mov	x3, 32
	mov	r0, x2
	call	__udivsi3
	mul	rax, 32
	sub	x2, rax
	mov	r1, 0
	sub	r1, x2
	mov	r0, x2
	call	__bit_or
	mov	r2, 1
	mov	r0, 1
	jl	rax, x5, .LBB0_23
// %bb.22:
	mov	r0, 0
.LBB0_23:
	mov	r1, r0
	mul	r1, -2147483648
	sub	rax, r1
	mov	x9, -2147483648
	je	rax, x9, .LBB0_25
// %bb.24:
	mov	r2, 0
.LBB0_25:
	mov	r1, 0
	sub	r1, r2
	mov	x7, 1
	mov	r2, 1
	jl	r1, x5, .LBB0_27
// %bb.26:
	mov	r2, 0
.LBB0_27:
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
	sub	x3, x2
	mov	x4, 0
	mov	r0, x3
	div	r0, 32
	mul	r0, 32
	sub	x3, r0
	sub	x4, r1
	mov	r0, x1
	mov	r1, x3
	call	__bit_shr
	mov	r0, rax
	mov	r1, x4
	call	__bit_and
	mov	r1, -11
	sub	r1, x8
	jl	r1, x5, .LBB0_29
// %bb.28:
	mov	x7, 0
.LBB0_29:
	mov	r0, x7
	mul	r0, -2147483648
	sub	r1, r0
	mov	r0, 1
	mov	r2, 1
	je	r1, x9, .LBB0_31
// %bb.30:
	mov	r2, 0
.LBB0_31:
	mov	r1, 0
	sub	r1, r2
	jl	r1, x5, .LBB0_33
// %bb.32:
	mov	r0, 0
.LBB0_33:
	mov	r2, r0
	mul	r2, -2147483648
	mov	r3, r1
	sub	r3, r2
	div	r3, 2
	mul	r0, 1073741824
	add	r0, r3
	mul	r0, 2
	sub	r1, r0
	add	r1, x7
	mov	x3, 0
	sub	x3, r1
	mov	r0, rax
	mov	r1, x3
	call	__bit_and
	mov	x4, rax
	mov	r0, x1
	mov	r1, x2
	call	__bit_shl
	mov	r1, -1
	sub	r1, x3
	mov	x2, rax
	mov	r0, x2
	call	__bit_and
	mov	x1, rax
	add	x1, x4
	mov	r0, x2
	mov	r1, x3
	call	__bit_and
	mov	r0, 1
	jl	x1, x5, .LBB0_35
// %bb.34:
	mov	r0, 0
.LBB0_35:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x1
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
	sub	x1, r0
add	x1, 1048576
	mov	r3, 1054
	sub	r3, x6
	mul	r3, 1048576
	mov	r2, 0
	mov	r0, rax
	mov	r1, x1
	call	__adddi3
	mov	x1, rax
	mov	r0, t0
	mov	r1, x0
	call	__bit_or
	mov	t0, rax
.LBB0_36:
	mov	rax, x1
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
