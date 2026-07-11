#include "_ll_std"

// -- Begin function __extendsfdf2
__extendsfdf2:                          // @__extendsfdf2
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
	mov	r1, r0
	mov	r0, 0
	mov	r2, 1
	jl	r1, r0, .LBB0_2
// %bb.1:
	mov	r2, 0
.LBB0_2:
	mov	r3, r2
	mul	r3, 256
	mul	r2, -2147483648
	mov	r0, r1
	sub	r0, r2
	div	r0, 8388608
	add	r0, r3
	mov	r3, r0
	mul	r3, 8388608
	mov	x0, r1
	mov	r4, r0
	div	r4, 256
	mul	r4, 256
	mov	r2, r0
	sub	r2, r4
	sub	x0, r3
	jz	r2, .LBB0_12
	jmp	.LBB0_3
.LBB0_3:
	mov	r3, 255
	je	r2, r3, .LBB0_9
	jmp	.LBB0_4
.LBB0_4:
	mov	r3, 0
	mov	r2, 1
	mov	r4, 1
	jl	r0, r3, .LBB0_6
// %bb.5:
	mov	r4, 0
.LBB0_6:
	mov	r5, r4
	mul	r5, 8388608
	mul	r4, -2147483648
	mov	r6, r0
	sub	r6, r4
	div	r6, 256
	add	r6, r5
	mul	r6, 256
	sub	r0, r6
	jl	x0, r3, .LBB0_8
// %bb.7:
	mov	r2, 0
.LBB0_8:
add	r0, 896
	mov	r3, r2
	mul	r3, 268435456
	mul	r2, -2147483648
	mov	x1, x0
	sub	x1, r2
	div	x1, 8
	mul	x0, 536870912
	add	x1, r3
	mov	x2, x0
	jmp	.LBB0_46
.LBB0_9:
	mov	r2, 0
	mov	r0, 1
	jl	x0, r2, .LBB0_11
// %bb.10:
	mov	r0, 0
.LBB0_11:
	mov	r2, r0
	mul	r2, 268435456
	mul	r0, -2147483648
	mov	x1, x0
	sub	x1, r0
	div	x1, 8
	add	x1, r2
	mul	x0, 536870912
	mov	r0, 2047
	mov	x2, x0
	jmp	.LBB0_46
.LBB0_12:
	mov	x2, 0
	mov	x1, 0
	mov	r0, 0
	jz	x0, .LBB0_46
	jmp	.LBB0_13
.LBB0_13:
	mov	x4, r1
	mov	x5, 0
	mov	x1, 1
	mov	r0, 1
	jl	x0, x5, .LBB0_15
// %bb.14:
	mov	r0, 0
.LBB0_15:
	mov	r2, r0
	mul	r2, 1073741824
	mul	r0, -2147483648
	mov	r1, x0
	sub	r1, r0
	div	r1, 2
	add	r1, r2
	mov	r0, x0
	call	__bit_or
	jl	rax, x5, .LBB0_17
// %bb.16:
	mov	x1, 0
.LBB0_17:
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
	jl	rax, x5, .LBB0_19
// %bb.18:
	mov	r1, 0
.LBB0_19:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 16
	mul	r1, 134217728
	add	r1, r2
	mov	r0, rax
	call	__bit_or
	jl	rax, x5, .LBB0_21
// %bb.20:
	mov	x1, 0
.LBB0_21:
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
	jl	rax, x5, .LBB0_23
// %bb.22:
	mov	r1, 0
.LBB0_23:
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
	jl	x1, x5, .LBB0_25
// %bb.24:
	mov	x2, 0
.LBB0_25:
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
	jl	x1, x5, .LBB0_27
// %bb.26:
	mov	r0, 0
.LBB0_27:
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
	jl	r0, x5, .LBB0_29
// %bb.28:
	mov	x3, 0
.LBB0_29:
	mov	r1, x3
	mul	r1, -2147483648
	sub	r0, r1
	div	r0, 16777216
	mul	x3, 128
	add	x3, r0
	mov	x1, 53
	sub	x1, x3
	mov	x2, 1
	mov	r0, 1
	jl	x1, x5, .LBB0_31
// %bb.30:
	mov	r0, 0
.LBB0_31:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x1
	sub	r2, r1
	div	r2, 32
	mul	r0, 67108864
	add	r0, r2
	mul	r0, 32
	sub	x1, r0
	mov	r1, 0
	sub	r1, x1
	mov	r0, x1
	call	__bit_or
	jl	rax, x5, .LBB0_33
// %bb.32:
	mov	x2, 0
.LBB0_33:
	mov	r0, x2
	mul	r0, -2147483648
	sub	rax, r0
	mov	x7, -2147483648
	mov	r1, 1
	mov	r2, 1
	je	rax, x7, .LBB0_35
// %bb.34:
	mov	r2, 0
.LBB0_35:
	mov	r0, 0
	sub	r0, r2
	mov	x6, 32
	jl	r0, x5, .LBB0_37
// %bb.36:
	mov	r1, 0
.LBB0_37:
	mov	r2, r1
	mul	r2, -2147483648
	mov	r3, r0
	sub	r3, r2
	div	r3, 2
	mul	r1, 1073741824
	add	r1, r3
	mul	r1, 2
	sub	r0, r1
	add	r0, x2
	mov	r1, 32
	sub	r1, x1
	mov	x2, 0
	mov	r2, r1
	div	r2, 32
	mul	r2, 32
	sub	r1, r2
	sub	x2, r0
	mov	r0, x0
	call	__bit_shr
	mov	r0, rax
	mov	r1, x2
	call	__bit_and
	mov	r1, 21
	sub	r1, x3
	mov	r2, 1
	mov	r0, 1
	jl	r1, x5, .LBB0_39
// %bb.38:
	mov	r0, 0
.LBB0_39:
	mov	r3, r0
	mul	r3, -2147483648
	sub	r1, r3
	je	r1, x7, .LBB0_41
// %bb.40:
	mov	r2, 0
.LBB0_41:
	mov	r1, 0
	sub	r1, r2
	mov	x7, 1
	mov	r2, 1
	jl	r1, x5, .LBB0_43
// %bb.42:
	mov	r2, 0
.LBB0_43:
	sub	x6, x3
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
	mov	x0, rax
	mov	r0, x0
	call	__bit_and
	mov	x1, rax
	add	x1, x3
	mov	r0, x0
	mov	r1, x2
	call	__bit_and
	mov	x2, rax
	jl	x1, x5, .LBB0_45
// %bb.44:
	mov	x7, 0
.LBB0_45:
	mov	r0, x7
	mul	r0, -2147483648
	mov	r1, x1
	sub	r1, r0
	div	r1, 1048576
	mul	x7, 2048
	add	x7, r1
	mov	r0, 905
	sub	r0, x6
	mov	r1, x7
	div	r1, 2
	mul	r1, 2
	sub	x7, r1
	mul	x7, 1048576
	add	x7, x7
	sub	x1, x7
add	x1, 1048576
	mov	r1, x4
.LBB0_46:
	mov	r3, 0
	mov	r4, 1
	mov	r2, 1
	jl	r1, r3, .LBB0_48
// %bb.47:
	mov	r2, 0
.LBB0_48:
	mov	r5, r2
	mul	r5, -2147483648
	sub	r1, r5
	mov	r5, -2147483648
	je	r1, r5, .LBB0_50
// %bb.49:
	mov	r4, 0
.LBB0_50:
	mov	r1, 0
	sub	r1, r4
	mov	r4, 1
	jl	r1, r3, .LBB0_52
// %bb.51:
	mov	r4, 0
.LBB0_52:
	mov	r3, r4
	mul	r3, -2147483648
	mov	r5, r1
	sub	r5, r3
	div	r5, 2
	mul	r4, 1073741824
	add	r4, r5
	mul	r4, 2
	sub	r1, r4
	add	r1, r2
	mul	r1, -2147483648
	mul	r0, 1048576
	call	__bit_or
	mov	r0, rax
	mov	r1, x1
	call	__bit_or
	mov	t0, rax
	mov	rax, x2
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
