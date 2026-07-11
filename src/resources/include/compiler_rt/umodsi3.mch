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
	mov	x4, 32
	mov	x5, 32
	jz	x0, .LBB0_18
	jmp	.LBB0_1
.LBB0_1:
	mov	x5, 0
	mov	x2, 1
	mov	r0, 1
	jl	x0, x5, .LBB0_3
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
	jl	rax, x5, .LBB0_5
// %bb.4:
	mov	x2, 0
.LBB0_5:
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
	jl	rax, x5, .LBB0_7
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
	jl	rax, x5, .LBB0_9
// %bb.8:
	mov	x2, 0
.LBB0_9:
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
	jl	rax, x5, .LBB0_11
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
	mov	x2, rax
	jl	x2, x5, .LBB0_13
// %bb.12:
	mov	x3, 0
.LBB0_13:
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
	mov	x6, 1
	mov	r0, 1
	jl	x2, x5, .LBB0_15
// %bb.14:
	mov	r0, 0
.LBB0_15:
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
	jl	r0, x5, .LBB0_17
// %bb.16:
	mov	x6, 0
.LBB0_17:
	mov	r1, x6
	mul	r1, -2147483648
	sub	r0, r1
	div	r0, 16777216
	mul	x6, 128
	add	x6, r0
	mov	x5, 32
	sub	x5, x6
.LBB0_18:
	jz	x1, .LBB0_36
	jmp	.LBB0_19
.LBB0_19:
	mov	x4, 0
	mov	x2, 1
	mov	r0, 1
	jl	x1, x4, .LBB0_21
// %bb.20:
	mov	r0, 0
.LBB0_21:
	mov	r2, r0
	mul	r2, 1073741824
	mul	r0, -2147483648
	mov	r1, x1
	sub	r1, r0
	div	r1, 2
	add	r1, r2
	mov	r0, x1
	call	__bit_or
	jl	rax, x4, .LBB0_23
// %bb.22:
	mov	x2, 0
.LBB0_23:
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
	jl	rax, x4, .LBB0_25
// %bb.24:
	mov	r1, 0
.LBB0_25:
	mov	r0, r1
	mul	r0, -2147483648
	mov	r2, rax
	sub	r2, r0
	div	r2, 16
	mul	r1, 134217728
	add	r1, r2
	mov	r0, rax
	call	__bit_or
	jl	rax, x4, .LBB0_27
// %bb.26:
	mov	x2, 0
.LBB0_27:
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
	jl	rax, x4, .LBB0_29
// %bb.28:
	mov	r1, 0
.LBB0_29:
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
	jl	x2, x4, .LBB0_31
// %bb.30:
	mov	x3, 0
.LBB0_31:
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
	mov	x6, 1
	mov	r0, 1
	jl	x2, x4, .LBB0_33
// %bb.32:
	mov	r0, 0
.LBB0_33:
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
	jl	r0, x4, .LBB0_35
// %bb.34:
	mov	x6, 0
.LBB0_35:
	mov	r1, x6
	mul	r1, -2147483648
	sub	r0, r1
	div	r0, 16777216
	mul	x6, 128
	add	x6, r0
	mov	x4, 32
	sub	x4, x6
.LBB0_36:
	mov	x6, x5
	sub	x6, x4
	mov	r0, x6
add	r0, -2147483648
	mov	r1, -2147483617
	mov	x2, x1
	jg	r0, r1, .LBB0_58
	jmp	.LBB0_37
.LBB0_37:
	mov	x3, 31
	mov	x2, 0
	je	x6, x3, .LBB0_58
	jmp	.LBB0_38
.LBB0_38:
	mov	r1, x6
add	r1, 1
	mov	r0, x1
	call	__bit_shr
	sub	x3, x6
	mov	x2, rax
	mov	r0, x1
	mov	r1, x3
	call	__bit_shl
	sub	x4, x5
add	x4, -1
	mov	x1, 0
	mov	x3, -2147483648
	mov	r1, 0
.LBB0_39:                               // =>This Inner Loop Header: Depth=1
	mov	r3, 1
	mov	r0, 1
	jl	rax, x1, .LBB0_41
// %bb.40:                              //   in Loop: Header=BB0_39 Depth=1
	mov	r0, 0
.LBB0_41:                               //   in Loop: Header=BB0_39 Depth=1
	mov	r2, r0
	mul	r2, -2147483648
	mov	r4, rax
	sub	r4, r2
	je	r4, x3, .LBB0_43
// %bb.42:                              //   in Loop: Header=BB0_39 Depth=1
	mov	r3, 0
.LBB0_43:                               //   in Loop: Header=BB0_39 Depth=1
	mov	r2, 0
	sub	r2, r3
	mov	x5, 1
	mov	r3, 1
	jl	r2, x1, .LBB0_45
// %bb.44:                              //   in Loop: Header=BB0_39 Depth=1
	mov	r3, 0
.LBB0_45:                               //   in Loop: Header=BB0_39 Depth=1
	mov	r4, r3
	mul	r4, -2147483648
	mov	r5, r2
	sub	r5, r4
	div	r5, 2
	mul	r3, 1073741824
	add	r3, r5
	mul	r3, 2
	sub	r2, r3
	add	r2, r0
	mul	x2, 2
	mul	rax, 2
	add	x2, r2
	mov	r0, rax
	call	__bit_or
	mov	r3, x0
	sub	r3, x2
add	r3, -1
	jl	r3, x1, .LBB0_47
// %bb.46:                              //   in Loop: Header=BB0_39 Depth=1
	mov	x5, 0
.LBB0_47:                               //   in Loop: Header=BB0_39 Depth=1
	mov	r0, x5
	mul	r0, -2147483648
	mov	r1, r3
	sub	r1, r0
	mov	r2, 1
	mov	r0, 1
	je	r1, x3, .LBB0_49
// %bb.48:                              //   in Loop: Header=BB0_39 Depth=1
	mov	r0, 0
.LBB0_49:                               //   in Loop: Header=BB0_39 Depth=1
	mov	r1, 0
	sub	r1, r0
	jl	r1, x1, .LBB0_51
// %bb.50:                              //   in Loop: Header=BB0_39 Depth=1
	mov	r2, 0
.LBB0_51:                               //   in Loop: Header=BB0_39 Depth=1
	mov	r0, x0
	jl	r3, x1, .LBB0_53
	jmp	.LBB0_52
.LBB0_52:                               //   in Loop: Header=BB0_39 Depth=1
	mov	r0, 0
.LBB0_53:                               //   in Loop: Header=BB0_39 Depth=1
add	x4, 1
	mov	r4, 1
	mov	r3, 1
	je	x4, x1, .LBB0_55
// %bb.54:                              //   in Loop: Header=BB0_39 Depth=1
	mov	r3, 0
.LBB0_55:                               //   in Loop: Header=BB0_39 Depth=1
	jl	r3, x1, .LBB0_57
// %bb.56:                              //   in Loop: Header=BB0_39 Depth=1
	mov	r4, 0
.LBB0_57:                               //   in Loop: Header=BB0_39 Depth=1
	mov	r5, r2
	mul	r5, -2147483648
	mov	r6, r1
	sub	r6, r5
	div	r6, 2
	mul	r2, 1073741824
	add	r2, r6
	mul	r2, 2
	sub	r1, r2
	add	r1, x5
	mov	r2, r4
	mul	r2, -2147483648
	mov	r5, r3
	sub	r5, r2
	div	r5, 2
	mul	r4, 1073741824
	add	r4, r5
	mul	r4, 2
	sub	r3, r4
	sub	x2, r0
	jz	r3, .LBB0_39
	jmp	.LBB0_58
.LBB0_58:
	mov	rax, x2
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
