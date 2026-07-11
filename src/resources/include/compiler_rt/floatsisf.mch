#include "_ll_std"

// -- Begin function __floatsisf
__floatsisf:                            // @__floatsisf
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
	mov	rax, 0
	jz	r0, .LBB0_41
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
	mov	x4, 0
	mov	r1, 1
	mov	x5, 1
	jl	r0, x4, .LBB0_5
// %bb.4:
	mov	x5, 0
.LBB0_5:
	mov	r2, x5
	mul	r2, -2147483648
	sub	r0, r2
	mov	r2, -2147483648
	je	r0, r2, .LBB0_7
// %bb.6:
	mov	r1, 0
.LBB0_7:
	mov	x0, 0
	sub	x0, r1
	mov	r0, 1
	mov	x3, 1
	jl	x0, x4, .LBB0_9
// %bb.8:
	mov	x3, 0
.LBB0_9:
	jl	x1, x4, .LBB0_11
// %bb.10:
	mov	r0, 0
.LBB0_11:
	mov	x7, x3
	mov	r2, r0
	mul	r2, 1073741824
	mul	r0, -2147483648
	mov	r1, x1
	sub	r1, r0
	div	r1, 2
	add	r1, r2
	mul	x7, -2147483648
	mov	r0, x1
	call	__bit_or
	mov	x2, 1
	mov	r1, 1
	jl	rax, x4, .LBB0_13
// %bb.12:
	mov	r1, 0
.LBB0_13:
	mov	x6, x0
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 4
	mul	r1, 536870912
	add	r1, r2
	sub	x6, x7
	mov	r0, rax
	call	__bit_or
	jl	rax, x4, .LBB0_15
// %bb.14:
	mov	x2, 0
.LBB0_15:
	div	x6, 2
	mov	r0, x2
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 16
	mul	x2, 134217728
	add	x2, r1
	mul	x3, 1073741824
	mov	r0, rax
	mov	r1, x2
	call	__bit_or
	mov	x2, 1
	mov	r1, 1
	jl	rax, x4, .LBB0_17
// %bb.16:
	mov	r1, 0
.LBB0_17:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 256
	mul	r1, 8388608
	add	r1, r2
	add	x6, x3
	mov	r0, rax
	call	__bit_or
	jl	rax, x4, .LBB0_19
// %bb.18:
	mov	x2, 0
.LBB0_19:
	mov	r0, x2
	mul	r0, -2147483648
	mov	r1, rax
	sub	r1, r0
	div	r1, 65536
	mul	x2, 32768
	add	x2, r1
	mul	x6, 2
	mov	r0, rax
	mov	r1, x2
	call	__bit_or
	mov	x2, rax
	mov	x3, 1
	mov	r0, 1
	jl	x2, x4, .LBB0_21
// %bb.20:
	mov	r0, 0
.LBB0_21:
	mov	r1, r0
	mul	r1, -2147483648
	mov	r2, x2
	sub	r2, r1
	div	r2, 2
	mul	r0, 1073741824
	add	r0, r2
	mov	r1, 1431655765
	sub	x0, x6
	call	__bit_and
	sub	x2, rax
	jl	x2, x4, .LBB0_23
// %bb.22:
	mov	x3, 0
.LBB0_23:
	mov	r0, x3
	mul	r0, -2147483648
	mov	r1, x2
	sub	r1, r0
	div	r1, 4
	mul	x3, 536870912
	add	x3, r1
	mov	r1, 858993459
	add	x0, x5
	mov	r0, x3
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
	mov	r1, 1
	jl	r0, x4, .LBB0_25
// %bb.24:
	mov	r1, 0
.LBB0_25:
	mov	r2, r1
	mul	r2, -2147483648
	sub	r0, r2
	div	r0, 16777216
	mul	r1, 128
	add	r1, r0
	mov	x3, 32
	sub	x3, r1
	mov	r0, x3
	div	r0, 32
	mul	r0, 32
	mov	r1, x3
	sub	r1, r0
	add	r1, r1
	mov	r0, x3
	sub	r0, r1
add	r0, 31
	mov	r1, 23
	mul	x0, -2147483648
	jg	r0, r1, .LBB0_29
	jmp	.LBB0_26
.LBB0_26:
	sub	r1, r0
	mov	r0, x1
	call	__bit_shl
	mov	r0, rax
	mov	r2, 0
	mov	r1, 1
	jl	r0, r2, .LBB0_28
// %bb.27:
	mov	r1, 0
.LBB0_28:
	mov	r2, r1
	mul	r2, -2147483648
	mov	r3, r0
	sub	r3, r2
	div	r3, 8388608
	mul	r1, 256
	add	r1, r3
	mov	r2, r1
	div	r2, 2
	mul	r2, 2
	sub	r1, r2
	mul	r1, 8388608
	add	r1, r1
	sub	r0, r1
add	r0, 8388608
	jmp	.LBB0_40
.LBB0_29:
	mov	r1, 8
	sub	r1, x3
	mov	r0, x1
	call	__bit_shr
	mov	x2, rax
	mov	x5, 1
	mov	x6, 1
	jl	x2, x4, .LBB0_31
// %bb.30:
	mov	x6, 0
.LBB0_31:
	mov	r0, x6
	mul	r0, -2147483648
	mov	r1, x2
	sub	r1, r0
	div	r1, 8388608
	mul	x6, 256
	add	x6, r1
	mov	r0, x6
	div	r0, 2
	mul	r0, 2
	sub	x6, r0
	mul	x6, 8388608
	mov	r1, x3
add	r1, 24
	add	x6, x6
	mov	r0, x1
	call	__bit_shl
	mov	r0, rax
add	r0, -2147483648
	jg	r0, x4, .LBB0_33
// %bb.32:
	mov	x5, 0
.LBB0_33:
	sub	x2, x6
	mov	r1, 1
	mov	r0, 1
	jl	x5, x4, .LBB0_35
// %bb.34:
	mov	r0, 0
.LBB0_35:
	mov	r2, r0
	mul	r2, -2147483648
	mov	r3, x5
	sub	r3, r2
	div	r3, 2
	mul	r0, 1073741824
	add	r0, r3
	mul	r0, 2
	sub	x5, r0
	add	x2, x5
add	x2, 8388608
	jl	x2, x4, .LBB0_37
// %bb.36:
	mov	r1, 0
.LBB0_37:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, x2
	sub	r2, r0
	div	r2, 2
	mul	r1, 1073741824
	add	r1, r2
	mul	r1, 2
	mov	r0, x2
	mov	r2, -2147483648
	sub	r0, r1
	je	rax, r2, .LBB0_39
	jmp	.LBB0_38
.LBB0_38:
	mov	r0, 0
.LBB0_39:
	add	r0, x2
.LBB0_40:
	mul	x3, 8388608
	sub	r0, x3
add	r0, 1325400064
	mov	r1, x0
	call	__bit_or
.LBB0_41:
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
