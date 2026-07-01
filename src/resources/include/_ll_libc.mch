#once

#include "_ll_std"

// -- Begin function cabs
cabs:                                   // @cabs
// %bb.0:
sub	rsp, 16
	mov	[rsp+12], x0
	mov	[rsp+8], x1
	mov	[rsp+4], x2
	mov	[rsp], x3
	mov	x0, [r0]
	mov	r3, r0
add	r3, 4
	mov	r1, r0
add	r1, 8
	mov	r2, [r1]
add	r0, 12
	mov	r1, [r0]
	mov	x1, [r3]
	mov	r0, r2
	mov	r3, r1
	call	__muldf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x0
	mov	r1, x1
	mov	r2, x0
	mov	r3, x1
	call	__muldf3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x2
	mov	r3, x3
	call	__adddf3
	mov	r1, t0
	mov	r0, rax
	mov	x3, [rsp]
	mov	x2, [rsp+4]
	mov	x1, [rsp+8]
	mov	x0, [rsp+12]
add	rsp, 16
	jmp	sqrt
// -- End function
// -- Begin function creal
creal:                                  // @creal
// %bb.0:
	mov	rax, [r0]
add	r0, 4
	mov	t0, [r0]
	ret
// -- End function
// -- Begin function cimag
cimag:                                  // @cimag
// %bb.0:
	mov	r1, r0
add	r1, 8
	mov	rax, [r1]
add	r0, 12
	mov	t0, [r0]
	ret
// -- End function
// -- Begin function cabsf
cabsf:                                  // @cabsf
// %bb.0:
sub	rsp, 8
	mov	[rsp+4], x0
	mov	[rsp], x1
	mov	x0, [r0]
add	r0, 4
	mov	r0, [r0]
	mov	r1, r0
	call	__mulsf3
	mov	x1, rax
	mov	r0, x0
	mov	r1, x0
	call	__mulsf3
	mov	r0, rax
	mov	r1, x1
	call	__addsf3
	mov	r0, rax
	call	__extendsfdf2
	mov	r1, t0
	mov	r0, rax
	call	sqrt
	mov	r1, t0
	mov	r0, rax
	call	__truncdfsf2
	mov	x1, [rsp]
	mov	x0, [rsp+4]
add	rsp, 8
	ret
// -- End function
// -- Begin function crealf
crealf:                                 // @crealf
// %bb.0:
	mov	rax, [r0]
	ret
// -- End function
// -- Begin function cimagf
cimagf:                                 // @cimagf
// %bb.0:
add	r0, 4
	mov	rax, [r0]
	ret
// -- End function
// -- Begin function cabsl
cabsl:                                  // @cabsl
// %bb.0:
sub	rsp, 16
	mov	[rsp+12], x0
	mov	[rsp+8], x1
	mov	[rsp+4], x2
	mov	[rsp], x3
	mov	x0, [r0]
	mov	r3, r0
add	r3, 4
	mov	r1, r0
add	r1, 8
	mov	r2, [r1]
add	r0, 12
	mov	r1, [r0]
	mov	x1, [r3]
	mov	r0, r2
	mov	r3, r1
	call	__muldf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x0
	mov	r1, x1
	mov	r2, x0
	mov	r3, x1
	call	__muldf3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x2
	mov	r3, x3
	call	__adddf3
	mov	r1, t0
	mov	r0, rax
	mov	x3, [rsp]
	mov	x2, [rsp+4]
	mov	x1, [rsp+8]
	mov	x0, [rsp+12]
add	rsp, 16
	jmp	sqrt
// -- End function
// -- Begin function creall
creall:                                 // @creall
// %bb.0:
	mov	rax, [r0]
add	r0, 4
	mov	t0, [r0]
	ret
// -- End function
// -- Begin function cimagl
cimagl:                                 // @cimagl
// %bb.0:
	mov	r1, r0
add	r1, 8
	mov	rax, [r1]
add	r0, 12
	mov	t0, [r0]
	ret
// -- End function
// -- Begin function conj
conj:                                   // @conj
// %bb.0:
sub	rsp, 20
	mov	[rsp+16], x0
	mov	[rsp+12], x1
	mov	[rsp+8], x2
	mov	[rsp+4], x3
	mov	[rsp], x4
	mov	x0, [r1]
	mov	r2, r1
add	r2, 4
	mov	r3, r1
add	r3, 8
	mov	x1, [r3]
add	r1, 12
	mov	x2, [r1]
	mov	x3, [r2]
	mov	r2, 0
	mov	r3, -2147483648
	mov	x4, r0
	mov	r0, x1
	mov	r1, x2
	call	__muldf3
	mov	r3, t0
	mov	r0, x0
	mov	r1, x3
	mov	r2, rax
	call	__adddf3
	mov	r1, -2147483648
	mov	x0, rax
	mov	x3, t0
	mov	r0, x2
	call	__bit_xor
	mov	r0, x4
add	r0, 8
	mov	[x4], x0
	mov	r1, x4
add	r1, 4
	mov	[r1], x3
	mov	[r0], x1
add	x4, 12
	mov	[x4], rax
	mov	x4, [rsp]
	mov	x3, [rsp+4]
	mov	x2, [rsp+8]
	mov	x1, [rsp+12]
	mov	x0, [rsp+16]
add	rsp, 20
	ret
// -- End function
// -- Begin function conjf
conjf:                                  // @conjf
// %bb.0:
sub	rsp, 12
	mov	[rsp+8], x0
	mov	[rsp+4], x1
	mov	[rsp], x2
	mov	x0, [r1]
add	r1, 4
	mov	x1, [r1]
	mov	r1, -2147483648
	mov	x2, r0
	mov	r0, x1
	call	__mulsf3
	mov	r0, x0
	mov	r1, rax
	call	__addsf3
	mov	r1, -2147483648
	mov	x0, rax
	mov	r0, x1
	call	__bit_xor
	mov	[x2], x0
add	x2, 4
	mov	[x2], rax
	mov	x2, [rsp]
	mov	x1, [rsp+4]
	mov	x0, [rsp+8]
add	rsp, 12
	ret
// -- End function
// -- Begin function conjl
conjl:                                  // @conjl
// %bb.0:
sub	rsp, 20
	mov	[rsp+16], x0
	mov	[rsp+12], x1
	mov	[rsp+8], x2
	mov	[rsp+4], x3
	mov	[rsp], x4
	mov	x0, [r1]
	mov	r2, r1
add	r2, 4
	mov	r3, r1
add	r3, 8
	mov	x1, [r3]
add	r1, 12
	mov	x2, [r1]
	mov	x3, [r2]
	mov	r2, 0
	mov	r3, -2147483648
	mov	x4, r0
	mov	r0, x1
	mov	r1, x2
	call	__muldf3
	mov	r3, t0
	mov	r0, x0
	mov	r1, x3
	mov	r2, rax
	call	__adddf3
	mov	r1, -2147483648
	mov	x0, rax
	mov	x3, t0
	mov	r0, x2
	call	__bit_xor
	mov	r0, x4
add	r0, 8
	mov	[x4], x0
	mov	r1, x4
add	r1, 4
	mov	[r1], x3
	mov	[r0], x1
add	x4, 12
	mov	[x4], rax
	mov	x4, [rsp]
	mov	x3, [rsp+4]
	mov	x2, [rsp+8]
	mov	x1, [rsp+12]
	mov	x0, [rsp+16]
add	rsp, 20
	ret
// -- End function
// -- Begin function isupper
isupper:                                // @isupper
// %bb.0:
	mov	r1, r0
add	r1, 2147483583
	mov	r2, -2147483622
	mov	r0, 1
	jl	r1, r2, .LBB12_2
// %bb.1:
	mov	r0, 0
.LBB12_2:
	mov	r1, 1
	call	__bit_and
	ret
// -- End function
// -- Begin function islower
islower:                                // @islower
// %bb.0:
	mov	r1, r0
add	r1, 2147483551
	mov	r2, -2147483622
	mov	r0, 1
	jl	r1, r2, .LBB13_2
// %bb.1:
	mov	r0, 0
.LBB13_2:
	mov	r1, 1
	call	__bit_and
	ret
// -- End function
// -- Begin function isalpha
isalpha:                                // @isalpha
// %bb.0:
	mov	r1, -33
	call	__bit_and
add	rax, 2147483583
	mov	r1, -2147483622
	mov	r0, 1
	jl	rax, r1, .LBB14_2
// %bb.1:
	mov	r0, 0
.LBB14_2:
	mov	r1, 1
	call	__bit_and
	ret
// -- End function
// -- Begin function isdigit
isdigit:                                // @isdigit
// %bb.0:
	mov	r1, r0
add	r1, 2147483600
	mov	r2, -2147483638
	mov	r0, 1
	jl	r1, r2, .LBB15_2
// %bb.1:
	mov	r0, 0
.LBB15_2:
	mov	r1, 1
	call	__bit_and
	ret
// -- End function
// -- Begin function isxdigit
isxdigit:                               // @isxdigit
// %bb.0:
sub	rsp, 8
	mov	[rsp+4], x0
	mov	[rsp], x1
	mov	r1, r0
add	r1, 2147483600
	mov	r2, -2147483638
	mov	x0, 1
	mov	x1, 1
	jl	r1, r2, .LBB16_2
// %bb.1:
	mov	x1, 0
.LBB16_2:
	mov	r1, -33
	call	__bit_and
add	rax, 2147483583
	mov	r0, -2147483642
	jl	rax, r0, .LBB16_4
// %bb.3:
	mov	x0, 0
.LBB16_4:
	mov	r0, x1
	mov	r1, x0
	call	__bit_or
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	x1, [rsp]
	mov	x0, [rsp+4]
add	rsp, 8
	ret
// -- End function
// -- Begin function isalnum
isalnum:                                // @isalnum
// %bb.0:
sub	rsp, 4
	mov	[rsp], x0
	mov	r1, -33
	mov	x0, r0
	call	__bit_and
add	rax, 2147483583
	mov	r2, -2147483622
	mov	r0, 1
	mov	r1, 1
	jl	rax, r2, .LBB17_2
// %bb.1:
	mov	r1, 0
.LBB17_2:
add	x0, 2147483600
	mov	r2, -2147483638
	jl	x0, r2, .LBB17_4
// %bb.3:
	mov	r0, 0
.LBB17_4:
	call	__bit_or
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	x0, [rsp]
add	rsp, 4
	ret
// -- End function
// -- Begin function isspace
isspace:                                // @isspace
// %bb.0:
	mov	r2, r0
add	r2, 2147483639
	mov	r1, -2147483646
	mov	rax, 1
	jl	r2, r1, .LBB18_6
	jmp	.LBB18_1
.LBB18_1:
	mov	r2, r0
add	r2, 2147483636
	jl	r2, r1, .LBB18_6
	jmp	.LBB18_2
.LBB18_2:
	mov	r1, 32
	je	r0, r1, .LBB18_6
	jmp	.LBB18_3
.LBB18_3:
	mov	r1, 11
	mov	r2, 1
	je	r0, r1, .LBB18_5
// %bb.4:
	mov	r2, 0
.LBB18_5:
	mov	r1, 1
	mov	r0, r2
	call	__bit_and
.LBB18_6:
	ret
// -- End function
// -- Begin function isblank
isblank:                                // @isblank
// %bb.0:
	mov	r2, r0
	mov	r3, 32
	mov	r1, 1
	mov	r0, 1
	je	r2, r3, .LBB19_2
// %bb.1:
	mov	r0, 0
.LBB19_2:
	mov	r3, 9
	je	r2, r3, .LBB19_4
// %bb.3:
	mov	r1, 0
.LBB19_4:
	call	__bit_or
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	ret
// -- End function
// -- Begin function iscntrl
iscntrl:                                // @iscntrl
// %bb.0:
sub	rsp, 4
	mov	[rsp], x0
	mov	r2, r0
	mov	r1, r2
add	r1, -2147483648
	mov	r3, -2147483520
	mov	r0, 1
	mov	x0, 1
	jl	r1, r3, .LBB20_2
// %bb.1:
	mov	x0, 0
.LBB20_2:
	mov	r1, 32
	jl	r2, r1, .LBB20_4
// %bb.3:
	mov	r0, 0
.LBB20_4:
	mov	r3, 127
	mov	r1, 1
	je	r2, r3, .LBB20_6
// %bb.5:
	mov	r1, 0
.LBB20_6:
	call	__bit_or
	mov	r0, x0
	mov	r1, rax
	call	__bit_and
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	x0, [rsp]
add	rsp, 4
	ret
// -- End function
// -- Begin function isprint
isprint:                                // @isprint
// %bb.0:
	mov	r1, r0
add	r1, 2147483616
	mov	r2, -2147483553
	mov	r0, 1
	jl	r1, r2, .LBB21_2
// %bb.1:
	mov	r0, 0
.LBB21_2:
	mov	r1, 1
	call	__bit_and
	ret
// -- End function
// -- Begin function isgraph
isgraph:                                // @isgraph
// %bb.0:
	mov	r1, r0
add	r1, 2147483615
	mov	r2, -2147483554
	mov	r0, 1
	jl	r1, r2, .LBB22_2
// %bb.1:
	mov	r0, 0
.LBB22_2:
	mov	r1, 1
	call	__bit_and
	ret
// -- End function
// -- Begin function ispunct
ispunct:                                // @ispunct
// %bb.0:
sub	rsp, 4
	mov	[rsp], x0
	mov	x0, r0
add	r0, 2147483521
	mov	r1, 2147483554
	mov	rax, 0
	jl	r0, r1, .LBB23_6
	jmp	.LBB23_1
.LBB23_1:
	mov	r1, 95
	mov	r0, x0
	call	__bit_and
add	rax, 2147483557
	mov	r2, 2147483622
	mov	r0, 1
	mov	r1, 1
	jl	rax, r2, .LBB23_3
// %bb.2:
	mov	r1, 0
.LBB23_3:
add	x0, 2147483590
	mov	r2, 2147483638
	jl	x0, r2, .LBB23_5
// %bb.4:
	mov	r0, 0
.LBB23_5:
	call	__bit_and
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
.LBB23_6:
	mov	x0, [rsp]
add	rsp, 4
	ret
// -- End function
// -- Begin function tolower
tolower:                                // @tolower
// %bb.0:
	mov	rax, r0
add	r0, 2147483557
	mov	r1, 2147483622
	jl	r0, r1, .LBB24_2
	jmp	.LBB24_1
.LBB24_1:
add	rax, 32
.LBB24_2:
	ret
// -- End function
// -- Begin function toupper
toupper:                                // @toupper
// %bb.0:
	mov	rax, r0
add	r0, 2147483525
	mov	r1, 2147483622
	jl	r0, r1, .LBB25_2
	jmp	.LBB25_1
.LBB25_1:
add	rax, -32
.LBB25_2:
	ret
// -- End function
// -- Begin function imaxabs
imaxabs:                                // @imaxabs
// %bb.0:
sub	rsp, 24
	mov	[rsp+20], x0
	mov	[rsp+16], x1
	mov	[rsp+12], x2
	mov	[rsp+8], x3
	mov	[rsp+4], x4
	mov	[rsp], x5
	mov	x0, r1
	mov	x4, r0
	mov	x1, 0
	mov	x5, 1
	mov	r0, 1
	jl	x0, x1, .LBB26_2
// %bb.1:
	mov	r0, 0
.LBB26_2:
	mov	x2, 0
	sub	x2, r0
	mov	r0, x4
	add	r0, r0
	mov	r1, 0
	sub	r1, r0
	mov	r0, x2
	call	__bit_and
	mov	x3, rax
	add	x3, x4
	jne	x4, x1, .LBB26_4
// %bb.3:
	mov	x5, 0
.LBB26_4:
	mov	r0, 0
	sub	r0, x5
	mov	r1, 1
	call	__bit_and
	add	rax, x0
	add	rax, x0
	sub	x1, rax
	mov	r0, x2
	mov	r1, x1
	call	__bit_and
	add	x0, rax
	mov	rax, x3
	mov	t0, x0
	mov	x5, [rsp]
	mov	x4, [rsp+4]
	mov	x3, [rsp+8]
	mov	x2, [rsp+12]
	mov	x1, [rsp+16]
	mov	x0, [rsp+20]
add	rsp, 24
	ret
// -- End function
// -- Begin function imaxdiv
imaxdiv:                                // @imaxdiv
// %bb.0:
sub	rsp, 20
	mov	[rsp+16], x0
	mov	[rsp+12], x1
	mov	[rsp+8], x2
	mov	[rsp+4], x3
	mov	[rsp], x4
	mov	x0, r4
	mov	x1, r3
	mov	x2, r2
	mov	x3, r1
	mov	x4, r0
	mov	r0, x3
	mov	r1, x2
	mov	r2, x1
	mov	r3, x0
	call	__divdi3
	mov	r1, t0
	mov	r0, x4
add	r0, 4
	mov	[r0], r1
	mov	[x4], rax
	mov	r0, rax
	mov	r2, x1
	mov	r3, x0
	call	__muldi3
	mov	r3, t0
	mov	r0, x3
	mov	r1, x2
	mov	r2, rax
	call	__subdi3
	mov	r0, x4
add	r0, 8
add	x4, 12
	mov	[x4], t0
	mov	[r0], rax
	mov	x4, [rsp]
	mov	x3, [rsp+4]
	mov	x2, [rsp+8]
	mov	x1, [rsp+12]
	mov	x0, [rsp+16]
add	rsp, 20
	ret
// -- End function
// -- Begin function strtoimax
strtoimax:                              // @strtoimax
// %bb.0:
	jmp	strtoll
// -- End function
// -- Begin function strtoumax
strtoumax:                              // @strtoumax
// %bb.0:
	jmp	strtoull
// -- End function
// -- Begin function setlocale
setlocale:                              // @setlocale
// %bb.0:
sub	rsp, 24
	mov	[rsp+20], x0
	mov	[rsp+16], x1
	mov	[rsp+12], x2
	mov	[rsp+8], x3
	mov	[rsp+4], x4
	mov	[rsp], x5
	mov	x0, r1
add	r0, -2147483648
	mov	r1, -2147483643
	mov	rax, 0
	jg	r0, r1, .LBB30_27
	jmp	.LBB30_1
.LBB30_1:
	mov	rax, mcasm_static_6da2fa0f2706f9afd3bdbc7a9dd09788
	jz	x0, .LBB30_27
	jmp	.LBB30_2
.LBB30_2:
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	mov	x1, rax
	mov	rax, mcasm_static_6da2fa0f2706f9afd3bdbc7a9dd09788
	jz	x1, .LBB30_27
	jmp	.LBB30_3
.LBB30_3:
	mov	r1, 3
	mov	r0, x0
	call	__bit_and
	mov	x2, rax
	mov	x3, x1
	jnz	x2, .LBB30_6
	jmp	.LBB30_4
.LBB30_4:
	mov	x3, [x0]
	mov	r0, 67
	mov	rax, mcasm_static_6da2fa0f2706f9afd3bdbc7a9dd09788
	je	x3, r0, .LBB30_27
	jmp	.LBB30_5
.LBB30_5:
	mov	r1, 255
	mov	r0, x3
	call	__bit_and
	jz	rax, .LBB30_13
	jmp	.LBB30_6
.LBB30_6:                               // %.preheader.i.preheader
	mov	x5, 0
.LBB30_7:                               // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, mcasm_static_7c0c617ead60ecbef17ac1561a8b3871
	add	r0, x5
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	jne	rax, x4, .LBB30_10
	jmp	.LBB30_8
.LBB30_8:                               //   in Loop: Header=BB30_7 Depth=1
	mov	r0, x0
	add	r0, x5
add	r0, 1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	x3, rax
add	x5, 1
	jnz	x3, .LBB30_7
	jmp	.LBB30_9
.LBB30_9:                               // %strcmp.exitsplit
	mov	r0, mcasm_static_7c0c617ead60ecbef17ac1561a8b3871
	add	r0, x5
	mov	x3, 0
	jmp	.LBB30_11
.LBB30_10:                              // %.preheader.i.strcmp.exit_crit_edge
	mov	r0, mcasm_static_7c0c617ead60ecbef17ac1561a8b3871
	add	r0, x5
.LBB30_11:                              // %strcmp.exit
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	mov	r0, rax
	mov	rax, mcasm_static_6da2fa0f2706f9afd3bdbc7a9dd09788
	je	r0, x4, .LBB30_27
	jmp	.LBB30_12
.LBB30_12:
	mov	x3, mcasm_static_9a7642606df7b543c47db680f0a43242
	jnz	x2, .LBB30_18
	jmp	.LBB30_13
.LBB30_13:                              // %.thread24
	mov	x1, [x0]
	mov	r1, 1230196560
	mov	x3, mcasm_static_9a7642606df7b543c47db680f0a43242
	jne	x1, r1, .LBB30_18
	jmp	.LBB30_14
.LBB30_14:                              // %.preheader5.i2.preheader
	mov	x1, -2139062144
.LBB30_15:                              // %.preheader5.i2
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x1, .LBB30_26
	jmp	.LBB30_16
.LBB30_16:                              //   in Loop: Header=BB30_15 Depth=1
add	x0, 4
add	x3, 4
	mov	r1, [x0]
	mov	r0, [x3]
	je	r1, r0, .LBB30_15
	jmp	.LBB30_17
.LBB30_17:
	mov	x1, r1
.LBB30_18:
	mov	r1, 255
	mov	r0, x1
	call	__bit_and
	mov	x2, 0
	jz	rax, .LBB30_23
	jmp	.LBB30_19
.LBB30_19:                              // %.preheader.i1.preheader
add	x0, 1
.LBB30_20:                              // %.preheader.i1
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x3]
	mov	r1, 255
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	r0, x1
	jne	rax, x2, .LBB30_22
	jmp	.LBB30_21
.LBB30_21:                              //   in Loop: Header=BB30_20 Depth=1
	mov	r0, [x0]
	mov	r1, 255
add	x3, 1
	call	__bit_and
	mov	x1, rax
add	x0, 1
	mov	r0, 0
	jnz	x1, .LBB30_20
	jmp	.LBB30_22
.LBB30_22:
	mov	r1, 255
	call	__bit_and
	mov	x2, rax
.LBB30_23:                              // %strcmp.exit3
	mov	r0, [x3]
	mov	r1, 255
	call	__bit_and
	mov	r0, 1
	je	x2, rax, .LBB30_25
// %bb.24:                              // %strcmp.exit3
	mov	r0, 0
.LBB30_25:                              // %strcmp.exit3
	mov	r1, 1
	call	__bit_and
	mov	r0, rax
	mov	rax, 0
	jz	r0, .LBB30_27
	jmp	.LBB30_26
.LBB30_26:                              // %strcmp.exit3.thread
	mov	rax, mcasm_static_6da2fa0f2706f9afd3bdbc7a9dd09788
.LBB30_27:                              // %strcmp.exit.thread
	mov	x5, [rsp]
	mov	x4, [rsp+4]
	mov	x3, [rsp+8]
	mov	x2, [rsp+12]
	mov	x1, [rsp+16]
	mov	x0, [rsp+20]
add	rsp, 24
	ret
// -- End function
// -- Begin function localeconv
localeconv:                             // @localeconv
// %bb.0:
	mov	rax, mcasm_static_58a3b40d2bfcfe03a5078bc035f75e01
	ret
// -- End function
// -- Begin function fabs
fabs:                                   // @fabs
// %bb.0:
sub	rsp, 16
	mov	[rsp+12], x0
	mov	[rsp+8], x1
	mov	[rsp+4], x2
	mov	[rsp], x3
	mov	x0, r1
	mov	x1, r0
	mov	r2, 0
	mov	r3, 0
	mov	x2, 0
	call	__ltdf2
	mov	x3, 1
	jl	rax, x2, .LBB32_2
// %bb.1:
	mov	x3, 0
.LBB32_2:
	mov	r1, -2147483648
	mov	r0, x0
	call	__bit_xor
	sub	x2, x3
	sub	rax, x0
	mov	r0, x2
	mov	r1, rax
	call	__bit_and
	add	x0, rax
	mov	rax, x1
	mov	t0, x0
	mov	x3, [rsp]
	mov	x2, [rsp+4]
	mov	x1, [rsp+8]
	mov	x0, [rsp+12]
add	rsp, 16
	ret
// -- End function
// -- Begin function fabsf
fabsf:                                  // @fabsf
// %bb.0:
sub	rsp, 12
	mov	[rsp+8], x0
	mov	[rsp+4], x1
	mov	[rsp], x2
	mov	x0, r0
	mov	r1, 0
	mov	x1, 0
	call	__ltsf2
	mov	x2, 1
	jl	rax, x1, .LBB33_2
// %bb.1:
	mov	x2, 0
.LBB33_2:
	mov	r1, -2147483648
	mov	r0, x0
	call	__bit_xor
	sub	rax, x0
	sub	x1, x2
	mov	r0, x1
	mov	r1, rax
	call	__bit_and
	add	rax, x0
	mov	x2, [rsp]
	mov	x1, [rsp+4]
	mov	x0, [rsp+8]
add	rsp, 12
	ret
// -- End function
// -- Begin function fabsl
fabsl:                                  // @fabsl
// %bb.0:
sub	rsp, 16
	mov	[rsp+12], x0
	mov	[rsp+8], x1
	mov	[rsp+4], x2
	mov	[rsp], x3
	mov	x0, r1
	mov	x1, r0
	mov	r2, 0
	mov	r3, 0
	mov	x2, 0
	call	__ltdf2
	mov	x3, 1
	jl	rax, x2, .LBB34_2
// %bb.1:
	mov	x3, 0
.LBB34_2:
	mov	r1, -2147483648
	mov	r0, x0
	call	__bit_xor
	sub	x2, x3
	sub	rax, x0
	mov	r0, x2
	mov	r1, rax
	call	__bit_and
	add	x0, rax
	mov	rax, x1
	mov	t0, x0
	mov	x3, [rsp]
	mov	x2, [rsp+4]
	mov	x1, [rsp+8]
	mov	x0, [rsp+12]
add	rsp, 16
	ret
// -- End function
// -- Begin function trunc
trunc:                                  // @trunc
// %bb.0:
	call	__fixdfsi
	mov	r0, rax
	call	__floatsidf
	ret
// -- End function
// -- Begin function truncf
truncf:                                 // @truncf
// %bb.0:
	call	__fixsfsi
	mov	r0, rax
	call	__floatsisf
	ret
// -- End function
// -- Begin function truncl
truncl:                                 // @truncl
// %bb.0:
	call	__fixdfsi
	mov	r0, rax
	call	__floatsidf
	ret
// -- End function
// -- Begin function floor
floor:                                  // @floor
// %bb.0:
sub	rsp, 12
	mov	[rsp+8], x0
	mov	[rsp+4], x1
	mov	[rsp], x2
	mov	x1, r1
	mov	x2, r0
	call	__fixdfsi
	mov	x0, rax
	mov	r0, x0
	call	__floatsidf
	mov	r3, t0
	mov	r0, x2
	mov	r1, x1
	mov	r2, rax
	call	__ltdf2
	mov	r0, 0
	mov	r1, 1
	jl	rax, r0, .LBB38_2
// %bb.1:
	mov	r1, 0
.LBB38_2:
	sub	r0, r1
	add	r0, x0
	call	__floatsidf
	mov	x2, [rsp]
	mov	x1, [rsp+4]
	mov	x0, [rsp+8]
add	rsp, 12
	ret
// -- End function
// -- Begin function floorf
floorf:                                 // @floorf
// %bb.0:
sub	rsp, 12
	mov	[rsp+8], x0
	mov	[rsp+4], x1
	mov	[rsp], x2
	mov	x0, r0
	call	__extendsfdf2
	mov	x1, rax
	mov	x2, t0
	mov	r0, x0
	call	__fixsfsi
	mov	x0, rax
	mov	r0, x0
	call	__floatsidf
	mov	r3, t0
	mov	r0, x1
	mov	r1, x2
	mov	r2, rax
	call	__ltdf2
	mov	r0, 0
	mov	r1, 1
	jl	rax, r0, .LBB39_2
// %bb.1:
	mov	r1, 0
.LBB39_2:
	sub	r0, r1
	add	r0, x0
	call	__floatsisf
	mov	x2, [rsp]
	mov	x1, [rsp+4]
	mov	x0, [rsp+8]
add	rsp, 12
	ret
// -- End function
// -- Begin function floorl
floorl:                                 // @floorl
// %bb.0:
sub	rsp, 12
	mov	[rsp+8], x0
	mov	[rsp+4], x1
	mov	[rsp], x2
	mov	x1, r1
	mov	x2, r0
	call	__fixdfsi
	mov	x0, rax
	mov	r0, x0
	call	__floatsidf
	mov	r3, t0
	mov	r0, x2
	mov	r1, x1
	mov	r2, rax
	call	__ltdf2
	mov	r0, 0
	mov	r1, 1
	jl	rax, r0, .LBB40_2
// %bb.1:
	mov	r1, 0
.LBB40_2:
	sub	r0, r1
	add	r0, x0
	call	__floatsidf
	mov	x2, [rsp]
	mov	x1, [rsp+4]
	mov	x0, [rsp+8]
add	rsp, 12
	ret
// -- End function
// -- Begin function ceil
ceil:                                   // @ceil
// %bb.0:
sub	rsp, 12
	mov	[rsp+8], x0
	mov	[rsp+4], x1
	mov	[rsp], x2
	mov	x1, r1
	mov	x2, r0
	call	__fixdfsi
	mov	x0, rax
	mov	r0, x0
	call	__floatsidf
	mov	r3, t0
	mov	r0, x2
	mov	r1, x1
	mov	r2, rax
	call	__gtdf2
	mov	r1, 0
	mov	r0, 1
	jg	rax, r1, .LBB41_2
// %bb.1:
	mov	r0, 0
.LBB41_2:
	mov	r1, 1
	call	__bit_and
	add	x0, rax
	mov	r0, x0
	call	__floatsidf
	mov	x2, [rsp]
	mov	x1, [rsp+4]
	mov	x0, [rsp+8]
add	rsp, 12
	ret
// -- End function
// -- Begin function ceilf
ceilf:                                  // @ceilf
// %bb.0:
sub	rsp, 12
	mov	[rsp+8], x0
	mov	[rsp+4], x1
	mov	[rsp], x2
	mov	x0, r0
	call	__extendsfdf2
	mov	x1, rax
	mov	x2, t0
	mov	r0, x0
	call	__fixsfsi
	mov	x0, rax
	mov	r0, x0
	call	__floatsidf
	mov	r3, t0
	mov	r0, x1
	mov	r1, x2
	mov	r2, rax
	call	__gtdf2
	mov	r1, 0
	mov	r0, 1
	jg	rax, r1, .LBB42_2
// %bb.1:
	mov	r0, 0
.LBB42_2:
	mov	r1, 1
	call	__bit_and
	add	x0, rax
	mov	r0, x0
	call	__floatsisf
	mov	x2, [rsp]
	mov	x1, [rsp+4]
	mov	x0, [rsp+8]
add	rsp, 12
	ret
// -- End function
// -- Begin function ceill
ceill:                                  // @ceill
// %bb.0:
sub	rsp, 12
	mov	[rsp+8], x0
	mov	[rsp+4], x1
	mov	[rsp], x2
	mov	x1, r1
	mov	x2, r0
	call	__fixdfsi
	mov	x0, rax
	mov	r0, x0
	call	__floatsidf
	mov	r3, t0
	mov	r0, x2
	mov	r1, x1
	mov	r2, rax
	call	__gtdf2
	mov	r1, 0
	mov	r0, 1
	jg	rax, r1, .LBB43_2
// %bb.1:
	mov	r0, 0
.LBB43_2:
	mov	r1, 1
	call	__bit_and
	add	x0, rax
	mov	r0, x0
	call	__floatsidf
	mov	x2, [rsp]
	mov	x1, [rsp+4]
	mov	x0, [rsp+8]
add	rsp, 12
	ret
// -- End function
// -- Begin function round
round:                                  // @round
// %bb.0:
sub	rsp, 16
	mov	[rsp+12], x0
	mov	[rsp+8], x1
	mov	[rsp+4], x2
	mov	[rsp], x3
	mov	x1, r1
	mov	x2, r0
	mov	r2, 0
	mov	r3, 0
	mov	x0, 0
	call	__ltdf2
	mov	r0, -1
	jg	rax, r0, .LBB44_4
	jmp	.LBB44_1
.LBB44_1:
	mov	r2, 0
	mov	r3, -1075838976
	mov	r0, x2
	mov	r1, x1
	call	__adddf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x2
	mov	r1, x3
	call	__fixdfsi
	mov	x1, rax
	mov	r0, x1
	call	__floatsidf
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__gtdf2
	mov	r0, 1
	jg	rax, x0, .LBB44_3
// %bb.2:
	mov	r0, 0
.LBB44_3:
	mov	r1, 1
	call	__bit_and
	mov	x0, rax
	add	x0, x1
	jmp	.LBB44_7
.LBB44_4:
	mov	r2, 0
	mov	r3, 1071644672
	mov	r0, x2
	mov	r1, x1
	call	__adddf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x2
	mov	r1, x3
	call	__fixdfsi
	mov	x1, rax
	mov	r0, x1
	call	__floatsidf
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__ltdf2
	mov	r0, 1
	jl	rax, x0, .LBB44_6
// %bb.5:
	mov	r0, 0
.LBB44_6:
	sub	x0, r0
	add	x0, x1
.LBB44_7:
	mov	r0, x0
	call	__floatsidf
	mov	x3, [rsp]
	mov	x2, [rsp+4]
	mov	x1, [rsp+8]
	mov	x0, [rsp+12]
add	rsp, 16
	ret
// -- End function
// -- Begin function roundf
roundf:                                 // @roundf
// %bb.0:
sub	rsp, 16
	mov	[rsp+12], x0
	mov	[rsp+8], x1
	mov	[rsp+4], x2
	mov	[rsp], x3
	mov	x3, r0
	call	__extendsfdf2
	mov	x2, rax
	mov	x1, t0
	mov	r1, 0
	mov	x0, 0
	mov	r0, x3
	call	__ltsf2
	mov	r0, -1
	jg	rax, r0, .LBB45_4
	jmp	.LBB45_1
.LBB45_1:
	mov	r2, 0
	mov	r3, -1075838976
	mov	r0, x2
	mov	r1, x1
	call	__adddf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x2
	mov	r1, x3
	call	__fixdfsi
	mov	x1, rax
	mov	r0, x1
	call	__floatsidf
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__gtdf2
	mov	r0, 1
	jg	rax, x0, .LBB45_3
// %bb.2:
	mov	r0, 0
.LBB45_3:
	mov	r1, 1
	call	__bit_and
	mov	x0, rax
	add	x0, x1
	jmp	.LBB45_7
.LBB45_4:
	mov	r2, 0
	mov	r3, 1071644672
	mov	r0, x2
	mov	r1, x1
	call	__adddf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x2
	mov	r1, x3
	call	__fixdfsi
	mov	x1, rax
	mov	r0, x1
	call	__floatsidf
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__ltdf2
	mov	r0, 1
	jl	rax, x0, .LBB45_6
// %bb.5:
	mov	r0, 0
.LBB45_6:
	sub	x0, r0
	add	x0, x1
.LBB45_7:
	mov	r0, x0
	call	__floatsisf
	mov	x3, [rsp]
	mov	x2, [rsp+4]
	mov	x1, [rsp+8]
	mov	x0, [rsp+12]
add	rsp, 16
	ret
// -- End function
// -- Begin function roundl
roundl:                                 // @roundl
// %bb.0:
sub	rsp, 16
	mov	[rsp+12], x0
	mov	[rsp+8], x1
	mov	[rsp+4], x2
	mov	[rsp], x3
	mov	x1, r1
	mov	x2, r0
	mov	r2, 0
	mov	r3, 0
	mov	x0, 0
	call	__ltdf2
	mov	r0, -1
	jg	rax, r0, .LBB46_4
	jmp	.LBB46_1
.LBB46_1:
	mov	r2, 0
	mov	r3, -1075838976
	mov	r0, x2
	mov	r1, x1
	call	__adddf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x2
	mov	r1, x3
	call	__fixdfsi
	mov	x1, rax
	mov	r0, x1
	call	__floatsidf
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__gtdf2
	mov	r0, 1
	jg	rax, x0, .LBB46_3
// %bb.2:
	mov	r0, 0
.LBB46_3:
	mov	r1, 1
	call	__bit_and
	mov	x0, rax
	add	x0, x1
	jmp	.LBB46_7
.LBB46_4:
	mov	r2, 0
	mov	r3, 1071644672
	mov	r0, x2
	mov	r1, x1
	call	__adddf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x2
	mov	r1, x3
	call	__fixdfsi
	mov	x1, rax
	mov	r0, x1
	call	__floatsidf
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__ltdf2
	mov	r0, 1
	jl	rax, x0, .LBB46_6
// %bb.5:
	mov	r0, 0
.LBB46_6:
	sub	x0, r0
	add	x0, x1
.LBB46_7:
	mov	r0, x0
	call	__floatsidf
	mov	x3, [rsp]
	mov	x2, [rsp+4]
	mov	x1, [rsp+8]
	mov	x0, [rsp+12]
add	rsp, 16
	ret
// -- End function
// -- Begin function sqrt
sqrt:                                   // @sqrt
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
	mov	x1, r0
	mov	r2, 0
	mov	r3, 0
	mov	x7, 0
	call	__ltdf2
	mov	r0, -1
	jg	rax, r0, .LBB47_2
	jmp	.LBB47_1
.LBB47_1:
	mov	r0, mcasm_static_dc0ade02eb8bb208cf058fd41e6d2a5b
	mov	[r0], 33
	mov	x0, 2146959360
	mov	x1, 0
	jmp	.LBB47_16
.LBB47_2:
	mov	x2, 1
	mov	x5, 1
	jne	x1, x7, .LBB47_4
// %bb.3:
	mov	x5, 0
.LBB47_4:
	mov	r1, 2147483647
	mov	r0, x0
	call	__bit_and
	mov	r0, 2146435072
	mov	x4, rax
	jg	x4, r0, .LBB47_6
// %bb.5:
	mov	x2, 0
.LBB47_6:
	sub	x5, x2
	mov	x3, 1
	mov	r1, 1
	je	x4, r0, .LBB47_8
// %bb.7:
	mov	r1, 0
.LBB47_8:
	mov	r0, 0
	sub	r0, r1
	mov	r1, x5
	call	__bit_and
	mov	r1, 2146435072
	mov	x5, rax
	mov	r0, x0
	call	__bit_xor
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	x6, rax
	mov	r0, x1
	mov	r1, x4
	call	__bit_or
	je	rax, x7, .LBB47_10
// %bb.9:
	mov	x3, 0
.LBB47_10:
	mov	r1, 1
	je	x6, x7, .LBB47_12
// %bb.11:
	mov	r1, 0
.LBB47_12:
	mov	r0, x3
	call	__bit_or
	add	x2, x5
	mov	r0, rax
	mov	r1, x2
	call	__bit_or
	jnz	rax, .LBB47_16
	jmp	.LBB47_13
.LBB47_13:
	mov	r2, 0
	mov	r3, 1072693248
	mov	x2, 0
	mov	r0, x1
	mov	r1, x0
	call	__gtdf2
	mov	r0, 1
	jg	rax, x2, .LBB47_15
// %bb.14:
	mov	r0, 0
.LBB47_15:
	sub	x2, r0
	mov	r1, x0
add	r1, -1072693248
	mov	r0, x2
	call	__bit_and
	mov	x3, rax
	mov	r0, x2
	mov	r1, x1
	call	__bit_and
add	x3, 1072693248
	mov	x2, rax
	mov	r0, x1
	mov	r1, x0
	mov	r2, x2
	mov	r3, x3
	call	__divdf3
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__adddf3
	mov	r2, 0
	mov	r3, 1071644672
	mov	r1, t0
	mov	r0, rax
	call	__muldf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x1
	mov	r1, x0
	mov	r2, x2
	mov	r3, x3
	call	__divdf3
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__adddf3
	mov	r2, 0
	mov	r3, 1071644672
	mov	r1, t0
	mov	r0, rax
	call	__muldf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x1
	mov	r1, x0
	mov	r2, x2
	mov	r3, x3
	call	__divdf3
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__adddf3
	mov	r2, 0
	mov	r3, 1071644672
	mov	r1, t0
	mov	r0, rax
	call	__muldf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x1
	mov	r1, x0
	mov	r2, x2
	mov	r3, x3
	call	__divdf3
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__adddf3
	mov	r2, 0
	mov	r3, 1071644672
	mov	r1, t0
	mov	r0, rax
	call	__muldf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x1
	mov	r1, x0
	mov	r2, x2
	mov	r3, x3
	call	__divdf3
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__adddf3
	mov	r2, 0
	mov	r3, 1071644672
	mov	r1, t0
	mov	r0, rax
	call	__muldf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x1
	mov	r1, x0
	mov	r2, x2
	mov	r3, x3
	call	__divdf3
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__adddf3
	mov	r2, 0
	mov	r3, 1071644672
	mov	r1, t0
	mov	r0, rax
	call	__muldf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x1
	mov	r1, x0
	mov	r2, x2
	mov	r3, x3
	call	__divdf3
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__adddf3
	mov	r2, 0
	mov	r3, 1071644672
	mov	r1, t0
	mov	r0, rax
	call	__muldf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x1
	mov	r1, x0
	mov	r2, x2
	mov	r3, x3
	call	__divdf3
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__adddf3
	mov	r2, 0
	mov	r3, 1071644672
	mov	r1, t0
	mov	r0, rax
	call	__muldf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x1
	mov	r1, x0
	mov	r2, x2
	mov	r3, x3
	call	__divdf3
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__adddf3
	mov	r2, 0
	mov	r3, 1071644672
	mov	r1, t0
	mov	r0, rax
	call	__muldf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x1
	mov	r1, x0
	mov	r2, x2
	mov	r3, x3
	call	__divdf3
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__adddf3
	mov	r2, 0
	mov	r3, 1071644672
	mov	r1, t0
	mov	r0, rax
	call	__muldf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x1
	mov	r1, x0
	mov	r2, x2
	mov	r3, x3
	call	__divdf3
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__adddf3
	mov	r2, 0
	mov	r3, 1071644672
	mov	r1, t0
	mov	r0, rax
	call	__muldf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x1
	mov	r1, x0
	mov	r2, x2
	mov	r3, x3
	call	__divdf3
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__adddf3
	mov	r2, 0
	mov	r3, 1071644672
	mov	r1, t0
	mov	r0, rax
	call	__muldf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x1
	mov	r1, x0
	mov	r2, x2
	mov	r3, x3
	call	__divdf3
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__adddf3
	mov	r2, 0
	mov	r3, 1071644672
	mov	r1, t0
	mov	r0, rax
	call	__muldf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x1
	mov	r1, x0
	mov	r2, x2
	mov	r3, x3
	call	__divdf3
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__adddf3
	mov	r2, 0
	mov	r3, 1071644672
	mov	r1, t0
	mov	r0, rax
	call	__muldf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x1
	mov	r1, x0
	mov	r2, x2
	mov	r3, x3
	call	__divdf3
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__adddf3
	mov	r2, 0
	mov	r3, 1071644672
	mov	r1, t0
	mov	r0, rax
	call	__muldf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x1
	mov	r1, x0
	mov	r2, x2
	mov	r3, x3
	call	__divdf3
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__adddf3
	mov	r2, 0
	mov	r3, 1071644672
	mov	r1, t0
	mov	r0, rax
	call	__muldf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x1
	mov	r1, x0
	mov	r2, x2
	mov	r3, x3
	call	__divdf3
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__adddf3
	mov	r2, 0
	mov	r3, 1071644672
	mov	r1, t0
	mov	r0, rax
	call	__muldf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x1
	mov	r1, x0
	mov	r2, x2
	mov	r3, x3
	call	__divdf3
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__adddf3
	mov	r2, 0
	mov	r3, 1071644672
	mov	r1, t0
	mov	r0, rax
	call	__muldf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x1
	mov	r1, x0
	mov	r2, x2
	mov	r3, x3
	call	__divdf3
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__adddf3
	mov	r2, 0
	mov	r3, 1071644672
	mov	r1, t0
	mov	r0, rax
	call	__muldf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x1
	mov	r1, x0
	mov	r2, x2
	mov	r3, x3
	call	__divdf3
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__adddf3
	mov	r2, 0
	mov	r3, 1071644672
	mov	r1, t0
	mov	r0, rax
	call	__muldf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x1
	mov	r1, x0
	mov	r2, x2
	mov	r3, x3
	call	__divdf3
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__adddf3
	mov	r2, 0
	mov	r3, 1071644672
	mov	r1, t0
	mov	r0, rax
	call	__muldf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x1
	mov	r1, x0
	mov	r2, x2
	mov	r3, x3
	call	__divdf3
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__adddf3
	mov	r2, 0
	mov	r3, 1071644672
	mov	r1, t0
	mov	r0, rax
	call	__muldf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x1
	mov	r1, x0
	mov	r2, x2
	mov	r3, x3
	call	__divdf3
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__adddf3
	mov	r2, 0
	mov	r3, 1071644672
	mov	r1, t0
	mov	r0, rax
	call	__muldf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x1
	mov	r1, x0
	mov	r2, x2
	mov	r3, x3
	call	__divdf3
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__adddf3
	mov	r2, 0
	mov	r3, 1071644672
	mov	r1, t0
	mov	r0, rax
	call	__muldf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x1
	mov	r1, x0
	mov	r2, x2
	mov	r3, x3
	call	__divdf3
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__adddf3
	mov	r2, 0
	mov	r3, 1071644672
	mov	r1, t0
	mov	r0, rax
	call	__muldf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x1
	mov	r1, x0
	mov	r2, x2
	mov	r3, x3
	call	__divdf3
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__adddf3
	mov	r2, 0
	mov	r3, 1071644672
	mov	r1, t0
	mov	r0, rax
	call	__muldf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x1
	mov	r1, x0
	mov	r2, x2
	mov	r3, x3
	call	__divdf3
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__adddf3
	mov	r2, 0
	mov	r3, 1071644672
	mov	r1, t0
	mov	r0, rax
	call	__muldf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x1
	mov	r1, x0
	mov	r2, x2
	mov	r3, x3
	call	__divdf3
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__adddf3
	mov	r2, 0
	mov	r3, 1071644672
	mov	r1, t0
	mov	r0, rax
	call	__muldf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x1
	mov	r1, x0
	mov	r2, x2
	mov	r3, x3
	call	__divdf3
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__adddf3
	mov	r2, 0
	mov	r3, 1071644672
	mov	r1, t0
	mov	r0, rax
	call	__muldf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x1
	mov	r1, x0
	mov	r2, x2
	mov	r3, x3
	call	__divdf3
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__adddf3
	mov	r2, 0
	mov	r3, 1071644672
	mov	r1, t0
	mov	r0, rax
	call	__muldf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x1
	mov	r1, x0
	mov	r2, x2
	mov	r3, x3
	call	__divdf3
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__adddf3
	mov	r2, 0
	mov	r3, 1071644672
	mov	r1, t0
	mov	r0, rax
	call	__muldf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x1
	mov	r1, x0
	mov	r2, x2
	mov	r3, x3
	call	__divdf3
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__adddf3
	mov	r2, 0
	mov	r3, 1071644672
	mov	r1, t0
	mov	r0, rax
	call	__muldf3
	mov	x1, rax
	mov	x0, t0
.LBB47_16:
	mov	rax, x1
	mov	t0, x0
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
// -- Begin function sqrtf
sqrtf:                                  // @sqrtf
// %bb.0:
	call	__extendsfdf2
	mov	r1, t0
	mov	r0, rax
	call	sqrt
	mov	r1, t0
	mov	r0, rax
	call	__truncdfsf2
	ret
// -- End function
// -- Begin function sqrtl
sqrtl:                                  // @sqrtl
// %bb.0:
	jmp	sqrt
// -- End function
// -- Begin function sin
sin:                                    // @sin
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
	mov	r1, 2147483647
	mov	x1, r0
	mov	r0, x0
	call	__bit_and
	mov	r0, 2146435072
	jl	rax, r0, .LBB50_2
	jmp	.LBB50_1
.LBB50_1:
	mov	r0, mcasm_static_dc0ade02eb8bb208cf058fd41e6d2a5b
	mov	[r0], 33
	mov	t0, 2146959360
	mov	rax, 0
	jmp	.LBB50_9
.LBB50_2:
	mov	r2, 1413754136
	mov	r3, 1074340347
	mov	r0, x1
	mov	r1, x0
	call	__gtdf2
	mov	r0, 1
	jl	rax, r0, .LBB50_4
	jmp	.LBB50_3
.LBB50_3:                               // %.preheader5.preheader
	mov	x2, 0
	jmp	.LBB50_6
.LBB50_4:                               // %.loopexit6
	mov	r2, 1413754136
	mov	r3, -1073143301
	mov	r0, x1
	mov	r1, x0
	call	__ltdf2
	mov	r0, -1
	jg	rax, r0, .LBB50_8
	jmp	.LBB50_5
.LBB50_5:                               // %.preheader.preheader
	mov	x2, 0
	jmp	.LBB50_7
.LBB50_6:                               // %.preheader5
                                        // =>This Inner Loop Header: Depth=1
	mov	r2, 1413754136
	mov	r3, -1072094725
	mov	r0, x1
	mov	r1, x0
	call	__adddf3
	mov	r2, 1413754136
	mov	r3, 1074340347
	mov	x1, rax
	mov	x0, t0
	mov	r0, x1
	mov	r1, x0
	call	__gtdf2
	jg	rax, x2, .LBB50_6
	jmp	.LBB50_4
.LBB50_7:                               // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r2, 1413754136
	mov	r3, 1075388923
	mov	r0, x1
	mov	r1, x0
	call	__adddf3
	mov	r2, 1413754136
	mov	r3, -1073143301
	mov	x1, rax
	mov	x0, t0
	mov	r0, x1
	mov	r1, x0
	call	__ltdf2
	jl	rax, x2, .LBB50_7
	jmp	.LBB50_8
.LBB50_8:                               // %.loopexit
	mov	r0, x1
	mov	r1, x0
	mov	r2, x1
	mov	r3, x0
	call	__muldf3
	mov	r2, 0
	mov	r3, -1072168960
	mov	x2, rax
	mov	x3, t0
	mov	r0, x2
	mov	r1, x3
	call	__divdf3
	mov	r2, 0
	mov	r3, 1072693248
	mov	r1, t0
	mov	r0, rax
	call	__adddf3
	mov	x4, rax
	mov	x5, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, x2
	mov	r3, x3
	call	__muldf3
	mov	r2, 0
	mov	r3, 1079902208
	mov	x6, rax
	mov	x7, t0
	mov	r0, x6
	mov	r1, x7
	call	__divdf3
	mov	r3, t0
	mov	r0, x4
	mov	r1, x5
	mov	r2, rax
	call	__adddf3
	mov	x4, rax
	mov	x5, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, x6
	mov	r3, x7
	call	__muldf3
	mov	r2, 0
	mov	r3, -1061965824
	mov	x6, rax
	mov	x7, t0
	mov	r0, x6
	mov	r1, x7
	call	__divdf3
	mov	r3, t0
	mov	r0, x4
	mov	r1, x5
	mov	r2, rax
	call	__adddf3
	mov	x4, rax
	mov	x5, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, x6
	mov	r3, x7
	call	__muldf3
	mov	r2, 0
	mov	r3, 1091970560
	mov	r1, t0
	mov	r0, rax
	call	__divdf3
	mov	r3, t0
	mov	r0, x4
	mov	r1, x5
	mov	r2, rax
	call	__adddf3
	mov	r3, t0
	mov	r0, x1
	mov	r1, x0
	mov	r2, rax
	call	__muldf3
.LBB50_9:
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
// -- Begin function sinf
sinf:                                   // @sinf
// %bb.0:
	call	__extendsfdf2
	mov	r1, t0
	mov	r0, rax
	call	sin
	mov	r1, t0
	mov	r0, rax
	call	__truncdfsf2
	ret
// -- End function
// -- Begin function sinl
sinl:                                   // @sinl
// %bb.0:
	jmp	sin
// -- End function
// -- Begin function cos
cos:                                    // @cos
// %bb.0:
sub	rsp, 24
	mov	[rsp+20], x0
	mov	[rsp+16], x1
	mov	[rsp+12], x2
	mov	[rsp+8], x3
	mov	[rsp+4], x4
	mov	[rsp], x5
	mov	x0, r1
	mov	r1, 2147483647
	mov	x1, r0
	mov	r0, x0
	call	__bit_and
	mov	r0, 2146435072
	jl	rax, r0, .LBB53_2
	jmp	.LBB53_1
.LBB53_1:
	mov	r0, mcasm_static_dc0ade02eb8bb208cf058fd41e6d2a5b
	mov	[r0], 33
	mov	t0, 2146959360
	mov	rax, 0
	jmp	.LBB53_9
.LBB53_2:
	mov	r2, 1413754136
	mov	r3, 1074340347
	mov	r0, x1
	mov	r1, x0
	call	__gtdf2
	mov	r0, 1
	jl	rax, r0, .LBB53_4
	jmp	.LBB53_3
.LBB53_3:                               // %.preheader5.preheader
	mov	x2, 0
	jmp	.LBB53_6
.LBB53_4:                               // %.loopexit6
	mov	r2, 1413754136
	mov	r3, -1073143301
	mov	r0, x1
	mov	r1, x0
	call	__ltdf2
	mov	r0, -1
	jg	rax, r0, .LBB53_8
	jmp	.LBB53_5
.LBB53_5:                               // %.preheader.preheader
	mov	x2, 0
	jmp	.LBB53_7
.LBB53_6:                               // %.preheader5
                                        // =>This Inner Loop Header: Depth=1
	mov	r2, 1413754136
	mov	r3, -1072094725
	mov	r0, x1
	mov	r1, x0
	call	__adddf3
	mov	r2, 1413754136
	mov	r3, 1074340347
	mov	x1, rax
	mov	x0, t0
	mov	r0, x1
	mov	r1, x0
	call	__gtdf2
	jg	rax, x2, .LBB53_6
	jmp	.LBB53_4
.LBB53_7:                               // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r2, 1413754136
	mov	r3, 1075388923
	mov	r0, x1
	mov	r1, x0
	call	__adddf3
	mov	r2, 1413754136
	mov	r3, -1073143301
	mov	x1, rax
	mov	x0, t0
	mov	r0, x1
	mov	r1, x0
	call	__ltdf2
	jl	rax, x2, .LBB53_7
	jmp	.LBB53_8
.LBB53_8:                               // %.loopexit
	mov	r0, x1
	mov	r1, x0
	mov	r2, x1
	mov	r3, x0
	call	__muldf3
	mov	r2, 0
	mov	r3, -1075838976
	mov	x0, rax
	mov	x1, t0
	mov	r0, x0
	mov	r1, x1
	call	__muldf3
	mov	r2, 0
	mov	r3, 1072693248
	mov	r1, t0
	mov	r0, rax
	call	__adddf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x0
	mov	r1, x1
	mov	r2, x0
	mov	r3, x1
	call	__muldf3
	mov	r2, 0
	mov	r3, 1077411840
	mov	x4, rax
	mov	x5, t0
	mov	r0, x4
	mov	r1, x5
	call	__divdf3
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__adddf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x0
	mov	r1, x1
	mov	r2, x4
	mov	r3, x5
	call	__muldf3
	mov	r2, 0
	mov	r3, -1064927232
	mov	x4, rax
	mov	x5, t0
	mov	r0, x4
	mov	r1, x5
	call	__divdf3
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__adddf3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x0
	mov	r1, x1
	mov	r2, x4
	mov	r3, x5
	call	__muldf3
	mov	r2, 0
	mov	r3, 1088663552
	mov	r1, t0
	mov	r0, rax
	call	__divdf3
	mov	r3, t0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__adddf3
.LBB53_9:
	mov	x5, [rsp]
	mov	x4, [rsp+4]
	mov	x3, [rsp+8]
	mov	x2, [rsp+12]
	mov	x1, [rsp+16]
	mov	x0, [rsp+20]
add	rsp, 24
	ret
// -- End function
// -- Begin function cosf
cosf:                                   // @cosf
// %bb.0:
	call	__extendsfdf2
	mov	r1, t0
	mov	r0, rax
	call	cos
	mov	r1, t0
	mov	r0, rax
	call	__truncdfsf2
	ret
// -- End function
// -- Begin function cosl
cosl:                                   // @cosl
// %bb.0:
	jmp	cos
// -- End function
// -- Begin function tan
tan:                                    // @tan
// %bb.0:
sub	rsp, 20
	mov	[rsp+16], x0
	mov	[rsp+12], x1
	mov	[rsp+8], x2
	mov	[rsp+4], x3
	mov	[rsp], x4
	mov	x1, r1
	mov	x2, r0
	call	cos
	mov	x3, rax
	mov	x4, t0
	mov	r2, 0
	mov	r3, 0
	mov	x0, 0
	mov	r0, x3
	mov	r1, x4
	call	__nedf2
	jnz	rax, .LBB56_4
	jmp	.LBB56_1
.LBB56_1:
	mov	r0, mcasm_static_dc0ade02eb8bb208cf058fd41e6d2a5b
	mov	r2, 0
	mov	r3, 0
	mov	[r0], 34
	mov	r0, x2
	mov	r1, x1
	call	__ltdf2
	mov	r1, 1
	jl	rax, x0, .LBB56_3
// %bb.2:
	mov	r1, 0
.LBB56_3:
	mov	r0, 0
	sub	r0, r1
	mov	r1, -2147483648
	call	__bit_and
	mov	t0, rax
add	t0, 2146435072
	jmp	.LBB56_5
.LBB56_4:
	mov	r0, x2
	mov	r1, x1
	call	sin
	mov	r1, t0
	mov	r0, rax
	mov	r2, x3
	mov	r3, x4
	call	__divdf3
	mov	x0, rax
.LBB56_5:
	mov	rax, x0
	mov	x4, [rsp]
	mov	x3, [rsp+4]
	mov	x2, [rsp+8]
	mov	x1, [rsp+12]
	mov	x0, [rsp+16]
add	rsp, 20
	ret
// -- End function
// -- Begin function tanf
tanf:                                   // @tanf
// %bb.0:
sub	rsp, 24
	mov	[rsp+20], x0
	mov	[rsp+16], x1
	mov	[rsp+12], x2
	mov	[rsp+8], x3
	mov	[rsp+4], x4
	mov	[rsp], x5
	mov	x1, r0
	call	__extendsfdf2
	mov	x4, rax
	mov	x5, t0
	mov	r0, x4
	mov	r1, x5
	call	cos
	mov	x2, rax
	mov	x3, t0
	mov	r2, 0
	mov	r3, 0
	mov	x0, 0
	mov	r0, x2
	mov	r1, x3
	call	__nedf2
	jnz	rax, .LBB57_4
	jmp	.LBB57_1
.LBB57_1:
	mov	r0, mcasm_static_dc0ade02eb8bb208cf058fd41e6d2a5b
	mov	r1, 0
	mov	[r0], 34
	mov	r0, x1
	call	__ltsf2
	mov	r1, 1
	jl	rax, x0, .LBB57_3
// %bb.2:
	mov	r1, 0
.LBB57_3:
	mov	r0, 0
	sub	r0, r1
	mov	r1, -2147483648
	call	__bit_and
	mov	r1, rax
add	r1, 2146435072
	jmp	.LBB57_5
.LBB57_4:
	mov	r0, x4
	mov	r1, x5
	call	sin
	mov	r1, t0
	mov	r0, rax
	mov	r2, x2
	mov	r3, x3
	call	__divdf3
	mov	x0, rax
	mov	r1, t0
.LBB57_5:
	mov	r0, x0
	call	__truncdfsf2
	mov	x5, [rsp]
	mov	x4, [rsp+4]
	mov	x3, [rsp+8]
	mov	x2, [rsp+12]
	mov	x1, [rsp+16]
	mov	x0, [rsp+20]
add	rsp, 24
	ret
// -- End function
// -- Begin function tanl
tanl:                                   // @tanl
// %bb.0:
sub	rsp, 20
	mov	[rsp+16], x0
	mov	[rsp+12], x1
	mov	[rsp+8], x2
	mov	[rsp+4], x3
	mov	[rsp], x4
	mov	x1, r1
	mov	x2, r0
	call	cos
	mov	x3, rax
	mov	x4, t0
	mov	r2, 0
	mov	r3, 0
	mov	x0, 0
	mov	r0, x3
	mov	r1, x4
	call	__nedf2
	jnz	rax, .LBB58_4
	jmp	.LBB58_1
.LBB58_1:
	mov	r0, mcasm_static_dc0ade02eb8bb208cf058fd41e6d2a5b
	mov	r2, 0
	mov	r3, 0
	mov	[r0], 34
	mov	r0, x2
	mov	r1, x1
	call	__ltdf2
	mov	r1, 1
	jl	rax, x0, .LBB58_3
// %bb.2:
	mov	r1, 0
.LBB58_3:
	mov	r0, 0
	sub	r0, r1
	mov	r1, -2147483648
	call	__bit_and
	mov	t0, rax
add	t0, 2146435072
	jmp	.LBB58_5
.LBB58_4:
	mov	r0, x2
	mov	r1, x1
	call	sin
	mov	r1, t0
	mov	r0, rax
	mov	r2, x3
	mov	r3, x4
	call	__divdf3
	mov	x0, rax
.LBB58_5:
	mov	rax, x0
	mov	x4, [rsp]
	mov	x3, [rsp+4]
	mov	x2, [rsp+8]
	mov	x1, [rsp+12]
	mov	x0, [rsp+16]
add	rsp, 20
	ret
// -- End function
// -- Begin function exp
exp:                                    // @exp
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
	mov	x1, r0
	mov	r2, 0
	mov	r3, 1082533888
	mov	x2, 0
	call	__gtdf2
	mov	r0, 1
	jl	rax, r0, .LBB59_2
	jmp	.LBB59_1
.LBB59_1:
	mov	r0, mcasm_static_dc0ade02eb8bb208cf058fd41e6d2a5b
	mov	[r0], 34
	mov	x2, 2146435072
	mov	x3, 0
	jmp	.LBB59_5
.LBB59_2:
	mov	r2, 0
	mov	r3, -1064876032
	mov	r0, x1
	mov	r1, x0
	call	__ltdf2
	mov	x3, 0
	jl	rax, x2, .LBB59_5
	jmp	.LBB59_3
.LBB59_3:                               // %.preheader.preheader
	mov	x2, 1072693248
	mov	x4, 1
	mov	x7, 40
	mov	x5, 0
	mov	x6, 1072693248
.LBB59_4:                               // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, x4
	call	__floatunsidf
	mov	r3, t0
	mov	r0, x1
	mov	r1, x0
	mov	r2, rax
	call	__divdf3
	mov	r3, t0
	mov	r0, x5
	mov	r1, x6
	mov	r2, rax
	call	__muldf3
	mov	x5, rax
	mov	x6, t0
	mov	r0, x3
	mov	r1, x2
	mov	r2, x5
	mov	r3, x6
	call	__adddf3
add	x4, 1
	mov	x3, rax
	mov	x2, t0
	jne	x4, x7, .LBB59_4
	jmp	.LBB59_5
.LBB59_5:                               // %.loopexit
	mov	rax, x3
	mov	t0, x2
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
// -- Begin function expf
expf:                                   // @expf
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
	mov	x2, r0
	call	__extendsfdf2
	mov	r1, 1144078336
	mov	x0, rax
	mov	x1, t0
	mov	r0, x2
	call	__gtsf2
	mov	r0, 1
	jl	rax, r0, .LBB60_2
	jmp	.LBB60_1
.LBB60_1:
	mov	r0, mcasm_static_dc0ade02eb8bb208cf058fd41e6d2a5b
	mov	[r0], 34
	mov	rax, 2139095040
	jmp	.LBB60_6
.LBB60_2:
	mov	r1, -1002815488
	mov	r0, x2
	call	__ltsf2
	mov	r0, rax
	mov	rax, 0
	jl	r0, rax, .LBB60_6
	jmp	.LBB60_3
.LBB60_3:                               // %.preheader.preheader
	mov	x3, 1072693248
	mov	x4, 0
	mov	x2, 1
	mov	x7, 40
	mov	x5, 0
	mov	x6, 1072693248
.LBB60_4:                               // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, x2
	call	__floatunsidf
	mov	r3, t0
	mov	r0, x0
	mov	r1, x1
	mov	r2, rax
	call	__divdf3
	mov	r3, t0
	mov	r0, x5
	mov	r1, x6
	mov	r2, rax
	call	__muldf3
	mov	x5, rax
	mov	x6, t0
	mov	r0, x4
	mov	r1, x3
	mov	r2, x5
	mov	r3, x6
	call	__adddf3
add	x2, 1
	mov	x4, rax
	mov	x3, t0
	jne	x2, x7, .LBB60_4
	jmp	.LBB60_5
.LBB60_5:
	mov	r0, x4
	mov	r1, x3
	call	__truncdfsf2
.LBB60_6:
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
// -- Begin function expl
expl:                                   // @expl
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
	mov	x1, r0
	mov	r2, 0
	mov	r3, 1082533888
	mov	x2, 0
	call	__gtdf2
	mov	r0, 1
	jl	rax, r0, .LBB61_2
	jmp	.LBB61_1
.LBB61_1:
	mov	r0, mcasm_static_dc0ade02eb8bb208cf058fd41e6d2a5b
	mov	[r0], 34
	mov	x2, 2146435072
	mov	x3, 0
	jmp	.LBB61_5
.LBB61_2:
	mov	r2, 0
	mov	r3, -1064876032
	mov	r0, x1
	mov	r1, x0
	call	__ltdf2
	mov	x3, 0
	jl	rax, x2, .LBB61_5
	jmp	.LBB61_3
.LBB61_3:                               // %.preheader.preheader
	mov	x2, 1072693248
	mov	x4, 1
	mov	x7, 40
	mov	x5, 0
	mov	x6, 1072693248
.LBB61_4:                               // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, x4
	call	__floatunsidf
	mov	r3, t0
	mov	r0, x1
	mov	r1, x0
	mov	r2, rax
	call	__divdf3
	mov	r3, t0
	mov	r0, x5
	mov	r1, x6
	mov	r2, rax
	call	__muldf3
	mov	x5, rax
	mov	x6, t0
	mov	r0, x3
	mov	r1, x2
	mov	r2, x5
	mov	r3, x6
	call	__adddf3
add	x4, 1
	mov	x3, rax
	mov	x2, t0
	jne	x4, x7, .LBB61_4
	jmp	.LBB61_5
.LBB61_5:                               // %.loopexit
	mov	rax, x3
	mov	t0, x2
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
// -- Begin function log
log:                                    // @log
// %bb.0:
sub	rsp, 28
	mov	[rsp+24], x0
	mov	[rsp+20], x1
	mov	[rsp+16], x2
	mov	[rsp+12], x3
	mov	[rsp+8], x4
	mov	[rsp+4], x5
	mov	[rsp], x6
	mov	r2, 0
	mov	r3, 0
	mov	x1, r1
	mov	x2, r0
	call	__ltdf2
	mov	r0, -1
	jg	rax, r0, .LBB62_2
	jmp	.LBB62_1
.LBB62_1:
	mov	r0, mcasm_static_dc0ade02eb8bb208cf058fd41e6d2a5b
	mov	[r0], 33
	mov	x1, 2146959360
	mov	x2, 0
	jmp	.LBB62_12
.LBB62_2:
	mov	r2, 0
	mov	r3, 0
	mov	r0, x2
	mov	r1, x1
	call	__nedf2
	jnz	rax, .LBB62_4
	jmp	.LBB62_3
.LBB62_3:
	mov	r0, mcasm_static_dc0ade02eb8bb208cf058fd41e6d2a5b
	mov	[r0], 34
	mov	x1, -1048576
	mov	x2, 0
	jmp	.LBB62_12
.LBB62_4:
	mov	r1, 2147483647
	mov	r0, x1
	call	__bit_and
	mov	r0, 2146435071
	jg	rax, r0, .LBB62_12
	jmp	.LBB62_5
.LBB62_5:
	mov	r2, 0
	mov	r3, 1073741824
	mov	x0, 0
	mov	r0, x2
	mov	r1, x1
	call	__gtdf2
	mov	r0, 1
	jl	rax, r0, .LBB62_7
	jmp	.LBB62_6
.LBB62_6:                               // %.preheader4.preheader
	mov	x3, 0
	jmp	.LBB62_9
.LBB62_7:                               // %.loopexit5
	mov	r2, 0
	mov	r3, 1071644672
	mov	x3, 0
	mov	r0, x2
	mov	r1, x1
	call	__ltdf2
	mov	r0, -1
	jg	rax, r0, .LBB62_11
	jmp	.LBB62_8
.LBB62_8:                               // %.preheader.preheader
	jmp	.LBB62_10
.LBB62_9:                               // %.preheader4
                                        // =>This Inner Loop Header: Depth=1
	mov	r2, 0
	mov	r3, 1071644672
	mov	r0, x2
	mov	r1, x1
	call	__muldf3
	mov	x2, rax
	mov	x1, t0
	mov	r2, 0
	mov	r3, 1073741824
add	x0, 1
	mov	r0, x2
	mov	r1, x1
	call	__gtdf2
	jg	rax, x3, .LBB62_9
	jmp	.LBB62_7
.LBB62_10:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, x2
	mov	r1, x1
	mov	r2, x2
	mov	r3, x1
	call	__adddf3
	mov	x2, rax
	mov	x1, t0
	mov	r2, 0
	mov	r3, 1071644672
add	x0, -1
	mov	r0, x2
	mov	r1, x1
	call	__ltdf2
	jl	rax, x3, .LBB62_10
	jmp	.LBB62_11
.LBB62_11:                              // %.loopexit
	mov	r2, 0
	mov	r3, -1074790400
	mov	r0, x2
	mov	r1, x1
	call	__adddf3
	mov	r2, 0
	mov	r3, 1072693248
	mov	x3, rax
	mov	x4, t0
	mov	r0, x2
	mov	r1, x1
	call	__adddf3
	mov	r3, t0
	mov	r0, x3
	mov	r1, x4
	mov	r2, rax
	call	__divdf3
	mov	x3, rax
	mov	x4, t0
	mov	r0, x3
	mov	r1, x4
	mov	r2, x3
	mov	r3, x4
	call	__muldf3
	mov	r2, 0
	mov	r3, 0
	mov	x1, rax
	mov	x2, t0
	mov	r0, x3
	mov	r1, x4
	call	__adddf3
	mov	x5, rax
	mov	x6, t0
	mov	r0, x3
	mov	r1, x4
	mov	r2, x1
	mov	r3, x2
	call	__muldf3
	mov	r2, 0
	mov	r3, 1074266112
	mov	x3, rax
	mov	x4, t0
	mov	r0, x3
	mov	r1, x4
	call	__divdf3
	mov	r3, t0
	mov	r0, x5
	mov	r1, x6
	mov	r2, rax
	call	__adddf3
	mov	x5, rax
	mov	x6, t0
	mov	r0, x1
	mov	r1, x2
	mov	r2, x3
	mov	r3, x4
	call	__muldf3
	mov	r2, 0
	mov	r3, 1075052544
	mov	x3, rax
	mov	x4, t0
	mov	r0, x3
	mov	r1, x4
	call	__divdf3
	mov	r3, t0
	mov	r0, x5
	mov	r1, x6
	mov	r2, rax
	call	__adddf3
	mov	x5, rax
	mov	x6, t0
	mov	r0, x1
	mov	r1, x2
	mov	r2, x3
	mov	r3, x4
	call	__muldf3
	mov	r2, 0
	mov	r3, 1075576832
	mov	x3, rax
	mov	x4, t0
	mov	r0, x3
	mov	r1, x4
	call	__divdf3
	mov	r3, t0
	mov	r0, x5
	mov	r1, x6
	mov	r2, rax
	call	__adddf3
	mov	x5, rax
	mov	x6, t0
	mov	r0, x1
	mov	r1, x2
	mov	r2, x3
	mov	r3, x4
	call	__muldf3
	mov	r2, 0
	mov	r3, 1075970048
	mov	x3, rax
	mov	x4, t0
	mov	r0, x3
	mov	r1, x4
	call	__divdf3
	mov	r3, t0
	mov	r0, x5
	mov	r1, x6
	mov	r2, rax
	call	__adddf3
	mov	x5, rax
	mov	x6, t0
	mov	r0, x1
	mov	r1, x2
	mov	r2, x3
	mov	r3, x4
	call	__muldf3
	mov	r2, 0
	mov	r3, 1076232192
	mov	x3, rax
	mov	x4, t0
	mov	r0, x3
	mov	r1, x4
	call	__divdf3
	mov	r3, t0
	mov	r0, x5
	mov	r1, x6
	mov	r2, rax
	call	__adddf3
	mov	x5, rax
	mov	x6, t0
	mov	r0, x1
	mov	r1, x2
	mov	r2, x3
	mov	r3, x4
	call	__muldf3
	mov	r2, 0
	mov	r3, 1076494336
	mov	x3, rax
	mov	x4, t0
	mov	r0, x3
	mov	r1, x4
	call	__divdf3
	mov	r3, t0
	mov	r0, x5
	mov	r1, x6
	mov	r2, rax
	call	__adddf3
	mov	x5, rax
	mov	x6, t0
	mov	r0, x1
	mov	r1, x2
	mov	r2, x3
	mov	r3, x4
	call	__muldf3
	mov	r2, 0
	mov	r3, 1076756480
	mov	x3, rax
	mov	x4, t0
	mov	r0, x3
	mov	r1, x4
	call	__divdf3
	mov	r3, t0
	mov	r0, x5
	mov	r1, x6
	mov	r2, rax
	call	__adddf3
	mov	x5, rax
	mov	x6, t0
	mov	r0, x1
	mov	r1, x2
	mov	r2, x3
	mov	r3, x4
	call	__muldf3
	mov	r2, 0
	mov	r3, 1076953088
	mov	x3, rax
	mov	x4, t0
	mov	r0, x3
	mov	r1, x4
	call	__divdf3
	mov	r3, t0
	mov	r0, x5
	mov	r1, x6
	mov	r2, rax
	call	__adddf3
	mov	x5, rax
	mov	x6, t0
	mov	r0, x1
	mov	r1, x2
	mov	r2, x3
	mov	r3, x4
	call	__muldf3
	mov	r2, 0
	mov	r3, 1077084160
	mov	x3, rax
	mov	x4, t0
	mov	r0, x3
	mov	r1, x4
	call	__divdf3
	mov	r3, t0
	mov	r0, x5
	mov	r1, x6
	mov	r2, rax
	call	__adddf3
	mov	x5, rax
	mov	x6, t0
	mov	r0, x1
	mov	r1, x2
	mov	r2, x3
	mov	r3, x4
	call	__muldf3
	mov	r2, 0
	mov	r3, 1077215232
	mov	x3, rax
	mov	x4, t0
	mov	r0, x3
	mov	r1, x4
	call	__divdf3
	mov	r3, t0
	mov	r0, x5
	mov	r1, x6
	mov	r2, rax
	call	__adddf3
	mov	x5, rax
	mov	x6, t0
	mov	r0, x1
	mov	r1, x2
	mov	r2, x3
	mov	r3, x4
	call	__muldf3
	mov	r2, 0
	mov	r3, 1077346304
	mov	x3, rax
	mov	x4, t0
	mov	r0, x3
	mov	r1, x4
	call	__divdf3
	mov	r3, t0
	mov	r0, x5
	mov	r1, x6
	mov	r2, rax
	call	__adddf3
	mov	x5, rax
	mov	x6, t0
	mov	r0, x1
	mov	r1, x2
	mov	r2, x3
	mov	r3, x4
	call	__muldf3
	mov	r2, 0
	mov	r3, 1077477376
	mov	x3, rax
	mov	x4, t0
	mov	r0, x3
	mov	r1, x4
	call	__divdf3
	mov	r3, t0
	mov	r0, x5
	mov	r1, x6
	mov	r2, rax
	call	__adddf3
	mov	x5, rax
	mov	x6, t0
	mov	r0, x1
	mov	r1, x2
	mov	r2, x3
	mov	r3, x4
	call	__muldf3
	mov	r2, 0
	mov	r3, 1077608448
	mov	x3, rax
	mov	x4, t0
	mov	r0, x3
	mov	r1, x4
	call	__divdf3
	mov	r3, t0
	mov	r0, x5
	mov	r1, x6
	mov	r2, rax
	call	__adddf3
	mov	x5, rax
	mov	x6, t0
	mov	r0, x1
	mov	r1, x2
	mov	r2, x3
	mov	r3, x4
	call	__muldf3
	mov	r2, 0
	mov	r3, 1077739520
	mov	x3, rax
	mov	x4, t0
	mov	r0, x3
	mov	r1, x4
	call	__divdf3
	mov	r3, t0
	mov	r0, x5
	mov	r1, x6
	mov	r2, rax
	call	__adddf3
	mov	x5, rax
	mov	x6, t0
	mov	r0, x1
	mov	r1, x2
	mov	r2, x3
	mov	r3, x4
	call	__muldf3
	mov	r2, 0
	mov	r3, 1077870592
	mov	x3, rax
	mov	x4, t0
	mov	r0, x3
	mov	r1, x4
	call	__divdf3
	mov	r3, t0
	mov	r0, x5
	mov	r1, x6
	mov	r2, rax
	call	__adddf3
	mov	x5, rax
	mov	x6, t0
	mov	r0, x1
	mov	r1, x2
	mov	r2, x3
	mov	r3, x4
	call	__muldf3
	mov	r2, 0
	mov	r3, 1077968896
	mov	x3, rax
	mov	x4, t0
	mov	r0, x3
	mov	r1, x4
	call	__divdf3
	mov	r3, t0
	mov	r0, x5
	mov	r1, x6
	mov	r2, rax
	call	__adddf3
	mov	x5, rax
	mov	x6, t0
	mov	r0, x1
	mov	r1, x2
	mov	r2, x3
	mov	r3, x4
	call	__muldf3
	mov	r2, 0
	mov	r3, 1078034432
	mov	x3, rax
	mov	x4, t0
	mov	r0, x3
	mov	r1, x4
	call	__divdf3
	mov	r3, t0
	mov	r0, x5
	mov	r1, x6
	mov	r2, rax
	call	__adddf3
	mov	x5, rax
	mov	x6, t0
	mov	r0, x1
	mov	r1, x2
	mov	r2, x3
	mov	r3, x4
	call	__muldf3
	mov	r2, 0
	mov	r3, 1078099968
	mov	x3, rax
	mov	x4, t0
	mov	r0, x3
	mov	r1, x4
	call	__divdf3
	mov	r3, t0
	mov	r0, x5
	mov	r1, x6
	mov	r2, rax
	call	__adddf3
	mov	x5, rax
	mov	x6, t0
	mov	r0, x1
	mov	r1, x2
	mov	r2, x3
	mov	r3, x4
	call	__muldf3
	mov	r2, 0
	mov	r3, 1078165504
	mov	x3, rax
	mov	x4, t0
	mov	r0, x3
	mov	r1, x4
	call	__divdf3
	mov	r3, t0
	mov	r0, x5
	mov	r1, x6
	mov	r2, rax
	call	__adddf3
	mov	x5, rax
	mov	x6, t0
	mov	r0, x1
	mov	r1, x2
	mov	r2, x3
	mov	r3, x4
	call	__muldf3
	mov	r2, 0
	mov	r3, 1078231040
	mov	x3, rax
	mov	x4, t0
	mov	r0, x3
	mov	r1, x4
	call	__divdf3
	mov	r3, t0
	mov	r0, x5
	mov	r1, x6
	mov	r2, rax
	call	__adddf3
	mov	x5, rax
	mov	x6, t0
	mov	r0, x1
	mov	r1, x2
	mov	r2, x3
	mov	r3, x4
	call	__muldf3
	mov	r2, 0
	mov	r3, 1078296576
	mov	x3, rax
	mov	x4, t0
	mov	r0, x3
	mov	r1, x4
	call	__divdf3
	mov	r3, t0
	mov	r0, x5
	mov	r1, x6
	mov	r2, rax
	call	__adddf3
	mov	x5, rax
	mov	x6, t0
	mov	r0, x1
	mov	r1, x2
	mov	r2, x3
	mov	r3, x4
	call	__muldf3
	mov	r2, 0
	mov	r3, 1078362112
	mov	x3, rax
	mov	x4, t0
	mov	r0, x3
	mov	r1, x4
	call	__divdf3
	mov	r3, t0
	mov	r0, x5
	mov	r1, x6
	mov	r2, rax
	call	__adddf3
	mov	x5, rax
	mov	x6, t0
	mov	r0, x1
	mov	r1, x2
	mov	r2, x3
	mov	r3, x4
	call	__muldf3
	mov	r2, 0
	mov	r3, 1078427648
	mov	x3, rax
	mov	x4, t0
	mov	r0, x3
	mov	r1, x4
	call	__divdf3
	mov	r3, t0
	mov	r0, x5
	mov	r1, x6
	mov	r2, rax
	call	__adddf3
	mov	x5, rax
	mov	x6, t0
	mov	r0, x1
	mov	r1, x2
	mov	r2, x3
	mov	r3, x4
	call	__muldf3
	mov	r2, 0
	mov	r3, 1078493184
	mov	r1, t0
	mov	r0, rax
	call	__divdf3
	mov	r3, t0
	mov	r0, x5
	mov	r1, x6
	mov	r2, rax
	call	__adddf3
	mov	x1, rax
	mov	x2, t0
	mov	r0, x0
	call	__floatsidf
	mov	r2, -17155601
	mov	r3, 1072049730
	mov	r1, t0
	mov	r0, rax
	call	__muldf3
	mov	x0, rax
	mov	x3, t0
	mov	r0, x1
	mov	r1, x2
	mov	r2, x1
	mov	r3, x2
	call	__adddf3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x0
	mov	r3, x3
	call	__adddf3
	mov	x2, rax
	mov	x1, t0
.LBB62_12:
	mov	rax, x2
	mov	t0, x1
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
// -- Begin function logf
logf:                                   // @logf
// %bb.0:
	call	__extendsfdf2
	mov	r1, t0
	mov	r0, rax
	call	log
	mov	r1, t0
	mov	r0, rax
	call	__truncdfsf2
	ret
// -- End function
// -- Begin function logl
logl:                                   // @logl
// %bb.0:
	jmp	log
// -- End function
// -- Begin function pow
pow:                                    // @pow
// %bb.0:
sub	rsp, 44
	mov	[rsp+40], x0
	mov	[rsp+36], x1
	mov	[rsp+32], x2
	mov	[rsp+28], x3
	mov	[rsp+24], x4
	mov	[rsp+20], x5
	mov	[rsp+16], x6
	mov	[rsp+12], x7
	mov	[rsp+8], x8
	mov	[rsp+4], x9
	mov	[rsp], x10
	mov	x0, r3
	mov	x4, r2
	mov	x1, r1
	mov	x2, r0
	mov	r0, x4
	mov	r1, x0
	call	__fixdfsi
	mov	x3, rax
	mov	r0, x3
	call	__floatsidf
	mov	r3, t0
	mov	r0, x4
	mov	r1, x0
	mov	r2, rax
	call	__nedf2
	jnz	rax, .LBB65_11
	jmp	.LBB65_1
.LBB65_1:
	mov	x4, 1072693248
	mov	x0, 0
	mov	x5, 0
	jz	x3, .LBB65_8
	jmp	.LBB65_2
.LBB65_2:
	mov	r0, -1
	mov	x6, x3
	jg	x3, r0, .LBB65_4
	jmp	.LBB65_3
.LBB65_3:
	mov	x6, 0
	sub	x6, x3
.LBB65_4:
	mov	x10, 0
.LBB65_5:                               // =>This Inner Loop Header: Depth=1
	mov	r1, 1
	mov	r0, x6
	call	__bit_and
	mov	x9, 1
	je	rax, x10, .LBB65_7
// %bb.6:                               //   in Loop: Header=BB65_5 Depth=1
	mov	x9, 0
.LBB65_7:                               //   in Loop: Header=BB65_5 Depth=1
	mov	r0, x2
	mov	r1, x1
	mov	r2, x5
	mov	r3, x4
	call	__muldf3
	mov	x7, t0
	sub	x4, x7
	mov	x8, 0
	sub	x8, x9
	mov	x9, rax
	mov	r0, x8
	mov	r1, x4
	call	__bit_and
	mov	x4, rax
	sub	x5, x9
	add	x4, x7
	mov	r0, x8
	mov	r1, x5
	call	__bit_and
	mov	x5, rax
	add	x5, x9
	mov	r0, x2
	mov	r1, x1
	mov	r2, x2
	mov	r3, x1
	call	__muldf3
	mov	r1, 1
	mov	x2, rax
	mov	x1, t0
	mov	r0, x6
	call	__bit_shr
	mov	x6, rax
	jnz	x6, .LBB65_5
	jmp	.LBB65_8
.LBB65_8:                               // %.loopexit
	mov	x1, 1
	jl	x3, x0, .LBB65_10
// %bb.9:                               // %.loopexit
	mov	x1, 0
.LBB65_10:                              // %.loopexit
	mov	r0, 0
	mov	r1, 1072693248
	mov	r2, x5
	mov	r3, x4
	call	__divdf3
	mov	r1, t0
	sub	r1, x4
	sub	x0, x1
	mov	x2, rax
	mov	r0, x0
	call	__bit_and
	mov	x1, rax
	sub	x2, x5
	add	x1, x4
	mov	r0, x0
	mov	r1, x2
	call	__bit_and
	mov	x3, rax
	add	x3, x5
	jmp	.LBB65_18
.LBB65_11:
	mov	r2, 0
	mov	r3, 0
	mov	x3, 0
	mov	r0, x2
	mov	r1, x1
	call	__ledf2
	jg	rax, x3, .LBB65_13
	jmp	.LBB65_12
.LBB65_12:
	mov	r0, mcasm_static_dc0ade02eb8bb208cf058fd41e6d2a5b
	mov	[r0], 33
	mov	x1, 2146959360
	jmp	.LBB65_18
.LBB65_13:
	mov	r0, x2
	mov	r1, x1
	call	log
	mov	r3, t0
	mov	r0, x4
	mov	r1, x0
	mov	r2, rax
	call	__muldf3
	mov	x0, rax
	mov	x2, t0
	mov	r2, 0
	mov	r3, 1082533888
	mov	x1, 0
	mov	r0, x0
	mov	r1, x2
	call	__gtdf2
	mov	r0, 1
	jl	rax, r0, .LBB65_15
	jmp	.LBB65_14
.LBB65_14:
	mov	r0, mcasm_static_dc0ade02eb8bb208cf058fd41e6d2a5b
	mov	[r0], 34
	mov	x1, 2146435072
	jmp	.LBB65_18
.LBB65_15:
	mov	r2, 0
	mov	r3, -1064876032
	mov	r0, x0
	mov	r1, x2
	call	__ltdf2
	jl	rax, x1, .LBB65_18
	jmp	.LBB65_16
.LBB65_16:                              // %.preheader.preheader
	mov	x1, 1072693248
	mov	x4, 1
	mov	x7, 40
	mov	x5, 0
	mov	x6, 1072693248
.LBB65_17:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, x4
	call	__floatunsidf
	mov	r3, t0
	mov	r0, x0
	mov	r1, x2
	mov	r2, rax
	call	__divdf3
	mov	r3, t0
	mov	r0, x5
	mov	r1, x6
	mov	r2, rax
	call	__muldf3
	mov	x5, rax
	mov	x6, t0
	mov	r0, x3
	mov	r1, x1
	mov	r2, x5
	mov	r3, x6
	call	__adddf3
add	x4, 1
	mov	x3, rax
	mov	x1, t0
	jne	x4, x7, .LBB65_17
	jmp	.LBB65_18
.LBB65_18:                              // %.loopexit4
	mov	rax, x3
	mov	t0, x1
	mov	x10, [rsp]
	mov	x9, [rsp+4]
	mov	x8, [rsp+8]
	mov	x7, [rsp+12]
	mov	x6, [rsp+16]
	mov	x5, [rsp+20]
	mov	x4, [rsp+24]
	mov	x3, [rsp+28]
	mov	x2, [rsp+32]
	mov	x1, [rsp+36]
	mov	x0, [rsp+40]
add	rsp, 44
	ret
// -- End function
// -- Begin function powf
powf:                                   // @powf
// %bb.0:
sub	rsp, 12
	mov	[rsp+8], x0
	mov	[rsp+4], x1
	mov	[rsp], x2
	mov	x0, r1
	call	__extendsfdf2
	mov	x1, rax
	mov	x2, t0
	mov	r0, x0
	call	__extendsfdf2
	mov	r3, t0
	mov	r0, x1
	mov	r1, x2
	mov	r2, rax
	call	pow
	mov	r1, t0
	mov	r0, rax
	call	__truncdfsf2
	mov	x2, [rsp]
	mov	x1, [rsp+4]
	mov	x0, [rsp+8]
add	rsp, 12
	ret
// -- End function
// -- Begin function powl
powl:                                   // @powl
// %bb.0:
	jmp	pow
// -- End function
// -- Begin function fmod
fmod:                                   // @fmod
// %bb.0:
sub	rsp, 20
	mov	[rsp+16], x0
	mov	[rsp+12], x1
	mov	[rsp+8], x2
	mov	[rsp+4], x3
	mov	[rsp], x4
	mov	x2, r3
	mov	x3, r2
	mov	x0, r1
	mov	x1, r0
	mov	r2, 0
	mov	r3, 0
	mov	x4, 0
	mov	r0, x3
	mov	r1, x2
	call	__nedf2
	jnz	rax, .LBB68_2
	jmp	.LBB68_1
.LBB68_1:
	mov	r0, mcasm_static_dc0ade02eb8bb208cf058fd41e6d2a5b
	mov	[r0], 33
	mov	t0, 2146959360
	jmp	.LBB68_3
.LBB68_2:
	mov	r0, x1
	mov	r1, x0
	mov	r2, x3
	mov	r3, x2
	call	__divdf3
	mov	r1, t0
	mov	r0, rax
	call	__fixdfsi
	mov	r0, rax
	call	__floatsidf
	mov	r1, t0
	mov	r0, rax
	mov	r2, x3
	mov	r3, x2
	call	__muldf3
	mov	r3, t0
	mov	r0, x1
	mov	r1, x0
	mov	r2, rax
	call	__subdf3
	mov	x4, rax
.LBB68_3:
	mov	rax, x4
	mov	x4, [rsp]
	mov	x3, [rsp+4]
	mov	x2, [rsp+8]
	mov	x1, [rsp+12]
	mov	x0, [rsp+16]
add	rsp, 20
	ret
// -- End function
// -- Begin function fmodf
fmodf:                                  // @fmodf
// %bb.0:
sub	rsp, 16
	mov	[rsp+12], x0
	mov	[rsp+8], x1
	mov	[rsp+4], x2
	mov	[rsp], x3
	mov	x0, r1
	mov	r1, 0
	mov	x1, r0
	mov	r0, x0
	call	__nesf2
	jnz	rax, .LBB69_2
	jmp	.LBB69_1
.LBB69_1:
	mov	r0, mcasm_static_dc0ade02eb8bb208cf058fd41e6d2a5b
	mov	[r0], 33
	mov	rax, 2143289344
	jmp	.LBB69_3
.LBB69_2:
	mov	r0, x0
	call	__extendsfdf2
	mov	x0, rax
	mov	x2, t0
	mov	r0, x1
	call	__extendsfdf2
	mov	x1, rax
	mov	x3, t0
	mov	r0, x1
	mov	r1, x3
	mov	r2, x0
	mov	r3, x2
	call	__divdf3
	mov	r1, t0
	mov	r0, rax
	call	__fixdfsi
	mov	r0, rax
	call	__floatsidf
	mov	r1, t0
	mov	r0, rax
	mov	r2, x0
	mov	r3, x2
	call	__muldf3
	mov	r3, t0
	mov	r0, x1
	mov	r1, x3
	mov	r2, rax
	call	__subdf3
	mov	r1, t0
	mov	r0, rax
	call	__truncdfsf2
.LBB69_3:
	mov	x3, [rsp]
	mov	x2, [rsp+4]
	mov	x1, [rsp+8]
	mov	x0, [rsp+12]
add	rsp, 16
	ret
// -- End function
// -- Begin function fmodl
fmodl:                                  // @fmodl
// %bb.0:
sub	rsp, 20
	mov	[rsp+16], x0
	mov	[rsp+12], x1
	mov	[rsp+8], x2
	mov	[rsp+4], x3
	mov	[rsp], x4
	mov	x2, r3
	mov	x3, r2
	mov	x0, r1
	mov	x1, r0
	mov	r2, 0
	mov	r3, 0
	mov	x4, 0
	mov	r0, x3
	mov	r1, x2
	call	__nedf2
	jnz	rax, .LBB70_2
	jmp	.LBB70_1
.LBB70_1:
	mov	r0, mcasm_static_dc0ade02eb8bb208cf058fd41e6d2a5b
	mov	[r0], 33
	mov	t0, 2146959360
	jmp	.LBB70_3
.LBB70_2:
	mov	r0, x1
	mov	r1, x0
	mov	r2, x3
	mov	r3, x2
	call	__divdf3
	mov	r1, t0
	mov	r0, rax
	call	__fixdfsi
	mov	r0, rax
	call	__floatsidf
	mov	r1, t0
	mov	r0, rax
	mov	r2, x3
	mov	r3, x2
	call	__muldf3
	mov	r3, t0
	mov	r0, x1
	mov	r1, x0
	mov	r2, rax
	call	__subdf3
	mov	x4, rax
.LBB70_3:
	mov	rax, x4
	mov	x4, [rsp]
	mov	x3, [rsp+4]
	mov	x2, [rsp+8]
	mov	x1, [rsp+12]
	mov	x0, [rsp+16]
add	rsp, 20
	ret
// -- End function
// -- Begin function copysign
copysign:                               // @copysign
// %bb.0:
sub	rsp, 24
	mov	[rsp+20], x0
	mov	[rsp+16], x1
	mov	[rsp+12], x2
	mov	[rsp+8], x3
	mov	[rsp+4], x4
	mov	[rsp], x5
	mov	x0, r1
	mov	x1, r0
	mov	x2, 0
	mov	x4, 1
	mov	x3, 1
	jl	r3, x2, .LBB71_2
// %bb.1:
	mov	x3, 0
.LBB71_2:
	mov	r2, 0
	mov	r3, 0
	mov	r0, x1
	mov	r1, x0
	call	__ltdf2
	jl	rax, x2, .LBB71_4
// %bb.3:
	mov	x4, 0
.LBB71_4:
	mov	r1, -2147483648
	mov	r0, x0
	call	__bit_xor
	mov	x5, rax
	mov	r0, x4
	mov	r1, x3
	call	__bit_xor
	sub	x2, rax
	sub	x5, x0
	mov	r0, x2
	mov	r1, x5
	call	__bit_and
	add	x0, rax
	mov	rax, x1
	mov	t0, x0
	mov	x5, [rsp]
	mov	x4, [rsp+4]
	mov	x3, [rsp+8]
	mov	x2, [rsp+12]
	mov	x1, [rsp+16]
	mov	x0, [rsp+20]
add	rsp, 24
	ret
// -- End function
// -- Begin function copysignf
copysignf:                              // @copysignf
// %bb.0:
sub	rsp, 20
	mov	[rsp+16], x0
	mov	[rsp+12], x1
	mov	[rsp+8], x2
	mov	[rsp+4], x3
	mov	[rsp], x4
	mov	x0, r0
	mov	x1, 0
	mov	x3, 1
	mov	x2, 1
	jl	r1, x1, .LBB72_2
// %bb.1:
	mov	x2, 0
.LBB72_2:
	mov	r1, 0
	mov	r0, x0
	call	__ltsf2
	jl	rax, x1, .LBB72_4
// %bb.3:
	mov	x3, 0
.LBB72_4:
	mov	r1, -2147483648
	mov	r0, x0
	call	__bit_xor
	mov	x4, rax
	mov	r0, x3
	mov	r1, x2
	call	__bit_xor
	sub	x1, rax
	sub	x4, x0
	mov	r0, x1
	mov	r1, x4
	call	__bit_and
	add	rax, x0
	mov	x4, [rsp]
	mov	x3, [rsp+4]
	mov	x2, [rsp+8]
	mov	x1, [rsp+12]
	mov	x0, [rsp+16]
add	rsp, 20
	ret
// -- End function
// -- Begin function copysignl
copysignl:                              // @copysignl
// %bb.0:
sub	rsp, 24
	mov	[rsp+20], x0
	mov	[rsp+16], x1
	mov	[rsp+12], x2
	mov	[rsp+8], x3
	mov	[rsp+4], x4
	mov	[rsp], x5
	mov	x0, r1
	mov	x1, r0
	mov	x2, 0
	mov	x4, 1
	mov	x3, 1
	jl	r3, x2, .LBB73_2
// %bb.1:
	mov	x3, 0
.LBB73_2:
	mov	r2, 0
	mov	r3, 0
	mov	r0, x1
	mov	r1, x0
	call	__ltdf2
	jl	rax, x2, .LBB73_4
// %bb.3:
	mov	x4, 0
.LBB73_4:
	mov	r1, -2147483648
	mov	r0, x0
	call	__bit_xor
	mov	x5, rax
	mov	r0, x4
	mov	r1, x3
	call	__bit_xor
	sub	x2, rax
	sub	x5, x0
	mov	r0, x2
	mov	r1, x5
	call	__bit_and
	add	x0, rax
	mov	rax, x1
	mov	t0, x0
	mov	x5, [rsp]
	mov	x4, [rsp+4]
	mov	x3, [rsp+8]
	mov	x2, [rsp+12]
	mov	x1, [rsp+16]
	mov	x0, [rsp+20]
add	rsp, 24
	ret
// -- End function
// -- Begin function fmin
fmin:                                   // @fmin
// %bb.0:
sub	rsp, 24
	mov	[rsp+20], x0
	mov	[rsp+16], x1
	mov	[rsp+12], x2
	mov	[rsp+8], x3
	mov	[rsp+4], x4
	mov	[rsp], x5
	mov	x1, r3
	mov	x0, r2
	mov	x3, r1
	mov	x2, r0
	mov	r2, x2
	mov	r3, x3
	call	__unorddf2
	mov	r0, rax
	mov	rax, x0
	mov	x4, x1
	jnz	r0, .LBB74_5
	jmp	.LBB74_1
.LBB74_1:
	mov	r0, x0
	mov	r1, x1
	mov	r2, x0
	mov	r3, x1
	call	__unorddf2
	mov	r0, rax
	mov	rax, x2
	mov	x4, x3
	jnz	r0, .LBB74_5
	jmp	.LBB74_2
.LBB74_2:
	mov	r0, x2
	mov	r1, x3
	mov	r2, x0
	mov	r3, x1
	call	__ltdf2
	mov	x5, 0
	mov	r0, 1
	jl	rax, x5, .LBB74_4
// %bb.3:
	mov	r0, 0
.LBB74_4:
	sub	x5, r0
	sub	x3, x1
	mov	r0, x5
	mov	r1, x3
	call	__bit_and
	mov	x4, rax
	sub	x2, x0
	add	x4, x1
	mov	r0, x5
	mov	r1, x2
	call	__bit_and
	add	rax, x0
.LBB74_5:
	mov	t0, x4
	mov	x5, [rsp]
	mov	x4, [rsp+4]
	mov	x3, [rsp+8]
	mov	x2, [rsp+12]
	mov	x1, [rsp+16]
	mov	x0, [rsp+20]
add	rsp, 24
	ret
// -- End function
// -- Begin function fminf
fminf:                                  // @fminf
// %bb.0:
sub	rsp, 8
	mov	[rsp+4], x0
	mov	[rsp], x1
	mov	x0, r1
	mov	x1, r0
	mov	r1, x1
	call	__unordsf2
	mov	r0, rax
	mov	rax, x0
	jnz	r0, .LBB75_5
	jmp	.LBB75_1
.LBB75_1:
	mov	r0, x0
	mov	r1, x0
	call	__unordsf2
	mov	r0, rax
	mov	rax, x1
	jnz	r0, .LBB75_5
	jmp	.LBB75_2
.LBB75_2:
	mov	r0, x1
	mov	r1, x0
	call	__ltsf2
	mov	r0, 0
	mov	r1, 1
	jl	rax, r0, .LBB75_4
// %bb.3:
	mov	r1, 0
.LBB75_4:
	sub	x1, x0
	sub	r0, r1
	mov	r1, x1
	call	__bit_and
	add	rax, x0
.LBB75_5:
	mov	x1, [rsp]
	mov	x0, [rsp+4]
add	rsp, 8
	ret
// -- End function
// -- Begin function fminl
fminl:                                  // @fminl
// %bb.0:
sub	rsp, 24
	mov	[rsp+20], x0
	mov	[rsp+16], x1
	mov	[rsp+12], x2
	mov	[rsp+8], x3
	mov	[rsp+4], x4
	mov	[rsp], x5
	mov	x1, r3
	mov	x0, r2
	mov	x3, r1
	mov	x2, r0
	mov	r2, x2
	mov	r3, x3
	call	__unorddf2
	mov	r0, rax
	mov	rax, x0
	mov	x4, x1
	jnz	r0, .LBB76_5
	jmp	.LBB76_1
.LBB76_1:
	mov	r0, x0
	mov	r1, x1
	mov	r2, x0
	mov	r3, x1
	call	__unorddf2
	mov	r0, rax
	mov	rax, x2
	mov	x4, x3
	jnz	r0, .LBB76_5
	jmp	.LBB76_2
.LBB76_2:
	mov	r0, x2
	mov	r1, x3
	mov	r2, x0
	mov	r3, x1
	call	__ltdf2
	mov	x5, 0
	mov	r0, 1
	jl	rax, x5, .LBB76_4
// %bb.3:
	mov	r0, 0
.LBB76_4:
	sub	x5, r0
	sub	x3, x1
	mov	r0, x5
	mov	r1, x3
	call	__bit_and
	mov	x4, rax
	sub	x2, x0
	add	x4, x1
	mov	r0, x5
	mov	r1, x2
	call	__bit_and
	add	rax, x0
.LBB76_5:
	mov	t0, x4
	mov	x5, [rsp]
	mov	x4, [rsp+4]
	mov	x3, [rsp+8]
	mov	x2, [rsp+12]
	mov	x1, [rsp+16]
	mov	x0, [rsp+20]
add	rsp, 24
	ret
// -- End function
// -- Begin function fmax
fmax:                                   // @fmax
// %bb.0:
sub	rsp, 24
	mov	[rsp+20], x0
	mov	[rsp+16], x1
	mov	[rsp+12], x2
	mov	[rsp+8], x3
	mov	[rsp+4], x4
	mov	[rsp], x5
	mov	x1, r3
	mov	x0, r2
	mov	x3, r1
	mov	x2, r0
	mov	r2, x2
	mov	r3, x3
	call	__unorddf2
	mov	r0, rax
	mov	rax, x0
	mov	x4, x1
	jnz	r0, .LBB77_5
	jmp	.LBB77_1
.LBB77_1:
	mov	r0, x0
	mov	r1, x1
	mov	r2, x0
	mov	r3, x1
	call	__unorddf2
	mov	r0, rax
	mov	rax, x2
	mov	x4, x3
	jnz	r0, .LBB77_5
	jmp	.LBB77_2
.LBB77_2:
	mov	r0, x2
	mov	r1, x3
	mov	r2, x0
	mov	r3, x1
	call	__gtdf2
	mov	x5, 0
	mov	r0, 1
	jg	rax, x5, .LBB77_4
// %bb.3:
	mov	r0, 0
.LBB77_4:
	sub	x5, r0
	sub	x3, x1
	mov	r0, x5
	mov	r1, x3
	call	__bit_and
	mov	x4, rax
	sub	x2, x0
	add	x4, x1
	mov	r0, x5
	mov	r1, x2
	call	__bit_and
	add	rax, x0
.LBB77_5:
	mov	t0, x4
	mov	x5, [rsp]
	mov	x4, [rsp+4]
	mov	x3, [rsp+8]
	mov	x2, [rsp+12]
	mov	x1, [rsp+16]
	mov	x0, [rsp+20]
add	rsp, 24
	ret
// -- End function
// -- Begin function fmaxf
fmaxf:                                  // @fmaxf
// %bb.0:
sub	rsp, 8
	mov	[rsp+4], x0
	mov	[rsp], x1
	mov	x0, r1
	mov	x1, r0
	mov	r1, x1
	call	__unordsf2
	mov	r0, rax
	mov	rax, x0
	jnz	r0, .LBB78_5
	jmp	.LBB78_1
.LBB78_1:
	mov	r0, x0
	mov	r1, x0
	call	__unordsf2
	mov	r0, rax
	mov	rax, x1
	jnz	r0, .LBB78_5
	jmp	.LBB78_2
.LBB78_2:
	mov	r0, x1
	mov	r1, x0
	call	__gtsf2
	mov	r0, 0
	mov	r1, 1
	jg	rax, r0, .LBB78_4
// %bb.3:
	mov	r1, 0
.LBB78_4:
	sub	x1, x0
	sub	r0, r1
	mov	r1, x1
	call	__bit_and
	add	rax, x0
.LBB78_5:
	mov	x1, [rsp]
	mov	x0, [rsp+4]
add	rsp, 8
	ret
// -- End function
// -- Begin function fmaxl
fmaxl:                                  // @fmaxl
// %bb.0:
sub	rsp, 24
	mov	[rsp+20], x0
	mov	[rsp+16], x1
	mov	[rsp+12], x2
	mov	[rsp+8], x3
	mov	[rsp+4], x4
	mov	[rsp], x5
	mov	x1, r3
	mov	x0, r2
	mov	x3, r1
	mov	x2, r0
	mov	r2, x2
	mov	r3, x3
	call	__unorddf2
	mov	r0, rax
	mov	rax, x0
	mov	x4, x1
	jnz	r0, .LBB79_5
	jmp	.LBB79_1
.LBB79_1:
	mov	r0, x0
	mov	r1, x1
	mov	r2, x0
	mov	r3, x1
	call	__unorddf2
	mov	r0, rax
	mov	rax, x2
	mov	x4, x3
	jnz	r0, .LBB79_5
	jmp	.LBB79_2
.LBB79_2:
	mov	r0, x2
	mov	r1, x3
	mov	r2, x0
	mov	r3, x1
	call	__gtdf2
	mov	x5, 0
	mov	r0, 1
	jg	rax, x5, .LBB79_4
// %bb.3:
	mov	r0, 0
.LBB79_4:
	sub	x5, r0
	sub	x3, x1
	mov	r0, x5
	mov	r1, x3
	call	__bit_and
	mov	x4, rax
	sub	x2, x0
	add	x4, x1
	mov	r0, x5
	mov	r1, x2
	call	__bit_and
	add	rax, x0
.LBB79_5:
	mov	t0, x4
	mov	x5, [rsp]
	mov	x4, [rsp+4]
	mov	x3, [rsp+8]
	mov	x2, [rsp+12]
	mov	x1, [rsp+16]
	mov	x0, [rsp+20]
add	rsp, 24
	ret
// -- End function
// -- Begin function signal
signal:                                 // @signal
// %bb.0:
sub	rsp, 4
	mov	[rsp], x0
	mov	x0, r1
	mov	r1, r0
add	r1, 2147483641
	mov	r2, 2147483642
	mov	rax, -1
	jl	r1, r2, .LBB80_2
	jmp	.LBB80_1
.LBB80_1:
	mov	r1, 2
	call	__bit_shl
	mov	r0, mcasm_static_b1826cb52f8db3569f288b1402ca6605
	add	r0, rax
	mov	rax, [r0]
	mov	[r0], x0
.LBB80_2:
	mov	x0, [rsp]
add	rsp, 4
	ret
// -- End function
// -- Begin function raise
raise:                                  // @raise
// %bb.0:
sub	rsp, 4
	mov	[rsp], x0
	mov	x0, r0
add	r0, 2147483641
	mov	r1, 2147483642
	mov	rax, -1
	jl	r0, r1, .LBB81_7
	jmp	.LBB81_1
.LBB81_1:
	mov	r1, 2
	mov	r0, x0
	call	__bit_shl
	mov	r0, mcasm_static_b1826cb52f8db3569f288b1402ca6605
	add	r0, rax
	mov	r1, [r0]
	mov	r0, 1
	mov	rax, 0
	je	r1, r0, .LBB81_7
	jmp	.LBB81_2
.LBB81_2:
	jnz	r1, .LBB81_6
	jmp	.LBB81_3
.LBB81_3:
	jne	x0, r0, .LBB81_7
	jmp	.LBB81_4
.LBB81_4:
	inline tellraw @a "[DataPack] Aborted! Program has crashed, run /reload to reset."
.LBB81_5:                               // =>This Inner Loop Header: Depth=1
	jmp	.LBB81_5
.LBB81_6:
	mov	r0, x0
	calld	r1
	mov	rax, 0
.LBB81_7:
	mov	x0, [rsp]
add	rsp, 4
	ret
// -- End function
// -- Begin function __mc_string_begin
__mc_string_begin:                      // @__mc_string_begin
// %bb.0:
sub	rsp, 4
	mov	[rsp], x0
	mov	x0, r0
	jnz	x0, .LBB82_2
	jmp	.LBB82_1
.LBB82_1:
	call	abort
.LBB82_2:
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	jnz	rax, .LBB82_4
	jmp	.LBB82_3
.LBB82_3:
	inline data modify storage std:vm s1 set value {str: "", next: ""}
	jmp	.LBB82_7
.LBB82_4:
	inline data modify storage std:vm ls0 set value {a: -1}
	inline execute store result storage std:vm ls0.a int 1 run scoreboard players get rax vm_regs
	inline function _ll_shared:z/__mc_string_begin_0 with storage std:vm ls0
	mov	r0, x0
add	r0, 1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB82_7
	jmp	.LBB82_5
.LBB82_5:                               // %.preheader.preheader
add	x0, 2
.LBB82_6:                               // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	inline data modify storage std:vm ls0 set value {a: -1}
	inline execute store result storage std:vm ls0.a int 1 run scoreboard players get rax vm_regs
	inline function _ll_shared:z/__mc_string_begin_1 with storage std:vm ls0
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
add	x0, 1
	jnz	rax, .LBB82_6
	jmp	.LBB82_7
.LBB82_7:                               // %.loopexit
	mov	x0, [rsp]
add	rsp, 4
	ret
// -- End function
// -- Begin function __mc_string_append
__mc_string_append:                     // @__mc_string_append
// %bb.0:
sub	rsp, 4
	mov	[rsp], x0
	mov	x0, r0
	jnz	x0, .LBB83_2
	jmp	.LBB83_1
.LBB83_1:
	call	abort
.LBB83_2:
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB83_6
	jmp	.LBB83_3
.LBB83_3:
	inline data modify storage std:vm ls0 set value {a: -1}
	inline execute store result storage std:vm ls0.a int 1 run scoreboard players get rax vm_regs
	inline function _ll_shared:z/__mc_string_begin_1 with storage std:vm ls0
	mov	r0, x0
add	r0, 1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB83_6
	jmp	.LBB83_4
.LBB83_4:                               // %.preheader.preheader
add	x0, 2
.LBB83_5:                               // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	inline data modify storage std:vm ls0 set value {a: -1}
	inline execute store result storage std:vm ls0.a int 1 run scoreboard players get rax vm_regs
	inline function _ll_shared:z/__mc_string_begin_1 with storage std:vm ls0
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
add	x0, 1
	jnz	rax, .LBB83_5
	jmp	.LBB83_6
.LBB83_6:                               // %.loopexit
	mov	x0, [rsp]
add	rsp, 4
	ret
// -- End function
// -- Begin function printf
printf:                                 // @printf
// %bb.0:
sub	rsp, 32
	mov	t0, rsp
add	t0, 8
	mov	[t0], r2
	mov	r2, rsp
add	r2, 12
	mov	[r2], r3
	mov	r2, rsp
add	r2, 16
	mov	[r2], r4
	mov	r2, rsp
add	r2, 20
	mov	[r2], r5
	mov	r2, rsp
add	r2, 24
	mov	[r2], r6
	mov	r2, rsp
add	r2, 28
	mov	[r2], r7
	mov	[rsp+4], r1
	mov	r1, rsp
add	r1, 4
	mov	[rsp+28], r1
	call	vprintf
add	rsp, 32
	ret
// -- End function
// -- Begin function putchar
putchar:                                // @putchar
// %bb.0:
sub	rsp, 16
	mov	[rsp+12], x0
	mov	[rsp+8], x1
	mov	[rsp+4], x2
	mov	[rsp], x3
	mov	r1, 255
	mov	x1, r0
	call	__bit_and
	mov	r0, mcasm_static_e8ebc19853357b798dee453f5c3219cf
	mov	x2, [r0]
	mov	r0, 10
	mov	x0, rax
	jne	x0, r0, .LBB85_7
	jmp	.LBB85_1
.LBB85_1:
	mov	x1, mcasm_static_6a944e6c8ede535926a6bcf193c44153
	add	x2, x1
	mov	r0, [x2]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	[x2], rax
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
	jnz	rax, .LBB85_3
	jmp	.LBB85_2
.LBB85_2:
	inline data modify storage std:vm s1 set value {str: "", next: ""}
	jmp	.LBB85_6
.LBB85_3:
	inline data modify storage std:vm ls0 set value {a: -1}
	inline execute store result storage std:vm ls0.a int 1 run scoreboard players get rax vm_regs
	inline function _ll_shared:z/__mc_string_begin_0 with storage std:vm ls0
add	x1, 1
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB85_6
	jmp	.LBB85_4
.LBB85_4:                               // %.preheader.i.i.i.preheader
	mov	x1, mcasm_static_6a944e6c8ede535926a6bcf193c44153
add	x1, 2
.LBB85_5:                               // %.preheader.i.i.i
                                        // =>This Inner Loop Header: Depth=1
	inline data modify storage std:vm ls0 set value {a: -1}
	inline execute store result storage std:vm ls0.a int 1 run scoreboard players get rax vm_regs
	inline function _ll_shared:z/__mc_string_begin_1 with storage std:vm ls0
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
add	x1, 1
	jnz	rax, .LBB85_5
	jmp	.LBB85_6
.LBB85_6:                               // %puts.exit.i
	inline tellraw @a {"storage": "std:vm", "nbt": "s1.str"}
	mov	r0, mcasm_static_e8ebc19853357b798dee453f5c3219cf
	mov	[r0], 0
	jmp	.LBB85_15
.LBB85_7:
	mov	r0, x2
add	r0, -2147483648
	mov	r1, -2147482625
	jl	r0, r1, .LBB85_14
	jmp	.LBB85_8
.LBB85_8:
	mov	x3, mcasm_static_6a944e6c8ede535926a6bcf193c44153
	add	x2, x3
	mov	r0, [x2]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	[x2], rax
	mov	r0, [x3]
	mov	r1, 255
	call	__bit_and
	jnz	rax, .LBB85_10
	jmp	.LBB85_9
.LBB85_9:
	inline data modify storage std:vm s1 set value {str: "", next: ""}
	jmp	.LBB85_13
.LBB85_10:
	inline data modify storage std:vm ls0 set value {a: -1}
	inline execute store result storage std:vm ls0.a int 1 run scoreboard players get rax vm_regs
	inline function _ll_shared:z/__mc_string_begin_0 with storage std:vm ls0
add	x3, 1
	mov	r0, [x3]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB85_13
	jmp	.LBB85_11
.LBB85_11:                              // %.preheader.i.i2.i.preheader
	mov	x2, mcasm_static_6a944e6c8ede535926a6bcf193c44153
add	x2, 2
.LBB85_12:                              // %.preheader.i.i2.i
                                        // =>This Inner Loop Header: Depth=1
	inline data modify storage std:vm ls0 set value {a: -1}
	inline execute store result storage std:vm ls0.a int 1 run scoreboard players get rax vm_regs
	inline function _ll_shared:z/__mc_string_begin_1 with storage std:vm ls0
	mov	r0, [x2]
	mov	r1, 255
	call	__bit_and
add	x2, 1
	jnz	rax, .LBB85_12
	jmp	.LBB85_13
.LBB85_13:                              // %puts.exit3.i
	inline tellraw @a {"storage": "std:vm", "nbt": "s1.str"}
	mov	x2, 0
.LBB85_14:
	mov	r0, x2
add	r0, 1
	mov	x3, mcasm_static_6a944e6c8ede535926a6bcf193c44153
	add	x3, x2
	mov	x2, [x3]
	mov	r2, mcasm_static_e8ebc19853357b798dee453f5c3219cf
	mov	r1, 255
	mov	[r2], r0
	mov	r0, x1
	call	__bit_and
	mov	r1, -256
	mov	x1, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	[x3], rax
.LBB85_15:                              // %__stdout_linebuf_putc.exit
	mov	rax, x0
	mov	x3, [rsp]
	mov	x2, [rsp+4]
	mov	x1, [rsp+8]
	mov	x0, [rsp+12]
add	rsp, 16
	ret
// -- End function
// -- Begin function puts
puts:                                   // @puts
// %bb.0:
sub	rsp, 4
	mov	[rsp], x0
	mov	x0, r0
	jnz	x0, .LBB86_2
	jmp	.LBB86_1
.LBB86_1:
	call	abort
.LBB86_2:
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	jnz	rax, .LBB86_4
	jmp	.LBB86_3
.LBB86_3:
	inline data modify storage std:vm s1 set value {str: "", next: ""}
	jmp	.LBB86_7
.LBB86_4:
	inline data modify storage std:vm ls0 set value {a: -1}
	inline execute store result storage std:vm ls0.a int 1 run scoreboard players get rax vm_regs
	inline function _ll_shared:z/__mc_string_begin_0 with storage std:vm ls0
	mov	r0, x0
add	r0, 1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB86_7
	jmp	.LBB86_5
.LBB86_5:                               // %.preheader.i.preheader
add	x0, 2
.LBB86_6:                               // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	inline data modify storage std:vm ls0 set value {a: -1}
	inline execute store result storage std:vm ls0.a int 1 run scoreboard players get rax vm_regs
	inline function _ll_shared:z/__mc_string_begin_1 with storage std:vm ls0
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
add	x0, 1
	jnz	rax, .LBB86_6
	jmp	.LBB86_7
.LBB86_7:                               // %__mc_string_begin.exit
	mov	rax, 1
	inline tellraw @a {"storage": "std:vm", "nbt": "s1.str"}
	mov	x0, [rsp]
add	rsp, 4
	ret
// -- End function
// -- Begin function snprintf
snprintf:                               // @snprintf
// %bb.0:
sub	rsp, 24
	mov	t0, rsp
add	t0, 8
	mov	[t0], r4
	mov	r4, rsp
add	r4, 12
	mov	[r4], r5
	mov	r4, rsp
add	r4, 16
	mov	[r4], r6
	mov	r4, rsp
add	r4, 20
	mov	[r4], r7
	mov	[rsp+4], r3
	mov	r3, rsp
add	r3, 4
	mov	[rsp+20], r3
	call	vsnprintf
add	rsp, 24
	ret
// -- End function
// -- Begin function sprintf
sprintf:                                // @sprintf
// %bb.0:
sub	rsp, 28
	mov	t0, r1
	mov	r1, rsp
add	r1, 8
	mov	[r1], r3
	mov	r1, rsp
add	r1, 12
	mov	[r1], r4
	mov	r1, rsp
add	r1, 16
	mov	[r1], r5
	mov	r1, rsp
add	r1, 20
	mov	[r1], r6
	mov	r1, rsp
add	r1, 24
	mov	[r1], r7
	mov	[rsp+4], r2
	mov	r3, rsp
add	r3, 4
	mov	r1, -1
	mov	[rsp+24], r3
	mov	r2, t0
	call	vsnprintf
add	rsp, 28
	ret
// -- End function
// -- Begin function __stdout_linebuf_flush
__stdout_linebuf_flush:                 // @__stdout_linebuf_flush
// %bb.0:
sub	rsp, 8
	mov	[rsp+4], x0
	mov	[rsp], x1
	mov	r0, mcasm_static_e8ebc19853357b798dee453f5c3219cf
	mov	x1, [r0]
	jz	x1, .LBB89_7
	jmp	.LBB89_1
.LBB89_1:
	mov	x0, mcasm_static_6a944e6c8ede535926a6bcf193c44153
	add	x1, x0
	mov	r0, [x1]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	[x1], rax
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	jnz	rax, .LBB89_3
	jmp	.LBB89_2
.LBB89_2:
	inline data modify storage std:vm s1 set value {str: "", next: ""}
	jmp	.LBB89_6
.LBB89_3:
	inline data modify storage std:vm ls0 set value {a: -1}
	inline execute store result storage std:vm ls0.a int 1 run scoreboard players get rax vm_regs
	inline function _ll_shared:z/__mc_string_begin_0 with storage std:vm ls0
add	x0, 1
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB89_6
	jmp	.LBB89_4
.LBB89_4:                               // %.preheader.i.i.preheader
	mov	x0, mcasm_static_6a944e6c8ede535926a6bcf193c44153
add	x0, 2
.LBB89_5:                               // %.preheader.i.i
                                        // =>This Inner Loop Header: Depth=1
	inline data modify storage std:vm ls0 set value {a: -1}
	inline execute store result storage std:vm ls0.a int 1 run scoreboard players get rax vm_regs
	inline function _ll_shared:z/__mc_string_begin_1 with storage std:vm ls0
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
add	x0, 1
	jnz	rax, .LBB89_5
	jmp	.LBB89_6
.LBB89_6:                               // %puts.exit
	inline tellraw @a {"storage": "std:vm", "nbt": "s1.str"}
	mov	r0, mcasm_static_e8ebc19853357b798dee453f5c3219cf
	mov	[r0], 0
.LBB89_7:
	mov	rax, 0
	mov	x1, [rsp]
	mov	x0, [rsp+4]
add	rsp, 8
	ret
// -- End function
// -- Begin function __stdout_linebuf_putc
__stdout_linebuf_putc:                  // @__stdout_linebuf_putc
// %bb.0:
sub	rsp, 16
	mov	[rsp+12], x0
	mov	[rsp+8], x1
	mov	[rsp+4], x2
	mov	[rsp], x3
	mov	r1, 255
	mov	x1, r0
	call	__bit_and
	mov	r0, mcasm_static_e8ebc19853357b798dee453f5c3219cf
	mov	x2, [r0]
	mov	r0, 10
	mov	x0, rax
	jne	x0, r0, .LBB90_7
	jmp	.LBB90_1
.LBB90_1:
	mov	x1, mcasm_static_6a944e6c8ede535926a6bcf193c44153
	add	x2, x1
	mov	r0, [x2]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	[x2], rax
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
	jnz	rax, .LBB90_3
	jmp	.LBB90_2
.LBB90_2:
	inline data modify storage std:vm s1 set value {str: "", next: ""}
	jmp	.LBB90_6
.LBB90_3:
	inline data modify storage std:vm ls0 set value {a: -1}
	inline execute store result storage std:vm ls0.a int 1 run scoreboard players get rax vm_regs
	inline function _ll_shared:z/__mc_string_begin_0 with storage std:vm ls0
add	x1, 1
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB90_6
	jmp	.LBB90_4
.LBB90_4:                               // %.preheader.i.i.preheader
	mov	x1, mcasm_static_6a944e6c8ede535926a6bcf193c44153
add	x1, 2
.LBB90_5:                               // %.preheader.i.i
                                        // =>This Inner Loop Header: Depth=1
	inline data modify storage std:vm ls0 set value {a: -1}
	inline execute store result storage std:vm ls0.a int 1 run scoreboard players get rax vm_regs
	inline function _ll_shared:z/__mc_string_begin_1 with storage std:vm ls0
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
add	x1, 1
	jnz	rax, .LBB90_5
	jmp	.LBB90_6
.LBB90_6:                               // %puts.exit
	inline tellraw @a {"storage": "std:vm", "nbt": "s1.str"}
	mov	r0, mcasm_static_e8ebc19853357b798dee453f5c3219cf
	mov	[r0], 0
	jmp	.LBB90_15
.LBB90_7:
	mov	r0, x2
add	r0, -2147483648
	mov	r1, -2147482625
	jl	r0, r1, .LBB90_14
	jmp	.LBB90_8
.LBB90_8:
	mov	x3, mcasm_static_6a944e6c8ede535926a6bcf193c44153
	add	x2, x3
	mov	r0, [x2]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	[x2], rax
	mov	r0, [x3]
	mov	r1, 255
	call	__bit_and
	jnz	rax, .LBB90_10
	jmp	.LBB90_9
.LBB90_9:
	inline data modify storage std:vm s1 set value {str: "", next: ""}
	jmp	.LBB90_13
.LBB90_10:
	inline data modify storage std:vm ls0 set value {a: -1}
	inline execute store result storage std:vm ls0.a int 1 run scoreboard players get rax vm_regs
	inline function _ll_shared:z/__mc_string_begin_0 with storage std:vm ls0
add	x3, 1
	mov	r0, [x3]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB90_13
	jmp	.LBB90_11
.LBB90_11:                              // %.preheader.i.i2.preheader
	mov	x2, mcasm_static_6a944e6c8ede535926a6bcf193c44153
add	x2, 2
.LBB90_12:                              // %.preheader.i.i2
                                        // =>This Inner Loop Header: Depth=1
	inline data modify storage std:vm ls0 set value {a: -1}
	inline execute store result storage std:vm ls0.a int 1 run scoreboard players get rax vm_regs
	inline function _ll_shared:z/__mc_string_begin_1 with storage std:vm ls0
	mov	r0, [x2]
	mov	r1, 255
	call	__bit_and
add	x2, 1
	jnz	rax, .LBB90_12
	jmp	.LBB90_13
.LBB90_13:                              // %puts.exit3
	inline tellraw @a {"storage": "std:vm", "nbt": "s1.str"}
	mov	x2, 0
.LBB90_14:
	mov	r0, x2
add	r0, 1
	mov	x3, mcasm_static_6a944e6c8ede535926a6bcf193c44153
	add	x3, x2
	mov	x2, [x3]
	mov	r2, mcasm_static_e8ebc19853357b798dee453f5c3219cf
	mov	r1, 255
	mov	[r2], r0
	mov	r0, x1
	call	__bit_and
	mov	r1, -256
	mov	x1, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	[x3], rax
.LBB90_15:
	mov	rax, x0
	mov	x3, [rsp]
	mov	x2, [rsp+4]
	mov	x1, [rsp+8]
	mov	x0, [rsp+12]
add	rsp, 16
	ret
// -- End function
// -- Begin function __stdout_linebuf_write
__stdout_linebuf_write:                 // @__stdout_linebuf_write
// %bb.0:
sub	rsp, 80
	mov	[rsp+76], x0
	mov	[rsp+72], x1
	mov	[rsp+68], x2
	mov	[rsp+64], x3
	mov	[rsp+60], x4
	mov	[rsp+56], x5
	mov	[rsp+52], x6
	mov	[rsp+48], x7
	mov	[rsp+44], x8
	mov	[rsp+40], x9
	mov	[rsp+36], x10
	mov	[rsp+32], x11
	mov	[rsp+28], x12
	mov	[rsp+24], x13
	mov	[rsp+20], x14
	mov	[rsp+16], x15
	mov	x11, r1
	mov	x15, r0
	jz	x11, .LBB91_54
	jmp	.LBB91_1
.LBB91_1:                               // %.preheader10.preheader
	mov	x4, 10
	mov	x5, -2139062144
	mov	x9, -2147483645
	mov	r0, mcasm_static_6a944e6c8ede535926a6bcf193c44153
add	r0, 1
	mov	[rsp+8], r0
	mov	x10, -2147482625
	mov	x12, -2147483632
.LBB91_2:                               // %.preheader10
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB91_4 Depth 2
                                        //     Child Loop BB91_9 Depth 2
                                        //     Child Loop BB91_13 Depth 2
                                        //     Child Loop BB91_19 Depth 2
                                        //       Child Loop BB91_23 Depth 3
                                        //       Child Loop BB91_32 Depth 3
                                        //       Child Loop BB91_29 Depth 3
                                        //       Child Loop BB91_30 Depth 3
                                        //       Child Loop BB91_36 Depth 3
                                        //       Child Loop BB91_43 Depth 3
                                        //     Child Loop BB91_51 Depth 2
	mov	r1, 3
	mov	r0, x15
	call	__bit_and
	mov	x3, x11
	mov	x0, x15
	jz	rax, .LBB91_7
	jmp	.LBB91_3
.LBB91_3:                               // %.preheader7.preheader
                                        //   in Loop: Header=BB91_2 Depth=1
	mov	x2, x15
add	x2, 1
	mov	x0, x15
	mov	x3, x11
.LBB91_4:                               // %.preheader7
                                        //   Parent Loop BB91_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, 0
	jz	x3, .LBB91_15
	jmp	.LBB91_5
.LBB91_5:                               //   in Loop: Header=BB91_4 Depth=2
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	mov	r0, x0
	je	rax, x4, .LBB91_15
	jmp	.LBB91_6
.LBB91_6:                               //   in Loop: Header=BB91_4 Depth=2
	mov	r1, 3
add	x0, 1
	mov	r0, x2
	call	__bit_and
add	x2, 1
add	x3, -1
	jnz	rax, .LBB91_4
	jmp	.LBB91_7
.LBB91_7:                               // %.loopexit9.i
                                        //   in Loop: Header=BB91_2 Depth=1
	mov	r0, x3
add	r0, -2147483648
	mov	r1, -2147483644
	jl	r0, r1, .LBB91_11
	jmp	.LBB91_8
.LBB91_8:                               // %.preheader.preheader
                                        //   in Loop: Header=BB91_2 Depth=1
	mov	x1, x3
.LBB91_9:                               // %.preheader
                                        //   Parent Loop BB91_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	x2, [x0]
	mov	r1, 168430090
	mov	r0, x2
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, x2
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x5, .LBB91_12
	jmp	.LBB91_10
.LBB91_10:                              //   in Loop: Header=BB91_9 Depth=2
	mov	x3, x1
add	x3, -4
	mov	r0, x1
add	r0, 2147483644
add	x0, 4
	mov	x1, x3
	jg	r0, x9, .LBB91_9
	jmp	.LBB91_11
.LBB91_11:                              // %.loopexit6.i
                                        //   in Loop: Header=BB91_2 Depth=1
	mov	r0, 0
	mov	x1, x3
	jz	x3, .LBB91_15
	jmp	.LBB91_12
.LBB91_12:                              // %.loopexit5.i.preheader
                                        //   in Loop: Header=BB91_2 Depth=1
.LBB91_13:                              // %.loopexit5.i
                                        //   Parent Loop BB91_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	mov	r0, x0
	je	rax, x4, .LBB91_15
	jmp	.LBB91_14
.LBB91_14:                              //   in Loop: Header=BB91_13 Depth=2
add	x1, -1
add	x0, 1
	mov	r0, 0
	jnz	x1, .LBB91_13
	jmp	.LBB91_15
.LBB91_15:                              // %memchr.exit
                                        //   in Loop: Header=BB91_2 Depth=1
	mov	x0, x11
	jz	r0, .LBB91_17
	jmp	.LBB91_16
.LBB91_16:                              //   in Loop: Header=BB91_2 Depth=1
	mov	x0, r0
	sub	x0, x15
.LBB91_17:                              //   in Loop: Header=BB91_2 Depth=1
	mov	[rsp], r0
	mov	x3, mcasm_static_e8ebc19853357b798dee453f5c3219cf
	jz	x0, .LBB91_46
	jmp	.LBB91_18
.LBB91_18:                              //   in Loop: Header=BB91_2 Depth=1
	mov	x8, [x3]
	mov	r0, mcasm_static_6a944e6c8ede535926a6bcf193c44153
add	r0, 2
	mov	[rsp+4], r0
.LBB91_19:                              //   Parent Loop BB91_2 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB91_23 Depth 3
                                        //       Child Loop BB91_32 Depth 3
                                        //       Child Loop BB91_29 Depth 3
                                        //       Child Loop BB91_30 Depth 3
                                        //       Child Loop BB91_36 Depth 3
                                        //       Child Loop BB91_43 Depth 3
	mov	r0, -2147482625
	sub	r0, x8
	mov	r1, x0
add	r1, -2147483648
	mov	r2, 1
	jl	r1, r0, .LBB91_21
// %bb.20:                              //   in Loop: Header=BB91_19 Depth=2
	mov	r2, 0
.LBB91_21:                              //   in Loop: Header=BB91_19 Depth=2
	mov	x1, 1023
	sub	x1, x8
	mov	r1, x0
	sub	r1, x1
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	mov	x2, rax
	add	x2, x1
	mov	x14, mcasm_static_6a944e6c8ede535926a6bcf193c44153
	mov	r0, x2
add	r0, -2147483648
	add	x14, x8
	mov	x5, x15
	mov	x4, x2
	jl	r0, x12, .LBB91_34
	jmp	.LBB91_22
.LBB91_22:                              //   in Loop: Header=BB91_19 Depth=2
	mov	r1, 3
	mov	r0, x14
	call	__bit_and
	mov	x4, rax
	mov	x1, 8
	sub	x1, x4
	mov	x9, 0
	mov	x10, 1
	mov	x6, x15
.LBB91_23:                              //   Parent Loop BB91_2 Depth=1
                                        //     Parent Loop BB91_19 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	mov	r0, x15
	add	r0, x9
	mov	r0, [r0]
	mov	x12, x10
	mov	x13, x14
	mov	r1, 255
	add	x13, x9
	call	__bit_and
	mov	r0, [x13]
	mov	r1, -256
	mov	x5, rax
	call	__bit_and
	mov	r1, 255
	mov	x7, rax
	mov	r0, x5
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x7
	mov	r1, rax
	call	__bit_or
	mov	[x13], rax
add	x9, 1
add	x6, 1
add	x10, 1
	jne	x1, x9, .LBB91_23
	jmp	.LBB91_24
.LBB91_24:                              //   in Loop: Header=BB91_19 Depth=2
	mov	r1, -8
	mov	r0, x4
	call	__bit_or
	mov	x4, rax
	mov	x5, x15
	add	x5, x9
	mov	r1, 3
	add	x4, x2
	mov	r0, x5
	call	__bit_and
	jnz	rax, .LBB91_31
	jmp	.LBB91_25
.LBB91_25:                              //   in Loop: Header=BB91_19 Depth=2
	mov	r0, x4
add	r0, -2147483648
	add	x14, x9
	mov	x9, -2147483645
	mov	x10, -2147482625
	mov	x12, -2147483632
	mov	r5, -2147483633
	jl	r0, x12, .LBB91_27
	jmp	.LBB91_26
.LBB91_26:                              // %.preheader.i.preheader
                                        //   in Loop: Header=BB91_19 Depth=2
	jmp	.LBB91_29
.LBB91_27:                              // %.preheader124
                                        //   in Loop: Header=BB91_19 Depth=2
	mov	r0, x4
	jmp	.LBB91_30
.LBB91_28:                              //   in Loop: Header=BB91_19 Depth=2
	mov	r0, 3
	jg	x4, r0, .LBB91_27
	jmp	.LBB91_34
.LBB91_29:                              // %.preheader.i
                                        //   Parent Loop BB91_2 Depth=1
                                        //     Parent Loop BB91_19 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	mov	r0, [x5]
	mov	r1, x5
add	r1, 4
	mov	[x14], r0
	mov	r0, [r1]
	mov	r1, x14
add	r1, 4
	mov	r2, x5
add	r2, 8
	mov	[r1], r0
	mov	r0, [r2]
	mov	r1, x4
	mov	r2, x14
add	r2, 8
	mov	r3, x5
add	r3, 12
	mov	r4, x14
	mov	[r2], r0
	mov	r0, [r3]
add	r4, 12
add	x5, 16
add	x14, 16
	mov	[r4], r0
add	r1, 2147483632
add	x4, -16
	jg	r1, r5, .LBB91_29
	jmp	.LBB91_28
.LBB91_30:                              //   Parent Loop BB91_2 Depth=1
                                        //     Parent Loop BB91_19 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	mov	r1, [x5]
add	x5, 4
	mov	[x14], r1
add	x4, -4
	mov	r1, r0
add	r1, 2147483644
add	x14, 4
	mov	r0, x4
	jg	r1, x9, .LBB91_30
	jmp	.LBB91_34
.LBB91_31:                              //   in Loop: Header=BB91_19 Depth=2
	mov	[rsp+12], x11
	mov	r1, 3
	mov	r0, rax
	mov	x1, rax
	call	__bit_shl
	mov	x7, rax
	mov	x13, 8
	mov	r1, 3
	sub	x13, x1
	mov	r0, x6
	call	__bit_and
	mov	x1, x15
	sub	x1, rax
	add	x9, x1
	mov	x8, [x9]
add	x1, 4
add	x13, -2147483648
.LBB91_32:                              //   Parent Loop BB91_2 Depth=1
                                        //     Parent Loop BB91_19 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	mov	r0, x1
	add	r0, x12
	mov	x9, [r0]
	mov	x11, x4
	mov	x3, x14
	mov	r1, 31
	add	x3, x12
	mov	r0, x7
	call	__bit_and
	mov	r0, x8
	mov	r1, rax
	call	__bit_shr
	mov	x8, rax
	mov	r0, x7
	call	__bit_not
	mov	r1, 31
	mov	r0, rax
	call	__bit_and
	mov	r1, 1
	mov	x10, rax
	mov	r0, x9
	call	__bit_shl
	mov	r0, rax
	mov	r1, x10
	call	__bit_shl
	mov	r0, rax
	mov	r1, x8
	call	__bit_or
	mov	[x3], rax
add	x4, -4
add	x11, 2147483644
add	x12, 4
	mov	x8, x9
	jge	x11, x13, .LBB91_32
	jmp	.LBB91_33
.LBB91_33:                              //   in Loop: Header=BB91_19 Depth=2
	mov	r1, -4
	mov	r0, x5
	call	__bit_or
	mov	r1, 3
	mov	x7, rax
	mov	r0, x6
	call	__bit_and
	mov	x5, x15
	sub	x5, rax
	add	x5, x7
	add	x5, x12
add	x5, 4
	add	x14, x12
	mov	x11, [rsp+12]
	mov	x9, -2147483645
	mov	x3, mcasm_static_e8ebc19853357b798dee453f5c3219cf
	mov	x10, -2147482625
	mov	x12, -2147483632
	jmp	.LBB91_35
.LBB91_34:                              // %.loopexit8.i
                                        //   in Loop: Header=BB91_19 Depth=2
	jz	x4, .LBB91_38
	jmp	.LBB91_35
.LBB91_35:                              // %.preheader121
                                        //   in Loop: Header=BB91_19 Depth=2
	mov	x1, x14
.LBB91_36:                              //   Parent Loop BB91_2 Depth=1
                                        //     Parent Loop BB91_19 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	mov	r0, [x5]
add	x4, -1
	mov	r1, 255
add	x5, 1
	call	__bit_and
	mov	r0, [x14]
	mov	x6, rax
	mov	r1, -256
add	x1, 1
	call	__bit_and
	mov	r1, 255
	mov	x7, rax
	mov	r0, x6
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x7
	mov	r1, rax
	call	__bit_or
	mov	[x14], rax
	mov	x14, x1
	jnz	x4, .LBB91_36
	jmp	.LBB91_37
.LBB91_37:                              // %memcpy.exit.loopexit
                                        //   in Loop: Header=BB91_19 Depth=2
	mov	x8, [x3]
.LBB91_38:                              // %memcpy.exit
                                        //   in Loop: Header=BB91_19 Depth=2
	add	x8, x2
	mov	r0, x8
add	r0, -2147483648
	mov	[x3], x8
	jl	r0, x10, .LBB91_45
	jmp	.LBB91_39
.LBB91_39:                              //   in Loop: Header=BB91_19 Depth=2
	mov	x1, mcasm_static_6a944e6c8ede535926a6bcf193c44153
	add	x8, x1
	mov	r0, [x8]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	[x8], rax
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
	jnz	rax, .LBB91_41
	jmp	.LBB91_40
.LBB91_40:                              //   in Loop: Header=BB91_19 Depth=2
	inline data modify storage std:vm s1 set value {str: "", next: ""}
	jmp	.LBB91_44
.LBB91_41:                              //   in Loop: Header=BB91_19 Depth=2
	inline data modify storage std:vm ls0 set value {a: -1}
	inline execute store result storage std:vm ls0.a int 1 run scoreboard players get rax vm_regs
	inline function _ll_shared:z/__mc_string_begin_0 with storage std:vm ls0
	mov	r0, [rsp+8]
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB91_44
	jmp	.LBB91_42
.LBB91_42:                              // %.preheader.i.i.preheader
                                        //   in Loop: Header=BB91_19 Depth=2
	mov	x1, [rsp+4]
.LBB91_43:                              // %.preheader.i.i
                                        //   Parent Loop BB91_2 Depth=1
                                        //     Parent Loop BB91_19 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	inline data modify storage std:vm ls0 set value {a: -1}
	inline execute store result storage std:vm ls0.a int 1 run scoreboard players get rax vm_regs
	inline function _ll_shared:z/__mc_string_begin_1 with storage std:vm ls0
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
add	x1, 1
	jnz	rax, .LBB91_43
	jmp	.LBB91_44
.LBB91_44:                              // %puts.exit
                                        //   in Loop: Header=BB91_19 Depth=2
	inline tellraw @a {"storage": "std:vm", "nbt": "s1.str"}
	mov	[x3], 0
	mov	x8, 0
.LBB91_45:                              //   in Loop: Header=BB91_19 Depth=2
	add	x15, x2
	sub	x0, x2
	sub	x11, x2
	jnz	x0, .LBB91_19
	jmp	.LBB91_46
.LBB91_46:                              // %.loopexit
                                        //   in Loop: Header=BB91_2 Depth=1
	mov	x4, 10
	mov	x5, -2139062144
	mov	r0, [rsp]
	jz	r0, .LBB91_53
	jmp	.LBB91_47
.LBB91_47:                              //   in Loop: Header=BB91_2 Depth=1
	mov	x0, mcasm_static_6a944e6c8ede535926a6bcf193c44153
	add	x0, [x3]
	mov	r0, [x0]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	[x0], rax
	mov	r0, mcasm_static_6a944e6c8ede535926a6bcf193c44153
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	jnz	rax, .LBB91_49
	jmp	.LBB91_48
.LBB91_48:                              //   in Loop: Header=BB91_2 Depth=1
	inline data modify storage std:vm s1 set value {str: "", next: ""}
	jmp	.LBB91_52
.LBB91_49:                              //   in Loop: Header=BB91_2 Depth=1
	inline data modify storage std:vm ls0 set value {a: -1}
	inline execute store result storage std:vm ls0.a int 1 run scoreboard players get rax vm_regs
	inline function _ll_shared:z/__mc_string_begin_0 with storage std:vm ls0
	mov	r0, [rsp+8]
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB91_52
	jmp	.LBB91_50
.LBB91_50:                              // %.preheader.i.i5.preheader
                                        //   in Loop: Header=BB91_2 Depth=1
	mov	x0, mcasm_static_6a944e6c8ede535926a6bcf193c44153
add	x0, 2
.LBB91_51:                              // %.preheader.i.i5
                                        //   Parent Loop BB91_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	inline data modify storage std:vm ls0 set value {a: -1}
	inline execute store result storage std:vm ls0.a int 1 run scoreboard players get rax vm_regs
	inline function _ll_shared:z/__mc_string_begin_1 with storage std:vm ls0
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
add	x0, 1
	jnz	rax, .LBB91_51
	jmp	.LBB91_52
.LBB91_52:                              // %puts.exit6
                                        //   in Loop: Header=BB91_2 Depth=1
add	x15, 1
add	x11, -1
	inline tellraw @a {"storage": "std:vm", "nbt": "s1.str"}
	mov	[x3], 0
.LBB91_53:                              //   in Loop: Header=BB91_2 Depth=1
	jnz	x11, .LBB91_2
	jmp	.LBB91_54
.LBB91_54:                              // %.loopexit11
	mov	rax, 0
	mov	x15, [rsp+16]
	mov	x14, [rsp+20]
	mov	x13, [rsp+24]
	mov	x12, [rsp+28]
	mov	x11, [rsp+32]
	mov	x10, [rsp+36]
	mov	x9, [rsp+40]
	mov	x8, [rsp+44]
	mov	x7, [rsp+48]
	mov	x6, [rsp+52]
	mov	x5, [rsp+56]
	mov	x4, [rsp+60]
	mov	x3, [rsp+64]
	mov	x2, [rsp+68]
	mov	x1, [rsp+72]
	mov	x0, [rsp+76]
add	rsp, 80
	ret
// -- End function
// -- Begin function vprintf
vprintf:                                // @vprintf
// %bb.0:
sub	rsp, 536
	mov	[rsp+532], x0
	mov	[rsp+528], x1
	mov	[rsp+524], x2
	mov	[rsp+520], x3
	mov	r3, r1
	mov	[rsp+516], r3
	mov	[rsp+512], r3
	mov	r2, rsp
	mov	r1, 512
	mov	x2, r0
	mov	r0, r2
	mov	r2, x2
	call	vsnprintf
	mov	x3, rax
	mov	r0, 0
	mov	x1, -1
	jl	x3, r0, .LBB92_49
	jmp	.LBB92_1
.LBB92_1:
	mov	r0, 511
	jg	x3, r0, .LBB92_3
	jmp	.LBB92_2
.LBB92_2:                               // %.thread
	mov	r0, rsp
	mov	r1, x3
	call	__stdout_linebuf_write
	mov	x1, x3
	jmp	.LBB92_49
.LBB92_3:
add	x3, 1
	mov	r0, x3
	call	malloc
	mov	x0, rax
	jnz	x0, .LBB92_5
	jmp	.LBB92_4
.LBB92_4:
	mov	r0, mcasm_static_dc0ade02eb8bb208cf058fd41e6d2a5b
	mov	[r0], 12
	jmp	.LBB92_49
.LBB92_5:
	mov	r3, [rsp+516]
	mov	[rsp+512], r3
	mov	r0, x0
	mov	r1, x3
	mov	r2, x2
	call	vsnprintf
	mov	r0, -1
	mov	x1, rax
	jg	x1, r0, .LBB92_27
	jmp	.LBB92_6
.LBB92_6:
	mov	r0, 131072
	mov	r1, [r0]
	mov	r2, 1296125004
	je	r1, r2, .LBB92_8
	jmp	.LBB92_7
.LBB92_7:
	mov	[r0], 1296125004
	mov	r0, 131073
	mov	[r0], 131075
	mov	r0, 131074
	mov	[r0], 0
	mov	x2, x0
add	x2, -1
	mov	r2, [x2]
	mov	r1, 0
	mov	x3, 0
	mov	r0, 0
	jmp	.LBB92_17
.LBB92_8:
	mov	r0, 131074
	mov	x3, [r0]
	mov	x2, x0
add	x2, -1
	mov	r1, 0
	mov	r0, 1
	jne	x3, r1, .LBB92_10
// %bb.9:
	mov	r0, 0
.LBB92_10:
	mov	r2, [x2]
	jz	x3, .LBB92_17
	jmp	.LBB92_11
.LBB92_11:
	jge	x3, x2, .LBB92_17
	jmp	.LBB92_12
.LBB92_12:                              // %.preheader.i.preheader
	mov	r3, 0
.LBB92_13:                              // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, x3
	mov	r0, r1
add	r0, 1
	mov	x3, [r0]
	mov	r0, 1
	jne	x3, r3, .LBB92_15
// %bb.14:                              // %.preheader.i
                                        //   in Loop: Header=BB92_13 Depth=1
	mov	r0, 0
.LBB92_15:                              // %.preheader.i
                                        //   in Loop: Header=BB92_13 Depth=1
	jz	x3, .LBB92_17
	jmp	.LBB92_16
.LBB92_16:                              // %.preheader.i
                                        //   in Loop: Header=BB92_13 Depth=1
	jl	x3, x2, .LBB92_13
	jmp	.LBB92_17
.LBB92_17:                              // %.loopexit.i
	jne	x3, x2, .LBB92_19
	jmp	.LBB92_18
.LBB92_18:
	call	abort
.LBB92_19:
	mov	r3, 131074
	jz	r1, .LBB92_23
	jmp	.LBB92_20
.LBB92_20:
	mov	r3, [r1]
	mov	r4, r3
	add	r4, r1
	jne	r4, x2, .LBB92_22
	jmp	.LBB92_21
.LBB92_21:
	add	r3, r2
	mov	[r1], r3
	mov	x2, r1
	jmp	.LBB92_24
.LBB92_22:
add	r1, 1
	mov	r3, r1
.LBB92_23:
	mov	[r3], x2
	mov	[x0], x3
.LBB92_24:
	mov	r1, 1
	mov	x1, -1
	call	__bit_and
	jz	rax, .LBB92_49
	jmp	.LBB92_25
.LBB92_25:
	mov	r0, [x2]
	mov	r1, r0
	add	r1, x2
	jne	r1, x3, .LBB92_49
	jmp	.LBB92_26
.LBB92_26:
	add	r0, [x3]
	mov	[x2], r0
add	x3, 1
	mov	r0, [x3]
add	x2, 1
	mov	[x2], r0
	jmp	.LBB92_49
.LBB92_27:
	mov	r0, x0
	mov	r1, x1
	call	__stdout_linebuf_write
	mov	r0, rsp
	je	x0, r0, .LBB92_49
	jmp	.LBB92_28
.LBB92_28:
	mov	r0, 131072
	mov	r1, [r0]
	mov	r2, 1296125004
	je	r1, r2, .LBB92_30
	jmp	.LBB92_29
.LBB92_29:
	mov	[r0], 1296125004
	mov	r0, 131073
	mov	[r0], 131075
	mov	r0, 131074
	mov	[r0], 0
	mov	x2, x0
add	x2, -1
	mov	r2, [x2]
	mov	r1, 0
	mov	x3, 0
	mov	r0, 0
	jmp	.LBB92_39
.LBB92_30:
	mov	r0, 131074
	mov	x3, [r0]
	mov	x2, x0
add	x2, -1
	mov	r1, 0
	mov	r0, 1
	jne	x3, r1, .LBB92_32
// %bb.31:
	mov	r0, 0
.LBB92_32:
	mov	r2, [x2]
	jz	x3, .LBB92_39
	jmp	.LBB92_33
.LBB92_33:
	jge	x3, x2, .LBB92_39
	jmp	.LBB92_34
.LBB92_34:                              // %.preheader.i5.preheader
	mov	r3, 0
.LBB92_35:                              // %.preheader.i5
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, x3
	mov	r0, r1
add	r0, 1
	mov	x3, [r0]
	mov	r0, 1
	jne	x3, r3, .LBB92_37
// %bb.36:                              // %.preheader.i5
                                        //   in Loop: Header=BB92_35 Depth=1
	mov	r0, 0
.LBB92_37:                              // %.preheader.i5
                                        //   in Loop: Header=BB92_35 Depth=1
	jz	x3, .LBB92_39
	jmp	.LBB92_38
.LBB92_38:                              // %.preheader.i5
                                        //   in Loop: Header=BB92_35 Depth=1
	jl	x3, x2, .LBB92_35
	jmp	.LBB92_39
.LBB92_39:                              // %.loopexit.i4
	jne	x3, x2, .LBB92_41
	jmp	.LBB92_40
.LBB92_40:
	call	abort
.LBB92_41:
	mov	r3, 131074
	jz	r1, .LBB92_45
	jmp	.LBB92_42
.LBB92_42:
	mov	r3, [r1]
	mov	r4, r3
	add	r4, r1
	jne	r4, x2, .LBB92_44
	jmp	.LBB92_43
.LBB92_43:
	add	r3, r2
	mov	[r1], r3
	mov	x2, r1
	jmp	.LBB92_46
.LBB92_44:
add	r1, 1
	mov	r3, r1
.LBB92_45:
	mov	[r3], x2
	mov	[x0], x3
.LBB92_46:
	mov	r1, 1
	call	__bit_and
	jz	rax, .LBB92_49
	jmp	.LBB92_47
.LBB92_47:
	mov	r0, [x2]
	mov	r1, r0
	add	r1, x2
	jne	r1, x3, .LBB92_49
	jmp	.LBB92_48
.LBB92_48:
	add	r0, [x3]
	mov	[x2], r0
add	x3, 1
	mov	r0, [x3]
add	x2, 1
	mov	[x2], r0
.LBB92_49:                              // %free.exit
	mov	rax, x1
	mov	x3, [rsp+520]
	mov	x2, [rsp+524]
	mov	x1, [rsp+528]
	mov	x0, [rsp+532]
add	rsp, 536
	ret
// -- End function
// -- Begin function vsnprintf
vsnprintf:                              // @vsnprintf
// %bb.0:
sub	rsp, 576
	mov	[rsp+572], x0
	mov	[rsp+568], x1
	mov	[rsp+564], x2
	mov	[rsp+560], x3
	mov	[rsp+556], x4
	mov	[rsp+552], x5
	mov	[rsp+548], x6
	mov	[rsp+544], x7
	mov	[rsp+540], x8
	mov	[rsp+536], x9
	mov	[rsp+532], x10
	mov	[rsp+528], x11
	mov	[rsp+524], x12
	mov	[rsp+520], x13
	mov	[rsp+516], x14
	mov	[rsp+512], x15
	mov	x4, r2
	mov	[rsp+92], r3
	mov	[rsp+80], r0
	mov	r0, rsp
add	r0, 84
	mov	[r0], r1
	mov	r0, rsp
add	r0, 88
	mov	[r0], 0
	mov	x1, rsp
add	x1, 96
	mov	r1, 3
	mov	r0, x1
	call	__bit_and
	mov	r1, 3
	mov	[rsp+48], rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 3
	mov	r0, rax
	call	__bit_xor
	mov	x14, rsp
add	x14, 98
add	rax, 1
	mov	[rsp+32], rax
	mov	r0, rsp
add	r0, 97
	mov	[rsp+44], r0
	mov	x15, rsp
add	x15, 417
	mov	r0, rsp
add	r0, 351
	mov	[rsp+28], r0
	mov	r0, rsp
add	r0, 415
	mov	[rsp+36], r0
	mov	x3, 46
	mov	x9, -2147483638
	mov	x0, 1
	mov	r0, mcasm_static_760ecf6681c729f1ad8f31cd17c23263
	mov	r1, mcasm_static_e9b9d4fa234f92993c5a3606bcad2ac0
	sub	r1, r0
	mov	[rsp+24], r1
	mov	r0, mcasm_static_4b3346717c4e5d4dfc64dcf9c1c8076d
	mov	r1, mcasm_static_bc72e38ef0e51415a51f8c5519afeed4
	sub	r1, r0
	mov	[rsp+40], r1
	mov	x7, 43
	mov	x13, 45
	mov	[rsp+64], x14
	mov	[rsp+60], x15
.LBB93_1:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB93_44 Depth 2
                                        //       Child Loop BB93_40 Depth 3
                                        //         Child Loop BB93_36 Depth 4
                                        //           Child Loop BB93_16 Depth 5
                                        //             Child Loop BB93_24 Depth 6
                                        //             Child Loop BB93_8 Depth 6
                                        //     Child Loop BB93_58 Depth 2
                                        //     Child Loop BB93_66 Depth 2
                                        //     Child Loop BB93_507 Depth 2
                                        //     Child Loop BB93_509 Depth 2
                                        //     Child Loop BB93_511 Depth 2
                                        //     Child Loop BB93_522 Depth 2
                                        //     Child Loop BB93_531 Depth 2
                                        //     Child Loop BB93_541 Depth 2
                                        //     Child Loop BB93_188 Depth 2
                                        //     Child Loop BB93_170 Depth 2
                                        //     Child Loop BB93_565 Depth 2
                                        //     Child Loop BB93_578 Depth 2
                                        //     Child Loop BB93_229 Depth 2
                                        //     Child Loop BB93_237 Depth 2
                                        //     Child Loop BB93_247 Depth 2
                                        //     Child Loop BB93_255 Depth 2
                                        //     Child Loop BB93_260 Depth 2
                                        //     Child Loop BB93_218 Depth 2
                                        //     Child Loop BB93_220 Depth 2
                                        //     Child Loop BB93_222 Depth 2
                                        //     Child Loop BB93_364 Depth 2
                                        //     Child Loop BB93_367 Depth 2
                                        //     Child Loop BB93_370 Depth 2
                                        //     Child Loop BB93_376 Depth 2
                                        //     Child Loop BB93_379 Depth 2
                                        //     Child Loop BB93_382 Depth 2
                                        //     Child Loop BB93_388 Depth 2
                                        //     Child Loop BB93_390 Depth 2
                                        //     Child Loop BB93_392 Depth 2
                                        //     Child Loop BB93_402 Depth 2
                                        //     Child Loop BB93_405 Depth 2
                                        //     Child Loop BB93_408 Depth 2
                                        //     Child Loop BB93_420 Depth 2
                                        //     Child Loop BB93_422 Depth 2
                                        //     Child Loop BB93_424 Depth 2
                                        //     Child Loop BB93_429 Depth 2
                                        //     Child Loop BB93_432 Depth 2
                                        //     Child Loop BB93_439 Depth 2
                                        //     Child Loop BB93_446 Depth 2
                                        //     Child Loop BB93_448 Depth 2
                                        //     Child Loop BB93_450 Depth 2
                                        //     Child Loop BB93_353 Depth 2
                                        //     Child Loop BB93_355 Depth 2
                                        //     Child Loop BB93_357 Depth 2
                                        //     Child Loop BB93_289 Depth 2
                                        //     Child Loop BB93_291 Depth 2
                                        //     Child Loop BB93_292 Depth 2
                                        //     Child Loop BB93_304 Depth 2
                                        //     Child Loop BB93_308 Depth 2
                                        //     Child Loop BB93_314 Depth 2
                                        //     Child Loop BB93_324 Depth 2
                                        //     Child Loop BB93_327 Depth 2
                                        //     Child Loop BB93_333 Depth 2
                                        //     Child Loop BB93_277 Depth 2
                                        //     Child Loop BB93_279 Depth 2
                                        //     Child Loop BB93_281 Depth 2
                                        //     Child Loop BB93_460 Depth 2
                                        //     Child Loop BB93_477 Depth 2
                                        //     Child Loop BB93_486 Depth 2
                                        //     Child Loop BB93_496 Depth 2
	mov	r0, [x4]
	mov	r1, 255
	call	__bit_and
	mov	r0, 37
	je	rax, r0, .LBB93_3
	jmp	.LBB93_2
.LBB93_2:                               //   in Loop: Header=BB93_1 Depth=1
	jz	rax, .LBB93_589
	jmp	.LBB93_4
.LBB93_3:                               // %.preheader165.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 0
	mov	[rsp+76], r0
	mov	x8, 32
	mov	x11, x4
	mov	x10, 0
	mov	x1, 0
	mov	x2, 0
	mov	x12, 0
	mov	x5, 42
	jmp	.LBB93_44
.LBB93_4:                               //   in Loop: Header=BB93_1 Depth=1
	mov	r0, rsp
add	r0, 84
	mov	r1, [r0]
	mov	r0, rsp
add	r0, 88
	mov	x1, [r0]
	mov	r0, x1
add	r0, 1
	jz	r1, .LBB93_7
	jmp	.LBB93_5
.LBB93_5:                               //   in Loop: Header=BB93_1 Depth=1
add	r1, -2147483648
	mov	r2, r0
add	r2, -2147483648
	jge	r2, r1, .LBB93_7
	jmp	.LBB93_6
.LBB93_6:                               //   in Loop: Header=BB93_1 Depth=1
	add	x1, [rsp+80]
	mov	x5, [x1]
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, -256
	mov	x6, rax
	mov	r0, x5
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x6
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	[x1], rax
	mov	r1, rsp
add	r1, 88
	mov	r0, 1
	add	r0, [r1]
.LBB93_7:                               //   in Loop: Header=BB93_1 Depth=1
add	x4, 1
	mov	r1, rsp
add	r1, 88
	mov	[r1], r0
	mov	x9, -2147483638
	mov	x13, 45
	jmp	.LBB93_1
.LBB93_8:                               // %.preheader
                                        //   Parent Loop BB93_1 Depth=1
                                        //     Parent Loop BB93_44 Depth=2
                                        //       Parent Loop BB93_40 Depth=3
                                        //         Parent Loop BB93_36 Depth=4
                                        //           Parent Loop BB93_16 Depth=5
                                        // =>          This Inner Loop Header: Depth=6
add	x11, 1
	mov	r0, [x11]
	mov	r1, 255
	call	__bit_and
	mov	x4, rax
	je	x4, x13, .LBB93_8
	jmp	.LBB93_9
.LBB93_9:                               // %.preheader
                                        //   in Loop: Header=BB93_16 Depth=5
	mov	r0, 41
	jg	x4, r0, .LBB93_12
	jmp	.LBB93_10
.LBB93_10:                              // %.preheader
                                        //   in Loop: Header=BB93_36 Depth=4
	mov	r0, 32
	je	x4, r0, .LBB93_33
	jmp	.LBB93_11
.LBB93_11:                              // %.preheader
                                        //   in Loop: Header=BB93_40 Depth=3
	mov	r0, 35
	je	x4, r0, .LBB93_37
	jmp	.LBB93_53
.LBB93_12:                              // %.preheader
                                        //   in Loop: Header=BB93_16 Depth=5
	je	x4, x5, .LBB93_45
	jmp	.LBB93_13
.LBB93_13:                              // %.preheader
                                        //   in Loop: Header=BB93_16 Depth=5
	mov	r0, 48
	je	x4, r0, .LBB93_41
	jmp	.LBB93_14
.LBB93_14:                              // %.preheader
                                        //   in Loop: Header=BB93_16 Depth=5
	jne	x4, x7, .LBB93_53
	jmp	.LBB93_15
.LBB93_15:                              // %.loopexit99.outer.loopexit
                                        //   in Loop: Header=BB93_16 Depth=5
	mov	x2, 1
	mov	x12, 1
.LBB93_16:                              // %.loopexit99.outer
                                        //   Parent Loop BB93_1 Depth=1
                                        //     Parent Loop BB93_44 Depth=2
                                        //       Parent Loop BB93_40 Depth=3
                                        //         Parent Loop BB93_36 Depth=4
                                        // =>        This Loop Header: Depth=5
                                        //             Child Loop BB93_24 Depth 6
                                        //             Child Loop BB93_8 Depth 6
	mov	x6, x11
add	x6, 1
	mov	r0, [x6]
	mov	r1, 255
	call	__bit_and
	mov	x4, rax
	jg	x4, x5, .LBB93_20
	jmp	.LBB93_17
.LBB93_17:                              // %.loopexit99.outer
                                        //   in Loop: Header=BB93_36 Depth=4
	mov	r0, 32
	je	x4, r0, .LBB93_35
	jmp	.LBB93_18
.LBB93_18:                              // %.loopexit99.outer
                                        //   in Loop: Header=BB93_40 Depth=3
	mov	r0, 35
	je	x4, r0, .LBB93_39
	jmp	.LBB93_19
.LBB93_19:                              // %.loopexit99.outer
                                        //   in Loop: Header=BB93_1 Depth=1
	je	x4, x5, .LBB93_47
	jmp	.LBB93_55
.LBB93_20:                              // %.loopexit99.outer
                                        //   in Loop: Header=BB93_16 Depth=5
	je	x4, x7, .LBB93_23
	jmp	.LBB93_21
.LBB93_21:                              // %.loopexit99.outer
                                        //   in Loop: Header=BB93_16 Depth=5
	je	x4, x13, .LBB93_32
	jmp	.LBB93_22
.LBB93_22:                              // %.loopexit99.outer
                                        //   in Loop: Header=BB93_44 Depth=2
	mov	r0, 48
	je	x4, r0, .LBB93_43
	jmp	.LBB93_55
.LBB93_23:                              // %.loopexit99.preheader
                                        //   in Loop: Header=BB93_16 Depth=5
.LBB93_24:                              // %.loopexit99
                                        //   Parent Loop BB93_1 Depth=1
                                        //     Parent Loop BB93_44 Depth=2
                                        //       Parent Loop BB93_40 Depth=3
                                        //         Parent Loop BB93_36 Depth=4
                                        //           Parent Loop BB93_16 Depth=5
                                        // =>          This Inner Loop Header: Depth=6
add	x6, 1
	mov	r0, [x6]
	mov	r1, 255
	call	__bit_and
	mov	x4, rax
	je	x4, x7, .LBB93_24
	jmp	.LBB93_25
.LBB93_25:                              // %.loopexit99
                                        //   in Loop: Header=BB93_16 Depth=5
	mov	r0, 41
	jg	x4, r0, .LBB93_28
	jmp	.LBB93_26
.LBB93_26:                              // %.loopexit99
                                        //   in Loop: Header=BB93_36 Depth=4
	mov	r0, 32
	je	x4, r0, .LBB93_34
	jmp	.LBB93_27
.LBB93_27:                              // %.loopexit99
                                        //   in Loop: Header=BB93_40 Depth=3
	mov	r0, 35
	je	x4, r0, .LBB93_38
	jmp	.LBB93_54
.LBB93_28:                              // %.loopexit99
                                        //   in Loop: Header=BB93_16 Depth=5
	je	x4, x5, .LBB93_46
	jmp	.LBB93_29
.LBB93_29:                              // %.loopexit99
                                        //   in Loop: Header=BB93_16 Depth=5
	mov	r0, 48
	je	x4, r0, .LBB93_42
	jmp	.LBB93_30
.LBB93_30:                              // %.loopexit99
                                        //   in Loop: Header=BB93_16 Depth=5
	jne	x4, x13, .LBB93_54
	jmp	.LBB93_31
.LBB93_31:                              // %.preheader.preheader.loopexit
                                        //   in Loop: Header=BB93_16 Depth=5
	mov	x2, 1
.LBB93_32:                              // %.preheader.preheader
                                        //   in Loop: Header=BB93_16 Depth=5
	mov	x11, x6
	jmp	.LBB93_8
.LBB93_33:                              // %.loopexit100.backedge.loopexit
                                        //   in Loop: Header=BB93_36 Depth=4
	mov	x1, 1
	mov	x12, 1
	jmp	.LBB93_36
.LBB93_34:                              // %.loopexit100.backedge.loopexit2
                                        //   in Loop: Header=BB93_36 Depth=4
	mov	x1, 1
	mov	x11, x6
	mov	x2, 1
	jmp	.LBB93_36
.LBB93_35:                              // %.loopexit100.backedge.loopexit7
                                        //   in Loop: Header=BB93_36 Depth=4
	mov	x1, 1
	mov	x11, x6
.LBB93_36:                              // %.loopexit100
                                        //   Parent Loop BB93_1 Depth=1
                                        //     Parent Loop BB93_44 Depth=2
                                        //       Parent Loop BB93_40 Depth=3
                                        // =>      This Loop Header: Depth=4
                                        //           Child Loop BB93_16 Depth 5
                                        //             Child Loop BB93_24 Depth 6
                                        //             Child Loop BB93_8 Depth 6
	jmp	.LBB93_16
.LBB93_37:                              // %.loopexit101.backedge.loopexit
                                        //   in Loop: Header=BB93_40 Depth=3
	mov	x10, 1
	mov	x12, 1
	jmp	.LBB93_40
.LBB93_38:                              // %.loopexit101.backedge.loopexit3
                                        //   in Loop: Header=BB93_40 Depth=3
	mov	x10, 1
	mov	x11, x6
	mov	x2, 1
	jmp	.LBB93_40
.LBB93_39:                              // %.loopexit101.backedge.loopexit8
                                        //   in Loop: Header=BB93_40 Depth=3
	mov	x10, 1
	mov	x11, x6
.LBB93_40:                              // %.loopexit101
                                        //   Parent Loop BB93_1 Depth=1
                                        //     Parent Loop BB93_44 Depth=2
                                        // =>    This Loop Header: Depth=3
                                        //         Child Loop BB93_36 Depth 4
                                        //           Child Loop BB93_16 Depth 5
                                        //             Child Loop BB93_24 Depth 6
                                        //             Child Loop BB93_8 Depth 6
	jmp	.LBB93_36
.LBB93_41:                              // %.preheader165.backedge.loopexit
                                        //   in Loop: Header=BB93_44 Depth=2
	mov	r0, 1
	mov	[rsp+76], r0
	mov	x8, x4
	mov	x12, 1
	jmp	.LBB93_44
.LBB93_42:                              // %.preheader165.backedge.loopexit4
                                        //   in Loop: Header=BB93_44 Depth=2
	mov	r0, 1
	mov	[rsp+76], r0
	mov	x11, x6
	mov	x8, x4
	mov	x2, 1
	jmp	.LBB93_44
.LBB93_43:                              // %.preheader165.backedge.loopexit9
                                        //   in Loop: Header=BB93_44 Depth=2
	mov	r0, 1
	mov	[rsp+76], r0
	mov	x11, x6
	mov	x8, x4
.LBB93_44:                              // %.preheader165
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB93_40 Depth 3
                                        //         Child Loop BB93_36 Depth 4
                                        //           Child Loop BB93_16 Depth 5
                                        //             Child Loop BB93_24 Depth 6
                                        //             Child Loop BB93_8 Depth 6
	jmp	.LBB93_40
.LBB93_45:                              // %.loopexit103.loopexit
                                        //   in Loop: Header=BB93_1 Depth=1
add	x11, -1
	mov	x12, 1
	jmp	.LBB93_48
.LBB93_46:                              // %.loopexit103.loopexit5
                                        //   in Loop: Header=BB93_1 Depth=1
add	x6, -1
	mov	x2, 1
	mov	x11, x6
	jmp	.LBB93_48
.LBB93_47:                              // %.loopexit103.loopexit10
                                        //   in Loop: Header=BB93_1 Depth=1
.LBB93_48:                              // %.loopexit103
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [rsp+92]
	mov	r1, r0
add	r1, 4
	mov	[rsp+92], r1
	mov	r0, [r0]
	mov	x6, r0
	mov	r1, -1
	jg	r0, r1, .LBB93_50
	jmp	.LBB93_49
.LBB93_49:                              //   in Loop: Header=BB93_1 Depth=1
	mov	x6, 0
	sub	x6, r0
.LBB93_50:                              //   in Loop: Header=BB93_1 Depth=1
	mov	x7, 1
	mov	r1, 0
	jl	r0, r1, .LBB93_52
	jmp	.LBB93_51
.LBB93_51:                              //   in Loop: Header=BB93_1 Depth=1
	mov	x7, x12
.LBB93_52:                              //   in Loop: Header=BB93_1 Depth=1
add	x11, 2
	mov	r0, [x11]
	mov	r1, 255
	call	__bit_and
	mov	x4, rax
	mov	[rsp+72], x7
	jmp	.LBB93_59
.LBB93_53:                              // %.loopexit.loopexit
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x12, 1
	jmp	.LBB93_56
.LBB93_54:                              // %.loopexit.loopexit1
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x2, 1
	mov	x11, x6
	jmp	.LBB93_56
.LBB93_55:                              // %.loopexit.loopexit6
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x11, x6
.LBB93_56:                              // %.loopexit
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	[rsp+72], x12
	mov	r0, x4
add	r0, -48
	mov	r1, 255
	call	__bit_and
add	rax, -2147483648
	mov	x6, 0
	mov	r0, -2147483639
	jg	rax, r0, .LBB93_59
	jmp	.LBB93_57
.LBB93_57:                              // %.preheader163.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
.LBB93_58:                              // %.preheader163
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
add	x4, -48
	mov	r1, 255
	mul	x6, 10
	mov	r0, x4
	call	__bit_and
add	x11, 1
	mov	r0, [x11]
	mov	r1, 255
	add	x6, rax
	call	__bit_and
	mov	x4, rax
	mov	r0, x4
add	r0, -48
	mov	r1, 255
	call	__bit_and
add	rax, -2147483648
	jl	rax, x9, .LBB93_58
	jmp	.LBB93_59
.LBB93_59:                              // %.loopexit164
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 255
	mov	r0, x4
	call	__bit_and
	mov	x12, -1
	jne	rax, x3, .LBB93_67
	jmp	.LBB93_60
.LBB93_60:                              //   in Loop: Header=BB93_1 Depth=1
	mov	x7, x11
add	x7, 1
	mov	r0, [x7]
	mov	r1, 255
	call	__bit_and
	mov	x4, rax
	jne	x4, x5, .LBB93_64
	jmp	.LBB93_61
.LBB93_61:                              //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [rsp+92]
	mov	r1, r0
add	r1, 4
	mov	[rsp+92], r1
	mov	r1, [r0]
	mov	r2, 1
	mov	r0, -1
	jg	r1, r0, .LBB93_63
// %bb.62:                              //   in Loop: Header=BB93_1 Depth=1
	mov	r2, 0
.LBB93_63:                              //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 0
	sub	r0, r2
add	r1, 1
add	x11, 2
	call	__bit_and
	mov	r0, [x11]
	mov	x12, rax
	mov	r1, 255
add	x12, -1
	call	__bit_and
	mov	x4, rax
	jmp	.LBB93_67
.LBB93_64:                              //   in Loop: Header=BB93_1 Depth=1
	mov	r0, x4
add	r0, -48
	mov	r1, 255
	call	__bit_and
add	rax, -2147483648
	mov	x12, 0
	mov	x11, x7
	mov	r0, -2147483639
	jg	rax, r0, .LBB93_67
	jmp	.LBB93_65
.LBB93_65:                              // %.preheader161.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x11, x7
.LBB93_66:                              // %.preheader161
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
add	x4, -48
	mov	r1, 255
	mul	x12, 10
	mov	r0, x4
	call	__bit_and
add	x11, 1
	mov	r0, [x11]
	mov	r1, 255
	add	x12, rax
	call	__bit_and
	mov	x4, rax
	mov	r0, x4
add	r0, -48
	mov	r1, 255
	call	__bit_and
add	rax, -2147483648
	jl	rax, x9, .LBB93_66
	jmp	.LBB93_67
.LBB93_67:                              // %.loopexit162
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 255
	mov	r0, x4
	call	__bit_and
	mov	x13, 0
	mov	r0, 107
	jg	rax, r0, .LBB93_70
	jmp	.LBB93_68
.LBB93_68:                              // %.loopexit162
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 76
	je	rax, r0, .LBB93_77
	jmp	.LBB93_69
.LBB93_69:                              // %.loopexit162
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 104
	mov	x7, 43
	je	rax, r0, .LBB93_73
	jmp	.LBB93_80
.LBB93_70:                              // %.loopexit162
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 108
	je	rax, r0, .LBB93_75
	jmp	.LBB93_71
.LBB93_71:                              // %.loopexit162
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 116
	mov	x7, 43
	je	rax, r0, .LBB93_79
	jmp	.LBB93_72
.LBB93_72:                              // %.loopexit162
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 122
	je	rax, r0, .LBB93_78
	jmp	.LBB93_80
.LBB93_73:                              //   in Loop: Header=BB93_1 Depth=1
	mov	x4, x11
add	x4, 1
	mov	r0, [x4]
	mov	r1, 255
	call	__bit_and
	mov	x9, rax
	mov	x13, 2
	mov	r0, 104
	jne	x9, r0, .LBB93_81
	jmp	.LBB93_74
.LBB93_74:                              //   in Loop: Header=BB93_1 Depth=1
add	x11, 2
	mov	x13, 1
	jmp	.LBB93_80
.LBB93_75:                              //   in Loop: Header=BB93_1 Depth=1
	mov	x4, x11
add	x4, 1
	mov	r0, [x4]
	mov	r1, 255
	call	__bit_and
	mov	x9, rax
	mov	x13, 3
	mov	r0, 108
	mov	x7, 43
	jne	x9, r0, .LBB93_81
	jmp	.LBB93_76
.LBB93_76:                              //   in Loop: Header=BB93_1 Depth=1
add	x11, 2
	mov	x13, 4
	jmp	.LBB93_80
.LBB93_77:                              //   in Loop: Header=BB93_1 Depth=1
add	x11, 1
	mov	x13, 5
	mov	x7, 43
	jmp	.LBB93_80
.LBB93_78:                              //   in Loop: Header=BB93_1 Depth=1
add	x11, 1
	mov	x13, 6
	jmp	.LBB93_80
.LBB93_79:                              //   in Loop: Header=BB93_1 Depth=1
add	x11, 1
	mov	x13, 7
.LBB93_80:                              //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [x11]
	mov	r1, 255
	call	__bit_and
	mov	x9, rax
	mov	x4, x11
.LBB93_81:                              //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 255
	mov	r0, x9
	call	__bit_and
	jz	rax, .LBB93_589
	jmp	.LBB93_82
.LBB93_82:                              //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 255
add	x4, 1
	mov	r0, x9
	call	__bit_and
	mov	r0, 100
	jg	rax, r0, .LBB93_89
	jmp	.LBB93_83
.LBB93_83:                              //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 87
	jg	rax, r0, .LBB93_86
	jmp	.LBB93_84
.LBB93_84:                              //   in Loop: Header=BB93_1 Depth=1
	mov	r0, rax
add	r0, 2147483579
	mov	r1, -2147483645
	jl	r0, r1, .LBB93_192
	jmp	.LBB93_85
.LBB93_85:                              //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 37
	je	rax, r0, .LBB93_560
	jmp	.LBB93_582
.LBB93_86:                              //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 88
	je	rax, r0, .LBB93_131
	jmp	.LBB93_87
.LBB93_87:                              //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 99
	je	rax, r0, .LBB93_163
	jmp	.LBB93_88
.LBB93_88:                              //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 100
	je	rax, r0, .LBB93_99
	jmp	.LBB93_582
.LBB93_89:                              //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 110
	jg	rax, r0, .LBB93_93
	jmp	.LBB93_90
.LBB93_90:                              //   in Loop: Header=BB93_1 Depth=1
	mov	r0, rax
add	r0, 2147483547
	mov	r1, -2147483645
	jl	r0, r1, .LBB93_192
	jmp	.LBB93_91
.LBB93_91:                              //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 105
	je	rax, r0, .LBB93_99
	jmp	.LBB93_92
.LBB93_92:                              //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 110
	je	rax, r0, .LBB93_546
	jmp	.LBB93_582
.LBB93_93:                              //   in Loop: Header=BB93_1 Depth=1
	mov	r3, 0
	mov	r0, 114
	jg	rax, r0, .LBB93_96
	jmp	.LBB93_94
.LBB93_94:                              //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 111
	je	rax, r0, .LBB93_148
	jmp	.LBB93_95
.LBB93_95:                              //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 112
	je	rax, r0, .LBB93_545
	jmp	.LBB93_582
.LBB93_96:                              //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 115
	je	rax, r0, .LBB93_501
	jmp	.LBB93_97
.LBB93_97:                              //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 117
	je	rax, r0, .LBB93_116
	jmp	.LBB93_98
.LBB93_98:                              //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 120
	je	rax, r0, .LBB93_131
	jmp	.LBB93_582
.LBB93_99:                              //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 3
	jg	x13, r0, .LBB93_103
	jmp	.LBB93_100
.LBB93_100:                             //   in Loop: Header=BB93_1 Depth=1
	je	x13, x0, .LBB93_106
	jmp	.LBB93_101
.LBB93_101:                             //   in Loop: Header=BB93_1 Depth=1
	mov	x9, -2147483638
	mov	r0, 2
	mov	x5, [rsp+76]
	je	x13, r0, .LBB93_107
	jmp	.LBB93_102
.LBB93_102:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 3
	je	x13, r0, .LBB93_108
	jmp	.LBB93_112
.LBB93_103:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 4
	je	x13, r0, .LBB93_109
	jmp	.LBB93_104
.LBB93_104:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 6
	je	x13, r0, .LBB93_110
	jmp	.LBB93_105
.LBB93_105:                             //   in Loop: Header=BB93_1 Depth=1
	mov	x9, -2147483638
	mov	r0, 7
	mov	x5, [rsp+76]
	je	x13, r0, .LBB93_111
	jmp	.LBB93_112
.LBB93_106:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [rsp+92]
	mov	r1, r0
add	r1, 4
	mov	[rsp+92], r1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r1, 128
	mov	r0, rax
	call	__bit_xor
	mov	x8, rax
add	x8, -128
	mov	r1, 31
	mov	r0, x8
	call	__bit_sar
	mov	x9, -2147483638
	mov	x5, [rsp+76]
	jmp	.LBB93_113
.LBB93_107:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [rsp+92]
	mov	r1, r0
add	r1, 4
	mov	[rsp+92], r1
	mov	r0, [r0]
	mov	r1, 65535
	call	__bit_and
	mov	r1, 32768
	mov	r0, rax
	call	__bit_xor
	mov	x8, rax
add	x8, -32768
	mov	r1, 31
	mov	r0, x8
	call	__bit_sar
	jmp	.LBB93_113
.LBB93_108:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [rsp+92]
	mov	r1, r0
add	r1, 4
	mov	[rsp+92], r1
	mov	x8, [r0]
	mov	r1, 31
	mov	r0, x8
	call	__bit_sar
	jmp	.LBB93_113
.LBB93_109:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [rsp+92]
	mov	r1, r0
add	r1, 4
	mov	[rsp+92], r1
	mov	x8, [r0]
add	r0, 8
	mov	[rsp+92], r0
	mov	rax, [r1]
	mov	x9, -2147483638
	mov	x5, [rsp+76]
	jmp	.LBB93_113
.LBB93_110:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [rsp+92]
	mov	r1, r0
add	r1, 4
	mov	[rsp+92], r1
	mov	x8, [r0]
	mov	r1, 31
	mov	r0, x8
	call	__bit_sar
	mov	x9, -2147483638
	mov	x5, [rsp+76]
	jmp	.LBB93_113
.LBB93_111:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [rsp+92]
	mov	r1, r0
add	r1, 4
	mov	[rsp+92], r1
	mov	x8, [r0]
	mov	r1, 31
	mov	r0, x8
	call	__bit_sar
	jmp	.LBB93_113
.LBB93_112:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [rsp+92]
	mov	r1, r0
add	r1, 4
	mov	[rsp+92], r1
	mov	x8, [r0]
	mov	r1, 31
	mov	r0, x8
	call	__bit_sar
.LBB93_113:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, -1
	mov	x13, 45
	jg	rax, r0, .LBB93_115
	jmp	.LBB93_114
.LBB93_114:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 0
	mov	r1, 0
	mov	r2, x8
	mov	r3, rax
	call	__subdi3
	mov	r2, t0
	mov	r0, rsp
	mov	r1, rsp
	mov	r3, rsp
	mov	r4, rsp
add	r0, 16
	mov	[r0], x12
add	r1, 12
	mov	[r1], x6
add	r3, 8
	mov	[r3], x5
add	r4, 4
	mov	[r4], x1
	mov	[rsp], x2
	mov	r0, rsp
add	r0, 80
	mov	r3, 1
	mov	r4, 10
	mov	r5, 0
	mov	r6, 0
	mov	r1, rax
	mov	r7, [rsp+72]
	call	format_integer
	jmp	.LBB93_1
.LBB93_115:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, rsp
	mov	r1, rsp
	mov	r2, rsp
	mov	r3, rsp
add	r0, 16
	mov	[r0], x12
add	r1, 12
	mov	[r1], x6
add	r2, 8
	mov	[r2], x5
add	r3, 4
	mov	[r3], x1
	mov	[rsp], x2
	mov	r0, rsp
add	r0, 80
	mov	r3, 0
	mov	r4, 10
	mov	r5, 0
	mov	r6, 0
	mov	r1, x8
	mov	r2, rax
	mov	r7, [rsp+72]
	call	format_integer
	jmp	.LBB93_1
.LBB93_116:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 3
	jg	x13, r0, .LBB93_120
	jmp	.LBB93_117
.LBB93_117:                             //   in Loop: Header=BB93_1 Depth=1
	mov	x9, -2147483638
	mov	x1, [rsp+76]
	je	x13, x0, .LBB93_123
	jmp	.LBB93_118
.LBB93_118:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 2
	je	x13, r0, .LBB93_124
	jmp	.LBB93_119
.LBB93_119:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 3
	je	x13, r0, .LBB93_125
	jmp	.LBB93_129
.LBB93_120:                             //   in Loop: Header=BB93_1 Depth=1
	mov	x9, -2147483638
	mov	r0, 4
	mov	x1, [rsp+76]
	je	x13, r0, .LBB93_126
	jmp	.LBB93_121
.LBB93_121:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 6
	je	x13, r0, .LBB93_127
	jmp	.LBB93_122
.LBB93_122:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 7
	je	x13, r0, .LBB93_128
	jmp	.LBB93_129
.LBB93_123:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [rsp+92]
	mov	r1, r0
add	r1, 4
	mov	[rsp+92], r1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r1, rax
	mov	r2, 0
	jmp	.LBB93_130
.LBB93_124:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [rsp+92]
	mov	r1, r0
add	r1, 4
	mov	[rsp+92], r1
	mov	r0, [r0]
	mov	r1, 65535
	call	__bit_and
	mov	r1, rax
	mov	r2, 0
	jmp	.LBB93_130
.LBB93_125:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [rsp+92]
	mov	r1, r0
add	r1, 4
	mov	[rsp+92], r1
	mov	r1, [r0]
	mov	r2, 0
	jmp	.LBB93_130
.LBB93_126:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [rsp+92]
	mov	r2, r0
add	r2, 4
	mov	[rsp+92], r2
	mov	r1, [r0]
add	r0, 8
	mov	[rsp+92], r0
	mov	r2, [r2]
	jmp	.LBB93_130
.LBB93_127:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [rsp+92]
	mov	r1, r0
add	r1, 4
	mov	[rsp+92], r1
	mov	r1, [r0]
	mov	r2, 0
	jmp	.LBB93_130
.LBB93_128:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [rsp+92]
	mov	r1, r0
add	r1, 4
	mov	[rsp+92], r1
	mov	x8, [r0]
	mov	r1, 31
	mov	r0, x8
	call	__bit_sar
	mov	r1, x8
	mov	r2, rax
	jmp	.LBB93_130
.LBB93_129:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [rsp+92]
	mov	r1, r0
add	r1, 4
	mov	[rsp+92], r1
	mov	r1, [r0]
	mov	r2, 0
.LBB93_130:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, rsp
	mov	r3, rsp
	mov	r4, rsp
	mov	r5, rsp
add	r0, 16
	mov	[r0], x12
add	r3, 12
	mov	[r3], x6
add	r4, 8
	mov	[r4], x1
add	r5, 4
	mov	[r5], 0
	mov	[rsp], 0
	mov	r0, rsp
add	r0, 80
	mov	r3, 0
	mov	r4, 10
	mov	r5, 0
	mov	r6, 0
	mov	r7, [rsp+72]
	call	format_integer
	mov	x13, 45
	jmp	.LBB93_1
.LBB93_131:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 3
	jg	x13, r0, .LBB93_135
	jmp	.LBB93_132
.LBB93_132:                             //   in Loop: Header=BB93_1 Depth=1
	je	x13, x0, .LBB93_138
	jmp	.LBB93_133
.LBB93_133:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 2
	je	x13, r0, .LBB93_139
	jmp	.LBB93_134
.LBB93_134:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 3
	je	x13, r0, .LBB93_140
	jmp	.LBB93_144
.LBB93_135:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 4
	je	x13, r0, .LBB93_141
	jmp	.LBB93_136
.LBB93_136:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 6
	je	x13, r0, .LBB93_142
	jmp	.LBB93_137
.LBB93_137:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 7
	je	x13, r0, .LBB93_143
	jmp	.LBB93_144
.LBB93_138:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [rsp+92]
	mov	r1, r0
add	r1, 4
	mov	[rsp+92], r1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	x8, rax
	mov	x11, 0
	jmp	.LBB93_145
.LBB93_139:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [rsp+92]
	mov	r1, r0
add	r1, 4
	mov	[rsp+92], r1
	mov	r0, [r0]
	mov	r1, 65535
	call	__bit_and
	mov	x8, rax
	mov	x11, 0
	jmp	.LBB93_145
.LBB93_140:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [rsp+92]
	mov	r1, r0
add	r1, 4
	mov	[rsp+92], r1
	mov	x8, [r0]
	mov	x11, 0
	jmp	.LBB93_145
.LBB93_141:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [rsp+92]
	mov	r1, r0
add	r1, 4
	mov	[rsp+92], r1
	mov	x8, [r0]
add	r0, 8
	mov	[rsp+92], r0
	mov	x11, [r1]
	jmp	.LBB93_145
.LBB93_142:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [rsp+92]
	mov	r1, r0
add	r1, 4
	mov	[rsp+92], r1
	mov	x8, [r0]
	mov	x11, 0
	jmp	.LBB93_145
.LBB93_143:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [rsp+92]
	mov	r1, r0
add	r1, 4
	mov	[rsp+92], r1
	mov	x8, [r0]
	mov	r1, 31
	mov	r0, x8
	call	__bit_sar
	mov	x11, rax
	jmp	.LBB93_145
.LBB93_144:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [rsp+92]
	mov	r1, r0
add	r1, 4
	mov	[rsp+92], r1
	mov	x8, [r0]
	mov	x11, 0
.LBB93_145:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 255
	mov	r0, x9
	call	__bit_and
	mov	r0, 1
	mov	r1, 88
	mov	x13, 45
	je	rax, r1, .LBB93_147
// %bb.146:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 0
.LBB93_147:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 1
	call	__bit_and
	mov	r0, rsp
	mov	r1, rsp
	mov	r2, rsp
	mov	r3, rsp
add	r0, 16
	mov	[r0], x12
add	r1, 12
	mov	[r1], x6
add	r2, 8
	mov	r0, [rsp+76]
	mov	[r2], r0
add	r3, 4
	mov	[r3], 0
	mov	[rsp], 0
	mov	r0, rsp
add	r0, 80
	mov	r3, 0
	mov	r4, 16
	mov	r1, x8
	mov	r2, x11
	mov	r5, rax
	mov	r6, x10
	mov	r7, [rsp+72]
	call	format_integer
	mov	x9, -2147483638
	jmp	.LBB93_1
.LBB93_148:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 3
	jg	x13, r0, .LBB93_152
	jmp	.LBB93_149
.LBB93_149:                             //   in Loop: Header=BB93_1 Depth=1
	mov	x9, -2147483638
	je	x13, x0, .LBB93_155
	jmp	.LBB93_150
.LBB93_150:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 2
	je	x13, r0, .LBB93_156
	jmp	.LBB93_151
.LBB93_151:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 3
	je	x13, r0, .LBB93_157
	jmp	.LBB93_161
.LBB93_152:                             //   in Loop: Header=BB93_1 Depth=1
	mov	x9, -2147483638
	mov	r0, 4
	je	x13, r0, .LBB93_158
	jmp	.LBB93_153
.LBB93_153:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 6
	je	x13, r0, .LBB93_159
	jmp	.LBB93_154
.LBB93_154:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 7
	je	x13, r0, .LBB93_160
	jmp	.LBB93_161
.LBB93_155:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [rsp+92]
	mov	r1, r0
add	r1, 4
	mov	[rsp+92], r1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r1, rax
	mov	r2, 0
	jmp	.LBB93_162
.LBB93_156:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [rsp+92]
	mov	r1, r0
add	r1, 4
	mov	[rsp+92], r1
	mov	r0, [r0]
	mov	r1, 65535
	call	__bit_and
	mov	r1, rax
	mov	r2, 0
	jmp	.LBB93_162
.LBB93_157:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [rsp+92]
	mov	r1, r0
add	r1, 4
	mov	[rsp+92], r1
	mov	r1, [r0]
	mov	r2, 0
	jmp	.LBB93_162
.LBB93_158:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [rsp+92]
	mov	r2, r0
add	r2, 4
	mov	[rsp+92], r2
	mov	r1, [r0]
add	r0, 8
	mov	[rsp+92], r0
	mov	r2, [r2]
	jmp	.LBB93_162
.LBB93_159:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [rsp+92]
	mov	r1, r0
add	r1, 4
	mov	[rsp+92], r1
	mov	r1, [r0]
	mov	r2, 0
	jmp	.LBB93_162
.LBB93_160:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [rsp+92]
	mov	r1, r0
add	r1, 4
	mov	[rsp+92], r1
	mov	x8, [r0]
	mov	r1, 31
	mov	r0, x8
	call	__bit_sar
	mov	r1, x8
	mov	r2, rax
	jmp	.LBB93_162
.LBB93_161:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [rsp+92]
	mov	r1, r0
add	r1, 4
	mov	[rsp+92], r1
	mov	r1, [r0]
	mov	r2, 0
.LBB93_162:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, rsp
	mov	r3, rsp
	mov	r4, rsp
	mov	r5, rsp
add	r0, 16
	mov	[r0], x12
add	r3, 12
	mov	[r3], x6
add	r4, 8
	mov	r0, [rsp+76]
	mov	[r4], r0
add	r5, 4
	mov	[r5], 0
	mov	[rsp], 0
	mov	r0, rsp
add	r0, 80
	mov	r3, 0
	mov	r4, 8
	mov	r5, 0
	mov	r6, x10
	mov	r7, [rsp+72]
	call	format_integer
	mov	x13, 45
	jmp	.LBB93_1
.LBB93_163:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [rsp+92]
	mov	r1, r0
add	r1, 4
	mov	[rsp+92], r1
	mov	x7, [r0]
	mov	r1, x6
add	r1, -1
	mov	r0, [rsp+72]
	jnz	r0, .LBB93_178
	jmp	.LBB93_164
.LBB93_164:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r2, 1
	mov	x9, -2147483638
	mov	x13, 45
	jg	x6, x0, .LBB93_166
// %bb.165:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r2, 0
.LBB93_166:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	mov	r0, rsp
add	r0, 84
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 88
	mov	x1, [r1]
	mov	x5, rax
	jz	x5, .LBB93_174
	jmp	.LBB93_167
.LBB93_167:                             //   in Loop: Header=BB93_1 Depth=1
	jz	r0, .LBB93_169
	jmp	.LBB93_168
.LBB93_168:                             // %.preheader113.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
add	x5, 1
	mov	x2, x1
	jmp	.LBB93_170
.LBB93_169:                             //   in Loop: Header=BB93_1 Depth=1
	add	x1, x5
	jmp	.LBB93_177
.LBB93_170:                             // %.preheader113
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
add	x1, 1
	jz	r0, .LBB93_173
	jmp	.LBB93_171
.LBB93_171:                             // %.preheader113
                                        //   in Loop: Header=BB93_170 Depth=2
	mov	r1, r0
add	r1, -2147483648
	mov	r2, x1
add	r2, -2147483648
	jge	r2, r1, .LBB93_173
	jmp	.LBB93_172
.LBB93_172:                             //   in Loop: Header=BB93_170 Depth=2
	add	x2, [rsp+80]
	mov	r0, [x2]
	mov	r1, -256
	call	__bit_and
	mov	r1, 32
	mov	r0, rax
	call	__bit_or
	mov	[x2], rax
	mov	r0, rsp
add	r0, 88
	mov	x1, 1
	add	x1, [r0]
	mov	r0, rsp
add	r0, 84
	mov	r0, [r0]
.LBB93_173:                             //   in Loop: Header=BB93_170 Depth=2
	mov	r1, rsp
add	r1, 88
add	x5, -1
	mov	[r1], x1
	mov	x2, x1
	jg	x5, x0, .LBB93_170
	jmp	.LBB93_174
.LBB93_174:                             // %.loopexit114
                                        //   in Loop: Header=BB93_1 Depth=1
	jz	r0, .LBB93_177
	jmp	.LBB93_175
.LBB93_175:                             // %.loopexit114
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	r1, x1
add	r1, 1
add	r0, -2147483648
add	r1, -2147483648
	jge	r1, r0, .LBB93_177
	jmp	.LBB93_176
.LBB93_176:                             //   in Loop: Header=BB93_1 Depth=1
	add	x1, [rsp+80]
	mov	x5, [x1]
	mov	r1, 255
	mov	r0, x7
	call	__bit_and
	mov	r1, -256
	mov	x6, rax
	mov	r0, x5
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x6
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	[x1], rax
	mov	r0, rsp
add	r0, 88
	mov	x1, [r0]
.LBB93_177:                             //   in Loop: Header=BB93_1 Depth=1
add	x1, 1
	mov	r0, rsp
add	r0, 88
	mov	[r0], x1
	mov	x7, 43
	jmp	.LBB93_1
.LBB93_178:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, rsp
add	r0, 84
	mov	r0, [r0]
	mov	r2, rsp
add	r2, 88
	mov	x2, [r2]
	mov	x1, x2
add	x1, 1
	mov	x9, -2147483638
	mov	x13, 45
	jz	r0, .LBB93_181
	jmp	.LBB93_179
.LBB93_179:                             //   in Loop: Header=BB93_1 Depth=1
add	r0, -2147483648
	mov	r2, x1
add	r2, -2147483648
	jge	r2, r0, .LBB93_181
	jmp	.LBB93_180
.LBB93_180:                             //   in Loop: Header=BB93_1 Depth=1
	add	x2, [rsp+80]
	mov	x5, [x2]
	mov	x1, r1
	mov	r1, 255
	mov	r0, x7
	call	__bit_and
	mov	r1, -256
	mov	x7, rax
	mov	r0, x5
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x7
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	r1, x1
	mov	[x2], rax
	mov	r0, rsp
add	r0, 88
	mov	x2, [r0]
	mov	x1, x2
add	x1, 1
.LBB93_181:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, rsp
add	r0, 88
	mov	[r0], x1
	mov	r2, 1
	jg	x6, x0, .LBB93_183
// %bb.182:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r2, 0
.LBB93_183:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	mov	x5, rax
	mov	x7, 43
	jz	x5, .LBB93_1
	jmp	.LBB93_184
.LBB93_184:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, rsp
add	r0, 84
	mov	r1, [r0]
	jz	r1, .LBB93_186
	jmp	.LBB93_185
.LBB93_185:                             // %.preheader115.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	r0, x1
	jmp	.LBB93_188
.LBB93_186:                             //   in Loop: Header=BB93_1 Depth=1
add	x5, 1
	add	x2, x5
	mov	r0, rsp
add	r0, 88
	mov	[r0], x2
	jmp	.LBB93_1
.LBB93_187:                             //   in Loop: Header=BB93_188 Depth=2
	mov	r1, rsp
add	r1, 84
	mov	r1, [r1]
add	x5, -1
	mov	x1, r0
.LBB93_188:                             // %.preheader115
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
add	r0, 1
	jz	r1, .LBB93_191
	jmp	.LBB93_189
.LBB93_189:                             // %.preheader115
                                        //   in Loop: Header=BB93_188 Depth=2
add	r1, -2147483648
	mov	r2, r0
add	r2, -2147483648
	jge	r2, r1, .LBB93_191
	jmp	.LBB93_190
.LBB93_190:                             //   in Loop: Header=BB93_188 Depth=2
	add	x1, [rsp+80]
	mov	r0, [x1]
	mov	r1, -256
	call	__bit_and
	mov	r1, 32
	mov	r0, rax
	call	__bit_or
	mov	[x1], rax
	mov	r1, rsp
add	r1, 88
	mov	r0, 1
	add	r0, [r1]
.LBB93_191:                             //   in Loop: Header=BB93_188 Depth=2
	mov	r1, rsp
add	r1, 88
	mov	[r1], r0
	jg	x5, x0, .LBB93_187
	jmp	.LBB93_1
.LBB93_192:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [rsp+92]
	mov	r1, r0
add	r1, 4
	mov	[rsp+92], r1
	mov	x15, [r0]
add	r0, 8
	mov	[rsp+92], r0
	mov	x14, [r1]
	mov	r1, 255
	mov	r0, x9
	call	__bit_and
	mov	r1, 128
	mov	r0, rax
	call	__bit_xor
	mov	x11, rax
	mov	r1, 255
add	x11, -128
	mov	r0, x9
	call	__bit_and
	mov	r1, 32
	mov	x8, rax
	mov	r0, x8
	call	__bit_or
	mov	r0, 91
	jl	x11, r0, .LBB93_194
	jmp	.LBB93_193
.LBB93_193:                             //   in Loop: Header=BB93_1 Depth=1
	mov	rax, x8
.LBB93_194:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, -1
	jg	x14, r0, .LBB93_196
	jmp	.LBB93_195
.LBB93_195:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, -2147483648
	mov	r0, x14
	mov	x1, rax
	call	__bit_xor
	mov	x14, rax
	mov	rax, x1
	mov	r1, 45
	mov	r2, 0
	mov	x7, -1
	jmp	.LBB93_199
.LBB93_196:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 43
	mov	r2, 0
	mov	x7, -1
	jnz	x2, .LBB93_199
	jmp	.LBB93_197
.LBB93_197:                             //   in Loop: Header=BB93_1 Depth=1
	mov	x7, 0
	mov	r2, 1
	mov	r1, 0
	jz	x1, .LBB93_199
	jmp	.LBB93_198
.LBB93_198:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 32
	mov	r2, 0
	mov	x7, -1
.LBB93_199:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 101
	mov	[rsp+56], r1
	mov	[rsp+68], r2
	je	rax, r0, .LBB93_263
	jmp	.LBB93_200
.LBB93_200:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 103
	je	rax, r0, .LBB93_337
	jmp	.LBB93_201
.LBB93_201:                             //   in Loop: Header=BB93_1 Depth=1
	mov	x11, 0
	mov	x13, mcasm_static_73584816913d3f1377b02c86d0cb3810
	mov	x8, 0
	mov	r0, 102
	jne	rax, r0, .LBB93_452
	jmp	.LBB93_202
.LBB93_202:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, x12
add	r0, -2147483648
	mov	r1, 1
	mov	r2, -2147483639
	jl	r0, r2, .LBB93_204
// %bb.203:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 0
.LBB93_204:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 0
	sub	r0, r1
	mov	r1, x12
add	r1, -9
	call	__bit_and
	mov	x13, 6
	jl	x12, x8, .LBB93_206
	jmp	.LBB93_205
.LBB93_205:                             //   in Loop: Header=BB93_1 Depth=1
add	rax, 9
	mov	x13, rax
.LBB93_206:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, x15
	mov	r1, x14
	mov	r2, x15
	mov	r3, x14
	call	__unorddf2
	jz	rax, .LBB93_210
	jmp	.LBB93_207
.LBB93_207:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 255
	mov	r0, x9
	call	__bit_and
add	rax, -2147483648
	mov	r1, 1
	mov	r0, -2147483557
	jl	rax, r0, .LBB93_209
// %bb.208:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 0
.LBB93_209:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 0
	sub	r0, r1
	mov	r1, [rsp+24]
	call	__bit_and
	mov	x10, rax
	mov	r0, mcasm_static_760ecf6681c729f1ad8f31cd17c23263
	add	x10, r0
	mov	x3, 46
	mov	x5, -2139062144
	jmp	.LBB93_214
.LBB93_210:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r2, -1
	mov	r3, 2146435071
	mov	r0, x15
	mov	r1, x14
	call	__gtdf2
	jl	rax, x0, .LBB93_224
	jmp	.LBB93_211
.LBB93_211:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 255
	mov	r0, x9
	call	__bit_and
add	rax, -2147483648
	mov	r1, 1
	mov	r0, -2147483557
	jl	rax, r0, .LBB93_213
// %bb.212:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 0
.LBB93_213:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 0
	sub	r0, r1
	mov	r1, [rsp+40]
	call	__bit_and
	mov	x10, rax
	mov	r0, mcasm_static_4b3346717c4e5d4dfc64dcf9c1c8076d
	add	x10, r0
	mov	x5, -2139062144
.LBB93_214:                             // %memcpy.exit
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [x10]
	mov	x1, x10
	mov	r1, 255
add	x1, 1
	call	__bit_and
	mov	r0, [rsp+96]
	mov	r1, -256
	mov	x9, rax
	call	__bit_and
	mov	r1, 255
	mov	x11, rax
	mov	r0, x9
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x11
	mov	r1, rax
	call	__bit_or
	mov	r0, [x1]
	mov	[rsp+96], rax
	mov	x1, x10
	mov	r1, 255
add	x1, 2
	call	__bit_and
	mov	x2, rsp
add	x2, 97
	mov	r0, [x2]
	mov	r1, -256
	mov	x11, rax
	call	__bit_and
	mov	r1, 255
	mov	x12, rax
	mov	r0, x11
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x12
	mov	r1, rax
	call	__bit_or
	mov	r0, [x1]
	mov	[x2], rax
	mov	r1, 255
add	x10, 3
	call	__bit_and
	mov	x1, rsp
add	x1, 98
	mov	r0, [x1]
	mov	r1, -256
	mov	x11, rax
	call	__bit_and
	mov	r1, 255
	mov	x12, rax
	mov	r0, x11
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x12
	mov	r1, rax
	call	__bit_or
	mov	r0, [x10]
	mov	r1, 255
	mov	[x1], rax
	call	__bit_and
	mov	x1, rsp
add	x1, 99
	mov	r0, [x1]
	mov	r1, -256
	mov	x10, rax
	call	__bit_and
	mov	r1, 255
	mov	x11, rax
	mov	r0, x10
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x11
	mov	r1, rax
	call	__bit_or
	mov	[x1], rax
	mov	x1, rsp
add	x1, 96
	mov	r0, [rsp+48]
	jz	r0, .LBB93_219
	jmp	.LBB93_215
.LBB93_215:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 255
	mov	x11, rsp
add	x11, 96
	mov	r0, x9
	call	__bit_and
	jz	rax, .LBB93_223
	jmp	.LBB93_216
.LBB93_216:                             // %.preheader1.i.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x11, rsp
add	x11, 96
	mov	x1, [rsp+44]
	jmp	.LBB93_218
.LBB93_217:                             //   in Loop: Header=BB93_218 Depth=2
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
add	x1, 1
	jz	rax, .LBB93_223
	jmp	.LBB93_218
.LBB93_218:                             // %.preheader1.i
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
add	x11, 1
	mov	r1, 3
	mov	r0, x11
	call	__bit_and
	jnz	rax, .LBB93_217
	jmp	.LBB93_219
.LBB93_219:                             // %.loopexit.i.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x2, x1
add	x2, -4
add	x1, -1
.LBB93_220:                             // %.loopexit.i
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
add	x2, 4
	mov	r1, [x2]
	mov	r0, 16843008
	sub	r0, r1
	mov	x11, x1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
add	x1, 4
	je	rax, x5, .LBB93_220
	jmp	.LBB93_221
.LBB93_221:                             // %.preheader.i.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x1, 0
.LBB93_222:                             // %.preheader.i
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, x2
	add	r0, x1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
add	x11, 1
add	x1, 1
	jnz	rax, .LBB93_222
	jmp	.LBB93_223
.LBB93_223:                             // %strlen.exit
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	r0, rsp
add	r0, 96
	sub	x11, r0
	jmp	.LBB93_262
.LBB93_224:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, x15
	mov	r1, x14
	call	__fixdfsi
	mov	x11, rax
	mov	r0, x11
	call	__floatsidf
	mov	r3, t0
	mov	r0, x15
	mov	r1, x14
	mov	r2, rax
	call	__ltdf2
	mov	x1, 0
	mov	x2, 1
	mov	r0, 1
	jl	rax, x1, .LBB93_226
// %bb.225:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 0
.LBB93_226:                             //   in Loop: Header=BB93_1 Depth=1
	mov	[rsp+52], x7
	mov	x3, 0
	mov	x9, 0
	sub	x9, r0
	add	x9, x11
	mov	r0, x9
	call	__floatsidf
	mov	r3, t0
	mov	r0, x15
	mov	r1, x14
	mov	r2, rax
	call	__subdf3
	mov	r2, 0
	mov	r3, 0
	mov	x12, rax
	mov	x14, t0
	mov	r0, x12
	mov	r1, x14
	call	__ltdf2
	jl	rax, x1, .LBB93_228
// %bb.227:                             //   in Loop: Header=BB93_1 Depth=1
	mov	x2, 0
.LBB93_228:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 0
	sub	r1, x14
	mov	x15, 0
	sub	x15, x2
	mov	r0, x15
	call	__bit_and
	mov	x11, rax
	mov	r1, 0
	sub	r1, x12
	add	x11, x14
	mov	r0, x15
	call	__bit_and
	add	rax, x12
	mov	x7, x13
add	x7, 1
	mov	x2, 9
.LBB93_229:                             //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r2, 0
	mov	r3, 1076101120
	mov	r0, rax
	mov	r1, x11
	call	__muldf3
	mov	x11, rax
	mov	x12, t0
	mov	r0, x11
	mov	r1, x12
	call	__fixdfsi
	mov	x8, 1
	mov	r1, 1
	jl	rax, x2, .LBB93_231
// %bb.230:                             //   in Loop: Header=BB93_229 Depth=2
	mov	r1, 0
.LBB93_231:                             //   in Loop: Header=BB93_229 Depth=2
	mov	r0, 0
	sub	r0, r1
add	rax, -9
	mov	r1, rax
	call	__bit_and
	mov	x14, rax
	mov	x5, rsp
add	x5, 352
	add	x5, x1
	mov	x15, [x5]
add	rax, 57
	mov	r1, 255
add	x14, 9
	mov	r0, rax
	call	__bit_and
	mov	r1, -256
	mov	x2, rax
	mov	r0, x15
	call	__bit_and
	mov	r1, 255
	mov	x15, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x15
	mov	r1, rax
	call	__bit_or
	mov	[x5], rax
	mov	r0, x14
	call	__floatsidf
	mov	r3, t0
	mov	r0, x11
	mov	r1, x12
	mov	r2, rax
	call	__subdf3
	mov	r2, 0
	mov	r3, 0
	mov	x12, rax
	mov	x14, t0
	mov	r0, x12
	mov	r1, x14
	call	__ltdf2
	jl	rax, x3, .LBB93_233
// %bb.232:                             //   in Loop: Header=BB93_229 Depth=2
	mov	x8, 0
.LBB93_233:                             //   in Loop: Header=BB93_229 Depth=2
	mov	r1, 0
	sub	r1, x14
	mov	x2, 0
	sub	x2, x8
	mov	r0, x2
	call	__bit_and
	mov	x11, rax
	mov	r1, 0
	sub	r1, x12
	add	x11, x14
	mov	r0, x2
	call	__bit_and
add	x1, 1
	add	rax, x12
	mov	x2, 9
	jne	x7, x1, .LBB93_229
	jmp	.LBB93_234
.LBB93_234:                             //   in Loop: Header=BB93_1 Depth=1
	mov	x8, 57
	jz	x13, .LBB93_241
	jmp	.LBB93_235
.LBB93_235:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, rsp
add	r0, 352
	add	r0, x13
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r1, 24
	mov	r0, rax
	call	__bit_shl
	mov	r1, 24
	mov	r0, rax
	call	__bit_sar
	mov	x5, [rsp+28]
	mov	x7, 0
	mov	x3, 46
	mov	r0, 53
	jl	rax, r0, .LBB93_244
	jmp	.LBB93_236
.LBB93_236:                             // %.preheader128.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x2, x13
.LBB93_237:                             // %.preheader128
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	x1, x5
	add	x1, x2
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
	jne	rax, x8, .LBB93_239
	jmp	.LBB93_238
.LBB93_238:                             //   in Loop: Header=BB93_237 Depth=2
	mov	r0, [x1]
	mov	r1, -256
add	x2, -1
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	r0, x2
add	r0, 1
	mov	[x1], rax
	jg	r0, x0, .LBB93_237
	jmp	.LBB93_240
.LBB93_239:                             //   in Loop: Header=BB93_1 Depth=1
	mov	x2, [x1]
add	rax, 1
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, -256
	mov	x11, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x11
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	[x1], rax
	jmp	.LBB93_244
.LBB93_240:                             //   in Loop: Header=BB93_1 Depth=1
add	x9, 1
	jmp	.LBB93_244
.LBB93_241:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [rsp+352]
	mov	r1, 255
	call	__bit_and
	mov	r1, 24
	mov	r0, rax
	call	__bit_shl
	mov	r1, 24
	mov	r0, rax
	call	__bit_sar
	mov	r0, 1
	mov	x7, 0
	mov	x3, 46
	mov	r1, 52
	jg	rax, r1, .LBB93_243
// %bb.242:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 0
.LBB93_243:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 1
	call	__bit_and
	add	x9, rax
.LBB93_244:                             //   in Loop: Header=BB93_1 Depth=1
	jz	x9, .LBB93_246
	jmp	.LBB93_245
.LBB93_245:                             //   in Loop: Header=BB93_1 Depth=1
	mov	x11, 0
	mov	x12, 0
	mov	x8, mcasm_static_a0798eab031e00674a0fec7ab4aa2dd0
	jmp	.LBB93_247
.LBB93_246:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [rsp+416]
	mov	r1, -256
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	[rsp+416], rax
	mov	x11, 1
	jmp	.LBB93_254
.LBB93_247:                             //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r2, 10
	mov	r3, 0
	mov	r0, x9
	mov	r1, x12
	call	__udivdi3
	mov	r2, -10
	mov	r3, 0
	mov	x14, rax
	mov	x15, t0
	mov	r0, x14
	mov	r1, x15
	call	__muldi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x9
	mov	r3, x12
	call	__adddi3
	add	rax, x8
	mov	r0, [rax]
	mov	r1, 255
	call	__bit_and
	mov	x5, rsp
add	x5, 416
	add	x5, x11
	mov	r0, [x5]
	mov	r1, -256
	mov	x2, rax
	call	__bit_and
	mov	r1, 255
	mov	x1, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	[x5], rax
	mov	r1, 1
	mov	x1, 1
	jg	x12, x7, .LBB93_249
// %bb.248:                             //   in Loop: Header=BB93_247 Depth=2
	mov	x1, 0
.LBB93_249:                             //   in Loop: Header=BB93_247 Depth=2
add	x9, -2147483648
	mov	r0, -2147483639
	jg	x9, r0, .LBB93_251
// %bb.250:                             //   in Loop: Header=BB93_247 Depth=2
	mov	r1, 0
.LBB93_251:                             //   in Loop: Header=BB93_247 Depth=2
	mov	r2, 1
	je	x12, x7, .LBB93_253
// %bb.252:                             //   in Loop: Header=BB93_247 Depth=2
	mov	r2, 0
.LBB93_253:                             //   in Loop: Header=BB93_247 Depth=2
	sub	r1, x1
	mov	r0, 0
	sub	r0, r2
add	x11, 1
	call	__bit_and
	add	rax, x1
	mov	x9, x14
	mov	x12, x15
	jnz	rax, .LBB93_247
	jmp	.LBB93_254
.LBB93_254:                             // %.loopexit127
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x7, 0
	mov	x8, [rsp+36]
.LBB93_255:                             //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, x8
	add	r0, x11
	mov	r0, [r0]
	mov	r1, 255
	mov	x1, x7
	call	__bit_and
	mov	x5, rsp
add	x5, 96
	add	x5, x1
	mov	r0, [x5]
	mov	x1, rax
	mov	r1, -256
add	x7, 1
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	[x5], rax
add	x8, -1
	jne	x11, x7, .LBB93_255
	jmp	.LBB93_256
.LBB93_256:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, x13
	mov	r1, x10
	call	__bit_or
	jz	rax, .LBB93_258
	jmp	.LBB93_257
.LBB93_257:                             //   in Loop: Header=BB93_1 Depth=1
	mov	x1, rsp
add	x1, 96
	add	x1, x11
	mov	r0, [x1]
	mov	r1, -256
add	x7, 1
	call	__bit_and
	mov	r1, 46
	mov	r0, rax
	call	__bit_or
	mov	[x1], rax
	mov	x11, x7
.LBB93_258:                             //   in Loop: Header=BB93_1 Depth=1
	mov	x8, 0
	jz	x13, .LBB93_261
	jmp	.LBB93_259
.LBB93_259:                             // %.preheader125.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x7, rsp
add	x7, 352
	mov	x1, x11
.LBB93_260:                             // %.preheader125
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, [x7]
	mov	r1, 255
	call	__bit_and
	mov	x5, rsp
add	x5, 96
	add	x5, x1
	mov	r0, [x5]
	mov	x1, rax
	mov	r1, -256
add	x11, 1
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	[x5], rax
add	x13, -1
add	x7, 1
	mov	x1, x11
	jnz	x13, .LBB93_260
	jmp	.LBB93_261
.LBB93_261:                             // %.loopexit126
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x1, rsp
add	x1, 96
	add	x1, x11
	mov	r0, [x1]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	[x1], rax
	mov	x7, [rsp+52]
.LBB93_262:                             //   in Loop: Header=BB93_1 Depth=1
	mov	x13, rsp
add	x13, 96
	jmp	.LBB93_452
.LBB93_263:                             //   in Loop: Header=BB93_1 Depth=1
	mov	x8, 6
	mov	r0, 0
	jl	x12, r0, .LBB93_265
	jmp	.LBB93_264
.LBB93_264:                             //   in Loop: Header=BB93_1 Depth=1
	mov	x8, x12
.LBB93_265:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, x15
	mov	r1, x14
	mov	r2, x15
	mov	r3, x14
	call	__unorddf2
	mov	[rsp+52], x7
	jz	rax, .LBB93_269
	jmp	.LBB93_266
.LBB93_266:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 255
	mov	r0, x9
	call	__bit_and
add	rax, -2147483648
	mov	r1, 1
	mov	r0, -2147483557
	jl	rax, r0, .LBB93_268
// %bb.267:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 0
.LBB93_268:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 0
	sub	r0, r1
	mov	r1, [rsp+24]
	call	__bit_and
	mov	x10, rax
	mov	r0, mcasm_static_760ecf6681c729f1ad8f31cd17c23263
	add	x10, r0
	mov	x8, 0
	mov	x3, 46
	mov	x12, -2139062144
	jmp	.LBB93_273
.LBB93_269:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r2, -1
	mov	r3, 2146435071
	mov	r0, x15
	mov	r1, x14
	call	__gtdf2
	jl	rax, x0, .LBB93_283
	jmp	.LBB93_270
.LBB93_270:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 255
	mov	r0, x9
	call	__bit_and
add	rax, -2147483648
	mov	r1, 1
	mov	r0, -2147483557
	jl	rax, r0, .LBB93_272
// %bb.271:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 0
.LBB93_272:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 0
	sub	r0, r1
	mov	r1, [rsp+40]
	call	__bit_and
	mov	x10, rax
	mov	r0, mcasm_static_4b3346717c4e5d4dfc64dcf9c1c8076d
	add	x10, r0
	mov	x8, 0
	mov	x12, -2139062144
.LBB93_273:                             // %memcpy.exit57
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [x10]
	mov	x2, x10
	mov	r1, 255
add	x2, 1
	call	__bit_and
	mov	r0, [rsp+96]
	mov	r1, -256
	mov	x9, rax
	call	__bit_and
	mov	r1, 255
	mov	x1, rax
	mov	r0, x9
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	r0, [x2]
	mov	[rsp+96], rax
	mov	x5, x10
	mov	r1, 255
add	x5, 2
	call	__bit_and
	mov	x7, rsp
add	x7, 97
	mov	r0, [x7]
	mov	r1, -256
	mov	x1, rax
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r0, [x5]
	mov	[x7], rax
	mov	r1, 255
add	x10, 3
	call	__bit_and
	mov	x5, rsp
add	x5, 98
	mov	r0, [x5]
	mov	r1, -256
	mov	x1, rax
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r0, [x10]
	mov	r1, 255
	mov	[x5], rax
	call	__bit_and
	mov	x5, rsp
add	x5, 99
	mov	r0, [x5]
	mov	r1, -256
	mov	x1, rax
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	[x5], rax
	mov	x1, rsp
add	x1, 96
	mov	r0, [rsp+48]
	jz	r0, .LBB93_278
	jmp	.LBB93_274
.LBB93_274:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 255
	mov	x11, rsp
add	x11, 96
	mov	r0, x9
	call	__bit_and
	jz	rax, .LBB93_282
	jmp	.LBB93_275
.LBB93_275:                             // %.preheader1.i58.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x11, rsp
add	x11, 96
	mov	x1, [rsp+44]
	jmp	.LBB93_277
.LBB93_276:                             //   in Loop: Header=BB93_277 Depth=2
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
add	x1, 1
	jz	rax, .LBB93_282
	jmp	.LBB93_277
.LBB93_277:                             // %.preheader1.i58
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
add	x11, 1
	mov	r1, 3
	mov	r0, x11
	call	__bit_and
	jnz	rax, .LBB93_276
	jmp	.LBB93_278
.LBB93_278:                             // %.loopexit.i59.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x2, x1
add	x2, -4
add	x1, -1
.LBB93_279:                             // %.loopexit.i59
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
add	x2, 4
	mov	r1, [x2]
	mov	r0, 16843008
	sub	r0, r1
	mov	x11, x1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
add	x1, 4
	je	rax, x12, .LBB93_279
	jmp	.LBB93_280
.LBB93_280:                             // %.preheader.i60.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x1, 0
.LBB93_281:                             // %.preheader.i60
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, x2
	add	r0, x1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
add	x11, 1
add	x1, 1
	jnz	rax, .LBB93_281
	jmp	.LBB93_282
.LBB93_282:                             // %strlen.exit61
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	r0, rsp
add	r0, 96
	sub	x11, r0
	jmp	.LBB93_336
.LBB93_283:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r2, 0
	mov	r3, 0
	mov	r0, x15
	mov	r1, x14
	call	__eqdf2
	jz	rax, .LBB93_286
	jmp	.LBB93_284
.LBB93_284:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r2, 0
	mov	r3, 1076101120
	mov	x12, 0
	mov	r0, x15
	mov	r1, x14
	call	__gedf2
	mov	x1, 0
	jl	rax, x12, .LBB93_287
	jmp	.LBB93_285
.LBB93_285:                             // %.preheader137.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	jmp	.LBB93_289
.LBB93_286:                             //   in Loop: Header=BB93_1 Depth=1
	mov	x1, rsp
add	x1, 417
	mov	r0, [x1]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	x12, 0
	mov	r0, rax
	call	__bit_or
	mov	[x1], rax
	mov	x14, 48
	jmp	.LBB93_311
.LBB93_287:                             // %.loopexit138
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	r2, 0
	mov	r3, 1072693248
	mov	r0, x15
	mov	r1, x14
	call	__ltdf2
	mov	r0, -1
	jg	rax, r0, .LBB93_290
	jmp	.LBB93_288
.LBB93_288:                             // %.preheader135.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	jmp	.LBB93_291
.LBB93_289:                             // %.preheader137
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r2, -1717986918
	mov	r3, 1069128089
	mov	r0, x15
	mov	r1, x14
	call	__muldf3
	mov	x15, rax
	mov	x14, t0
	mov	r2, 0
	mov	r3, 1076101120
add	x12, 1
	mov	r0, x15
	mov	r1, x14
	call	__ltdf2
	jl	rax, x1, .LBB93_287
	jmp	.LBB93_289
.LBB93_290:                             // %.loopexit136
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	r0, x8
add	r0, 1
	mov	[rsp+20], r0
	mov	x13, x8
add	x13, 2
	mov	x7, 0
	jmp	.LBB93_292
.LBB93_291:                             // %.preheader135
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r2, 0
	mov	r3, 1076101120
	mov	r0, x15
	mov	r1, x14
	call	__muldf3
	mov	x15, rax
	mov	x14, t0
	mov	r2, 0
	mov	r3, 1072693248
add	x12, -1
	mov	r0, x15
	mov	r1, x14
	call	__ltdf2
	jl	rax, x1, .LBB93_291
	jmp	.LBB93_290
.LBB93_292:                             //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, x15
	mov	r1, x14
	call	__fixdfsi
	mov	x1, 1
	mov	r1, 1
	mov	r0, 0
	jg	rax, r0, .LBB93_294
// %bb.293:                             //   in Loop: Header=BB93_292 Depth=2
	mov	r1, 0
.LBB93_294:                             //   in Loop: Header=BB93_292 Depth=2
	sub	r0, r1
	mov	r1, rax
	call	__bit_and
	mov	r0, 9
	jl	rax, r0, .LBB93_296
// %bb.295:                             //   in Loop: Header=BB93_292 Depth=2
	mov	x1, 0
.LBB93_296:                             //   in Loop: Header=BB93_292 Depth=2
	mov	r0, 0
	sub	r0, x1
add	rax, -9
	mov	r1, rax
	call	__bit_and
	mov	x1, rax
add	x1, 9
	mov	r1, 48
	mov	r0, x1
	call	__bit_or
	mov	x5, rsp
add	x5, 416
	add	x5, x7
	mov	r0, [x5]
	mov	r1, -256
	mov	x2, rax
	call	__bit_and
	mov	r1, 255
	mov	x11, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x11
	mov	r1, rax
	call	__bit_or
	mov	[x5], rax
	mov	r0, x1
	call	__floatunsidf
	mov	r3, t0
	mov	r0, x15
	mov	r1, x14
	mov	r2, rax
	call	__subdf3
	mov	r2, 0
	mov	r3, 1076101120
	mov	r1, t0
	mov	r0, rax
	call	__muldf3
	mov	r2, 0
	mov	r3, 0
	mov	x11, rax
	mov	x15, t0
	mov	r0, x11
	mov	r1, x15
	call	__ltdf2
	mov	r0, 1
	mov	r1, 0
	jl	rax, r1, .LBB93_298
// %bb.297:                             //   in Loop: Header=BB93_292 Depth=2
	mov	r0, 0
.LBB93_298:                             //   in Loop: Header=BB93_292 Depth=2
	sub	r1, x15
	mov	x1, 0
	sub	x1, r0
	mov	r0, x1
	call	__bit_and
	mov	x14, rax
	mov	r1, 0
	sub	r1, x11
	add	x14, x15
	mov	r0, x1
	call	__bit_and
	mov	x15, rax
add	x7, 1
	add	x15, x11
	jne	x13, x7, .LBB93_292
	jmp	.LBB93_299
.LBB93_299:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, rsp
add	r0, 416
	mov	x13, [rsp+20]
	add	r0, x13
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r1, 24
	mov	r0, rax
	call	__bit_shl
	mov	r1, 24
	mov	r0, rax
	call	__bit_sar
	mov	r0, 53
	jg	rax, r0, .LBB93_303
	jmp	.LBB93_300
.LBB93_300:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r0, 53
	jne	rax, r0, .LBB93_310
	jmp	.LBB93_301
.LBB93_301:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r2, -400107883
	mov	r3, 1041313291
	mov	r0, x15
	mov	r1, x14
	call	__gtdf2
	mov	r0, 0
	jg	rax, r0, .LBB93_303
	jmp	.LBB93_302
.LBB93_302:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, rsp
add	r0, 416
	add	r0, x8
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB93_310
	jmp	.LBB93_303
.LBB93_303:                             // %.preheader1036
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x1, x8
	mov	x5, 57
.LBB93_304:                             //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, rsp
add	r0, 416
	add	r0, x1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	jne	rax, x5, .LBB93_307
	jmp	.LBB93_305
.LBB93_305:                             //   in Loop: Header=BB93_304 Depth=2
	mov	x2, rsp
add	x2, 416
	add	x2, x1
	mov	r0, [x2]
	mov	r1, -256
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	r0, x1
add	x1, -1
add	r0, 1
	mov	[x2], rax
	jg	r0, x0, .LBB93_304
	jmp	.LBB93_306
.LBB93_306:                             // %.preheader134.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x11, x8
	mov	x7, x11
	jmp	.LBB93_308
.LBB93_307:                             //   in Loop: Header=BB93_1 Depth=1
	mov	x5, rsp
add	x5, 416
	add	x5, x1
	mov	x1, [x5]
add	rax, 1
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, -256
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 255
	mov	x1, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	[x5], rax
	jmp	.LBB93_310
.LBB93_308:                             // %.preheader134
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	x5, rsp
add	x5, 416
	add	x5, x11
	mov	r0, [x5]
	mov	r1, 255
add	x5, 1
	call	__bit_and
	mov	r0, [x5]
	mov	r1, -256
	mov	x1, rax
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
add	x7, -1
	mov	r0, x11
add	r0, 1
	mov	[x5], rax
	mov	x11, x7
	jg	r0, x0, .LBB93_308
	jmp	.LBB93_309
.LBB93_309:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [rsp+416]
	mov	r1, -256
	call	__bit_and
	mov	r1, 49
	mov	r0, rax
	call	__bit_or
	mov	[rsp+416], rax
add	x12, 1
.LBB93_310:                             //   in Loop: Header=BB93_1 Depth=1
	mov	x1, rsp
add	x1, 416
	add	x1, x13
	mov	r0, [x1]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	[x1], rax
	mov	r0, [rsp+416]
	mov	r1, 255
	call	__bit_and
	mov	x14, rax
.LBB93_311:                             //   in Loop: Header=BB93_1 Depth=1
	mov	x1, [rsp+96]
	mov	r1, 255
	mov	r0, x14
	call	__bit_and
	mov	r1, -256
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 255
	mov	x1, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	[rsp+96], rax
	mov	r0, x8
	mov	r1, x10
	call	__bit_or
	mov	x7, 1
	mov	x11, 1
	mov	x10, [rsp+64]
	mov	x13, [rsp+60]
	mov	x15, 9
	jz	rax, .LBB93_316
	jmp	.LBB93_312
.LBB93_312:                             //   in Loop: Header=BB93_1 Depth=1
	mov	x1, rsp
add	x1, 97
	mov	r0, [x1]
	mov	r1, -256
	call	__bit_and
	mov	r1, 46
	mov	r0, rax
	call	__bit_or
	mov	[x1], rax
	mov	x11, 2
	jz	x8, .LBB93_316
	jmp	.LBB93_313
.LBB93_313:                             // %.preheader132.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x11, 0
.LBB93_314:                             // %.preheader132
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, x13
	add	r0, x11
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	x5, x10
	add	x5, x11
	mov	r0, [x5]
	mov	r1, -256
	mov	x1, rax
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
add	x11, 1
	mov	[x5], rax
	jne	x8, x11, .LBB93_314
	jmp	.LBB93_315
.LBB93_315:                             // %.loopexit133.loopexit
                                        //   in Loop: Header=BB93_1 Depth=1
add	x11, 2
.LBB93_316:                             // %.loopexit133
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 255
	mov	r0, x9
	call	__bit_and
add	rax, -2147483648
	mov	r0, -2147483557
	jl	rax, r0, .LBB93_318
// %bb.317:                             // %.loopexit133
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x7, 0
.LBB93_318:                             // %.loopexit133
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x8, rsp
add	x8, 96
	add	x8, x11
	mov	x1, [x8]
	mov	r0, 0
	sub	r0, x7
	mov	r1, -32
	call	__bit_and
	mov	x2, rax
	mov	r1, -256
add	x2, 101
	mov	r0, x1
	call	__bit_and
	mov	r1, 255
	mov	x1, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	[x8], rax
	mov	r1, 1
	mov	r0, 0
	jl	x12, r0, .LBB93_320
// %bb.319:                             // %.loopexit133
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 0
.LBB93_320:                             // %.loopexit133
                                        //   in Loop: Header=BB93_1 Depth=1
	sub	r0, r1
	mov	r1, 2
	call	__bit_and
	mov	r0, -1
	jg	x12, r0, .LBB93_322
	jmp	.LBB93_321
.LBB93_321:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 0
	sub	r0, x12
	mov	x12, r0
.LBB93_322:                             //   in Loop: Header=BB93_1 Depth=1
	mov	x5, x8
add	x5, 1
	mov	x1, [x5]
add	rax, 43
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, -256
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 255
	mov	x1, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	[x5], rax
	mov	x7, x11
add	x7, 2
	mov	r0, 100
	jl	x12, r0, .LBB93_328
	jmp	.LBB93_323
.LBB93_323:                             // %.preheader131.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x13, [rsp+44]
	add	x13, x11
.LBB93_324:                             // %.preheader131
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 10
	mov	x1, x12
	mov	x8, x13
	mov	r0, x1
	call	__udivsi3
	mov	x12, rax
	mov	r0, x12
	mul	r0, 246
	add	r0, x1
	mov	r1, 48
	call	__bit_or
	mov	x5, rsp
add	x5, 96
	add	x5, x11
add	x5, 2
	mov	x2, [x5]
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, -256
	mov	x10, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x10
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	[x5], rax
add	x11, 1
add	x13, 1
	jg	x1, x15, .LBB93_324
	jmp	.LBB93_325
.LBB93_325:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, x11
add	r0, 1
add	x11, 2
	mov	x15, -2147483623
	jge	x7, r0, .LBB93_330
	jmp	.LBB93_326
.LBB93_326:                             //   in Loop: Header=BB93_1 Depth=1
	mov	x12, rsp
add	x12, 96
	add	x12, x7
	mov	x7, x12
	mov	x13, x8
.LBB93_327:                             //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	x1, [x12]
	mov	x14, x8
	mov	r1, 255
add	x14, 1
	mov	r0, x1
	call	__bit_and
	mov	r0, [x14]
	mov	r1, 255
	mov	x2, rax
	call	__bit_and
	mov	x10, rax
	mov	r1, -256
add	x7, 1
	mov	r0, x1
	call	__bit_and
	mov	r1, 255
	mov	x1, rax
	mov	r0, x10
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	[x12], rax
	mov	r0, [x14]
	mov	r1, -256
	call	__bit_and
	mov	r1, 255
	mov	x1, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
add	x13, -1
	mov	r0, x8
add	r0, -2147483648
	mov	r1, x12
add	r1, -2147483647
	mov	[x14], rax
	mov	x8, x13
	mov	x12, x7
	jl	r1, r0, .LBB93_327
	jmp	.LBB93_329
.LBB93_328:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, x12
	mul	r0, 205
	mov	r1, 11
	call	__bit_shr
	mov	r1, 31
	mov	r0, rax
	call	__bit_and
	mov	r1, 48
	mov	x1, rax
	mov	r0, x1
	call	__bit_or
	mov	x5, rsp
add	x5, 96
	add	x5, x7
	mov	r0, [x5]
	mov	r1, -256
	mov	x2, rax
	call	__bit_and
	mov	r1, 255
	mov	x10, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x10
	mov	r1, rax
	call	__bit_or
	mov	[x5], rax
	mul	x1, -10
	add	x1, x12
add	x8, 3
	mov	x2, [x8]
add	x1, 48
	mov	r1, 255
add	x11, 4
	mov	r0, x1
	call	__bit_and
	mov	r1, -256
	mov	x1, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	[x8], rax
	mov	x15, -2147483623
	jmp	.LBB93_330
.LBB93_329:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [rsp+96]
	mov	r1, 255
	call	__bit_and
	mov	x14, rax
.LBB93_330:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 255
	mov	r0, x9
	call	__bit_and
	mov	x2, rsp
add	x2, 96
	add	x2, x11
	mov	r0, [x2]
	mov	r1, -256
	mov	x1, rax
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
add	x1, -2147483648
	mov	[x2], rax
	mov	x8, 0
	mov	r0, -2147483558
	jg	x1, r0, .LBB93_336
	jmp	.LBB93_331
.LBB93_331:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 255
	mov	r0, x14
	call	__bit_and
	jz	rax, .LBB93_336
	jmp	.LBB93_332
.LBB93_332:                             // %.preheader129.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x7, [rsp+44]
.LBB93_333:                             // %.preheader129
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, x14
add	r0, -97
	mov	r1, 255
	call	__bit_and
add	rax, -2147483648
	jg	rax, x15, .LBB93_335
	jmp	.LBB93_334
.LBB93_334:                             //   in Loop: Header=BB93_333 Depth=2
	mov	x5, x7
add	x5, -1
	mov	x1, [x5]
add	x14, -32
	mov	r1, 255
	mov	r0, x14
	call	__bit_and
	mov	r1, -256
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 255
	mov	x1, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	[x5], rax
.LBB93_335:                             //   in Loop: Header=BB93_333 Depth=2
	mov	r0, [x7]
	mov	r1, 255
	call	__bit_and
	mov	x14, rax
add	x7, 1
	jnz	x14, .LBB93_333
	jmp	.LBB93_336
.LBB93_336:                             // %.loopexit130
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x13, rsp
add	x13, 96
	mov	x7, [rsp+52]
	jmp	.LBB93_452
.LBB93_337:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, x12
add	r0, -2147483648
	mov	r1, 1
	mov	x8, 0
	mov	r2, -2147483647
	jg	r0, r2, .LBB93_339
// %bb.338:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 0
.LBB93_339:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 0
	sub	r0, r1
	mov	r1, x12
add	r1, -1
	call	__bit_and
	mov	x11, 6
	jl	x12, x8, .LBB93_341
	jmp	.LBB93_340
.LBB93_340:                             //   in Loop: Header=BB93_1 Depth=1
add	rax, 1
	mov	x11, rax
.LBB93_341:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, x15
	mov	r1, x14
	mov	r2, x15
	mov	r3, x14
	call	__unorddf2
	jz	rax, .LBB93_345
	jmp	.LBB93_342
.LBB93_342:                             //   in Loop: Header=BB93_1 Depth=1
	mov	x11, x7
	mov	r1, 255
	mov	r0, x9
	call	__bit_and
add	rax, -2147483648
	mov	r1, 1
	mov	r0, -2147483557
	jl	rax, r0, .LBB93_344
// %bb.343:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 0
.LBB93_344:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 0
	sub	r0, r1
	mov	r1, [rsp+24]
	call	__bit_and
	mov	x10, rax
	mov	r0, mcasm_static_760ecf6681c729f1ad8f31cd17c23263
	add	x10, r0
	mov	x3, 46
	mov	x12, -2139062144
	jmp	.LBB93_349
.LBB93_345:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r2, -1
	mov	r3, 2146435071
	mov	r0, x15
	mov	r1, x14
	call	__gtdf2
	jl	rax, x0, .LBB93_359
	jmp	.LBB93_346
.LBB93_346:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 255
	mov	r0, x9
	call	__bit_and
add	rax, -2147483648
	mov	r1, 1
	mov	r0, -2147483557
	jl	rax, r0, .LBB93_348
// %bb.347:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 0
.LBB93_348:                             //   in Loop: Header=BB93_1 Depth=1
	mov	x11, x7
	mov	r0, 0
	sub	r0, r1
	mov	r1, [rsp+40]
	call	__bit_and
	mov	x10, rax
	mov	r0, mcasm_static_4b3346717c4e5d4dfc64dcf9c1c8076d
	add	x10, r0
	mov	x12, -2139062144
.LBB93_349:                             // %memcpy.exit63
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [x10]
	mov	x2, x10
	mov	r1, 255
add	x2, 1
	call	__bit_and
	mov	r0, [rsp+96]
	mov	r1, -256
	mov	x9, rax
	call	__bit_and
	mov	r1, 255
	mov	x1, rax
	mov	r0, x9
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	r0, [x2]
	mov	[rsp+96], rax
	mov	x5, x10
	mov	r1, 255
add	x5, 2
	call	__bit_and
	mov	x7, rsp
add	x7, 97
	mov	r0, [x7]
	mov	r1, -256
	mov	x1, rax
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r0, [x5]
	mov	[x7], rax
	mov	r1, 255
add	x10, 3
	call	__bit_and
	mov	x5, rsp
add	x5, 98
	mov	r0, [x5]
	mov	r1, -256
	mov	x1, rax
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r0, [x10]
	mov	r1, 255
	mov	[x5], rax
	call	__bit_and
	mov	x5, rsp
add	x5, 99
	mov	r0, [x5]
	mov	r1, -256
	mov	x1, rax
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	[x5], rax
	mov	x1, rsp
add	x1, 96
	mov	r0, [rsp+48]
	mov	x7, x11
	jz	r0, .LBB93_354
	jmp	.LBB93_350
.LBB93_350:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 255
	mov	x11, rsp
add	x11, 96
	mov	r0, x9
	call	__bit_and
	jz	rax, .LBB93_358
	jmp	.LBB93_351
.LBB93_351:                             // %.preheader1.i64.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x11, rsp
add	x11, 96
	mov	x1, [rsp+44]
	jmp	.LBB93_353
.LBB93_352:                             //   in Loop: Header=BB93_353 Depth=2
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
add	x1, 1
	jz	rax, .LBB93_358
	jmp	.LBB93_353
.LBB93_353:                             // %.preheader1.i64
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
add	x11, 1
	mov	r1, 3
	mov	r0, x11
	call	__bit_and
	jnz	rax, .LBB93_352
	jmp	.LBB93_354
.LBB93_354:                             // %.loopexit.i65.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x2, x1
add	x2, -4
add	x1, -1
.LBB93_355:                             // %.loopexit.i65
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
add	x2, 4
	mov	r1, [x2]
	mov	r0, 16843008
	sub	r0, r1
	mov	x11, x1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
add	x1, 4
	je	rax, x12, .LBB93_355
	jmp	.LBB93_356
.LBB93_356:                             // %.preheader.i66.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x1, 0
.LBB93_357:                             // %.preheader.i66
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, x2
	add	r0, x1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
add	x11, 1
add	x1, 1
	jnz	rax, .LBB93_357
	jmp	.LBB93_358
.LBB93_358:                             // %strlen.exit67
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x13, rsp
add	x13, 96
	sub	x11, x13
	jmp	.LBB93_452
.LBB93_359:                             //   in Loop: Header=BB93_1 Depth=1
	mov	[rsp+52], x7
	mov	r3, rsp
add	r3, 96
	mov	r0, x15
	mov	r1, x14
	mov	r2, x11
	call	gcvt_fast
	mov	x2, 101
	mov	x14, -2139062144
	mov	x15, -2147483623
	jz	x10, .LBB93_436
	jmp	.LBB93_360
.LBB93_360:                             //   in Loop: Header=BB93_1 Depth=1
	mov	x10, rsp
add	x10, 96
	mov	r0, [rsp+48]
	jz	r0, .LBB93_362
	jmp	.LBB93_361
.LBB93_361:                             // %.preheader152.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x10, rsp
add	x10, 96
	mov	x1, [rsp+32]
	jmp	.LBB93_364
.LBB93_362:                             // %.loopexit9.i
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x11, [x10]
	mov	r0, 16843008
	sub	r0, x11
	mov	r1, x11
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x14, .LBB93_369
	jmp	.LBB93_363
.LBB93_363:                             // %.preheader5.i.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	jmp	.LBB93_367
.LBB93_364:                             // %.preheader152
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, [x10]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB93_372
	jmp	.LBB93_365
.LBB93_365:                             // %.preheader152
                                        //   in Loop: Header=BB93_364 Depth=2
	je	rax, x2, .LBB93_397
	jmp	.LBB93_366
.LBB93_366:                             //   in Loop: Header=BB93_364 Depth=2
add	x1, -1
add	x10, 1
	jz	x1, .LBB93_362
	jmp	.LBB93_364
.LBB93_367:                             // %.preheader5.i
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 1701143909
	mov	r0, x11
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, x11
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x14, .LBB93_369
	jmp	.LBB93_368
.LBB93_368:                             //   in Loop: Header=BB93_367 Depth=2
add	x10, 4
	mov	x11, [x10]
	mov	r0, 16843008
	sub	r0, x11
	mov	r1, x11
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	je	rax, x14, .LBB93_367
	jmp	.LBB93_369
.LBB93_369:                             // %.loopexit6.i.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
add	x10, -1
.LBB93_370:                             // %.loopexit6.i
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
add	x10, 1
	mov	r0, [x10]
	mov	r1, 255
	call	__bit_and
	je	rax, x2, .LBB93_396
	jmp	.LBB93_371
.LBB93_371:                             // %.loopexit6.i
                                        //   in Loop: Header=BB93_370 Depth=2
	jnz	rax, .LBB93_370
	jmp	.LBB93_372
.LBB93_372:                             // %.loopexit150
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x10, rsp
add	x10, 96
	mov	r0, [rsp+48]
	mov	x2, 69
	jz	r0, .LBB93_374
	jmp	.LBB93_373
.LBB93_373:                             // %.preheader146.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x10, rsp
add	x10, 96
	mov	x1, [rsp+32]
	jmp	.LBB93_376
.LBB93_374:                             // %.loopexit9.i69
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x11, [x10]
	mov	r0, 16843008
	sub	r0, x11
	mov	r1, x11
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x14, .LBB93_381
	jmp	.LBB93_375
.LBB93_375:                             // %.preheader5.i72.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	jmp	.LBB93_379
.LBB93_376:                             // %.preheader146
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, [x10]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB93_384
	jmp	.LBB93_377
.LBB93_377:                             // %.preheader146
                                        //   in Loop: Header=BB93_376 Depth=2
	je	rax, x2, .LBB93_395
	jmp	.LBB93_378
.LBB93_378:                             //   in Loop: Header=BB93_376 Depth=2
add	x1, -1
add	x10, 1
	jz	x1, .LBB93_374
	jmp	.LBB93_376
.LBB93_379:                             // %.preheader5.i72
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 1162167621
	mov	r0, x11
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, x11
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x14, .LBB93_381
	jmp	.LBB93_380
.LBB93_380:                             //   in Loop: Header=BB93_379 Depth=2
add	x10, 4
	mov	x11, [x10]
	mov	r0, 16843008
	sub	r0, x11
	mov	r1, x11
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	je	rax, x14, .LBB93_379
	jmp	.LBB93_381
.LBB93_381:                             // %.loopexit6.i70.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
add	x10, -1
.LBB93_382:                             // %.loopexit6.i70
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
add	x10, 1
	mov	r0, [x10]
	mov	r1, 255
	call	__bit_and
	je	rax, x2, .LBB93_394
	jmp	.LBB93_383
.LBB93_383:                             // %.loopexit6.i70
                                        //   in Loop: Header=BB93_382 Depth=2
	jnz	rax, .LBB93_382
	jmp	.LBB93_384
.LBB93_384:                             // %.loopexit144
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x1, rsp
add	x1, 96
	mov	r0, [rsp+48]
	jz	r0, .LBB93_389
	jmp	.LBB93_385
.LBB93_385:                             //   in Loop: Header=BB93_1 Depth=1
	mov	x10, rsp
add	x10, 96
	mov	r0, [rsp+96]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB93_393
	jmp	.LBB93_386
.LBB93_386:                             // %.preheader1.i74.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x10, rsp
add	x10, 96
	mov	x1, [rsp+44]
	jmp	.LBB93_388
.LBB93_387:                             //   in Loop: Header=BB93_388 Depth=2
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
add	x1, 1
	jz	rax, .LBB93_393
	jmp	.LBB93_388
.LBB93_388:                             // %.preheader1.i74
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
add	x10, 1
	mov	r1, 3
	mov	r0, x10
	call	__bit_and
	jnz	rax, .LBB93_387
	jmp	.LBB93_389
.LBB93_389:                             // %.loopexit.i75.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x2, x1
add	x2, -4
add	x1, -1
.LBB93_390:                             // %.loopexit.i75
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
add	x2, 4
	mov	r1, [x2]
	mov	r0, 16843008
	sub	r0, r1
	mov	x10, x1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
add	x1, 4
	je	rax, x14, .LBB93_390
	jmp	.LBB93_391
.LBB93_391:                             // %.preheader.i76.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x1, 0
.LBB93_392:                             // %.preheader.i76
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, x2
	add	r0, x1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
add	x10, 1
add	x1, 1
	jnz	rax, .LBB93_392
	jmp	.LBB93_393
.LBB93_393:                             // %strlen.exit77
                                        //   in Loop: Header=BB93_1 Depth=1
	jmp	.LBB93_398
.LBB93_394:                             // %strchr.exit.loopexit
                                        //   in Loop: Header=BB93_1 Depth=1
	jmp	.LBB93_398
.LBB93_395:                             // %strchr.exit.loopexit13
                                        //   in Loop: Header=BB93_1 Depth=1
	jmp	.LBB93_398
.LBB93_396:                             // %strchr.exit.loopexit14
                                        //   in Loop: Header=BB93_1 Depth=1
	jmp	.LBB93_398
.LBB93_397:                             // %strchr.exit.loopexit16
                                        //   in Loop: Header=BB93_1 Depth=1
.LBB93_398:                             // %strchr.exit
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x11, rsp
add	x11, 96
	mov	r0, [rsp+48]
	jz	r0, .LBB93_400
	jmp	.LBB93_399
.LBB93_399:                             // %.preheader143.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x11, rsp
add	x11, 96
	mov	x1, [rsp+32]
	jmp	.LBB93_402
.LBB93_400:                             // %.loopexit9.i78
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x12, [x11]
	mov	r0, 16843008
	sub	r0, x12
	mov	r1, x12
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x14, .LBB93_407
	jmp	.LBB93_401
.LBB93_401:                             // %.preheader5.i81.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	jmp	.LBB93_405
.LBB93_402:                             // %.preheader143
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, [x11]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB93_416
	jmp	.LBB93_403
.LBB93_403:                             // %.preheader143
                                        //   in Loop: Header=BB93_402 Depth=2
	je	rax, x3, .LBB93_413
	jmp	.LBB93_404
.LBB93_404:                             //   in Loop: Header=BB93_402 Depth=2
add	x1, -1
add	x11, 1
	jz	x1, .LBB93_400
	jmp	.LBB93_402
.LBB93_405:                             // %.preheader5.i81
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 774778414
	mov	r0, x12
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, x12
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x14, .LBB93_407
	jmp	.LBB93_406
.LBB93_406:                             //   in Loop: Header=BB93_405 Depth=2
add	x11, 4
	mov	x12, [x11]
	mov	r0, 16843008
	sub	r0, x12
	mov	r1, x12
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	je	rax, x14, .LBB93_405
	jmp	.LBB93_407
.LBB93_407:                             // %.loopexit6.i79.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
add	x11, -1
.LBB93_408:                             // %.loopexit6.i79
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
add	x11, 1
	mov	r0, [x11]
	mov	r1, 255
	call	__bit_and
	je	rax, x3, .LBB93_410
	jmp	.LBB93_409
.LBB93_409:                             // %.loopexit6.i79
                                        //   in Loop: Header=BB93_408 Depth=2
	jnz	rax, .LBB93_408
	jmp	.LBB93_410
.LBB93_410:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 1
	je	rax, x3, .LBB93_412
// %bb.411:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 0
.LBB93_412:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 0
	sub	r0, r1
	mov	r1, x11
	call	__bit_and
	mov	x11, rax
	jmp	.LBB93_414
.LBB93_413:                             // %strchr.exit82.loopexit
                                        //   in Loop: Header=BB93_1 Depth=1
.LBB93_414:                             // %strchr.exit82
                                        //   in Loop: Header=BB93_1 Depth=1
	jz	x11, .LBB93_416
	jmp	.LBB93_415
.LBB93_415:                             // %strchr.exit82
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	r0, x10
add	r0, -2147483648
add	x11, -2147483648
	jl	x11, r0, .LBB93_436
	jmp	.LBB93_416
.LBB93_416:                             // %strchr.exit82.thread
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x11, x10
	mov	r1, 3
add	x11, 1
	mov	r0, x10
	call	__bit_and
	mov	x1, x10
	jz	rax, .LBB93_421
	jmp	.LBB93_417
.LBB93_417:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [x10]
	mov	r1, 255
	call	__bit_and
	mov	x12, x10
	jz	rax, .LBB93_425
	jmp	.LBB93_418
.LBB93_418:                             // %.preheader1.i83.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x12, x10
	mov	x1, x11
	jmp	.LBB93_420
.LBB93_419:                             //   in Loop: Header=BB93_420 Depth=2
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
add	x1, 1
	jz	rax, .LBB93_425
	jmp	.LBB93_420
.LBB93_420:                             // %.preheader1.i83
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
add	x12, 1
	mov	r1, 3
	mov	r0, x12
	call	__bit_and
	jnz	rax, .LBB93_419
	jmp	.LBB93_421
.LBB93_421:                             // %.loopexit.i84.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x2, x1
add	x2, -4
add	x1, -1
.LBB93_422:                             // %.loopexit.i84
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
add	x2, 4
	mov	r1, [x2]
	mov	r0, 16843008
	sub	r0, r1
	mov	x12, x1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
add	x1, 4
	je	rax, x14, .LBB93_422
	jmp	.LBB93_423
.LBB93_423:                             // %.preheader.i85.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x1, 0
.LBB93_424:                             // %.preheader.i85
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, x2
	add	r0, x1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
add	x12, 1
add	x1, 1
	jnz	rax, .LBB93_424
	jmp	.LBB93_425
.LBB93_425:                             // %strlen.exit86
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x7, x12
	sub	x7, x10
add	x7, 1
	mov	r0, 2
	jl	x7, r0, .LBB93_433
	jmp	.LBB93_426
.LBB93_426:                             //   in Loop: Header=BB93_1 Depth=1
	mov	x13, x12
add	x13, 1
	mov	r0, x7
add	r0, -2147483648
	add	x11, x7
	mov	r1, -2147483644
	jl	r0, r1, .LBB93_431
	jmp	.LBB93_427
.LBB93_427:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, x13
	mov	r1, x11
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB93_431
	jmp	.LBB93_428
.LBB93_428:                             // %.preheader.i88.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x11, x10
	add	x11, x12
	mov	r0, 0
add	x12, 1
	sub	r0, x10
	mov	x7, x12
	mov	r3, -2147483645
.LBB93_429:                             // %.preheader.i88
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, x11
	add	r1, r0
	mov	r2, r1
add	r2, -3
	mov	r2, [r2]
add	r1, -2
	mov	[r1], r2
add	x7, -4
	mov	r1, r0
	add	r1, x7
add	r1, -2147483648
add	x11, -4
	jg	r1, r3, .LBB93_429
	jmp	.LBB93_430
.LBB93_430:                             // %.loopexit9.i89
                                        //   in Loop: Header=BB93_1 Depth=1
	sub	x11, x10
	sub	x7, x10
	mov	x13, x11
add	x13, 1
add	x11, 2
	jz	x7, .LBB93_435
	jmp	.LBB93_431
.LBB93_431:                             // %.loopexit9.i89.thread.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
add	x13, -1
add	x11, -1
.LBB93_432:                             // %.loopexit9.i89.thread
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, [x13]
	mov	r1, 255
add	x7, -1
	call	__bit_and
	mov	r0, [x11]
	mov	r1, -256
	mov	x1, rax
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	[x11], rax
add	x13, -1
add	x11, -1
	jz	x7, .LBB93_435
	jmp	.LBB93_432
.LBB93_433:                             // %.loopexit11.i
                                        //   in Loop: Header=BB93_1 Depth=1
	jz	x7, .LBB93_435
	jmp	.LBB93_434
.LBB93_434:                             // %memmove.exit.loopexit359
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [x10]
	mov	r1, 255
	call	__bit_and
	mov	x5, x10
add	x5, 1
	mov	r0, [x5]
	mov	r1, -256
	mov	x1, rax
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	[x5], rax
.LBB93_435:                             // %memmove.exit
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [x10]
	mov	r1, -256
	call	__bit_and
	mov	r1, 46
	mov	r0, rax
	call	__bit_or
	mov	[x10], rax
.LBB93_436:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 255
	mov	r0, x9
	call	__bit_and
	mov	r0, [rsp+96]
	mov	r1, 255
	mov	x1, rax
	call	__bit_and
add	x1, -2147483648
	mov	x9, rax
	mov	r0, -2147483558
	jg	x1, r0, .LBB93_442
	jmp	.LBB93_437
.LBB93_437:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 255
	mov	r0, x9
	call	__bit_and
	jz	rax, .LBB93_442
	jmp	.LBB93_438
.LBB93_438:                             // %.preheader139.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x7, [rsp+44]
.LBB93_439:                             // %.preheader139
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, x9
add	r0, -97
	mov	r1, 255
	call	__bit_and
add	rax, -2147483648
	jg	rax, x15, .LBB93_441
	jmp	.LBB93_440
.LBB93_440:                             //   in Loop: Header=BB93_439 Depth=2
	mov	x5, x7
add	x5, -1
	mov	x1, [x5]
add	x9, -32
	mov	r1, 255
	mov	r0, x9
	call	__bit_and
	mov	r1, -256
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 255
	mov	x1, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	[x5], rax
.LBB93_441:                             //   in Loop: Header=BB93_439 Depth=2
	mov	r0, [x7]
	mov	r1, 255
	call	__bit_and
	mov	x9, rax
add	x7, 1
	jnz	x9, .LBB93_439
	jmp	.LBB93_442
.LBB93_442:                             // %.loopexit140
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x1, rsp
add	x1, 96
	mov	r0, [rsp+48]
	mov	x7, [rsp+52]
	jz	r0, .LBB93_447
	jmp	.LBB93_443
.LBB93_443:                             //   in Loop: Header=BB93_1 Depth=1
	mov	x11, rsp
add	x11, 96
	mov	r0, [rsp+96]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB93_451
	jmp	.LBB93_444
.LBB93_444:                             // %.preheader1.i90.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x11, rsp
add	x11, 96
	mov	x1, [rsp+44]
	jmp	.LBB93_446
.LBB93_445:                             //   in Loop: Header=BB93_446 Depth=2
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
add	x1, 1
	jz	rax, .LBB93_451
	jmp	.LBB93_446
.LBB93_446:                             // %.preheader1.i90
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
add	x11, 1
	mov	r1, 3
	mov	r0, x11
	call	__bit_and
	jnz	rax, .LBB93_445
	jmp	.LBB93_447
.LBB93_447:                             // %.loopexit.i91.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x2, x1
add	x2, -4
add	x1, -1
.LBB93_448:                             // %.loopexit.i91
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
add	x2, 4
	mov	r1, [x2]
	mov	r0, 16843008
	sub	r0, r1
	mov	x11, x1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
add	x1, 4
	je	rax, x14, .LBB93_448
	jmp	.LBB93_449
.LBB93_449:                             // %.preheader.i92.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x1, 0
.LBB93_450:                             // %.preheader.i92
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, x2
	add	r0, x1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
add	x11, 1
add	x1, 1
	jnz	rax, .LBB93_450
	jmp	.LBB93_451
.LBB93_451:                             // %strlen.exit93
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x13, rsp
add	x13, 96
	sub	x11, x13
.LBB93_452:                             //   in Loop: Header=BB93_1 Depth=1
	sub	x6, x11
	add	x6, x7
	mov	r1, 1
	jg	x6, x8, .LBB93_454
// %bb.453:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 0
.LBB93_454:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 0
	sub	r0, r1
	mov	r1, x6
	call	__bit_and
	mov	x9, rax
	mov	x5, [rsp+72]
	mov	r0, x5
	mov	x7, [rsp+76]
	mov	r1, x7
	call	__bit_or
	mov	x14, [rsp+64]
	mov	x15, [rsp+60]
	jnz	rax, .LBB93_464
	jmp	.LBB93_455
.LBB93_455:                             //   in Loop: Header=BB93_1 Depth=1
	jl	x6, x0, .LBB93_464
	jmp	.LBB93_456
.LBB93_456:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, rsp
add	r0, 84
	mov	r1, [r0]
	mov	r0, rsp
add	r0, 88
	mov	x2, [r0]
	jz	r1, .LBB93_458
	jmp	.LBB93_457
.LBB93_457:                             // %.preheader123.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x1, x9
	mov	r0, x2
	jmp	.LBB93_460
.LBB93_458:                             //   in Loop: Header=BB93_1 Depth=1
	add	x2, x9
	mov	r0, rsp
add	r0, 88
	mov	[r0], x2
	jmp	.LBB93_464
.LBB93_459:                             //   in Loop: Header=BB93_460 Depth=2
	mov	r1, rsp
add	r1, 84
	mov	r1, [r1]
add	x1, -1
	mov	x2, r0
.LBB93_460:                             // %.preheader123
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
add	r0, 1
	jz	r1, .LBB93_463
	jmp	.LBB93_461
.LBB93_461:                             // %.preheader123
                                        //   in Loop: Header=BB93_460 Depth=2
add	r1, -2147483648
	mov	r2, r0
add	r2, -2147483648
	jge	r2, r1, .LBB93_463
	jmp	.LBB93_462
.LBB93_462:                             //   in Loop: Header=BB93_460 Depth=2
	add	x2, [rsp+80]
	mov	r0, [x2]
	mov	r1, -256
	call	__bit_and
	mov	r1, 32
	mov	r0, rax
	call	__bit_or
	mov	[x2], rax
	mov	r1, rsp
add	r1, 88
	mov	r0, 1
	add	r0, [r1]
.LBB93_463:                             //   in Loop: Header=BB93_460 Depth=2
	mov	r1, rsp
add	r1, 88
	mov	[r1], r0
	jg	x1, x0, .LBB93_459
	jmp	.LBB93_464
.LBB93_464:                             // %.loopexit124
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [rsp+68]
	jnz	r0, .LBB93_469
	jmp	.LBB93_465
.LBB93_465:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, rsp
add	r0, 84
	mov	r1, [r0]
	mov	r0, rsp
add	r0, 88
	mov	x2, [r0]
	mov	r0, x2
add	r0, 1
	jz	r1, .LBB93_468
	jmp	.LBB93_466
.LBB93_466:                             //   in Loop: Header=BB93_1 Depth=1
add	r1, -2147483648
	mov	r2, r0
add	r2, -2147483648
	jge	r2, r1, .LBB93_468
	jmp	.LBB93_467
.LBB93_467:                             //   in Loop: Header=BB93_1 Depth=1
	add	x2, [rsp+80]
	mov	r0, [x2]
	mov	r1, -256
	call	__bit_and
	mov	r1, 255
	mov	x1, rax
	mov	r0, [rsp+56]
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	[x2], rax
	mov	r1, rsp
add	r1, 88
	mov	r0, 1
	add	r0, [r1]
.LBB93_468:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, rsp
add	r1, 88
	mov	[r1], r0
.LBB93_469:                             //   in Loop: Header=BB93_1 Depth=1
	mov	x8, 1
	mov	r0, 0
	jne	x5, r0, .LBB93_471
// %bb.470:                             //   in Loop: Header=BB93_1 Depth=1
	mov	x8, 0
.LBB93_471:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 1
	mov	r0, x7
	call	__bit_xor
	mov	r0, rax
	mov	r1, x8
	call	__bit_or
	jnz	rax, .LBB93_481
	jmp	.LBB93_472
.LBB93_472:                             //   in Loop: Header=BB93_1 Depth=1
	jl	x6, x0, .LBB93_481
	jmp	.LBB93_473
.LBB93_473:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, rsp
add	r0, 84
	mov	r1, [r0]
	mov	r0, rsp
add	r0, 88
	mov	x2, [r0]
	jz	r1, .LBB93_475
	jmp	.LBB93_474
.LBB93_474:                             // %.preheader121.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x1, x9
	mov	r0, x2
	jmp	.LBB93_477
.LBB93_475:                             //   in Loop: Header=BB93_1 Depth=1
	add	x2, x9
	mov	r0, rsp
add	r0, 88
	mov	[r0], x2
	jmp	.LBB93_481
.LBB93_476:                             //   in Loop: Header=BB93_477 Depth=2
	mov	r1, rsp
add	r1, 84
	mov	r1, [r1]
add	x1, -1
	mov	x2, r0
.LBB93_477:                             // %.preheader121
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
add	r0, 1
	jz	r1, .LBB93_480
	jmp	.LBB93_478
.LBB93_478:                             // %.preheader121
                                        //   in Loop: Header=BB93_477 Depth=2
add	r1, -2147483648
	mov	r2, r0
add	r2, -2147483648
	jge	r2, r1, .LBB93_480
	jmp	.LBB93_479
.LBB93_479:                             //   in Loop: Header=BB93_477 Depth=2
	add	x2, [rsp+80]
	mov	r0, [x2]
	mov	r1, -256
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	[x2], rax
	mov	r1, rsp
add	r1, 88
	mov	r0, 1
	add	r0, [r1]
.LBB93_480:                             //   in Loop: Header=BB93_477 Depth=2
	mov	r1, rsp
add	r1, 88
	mov	[r1], r0
	jg	x1, x0, .LBB93_476
	jmp	.LBB93_481
.LBB93_481:                             // %.loopexit122
                                        //   in Loop: Header=BB93_1 Depth=1
	jz	x11, .LBB93_490
	jmp	.LBB93_482
.LBB93_482:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, rsp
add	r0, 84
	mov	r1, [r0]
	mov	r0, rsp
add	r0, 88
	mov	x7, [r0]
	jz	r1, .LBB93_484
	jmp	.LBB93_483
.LBB93_483:                             // %.preheader119.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
add	x11, -1
	mov	r0, x7
	jmp	.LBB93_486
.LBB93_484:                             //   in Loop: Header=BB93_1 Depth=1
	add	x7, x11
	mov	r0, rsp
add	r0, 88
	mov	[r0], x7
	jmp	.LBB93_490
.LBB93_485:                             //   in Loop: Header=BB93_486 Depth=2
	mov	r1, rsp
add	r1, 84
	mov	r1, [r1]
add	x13, 1
add	x11, -1
	mov	x7, r0
.LBB93_486:                             // %.preheader119
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
add	r0, 1
	jz	r1, .LBB93_489
	jmp	.LBB93_487
.LBB93_487:                             // %.preheader119
                                        //   in Loop: Header=BB93_486 Depth=2
add	r1, -2147483648
	mov	r2, r0
add	r2, -2147483648
	jge	r2, r1, .LBB93_489
	jmp	.LBB93_488
.LBB93_488:                             //   in Loop: Header=BB93_486 Depth=2
	mov	r0, [x13]
	mov	r1, 255
	call	__bit_and
	add	x7, [rsp+80]
	mov	r0, [x7]
	mov	r1, -256
	mov	x1, rax
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	[x7], rax
	mov	r1, rsp
add	r1, 88
	mov	r0, 1
	add	r0, [r1]
.LBB93_489:                             //   in Loop: Header=BB93_486 Depth=2
	mov	r1, rsp
add	r1, 88
	mov	[r1], r0
	jnz	x11, .LBB93_485
	jmp	.LBB93_490
.LBB93_490:                             // %.loopexit120
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x7, 43
	mov	x13, 45
	jz	x5, .LBB93_500
	jmp	.LBB93_491
.LBB93_491:                             // %.loopexit120
                                        //   in Loop: Header=BB93_1 Depth=1
	jl	x6, x0, .LBB93_500
	jmp	.LBB93_492
.LBB93_492:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, rsp
add	r0, 84
	mov	r1, [r0]
	mov	r0, rsp
add	r0, 88
	mov	x1, [r0]
	jz	r1, .LBB93_494
	jmp	.LBB93_493
.LBB93_493:                             // %.preheader117.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	r0, x1
	jmp	.LBB93_496
.LBB93_494:                             //   in Loop: Header=BB93_1 Depth=1
	add	x1, x9
	mov	r0, rsp
add	r0, 88
	mov	[r0], x1
	jmp	.LBB93_500
.LBB93_495:                             //   in Loop: Header=BB93_496 Depth=2
	mov	r1, rsp
add	r1, 84
	mov	r1, [r1]
add	x9, -1
	mov	x1, r0
.LBB93_496:                             // %.preheader117
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
add	r0, 1
	jz	r1, .LBB93_499
	jmp	.LBB93_497
.LBB93_497:                             // %.preheader117
                                        //   in Loop: Header=BB93_496 Depth=2
add	r1, -2147483648
	mov	r2, r0
add	r2, -2147483648
	jge	r2, r1, .LBB93_499
	jmp	.LBB93_498
.LBB93_498:                             //   in Loop: Header=BB93_496 Depth=2
	add	x1, [rsp+80]
	mov	r0, [x1]
	mov	r1, -256
	call	__bit_and
	mov	r1, 32
	mov	r0, rax
	call	__bit_or
	mov	[x1], rax
	mov	r1, rsp
add	r1, 88
	mov	r0, 1
	add	r0, [r1]
.LBB93_499:                             //   in Loop: Header=BB93_496 Depth=2
	mov	r1, rsp
add	r1, 88
	mov	[r1], r0
	jg	x9, x0, .LBB93_495
	jmp	.LBB93_500
.LBB93_500:                             // %.loopexit118
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x9, -2147483638
	jmp	.LBB93_1
.LBB93_501:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [rsp+92]
	mov	r1, r0
add	r1, 4
	mov	[rsp+92], r1
	mov	x1, [r0]
	mov	r2, 1
	je	x1, r3, .LBB93_503
// %bb.502:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r2, 0
.LBB93_503:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, mcasm_static_6043f3fb49f3189af47f42e698dc1394
	sub	r1, x1
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	mov	x7, rax
	add	x7, x1
	mov	r1, 3
	mov	r0, x7
	call	__bit_and
	mov	x1, x7
	mov	x13, 45
	jz	rax, .LBB93_508
	jmp	.LBB93_504
.LBB93_504:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [x7]
	mov	r1, 255
	call	__bit_and
	mov	x8, x7
	jz	rax, .LBB93_512
	jmp	.LBB93_505
.LBB93_505:                             // %.preheader1.i94.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x1, x7
add	x1, 1
	mov	x8, x7
	jmp	.LBB93_507
.LBB93_506:                             //   in Loop: Header=BB93_507 Depth=2
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
add	x1, 1
	jz	rax, .LBB93_512
	jmp	.LBB93_507
.LBB93_507:                             // %.preheader1.i94
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
add	x8, 1
	mov	r1, 3
	mov	r0, x8
	call	__bit_and
	jnz	rax, .LBB93_506
	jmp	.LBB93_508
.LBB93_508:                             // %.loopexit.i95.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x2, x1
add	x2, -4
add	x1, -1
	mov	x5, -2139062144
.LBB93_509:                             // %.loopexit.i95
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
add	x2, 4
	mov	r1, [x2]
	mov	r0, 16843008
	sub	r0, r1
	mov	x8, x1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
add	x1, 4
	je	rax, x5, .LBB93_509
	jmp	.LBB93_510
.LBB93_510:                             // %.preheader.i96.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x1, 0
.LBB93_511:                             // %.preheader.i96
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, x2
	add	r0, x1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
add	x8, 1
add	x1, 1
	jnz	rax, .LBB93_511
	jmp	.LBB93_512
.LBB93_512:                             // %strlen.exit97
                                        //   in Loop: Header=BB93_1 Depth=1
	sub	x8, x7
	mov	r0, x8
add	r0, -2147483648
	mov	r1, x12
add	r1, -2147483648
	mov	r2, 1
	jl	r1, r0, .LBB93_514
// %bb.513:                             // %strlen.exit97
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	r2, 0
.LBB93_514:                             // %strlen.exit97
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	r1, x12
	sub	r1, x8
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	mov	r0, 0
	jl	x12, r0, .LBB93_516
	jmp	.LBB93_515
.LBB93_515:                             //   in Loop: Header=BB93_1 Depth=1
	add	x8, rax
.LBB93_516:                             //   in Loop: Header=BB93_1 Depth=1
	mov	x5, [rsp+72]
	jnz	x5, .LBB93_526
	jmp	.LBB93_517
.LBB93_517:                             //   in Loop: Header=BB93_1 Depth=1
	jle	x6, x8, .LBB93_526
	jmp	.LBB93_518
.LBB93_518:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, rsp
add	r0, 84
	mov	r1, [r0]
	mov	r0, rsp
add	r0, 88
	mov	x2, [r0]
	mov	x1, x6
	sub	x1, x8
	jz	r1, .LBB93_520
	jmp	.LBB93_519
.LBB93_519:                             // %.preheader159.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	r0, x2
	jmp	.LBB93_522
.LBB93_520:                             //   in Loop: Header=BB93_1 Depth=1
	add	x2, x1
	mov	r0, rsp
add	r0, 88
	mov	[r0], x2
	jmp	.LBB93_526
.LBB93_521:                             //   in Loop: Header=BB93_522 Depth=2
	mov	r1, rsp
add	r1, 84
	mov	r1, [r1]
add	x1, -1
	mov	x2, r0
.LBB93_522:                             // %.preheader159
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
add	r0, 1
	jz	r1, .LBB93_525
	jmp	.LBB93_523
.LBB93_523:                             // %.preheader159
                                        //   in Loop: Header=BB93_522 Depth=2
add	r1, -2147483648
	mov	r2, r0
add	r2, -2147483648
	jge	r2, r1, .LBB93_525
	jmp	.LBB93_524
.LBB93_524:                             //   in Loop: Header=BB93_522 Depth=2
	add	x2, [rsp+80]
	mov	r0, [x2]
	mov	r1, -256
	call	__bit_and
	mov	r1, 32
	mov	r0, rax
	call	__bit_or
	mov	[x2], rax
	mov	r1, rsp
add	r1, 88
	mov	r0, 1
	add	r0, [r1]
.LBB93_525:                             //   in Loop: Header=BB93_522 Depth=2
	mov	r1, rsp
add	r1, 88
	mov	[r1], r0
	jg	x1, x0, .LBB93_521
	jmp	.LBB93_526
.LBB93_526:                             // %.loopexit160
                                        //   in Loop: Header=BB93_1 Depth=1
	jz	x8, .LBB93_535
	jmp	.LBB93_527
.LBB93_527:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, rsp
add	r0, 84
	mov	r1, [r0]
	mov	r0, rsp
add	r0, 88
	mov	x10, [r0]
	jz	r1, .LBB93_529
	jmp	.LBB93_528
.LBB93_528:                             // %.preheader157.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x9, x8
add	x9, -1
	mov	r0, x10
	jmp	.LBB93_531
.LBB93_529:                             //   in Loop: Header=BB93_1 Depth=1
	add	x10, x8
	mov	r0, rsp
add	r0, 88
	mov	[r0], x10
	jmp	.LBB93_535
.LBB93_530:                             //   in Loop: Header=BB93_531 Depth=2
	mov	r1, rsp
add	r1, 84
	mov	r1, [r1]
add	x7, 1
add	x9, -1
	mov	x10, r0
.LBB93_531:                             // %.preheader157
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
add	r0, 1
	jz	r1, .LBB93_534
	jmp	.LBB93_532
.LBB93_532:                             // %.preheader157
                                        //   in Loop: Header=BB93_531 Depth=2
add	r1, -2147483648
	mov	r2, r0
add	r2, -2147483648
	jge	r2, r1, .LBB93_534
	jmp	.LBB93_533
.LBB93_533:                             //   in Loop: Header=BB93_531 Depth=2
	mov	r0, [x7]
	mov	r1, 255
	call	__bit_and
	add	x10, [rsp+80]
	mov	r0, [x10]
	mov	r1, -256
	mov	x1, rax
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	[x10], rax
	mov	r1, rsp
add	r1, 88
	mov	r0, 1
	add	r0, [r1]
.LBB93_534:                             //   in Loop: Header=BB93_531 Depth=2
	mov	r1, rsp
add	r1, 88
	mov	[r1], r0
	jnz	x9, .LBB93_530
	jmp	.LBB93_535
.LBB93_535:                             // %.loopexit158
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x9, -2147483638
	mov	x7, 43
	jz	x5, .LBB93_1
	jmp	.LBB93_536
.LBB93_536:                             // %.loopexit158
                                        //   in Loop: Header=BB93_1 Depth=1
	jle	x6, x8, .LBB93_1
	jmp	.LBB93_537
.LBB93_537:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, rsp
add	r0, 84
	mov	r1, [r0]
	mov	r0, rsp
add	r0, 88
	mov	x1, [r0]
	sub	x6, x8
	jz	r1, .LBB93_539
	jmp	.LBB93_538
.LBB93_538:                             // %.preheader155.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	r0, x1
	jmp	.LBB93_541
.LBB93_539:                             //   in Loop: Header=BB93_1 Depth=1
	add	x1, x6
	mov	r0, rsp
add	r0, 88
	mov	[r0], x1
	jmp	.LBB93_1
.LBB93_540:                             //   in Loop: Header=BB93_541 Depth=2
	mov	r1, rsp
add	r1, 84
	mov	r1, [r1]
add	x6, -1
	mov	x1, r0
.LBB93_541:                             // %.preheader155
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
add	r0, 1
	jz	r1, .LBB93_544
	jmp	.LBB93_542
.LBB93_542:                             // %.preheader155
                                        //   in Loop: Header=BB93_541 Depth=2
add	r1, -2147483648
	mov	r2, r0
add	r2, -2147483648
	jge	r2, r1, .LBB93_544
	jmp	.LBB93_543
.LBB93_543:                             //   in Loop: Header=BB93_541 Depth=2
	add	x1, [rsp+80]
	mov	r0, [x1]
	mov	r1, -256
	call	__bit_and
	mov	r1, 32
	mov	r0, rax
	call	__bit_or
	mov	[x1], rax
	mov	r1, rsp
add	r1, 88
	mov	r0, 1
	add	r0, [r1]
.LBB93_544:                             //   in Loop: Header=BB93_541 Depth=2
	mov	r1, rsp
add	r1, 88
	mov	[r1], r0
	jg	x6, x0, .LBB93_540
	jmp	.LBB93_1
.LBB93_545:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, [rsp+92]
	mov	r1, r0
add	r1, 4
	mov	[rsp+92], r1
	mov	r1, [r0]
	mov	r0, rsp
	mov	r2, rsp
	mov	r3, rsp
	mov	r4, rsp
add	r0, 16
	mov	[r0], x12
add	r2, 12
	mov	[r2], x6
add	r3, 8
	mov	r0, [rsp+76]
	mov	[r3], r0
add	r4, 4
	mov	[r4], 0
	mov	[rsp], 0
	mov	r0, rsp
add	r0, 80
	mov	r2, 0
	mov	r3, 0
	mov	r4, 16
	mov	r5, 0
	mov	r6, 1
	mov	r7, [rsp+72]
	call	format_integer
	mov	x9, -2147483638
	mov	x13, 45
	jmp	.LBB93_1
.LBB93_546:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, rsp
add	r0, 88
	mov	r0, [r0]
	mov	r1, 3
	jg	x13, r1, .LBB93_550
	jmp	.LBB93_547
.LBB93_547:                             //   in Loop: Header=BB93_1 Depth=1
	mov	x9, -2147483638
	je	x13, x0, .LBB93_553
	jmp	.LBB93_548
.LBB93_548:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 2
	je	x13, r1, .LBB93_554
	jmp	.LBB93_549
.LBB93_549:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 3
	je	x13, r1, .LBB93_555
	jmp	.LBB93_559
.LBB93_550:                             //   in Loop: Header=BB93_1 Depth=1
	mov	x9, -2147483638
	mov	r1, 4
	je	x13, r1, .LBB93_556
	jmp	.LBB93_551
.LBB93_551:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 6
	je	x13, r1, .LBB93_557
	jmp	.LBB93_552
.LBB93_552:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 7
	je	x13, r1, .LBB93_558
	jmp	.LBB93_559
.LBB93_553:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, [rsp+92]
	mov	r2, r1
add	r2, 4
	mov	[rsp+92], r2
	mov	x5, [r1]
	mov	x1, [x5]
	mov	r1, 255
	call	__bit_and
	mov	r1, -256
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 255
	mov	x1, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	[x5], rax
	mov	x13, 45
	jmp	.LBB93_1
.LBB93_554:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, [rsp+92]
	mov	r2, r1
add	r2, 4
	mov	[rsp+92], r2
	mov	x5, [r1]
	mov	x1, [x5]
	mov	r1, 65535
	call	__bit_and
	mov	r1, -65536
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 65535
	mov	x1, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	[x5], rax
	mov	x13, 45
	jmp	.LBB93_1
.LBB93_555:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, [rsp+92]
	mov	r2, r1
add	r2, 4
	mov	[rsp+92], r2
	mov	r1, [r1]
	mov	[r1], r0
	mov	x13, 45
	jmp	.LBB93_1
.LBB93_556:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, [rsp+92]
	mov	r2, r1
add	r2, 4
	mov	[rsp+92], r2
	mov	r1, [r1]
	mov	[r1], r0
add	r1, 4
	mov	[r1], 0
	mov	x13, 45
	jmp	.LBB93_1
.LBB93_557:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, [rsp+92]
	mov	r2, r1
add	r2, 4
	mov	[rsp+92], r2
	mov	r1, [r1]
	mov	[r1], r0
	mov	x13, 45
	jmp	.LBB93_1
.LBB93_558:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, [rsp+92]
	mov	r2, r1
add	r2, 4
	mov	[rsp+92], r2
	mov	r1, [r1]
	mov	[r1], r0
	mov	x13, 45
	jmp	.LBB93_1
.LBB93_559:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, [rsp+92]
	mov	r2, r1
add	r2, 4
	mov	[rsp+92], r2
	mov	r1, [r1]
	mov	[r1], r0
	mov	x13, 45
	jmp	.LBB93_1
.LBB93_560:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, rsp
add	r0, 84
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 88
	mov	x1, [r1]
	mov	x13, 45
	mov	x5, [rsp+72]
	jnz	x5, .LBB93_569
	jmp	.LBB93_561
.LBB93_561:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, 2
	jl	x6, r1, .LBB93_569
	jmp	.LBB93_562
.LBB93_562:                             //   in Loop: Header=BB93_1 Depth=1
	jz	r0, .LBB93_564
	jmp	.LBB93_563
.LBB93_563:                             // %.preheader111.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x7, x6
add	x7, 1
	mov	x9, x1
	jmp	.LBB93_565
.LBB93_564:                             //   in Loop: Header=BB93_1 Depth=1
	add	x1, x6
	mov	r0, rsp
add	r0, 88
	mov	[r0], x1
	mov	x9, -2147483638
	jmp	.LBB93_1
.LBB93_565:                             // %.preheader111
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
add	x1, 1
	jz	r0, .LBB93_568
	jmp	.LBB93_566
.LBB93_566:                             // %.preheader111
                                        //   in Loop: Header=BB93_565 Depth=2
	mov	r1, r0
add	r1, -2147483648
	mov	r2, x1
add	r2, -2147483648
	jge	r2, r1, .LBB93_568
	jmp	.LBB93_567
.LBB93_567:                             //   in Loop: Header=BB93_565 Depth=2
	add	x9, [rsp+80]
	mov	x1, [x9]
	mov	r1, 255
	mov	r0, x8
	call	__bit_and
	mov	r1, -256
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 255
	mov	x1, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	[x9], rax
	mov	r0, rsp
add	r0, 88
	mov	x1, 1
	add	x1, [r0]
	mov	r0, rsp
add	r0, 84
	mov	r0, [r0]
.LBB93_568:                             //   in Loop: Header=BB93_565 Depth=2
	mov	r1, rsp
add	r1, 88
add	x7, -1
	mov	[r1], x1
	mov	x9, x1
	mov	r1, 2
	jg	x7, r1, .LBB93_565
	jmp	.LBB93_569
.LBB93_569:                             // %.loopexit112
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	x2, x1
add	x2, 1
	mov	x9, -2147483638
	mov	x7, 43
	jz	r0, .LBB93_572
	jmp	.LBB93_570
.LBB93_570:                             // %.loopexit112
                                        //   in Loop: Header=BB93_1 Depth=1
add	r0, -2147483648
	mov	r1, x2
add	r1, -2147483648
	jge	r1, r0, .LBB93_572
	jmp	.LBB93_571
.LBB93_571:                             //   in Loop: Header=BB93_1 Depth=1
	add	x1, [rsp+80]
	mov	r0, [x1]
	mov	r1, -256
	call	__bit_and
	mov	r1, 37
	mov	r0, rax
	call	__bit_or
	mov	[x1], rax
	mov	r0, rsp
add	r0, 88
	mov	x1, [r0]
	mov	x2, x1
add	x2, 1
.LBB93_572:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, rsp
add	r0, 88
	mov	[r0], x2
	jz	x5, .LBB93_1
	jmp	.LBB93_573
.LBB93_573:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, 2
	jl	x6, r0, .LBB93_1
	jmp	.LBB93_574
.LBB93_574:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, rsp
add	r0, 84
	mov	r1, [r0]
	jz	r1, .LBB93_576
	jmp	.LBB93_575
.LBB93_575:                             // %.preheader109.preheader
                                        //   in Loop: Header=BB93_1 Depth=1
	mov	r0, x2
	jmp	.LBB93_578
.LBB93_576:                             //   in Loop: Header=BB93_1 Depth=1
	add	x1, x6
	mov	r0, rsp
add	r0, 88
	mov	[r0], x1
	jmp	.LBB93_1
.LBB93_577:                             //   in Loop: Header=BB93_578 Depth=2
	mov	r1, rsp
add	r1, 84
	mov	r1, [r1]
add	x6, -1
	mov	x2, r0
.LBB93_578:                             // %.preheader109
                                        //   Parent Loop BB93_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
add	r0, 1
	jz	r1, .LBB93_581
	jmp	.LBB93_579
.LBB93_579:                             // %.preheader109
                                        //   in Loop: Header=BB93_578 Depth=2
add	r1, -2147483648
	mov	r2, r0
add	r2, -2147483648
	jge	r2, r1, .LBB93_581
	jmp	.LBB93_580
.LBB93_580:                             //   in Loop: Header=BB93_578 Depth=2
	add	x2, [rsp+80]
	mov	r0, [x2]
	mov	r1, -256
	call	__bit_and
	mov	r1, 32
	mov	r0, rax
	call	__bit_or
	mov	[x2], rax
	mov	r1, rsp
add	r1, 88
	mov	r0, 1
	add	r0, [r1]
.LBB93_581:                             //   in Loop: Header=BB93_578 Depth=2
	mov	r1, rsp
add	r1, 88
	mov	[r1], r0
	mov	r1, 2
	jg	x6, r1, .LBB93_577
	jmp	.LBB93_1
.LBB93_582:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r0, rsp
add	r0, 84
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 88
	mov	x1, [r1]
	mov	x5, x1
add	x5, 1
	mov	x13, 45
	jz	r0, .LBB93_588
	jmp	.LBB93_583
.LBB93_583:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, r0
add	r1, -2147483648
	mov	r2, x5
add	r2, -2147483648
	jge	r2, r1, .LBB93_585
	jmp	.LBB93_584
.LBB93_584:                             //   in Loop: Header=BB93_1 Depth=1
	add	x1, [rsp+80]
	mov	r0, [x1]
	mov	r1, -256
	call	__bit_and
	mov	r1, 37
	mov	r0, rax
	call	__bit_or
	mov	[x1], rax
	mov	r0, rsp
add	r0, 84
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 88
	mov	x1, [r1]
	mov	x5, x1
add	x5, 1
.LBB93_585:                             //   in Loop: Header=BB93_1 Depth=1
	mov	r1, rsp
add	r1, 88
	mov	[r1], x5
	jz	r0, .LBB93_588
	jmp	.LBB93_586
.LBB93_586:                             //   in Loop: Header=BB93_1 Depth=1
add	x1, 2
add	r0, -2147483648
add	x1, -2147483648
	jge	x1, r0, .LBB93_588
	jmp	.LBB93_587
.LBB93_587:                             //   in Loop: Header=BB93_1 Depth=1
	add	x5, [rsp+80]
	mov	x1, [x5]
	mov	r1, 255
	mov	r0, x9
	call	__bit_and
	mov	r1, -256
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 255
	mov	x1, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	[x5], rax
	mov	r0, rsp
add	r0, 88
	mov	x5, [r0]
.LBB93_588:                             //   in Loop: Header=BB93_1 Depth=1
add	x5, 1
	mov	r0, rsp
add	r0, 88
	mov	[r0], x5
	mov	x9, -2147483638
	jmp	.LBB93_1
.LBB93_589:
	mov	r0, rsp
add	r0, 84
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 88
	mov	r1, [r1]
	jz	r0, .LBB93_593
	jmp	.LBB93_590
.LBB93_590:
	mov	x0, r0
add	x0, -1
	mov	r2, r1
	sub	r2, x0
add	r0, 2147483647
add	r1, -2147483648
	mov	r3, 1
	jl	r1, r0, .LBB93_592
// %bb.591:
	mov	r3, 0
.LBB93_592:
	mov	r0, 0
	sub	r0, r3
	mov	r1, r2
	call	__bit_and
	add	x0, rax
	add	x0, [rsp+80]
	mov	r0, [x0]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	[x0], rax
	mov	r0, rsp
add	r0, 88
	mov	r1, [r0]
.LBB93_593:
	mov	r0, -1
	mov	r2, 1
	jg	r1, r0, .LBB93_595
// %bb.594:
	mov	r2, 0
.LBB93_595:
	mov	r0, 0
	sub	r0, r2
add	r1, 1
	call	__bit_and
add	rax, -1
	mov	x15, [rsp+512]
	mov	x14, [rsp+516]
	mov	x13, [rsp+520]
	mov	x12, [rsp+524]
	mov	x11, [rsp+528]
	mov	x10, [rsp+532]
	mov	x9, [rsp+536]
	mov	x8, [rsp+540]
	mov	x7, [rsp+544]
	mov	x6, [rsp+548]
	mov	x5, [rsp+552]
	mov	x4, [rsp+556]
	mov	x3, [rsp+560]
	mov	x2, [rsp+564]
	mov	x1, [rsp+568]
	mov	x0, [rsp+572]
add	rsp, 576
	ret
// -- End function
// -- Begin function format_integer
format_integer:                         // @format_integer
// %bb.0:
sub	rsp, 144
	mov	[rsp+140], x0
	mov	[rsp+136], x1
	mov	[rsp+132], x2
	mov	[rsp+128], x3
	mov	[rsp+124], x4
	mov	[rsp+120], x5
	mov	[rsp+116], x6
	mov	[rsp+112], x7
	mov	[rsp+108], x8
	mov	[rsp+104], x9
	mov	[rsp+100], x10
	mov	[rsp+96], x11
	mov	[rsp+92], x12
	mov	[rsp+88], x13
	mov	[rsp+84], x14
	mov	[rsp+80], x15
	mov	[rsp+12], r7
	mov	[rsp+8], r6
	mov	[rsp], r5
	mov	x10, r4
	mov	[rsp+4], r3
	mov	x8, r2
	mov	x9, r1
	mov	x0, r0
	mov	r0, x9
	mov	r1, x8
	call	__bit_or
	mov	x14, 0
	mov	x2, 1
	je	rax, x14, .LBB94_2
// %bb.1:
	mov	x2, 0
.LBB94_2:
	mov	x15, [rsp+160]
	jnz	rax, .LBB94_4
	jmp	.LBB94_3
.LBB94_3:
	jz	x15, .LBB94_14
	jmp	.LBB94_4
.LBB94_4:
	mov	r0, 0
	mov	r2, 1
	mov	r1, [rsp]
	je	r1, r0, .LBB94_6
// %bb.5:
	mov	r2, 0
.LBB94_6:
	mov	x1, mcasm_static_abea4a0b131ac189c8852248f0bcde4e
	mov	r1, mcasm_static_a0798eab031e00674a0fec7ab4aa2dd0
	sub	r1, x1
	sub	r0, r2
	call	__bit_and
	jnz	x2, .LBB94_8
	jmp	.LBB94_7
.LBB94_7:
	add	x1, rax
	mov	x6, 0
	mov	x7, x10
add	x7, -2147483648
	mov	x2, x9
	mov	x11, x8
	jmp	.LBB94_9
.LBB94_8:
	mov	r0, [rsp+16]
	mov	r1, -256
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	[rsp+16], rax
	mov	x14, 1
	jmp	.LBB94_14
.LBB94_9:                               // =>This Inner Loop Header: Depth=1
	mov	r3, 0
	mov	r0, x2
	mov	r1, x11
	mov	r2, x10
	call	__udivdi3
	mov	r3, 0
	mov	x4, rax
	mov	x5, t0
	mov	r0, x4
	mov	r1, x5
	mov	r2, x10
	call	__muldi3
	mov	r3, t0
	mov	r0, x2
	mov	r1, x11
	mov	r2, rax
	call	__subdi3
	add	rax, x1
	mov	r0, [rax]
	mov	r1, 255
	call	__bit_and
	mov	x3, rsp
add	x3, 16
	add	x3, x14
	mov	r0, [x3]
	mov	r1, -256
	mov	x12, rax
	call	__bit_and
	mov	r1, 255
	mov	x13, rax
	mov	r0, x12
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x13
	mov	r1, rax
	call	__bit_or
	mov	[x3], rax
	mov	r1, 1
	mov	r2, 1
	je	x11, x6, .LBB94_11
// %bb.10:                              //   in Loop: Header=BB94_9 Depth=1
	mov	r2, 0
.LBB94_11:                              //   in Loop: Header=BB94_9 Depth=1
add	x2, -2147483648
	jge	x2, x7, .LBB94_13
// %bb.12:                              //   in Loop: Header=BB94_9 Depth=1
	mov	r1, 0
.LBB94_13:                              //   in Loop: Header=BB94_9 Depth=1
	mov	r0, 0
	sub	r0, r2
add	r1, -1
add	x14, 1
	call	__bit_and
add	rax, 1
	mov	x2, x4
	mov	x11, x5
	jnz	rax, .LBB94_9
	jmp	.LBB94_14
.LBB94_14:                              // %.loopexit22
	mov	rax, 45
	mov	x2, 0
	mov	x5, 0
	mov	r0, [rsp+4]
	jnz	r0, .LBB94_19
	jmp	.LBB94_15
.LBB94_15:
	mov	r0, [rsp+144]
	mov	rax, 43
	jnz	r0, .LBB94_19
	jmp	.LBB94_16
.LBB94_16:
	mov	r1, [rsp+148]
	mov	r0, 0
	mov	x5, 1
	je	r1, r0, .LBB94_18
// %bb.17:
	mov	x5, 0
.LBB94_18:
	sub	r0, x5
	mov	r1, -32
	call	__bit_and
add	rax, 32
.LBB94_19:
	mov	[rsp+4], rax
	mov	x1, 0
	mov	x13, 0
	mov	x7, 0
	mov	x3, 0
	mov	r0, [rsp+8]
	jz	r0, .LBB94_29
	jmp	.LBB94_20
.LBB94_20:
	mov	r0, 8
	jne	x10, r0, .LBB94_24
	jmp	.LBB94_21
.LBB94_21:
	jz	x14, .LBB94_23
	jmp	.LBB94_22
.LBB94_22:
	mov	r0, rsp
add	r0, 16
	add	r0, x14
add	r0, -1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r0, 48
	je	rax, r0, .LBB94_29
	jmp	.LBB94_23
.LBB94_23:
	mov	x2, 48
	mov	x1, 1
	mov	x7, 1
	jmp	.LBB94_29
.LBB94_24:
	mov	r0, x9
	mov	r1, x8
	call	__bit_or
	jz	rax, .LBB94_29
	jmp	.LBB94_25
.LBB94_25:
	mov	r0, 16
	jne	x10, r0, .LBB94_29
	jmp	.LBB94_26
.LBB94_26:
	mov	r0, 0
	mov	x1, 1
	mov	r1, 1
	mov	r2, [rsp]
	je	r2, r0, .LBB94_28
// %bb.27:
	mov	r1, 0
.LBB94_28:
	sub	r0, r1
	mov	r1, 32
	call	__bit_and
	mov	x3, rax
add	x3, 88
	mov	x2, 48
	mov	x7, 2
	mov	x13, 1
.LBB94_29:
	mov	x11, x15
	sub	x11, x14
	jg	x15, x14, .LBB94_31
	jmp	.LBB94_30
.LBB94_30:
	mov	x11, 0
.LBB94_31:
	mov	r0, -1
	mov	x12, x11
	jg	x15, r0, .LBB94_33
	jmp	.LBB94_32
.LBB94_32:
	mov	x12, 0
.LBB94_33:
	mov	x4, [rsp+156]
	mov	x6, 0
	jg	x15, r0, .LBB94_35
	jmp	.LBB94_34
.LBB94_34:
	mov	x6, [rsp+152]
.LBB94_35:
	mov	[rsp+8], x2
	mov	x8, x12
	add	x8, x14
	mov	r0, x5
	call	__bit_not
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	add	rax, x8
	add	rax, x7
	mov	x10, x4
	sub	x10, rax
	mov	x2, x10
	jg	x4, rax, .LBB94_37
	jmp	.LBB94_36
.LBB94_36:
	mov	x2, 0
.LBB94_37:
	mov	r0, x6
	mov	r1, [rsp+12]
	call	__bit_or
	mov	x9, x0
add	x9, 4
	mov	x8, x0
add	x8, 8
	jnz	rax, .LBB94_47
	jmp	.LBB94_38
.LBB94_38:
	mov	r0, 1
	jl	x2, r0, .LBB94_47
	jmp	.LBB94_39
.LBB94_39:
	mov	r0, [x9]
	mov	x4, [x8]
	jz	r0, .LBB94_41
	jmp	.LBB94_40
.LBB94_40:                              // %.preheader20.preheader
	mov	x15, 1
	mov	x7, x10
	mov	r1, x4
	jmp	.LBB94_43
.LBB94_41:
	add	x4, x2
	mov	[x8], x4
	jmp	.LBB94_47
.LBB94_42:                              //   in Loop: Header=BB94_43 Depth=1
	mov	r0, [x9]
add	x7, -1
	mov	x4, r1
.LBB94_43:                              // %.preheader20
                                        // =>This Inner Loop Header: Depth=1
add	r1, 1
	jz	r0, .LBB94_46
	jmp	.LBB94_44
.LBB94_44:                              // %.preheader20
                                        //   in Loop: Header=BB94_43 Depth=1
add	r0, -2147483648
	mov	r2, r1
add	r2, -2147483648
	jge	r2, r0, .LBB94_46
	jmp	.LBB94_45
.LBB94_45:                              //   in Loop: Header=BB94_43 Depth=1
	add	x4, [x0]
	mov	r0, [x4]
	mov	r1, -256
	call	__bit_and
	mov	r1, 32
	mov	r0, rax
	call	__bit_or
	mov	[x4], rax
	mov	r1, 1
	add	r1, [x8]
.LBB94_46:                              //   in Loop: Header=BB94_43 Depth=1
	mov	[x8], r1
	jg	x7, x15, .LBB94_42
	jmp	.LBB94_47
.LBB94_47:                              // %.loopexit21
	jnz	x5, .LBB94_52
	jmp	.LBB94_48
.LBB94_48:
	mov	r0, [x9]
	jz	r0, .LBB94_51
	jmp	.LBB94_49
.LBB94_49:
	mov	x7, [x8]
add	r0, -2147483648
	mov	r1, x7
add	r1, -2147483647
	jge	r1, r0, .LBB94_51
	jmp	.LBB94_50
.LBB94_50:
	add	x7, [x0]
	mov	x5, [x7]
	mov	r1, 255
	mov	r0, [rsp+4]
	call	__bit_and
	mov	r1, -256
	mov	x4, rax
	mov	r0, x5
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x4
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	[x7], rax
.LBB94_51:
	add	[x8], 1
.LBB94_52:
	jz	x1, .LBB94_57
	jmp	.LBB94_53
.LBB94_53:
	mov	r0, [x9]
	jz	r0, .LBB94_56
	jmp	.LBB94_54
.LBB94_54:
	mov	x1, [x8]
add	r0, -2147483648
	mov	r1, x1
add	r1, -2147483647
	jge	r1, r0, .LBB94_56
	jmp	.LBB94_55
.LBB94_55:
	add	x1, [x0]
	mov	r0, [x1]
	mov	r1, -256
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, [rsp+8]
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	[x1], rax
.LBB94_56:
	add	[x8], 1
.LBB94_57:
	mov	x7, x2
	jz	x13, .LBB94_62
	jmp	.LBB94_58
.LBB94_58:
	mov	r0, [x9]
	jz	r0, .LBB94_61
	jmp	.LBB94_59
.LBB94_59:
	mov	x1, [x8]
add	r0, -2147483648
	mov	r1, x1
add	r1, -2147483647
	jge	r1, r0, .LBB94_61
	jmp	.LBB94_60
.LBB94_60:
	add	x1, [x0]
	mov	x2, [x1]
	mov	r1, 255
	mov	r0, x3
	call	__bit_and
	mov	r1, -256
	mov	x3, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x3
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	[x1], rax
.LBB94_61:
	add	[x8], 1
.LBB94_62:
	mov	r0, [rsp+12]
	jnz	r0, .LBB94_73
	jmp	.LBB94_63
.LBB94_63:
	jz	x6, .LBB94_73
	jmp	.LBB94_64
.LBB94_64:
	mov	r0, 1
	jl	x7, r0, .LBB94_73
	jmp	.LBB94_65
.LBB94_65:
	mov	r0, [x9]
	mov	x3, [x8]
	jz	r0, .LBB94_67
	jmp	.LBB94_66
.LBB94_66:                              // %.preheader18.preheader
	mov	x1, 1
	mov	x2, x10
	mov	r1, x3
	jmp	.LBB94_69
.LBB94_67:
	add	x3, x7
	mov	[x8], x3
	jmp	.LBB94_73
.LBB94_68:                              //   in Loop: Header=BB94_69 Depth=1
	mov	r0, [x9]
add	x2, -1
	mov	x3, r1
.LBB94_69:                              // %.preheader18
                                        // =>This Inner Loop Header: Depth=1
add	r1, 1
	jz	r0, .LBB94_72
	jmp	.LBB94_70
.LBB94_70:                              // %.preheader18
                                        //   in Loop: Header=BB94_69 Depth=1
add	r0, -2147483648
	mov	r2, r1
add	r2, -2147483648
	jge	r2, r0, .LBB94_72
	jmp	.LBB94_71
.LBB94_71:                              //   in Loop: Header=BB94_69 Depth=1
	add	x3, [x0]
	mov	r0, [x3]
	mov	r1, -256
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	[x3], rax
	mov	r1, 1
	add	r1, [x8]
.LBB94_72:                              //   in Loop: Header=BB94_69 Depth=1
	mov	[x8], r1
	jg	x2, x1, .LBB94_68
	jmp	.LBB94_73
.LBB94_73:                              // %.loopexit19
	mov	x1, 1
	jl	x12, x1, .LBB94_82
	jmp	.LBB94_74
.LBB94_74:
	mov	r1, [x9]
	mov	x3, [x8]
	jz	r1, .LBB94_76
	jmp	.LBB94_75
.LBB94_75:                              // %.preheader16.preheader
	mov	x2, 1
	mov	r0, x3
	jmp	.LBB94_78
.LBB94_76:
	add	x3, x12
	mov	[x8], x3
	jmp	.LBB94_82
.LBB94_77:                              //   in Loop: Header=BB94_78 Depth=1
	mov	r1, [x9]
add	x11, -1
	mov	x3, r0
.LBB94_78:                              // %.preheader16
                                        // =>This Inner Loop Header: Depth=1
add	r0, 1
	jz	r1, .LBB94_81
	jmp	.LBB94_79
.LBB94_79:                              // %.preheader16
                                        //   in Loop: Header=BB94_78 Depth=1
add	r1, -2147483648
	mov	r2, r0
add	r2, -2147483648
	jge	r2, r1, .LBB94_81
	jmp	.LBB94_80
.LBB94_80:                              //   in Loop: Header=BB94_78 Depth=1
	add	x3, [x0]
	mov	r0, [x3]
	mov	r1, -256
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	[x3], rax
	mov	r0, 1
	add	r0, [x8]
.LBB94_81:                              //   in Loop: Header=BB94_78 Depth=1
	mov	[x8], r0
	jg	x11, x2, .LBB94_77
	jmp	.LBB94_82
.LBB94_82:                              // %.loopexit17
	jl	x14, x1, .LBB94_91
	jmp	.LBB94_83
.LBB94_83:
	mov	r1, [x9]
	mov	x5, [x8]
	jz	r1, .LBB94_85
	jmp	.LBB94_84
.LBB94_84:                              // %.preheader14.preheader
	mov	x1, rsp
add	x1, 15
	mov	x4, 1
	mov	r0, x5
	jmp	.LBB94_87
.LBB94_85:
	add	x5, x14
	mov	[x8], x5
	jmp	.LBB94_91
.LBB94_86:                              //   in Loop: Header=BB94_87 Depth=1
	mov	r1, [x9]
add	x14, -1
	mov	x5, r0
.LBB94_87:                              // %.preheader14
                                        // =>This Inner Loop Header: Depth=1
add	r0, 1
	jz	r1, .LBB94_90
	jmp	.LBB94_88
.LBB94_88:                              // %.preheader14
                                        //   in Loop: Header=BB94_87 Depth=1
add	r1, -2147483648
	mov	r2, r0
add	r2, -2147483648
	jge	r2, r1, .LBB94_90
	jmp	.LBB94_89
.LBB94_89:                              //   in Loop: Header=BB94_87 Depth=1
	mov	r0, x1
	add	r0, x14
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	add	x5, [x0]
	mov	r0, [x5]
	mov	r1, -256
	mov	x2, rax
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	[x5], rax
	mov	r0, 1
	add	r0, [x8]
.LBB94_90:                              //   in Loop: Header=BB94_87 Depth=1
	mov	[x8], r0
	jg	x14, x4, .LBB94_86
	jmp	.LBB94_91
.LBB94_91:                              // %.loopexit15
	mov	r0, [rsp+12]
	jz	r0, .LBB94_101
	jmp	.LBB94_92
.LBB94_92:                              // %.loopexit15
	mov	r0, 1
	jl	x7, r0, .LBB94_101
	jmp	.LBB94_93
.LBB94_93:
	mov	r1, [x9]
	mov	x2, [x8]
	jz	r1, .LBB94_95
	jmp	.LBB94_94
.LBB94_94:                              // %.preheader.preheader
	mov	x1, 1
	mov	r0, x2
	jmp	.LBB94_97
.LBB94_95:
	add	x2, x7
	mov	[x8], x2
	jmp	.LBB94_101
.LBB94_96:                              //   in Loop: Header=BB94_97 Depth=1
	mov	r1, [x9]
add	x10, -1
	mov	x2, r0
.LBB94_97:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
add	r0, 1
	jz	r1, .LBB94_100
	jmp	.LBB94_98
.LBB94_98:                              // %.preheader
                                        //   in Loop: Header=BB94_97 Depth=1
add	r1, -2147483648
	mov	r2, r0
add	r2, -2147483648
	jge	r2, r1, .LBB94_100
	jmp	.LBB94_99
.LBB94_99:                              //   in Loop: Header=BB94_97 Depth=1
	add	x2, [x0]
	mov	r0, [x2]
	mov	r1, -256
	call	__bit_and
	mov	r1, 32
	mov	r0, rax
	call	__bit_or
	mov	[x2], rax
	mov	r0, 1
	add	r0, [x8]
.LBB94_100:                             //   in Loop: Header=BB94_97 Depth=1
	mov	[x8], r0
	jg	x10, x1, .LBB94_96
	jmp	.LBB94_101
.LBB94_101:                             // %.loopexit
	mov	x15, [rsp+80]
	mov	x14, [rsp+84]
	mov	x13, [rsp+88]
	mov	x12, [rsp+92]
	mov	x11, [rsp+96]
	mov	x10, [rsp+100]
	mov	x9, [rsp+104]
	mov	x8, [rsp+108]
	mov	x7, [rsp+112]
	mov	x6, [rsp+116]
	mov	x5, [rsp+120]
	mov	x4, [rsp+124]
	mov	x3, [rsp+128]
	mov	x2, [rsp+132]
	mov	x1, [rsp+136]
	mov	x0, [rsp+140]
add	rsp, 144
	ret
// -- End function
// -- Begin function vsprintf
vsprintf:                               // @vsprintf
// %bb.0:
	mov	r3, r1
	mov	r1, -1
	mov	r4, r2
	mov	r2, r3
	mov	r3, r4
	jmp	vsnprintf
// -- End function
// -- Begin function abort
abort:                                  // @abort
// %bb.0:
	inline tellraw @a "[DataPack] Aborted! Program has crashed, run /reload to reset."
.LBB96_1:                               // =>This Inner Loop Header: Depth=1
	jmp	.LBB96_1
// -- End function
// -- Begin function atexit
atexit:                                 // @atexit
// %bb.0:
	mov	rax, 0
	ret
// -- End function
// -- Begin function abs
abs:                                    // @abs
// %bb.0:
	mov	r1, -1
	mov	rax, r0
	jg	rax, r1, .LBB98_2
	jmp	.LBB98_1
.LBB98_1:
	mov	r0, 0
	sub	r0, rax
	mov	rax, r0
.LBB98_2:
	ret
// -- End function
// -- Begin function atoi
atoi:                                   // @atoi
// %bb.0:
	mov	r1, 0
	mov	r2, 10
	jmp	strtol
// -- End function
// -- Begin function atol
atol:                                   // @atol
// %bb.0:
	mov	r1, 0
	mov	r2, 10
	jmp	strtol
// -- End function
// -- Begin function atoll
atoll:                                  // @atoll
// %bb.0:
	mov	r1, 0
	mov	r2, 10
	jmp	strtoll
// -- End function
// -- Begin function div
div:                                    // @div
// %bb.0:
	mov	r3, r1
	div	r3, r2
	mov	[r0], r3
	mul	r3, r2
	sub	r1, r3
add	r0, 4
	mov	[r0], r1
	ret
// -- End function
// -- Begin function ldiv
ldiv:                                   // @ldiv
// %bb.0:
	mov	r3, r1
	div	r3, r2
	mov	[r0], r3
	mul	r3, r2
	sub	r1, r3
add	r0, 4
	mov	[r0], r1
	ret
// -- End function
// -- Begin function lldiv
lldiv:                                  // @lldiv
// %bb.0:
sub	rsp, 20
	mov	[rsp+16], x0
	mov	[rsp+12], x1
	mov	[rsp+8], x2
	mov	[rsp+4], x3
	mov	[rsp], x4
	mov	x0, r4
	mov	x1, r3
	mov	x2, r2
	mov	x3, r1
	mov	x4, r0
	mov	r0, x3
	mov	r1, x2
	mov	r2, x1
	mov	r3, x0
	call	__divdi3
	mov	r1, t0
	mov	r0, x4
add	r0, 4
	mov	[r0], r1
	mov	[x4], rax
	mov	r0, rax
	mov	r2, x1
	mov	r3, x0
	call	__muldi3
	mov	r3, t0
	mov	r0, x3
	mov	r1, x2
	mov	r2, rax
	call	__subdi3
	mov	r0, x4
add	r0, 8
add	x4, 12
	mov	[x4], t0
	mov	[r0], rax
	mov	x4, [rsp]
	mov	x3, [rsp+4]
	mov	x2, [rsp+8]
	mov	x1, [rsp+12]
	mov	x0, [rsp+16]
add	rsp, 20
	ret
// -- End function
// -- Begin function gcvt
gcvt:                                   // @gcvt
// %bb.0:
sub	rsp, 1084
	mov	[rsp+1080], x0
	mov	[rsp+1076], x1
	mov	[rsp+1072], x2
	mov	[rsp+1068], x3
	mov	[rsp+1064], x4
	mov	[rsp+1060], x5
	mov	[rsp+1056], x6
	mov	[rsp+1052], x7
	mov	[rsp+1048], x8
	mov	[rsp+1044], x9
	mov	[rsp+1040], x10
	mov	[rsp+1036], x11
	mov	[rsp+1032], x12
	mov	[rsp+1028], x13
	mov	x0, r3
	mov	x3, r2
	mov	x2, r1
	mov	x4, r0
	jz	x0, .LBB105_129
	jmp	.LBB105_1
.LBB105_1:
	mov	r0, 0
	jg	x3, r0, .LBB105_3
	jmp	.LBB105_2
.LBB105_2:
	mov	r0, [x0]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	[x0], rax
	jmp	.LBB105_129
.LBB105_3:
	mov	x11, x3
add	x11, -2147483648
	mov	r0, -2147483536
	mov	x5, 1
	mov	r1, 1
	jg	x11, r0, .LBB105_5
// %bb.4:
	mov	r1, 0
.LBB105_5:
	mov	r0, 0
	sub	r0, r1
	mov	r1, x3
add	r1, -112
	mov	x1, 0
	call	__bit_and
	mov	r0, rax
add	r0, -2147483536
	mov	r1, -2146435472
	jl	r0, r1, .LBB105_7
// %bb.6:
	mov	x5, 0
.LBB105_7:
	sub	x1, x5
add	rax, -1048064
	mov	r0, x1
	mov	r1, rax
	call	__bit_and
	mov	x5, rax
	mov	x6, x5
add	x6, 1048576
	mov	r0, 625
	mov	x1, rsp
add	x1, 4
	jl	x3, r0, .LBB105_10
	jmp	.LBB105_8
.LBB105_8:
	mov	r0, x6
	call	malloc
	mov	x1, rax
	jnz	x1, .LBB105_10
	jmp	.LBB105_9
.LBB105_9:
	mov	r0, x4
	mov	r1, x2
	mov	r2, x3
	mov	r3, x0
	call	gcvt_fast
	jmp	.LBB105_129
.LBB105_10:
	mov	r2, x3
add	r2, -1
add	x5, 1048176
	mov	r0, x4
	mov	r1, x2
	mov	r3, x1
	call	d2exp_buffered_n
	mov	x7, rax
	mov	r0, x7
add	r0, -2147483648
add	x6, -2147483648
add	x5, 399
	jl	r0, x6, .LBB105_12
	jmp	.LBB105_11
.LBB105_11:
	mov	x7, x5
.LBB105_12:
	add	x7, x1
	mov	r0, [x7]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	r1, 3
	mov	[x7], rax
	mov	r0, x1
	call	__bit_and
	mov	x8, rax
	jz	x8, .LBB105_14
	jmp	.LBB105_13
.LBB105_13:
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
	mov	x7, rax
	jmp	.LBB105_15
.LBB105_14:
	mov	x7, [x1]
	mov	r0, 5136718
	je	x7, r0, .LBB105_29
	jmp	.LBB105_15
.LBB105_15:
	mov	r1, 255
	mov	r0, x7
	call	__bit_and
	mov	x9, 0
	mov	x12, mcasm_static_3fbd6e67ca14cf5a4c4249a5cf47f5f8
	jz	rax, .LBB105_20
	jmp	.LBB105_16
.LBB105_16:                             // %.preheader.i.preheader
	mov	x13, x1
add	x13, 1
	mov	x9, x7
.LBB105_17:                             // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x12]
	mov	r1, 255
	call	__bit_and
	mov	r1, 255
	mov	x10, rax
	mov	r0, x9
	call	__bit_and
	mov	r0, x9
	jne	rax, x10, .LBB105_19
	jmp	.LBB105_18
.LBB105_18:                             //   in Loop: Header=BB105_17 Depth=1
	mov	r0, [x13]
	mov	r1, 255
add	x12, 1
	call	__bit_and
	mov	x9, rax
add	x13, 1
	mov	r0, 0
	jnz	x9, .LBB105_17
	jmp	.LBB105_19
.LBB105_19:
	mov	r1, 255
	call	__bit_and
	mov	x9, rax
.LBB105_20:                             // %strcmp.exit
	mov	r0, [x12]
	mov	r1, 255
	call	__bit_and
	je	x9, rax, .LBB105_29
	jmp	.LBB105_21
.LBB105_21:
	jnz	x8, .LBB105_23
	jmp	.LBB105_22
.LBB105_22:
	mov	x7, [x1]
	mov	r0, 7233902
	je	x7, r0, .LBB105_29
	jmp	.LBB105_23
.LBB105_23:
	mov	r1, 255
	mov	r0, x7
	call	__bit_and
	mov	x9, 0
	mov	x12, mcasm_static_760ecf6681c729f1ad8f31cd17c23263
	jz	rax, .LBB105_28
	jmp	.LBB105_24
.LBB105_24:                             // %.preheader.i4.preheader
	mov	x13, x1
add	x13, 1
	mov	x9, x7
.LBB105_25:                             // %.preheader.i4
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x12]
	mov	r1, 255
	call	__bit_and
	mov	r1, 255
	mov	x10, rax
	mov	r0, x9
	call	__bit_and
	mov	r0, x9
	jne	rax, x10, .LBB105_27
	jmp	.LBB105_26
.LBB105_26:                             //   in Loop: Header=BB105_25 Depth=1
	mov	r0, [x13]
	mov	r1, 255
add	x12, 1
	call	__bit_and
	mov	x9, rax
add	x13, 1
	mov	r0, 0
	jnz	x9, .LBB105_25
	jmp	.LBB105_27
.LBB105_27:
	mov	r1, 255
	call	__bit_and
	mov	x9, rax
.LBB105_28:                             // %strcmp.exit6
	mov	r0, [x12]
	mov	r1, 255
	call	__bit_and
	jne	x9, rax, .LBB105_51
	jmp	.LBB105_29
.LBB105_29:                             // %strcmp.exit.thread
	mov	r0, [x0]
	mov	x2, x0
	mov	r1, -256
add	x2, 1
	call	__bit_and
	mov	r1, 110
	mov	r0, rax
	call	__bit_or
	mov	[x0], rax
	mov	r0, [x2]
	mov	x3, x0
	mov	r1, -256
add	x3, 2
	call	__bit_and
	mov	r1, 97
	mov	r0, rax
	call	__bit_or
	mov	[x2], rax
	mov	r0, [x3]
	mov	x2, x0
	mov	r1, -256
add	x2, 3
	call	__bit_and
	mov	r1, 110
	mov	r0, rax
	call	__bit_or
	mov	[x3], rax
	mov	r0, [x2]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	r0, -2147483023
	mov	[x2], rax
	jl	x11, r0, .LBB105_129
	jmp	.LBB105_30
.LBB105_30:
	mov	r0, 131072
	mov	r1, [r0]
	mov	r2, 1296125004
	je	r1, r2, .LBB105_32
	jmp	.LBB105_31
.LBB105_31:
	mov	[r0], 1296125004
	mov	r0, 131073
	mov	[r0], 131075
	mov	r0, 131074
	mov	[r0], 0
	mov	x2, x1
add	x2, -1
	mov	r2, [x2]
	mov	r1, 0
	mov	x3, 0
	mov	r0, 0
	jmp	.LBB105_41
.LBB105_32:
	mov	r0, 131074
	mov	x3, [r0]
	mov	x2, x1
add	x2, -1
	mov	r1, 0
	mov	r0, 1
	jne	x3, r1, .LBB105_34
// %bb.33:
	mov	r0, 0
.LBB105_34:
	mov	r2, [x2]
	jz	x3, .LBB105_41
	jmp	.LBB105_35
.LBB105_35:
	jge	x3, x2, .LBB105_41
	jmp	.LBB105_36
.LBB105_36:                             // %.preheader.i7.preheader
	mov	r3, 0
.LBB105_37:                             // %.preheader.i7
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, x3
	mov	r0, r1
add	r0, 1
	mov	x3, [r0]
	mov	r0, 1
	jne	x3, r3, .LBB105_39
// %bb.38:                              // %.preheader.i7
                                        //   in Loop: Header=BB105_37 Depth=1
	mov	r0, 0
.LBB105_39:                             // %.preheader.i7
                                        //   in Loop: Header=BB105_37 Depth=1
	jz	x3, .LBB105_41
	jmp	.LBB105_40
.LBB105_40:                             // %.preheader.i7
                                        //   in Loop: Header=BB105_37 Depth=1
	jl	x3, x2, .LBB105_37
	jmp	.LBB105_41
.LBB105_41:                             // %.loopexit.i
	jne	x3, x2, .LBB105_43
	jmp	.LBB105_42
.LBB105_42:
	call	abort
.LBB105_43:
	mov	r3, 131074
	jz	r1, .LBB105_47
	jmp	.LBB105_44
.LBB105_44:
	mov	r3, [r1]
	mov	r4, r3
	add	r4, r1
	jne	r4, x2, .LBB105_46
	jmp	.LBB105_45
.LBB105_45:
	add	r3, r2
	mov	[r1], r3
	mov	x2, r1
	jmp	.LBB105_48
.LBB105_46:
add	r1, 1
	mov	r3, r1
.LBB105_47:
	mov	[r3], x2
	mov	[x1], x3
.LBB105_48:
	mov	r1, 1
	call	__bit_and
	jz	rax, .LBB105_129
	jmp	.LBB105_49
.LBB105_49:
	mov	r0, [x2]
	mov	r1, r0
	add	r1, x2
	jne	r1, x3, .LBB105_129
	jmp	.LBB105_50
.LBB105_50:
	add	r0, [x3]
	mov	[x2], r0
add	x3, 1
	mov	r0, [x3]
add	x2, 1
	mov	[x2], r0
	jmp	.LBB105_129
.LBB105_51:
	mov	x12, mcasm_static_fba4a0ea904fafa57dfc353d7c31778d
	mov	x9, x7
	mov	x13, x1
	jnz	x8, .LBB105_57
	jmp	.LBB105_52
.LBB105_52:
	mov	x7, [x1]
	mov	r1, 1768320585
	mov	x9, x7
	mov	x13, x1
	jne	x7, r1, .LBB105_57
	jmp	.LBB105_53
.LBB105_53:                             // %.preheader5.i10.preheader
	mov	x9, -2139062144
	mov	x13, x1
.LBB105_54:                             // %.preheader5.i10
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x9, .LBB105_71
	jmp	.LBB105_55
.LBB105_55:                             //   in Loop: Header=BB105_54 Depth=1
add	x13, 4
add	x12, 4
	mov	r1, [x13]
	mov	r0, [x12]
	je	r1, r0, .LBB105_54
	jmp	.LBB105_56
.LBB105_56:
	mov	x9, r1
.LBB105_57:
	mov	r1, 255
	mov	r0, x9
	call	__bit_and
	mov	x10, 0
	jz	rax, .LBB105_62
	jmp	.LBB105_58
.LBB105_58:                             // %.preheader.i8.preheader
add	x13, 1
.LBB105_59:                             // %.preheader.i8
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x12]
	mov	r1, 255
	call	__bit_and
	mov	r1, 255
	mov	x10, rax
	mov	r0, x9
	call	__bit_and
	mov	r0, x9
	jne	rax, x10, .LBB105_61
	jmp	.LBB105_60
.LBB105_60:                             //   in Loop: Header=BB105_59 Depth=1
	mov	r0, [x13]
	mov	r1, 255
add	x12, 1
	call	__bit_and
	mov	x9, rax
add	x13, 1
	mov	r0, 0
	jnz	x9, .LBB105_59
	jmp	.LBB105_61
.LBB105_61:
	mov	r1, 255
	call	__bit_and
	mov	x10, rax
.LBB105_62:                             // %strcmp.exit11
	mov	r0, [x12]
	mov	r1, 255
	call	__bit_and
	je	x10, rax, .LBB105_71
	jmp	.LBB105_63
.LBB105_63:
	jnz	x8, .LBB105_65
	jmp	.LBB105_64
.LBB105_64:
	mov	x7, [x1]
	mov	r0, 6712937
	je	x7, r0, .LBB105_71
	jmp	.LBB105_65
.LBB105_65:
	mov	r1, 255
	mov	r0, x7
	call	__bit_and
	mov	x9, 0
	mov	x12, mcasm_static_4b3346717c4e5d4dfc64dcf9c1c8076d
	jz	rax, .LBB105_70
	jmp	.LBB105_66
.LBB105_66:                             // %.preheader.i12.preheader
	mov	x13, x1
add	x13, 1
	mov	x9, x7
.LBB105_67:                             // %.preheader.i12
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x12]
	mov	r1, 255
	call	__bit_and
	mov	r1, 255
	mov	x10, rax
	mov	r0, x9
	call	__bit_and
	mov	r0, x9
	jne	rax, x10, .LBB105_69
	jmp	.LBB105_68
.LBB105_68:                             //   in Loop: Header=BB105_67 Depth=1
	mov	r0, [x13]
	mov	r1, 255
add	x12, 1
	call	__bit_and
	mov	x9, rax
add	x13, 1
	mov	r0, 0
	jnz	x9, .LBB105_67
	jmp	.LBB105_69
.LBB105_69:
	mov	r1, 255
	call	__bit_and
	mov	x9, rax
.LBB105_70:                             // %strcmp.exit15
	mov	r0, [x12]
	mov	r1, 255
	call	__bit_and
	jne	x9, rax, .LBB105_93
	jmp	.LBB105_71
.LBB105_71:                             // %strcmp.exit11.thread
	mov	r0, [x0]
	mov	x2, x0
	mov	r1, -256
add	x2, 1
	call	__bit_and
	mov	r1, 105
	mov	r0, rax
	call	__bit_or
	mov	[x0], rax
	mov	r0, [x2]
	mov	x3, x0
	mov	r1, -256
add	x3, 2
	call	__bit_and
	mov	r1, 110
	mov	r0, rax
	call	__bit_or
	mov	[x2], rax
	mov	r0, [x3]
	mov	x2, x0
	mov	r1, -256
add	x2, 3
	call	__bit_and
	mov	r1, 102
	mov	r0, rax
	call	__bit_or
	mov	[x3], rax
	mov	r0, [x2]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	r0, -2147483023
	mov	[x2], rax
	jl	x11, r0, .LBB105_129
	jmp	.LBB105_72
.LBB105_72:
	mov	r0, 131072
	mov	r1, [r0]
	mov	r2, 1296125004
	je	r1, r2, .LBB105_74
	jmp	.LBB105_73
.LBB105_73:
	mov	[r0], 1296125004
	mov	r0, 131073
	mov	[r0], 131075
	mov	r0, 131074
	mov	[r0], 0
	mov	x2, x1
add	x2, -1
	mov	r2, [x2]
	mov	r1, 0
	mov	x3, 0
	mov	r0, 0
	jmp	.LBB105_83
.LBB105_74:
	mov	r0, 131074
	mov	x3, [r0]
	mov	x2, x1
add	x2, -1
	mov	r1, 0
	mov	r0, 1
	jne	x3, r1, .LBB105_76
// %bb.75:
	mov	r0, 0
.LBB105_76:
	mov	r2, [x2]
	jz	x3, .LBB105_83
	jmp	.LBB105_77
.LBB105_77:
	jge	x3, x2, .LBB105_83
	jmp	.LBB105_78
.LBB105_78:                             // %.preheader.i19.preheader
	mov	r3, 0
.LBB105_79:                             // %.preheader.i19
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, x3
	mov	r0, r1
add	r0, 1
	mov	x3, [r0]
	mov	r0, 1
	jne	x3, r3, .LBB105_81
// %bb.80:                              // %.preheader.i19
                                        //   in Loop: Header=BB105_79 Depth=1
	mov	r0, 0
.LBB105_81:                             // %.preheader.i19
                                        //   in Loop: Header=BB105_79 Depth=1
	jz	x3, .LBB105_83
	jmp	.LBB105_82
.LBB105_82:                             // %.preheader.i19
                                        //   in Loop: Header=BB105_79 Depth=1
	jl	x3, x2, .LBB105_79
	jmp	.LBB105_83
.LBB105_83:                             // %.loopexit.i18
	jne	x3, x2, .LBB105_85
	jmp	.LBB105_84
.LBB105_84:
	call	abort
.LBB105_85:
	mov	r3, 131074
	jz	r1, .LBB105_89
	jmp	.LBB105_86
.LBB105_86:
	mov	r3, [r1]
	mov	r4, r3
	add	r4, r1
	jne	r4, x2, .LBB105_88
	jmp	.LBB105_87
.LBB105_87:
	add	r3, r2
	mov	[r1], r3
	mov	x2, r1
	jmp	.LBB105_90
.LBB105_88:
add	r1, 1
	mov	r3, r1
.LBB105_89:
	mov	[r3], x2
	mov	[x1], x3
.LBB105_90:
	mov	r1, 1
	call	__bit_and
	jz	rax, .LBB105_129
	jmp	.LBB105_91
.LBB105_91:
	mov	r0, [x2]
	mov	r1, r0
	add	r1, x2
	jne	r1, x3, .LBB105_129
	jmp	.LBB105_92
.LBB105_92:
	add	r0, [x3]
	mov	[x2], r0
add	x3, 1
	mov	r0, [x3]
add	x2, 1
	mov	[x2], r0
	jmp	.LBB105_129
.LBB105_93:
	mov	x12, mcasm_static_cc5d6cc9e217724ec301015dbbf8939f
	mov	x9, x7
	mov	x13, x1
	jnz	x8, .LBB105_99
	jmp	.LBB105_94
.LBB105_94:
	mov	x7, [x1]
	mov	r1, 1718503725
	mov	x9, x7
	mov	x13, x1
	jne	x7, r1, .LBB105_99
	jmp	.LBB105_95
.LBB105_95:                             // %.preheader5.i23.preheader
	mov	x9, -2139062144
	mov	x13, x1
.LBB105_96:                             // %.preheader5.i23
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x9, .LBB105_117
	jmp	.LBB105_97
.LBB105_97:                             //   in Loop: Header=BB105_96 Depth=1
add	x13, 4
add	x12, 4
	mov	r1, [x13]
	mov	r0, [x12]
	je	r1, r0, .LBB105_96
	jmp	.LBB105_98
.LBB105_98:
	mov	x9, r1
.LBB105_99:
	mov	r1, 255
	mov	r0, x9
	call	__bit_and
	mov	x10, 0
	jz	rax, .LBB105_104
	jmp	.LBB105_100
.LBB105_100:                            // %.preheader.i21.preheader
add	x13, 1
.LBB105_101:                            // %.preheader.i21
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x12]
	mov	r1, 255
	call	__bit_and
	mov	r1, 255
	mov	x10, rax
	mov	r0, x9
	call	__bit_and
	mov	r0, x9
	jne	rax, x10, .LBB105_103
	jmp	.LBB105_102
.LBB105_102:                            //   in Loop: Header=BB105_101 Depth=1
	mov	r0, [x13]
	mov	r1, 255
add	x12, 1
	call	__bit_and
	mov	x9, rax
add	x13, 1
	mov	r0, 0
	jnz	x9, .LBB105_101
	jmp	.LBB105_103
.LBB105_103:
	mov	r1, 255
	call	__bit_and
	mov	x10, rax
.LBB105_104:                            // %strcmp.exit24
	mov	r0, [x12]
	mov	r1, 255
	call	__bit_and
	je	x10, rax, .LBB105_117
	jmp	.LBB105_105
.LBB105_105:
	mov	x9, mcasm_static_da38ae9fb5dcf6ec107248c010704ea3
	mov	x10, x1
	jnz	x8, .LBB105_111
	jmp	.LBB105_106
.LBB105_106:
	mov	x7, [x1]
	mov	r1, 1718511917
	mov	x10, x1
	jne	x7, r1, .LBB105_111
	jmp	.LBB105_107
.LBB105_107:                            // %.preheader5.i27.preheader
	mov	x7, -2139062144
	mov	x10, x1
.LBB105_108:                            // %.preheader5.i27
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x7, .LBB105_117
	jmp	.LBB105_109
.LBB105_109:                            //   in Loop: Header=BB105_108 Depth=1
add	x10, 4
add	x9, 4
	mov	r1, [x10]
	mov	r0, [x9]
	je	r1, r0, .LBB105_108
	jmp	.LBB105_110
.LBB105_110:
	mov	x7, r1
.LBB105_111:
	mov	r1, 255
	mov	r0, x7
	call	__bit_and
	mov	x8, 0
	jz	rax, .LBB105_116
	jmp	.LBB105_112
.LBB105_112:                            // %.preheader.i25.preheader
add	x10, 1
.LBB105_113:                            // %.preheader.i25
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x9]
	mov	r1, 255
	call	__bit_and
	mov	r1, 255
	mov	x8, rax
	mov	r0, x7
	call	__bit_and
	mov	r0, x7
	jne	rax, x8, .LBB105_115
	jmp	.LBB105_114
.LBB105_114:                            //   in Loop: Header=BB105_113 Depth=1
	mov	r0, [x10]
	mov	r1, 255
add	x9, 1
	call	__bit_and
	mov	x7, rax
add	x10, 1
	mov	r0, 0
	jnz	x7, .LBB105_113
	jmp	.LBB105_115
.LBB105_115:
	mov	r1, 255
	call	__bit_and
	mov	x8, rax
.LBB105_116:                            // %strcmp.exit28
	mov	r0, [x9]
	mov	r1, 255
	call	__bit_and
	jne	x8, rax, .LBB105_119
	jmp	.LBB105_117
.LBB105_117:                            // %strcmp.exit24.thread
	mov	r0, [x0]
	mov	x2, x0
	mov	r1, -256
add	x2, 1
	call	__bit_and
	mov	r1, 45
	mov	r0, rax
	call	__bit_or
	mov	[x0], rax
	mov	r0, [x2]
	mov	x3, x0
	mov	r1, -256
add	x3, 2
	call	__bit_and
	mov	r1, 105
	mov	r0, rax
	call	__bit_or
	mov	[x2], rax
	mov	r0, [x3]
	mov	x2, x0
	mov	r1, -256
add	x2, 3
	call	__bit_and
	mov	r1, 110
	mov	r0, rax
	call	__bit_or
	mov	[x3], rax
	mov	r0, [x2]
	mov	x3, x0
	mov	r1, -256
add	x3, 4
	call	__bit_and
	mov	r1, 102
	mov	r0, rax
	call	__bit_or
	mov	[x2], rax
	mov	r0, [x3]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	r0, -2147483023
	mov	[x3], rax
	jl	x11, r0, .LBB105_129
	jmp	.LBB105_118
.LBB105_118:
	mov	r0, x1
	call	free
	jmp	.LBB105_129
.LBB105_119:
	mov	r1, rsp
	mov	r0, x1
	call	parse_exp10
	jnz	rax, .LBB105_127
	jmp	.LBB105_120
.LBB105_120:
	mov	r0, [rsp]
	mov	r1, -4
	jl	r0, r1, .LBB105_127
	jmp	.LBB105_121
.LBB105_121:
	jge	r0, x3, .LBB105_127
	jmp	.LBB105_122
.LBB105_122:
	call	__bit_not
	add	x3, rax
	mov	r0, 0
	mov	r1, 1
	jg	x3, r0, .LBB105_124
// %bb.123:
	mov	r1, 0
.LBB105_124:
	sub	r0, r1
	mov	r1, x3
	call	__bit_and
	mov	r0, x4
	mov	r1, x2
	mov	r2, rax
	mov	r3, x1
	call	d2fixed_buffered_n
	mov	x2, rax
	mov	r0, x2
add	r0, -2147483648
	jl	r0, x6, .LBB105_126
	jmp	.LBB105_125
.LBB105_125:
	mov	x2, x5
.LBB105_126:
	add	x2, x1
	mov	r0, [x2]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	[x2], rax
.LBB105_127:
	mov	r0, x1
	call	trim_trailing_zeros_g
	mov	r0, x1
	call	strlen
add	rax, 1
	mov	r0, x0
	mov	r1, x1
	mov	r2, rax
	call	memcpy
	mov	r0, -2147483023
	jl	x11, r0, .LBB105_129
	jmp	.LBB105_128
.LBB105_128:
	mov	r0, x1
	call	free
.LBB105_129:                            // %free.exit
	mov	rax, x0
	mov	x13, [rsp+1028]
	mov	x12, [rsp+1032]
	mov	x11, [rsp+1036]
	mov	x10, [rsp+1040]
	mov	x9, [rsp+1044]
	mov	x8, [rsp+1048]
	mov	x7, [rsp+1052]
	mov	x6, [rsp+1056]
	mov	x5, [rsp+1060]
	mov	x4, [rsp+1064]
	mov	x3, [rsp+1068]
	mov	x2, [rsp+1072]
	mov	x1, [rsp+1076]
	mov	x0, [rsp+1080]
add	rsp, 1084
	ret
// -- End function
// -- Begin function parse_exp10
parse_exp10:                            // @parse_exp10
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
	mov	r1, 3
	mov	x1, r0
	call	__bit_and
	mov	x2, rax
	mov	x4, x1
	jz	x2, .LBB106_2
	jmp	.LBB106_1
.LBB106_1:                              // %.preheader12.preheader
	mov	x3, x1
add	x3, 1
	mov	x5, 101
	mov	x4, x1
	jmp	.LBB106_4
.LBB106_2:                              // %.loopexit9.i
	mov	x3, [x4]
	mov	r0, 16843008
	sub	r0, x3
	mov	r1, x3
	call	__bit_or
	mov	r1, -2139062144
	mov	x5, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x5, .LBB106_9
	jmp	.LBB106_3
.LBB106_3:                              // %.preheader5.i.preheader
	jmp	.LBB106_7
.LBB106_4:                              // %.preheader12
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x4]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB106_12
	jmp	.LBB106_5
.LBB106_5:                              // %.preheader12
                                        //   in Loop: Header=BB106_4 Depth=1
	je	rax, x5, .LBB106_27
	jmp	.LBB106_6
.LBB106_6:                              //   in Loop: Header=BB106_4 Depth=1
	mov	r1, 3
add	x4, 1
	mov	r0, x3
	call	__bit_and
add	x3, 1
	jz	rax, .LBB106_2
	jmp	.LBB106_4
.LBB106_7:                              // %.preheader5.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 1701143909
	mov	r0, x3
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, x3
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x5, .LBB106_9
	jmp	.LBB106_8
.LBB106_8:                              //   in Loop: Header=BB106_7 Depth=1
add	x4, 4
	mov	x3, [x4]
	mov	r0, 16843008
	sub	r0, x3
	mov	r1, x3
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	je	rax, x5, .LBB106_7
	jmp	.LBB106_9
.LBB106_9:                              // %.loopexit6.i.preheader
add	x4, -1
	mov	x3, 101
.LBB106_10:                             // %.loopexit6.i
                                        // =>This Inner Loop Header: Depth=1
add	x4, 1
	mov	r0, [x4]
	mov	r1, 255
	call	__bit_and
	je	rax, x3, .LBB106_26
	jmp	.LBB106_11
.LBB106_11:                             // %.loopexit6.i
                                        //   in Loop: Header=BB106_10 Depth=1
	jnz	rax, .LBB106_10
	jmp	.LBB106_12
.LBB106_12:                             // %.loopexit
	jz	x2, .LBB106_14
	jmp	.LBB106_13
.LBB106_13:                             // %.preheader7.preheader
	mov	x2, x1
add	x2, 1
	mov	x3, 69
	jmp	.LBB106_16
.LBB106_14:                             // %.loopexit9.i2
	mov	x2, [x1]
	mov	r0, 16843008
	sub	r0, x2
	mov	r1, x2
	call	__bit_or
	mov	r1, -2139062144
	mov	x3, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x3, .LBB106_21
	jmp	.LBB106_15
.LBB106_15:                             // %.preheader5.i4.preheader
	jmp	.LBB106_19
.LBB106_16:                             // %.preheader7
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB106_37
	jmp	.LBB106_17
.LBB106_17:                             // %.preheader7
                                        //   in Loop: Header=BB106_16 Depth=1
	je	rax, x3, .LBB106_25
	jmp	.LBB106_18
.LBB106_18:                             //   in Loop: Header=BB106_16 Depth=1
	mov	r1, 3
add	x1, 1
	mov	r0, x2
	call	__bit_and
add	x2, 1
	jz	rax, .LBB106_14
	jmp	.LBB106_16
.LBB106_19:                             // %.preheader5.i4
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 1162167621
	mov	r0, x2
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, x2
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x3, .LBB106_21
	jmp	.LBB106_20
.LBB106_20:                             //   in Loop: Header=BB106_19 Depth=1
add	x1, 4
	mov	x2, [x1]
	mov	r0, 16843008
	sub	r0, x2
	mov	r1, x2
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	je	rax, x3, .LBB106_19
	jmp	.LBB106_21
.LBB106_21:                             // %.loopexit6.i3.preheader
add	x1, -1
	mov	x2, 69
.LBB106_22:                             // %.loopexit6.i3
                                        // =>This Inner Loop Header: Depth=1
add	x1, 1
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB106_36
	jmp	.LBB106_23
.LBB106_23:                             // %.loopexit6.i3
                                        //   in Loop: Header=BB106_22 Depth=1
	jne	rax, x2, .LBB106_22
	jmp	.LBB106_24
.LBB106_24:                             // %strchr.exit.loopexit
	jmp	.LBB106_28
.LBB106_25:                             // %strchr.exit.loopexit2
	jmp	.LBB106_28
.LBB106_26:                             // %strchr.exit.loopexit3
	mov	x1, x4
	jmp	.LBB106_28
.LBB106_27:                             // %strchr.exit.loopexit5
	mov	x1, x4
.LBB106_28:                             // %strchr.exit
	mov	x3, x1
add	x3, 1
	mov	r0, [x3]
	mov	r1, 255
	call	__bit_and
	mov	r0, 45
	je	rax, r0, .LBB106_31
	jmp	.LBB106_29
.LBB106_29:                             // %strchr.exit
	mov	r0, 43
	mov	x4, 1
	jne	rax, r0, .LBB106_32
	jmp	.LBB106_30
.LBB106_30:
add	x1, 2
	mov	x3, x1
	jmp	.LBB106_32
.LBB106_31:
add	x1, 2
	mov	x4, -1
	mov	x3, x1
.LBB106_32:
	mov	r0, [x3]
	mov	r1, 255
	call	__bit_and
	mov	x1, rax
	mov	r0, x1
add	r0, -58
	mov	r1, 255
	call	__bit_and
	mov	r0, rax
add	r0, -2147483648
	mov	r1, -2147483402
	mov	rax, -1
	jl	r0, r1, .LBB106_38
	jmp	.LBB106_33
.LBB106_33:                             // %.preheader.preheader
add	x3, 1
	mov	x2, 0
	mov	x5, -2147483638
.LBB106_34:                             // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	x6, x2
add	x1, -48
	mov	r1, 255
	mul	x6, 10
	mov	r0, x1
	call	__bit_and
	mov	r0, [x3]
	mov	x2, rax
	mov	r1, 255
	add	x2, x6
	call	__bit_and
	mov	x1, rax
	mov	r0, x1
add	r0, -48
	mov	r1, 255
	call	__bit_and
add	rax, -2147483648
add	x3, 1
	jl	rax, x5, .LBB106_34
	jmp	.LBB106_35
.LBB106_35:
	mul	x2, x4
	mov	[x0], x2
	mov	rax, 0
	jmp	.LBB106_38
.LBB106_36:                             // %strchr.exit5.thread.loopexit
	mov	rax, -1
	jmp	.LBB106_38
.LBB106_37:                             // %strchr.exit5.thread.loopexit1
	mov	rax, -1
.LBB106_38:                             // %strchr.exit5.thread
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
// -- Begin function trim_trailing_zeros_g
trim_trailing_zeros_g:                  // @trim_trailing_zeros_g
// %bb.0:
sub	rsp, 44
	mov	[rsp+40], x0
	mov	[rsp+36], x1
	mov	[rsp+32], x2
	mov	[rsp+28], x3
	mov	[rsp+24], x4
	mov	[rsp+20], x5
	mov	[rsp+16], x6
	mov	[rsp+12], x7
	mov	[rsp+8], x8
	mov	[rsp+4], x9
	mov	[rsp], x10
	mov	r1, 3
	mov	x1, r0
	call	__bit_and
	mov	x2, rax
	mov	x0, x1
	jz	x2, .LBB107_2
	jmp	.LBB107_1
.LBB107_1:                              // %.preheader31.preheader
	mov	x3, x1
add	x3, 1
	mov	x4, 101
	mov	x0, x1
	jmp	.LBB107_4
.LBB107_2:                              // %.loopexit9.i
	mov	x3, [x0]
	mov	r0, 16843008
	sub	r0, x3
	mov	r1, x3
	call	__bit_or
	mov	r1, -2139062144
	mov	x4, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x4, .LBB107_9
	jmp	.LBB107_3
.LBB107_3:                              // %.preheader5.i.preheader
	jmp	.LBB107_7
.LBB107_4:                              // %.preheader31
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB107_12
	jmp	.LBB107_5
.LBB107_5:                              // %.preheader31
                                        //   in Loop: Header=BB107_4 Depth=1
	je	rax, x4, .LBB107_37
	jmp	.LBB107_6
.LBB107_6:                              //   in Loop: Header=BB107_4 Depth=1
	mov	r1, 3
add	x0, 1
	mov	r0, x3
	call	__bit_and
add	x3, 1
	jz	rax, .LBB107_2
	jmp	.LBB107_4
.LBB107_7:                              // %.preheader5.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 1701143909
	mov	r0, x3
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, x3
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x4, .LBB107_9
	jmp	.LBB107_8
.LBB107_8:                              //   in Loop: Header=BB107_7 Depth=1
add	x0, 4
	mov	x3, [x0]
	mov	r0, 16843008
	sub	r0, x3
	mov	r1, x3
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	je	rax, x4, .LBB107_7
	jmp	.LBB107_9
.LBB107_9:                              // %.loopexit6.i.preheader
add	x0, -1
	mov	x3, 101
.LBB107_10:                             // %.loopexit6.i
                                        // =>This Inner Loop Header: Depth=1
add	x0, 1
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	je	rax, x3, .LBB107_36
	jmp	.LBB107_11
.LBB107_11:                             // %.loopexit6.i
                                        //   in Loop: Header=BB107_10 Depth=1
	jnz	rax, .LBB107_10
	jmp	.LBB107_12
.LBB107_12:                             // %.loopexit29
	mov	x0, x1
	jz	x2, .LBB107_14
	jmp	.LBB107_13
.LBB107_13:                             // %.preheader25.preheader
	mov	x3, x1
add	x3, 1
	mov	x4, 69
	mov	x0, x1
	jmp	.LBB107_16
.LBB107_14:                             // %.loopexit9.i5
	mov	x3, [x0]
	mov	r0, 16843008
	sub	r0, x3
	mov	r1, x3
	call	__bit_or
	mov	r1, -2139062144
	mov	x4, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x4, .LBB107_21
	jmp	.LBB107_15
.LBB107_15:                             // %.preheader5.i7.preheader
	jmp	.LBB107_19
.LBB107_16:                             // %.preheader25
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB107_24
	jmp	.LBB107_17
.LBB107_17:                             // %.preheader25
                                        //   in Loop: Header=BB107_16 Depth=1
	je	rax, x4, .LBB107_35
	jmp	.LBB107_18
.LBB107_18:                             //   in Loop: Header=BB107_16 Depth=1
	mov	r1, 3
add	x0, 1
	mov	r0, x3
	call	__bit_and
add	x3, 1
	jz	rax, .LBB107_14
	jmp	.LBB107_16
.LBB107_19:                             // %.preheader5.i7
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 1162167621
	mov	r0, x3
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, x3
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x4, .LBB107_21
	jmp	.LBB107_20
.LBB107_20:                             //   in Loop: Header=BB107_19 Depth=1
add	x0, 4
	mov	x3, [x0]
	mov	r0, 16843008
	sub	r0, x3
	mov	r1, x3
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	je	rax, x4, .LBB107_19
	jmp	.LBB107_21
.LBB107_21:                             // %.loopexit6.i6.preheader
add	x0, -1
	mov	x3, 69
.LBB107_22:                             // %.loopexit6.i6
                                        // =>This Inner Loop Header: Depth=1
add	x0, 1
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	je	rax, x3, .LBB107_34
	jmp	.LBB107_23
.LBB107_23:                             // %.loopexit6.i6
                                        //   in Loop: Header=BB107_22 Depth=1
	jnz	rax, .LBB107_22
	jmp	.LBB107_24
.LBB107_24:                             // %.loopexit
	mov	x3, x1
	jz	x2, .LBB107_29
	jmp	.LBB107_25
.LBB107_25:
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
	mov	x0, x1
	jz	rax, .LBB107_33
	jmp	.LBB107_26
.LBB107_26:                             // %.preheader1.i.preheader
	mov	x3, x1
add	x3, 1
	mov	x0, x1
	jmp	.LBB107_28
.LBB107_27:                             //   in Loop: Header=BB107_28 Depth=1
	mov	r0, [x3]
	mov	r1, 255
	call	__bit_and
add	x3, 1
	jz	rax, .LBB107_33
	jmp	.LBB107_28
.LBB107_28:                             // %.preheader1.i
                                        // =>This Inner Loop Header: Depth=1
add	x0, 1
	mov	r1, 3
	mov	r0, x0
	call	__bit_and
	jnz	rax, .LBB107_27
	jmp	.LBB107_29
.LBB107_29:                             // %.loopexit.i.preheader
	mov	x4, x3
add	x4, -1
	mov	x5, -2139062144
.LBB107_30:                             // %.loopexit.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, [x3]
	mov	r0, 16843008
	sub	r0, r1
	mov	x0, x4
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
add	x3, 4
add	x4, 4
	je	rax, x5, .LBB107_30
	jmp	.LBB107_31
.LBB107_31:                             // %.preheader.i.preheader
	mov	x4, -4
.LBB107_32:                             // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, x3
	add	r0, x4
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
add	x0, 1
add	x4, 1
	jnz	rax, .LBB107_32
	jmp	.LBB107_33
.LBB107_33:                             // %strlen.exit
	jmp	.LBB107_38
.LBB107_34:                             // %strchr.exit.loopexit
	jmp	.LBB107_38
.LBB107_35:                             // %strchr.exit.loopexit4
	jmp	.LBB107_38
.LBB107_36:                             // %strchr.exit.loopexit5
	jmp	.LBB107_38
.LBB107_37:                             // %strchr.exit.loopexit7
.LBB107_38:                             // %strchr.exit
	jz	x2, .LBB107_40
	jmp	.LBB107_39
.LBB107_39:                             // %.preheader.preheader
	mov	x2, x1
add	x2, 1
	mov	x3, 46
	jmp	.LBB107_42
.LBB107_40:                             // %.loopexit9.i9
	mov	x2, [x1]
	mov	r0, 16843008
	sub	r0, x2
	mov	r1, x2
	call	__bit_or
	mov	r1, -2139062144
	mov	x3, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x3, .LBB107_47
	jmp	.LBB107_41
.LBB107_41:                             // %.preheader5.i12.preheader
	jmp	.LBB107_45
.LBB107_42:                             // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB107_91
	jmp	.LBB107_43
.LBB107_43:                             // %.preheader
                                        //   in Loop: Header=BB107_42 Depth=1
	je	rax, x3, .LBB107_53
	jmp	.LBB107_44
.LBB107_44:                             //   in Loop: Header=BB107_42 Depth=1
	mov	r1, 3
add	x1, 1
	mov	r0, x2
	call	__bit_and
add	x2, 1
	jz	rax, .LBB107_40
	jmp	.LBB107_42
.LBB107_45:                             // %.preheader5.i12
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 774778414
	mov	r0, x2
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, x2
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x3, .LBB107_47
	jmp	.LBB107_46
.LBB107_46:                             //   in Loop: Header=BB107_45 Depth=1
add	x1, 4
	mov	x2, [x1]
	mov	r0, 16843008
	sub	r0, x2
	mov	r1, x2
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	je	rax, x3, .LBB107_45
	jmp	.LBB107_47
.LBB107_47:                             // %.loopexit6.i10.preheader
add	x1, -1
	mov	x2, 46
.LBB107_48:                             // %.loopexit6.i10
                                        // =>This Inner Loop Header: Depth=1
add	x1, 1
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
	je	rax, x2, .LBB107_50
	jmp	.LBB107_49
.LBB107_49:                             // %.loopexit6.i10
                                        //   in Loop: Header=BB107_48 Depth=1
	jnz	rax, .LBB107_48
	jmp	.LBB107_50
.LBB107_50:
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r0, 46
	mov	r1, 1
	je	rax, r0, .LBB107_52
// %bb.51:
	mov	r1, 0
.LBB107_52:
	mov	r0, 0
	sub	r0, r1
	mov	r1, x1
	call	__bit_and
	mov	x1, rax
	jmp	.LBB107_54
.LBB107_53:                             // %strchr.exit13.loopexit
.LBB107_54:                             // %strchr.exit13
	jz	x1, .LBB107_91
	jmp	.LBB107_55
.LBB107_55:                             // %strchr.exit13
	mov	x3, x0
add	x3, -2147483648
	mov	r0, x1
add	r0, -2147483648
	jge	r0, x3, .LBB107_91
	jmp	.LBB107_56
.LBB107_56:
add	x1, 1
	mov	r0, 1
	mov	r1, 0
	mov	r2, -3
	mov	x4, x1
add	x4, -2147483648
	mov	x5, 48
	mov	x9, x0
.LBB107_57:                             // =>This Inner Loop Header: Depth=1
	mov	x2, x9
	mov	r3, x2
add	r3, -2147483648
	mov	x6, r0
	mov	x7, r2
	mov	x8, r1
	jle	r3, x4, .LBB107_59
	jmp	.LBB107_58
.LBB107_58:                             //   in Loop: Header=BB107_57 Depth=1
	mov	x9, x2
add	x9, -1
	mov	r0, [x9]
	mov	r1, 255
	call	__bit_and
	mov	r0, x6
add	r0, -1
	mov	r2, x7
add	r2, -1
	mov	r1, x8
add	r1, -1
	je	rax, x5, .LBB107_57
	jmp	.LBB107_59
.LBB107_59:
	mov	r0, 1
	je	x2, x1, .LBB107_61
// %bb.60:
	mov	r0, 0
.LBB107_61:
	mov	x5, 0
	sub	x5, r0
	mov	r1, 3
	add	x2, x5
	mov	r0, x0
	call	__bit_and
	mov	x4, x0
	jz	rax, .LBB107_66
	jmp	.LBB107_62
.LBB107_62:
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	mov	x1, x0
	jz	rax, .LBB107_70
	jmp	.LBB107_63
.LBB107_63:                             // %.preheader1.i14.preheader
	mov	x4, x0
add	x4, 1
	mov	x1, x0
	jmp	.LBB107_65
.LBB107_64:                             //   in Loop: Header=BB107_65 Depth=1
	mov	r0, [x4]
	mov	r1, 255
	call	__bit_and
add	x4, 1
	jz	rax, .LBB107_70
	jmp	.LBB107_65
.LBB107_65:                             // %.preheader1.i14
                                        // =>This Inner Loop Header: Depth=1
add	x1, 1
	mov	r1, 3
	mov	r0, x1
	call	__bit_and
	jnz	rax, .LBB107_64
	jmp	.LBB107_66
.LBB107_66:                             // %.loopexit.i15.preheader
	mov	x9, x4
add	x9, -1
	mov	x10, -2139062144
.LBB107_67:                             // %.loopexit.i15
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, [x4]
	mov	r0, 16843008
	sub	r0, r1
	mov	x1, x9
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
add	x4, 4
add	x9, 4
	je	rax, x10, .LBB107_67
	jmp	.LBB107_68
.LBB107_68:                             // %.preheader.i16.preheader
	mov	x9, -4
.LBB107_69:                             // %.preheader.i16
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, x4
	add	r0, x9
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
add	x1, 1
add	x9, 1
	jnz	rax, .LBB107_69
	jmp	.LBB107_70
.LBB107_70:                             // %strlen.exit17
	mov	x4, x1
	sub	x4, x0
	mov	r0, x2
add	r0, -2147483648
add	x4, 1
	jge	x3, r0, .LBB107_80
	jmp	.LBB107_71
.LBB107_71:
	mov	x3, x0
	add	x3, x4
	mov	r1, x3
add	r1, -2147483648
	jge	r0, r1, .LBB107_80
	jmp	.LBB107_72
.LBB107_72:
	mov	r0, x4
add	r0, -2147483648
	mov	r1, -2147483644
	add	x2, x4
	jl	r0, r1, .LBB107_77
	jmp	.LBB107_73
.LBB107_73:
	mov	r0, x3
	mov	r1, x2
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB107_78
	jmp	.LBB107_74
.LBB107_74:                             // %.preheader.i19.preheader
	mov	r0, 0
	sub	r0, x0
	mov	r1, x0
	add	r1, x1
	add	x6, x5
	add	x7, x5
	mov	r2, -2147483645
.LBB107_75:                             // %.preheader.i19
                                        // =>This Inner Loop Header: Depth=1
	mov	r3, r1
	add	r3, r0
add	r3, -3
	mov	r3, [r3]
	mov	r4, x7
	add	r4, x1
	mov	[r4], r3
add	r0, -4
	mov	x4, x1
	add	x4, r0
add	x6, -4
	mov	r3, x4
add	r3, -2147483647
add	x7, -4
	jg	r3, r2, .LBB107_75
	jmp	.LBB107_76
.LBB107_76:                             // %.loopexit9.i20.loopexit
add	x4, 1
	add	x0, x4
	add	x6, x1
	mov	x2, x6
	mov	x3, x0
.LBB107_77:                             // %.loopexit9.i20
	jz	x4, .LBB107_91
	jmp	.LBB107_78
.LBB107_78:                             // %.preheader227
add	x3, -1
add	x2, -1
.LBB107_79:                             // =>This Inner Loop Header: Depth=1
	mov	r0, [x3]
	mov	r1, 255
add	x4, -1
	call	__bit_and
	mov	r0, [x2]
	mov	r1, -256
	mov	x0, rax
	call	__bit_and
	mov	r1, 255
	mov	x1, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	[x2], rax
add	x3, -1
add	x2, -1
	jz	x4, .LBB107_91
	jmp	.LBB107_79
.LBB107_80:
	mov	x1, x4
add	x1, -2147483648
	mov	r0, -2147483644
	jl	x1, r0, .LBB107_88
	jmp	.LBB107_81
.LBB107_81:
	mov	r0, x2
	mov	r1, x0
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB107_89
	jmp	.LBB107_82
.LBB107_82:
	mov	r0, -2147483632
	jl	x1, r0, .LBB107_84
	jmp	.LBB107_83
.LBB107_83:                             // %.preheader12.i.preheader
	add	x5, x8
	mov	r0, -2147483633
	mov	r1, x0
	jmp	.LBB107_86
.LBB107_84:                             // %.preheader237
	mov	r0, -2147483645
	mov	r1, x4
	jmp	.LBB107_87
.LBB107_85:
	add	x5, x0
	mov	r0, 3
	mov	x2, x5
	jg	x4, r0, .LBB107_84
	jmp	.LBB107_88
.LBB107_86:                             // %.preheader12.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r2, [r1]
	mov	r3, r1
	add	r3, x5
	mov	r4, r1
add	r4, 4
	mov	[r3], r2
	mov	r2, [r4]
	mov	r4, r3
add	r4, 4
	mov	[r4], r2
	mov	r2, r1
add	r2, 8
	mov	r2, [r2]
	mov	r4, r3
add	r4, 8
	mov	[r4], r2
add	r1, 12
	mov	r1, [r1]
	mov	r2, x4
add	r3, 12
add	x0, 16
	mov	[r3], r1
add	r2, 2147483632
add	x4, -16
	mov	r1, x0
	jg	r2, r0, .LBB107_86
	jmp	.LBB107_85
.LBB107_87:                             // =>This Inner Loop Header: Depth=1
	mov	r2, [x0]
add	x0, 4
	mov	[x2], r2
add	x4, -4
	mov	r2, r1
add	r2, 2147483644
add	x2, 4
	mov	r1, x4
	jg	r2, r0, .LBB107_87
	jmp	.LBB107_88
.LBB107_88:                             // %.loopexit11.i
	jz	x4, .LBB107_91
	jmp	.LBB107_89
.LBB107_89:                             // %.preheader232
	mov	x5, x2
.LBB107_90:                             // =>This Inner Loop Header: Depth=1
	mov	r0, [x0]
add	x4, -1
	mov	r1, 255
add	x0, 1
	call	__bit_and
	mov	r0, [x2]
	mov	x1, rax
	mov	r1, -256
add	x5, 1
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	[x2], rax
	mov	x2, x5
	jnz	x4, .LBB107_90
	jmp	.LBB107_91
.LBB107_91:                             // %memmove.exit
	mov	x10, [rsp]
	mov	x9, [rsp+4]
	mov	x8, [rsp+8]
	mov	x7, [rsp+12]
	mov	x6, [rsp+16]
	mov	x5, [rsp+20]
	mov	x4, [rsp+24]
	mov	x3, [rsp+28]
	mov	x2, [rsp+32]
	mov	x1, [rsp+36]
	mov	x0, [rsp+40]
add	rsp, 44
	ret
// -- End function
// -- Begin function gcvt_fast
gcvt_fast:                              // @gcvt_fast
// %bb.0:
sub	rsp, 116
	mov	[rsp+112], x0
	mov	[rsp+108], x1
	mov	[rsp+104], x2
	mov	[rsp+100], x3
	mov	[rsp+96], x4
	mov	[rsp+92], x5
	mov	[rsp+88], x6
	mov	[rsp+84], x7
	mov	[rsp+80], x8
	mov	[rsp+76], x9
	mov	[rsp+72], x10
	mov	[rsp+68], x11
	mov	[rsp+64], x12
	mov	x0, r3
	mov	x3, r1
	mov	x4, r0
	jz	x0, .LBB108_106
	jmp	.LBB108_1
.LBB108_1:
	mov	r0, 0
	jg	r2, r0, .LBB108_3
	jmp	.LBB108_2
.LBB108_2:
	mov	r0, [x0]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	[x0], rax
	jmp	.LBB108_106
.LBB108_3:
	mov	r0, r2
add	r0, -2147483648
	mov	r3, -2147483585
	mov	r1, 1
	jl	r0, r3, .LBB108_5
// %bb.4:
	mov	r1, 0
.LBB108_5:
	mov	r0, 0
	sub	r0, r1
	mov	x9, r2
	mov	r1, r2
add	r1, -63
	call	__bit_and
	mov	x2, rax
	mov	r0, x4
	mov	r1, x3
	mov	r2, x4
	mov	r3, x3
	call	__unorddf2
	jz	rax, .LBB108_7
	jmp	.LBB108_6
.LBB108_6:
	mov	r0, [x0]
	mov	r1, -256
	call	__bit_and
	mov	r1, 110
	mov	r0, rax
	call	__bit_or
	mov	[x0], rax
	mov	x1, x0
add	x1, 1
	mov	r0, [x1]
	mov	r1, -256
	call	__bit_and
	mov	r1, 97
	mov	r0, rax
	call	__bit_or
	mov	[x1], rax
	mov	x1, x0
add	x1, 2
	mov	r0, [x1]
	mov	r1, -256
	call	__bit_and
	mov	r1, 110
	mov	r0, rax
	call	__bit_or
	mov	[x1], rax
	mov	x1, x0
add	x1, 3
	mov	r0, [x1]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	[x1], rax
	jmp	.LBB108_106
.LBB108_7:
	mov	r1, 2147483647
	mov	r0, x3
	call	__bit_and
	mov	r2, -1
	mov	r3, 2146435071
	mov	x5, -1
	mov	r0, x4
	mov	r1, rax
	call	__gtdf2
	mov	r0, 1
	jl	rax, r0, .LBB108_11
	jmp	.LBB108_8
.LBB108_8:
	mov	r2, 0
	mov	r3, 0
	mov	r0, x4
	mov	r1, x3
	call	__ltdf2
	mov	x1, x0
	jg	rax, x5, .LBB108_10
	jmp	.LBB108_9
.LBB108_9:
	mov	r0, [x0]
	mov	x1, x0
	mov	r1, -256
add	x1, 1
	call	__bit_and
	mov	r1, 45
	mov	r0, rax
	call	__bit_or
	mov	[x0], rax
.LBB108_10:
	mov	r0, [x1]
	mov	r1, -256
	call	__bit_and
	mov	r1, 105
	mov	r0, rax
	call	__bit_or
	mov	[x1], rax
	mov	x2, x1
add	x2, 1
	mov	r0, [x2]
	mov	r1, -256
	call	__bit_and
	mov	r1, 110
	mov	r0, rax
	call	__bit_or
	mov	[x2], rax
	mov	x2, x1
add	x2, 2
	mov	r0, [x2]
	mov	r1, -256
	call	__bit_and
	mov	r1, 102
	mov	r0, rax
	call	__bit_or
	mov	[x2], rax
add	x1, 3
	mov	r0, [x1]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	[x1], rax
	jmp	.LBB108_106
.LBB108_11:
	mov	r2, 0
	mov	r3, 0
	mov	r0, x4
	mov	r1, x3
	call	__ltdf2
	mov	x8, x0
	jg	rax, x5, .LBB108_13
	jmp	.LBB108_12
.LBB108_12:
	mov	r0, [x0]
	mov	x8, x0
	mov	r1, -256
add	x8, 1
	call	__bit_and
	mov	r1, 45
	mov	r0, rax
	call	__bit_or
	mov	r1, -2147483648
	mov	[x0], rax
	mov	r0, x3
	call	__bit_xor
	mov	x3, rax
.LBB108_13:
	mov	r2, 0
	mov	r3, 0
	mov	x1, 0
	mov	r0, x4
	mov	r1, x3
	call	__nedf2
	jnz	rax, .LBB108_15
	jmp	.LBB108_14
.LBB108_14:
	mov	r0, [x8]
	mov	r1, -256
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	[x8], rax
add	x8, 1
	mov	r0, [x8]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	[x8], rax
	jmp	.LBB108_106
.LBB108_15:
	mov	r2, 0
	mov	r3, 0
add	x2, 63
	mov	r0, x4
	mov	r1, x3
	call	__ltdf2
	jl	rax, x1, .LBB108_45
	jmp	.LBB108_16
.LBB108_16:
	mov	r2, -4194304
	mov	r3, 1105199103
	mov	r0, x4
	mov	r1, x3
	call	__gtdf2
	mov	r0, 0
	jg	rax, r0, .LBB108_45
	jmp	.LBB108_17
.LBB108_17:
	mov	r0, x4
	mov	r1, x3
	call	__fixdfsi
	mov	x1, rax
	mov	r0, x1
	call	__floatsidf
	mov	r3, t0
	mov	r0, x4
	mov	r1, x3
	mov	r2, rax
	call	__nedf2
	jnz	rax, .LBB108_30
	jmp	.LBB108_18
.LBB108_18:
	mov	r0, x1
add	r0, -2147483648
	mov	r1, -2147483638
	jl	r0, r1, .LBB108_24
	jmp	.LBB108_19
.LBB108_19:                             // %.preheader38.preheader
	mov	x6, 0
	mov	x7, -2147483549
	mov	x5, x1
.LBB108_20:                             // %.preheader38
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 10
	mov	r0, x5
	call	__udivsi3
	mov	r0, x5
add	r0, -2147483648
add	x6, 1
	mov	x5, rax
	jg	r0, x7, .LBB108_20
	jmp	.LBB108_21
.LBB108_21:
	jge	x6, x2, .LBB108_45
	jmp	.LBB108_22
.LBB108_22:
.LBB108_23:                             // %.preheader183
	mov	x5, 0
	mov	x6, -2147483639
	jmp	.LBB108_26
.LBB108_24:
	jnz	x1, .LBB108_23
	jmp	.LBB108_25
.LBB108_25:
	mov	r0, [x8]
	mov	x3, x8
	mov	r1, -256
add	x3, 1
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	[x8], rax
	jmp	.LBB108_29
.LBB108_26:                             // =>This Inner Loop Header: Depth=1
	mov	r1, 10
	mov	x3, x5
	mov	r0, x1
	call	__udivsi3
	mov	x2, rax
	mov	r0, x2
	mul	r0, 246
	add	r0, x1
	mov	r1, 48
	call	__bit_or
	mov	x7, rsp
	add	x7, x3
	mov	x3, [x7]
	mov	r1, 255
add	x5, 1
	mov	r0, rax
	call	__bit_and
	mov	r1, -256
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x4
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r0, x1
add	r0, -2147483648
	mov	[x7], rax
	mov	x1, x2
	jg	r0, x6, .LBB108_26
	jmp	.LBB108_27
.LBB108_27:                             // %.preheader36.preheader
add	x5, -1
	mov	x4, 1
	mov	x3, x8
	mov	x6, x5
.LBB108_28:                             // %.preheader36
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, rsp
	add	r0, x5
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x8]
	mov	x1, rax
	mov	r1, -256
add	x3, 1
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
add	x6, -1
	mov	r0, x5
add	r0, 1
	mov	[x8], rax
	mov	x5, x6
	mov	x8, x3
	jg	r0, x4, .LBB108_28
	jmp	.LBB108_29
.LBB108_29:                             // %.loopexit37
	mov	r0, [x3]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	[x3], rax
	jmp	.LBB108_106
.LBB108_30:
	mov	r0, 1
	je	x9, r0, .LBB108_45
	jmp	.LBB108_31
.LBB108_31:
	mov	r2, -8388608
	mov	r3, 1104150527
	mov	r0, x4
	mov	r1, x3
	call	__ledf2
	mov	r0, 0
	jg	rax, r0, .LBB108_45
	jmp	.LBB108_32
.LBB108_32:
	mov	r0, x4
	mov	r1, x3
	mov	r2, x4
	mov	r3, x3
	call	__adddf3
	mov	x1, rax
	mov	x6, t0
	mov	r0, x1
	mov	r1, x6
	call	__fixdfsi
	mov	x5, rax
	mov	r0, x5
	call	__floatsidf
	mov	r3, t0
	mov	r0, x1
	mov	r1, x6
	mov	r2, rax
	call	__nedf2
	mov	r1, 1
	mov	x1, rax
	mov	r0, x5
	call	__bit_and
	jnz	x1, .LBB108_45
	jmp	.LBB108_33
.LBB108_33:
	jz	rax, .LBB108_45
	jmp	.LBB108_34
.LBB108_34:
	mov	x1, x5
	div	x1, 2
	mov	r0, x1
add	r0, -2147483648
	mov	r1, -2147483638
	mov	x7, 1
	jl	r0, r1, .LBB108_37
	jmp	.LBB108_35
.LBB108_35:                             // %.preheader42.preheader
	mov	x10, -2147483549
	mov	x6, x1
.LBB108_36:                             // %.preheader42
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 10
	mov	r0, x6
	call	__udivsi3
	mov	r0, x6
add	r0, -2147483648
add	x7, 1
	mov	x6, rax
	jg	r0, x10, .LBB108_36
	jmp	.LBB108_37
.LBB108_37:                             // %.loopexit43
	jge	x7, x2, .LBB108_45
	jmp	.LBB108_38
.LBB108_38:
add	x5, -2147483647
	mov	r0, -2147483645
	jl	x5, r0, .LBB108_40
	jmp	.LBB108_39
.LBB108_39:                             // %.preheader41.preheader
	mov	x5, 0
	mov	x6, -2147483639
	jmp	.LBB108_41
.LBB108_40:
	mov	r0, [x8]
	mov	x3, x8
	mov	r1, -256
add	x3, 1
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	[x8], rax
	jmp	.LBB108_44
.LBB108_41:                             // %.preheader41
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 10
	mov	x3, x5
	mov	r0, x1
	call	__udivsi3
	mov	x2, rax
	mov	r0, x2
	mul	r0, 246
	add	r0, x1
	mov	r1, 48
	call	__bit_or
	mov	x7, rsp
	add	x7, x3
	mov	x3, [x7]
	mov	r1, 255
add	x5, 1
	mov	r0, rax
	call	__bit_and
	mov	r1, -256
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x4
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r0, x1
add	r0, -2147483648
	mov	[x7], rax
	mov	x1, x2
	jg	r0, x6, .LBB108_41
	jmp	.LBB108_42
.LBB108_42:                             // %.preheader39.preheader
add	x5, -1
	mov	x4, 1
	mov	x3, x8
	mov	x6, x5
.LBB108_43:                             // %.preheader39
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, rsp
	add	r0, x5
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x8]
	mov	x1, rax
	mov	r1, -256
add	x3, 1
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
add	x6, -1
	mov	r0, x5
add	r0, 1
	mov	[x8], rax
	mov	x5, x6
	mov	x8, x3
	jg	r0, x4, .LBB108_43
	jmp	.LBB108_44
.LBB108_44:                             // %.loopexit40
	mov	r0, [x3]
	mov	x1, x3
	mov	r1, -256
add	x1, 1
	call	__bit_and
	mov	r1, 46
	mov	r0, rax
	call	__bit_or
	mov	[x3], rax
	mov	r0, [x1]
	mov	r1, -256
add	x3, 2
	call	__bit_and
	mov	r1, 53
	mov	r0, rax
	call	__bit_or
	mov	[x1], rax
	mov	r0, [x3]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	[x3], rax
	jmp	.LBB108_106
.LBB108_45:
	mov	r2, 0
	mov	r3, 1076101120
	mov	x1, 0
	mov	r0, x4
	mov	r1, x3
	call	__gedf2
	jl	rax, x1, .LBB108_47
	jmp	.LBB108_46
.LBB108_46:                             // %.preheader34.preheader
	mov	x5, 0
	jmp	.LBB108_49
.LBB108_47:                             // %.loopexit35
	mov	r2, 0
	mov	r3, 1072693248
	mov	x10, 0
	mov	r0, x4
	mov	r1, x3
	call	__ltdf2
	mov	r0, -1
	jg	rax, r0, .LBB108_50
	jmp	.LBB108_48
.LBB108_48:                             // %.preheader32.preheader
	mov	x5, 0
	jmp	.LBB108_51
.LBB108_49:                             // %.preheader34
                                        // =>This Inner Loop Header: Depth=1
	mov	r2, -1717986918
	mov	r3, 1069128089
	mov	r0, x4
	mov	r1, x3
	call	__muldf3
	mov	x4, rax
	mov	x3, t0
	mov	r2, 0
	mov	r3, 1076101120
add	x1, 1
	mov	r0, x4
	mov	r1, x3
	call	__ltdf2
	jl	rax, x5, .LBB108_47
	jmp	.LBB108_49
.LBB108_50:                             // %.loopexit33
	mov	x11, x2
add	x11, 1
	jmp	.LBB108_52
.LBB108_51:                             // %.preheader32
                                        // =>This Inner Loop Header: Depth=1
	mov	r2, 0
	mov	r3, 1076101120
	mov	r0, x4
	mov	r1, x3
	call	__muldf3
	mov	x4, rax
	mov	x3, t0
	mov	r2, 0
	mov	r3, 1072693248
add	x1, -1
	mov	r0, x4
	mov	r1, x3
	call	__ltdf2
	jl	rax, x5, .LBB108_51
	jmp	.LBB108_50
.LBB108_52:                             // =>This Inner Loop Header: Depth=1
	mov	r0, x4
	mov	r1, x3
	call	__fixdfsi
	mov	x5, rax
	mov	r0, x5
	mov	x12, rsp
	add	x12, x10
	mov	x6, [x12]
add	r0, 48
	mov	r1, 255
	call	__bit_and
	mov	r1, -256
	mov	x7, rax
	mov	r0, x6
	call	__bit_and
	mov	r1, 255
	mov	x6, rax
	mov	r0, x7
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	[x12], rax
	mov	r0, x5
	call	__floatsidf
	mov	r3, t0
	mov	r0, x4
	mov	r1, x3
	mov	r2, rax
	call	__subdf3
	mov	r2, 0
	mov	r3, 1076101120
	mov	r1, t0
	mov	r0, rax
	call	__muldf3
add	x10, 1
	mov	x4, rax
	mov	x3, t0
	jne	x11, x10, .LBB108_52
	jmp	.LBB108_53
.LBB108_53:
	mov	x5, rsp
	add	x5, x2
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	mov	r1, 24
	mov	r0, rax
	call	__bit_shl
	mov	r1, 24
	mov	r0, rax
	call	__bit_sar
	mov	x6, 53
	jg	rax, x6, .LBB108_57
	jmp	.LBB108_54
.LBB108_54:
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jne	rax, x6, .LBB108_64
	jmp	.LBB108_55
.LBB108_55:
	mov	r2, -400107883
	mov	r3, 1041313291
	mov	r0, x4
	mov	r1, x3
	call	__gtdf2
	mov	r0, 0
	jg	rax, r0, .LBB108_57
	jmp	.LBB108_56
.LBB108_56:
add	x5, -1
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB108_64
	jmp	.LBB108_57
.LBB108_57:                             // %.preheader172
	mov	x3, x2
add	x3, -1
	mov	x4, 57
	mov	x5, 1
.LBB108_58:                             // =>This Inner Loop Header: Depth=1
	mov	r0, rsp
	add	r0, x3
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	jne	rax, x4, .LBB108_61
	jmp	.LBB108_59
.LBB108_59:                             //   in Loop: Header=BB108_58 Depth=1
	mov	x6, rsp
	add	x6, x3
	mov	r0, [x6]
	mov	r1, -256
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	r0, x3
add	x3, -1
add	r0, 1
	mov	[x6], rax
	jg	r0, x5, .LBB108_58
	jmp	.LBB108_60
.LBB108_60:                             // %.preheader31.preheader
	mov	x5, 1
	mov	x6, x2
	jmp	.LBB108_62
.LBB108_61:
	mov	x5, rsp
	add	x5, x3
	mov	x3, [x5]
add	rax, 1
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, -256
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x4
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	[x5], rax
	jmp	.LBB108_64
.LBB108_62:                             // %.preheader31
                                        // =>This Inner Loop Header: Depth=1
	mov	x7, x6
	mov	x10, rsp
	add	x10, x7
	mov	r0, x10
add	r0, -1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x10]
	mov	r1, -256
	mov	x3, rax
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	[x10], rax
add	x6, -1
	jg	x7, x5, .LBB108_62
	jmp	.LBB108_63
.LBB108_63:
	mov	r0, [rsp]
	mov	r1, -256
	call	__bit_and
	mov	r1, 49
	mov	r0, rax
	call	__bit_or
	mov	[rsp], rax
add	x1, 1
.LBB108_64:
	mov	r0, 1
	mov	x4, x2
	je	x9, r0, .LBB108_70
	jmp	.LBB108_65
.LBB108_65:                             // %.preheader29.preheader
	mov	x5, x2
add	x5, -1
	mov	x3, 48
	mov	x6, 2
	mov	x4, 1
.LBB108_66:                             // %.preheader29
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, rsp
	add	r0, x5
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	jne	rax, x3, .LBB108_68
	jmp	.LBB108_67
.LBB108_67:                             //   in Loop: Header=BB108_66 Depth=1
	mov	r0, x5
add	x5, -1
add	r0, 1
	jg	r0, x6, .LBB108_66
	jmp	.LBB108_70
.LBB108_68:
	mov	x4, x5
	mov	r0, -4
add	x4, 1
	jl	x1, r0, .LBB108_73
	jmp	.LBB108_69
.LBB108_69:
	jge	x1, x2, .LBB108_73
	jmp	.LBB108_89
.LBB108_70:                             // %.loopexit30
	mov	r0, -4
	jl	x1, r0, .LBB108_72
	jmp	.LBB108_71
.LBB108_71:                             // %.loopexit30
	jl	x1, x2, .LBB108_89
	jmp	.LBB108_72
.LBB108_72:
	mov	r0, [rsp]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x8]
	mov	x2, rax
	mov	x4, x8
	mov	r1, -256
add	x4, 1
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	[x8], rax
	mov	x8, x4
	jmp	.LBB108_77
.LBB108_73:
	mov	r0, [rsp]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x8]
	mov	x2, rax
	mov	x7, x8
	mov	r1, -256
add	x7, 1
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	x6, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	[x8], rax
	mov	r0, [x7]
	mov	r1, -256
add	x8, 2
	call	__bit_and
	mov	r1, 46
	mov	r0, rax
	call	__bit_or
	mov	r0, 2
	mov	[x7], rax
	jl	x4, r0, .LBB108_77
	jmp	.LBB108_74
.LBB108_74:                             // %.preheader27.preheader
	mov	x4, rsp
add	x4, 1
.LBB108_75:                             // %.preheader27
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, x4
	add	r0, x6
	mov	r0, [r0]
	mov	x7, x8
	mov	r1, 255
	add	x7, x6
	call	__bit_and
	mov	r0, [x7]
	mov	r1, -256
	mov	x2, rax
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
add	x6, 1
	mov	[x7], rax
	jne	x5, x6, .LBB108_75
	jmp	.LBB108_76
.LBB108_76:                             // %.loopexit28.loopexit
	add	x8, x6
.LBB108_77:                             // %.loopexit28
	mov	r0, [x8]
	mov	r1, -256
	call	__bit_and
	mov	r1, 101
	mov	r0, rax
	call	__bit_or
	mov	[x8], rax
	mov	r0, 0
	mov	r1, 1
	jl	x1, r0, .LBB108_79
// %bb.78:                              // %.loopexit28
	mov	r1, 0
.LBB108_79:                             // %.loopexit28
	sub	r0, r1
	mov	r1, 2
	call	__bit_and
	mov	r0, -1
add	rax, 43
	jg	x1, r0, .LBB108_81
	jmp	.LBB108_80
.LBB108_80:
	mov	r0, 0
	sub	r0, x1
	mov	x1, r0
.LBB108_81:
	mov	x4, x8
add	x4, 1
	mov	x2, [x4]
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, -256
	mov	x3, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x3
	call	__bit_and
	mov	r1, 0
	mov	x9, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r0, 10
	mov	[x4], rax
	jl	x1, r0, .LBB108_83
	jmp	.LBB108_82
.LBB108_82:                             // %.preheader.preheader
	mov	x6, x8
add	x6, 2
	mov	x7, 99
	mov	x2, x1
	jmp	.LBB108_84
.LBB108_83:
	mov	x7, x8
add	x8, 2
	mov	r0, [x8]
	mov	r1, -256
add	x7, 3
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	[x8], rax
	jmp	.LBB108_88
.LBB108_84:                             // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	x3, x2
	mov	x10, x8
	add	x10, x9
	mov	r1, 10
add	x10, 2
	mov	r0, x3
	call	__udivsi3
	mov	r1, 10
	mov	x2, rax
	mov	r0, x2
	call	__umodsi3
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	r0, [x10]
	mov	r1, -256
	mov	x4, rax
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x4
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	[x10], rax
add	x9, 1
	jg	x3, x7, .LBB108_84
	jmp	.LBB108_85
.LBB108_85:
	add	x8, x9
add	x9, 1
	mov	x7, x8
	mov	r0, 3
add	x7, 2
	jl	x9, r0, .LBB108_88
	jmp	.LBB108_86
.LBB108_86:
	mov	x5, x6
	mov	x9, x8
.LBB108_87:                             // =>This Inner Loop Header: Depth=1
	mov	x2, [x6]
	mov	x10, x8
	mov	r1, 255
add	x10, 1
	mov	r0, x2
	call	__bit_and
	mov	r0, [x10]
	mov	r1, 255
	mov	x3, rax
	call	__bit_and
	mov	x4, rax
	mov	r1, -256
add	x5, 1
	mov	r0, x2
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x4
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	[x6], rax
	mov	r0, [x10]
	mov	r1, -256
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x3
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
add	x9, -1
	mov	r0, x8
add	r0, -2147483648
	mov	r1, x6
add	r1, -2147483647
	mov	[x10], rax
	mov	x8, x9
	mov	x6, x5
	jl	r1, r0, .LBB108_87
	jmp	.LBB108_88
.LBB108_88:                             // %.loopexit
	mov	r1, 10
	mov	r0, x1
	call	__umodsi3
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	r0, [x7]
	mov	x1, rax
	mov	x5, x7
	mov	r1, -256
add	x5, 1
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	[x7], rax
	jmp	.LBB108_105
.LBB108_89:
	mov	r0, 0
	jl	x1, r0, .LBB108_97
	jmp	.LBB108_90
.LBB108_90:                             // %.preheader136.preheader
.LBB108_91:                             // %.preheader136
                                        // =>This Inner Loop Header: Depth=1
	mov	x6, r0
	mov	r0, 48
	jge	x6, x4, .LBB108_93
	jmp	.LBB108_92
.LBB108_92:                             //   in Loop: Header=BB108_91 Depth=1
	mov	r0, rsp
	add	r0, x6
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r0, rax
.LBB108_93:                             //   in Loop: Header=BB108_91 Depth=1
	mov	x2, [x8]
	mov	x5, x8
	mov	r1, 255
add	x5, 1
	call	__bit_and
	mov	r1, -256
	mov	x3, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x3
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	[x8], rax
	mov	r0, x6
add	r0, 1
	mov	x8, x5
	jne	x6, x1, .LBB108_91
	jmp	.LBB108_94
.LBB108_94:
	mov	r0, x1
add	r0, 1
	jle	x4, r0, .LBB108_105
	jmp	.LBB108_95
.LBB108_95:
	mov	r0, [x5]
	mov	r1, -256
	call	__bit_and
	mov	r1, 46
	mov	r0, rax
	call	__bit_or
	mov	[x5], rax
	sub	x4, x1
	mov	x3, rsp
	add	x3, x1
	mov	x6, 1
.LBB108_96:                             // =>This Inner Loop Header: Depth=1
	mov	r0, x3
	add	r0, x6
	mov	r0, [r0]
	mov	x7, x5
	mov	r1, 255
	add	x7, x6
	call	__bit_and
	mov	r0, [x7]
	mov	r1, -256
	mov	x1, rax
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
add	x6, 1
	mov	[x7], rax
	je	x4, x6, .LBB108_104
	jmp	.LBB108_96
.LBB108_97:
	mov	r0, [x8]
	mov	x3, x8
	mov	r1, -256
add	x3, 1
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	[x8], rax
	mov	r0, [x3]
	mov	x5, x8
	mov	r1, -256
add	x5, 2
	call	__bit_and
	mov	r1, 46
	mov	r0, rax
	call	__bit_or
	mov	x2, -1
	mov	[x3], rax
	je	x1, x2, .LBB108_100
	jmp	.LBB108_98
.LBB108_98:                             // %.preheader25.preheader
	mov	x3, 2
	jmp	.LBB108_102
.LBB108_99:                             // %.loopexit26.loopexit
	add	x8, x3
	mov	x5, x8
.LBB108_100:                            // %.loopexit26
	mov	r0, 1
	jl	x4, r0, .LBB108_105
	jmp	.LBB108_101
.LBB108_101:                            // %.preheader23.preheader
	mov	x3, rsp
	mov	x6, x5
	jmp	.LBB108_103
.LBB108_102:                            // %.preheader25
                                        // =>This Inner Loop Header: Depth=1
	mov	x5, x8
	add	x5, x3
	mov	r0, [x5]
	mov	r1, -256
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	r0, x3
add	r0, -1
	mov	[x5], rax
	mov	r1, x1
	call	__bit_xor
add	x3, 1
	je	rax, x2, .LBB108_99
	jmp	.LBB108_102
.LBB108_103:                            // %.preheader23
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x3]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x6]
	mov	x1, rax
	mov	r1, -256
add	x5, 1
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	[x6], rax
add	x4, -1
add	x3, 1
	mov	x6, x5
	jz	x4, .LBB108_105
	jmp	.LBB108_103
.LBB108_104:                            // %.loopexit22.loopexit
	add	x5, x6
.LBB108_105:                            // %.loopexit22
	mov	r0, [x5]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	[x5], rax
.LBB108_106:
	mov	rax, x0
	mov	x12, [rsp+64]
	mov	x11, [rsp+68]
	mov	x10, [rsp+72]
	mov	x9, [rsp+76]
	mov	x8, [rsp+80]
	mov	x7, [rsp+84]
	mov	x6, [rsp+88]
	mov	x5, [rsp+92]
	mov	x4, [rsp+96]
	mov	x3, [rsp+100]
	mov	x2, [rsp+104]
	mov	x1, [rsp+108]
	mov	x0, [rsp+112]
add	rsp, 116
	ret
// -- End function
// -- Begin function itoa
itoa:                                   // @itoa
// %bb.0:
sub	rsp, 60
	mov	[rsp+56], x0
	mov	[rsp+52], x1
	mov	[rsp+48], x2
	mov	[rsp+44], x3
	mov	[rsp+40], x4
	mov	[rsp+36], x5
	mov	[rsp+32], x6
	mov	[rsp+28], x7
	mov	[rsp+24], x8
	mov	[rsp+20], x9
	mov	[rsp+16], x10
	mov	x2, r2
add	r2, 2147483611
	mov	r3, 2147483612
	mov	x0, r1
	mov	x1, r0
	jg	r2, r3, .LBB109_2
	jmp	.LBB109_1
.LBB109_1:
	mov	r0, [x0]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	[x0], rax
	mov	x0, 0
	jmp	.LBB109_20
.LBB109_2:
	mov	r0, -1
	jg	x1, r0, .LBB109_5
	jmp	.LBB109_3
.LBB109_3:
	mov	r0, 10
	jne	x2, r0, .LBB109_5
	jmp	.LBB109_4
.LBB109_4:
	mov	r0, [x0]
	mov	r1, -256
	call	__bit_and
	mov	r1, 45
	mov	r0, rax
	call	__bit_or
	mov	[x0], rax
	mov	r0, 0
	sub	r0, x1
	mov	x6, 1
	mov	x1, r0
	jmp	.LBB109_7
.LBB109_5:
	mov	r0, 10
	mov	x6, 0
	je	x2, r0, .LBB109_7
	jmp	.LBB109_6
.LBB109_6:                              // %.preheader8.preheader
	mov	x7, mcasm_static_a0798eab031e00674a0fec7ab4aa2dd0
	mov	x8, x2
add	x8, -2147483648
	jmp	.LBB109_16
.LBB109_7:
	mov	x7, rsp
add	x7, 15
	mov	r0, [x7]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	r0, x1
add	r0, -2147483648
	mov	r1, -2147483548
	mov	[x7], rax
	jl	r0, r1, .LBB109_10
	jmp	.LBB109_8
.LBB109_8:                              // %.preheader.preheader
	mov	x8, mcasm_static_4eb66271a16ac2758f7587f407e70a7d
	mov	x9, -2147473649
	mov	x2, x1
.LBB109_9:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 100
	mov	r0, x2
	call	__udivsi3
	mov	x1, rax
	mov	r0, x1
	mul	r0, 2147483548
	add	r0, x2
	mov	r1, 1
	call	__bit_shl
	mov	x3, rax
	add	x3, x8
	mov	r0, x3
add	r0, 1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	x10, x7
add	x10, -1
	mov	r0, [x10]
	mov	r1, -256
	mov	x4, rax
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x4
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	r0, [x3]
	mov	r1, 255
	mov	[x10], rax
	call	__bit_and
add	x7, -2
	mov	r0, [x7]
	mov	r1, -256
	mov	x3, rax
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	r0, x2
add	r0, -2147483648
	mov	[x7], rax
	mov	x2, x1
	jg	r0, x9, .LBB109_9
	jmp	.LBB109_10
.LBB109_10:                             // %.loopexit5
	mov	r0, 9
	add	x6, x0
	jg	x1, r0, .LBB109_12
	jmp	.LBB109_11
.LBB109_11:
	mov	r1, 48
	mov	r0, x1
	call	__bit_or
	mov	x4, x7
add	x4, -1
	mov	x1, [x4]
	mov	r1, 255
	mov	x2, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, -256
	mov	x3, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 255
	mov	x1, rax
	mov	r0, x3
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	rax, x2
	mov	[x4], r0
	mov	x3, -1
	jmp	.LBB109_13
.LBB109_12:
	mov	x5, x7
	mov	r1, 1
add	x5, -1
	mov	r0, x1
	call	__bit_shl
	mov	x8, mcasm_static_4eb66271a16ac2758f7587f407e70a7d
	add	x8, rax
	mov	r0, x8
add	r0, 1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x5]
	mov	r1, -256
	mov	x2, rax
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	x4, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r0, [x8]
	mov	r1, 255
	mov	[x5], rax
	call	__bit_and
	mov	x5, x7
add	x5, -2
	mov	r0, [x5]
	mov	r1, -256
	mov	x2, rax
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	rax, x2
	mov	[x5], r0
	mov	r0, 100
	mov	x3, -2
	je	x1, r0, .LBB109_15
	jmp	.LBB109_13
.LBB109_13:
	add	x3, x7
add	x3, 1
	mov	x4, 0
.LBB109_14:                             // =>This Inner Loop Header: Depth=1
	mov	x5, x6
	add	x5, x4
	mov	x1, [x5]
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, -256
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 255
	mov	x1, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	[x5], rax
	mov	r0, x3
	add	r0, x4
	mov	r0, [r0]
	mov	r1, 255
add	x4, 1
	call	__bit_and
	jnz	rax, .LBB109_14
	jmp	.LBB109_15
.LBB109_15:                             // %.loopexit
	add	x6, x4
	mov	r0, [x6]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	[x6], rax
	jmp	.LBB109_20
.LBB109_16:                             // %.preheader8
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, x1
	mov	r1, x2
	call	__udivsi3
	mov	x3, rax
	mov	r0, x3
	mul	r0, x2
	mov	r1, x1
	sub	r1, r0
	add	r1, x7
	mov	r0, [r1]
	mov	r1, 255
	call	__bit_and
	mov	x9, x0
	add	x9, x6
	mov	r0, [x9]
	mov	x4, rax
	mov	r1, -256
add	x6, 1
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x4
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	r0, x1
add	r0, -2147483648
	mov	[x9], rax
	mov	x1, x3
	jle	x8, r0, .LBB109_16
	jmp	.LBB109_17
.LBB109_17:
	mov	x1, x0
	add	x1, x6
	mov	r0, [x1]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	x4, 0
	mov	r0, rax
	call	__bit_or
	mov	r0, 1
	mov	[x1], rax
	je	x6, r0, .LBB109_20
	jmp	.LBB109_18
.LBB109_18:                             // %.preheader6.preheader
add	x6, -1
.LBB109_19:                             // %.preheader6
                                        // =>This Inner Loop Header: Depth=1
	mov	x5, x0
	add	x5, x4
	mov	x1, [x5]
	mov	r1, 255
	mov	r0, x1
	call	__bit_and
	mov	x7, x0
	add	x7, x6
	mov	r0, [x7]
	mov	r1, 255
	mov	x2, rax
	call	__bit_and
	mov	r1, -256
	mov	x3, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 255
	mov	x1, rax
	mov	r0, x3
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	[x5], rax
	mov	r0, [x7]
	mov	r1, -256
	call	__bit_and
	mov	r1, 255
	mov	x1, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
add	x4, 1
add	x6, -1
	mov	[x7], rax
	jl	x4, x6, .LBB109_19
	jmp	.LBB109_20
.LBB109_20:                             // %.loopexit7
	mov	rax, x0
	mov	x10, [rsp+16]
	mov	x9, [rsp+20]
	mov	x8, [rsp+24]
	mov	x7, [rsp+28]
	mov	x6, [rsp+32]
	mov	x5, [rsp+36]
	mov	x4, [rsp+40]
	mov	x3, [rsp+44]
	mov	x2, [rsp+48]
	mov	x1, [rsp+52]
	mov	x0, [rsp+56]
add	rsp, 60
	ret
// -- End function
// -- Begin function labs
labs:                                   // @labs
// %bb.0:
	mov	r1, -1
	mov	rax, r0
	jg	rax, r1, .LBB110_2
	jmp	.LBB110_1
.LBB110_1:
	mov	r0, 0
	sub	r0, rax
	mov	rax, r0
.LBB110_2:
	ret
// -- End function
// -- Begin function llabs
llabs:                                  // @llabs
// %bb.0:
sub	rsp, 24
	mov	[rsp+20], x0
	mov	[rsp+16], x1
	mov	[rsp+12], x2
	mov	[rsp+8], x3
	mov	[rsp+4], x4
	mov	[rsp], x5
	mov	x0, r1
	mov	x4, r0
	mov	x1, 0
	mov	x5, 1
	mov	r0, 1
	jl	x0, x1, .LBB111_2
// %bb.1:
	mov	r0, 0
.LBB111_2:
	mov	x2, 0
	sub	x2, r0
	mov	r0, x4
	add	r0, r0
	mov	r1, 0
	sub	r1, r0
	mov	r0, x2
	call	__bit_and
	mov	x3, rax
	add	x3, x4
	jne	x4, x1, .LBB111_4
// %bb.3:
	mov	x5, 0
.LBB111_4:
	mov	r0, 0
	sub	r0, x5
	mov	r1, 1
	call	__bit_and
	add	rax, x0
	add	rax, x0
	sub	x1, rax
	mov	r0, x2
	mov	r1, x1
	call	__bit_and
	add	x0, rax
	mov	rax, x3
	mov	t0, x0
	mov	x5, [rsp]
	mov	x4, [rsp+4]
	mov	x3, [rsp+8]
	mov	x2, [rsp+12]
	mov	x1, [rsp+16]
	mov	x0, [rsp+20]
add	rsp, 24
	ret
// -- End function
// -- Begin function malloc
malloc:                                 // @malloc
// %bb.0:
sub	rsp, 20
	mov	[rsp+16], x0
	mov	[rsp+12], x1
	mov	[rsp+8], x2
	mov	[rsp+4], x3
	mov	[rsp], x4
	mov	r2, 131072
	mov	r3, [r2]
	mov	r4, 1296125004
	mov	r1, r0
	je	r3, r4, .LBB112_4
	jmp	.LBB112_1
.LBB112_1:
	mov	[r2], 1296125004
	mov	r0, 131073
	mov	[r0], 131075
	mov	r0, 131074
	mov	[r0], 0
	mov	r0, r1
add	r0, -2147483647
	mov	r3, -2147483646
	mov	r2, 1
	jg	r0, r3, .LBB112_3
// %bb.2:
	mov	r2, 0
.LBB112_3:
	mov	r0, 0
	sub	r0, r2
add	r1, -1
	call	__bit_and
add	rax, 2
	jmp	.LBB112_23
.LBB112_4:
	mov	r0, 131074
	mov	x3, [r0]
	mov	r0, r1
add	r0, -2147483647
	mov	r3, -2147483646
	mov	r2, 1
	jg	r0, r3, .LBB112_6
// %bb.5:
	mov	r2, 0
.LBB112_6:
	mov	r0, 0
	sub	r0, r2
add	r1, -1
	mov	x4, 0
	call	__bit_and
add	rax, 2
	jz	x3, .LBB112_23
	jmp	.LBB112_7
.LBB112_7:                              // %.preheader.preheader
	mov	r0, rax
add	r0, -2147483648
.LBB112_8:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	x2, x3
	mov	r1, [x2]
	mov	x0, x2
add	x0, 1
	mov	x3, [x0]
	mov	r2, r1
add	r2, -2147483648
	mov	x1, x4
	jl	r2, r0, .LBB112_16
	jmp	.LBB112_9
.LBB112_9:
	mov	r0, rax
add	r0, -2147483646
	jge	r2, r0, .LBB112_13
	jmp	.LBB112_10
.LBB112_10:
	jnz	x1, .LBB112_12
	jmp	.LBB112_11
.LBB112_11:
	mov	r0, 131074
	mov	[r0], x3
	mov	r0, x0
	jmp	.LBB112_26
.LBB112_12:
add	x1, 1
	mov	[x1], x3
	mov	r0, x0
	jmp	.LBB112_26
.LBB112_13:
	mov	r0, x2
	add	r0, rax
	sub	r1, rax
	mov	[r0], r1
	mov	r1, r0
add	r1, 1
	mov	[r1], x3
	mov	[x2], rax
	jnz	x1, .LBB112_15
	jmp	.LBB112_14
.LBB112_14:
	mov	r1, 131074
	mov	[r1], r0
	mov	r0, x0
	jmp	.LBB112_26
.LBB112_15:
add	x1, 1
	mov	[x1], r0
	mov	r0, x0
	jmp	.LBB112_26
.LBB112_16:                             //   in Loop: Header=BB112_8 Depth=1
	mov	x4, x2
	jnz	x3, .LBB112_8
	jmp	.LBB112_17
.LBB112_17:
	mov	r0, 131073
	mov	r2, [r0]
	mov	r0, r1
	add	r0, x2
	jne	r2, r0, .LBB112_23
	jmp	.LBB112_18
.LBB112_18:
	mov	r3, r2
add	r3, 2139095039
	mov	r4, 2139226114
	mov	r0, 0
	jl	r3, r4, .LBB112_26
	jmp	.LBB112_19
.LBB112_19:
	mov	r3, rax
	sub	r3, r1
	mov	r1, 8388608
	sub	r1, r2
add	r1, -2147483648
add	r3, -2147483648
	jg	r3, r1, .LBB112_26
	jmp	.LBB112_20
.LBB112_20:
	mov	x3, rax
	mov	r2, 1
	je	x1, r0, .LBB112_22
// %bb.21:
	mov	r2, 0
.LBB112_22:
	mov	x4, 131073
	mov	r1, 131073
	sub	r1, x1
	sub	r0, r2
add	x1, 1
	call	__bit_and
	add	rax, x1
	mov	[rax], 0
	mov	r0, x2
	add	r0, x3
	mov	[x4], r0
	mov	[x2], x3
	mov	r0, x0
	jmp	.LBB112_26
.LBB112_23:
	mov	r0, 131073
	mov	r1, [r0]
	mov	r2, r1
add	r2, 2139095039
	mov	r3, 2139226114
	mov	r0, 0
	jl	r2, r3, .LBB112_26
	jmp	.LBB112_24
.LBB112_24:
	mov	r2, 8388608
	sub	r2, r1
add	r2, -2147483648
	mov	r3, rax
add	r3, -2147483648
	jg	r3, r2, .LBB112_26
	jmp	.LBB112_25
.LBB112_25:
	mov	r0, r1
	add	r0, rax
	mov	r2, 131073
	mov	[r2], r0
	mov	[r1], rax
add	r1, 1
	mov	r0, r1
.LBB112_26:
	mov	rax, r0
	mov	x4, [rsp]
	mov	x3, [rsp+4]
	mov	x2, [rsp+8]
	mov	x1, [rsp+12]
	mov	x0, [rsp+16]
add	rsp, 20
	ret
// -- End function
// -- Begin function free
free:                                   // @free
// %bb.0:
sub	rsp, 8
	mov	[rsp+4], x0
	mov	[rsp], x1
	jz	r0, .LBB113_22
	jmp	.LBB113_1
.LBB113_1:
	mov	r1, 131072
	mov	r2, [r1]
	mov	r3, 1296125004
	je	r2, r3, .LBB113_3
	jmp	.LBB113_2
.LBB113_2:
	mov	[r1], 1296125004
	mov	r1, 131073
	mov	[r1], 131075
	mov	r1, 131074
	mov	[r1], 0
	mov	x0, r0
add	x0, -1
	mov	r3, [x0]
	mov	r1, 0
	mov	x1, 0
	mov	r2, 0
	jmp	.LBB113_12
.LBB113_3:
	mov	r1, 131074
	mov	x1, [r1]
	mov	x0, r0
add	x0, -1
	mov	r1, 0
	mov	r2, 1
	jne	x1, r1, .LBB113_5
// %bb.4:
	mov	r2, 0
.LBB113_5:
	mov	r3, [x0]
	jz	x1, .LBB113_12
	jmp	.LBB113_6
.LBB113_6:
	jge	x1, x0, .LBB113_12
	jmp	.LBB113_7
.LBB113_7:                              // %.preheader.preheader
	mov	r4, 0
.LBB113_8:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, x1
	mov	r2, r1
add	r2, 1
	mov	x1, [r2]
	mov	r2, 1
	jne	x1, r4, .LBB113_10
// %bb.9:                               // %.preheader
                                        //   in Loop: Header=BB113_8 Depth=1
	mov	r2, 0
.LBB113_10:                             // %.preheader
                                        //   in Loop: Header=BB113_8 Depth=1
	jz	x1, .LBB113_12
	jmp	.LBB113_11
.LBB113_11:                             // %.preheader
                                        //   in Loop: Header=BB113_8 Depth=1
	jl	x1, x0, .LBB113_8
	jmp	.LBB113_12
.LBB113_12:                             // %.loopexit
	jne	x1, x0, .LBB113_14
	jmp	.LBB113_13
.LBB113_13:
	call	abort
.LBB113_14:
	mov	r4, 131074
	jz	r1, .LBB113_18
	jmp	.LBB113_15
.LBB113_15:
	mov	r4, [r1]
	mov	r5, r4
	add	r5, r1
	jne	r5, x0, .LBB113_17
	jmp	.LBB113_16
.LBB113_16:
	add	r4, r3
	mov	[r1], r4
	mov	x0, r1
	jmp	.LBB113_19
.LBB113_17:
add	r1, 1
	mov	r4, r1
.LBB113_18:
	mov	[r4], x0
	mov	[r0], x1
.LBB113_19:
	mov	r1, 1
	mov	r0, r2
	call	__bit_and
	jz	rax, .LBB113_22
	jmp	.LBB113_20
.LBB113_20:
	mov	r0, [x0]
	mov	r1, r0
	add	r1, x0
	jne	r1, x1, .LBB113_22
	jmp	.LBB113_21
.LBB113_21:
	add	r0, [x1]
	mov	[x0], r0
add	x1, 1
	mov	r0, [x1]
add	x0, 1
	mov	[x0], r0
.LBB113_22:
	mov	x1, [rsp]
	mov	x0, [rsp+4]
add	rsp, 8
	ret
// -- End function
// -- Begin function realloc
realloc:                                // @realloc
// %bb.0:
sub	rsp, 64
	mov	[rsp+60], x0
	mov	[rsp+56], x1
	mov	[rsp+52], x2
	mov	[rsp+48], x3
	mov	[rsp+44], x4
	mov	[rsp+40], x5
	mov	[rsp+36], x6
	mov	[rsp+32], x7
	mov	[rsp+28], x8
	mov	[rsp+24], x9
	mov	[rsp+20], x10
	mov	[rsp+16], x11
	mov	[rsp+12], x12
	mov	[rsp+8], x13
	mov	[rsp+4], x14
	mov	[rsp], x15
	mov	x3, r1
	mov	x0, r0
	jnz	x0, .LBB114_2
	jmp	.LBB114_1
.LBB114_1:
	mov	r0, x3
	call	malloc
	jmp	.LBB114_110
.LBB114_2:
	mov	r0, 131072
	mov	r0, [r0]
	jnz	x3, .LBB114_24
	jmp	.LBB114_3
.LBB114_3:
	mov	r1, 1296125004
	je	r0, r1, .LBB114_5
	jmp	.LBB114_4
.LBB114_4:
	mov	r0, 131072
	mov	[r0], 1296125004
	mov	r0, 131073
	mov	[r0], 131075
	mov	r0, 131074
	mov	[r0], 0
	mov	x1, x0
add	x1, -1
	mov	r2, [x1]
	mov	r1, 0
	mov	x2, 0
	mov	r0, 0
	jmp	.LBB114_14
.LBB114_5:
	mov	r0, 131074
	mov	x2, [r0]
	mov	x1, x0
add	x1, -1
	mov	r1, 0
	mov	r0, 1
	jne	x2, r1, .LBB114_7
// %bb.6:
	mov	r0, 0
.LBB114_7:
	mov	r2, [x1]
	jz	x2, .LBB114_14
	jmp	.LBB114_8
.LBB114_8:
	jge	x2, x1, .LBB114_14
	jmp	.LBB114_9
.LBB114_9:                              // %.preheader.preheader
	mov	r3, 0
.LBB114_10:                             // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, x2
	mov	r0, r1
add	r0, 1
	mov	x2, [r0]
	mov	r0, 1
	jne	x2, r3, .LBB114_12
// %bb.11:                              // %.preheader
                                        //   in Loop: Header=BB114_10 Depth=1
	mov	r0, 0
.LBB114_12:                             // %.preheader
                                        //   in Loop: Header=BB114_10 Depth=1
	jz	x2, .LBB114_14
	jmp	.LBB114_13
.LBB114_13:                             // %.preheader
                                        //   in Loop: Header=BB114_10 Depth=1
	jl	x2, x1, .LBB114_10
	jmp	.LBB114_14
.LBB114_14:                             // %.loopexit
	jne	x2, x1, .LBB114_16
	jmp	.LBB114_15
.LBB114_15:
	call	abort
.LBB114_16:
	mov	r3, 131074
	jz	r1, .LBB114_20
	jmp	.LBB114_17
.LBB114_17:
	mov	r3, [r1]
	mov	r4, r3
	add	r4, r1
	jne	r4, x1, .LBB114_19
	jmp	.LBB114_18
.LBB114_18:
	add	r3, r2
	mov	[r1], r3
	mov	x1, r1
	jmp	.LBB114_21
.LBB114_19:
add	r1, 1
	mov	r3, r1
.LBB114_20:
	mov	[r3], x1
	mov	[x0], x2
.LBB114_21:
	mov	r1, 1
	call	__bit_and
	mov	r0, rax
	mov	rax, 0
	jz	r0, .LBB114_110
	jmp	.LBB114_22
.LBB114_22:
	mov	r0, [x1]
	mov	r1, r0
	add	r1, x1
	jne	r1, x2, .LBB114_110
	jmp	.LBB114_23
.LBB114_23:
	add	r0, [x2]
	mov	[x1], r0
add	x2, 1
	mov	r0, [x2]
add	x1, 1
	mov	[x1], r0
	jmp	.LBB114_110
.LBB114_24:
	mov	r1, 1296125004
	je	r0, r1, .LBB114_26
	jmp	.LBB114_25
.LBB114_25:
	mov	r0, 131072
	mov	[r0], 1296125004
	mov	r0, 131073
	mov	[r0], 131075
	mov	r0, 131074
	mov	[r0], 0
.LBB114_26:
	mov	x9, x0
add	x9, -1
	mov	x2, [x9]
	mov	r0, x3
add	r0, -2147483647
	mov	r2, -2147483646
	mov	r1, 1
	jg	r0, r2, .LBB114_28
// %bb.27:
	mov	r1, 0
.LBB114_28:
	mov	r0, 0
	sub	r0, r1
	mov	r1, x3
add	r1, -1
	call	__bit_and
	mov	x1, rax
add	rax, -2147483646
	mov	r0, x2
add	r0, -2147483648
add	x1, 2
	jge	r0, rax, .LBB114_87
	jmp	.LBB114_29
.LBB114_29:
	mov	r0, 131073
	mov	r2, [r0]
	mov	r1, x2
	add	r1, x9
	mov	r0, x1
	sub	r0, x2
	je	r1, r2, .LBB114_33
	jmp	.LBB114_30
.LBB114_30:
	mov	r2, 131074
	mov	r2, [r2]
	mov	x4, 0
	jz	r2, .LBB114_38
	jmp	.LBB114_31
.LBB114_31:
	jge	r2, r1, .LBB114_38
	jmp	.LBB114_32
.LBB114_32:                             // %.preheader28.preheader
	jmp	.LBB114_36
.LBB114_33:
	mov	r2, r1
add	r2, 2139095039
	mov	r3, 2139226114
	jl	r2, r3, .LBB114_47
	jmp	.LBB114_34
.LBB114_34:
	mov	r2, 8388608
	sub	r2, r1
add	r2, -2147483648
add	r0, -2147483648
	jg	r0, r2, .LBB114_47
	jmp	.LBB114_35
.LBB114_35:
	mov	r0, x1
	add	r0, x9
	mov	r1, 131073
	mov	[r1], r0
	mov	[x9], x1
	mov	rax, x0
	jmp	.LBB114_110
.LBB114_36:                             // %.preheader28
                                        // =>This Inner Loop Header: Depth=1
	mov	x4, r2
add	r2, 1
	mov	r2, [r2]
	jz	r2, .LBB114_38
	jmp	.LBB114_37
.LBB114_37:                             // %.preheader28
                                        //   in Loop: Header=BB114_36 Depth=1
	jl	r2, r1, .LBB114_36
	jmp	.LBB114_38
.LBB114_38:                             // %.loopexit29
	jne	r2, r1, .LBB114_47
	jmp	.LBB114_39
.LBB114_39:
	mov	r2, [r1]
	mov	r1, r0
add	r1, -2147483648
	mov	r3, r2
add	r3, -2147483648
	jl	r3, r1, .LBB114_47
	jmp	.LBB114_40
.LBB114_40:
	mov	r1, x2
	add	r1, x0
	mov	r1, [r1]
	mov	r4, r0
add	r4, -2147483646
	jge	r3, r4, .LBB114_44
	jmp	.LBB114_41
.LBB114_41:
	add	r2, x2
	mov	[x9], r2
	jnz	x4, .LBB114_43
	jmp	.LBB114_42
.LBB114_42:
	mov	r0, 131074
	mov	[r0], r1
	mov	rax, x0
	jmp	.LBB114_110
.LBB114_43:
add	x4, 1
	mov	[x4], r1
	mov	rax, x0
	jmp	.LBB114_110
.LBB114_44:
	add	x9, x1
	sub	r2, r0
	mov	[x9], r2
	mov	r0, x1
	add	r0, x0
	mov	[r0], r1
	mov	r0, 0
	mov	r2, 1
	je	x4, r0, .LBB114_46
// %bb.45:
	mov	r2, 0
.LBB114_46:
	mov	r1, 131073
	sub	r1, x4
	sub	r0, r2
add	x4, 1
	call	__bit_and
	add	rax, x4
	mov	[rax], x9
	mov	r0, x0
add	r0, -1
	mov	[r0], x1
	mov	rax, x0
	jmp	.LBB114_110
.LBB114_47:
	mov	r0, x3
	call	malloc
	mov	x1, rax
	mov	rax, 0
	jz	x1, .LBB114_110
	jmp	.LBB114_48
.LBB114_48:
	mov	r0, x3
	call	__bit_not
	add	rax, x2
	mov	r0, x3
add	r0, -2147483648
add	x2, 2147483647
	mov	r1, 1
	jl	x2, r0, .LBB114_50
// %bb.49:
	mov	r1, 0
.LBB114_50:
	mov	r0, 0
	sub	r0, r1
	mov	x10, 0
	mov	r1, rax
	call	__bit_and
	add	x3, rax
	mov	r0, x3
add	r0, -2147483648
	mov	r1, -2147483632
	mov	x4, x0
	mov	x6, x1
	jl	r0, r1, .LBB114_63
	jmp	.LBB114_51
.LBB114_51:
	mov	r1, 3
	mov	r0, x1
	call	__bit_and
	mov	x2, rax
	mov	x7, 8
	sub	x7, x2
	mov	x5, x0
.LBB114_52:                             // =>This Inner Loop Header: Depth=1
	mov	r0, x0
	add	r0, x10
	mov	r0, [r0]
	mov	x8, x1
	mov	r1, 255
	add	x8, x10
	call	__bit_and
	mov	r0, [x8]
	mov	r1, -256
	mov	x4, rax
	call	__bit_and
	mov	r1, 255
	mov	x6, rax
	mov	r0, x4
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	[x8], rax
add	x10, 1
add	x5, 1
	jne	x7, x10, .LBB114_52
	jmp	.LBB114_53
.LBB114_53:
	mov	r1, -8
	mov	r0, x2
	call	__bit_or
	mov	x2, rax
	mov	x4, x0
	add	x4, x10
	mov	r1, 3
	add	x2, x3
	mov	r0, x4
	call	__bit_and
	jnz	rax, .LBB114_60
	jmp	.LBB114_54
.LBB114_54:
	mov	x6, x1
	mov	r0, x2
add	r0, -2147483648
	mov	r1, -2147483632
	add	x6, x10
	jl	r0, r1, .LBB114_56
	jmp	.LBB114_55
.LBB114_55:                             // %.preheader.i.preheader
	mov	x6, x1
	add	x6, x10
	add	x10, x0
	mov	r0, 0
	mov	r1, -2147483633
	jmp	.LBB114_58
.LBB114_56:                             // %.preheader161
	mov	r0, -2147483645
	mov	x3, x2
	jmp	.LBB114_59
.LBB114_57:
	add	x10, r0
	mov	r1, 3
	add	x6, r0
	mov	x4, x10
	mov	x3, x2
	jg	x2, r1, .LBB114_56
	jmp	.LBB114_63
.LBB114_58:                             // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r2, x10
	add	r2, r0
	mov	r3, [r2]
	mov	r4, x6
	add	r4, r0
	mov	[r4], r3
	mov	r3, r2
add	r3, 4
	mov	r3, [r3]
	mov	r5, r4
add	r5, 4
	mov	[r5], r3
	mov	r3, r2
add	r3, 8
	mov	r3, [r3]
	mov	r5, r4
add	r5, 8
	mov	[r5], r3
add	r2, 12
	mov	r2, [r2]
	mov	r3, x2
add	r4, 12
	mov	[r4], r2
add	x2, -16
add	r3, 2147483632
add	r0, 16
	jg	r3, r1, .LBB114_58
	jmp	.LBB114_57
.LBB114_59:                             // =>This Inner Loop Header: Depth=1
	mov	r1, [x4]
add	x4, 4
	mov	[x6], r1
add	x3, -4
	mov	r1, x2
add	r1, 2147483644
add	x6, 4
	mov	x2, x3
	jg	r1, r0, .LBB114_59
	jmp	.LBB114_63
.LBB114_60:
	mov	r1, 3
	mov	r0, rax
	mov	x6, rax
	call	__bit_shl
	mov	x3, rax
	mov	x12, 8
	mov	r1, 3
	sub	x12, x6
	mov	r0, x5
	call	__bit_and
	mov	x13, x0
	sub	x13, rax
	mov	r0, x13
	add	r0, x10
	mov	x6, [r0]
add	x13, 4
	mov	x11, 0
add	x12, -2147483648
.LBB114_61:                             // =>This Inner Loop Header: Depth=1
	mov	x14, x2
	mov	x15, x1
	mov	r0, x10
	add	r0, x11
	add	r0, x13
	mov	x7, [r0]
	add	x15, x11
	mov	r1, 31
	add	x15, x10
	mov	r0, x3
	call	__bit_and
	mov	r0, x6
	mov	r1, rax
	call	__bit_shr
	mov	x6, rax
	mov	r0, x3
	call	__bit_not
	mov	r1, 31
	mov	r0, rax
	call	__bit_and
	mov	r1, 1
	mov	x8, rax
	mov	r0, x7
	call	__bit_shl
	mov	r0, rax
	mov	r1, x8
	call	__bit_shl
	mov	r0, rax
	mov	r1, x6
	call	__bit_or
	mov	[x15], rax
add	x2, -4
add	x14, 2147483644
add	x11, 4
	mov	x6, x7
	jge	x14, x12, .LBB114_61
	jmp	.LBB114_62
.LBB114_62:
	mov	r1, -4
	mov	r0, x4
	call	__bit_or
	mov	x3, rax
	mov	r1, 3
	add	x3, x11
	mov	r0, x5
	call	__bit_and
	mov	x4, x0
	sub	x4, rax
	add	x4, x3
	add	x4, x10
add	x4, 4
	mov	x6, x1
	add	x6, x10
	add	x6, x11
	jmp	.LBB114_64
.LBB114_63:                             // %.loopexit8.i
	mov	x2, x3
	jz	x3, .LBB114_66
	jmp	.LBB114_64
.LBB114_64:                             // %.preheader158
	mov	x7, x6
.LBB114_65:                             // =>This Inner Loop Header: Depth=1
	mov	r0, [x4]
add	x2, -1
	mov	r1, 255
add	x4, 1
	call	__bit_and
	mov	r0, [x6]
	mov	x3, rax
	mov	r1, -256
add	x7, 1
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x3
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	[x6], rax
	mov	x6, x7
	jnz	x2, .LBB114_65
	jmp	.LBB114_66
.LBB114_66:                             // %memcpy.exit
	mov	r0, 131072
	mov	r1, [r0]
	mov	r2, 1296125004
	je	r1, r2, .LBB114_68
	jmp	.LBB114_67
.LBB114_67:
	mov	[r0], 1296125004
	mov	r0, 131073
	mov	[r0], 131075
	mov	r0, 131074
	mov	[r0], 0
	mov	r2, [x9]
	mov	r1, 0
	mov	x2, 0
	mov	r0, 0
	jmp	.LBB114_77
.LBB114_68:
	mov	r0, 131074
	mov	x2, [r0]
	mov	r1, 0
	mov	r0, 1
	jne	x2, r1, .LBB114_70
// %bb.69:
	mov	r0, 0
.LBB114_70:
	mov	r2, [x9]
	jz	x2, .LBB114_77
	jmp	.LBB114_71
.LBB114_71:
	jge	x2, x9, .LBB114_77
	jmp	.LBB114_72
.LBB114_72:                             // %.preheader26.preheader
	mov	r3, 0
.LBB114_73:                             // %.preheader26
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, x2
	mov	r0, r1
add	r0, 1
	mov	x2, [r0]
	mov	r0, 1
	jne	x2, r3, .LBB114_75
// %bb.74:                              // %.preheader26
                                        //   in Loop: Header=BB114_73 Depth=1
	mov	r0, 0
.LBB114_75:                             // %.preheader26
                                        //   in Loop: Header=BB114_73 Depth=1
	jz	x2, .LBB114_77
	jmp	.LBB114_76
.LBB114_76:                             // %.preheader26
                                        //   in Loop: Header=BB114_73 Depth=1
	jl	x2, x9, .LBB114_73
	jmp	.LBB114_77
.LBB114_77:                             // %.loopexit27
	jne	x2, x9, .LBB114_79
	jmp	.LBB114_78
.LBB114_78:
	call	abort
.LBB114_79:
	mov	r3, 131074
	jz	r1, .LBB114_83
	jmp	.LBB114_80
.LBB114_80:
	mov	r3, [r1]
	mov	r4, r3
	add	r4, r1
	jne	r4, x9, .LBB114_82
	jmp	.LBB114_81
.LBB114_81:
	add	r3, r2
	mov	[r1], r3
	mov	x9, r1
	jmp	.LBB114_84
.LBB114_82:
add	r1, 1
	mov	r3, r1
.LBB114_83:
	mov	[r3], x9
	mov	[x0], x2
.LBB114_84:
	mov	r1, 1
	call	__bit_and
	mov	r0, rax
	mov	rax, x1
	jz	r0, .LBB114_110
	jmp	.LBB114_85
.LBB114_85:
	mov	r0, [x9]
	mov	r1, r0
	add	r1, x9
	mov	rax, x1
	jne	r1, x2, .LBB114_110
	jmp	.LBB114_86
.LBB114_86:
	add	r0, [x2]
	mov	[x9], r0
add	x2, 1
	mov	r0, [x2]
add	x9, 1
	mov	[x9], r0
	mov	rax, x1
	jmp	.LBB114_110
.LBB114_87:
	sub	x2, x1
	mov	r0, x2
add	r0, -2147483648
	mov	r1, -2147483646
	mov	rax, x0
	jl	r0, r1, .LBB114_110
	jmp	.LBB114_88
.LBB114_88:
	mov	r0, x1
	add	r0, x9
	mov	[x9], x1
	add	x1, x0
	mov	[r0], x2
	mov	rax, x0
	jz	x1, .LBB114_110
	jmp	.LBB114_89
.LBB114_89:
	mov	r0, 131072
	mov	r1, [r0]
	mov	r2, 1296125004
	je	r1, r2, .LBB114_91
	jmp	.LBB114_90
.LBB114_90:
	mov	[r0], 1296125004
	mov	r0, 131073
	mov	[r0], 131075
	mov	r0, 131074
	mov	[r0], 0
	mov	x2, x1
add	x2, -1
	mov	r2, [x2]
	mov	r1, 0
	mov	x3, 0
	mov	r0, 0
	jmp	.LBB114_100
.LBB114_91:
	mov	r0, 131074
	mov	x3, [r0]
	mov	x2, x1
add	x2, -1
	mov	r1, 0
	mov	r0, 1
	jne	x3, r1, .LBB114_93
// %bb.92:
	mov	r0, 0
.LBB114_93:
	mov	r2, [x2]
	jz	x3, .LBB114_100
	jmp	.LBB114_94
.LBB114_94:
	jge	x3, x2, .LBB114_100
	jmp	.LBB114_95
.LBB114_95:                             // %.preheader30.preheader
	mov	r3, 0
.LBB114_96:                             // %.preheader30
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, x3
	mov	r0, r1
add	r0, 1
	mov	x3, [r0]
	mov	r0, 1
	jne	x3, r3, .LBB114_98
// %bb.97:                              // %.preheader30
                                        //   in Loop: Header=BB114_96 Depth=1
	mov	r0, 0
.LBB114_98:                             // %.preheader30
                                        //   in Loop: Header=BB114_96 Depth=1
	jz	x3, .LBB114_100
	jmp	.LBB114_99
.LBB114_99:                             // %.preheader30
                                        //   in Loop: Header=BB114_96 Depth=1
	jl	x3, x2, .LBB114_96
	jmp	.LBB114_100
.LBB114_100:                            // %.loopexit31
	jne	x3, x2, .LBB114_102
	jmp	.LBB114_101
.LBB114_101:
	call	abort
.LBB114_102:
	mov	r3, 131074
	jz	r1, .LBB114_106
	jmp	.LBB114_103
.LBB114_103:
	mov	r3, [r1]
	mov	r4, r3
	add	r4, r1
	jne	r4, x2, .LBB114_105
	jmp	.LBB114_104
.LBB114_104:
	add	r3, r2
	mov	[r1], r3
	mov	x2, r1
	jmp	.LBB114_107
.LBB114_105:
add	r1, 1
	mov	r3, r1
.LBB114_106:
	mov	[r3], x2
	mov	[x1], x3
.LBB114_107:
	mov	r1, 1
	call	__bit_and
	mov	r0, rax
	mov	rax, x0
	jz	r0, .LBB114_110
	jmp	.LBB114_108
.LBB114_108:
	mov	r0, [x2]
	mov	r1, r0
	add	r1, x2
	mov	rax, x0
	jne	r1, x3, .LBB114_110
	jmp	.LBB114_109
.LBB114_109:
	add	r0, [x3]
	mov	[x2], r0
add	x3, 1
	mov	r0, [x3]
add	x2, 1
	mov	[x2], r0
	mov	rax, x0
.LBB114_110:
	mov	x15, [rsp]
	mov	x14, [rsp+4]
	mov	x13, [rsp+8]
	mov	x12, [rsp+12]
	mov	x11, [rsp+16]
	mov	x10, [rsp+20]
	mov	x9, [rsp+24]
	mov	x8, [rsp+28]
	mov	x7, [rsp+32]
	mov	x6, [rsp+36]
	mov	x5, [rsp+40]
	mov	x4, [rsp+44]
	mov	x3, [rsp+48]
	mov	x2, [rsp+52]
	mov	x1, [rsp+56]
	mov	x0, [rsp+60]
add	rsp, 64
	ret
// -- End function
// -- Begin function calloc
calloc:                                 // @calloc
// %bb.0:
sub	rsp, 24
	mov	[rsp+20], x0
	mov	[rsp+16], x1
	mov	[rsp+12], x2
	mov	[rsp+8], x3
	mov	[rsp+4], x4
	mov	[rsp], x5
	mov	x0, r1
	mov	x2, r0
	jz	x2, .LBB115_4
	jmp	.LBB115_1
.LBB115_1:
	mov	r1, 0
	mov	r3, 0
	mov	x1, 0
	mov	r0, x2
	mov	r2, x0
	call	__muldi3
	mov	r0, 1
	jne	t0, x1, .LBB115_3
// %bb.2:
	mov	r0, 0
.LBB115_3:
	jnz	r0, .LBB115_20
	jmp	.LBB115_4
.LBB115_4:
	mul	x0, x2
	mov	r0, x0
	call	malloc
	mov	x2, rax
	mov	x1, 0
	jz	x2, .LBB115_20
	jmp	.LBB115_5
.LBB115_5:
	mov	r1, 3
	mov	x1, x2
	mov	r0, x1
	call	__bit_and
	jz	rax, .LBB115_10
	jmp	.LBB115_6
.LBB115_6:                              // %.preheader2.preheader
	mov	x4, x2
add	x4, 1
	mov	x3, 0
.LBB115_7:                              // %.preheader2
                                        // =>This Inner Loop Header: Depth=1
	je	x0, x3, .LBB115_20
	jmp	.LBB115_8
.LBB115_8:                              //   in Loop: Header=BB115_7 Depth=1
	mov	x5, x2
	add	x5, x3
	mov	r0, [x5]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	r0, x4
	add	r0, x3
	mov	r1, 3
	mov	[x5], rax
	call	__bit_and
add	x3, 1
	jnz	rax, .LBB115_7
	jmp	.LBB115_9
.LBB115_9:                              // %.loopexit7.i.loopexit
	add	x2, x3
	sub	x0, x3
.LBB115_10:                             // %.loopexit7.i
	mov	r0, x0
add	r0, -2147483648
	mov	r1, -2147483644
	jl	r0, r1, .LBB115_17
	jmp	.LBB115_11
.LBB115_11:
	mov	r1, -2147483632
	jl	r0, r1, .LBB115_13
	jmp	.LBB115_12
.LBB115_12:                             // %.preheader.i.preheader
	mov	r0, -2147483633
	jmp	.LBB115_15
.LBB115_13:                             // %.preheader33
	mov	r0, -2147483645
	mov	r1, x0
	jmp	.LBB115_16
.LBB115_14:
	mov	r0, 3
	jg	x0, r0, .LBB115_13
	jmp	.LBB115_17
.LBB115_15:                             // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, x0
	mov	r2, x2
add	r2, 4
	mov	[x2], 0
	mov	r3, x2
add	r3, 8
	mov	[r2], 0
	mov	r2, x2
add	r2, 12
	mov	[r3], 0
add	x2, 16
	mov	[r2], 0
add	r1, 2147483632
add	x0, -16
	jg	r1, r0, .LBB115_15
	jmp	.LBB115_14
.LBB115_16:                             // =>This Inner Loop Header: Depth=1
	mov	[x2], 0
add	x0, -4
	mov	r2, r1
add	r2, 2147483644
add	x2, 4
	mov	r1, x0
	jg	r2, r0, .LBB115_16
	jmp	.LBB115_17
.LBB115_17:                             // %.loopexit5.i
	jz	x0, .LBB115_20
	jmp	.LBB115_18
.LBB115_18:                             // %.preheader.preheader
	mov	x3, x2
.LBB115_19:                             // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x2]
add	x0, -1
	mov	r1, -256
add	x3, 1
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	[x2], rax
	mov	x2, x3
	jnz	x0, .LBB115_19
	jmp	.LBB115_20
.LBB115_20:                             // %memset.exit
	mov	rax, x1
	mov	x5, [rsp]
	mov	x4, [rsp+4]
	mov	x3, [rsp+8]
	mov	x2, [rsp+12]
	mov	x1, [rsp+16]
	mov	x0, [rsp+20]
add	rsp, 24
	ret
// -- End function
// -- Begin function d2fixed_buffered_n
d2fixed_buffered_n:                     // @d2fixed_buffered_n
// %bb.0:                               // %memcpy.exit
sub	rsp, 128
	mov	[rsp+124], x0
	mov	[rsp+120], x1
	mov	[rsp+116], x2
	mov	[rsp+112], x3
	mov	[rsp+108], x4
	mov	[rsp+104], x5
	mov	[rsp+100], x6
	mov	[rsp+96], x7
	mov	[rsp+92], x8
	mov	[rsp+88], x9
	mov	[rsp+84], x10
	mov	[rsp+80], x11
	mov	[rsp+76], x12
	mov	[rsp+72], x13
	mov	[rsp+68], x14
	mov	[rsp+64], x15
	mov	x7, r1
	mov	r1, 1048575
	mov	x1, r3
	mov	x5, r2
	mov	x15, r0
	mov	r0, x7
	call	__bit_and
	mov	r1, 20
	mov	x14, rax
	mov	r0, x7
	call	__bit_shr
	mov	r1, 2047
	mov	x2, 2047
	mov	r0, rax
	call	__bit_and
	mov	x0, rax
	jne	x0, x2, .LBB116_6
	jmp	.LBB116_1
.LBB116_1:
	mov	r0, x15
	mov	r1, x14
	call	__bit_or
	jz	rax, .LBB116_3
	jmp	.LBB116_2
.LBB116_2:                              // %memcpy.exit38.loopexit175
	mov	r0, [x1]
	mov	x0, x1
	mov	r1, -256
add	x0, 1
	call	__bit_and
	mov	r1, 110
	mov	r0, rax
	call	__bit_or
	mov	[x1], rax
	mov	r0, [x0]
	mov	r1, -256
add	x1, 2
	call	__bit_and
	mov	r1, 97
	mov	r0, rax
	call	__bit_or
	mov	[x0], rax
	mov	r0, [x1]
	mov	r1, -256
	call	__bit_and
	mov	r1, 110
	mov	r0, rax
	call	__bit_or
	mov	[x1], rax
	mov	x9, 3
	jmp	.LBB116_205
.LBB116_3:
	mov	r0, -1
	mov	x9, 8
	jg	x7, r0, .LBB116_5
	jmp	.LBB116_4
.LBB116_4:
	mov	r0, [x1]
	mov	r1, -256
	call	__bit_and
	mov	r1, 45
	mov	r0, rax
	call	__bit_or
	mov	[x1], rax
	mov	x9, 9
.LBB116_5:                              // %memcpy.exit38.loopexit
	mov	r1, 31
	mov	r0, x7
	call	__bit_shr
	add	x1, rax
	mov	r0, [x1]
	mov	x0, x1
	mov	r1, -256
add	x0, 1
	call	__bit_and
	mov	r1, 73
	mov	r0, rax
	call	__bit_or
	mov	[x1], rax
	mov	r0, [x0]
	mov	x2, x1
	mov	r1, -256
add	x2, 2
	call	__bit_and
	mov	r1, 110
	mov	r0, rax
	call	__bit_or
	mov	[x0], rax
	mov	r0, [x2]
	mov	x0, x1
	mov	r1, -256
add	x0, 3
	call	__bit_and
	mov	r1, 102
	mov	r0, rax
	call	__bit_or
	mov	[x2], rax
	mov	r0, [x0]
	mov	x2, x1
	mov	r1, -256
add	x2, 4
	call	__bit_and
	mov	r1, 105
	mov	r0, rax
	call	__bit_or
	mov	[x0], rax
	mov	r0, [x2]
	mov	x0, x1
	mov	r1, -256
add	x0, 5
	call	__bit_and
	mov	r1, 110
	mov	r0, rax
	call	__bit_or
	mov	[x2], rax
	mov	r0, [x0]
	mov	x2, x1
	mov	r1, -256
add	x2, 6
	call	__bit_and
	mov	r1, 105
	mov	r0, rax
	call	__bit_or
	mov	[x0], rax
	mov	r0, [x2]
	mov	r1, -256
add	x1, 7
	call	__bit_and
	mov	r1, 116
	mov	r0, rax
	call	__bit_or
	mov	[x2], rax
	mov	r0, [x1]
	mov	r1, -256
	call	__bit_and
	mov	r1, 121
	mov	r0, rax
	call	__bit_or
	mov	[x1], rax
	jmp	.LBB116_205
.LBB116_6:
	mov	r0, x15
	mov	r1, x14
	call	__bit_or
	jnz	rax, .LBB116_26
	jmp	.LBB116_7
.LBB116_7:
	jnz	x0, .LBB116_26
	jmp	.LBB116_8
.LBB116_8:
	mov	r0, -1
	mov	x3, 0
	jg	x7, r0, .LBB116_10
	jmp	.LBB116_9
.LBB116_9:
	mov	r0, [x1]
	mov	r1, -256
	call	__bit_and
	mov	r1, 45
	mov	r0, rax
	call	__bit_or
	mov	[x1], rax
	mov	x3, 1
.LBB116_10:
	mov	x4, x1
	add	x4, x3
	mov	r0, [x4]
	mov	x9, x3
	mov	r1, -256
add	x9, 1
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	[x4], rax
	jz	x5, .LBB116_205
	jmp	.LBB116_11
.LBB116_11:
	mov	r1, 2
	mov	r0, x3
	call	__bit_or
	add	x9, x1
	mov	r0, [x9]
	mov	r1, -256
	mov	x3, rax
	call	__bit_and
	mov	r1, 46
	mov	r0, rax
	call	__bit_or
	add	x1, x3
	mov	r1, 3
	mov	[x9], rax
	mov	r0, x1
	call	__bit_and
	mov	x0, x5
	jz	rax, .LBB116_15
	jmp	.LBB116_12
.LBB116_12:                             // %.preheader78.preheader
add	x4, 3
	mov	x2, x1
	mov	x0, x5
.LBB116_13:                             // %.preheader78
                                        // =>This Inner Loop Header: Depth=1
	jz	x0, .LBB116_25
	jmp	.LBB116_14
.LBB116_14:                             //   in Loop: Header=BB116_13 Depth=1
	mov	r0, [x2]
add	x0, -1
	mov	x1, x2
	mov	r1, -256
add	x1, 1
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	r1, 3
	mov	[x2], rax
	mov	r0, x4
	call	__bit_and
add	x4, 1
	mov	x2, x1
	jnz	rax, .LBB116_13
	jmp	.LBB116_15
.LBB116_15:                             // %.loopexit7.i
	mov	r0, x0
add	r0, -2147483648
	mov	r1, -2147483644
	jl	r0, r1, .LBB116_22
	jmp	.LBB116_16
.LBB116_16:
	mov	r1, -2147483632
	jl	r0, r1, .LBB116_18
	jmp	.LBB116_17
.LBB116_17:                             // %.preheader.i.preheader
	mov	r0, -2147483633
	jmp	.LBB116_20
.LBB116_18:                             // %.preheader432
	mov	r0, -2147483645
	mov	r1, x0
	jmp	.LBB116_21
.LBB116_19:
	mov	r0, 3
	jg	x0, r0, .LBB116_18
	jmp	.LBB116_22
.LBB116_20:                             // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, x0
	mov	r2, x1
add	r2, 4
	mov	[x1], 808464432
	mov	r3, x1
add	r3, 8
	mov	[r2], 808464432
	mov	r2, x1
add	r2, 12
	mov	[r3], 808464432
add	x1, 16
	mov	[r2], 808464432
add	r1, 2147483632
add	x0, -16
	jg	r1, r0, .LBB116_20
	jmp	.LBB116_19
.LBB116_21:                             // =>This Inner Loop Header: Depth=1
	mov	[x1], 808464432
add	x0, -4
	mov	r2, r1
add	r2, 2147483644
add	x1, 4
	mov	r1, x0
	jg	r2, r0, .LBB116_21
	jmp	.LBB116_22
.LBB116_22:                             // %.loopexit5.i
	jz	x0, .LBB116_25
	jmp	.LBB116_23
.LBB116_23:                             // %.preheader.preheader
	mov	x2, x1
.LBB116_24:                             // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x1]
add	x0, -1
	mov	r1, -256
add	x2, 1
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	[x1], rax
	mov	x1, x2
	jnz	x0, .LBB116_24
	jmp	.LBB116_25
.LBB116_25:                             // %memset.exit
	add	x3, x5
	mov	x9, x3
	jmp	.LBB116_205
.LBB116_26:
	mov	r1, 1048576
	mov	r0, x14
	call	__bit_or
	jz	x0, .LBB116_28
	jmp	.LBB116_27
.LBB116_27:
	mov	x14, rax
.LBB116_28:
	mov	x2, -1074
	jz	x0, .LBB116_30
	jmp	.LBB116_29
.LBB116_29:
add	x0, -1075
	mov	x2, x0
.LBB116_30:
	mov	[rsp+16], x5
	mov	r0, -1
	mov	x9, 0
	jg	x7, r0, .LBB116_32
	jmp	.LBB116_31
.LBB116_31:
	mov	r0, [x1]
	mov	r1, -256
	call	__bit_and
	mov	r1, 45
	mov	r0, rax
	call	__bit_or
	mov	[x1], rax
	mov	x9, 1
.LBB116_32:
	mov	r0, -52
	mov	[rsp+32], x15
	mov	[rsp+36], x14
	mov	[rsp+8], x2
	jl	x2, r0, .LBB116_78
	jmp	.LBB116_33
.LBB116_33:
	mov	x3, 0
	mov	x7, 1
	mov	r1, 1
	mov	x0, [rsp+8]
	jg	x0, x3, .LBB116_35
// %bb.34:
	mov	r1, 0
.LBB116_35:
	mov	r0, 0
	sub	r0, r1
	mov	r1, x0
	call	__bit_and
	mov	x6, rax
	mov	r0, x6
	mul	r0, 78913
	mov	r1, 18
	call	__bit_shr
add	rax, 25
	mov	r1, 65535
	mov	r0, rax
	call	__bit_and
	mul	rax, 58255
	mov	r1, 19
	mov	r0, rax
	call	__bit_shr
	mov	x8, rax
	mov	x4, x6
	sub	x4, x0
add	x4, 128
	mov	r0, x1
add	r0, -4
	mov	[rsp+4], r0
	mov	x0, mcasm_static_6c0d4b28168d34450f36832cd0ebf870
	mov	x2, 99999999
	mov	x10, x8
	mov	[rsp+12], x6
	mov	[rsp+24], x4
.LBB116_36:                             // =>This Loop Header: Depth=1
                                        //     Child Loop BB116_40 Depth 2
                                        //     Child Loop BB116_68 Depth 2
                                        //     Child Loop BB116_49 Depth 2
                                        //     Child Loop BB116_52 Depth 2
add	x10, -1
	mov	x11, rsp
add	x11, 40
	mov	r0, x6
	mov	r1, x10
	mov	r2, x11
	call	ryu_fill_pow10_split_exp
	mov	r0, x15
	mov	r1, x14
	mov	r2, x11
	mov	r3, x4
	call	ryu_mul_shift_mod1e9_exact
	mov	x11, rax
	jnz	x3, .LBB116_41
	jmp	.LBB116_37
.LBB116_37:                             //   in Loop: Header=BB116_36 Depth=1
	jnz	x11, .LBB116_55
	jmp	.LBB116_38
.LBB116_38:                             //   in Loop: Header=BB116_36 Depth=1
	mov	r0, 2
	jl	x8, r0, .LBB116_78
	jmp	.LBB116_39
.LBB116_39:                             // %.preheader98.preheader
                                        //   in Loop: Header=BB116_36 Depth=1
.LBB116_40:                             // %.preheader98
                                        //   Parent Loop BB116_36 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	x10, x8
add	x10, -2
	mov	x11, rsp
add	x11, 40
	mov	r0, x6
	mov	r1, x10
	mov	r2, x11
	call	ryu_fill_pow10_split_exp
	mov	r0, x15
	mov	r1, x14
	mov	r2, x11
	mov	r3, x4
	call	ryu_mul_shift_mod1e9_exact
	mov	x11, rax
	jz	x11, .LBB116_77
	jmp	.LBB116_54
.LBB116_41:                             //   in Loop: Header=BB116_36 Depth=1
	mov	x12, x1
	add	x12, x9
	jz	x11, .LBB116_43
	jmp	.LBB116_42
.LBB116_42:                             // %memcpy.exit40
                                        //   in Loop: Header=BB116_36 Depth=1
	mov	x3, x12
	mov	r1, 10000
add	x3, 7
	mov	r0, x11
	call	__udivsi3
	mov	x13, rax
	mov	x15, x13
	mul	x15, -10000
	add	x15, x11
	mov	r1, 100
	mov	r0, x15
	call	__udivsi3
	mov	x14, rax
	mov	r0, x14
	mul	r0, -100
	add	r0, x15
	mov	r1, 1
	call	__bit_shl
	mov	x15, rax
	add	x15, x0
	mov	r0, [x15]
	mov	r1, 255
add	x15, 1
	call	__bit_and
	mov	r0, [x3]
	mov	x6, rax
	mov	x4, x12
	mov	r1, -256
add	x4, 8
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x6
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	[x3], rax
	mov	r0, [x15]
	mov	x15, [rsp+32]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x4]
	mov	r1, -256
	mov	x5, rax
	call	__bit_and
	mov	r1, 255
	mov	x6, rax
	mov	r0, x5
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	[x4], rax
	mov	x3, x12
	mov	r1, 1
add	x3, 5
	mov	r0, x14
	call	__bit_shl
	mov	x5, rax
	add	x5, x0
	mov	r0, [x5]
	mov	r1, 255
add	x5, 1
	call	__bit_and
	mov	r0, [x3]
	mov	x6, rax
	mov	x4, x12
	mov	r1, -256
add	x4, 6
	call	__bit_and
	mov	r1, 255
	mov	x14, rax
	mov	r0, x6
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x14
	mov	r1, rax
	call	__bit_or
	mov	[x3], rax
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x4]
	mov	r1, -256
	mov	x5, rax
	call	__bit_and
	mov	r1, 255
	mov	x6, rax
	mov	r0, x5
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	r1, 100000000
	mov	[x4], rax
	mov	r0, x11
	call	__udivsi3
	mov	x11, rax
	mov	x5, x11
	mul	x5, -10000
	add	x5, x13
	mov	r1, 100
	mov	r0, x5
	call	__udivsi3
	mov	x13, rax
	mov	r0, x13
	mul	r0, -100
	add	r0, x5
	mov	r1, 1
	call	__bit_shl
	mov	x5, rax
	add	x5, x0
	mov	r0, [x5]
	mov	x3, x12
add	x3, 3
	mov	r1, 255
add	x5, 1
	call	__bit_and
	mov	r0, [x3]
	mov	x6, rax
	mov	x4, x12
	mov	r1, -256
add	x4, 4
	call	__bit_and
	mov	r1, 255
	mov	x14, rax
	mov	r0, x6
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x14
	mov	x14, [rsp+36]
	mov	r1, rax
	call	__bit_or
	mov	[x3], rax
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x4]
	mov	r1, -256
	mov	x5, rax
	call	__bit_and
	mov	r1, 255
	mov	x6, rax
	mov	r0, x5
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	[x4], rax
	mov	r0, x13
	call	__bit_shl
	mov	x5, rax
	add	x5, x0
	mov	r0, [x5]
	mov	x3, x12
add	x3, 1
	mov	r1, 255
add	x5, 1
	call	__bit_and
	mov	r0, [x3]
	mov	r1, -256
	mov	x6, rax
	call	__bit_and
	mov	r1, 255
	mov	x13, rax
	mov	r0, x6
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x13
	mov	r1, rax
	call	__bit_or
	mov	[x3], rax
	mov	r0, [x5]
	mov	x3, x12
	mov	r1, 255
add	x3, 2
	call	__bit_and
	mov	r0, [x3]
	mov	r1, -256
	mov	x5, rax
	call	__bit_and
	mov	r1, 255
	mov	x6, rax
	mov	r0, x5
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x6
	mov	x6, [rsp+12]
	mov	r1, rax
	call	__bit_or
	mov	[x3], rax
	mov	r0, [x12]
	mov	r1, -256
add	x11, 48
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x11
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	[x12], rax
	jmp	.LBB116_53
.LBB116_43:                             //   in Loop: Header=BB116_36 Depth=1
	mov	r1, 3
	mov	r0, x12
	call	__bit_and
	mov	x3, 9
	mov	x11, x12
	mov	x4, -2147483645
	jz	rax, .LBB116_48
	jmp	.LBB116_44
.LBB116_44:                             // %.preheader95.preheader
                                        //   in Loop: Header=BB116_36 Depth=1
	mov	r0, [x12]
	mov	x11, x12
	mov	r1, -256
add	x11, 1
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	r1, 3
	mov	[x12], rax
	mov	r0, x11
	call	__bit_and
	mov	x3, 8
	jz	rax, .LBB116_48
	jmp	.LBB116_45
.LBB116_45:                             // %.preheader95.1
                                        //   in Loop: Header=BB116_36 Depth=1
	mov	x3, x12
add	x3, 1
	mov	r0, [x3]
	mov	x11, x12
	mov	r1, -256
add	x11, 2
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	r1, 3
	mov	[x3], rax
	mov	r0, x11
	call	__bit_and
	mov	x3, 7
	jz	rax, .LBB116_48
	jmp	.LBB116_46
.LBB116_46:                             // %.preheader95.2
                                        //   in Loop: Header=BB116_36 Depth=1
	mov	x3, x12
add	x3, 2
	mov	r0, [x3]
	mov	x11, x12
	mov	r1, -256
add	x11, 3
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	r1, 3
	mov	[x3], rax
	mov	r0, x11
	call	__bit_and
	mov	x3, 6
	jz	rax, .LBB116_48
	jmp	.LBB116_47
.LBB116_47:                             // %.preheader95.3
                                        //   in Loop: Header=BB116_36 Depth=1
	mov	x11, x12
add	x12, 3
	mov	r0, [x12]
	mov	r1, -256
add	x11, 4
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	[x12], rax
	mov	x3, 5
.LBB116_48:                             // %.thread.preheader
                                        //   in Loop: Header=BB116_36 Depth=1
.LBB116_49:                             // %.thread
                                        //   Parent Loop BB116_36 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, x3
	mov	[x11], 808464432
add	x11, 4
add	r0, 2147483644
add	x3, -4
	jg	r0, x4, .LBB116_49
	jmp	.LBB116_50
.LBB116_50:                             // %.loopexit5.i45
                                        //   in Loop: Header=BB116_36 Depth=1
	jz	x3, .LBB116_53
	jmp	.LBB116_51
.LBB116_51:                             // %.preheader94.preheader
                                        //   in Loop: Header=BB116_36 Depth=1
	mov	x4, 0
.LBB116_52:                             // %.preheader94
                                        //   Parent Loop BB116_36 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	x5, x11
	add	x5, x4
	mov	r0, [x5]
	mov	r1, -256
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
add	x4, 1
	mov	[x5], rax
	jne	x3, x4, .LBB116_52
	jmp	.LBB116_53
.LBB116_53:                             // %memset.exit47
                                        //   in Loop: Header=BB116_36 Depth=1
add	x9, 9
	mov	x4, [rsp+24]
	jmp	.LBB116_76
.LBB116_54:                             // %.loopexit99.loopexit
                                        //   in Loop: Header=BB116_36 Depth=1
add	x8, -1
.LBB116_55:                             // %.loopexit99
                                        //   in Loop: Header=BB116_36 Depth=1
	mov	r0, x11
add	r0, -2147483648
	mov	r1, -1147483648
	jl	r0, r1, .LBB116_57
	jmp	.LBB116_56
.LBB116_56:
	call	abort
.LBB116_57:                             //   in Loop: Header=BB116_36 Depth=1
	mov	r1, 9
	jg	x11, x2, .LBB116_67
	jmp	.LBB116_58
.LBB116_58:                             //   in Loop: Header=BB116_36 Depth=1
	mov	r1, 8
	mov	r0, 9999999
	jg	x11, r0, .LBB116_67
	jmp	.LBB116_59
.LBB116_59:                             //   in Loop: Header=BB116_36 Depth=1
	mov	r1, 7
	mov	r0, 999999
	jg	x11, r0, .LBB116_67
	jmp	.LBB116_60
.LBB116_60:                             //   in Loop: Header=BB116_36 Depth=1
	mov	r1, 6
	mov	r0, 99999
	jg	x11, r0, .LBB116_67
	jmp	.LBB116_61
.LBB116_61:                             //   in Loop: Header=BB116_36 Depth=1
	mov	r1, 5
	mov	r0, 9999
	jg	x11, r0, .LBB116_67
	jmp	.LBB116_62
.LBB116_62:                             //   in Loop: Header=BB116_36 Depth=1
	mov	r1, 4
	mov	r0, 999
	jg	x11, r0, .LBB116_66
	jmp	.LBB116_63
.LBB116_63:                             //   in Loop: Header=BB116_36 Depth=1
	mov	r1, 3
	mov	r0, 99
	jg	x11, r0, .LBB116_66
	jmp	.LBB116_64
.LBB116_64:                             //   in Loop: Header=BB116_36 Depth=1
	mov	r1, 2
	mov	r0, 9
	jg	x11, r0, .LBB116_66
	jmp	.LBB116_65
.LBB116_65:                             //   in Loop: Header=BB116_36 Depth=1
	mov	r1, 1
.LBB116_66:                             //   in Loop: Header=BB116_36 Depth=1
	mov	[rsp+20], r1
	mov	x12, 0
	jmp	.LBB116_70
.LBB116_67:                             //   in Loop: Header=BB116_36 Depth=1
	mov	x3, [rsp+4]
	mov	[rsp+28], x9
	add	x3, x9
	mov	[rsp+20], r1
	add	x3, r1
	mov	x4, 0
.LBB116_68:                             // %memcpy.exit48
                                        //   Parent Loop BB116_36 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 10000
	mov	x12, x11
	mov	r0, x12
	call	__udivsi3
	mov	x11, rax
	mov	x5, x11
	mul	x5, -10000
	add	x5, x12
	mov	r1, 100
	mov	r0, x5
	call	__udivsi3
	mov	x13, rax
	mov	r0, x13
	mul	r0, -100
	add	r0, x5
	mov	r1, 1
	call	__bit_shl
	mov	x5, rax
	mov	x9, x3
	add	x9, x4
	add	x5, x0
	mov	r0, [x5]
	mov	x15, x9
add	x15, 2
	mov	r1, 255
add	x5, 1
	call	__bit_and
	mov	r0, [x15]
	mov	x6, rax
	mov	x7, x9
	mov	r1, -256
add	x7, 3
	call	__bit_and
	mov	r1, 255
	mov	x14, rax
	mov	r0, x6
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x14
	mov	r1, rax
	call	__bit_or
	mov	[x15], rax
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x7]
	mov	r1, -256
	mov	x5, rax
	call	__bit_and
	mov	r1, 255
	mov	x6, rax
	mov	r0, x5
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	[x7], rax
	mov	r0, x13
	call	__bit_shl
	mov	x5, rax
	add	x5, x0
	mov	r0, [x5]
	mov	r1, 255
add	x5, 1
	call	__bit_and
	mov	r0, [x9]
	mov	x6, rax
	mov	x7, x9
	mov	r1, -256
add	x7, 1
	call	__bit_and
	mov	r1, 255
	mov	x13, rax
	mov	r0, x6
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x13
	mov	r1, rax
	call	__bit_or
	mov	[x9], rax
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x7]
	mov	r1, -256
	mov	x5, rax
	call	__bit_and
	mov	r1, 255
	mov	x6, rax
	mov	r0, x5
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	[x7], rax
add	x4, -4
	jg	x12, x2, .LBB116_68
	jmp	.LBB116_69
.LBB116_69:                             // %.loopexit97.loopexit
                                        //   in Loop: Header=BB116_36 Depth=1
	mov	x12, 0
	sub	x12, x4
	mov	x9, [rsp+28]
	mov	x15, [rsp+32]
.LBB116_70:                             // %.loopexit97
                                        //   in Loop: Header=BB116_36 Depth=1
	mov	x14, x1
	add	x14, x9
	mov	r0, 100
	jl	x11, r0, .LBB116_72
	jmp	.LBB116_71
.LBB116_71:                             // %memcpy.exit50
                                        //   in Loop: Header=BB116_36 Depth=1
	mov	r1, 65532
	mov	r0, x11
	call	__bit_and
	mov	r1, 2
	mov	r0, rax
	call	__bit_shr
	mul	rax, 5243
	mov	r1, 17
	mov	r0, rax
	call	__bit_shr
	mov	x13, rax
	mov	r0, x13
	mul	r0, -100
	add	r0, x11
	mov	r1, 65535
	call	__bit_and
	mov	r1, 1
	mov	r0, rax
	call	__bit_shl
	mov	x5, rax
	mov	x4, x14
	mov	r0, [rsp+20]
	add	x4, r0
	sub	x4, x12
	add	x5, x0
	mov	r0, [x5]
	mov	x3, x4
add	x3, -2
	mov	r1, 255
add	x5, 1
	call	__bit_and
	mov	r0, [x3]
	mov	x6, rax
	mov	r1, -256
add	x4, -1
	call	__bit_and
	mov	r1, 255
	mov	x11, rax
	mov	r0, x6
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x11
	mov	r1, rax
	call	__bit_or
	mov	[x3], rax
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x4]
	mov	r1, -256
	mov	x5, rax
	call	__bit_and
	mov	r1, 255
	mov	x6, rax
	mov	r0, x5
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	[x4], rax
	mov	r0, x12
	call	__bit_or
	mov	x12, rax
	mov	x11, x13
.LBB116_72:                             //   in Loop: Header=BB116_36 Depth=1
	mov	x7, 1
	mov	r0, 10
	jl	x11, r0, .LBB116_74
	jmp	.LBB116_73
.LBB116_73:                             // %memcpy.exit51.loopexit
                                        //   in Loop: Header=BB116_36 Depth=1
	mov	r1, 1
	mov	r0, x11
	call	__bit_shl
	mov	x5, rax
	mov	x4, [rsp+20]
	add	x14, x4
	sub	x14, x12
	add	x5, x0
	mov	r0, [x5]
	mov	x3, x14
add	x3, -2
	mov	r1, 255
add	x5, 1
	call	__bit_and
	mov	r0, [x3]
	mov	x6, rax
	mov	r1, -256
add	x14, -1
	call	__bit_and
	mov	r1, 255
	mov	x11, rax
	mov	r0, x6
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x11
	mov	r1, rax
	call	__bit_or
	mov	[x3], rax
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x14]
	mov	r1, -256
	mov	x5, rax
	call	__bit_and
	mov	r1, 255
	mov	x6, rax
	mov	r0, x5
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	[x14], rax
	jmp	.LBB116_75
.LBB116_74:                             //   in Loop: Header=BB116_36 Depth=1
	mov	r1, 48
	mov	r0, x11
	call	__bit_or
	mov	x5, [x14]
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, -256
	mov	x6, rax
	mov	r0, x5
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x6
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	[x14], rax
	mov	x4, [rsp+20]
.LBB116_75:                             // %memcpy.exit51
                                        //   in Loop: Header=BB116_36 Depth=1
	add	x9, x4
	mov	x14, [rsp+36]
	mov	x6, [rsp+12]
	mov	x4, [rsp+24]
.LBB116_76:                             //   in Loop: Header=BB116_36 Depth=1
	mov	x3, 1
	mov	r0, x8
	mov	x8, x10
	jg	r0, x3, .LBB116_36
	jmp	.LBB116_79
.LBB116_77:                             //   in Loop: Header=BB116_40 Depth=2
add	x8, -1
	jg	x8, x7, .LBB116_40
	jmp	.LBB116_78
.LBB116_78:                             // %.loopexit100
	mov	x0, x1
	add	x0, x9
	mov	r0, [x0]
	mov	r1, -256
add	x9, 1
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	[x0], rax
.LBB116_79:                             // %.loopexit102
	mov	x4, [rsp+16]
	jz	x4, .LBB116_81
	jmp	.LBB116_80
.LBB116_80:
	mov	x0, x1
	add	x0, x9
	mov	r0, [x0]
	mov	r1, -256
add	x9, 1
	call	__bit_and
	mov	r1, 46
	mov	r0, rax
	call	__bit_or
	mov	[x0], rax
.LBB116_81:
	mov	r0, -1
	mov	x0, [rsp+8]
	jg	x0, r0, .LBB116_190
	jmp	.LBB116_82
.LBB116_82:
	mov	r0, -52
	jl	x0, r0, .LBB116_84
	jmp	.LBB116_83
.LBB116_83:
	mov	r1, 9
	mov	r0, x4
	call	__udivsi3
	mov	x14, rax
	mov	x7, 0
	jmp	.LBB116_104
.LBB116_84:
	mov	r0, x0
	call	__bit_not
	mul	rax, 78913
	mov	r1, 18
	mov	r0, rax
	call	__bit_shr
add	rax, -15
	mov	r1, 65535
	mov	r0, rax
	call	__bit_and
	mul	rax, 58255
	mov	r1, 19
	mov	r0, rax
	call	__bit_shr
	mov	r0, rax
add	r0, -2147483648
	mov	r2, -2147483647
	mov	r1, 1
	jg	r0, r2, .LBB116_86
// %bb.85:
	mov	r1, 0
.LBB116_86:
	mov	r0, 0
	sub	r0, r1
add	rax, -1
	mov	x7, 0
	mov	r1, rax
	call	__bit_and
	mov	r1, 9
	mov	x8, rax
	mov	r0, x4
	call	__udivsi3
	mov	x14, rax
	jge	x14, x8, .LBB116_102
	jmp	.LBB116_87
.LBB116_87:
	mov	x3, x1
	add	x3, x9
	mov	r1, 3
	mov	r0, x3
	call	__bit_and
	mov	x0, x4
	jz	rax, .LBB116_91
	jmp	.LBB116_88
.LBB116_88:                             // %.preheader81.preheader
	add	x1, x9
add	x1, 1
	mov	x2, x3
	mov	x0, x4
.LBB116_89:                             // %.preheader81
                                        // =>This Inner Loop Header: Depth=1
	jz	x0, .LBB116_101
	jmp	.LBB116_90
.LBB116_90:                             //   in Loop: Header=BB116_89 Depth=1
	mov	r0, [x2]
add	x0, -1
	mov	x3, x2
	mov	r1, -256
add	x3, 1
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	r1, 3
	mov	[x2], rax
	mov	r0, x1
	call	__bit_and
add	x1, 1
	mov	x2, x3
	jnz	rax, .LBB116_89
	jmp	.LBB116_91
.LBB116_91:                             // %.loopexit7.i52
	mov	r0, x0
add	r0, -2147483648
	mov	r1, -2147483644
	jl	r0, r1, .LBB116_98
	jmp	.LBB116_92
.LBB116_92:
	mov	r1, -2147483632
	jl	r0, r1, .LBB116_94
	jmp	.LBB116_93
.LBB116_93:                             // %.preheader.i54.preheader
	mov	r0, -2147483633
	jmp	.LBB116_96
.LBB116_94:                             // %.preheader440
	mov	r0, -2147483645
	mov	r1, x0
	jmp	.LBB116_97
.LBB116_95:
	mov	r0, 3
	jg	x0, r0, .LBB116_94
	jmp	.LBB116_98
.LBB116_96:                             // %.preheader.i54
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, x0
	mov	r2, x3
add	r2, 4
	mov	[x3], 808464432
	mov	r3, x3
add	r3, 8
	mov	[r2], 808464432
	mov	r2, x3
add	r2, 12
	mov	[r3], 808464432
add	x3, 16
	mov	[r2], 808464432
add	r1, 2147483632
add	x0, -16
	jg	r1, r0, .LBB116_96
	jmp	.LBB116_95
.LBB116_97:                             // =>This Inner Loop Header: Depth=1
	mov	[x3], 808464432
add	x0, -4
	mov	r2, r1
add	r2, 2147483644
add	x3, 4
	mov	r1, x0
	jg	r2, r0, .LBB116_97
	jmp	.LBB116_98
.LBB116_98:                             // %.loopexit5.i53
	jz	x0, .LBB116_101
	jmp	.LBB116_99
.LBB116_99:                             // %.preheader80.preheader
	mov	x1, x3
.LBB116_100:                            // %.preheader80
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x3]
add	x0, -1
	mov	r1, -256
add	x1, 1
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	[x3], rax
	mov	x3, x1
	jnz	x0, .LBB116_100
	jmp	.LBB116_101
.LBB116_101:                            // %memset.exit55
	add	x9, x4
	jmp	.LBB116_205
.LBB116_102:
	jz	x8, .LBB116_104
	jmp	.LBB116_103
.LBB116_103:
	mov	r0, x1
	add	r0, x9
	mov	x5, x8
	mul	x5, 9
	mov	r1, 48
	mov	r2, x5
	call	memset
	add	x9, x5
	mov	x7, x8
.LBB116_104:
	mov	x6, 0
	sub	x6, x0
	jge	x7, x14, .LBB116_106
	jmp	.LBB116_105
.LBB116_105:
	mov	r0, x7
	mul	r0, 9
add	r0, 9
	jg	r0, x6, .LBB116_107
	jmp	.LBB116_106
.LBB116_106:
	mov	r0, x14
	mul	r0, 9
	mov	r1, r0
	sub	r1, x4
add	r1, 9
	mov	[rsp], r1
	mov	x0, x9
	add	x0, x4
	call	__bit_not
	mov	x5, rax
	add	x5, x0
	add	x5, x1
	mov	x3, x7
	mov	[rsp+4], x6
	mov	[rsp+12], x14
	jmp	.LBB116_122
.LBB116_107:                            // %.loopexit90
	mul	x7, -9
	mov	x3, x1
	add	x3, x9
	mov	r1, 3
	add	x7, x4
	mov	r0, x3
	call	__bit_and
	mov	x0, x7
	jz	rax, .LBB116_111
	jmp	.LBB116_108
.LBB116_108:                            // %.preheader84.preheader
	add	x1, x9
add	x1, 1
	mov	x2, x3
	mov	x0, x7
.LBB116_109:                            // %.preheader84
                                        // =>This Inner Loop Header: Depth=1
	jz	x0, .LBB116_121
	jmp	.LBB116_110
.LBB116_110:                            //   in Loop: Header=BB116_109 Depth=1
	mov	r0, [x2]
add	x0, -1
	mov	x3, x2
	mov	r1, -256
add	x3, 1
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	r1, 3
	mov	[x2], rax
	mov	r0, x1
	call	__bit_and
add	x1, 1
	mov	x2, x3
	jnz	rax, .LBB116_109
	jmp	.LBB116_111
.LBB116_111:                            // %.loopexit7.i56
	mov	r0, x0
add	r0, -2147483648
	mov	r1, -2147483644
	jl	r0, r1, .LBB116_118
	jmp	.LBB116_112
.LBB116_112:
	mov	r1, -2147483632
	jl	r0, r1, .LBB116_114
	jmp	.LBB116_113
.LBB116_113:                            // %.preheader.i58.preheader
	mov	r0, -2147483633
	jmp	.LBB116_116
.LBB116_114:                            // %.preheader450
	mov	r0, -2147483645
	mov	r1, x0
	jmp	.LBB116_117
.LBB116_115:
	mov	r0, 3
	jg	x0, r0, .LBB116_114
	jmp	.LBB116_118
.LBB116_116:                            // %.preheader.i58
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, x0
	mov	r2, x3
add	r2, 4
	mov	[x3], 808464432
	mov	r3, x3
add	r3, 8
	mov	[r2], 808464432
	mov	r2, x3
add	r2, 12
	mov	[r3], 808464432
add	x3, 16
	mov	[r2], 808464432
add	r1, 2147483632
add	x0, -16
	jg	r1, r0, .LBB116_116
	jmp	.LBB116_115
.LBB116_117:                            // =>This Inner Loop Header: Depth=1
	mov	[x3], 808464432
add	x0, -4
	mov	r2, r1
add	r2, 2147483644
add	x3, 4
	mov	r1, x0
	jg	r2, r0, .LBB116_117
	jmp	.LBB116_118
.LBB116_118:                            // %.loopexit5.i57
	jz	x0, .LBB116_121
	jmp	.LBB116_119
.LBB116_119:                            // %.preheader83.preheader
	mov	x1, x3
.LBB116_120:                            // %.preheader83
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x3]
add	x0, -1
	mov	r1, -256
add	x1, 1
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	[x3], rax
	mov	x3, x1
	jnz	x0, .LBB116_120
	jmp	.LBB116_121
.LBB116_121:                            // %memset.exit59
	add	x9, x7
	jmp	.LBB116_205
.LBB116_122:                            // =>This Loop Header: Depth=1
                                        //     Child Loop BB116_145 Depth 2
                                        //     Child Loop BB116_148 Depth 2
	mov	[rsp+24], x5
	mov	x4, x3
add	x4, 1
	mov	r2, rsp
add	r2, 40
	mov	r0, x6
	mov	r1, x4
	call	ryu_fill_pow10_split_2_exp
	mov	r0, rsp
add	r0, 44
	mov	x5, [rsp+40]
	mov	x10, [r0]
	mov	r1, 0
	mov	r3, 0
	mov	r0, x5
	mov	r2, x15
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x13, t0
	mov	r0, x10
	mov	r2, x15
	call	__muldi3
	mov	x14, rax
	mov	x11, t0
	mov	r1, 0
	mov	r3, 0
	add	x13, x14
	mov	r0, x5
	mov	r2, [rsp+36]
	call	__muldi3
add	rax, -2147483648
	mov	x12, t0
	mov	r0, rax
	add	r0, x13
	mov	r1, 1
	jl	r0, rax, .LBB116_124
// %bb.123:                             //   in Loop: Header=BB116_122 Depth=1
	mov	r1, 0
.LBB116_124:                            //   in Loop: Header=BB116_122 Depth=1
	mov	r0, 0
	sub	r0, r1
	mov	r1, 1
	call	__bit_and
add	x13, -2147483648
add	x14, -2147483648
	mov	x2, 1
	mov	r1, 1
	jl	x13, x14, .LBB116_126
// %bb.125:                             //   in Loop: Header=BB116_122 Depth=1
	mov	r1, 0
.LBB116_126:                            //   in Loop: Header=BB116_122 Depth=1
	mov	r0, 0
	sub	r0, r1
	mov	r1, 1
	add	x12, rax
	call	__bit_and
	add	x11, rax
	mov	r1, 0
	mov	r3, 0
	add	x12, x11
	mov	r0, x10
	mov	x14, [rsp+36]
	mov	r2, x14
	call	__muldi3
	mov	x10, rax
	add	x10, x12
add	rax, -2147483648
	mov	x0, x10
add	x0, -2147483648
	mov	x15, t0
	jl	x0, rax, .LBB116_128
// %bb.127:                             //   in Loop: Header=BB116_122 Depth=1
	mov	x2, 0
.LBB116_128:                            //   in Loop: Header=BB116_122 Depth=1
	mov	[rsp+20], x4
	mov	r0, 0
	sub	r0, x2
	mov	r1, 1
	call	__bit_and
	mov	x13, rax
add	x12, -2147483648
add	x11, -2147483648
	mov	x4, 1
	mov	r1, 1
	jl	x12, x11, .LBB116_130
// %bb.129:                             //   in Loop: Header=BB116_122 Depth=1
	mov	r1, 0
.LBB116_130:                            //   in Loop: Header=BB116_122 Depth=1
	mov	r0, 0
	sub	r0, r1
	mov	r1, 1
	call	__bit_and
	add	x15, rax
	mov	r0, rsp
add	r0, 48
	mov	r1, rsp
add	r1, 52
	mov	x5, [r0]
	mov	x6, [r1]
	mov	r1, 0
	mov	r3, 0
	add	x15, x13
	mov	r0, x5
	mov	x8, [rsp+32]
	mov	r2, x8
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x2, rax
	mov	x11, t0
	mov	r0, x5
	mov	r2, x14
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x5, rax
	mov	x7, t0
	mov	r0, x6
	mov	r2, x8
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x12, rax
	mov	x8, t0
	mov	r0, x6
	mov	r2, x14
	call	__muldi3
	mov	r1, 0
	mov	x13, rax
	mov	x14, t0
	mov	r0, x11
	mov	r2, x12
	mov	r3, x8
	call	__adddi3
	mov	r1, 0
	mov	x12, t0
	mov	r0, rax
	mov	r2, x5
	mov	r3, x7
	call	__adddi3
	mov	r1, 0
	mov	x5, rax
	mov	x11, t0
	mov	r0, x2
	mov	r2, x10
	mov	r3, x15
	call	__adddi3
	mov	r2, 0
	mov	r1, t0
	mov	r0, rax
	mov	r3, x5
	call	__adddi3
	je	t0, x15, .LBB116_132
// %bb.131:                             //   in Loop: Header=BB116_122 Depth=1
	mov	x4, 0
.LBB116_132:                            //   in Loop: Header=BB116_122 Depth=1
add	x15, -2147483648
add	t0, -2147483648
	mov	r1, 1
	mov	x10, 1
	jl	t0, x15, .LBB116_134
// %bb.133:                             //   in Loop: Header=BB116_122 Depth=1
	mov	x10, 0
.LBB116_134:                            //   in Loop: Header=BB116_122 Depth=1
	mov	[rsp+28], x9
	mov	r0, 0
add	rax, -2147483648
	sub	r0, x4
	jl	rax, x0, .LBB116_136
// %bb.135:                             //   in Loop: Header=BB116_122 Depth=1
	mov	r1, 0
.LBB116_136:                            //   in Loop: Header=BB116_122 Depth=1
	sub	r1, x10
	call	__bit_and
	add	x10, rax
	mov	r1, 1
	mov	r0, x10
	call	__bit_and
	mov	r0, rsp
add	r0, 56
	mov	r1, rsp
add	r1, 60
	mov	x2, [r0]
	mov	x5, [r1]
	mov	r1, 0
	mov	r3, 0
	mov	x15, rax
	mov	r0, x2
	mov	x0, [rsp+32]
	mov	r2, x0
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x6, rax
	mov	x7, t0
	mov	r0, x2
	mov	x4, [rsp+36]
	mov	r2, x4
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x2, rax
	mov	x8, t0
	mov	r0, x5
	mov	r2, x0
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x10, rax
	mov	x0, t0
	mov	r0, x5
	mov	r2, x4
	call	__muldi3
	mov	r1, 0
	mov	x5, rax
	mov	x9, t0
	mov	r0, x7
	mov	r2, x10
	mov	r3, x0
	call	__adddi3
	mov	r1, 0
	mov	x0, t0
	mov	r0, rax
	mov	r2, x2
	mov	r3, x8
	call	__adddi3
	mov	r1, 0
	mov	x2, rax
	mov	x7, t0
	mov	r0, x6
	mov	r2, x13
	mov	r3, x14
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x12
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x11
	call	__adddi3
	mov	r2, 0
	mov	x11, rax
	mov	x12, t0
	mov	r0, x11
	mov	r1, x12
	mov	r3, x2
	call	__adddi3
	mov	r1, 0
	mov	x10, t0
	mov	r0, x0
	mov	r2, x5
	mov	r3, x9
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x7
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x15
	call	__adddi3
	mov	r1, -512
	mov	x0, rax
	mov	x2, t0
	mov	r0, x0
	call	__bit_and
	mov	r2, 0
	mov	r3, 1000000000
	mov	x5, rax
	mov	r0, x0
	mov	r1, x2
	call	__umoddi3
	mov	r1, 1073741823
	mov	r0, t0
	call	__bit_and
	mov	r2, 1000000000
	mov	r3, 0
	mov	r0, x5
	mov	r1, rax
	call	__udivdi3
	mov	r2, -1000000000
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	call	__muldi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x0
	mov	r3, x2
	call	__adddi3
	mov	r1, -512
	mov	x0, rax
	mov	r0, x11
	call	__bit_and
	mov	r2, 1000000000
	mov	r3, 0
	mov	x2, rax
	mov	r0, x10
	mov	r1, x0
	call	__udivdi3
	mov	r2, -1000000000
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	call	__muldi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x10
	mov	r3, x0
	call	__adddi3
	mov	r2, 1000000000
	mov	r3, 0
	mov	r0, x2
	mov	r1, rax
	call	__udivdi3
	mov	r2, -1000000000
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	call	__muldi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x11
	mov	r3, x12
	call	__adddi3
	mov	x14, [rsp+12]
	je	x3, x14, .LBB116_149
	jmp	.LBB116_137
.LBB116_137:                            //   in Loop: Header=BB116_122 Depth=1
	mov	x11, x1
	mov	x9, [rsp+28]
	add	x11, x9
	jz	rax, .LBB116_139
	jmp	.LBB116_138
.LBB116_138:                            // %memcpy.exit60
                                        //   in Loop: Header=BB116_122 Depth=1
	mov	x3, x11
	mov	r1, 10000
add	x3, 7
	mov	r0, rax
	mov	x12, rax
	call	__udivsi3
	mov	x13, rax
	mov	x0, x13
	mul	x0, -10000
	add	x0, x12
	mov	r1, 100
	mov	r0, x0
	call	__udivsi3
	mov	x10, rax
	mov	r0, x10
	mul	r0, -100
	add	r0, x0
	mov	r1, 1
	call	__bit_shl
	mov	x0, rax
	mov	x6, mcasm_static_6c0d4b28168d34450f36832cd0ebf870
	add	x0, x6
	mov	r0, [x0]
	mov	r1, 255
add	x0, 1
	call	__bit_and
	mov	r0, [x3]
	mov	x2, rax
	mov	x4, x11
	mov	r1, -256
add	x4, 8
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	[x3], rax
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x4]
	mov	r1, -256
	mov	x0, rax
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	[x4], rax
	mov	x3, x11
	mov	r1, 1
add	x3, 5
	mov	r0, x10
	call	__bit_shl
	mov	x0, rax
	add	x0, x6
	mov	r0, [x0]
	mov	r1, 255
add	x0, 1
	call	__bit_and
	mov	r0, [x3]
	mov	x2, rax
	mov	x4, x11
	mov	r1, -256
add	x4, 6
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	[x3], rax
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x4]
	mov	r1, -256
	mov	x0, rax
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r1, 100000000
	mov	[x4], rax
	mov	r0, x12
	call	__udivsi3
	mov	x12, rax
	mov	x0, x12
	mul	x0, -10000
	add	x0, x13
	mov	r1, 100
	mov	r0, x0
	call	__udivsi3
	mov	x10, rax
	mov	r0, x10
	mul	r0, -100
	add	r0, x0
	mov	r1, 1
	call	__bit_shl
	mov	x0, rax
	add	x0, x6
	mov	r0, [x0]
	mov	x3, x11
add	x3, 3
	mov	r1, 255
add	x0, 1
	call	__bit_and
	mov	r0, [x3]
	mov	x2, rax
	mov	x4, x11
	mov	r1, -256
add	x4, 4
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	[x3], rax
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x4]
	mov	r1, -256
	mov	x0, rax
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	[x4], rax
	mov	r0, x10
	call	__bit_shl
	mov	x0, rax
	add	x0, x6
	mov	r0, [x0]
	mov	x3, x11
add	x3, 1
	mov	r1, 255
add	x0, 1
	call	__bit_and
	mov	r0, [x3]
	mov	r1, -256
	mov	x2, rax
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	[x3], rax
	mov	r0, [x0]
	mov	x3, x11
	mov	r1, 255
add	x3, 2
	call	__bit_and
	mov	r0, [x3]
	mov	r1, -256
	mov	x0, rax
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	[x3], rax
	mov	r0, [x11]
	mov	r1, -256
add	x12, 48
	call	__bit_and
	mov	r1, 255
	mov	x0, rax
	mov	r0, x12
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	[x11], rax
	mov	x4, [rsp+16]
	mov	x15, [rsp+32]
	mov	x6, [rsp+4]
	mov	x5, [rsp+24]
	mov	x7, [rsp+20]
	jmp	.LBB116_171
.LBB116_139:                            //   in Loop: Header=BB116_122 Depth=1
	mov	r1, 3
	mov	r0, x11
	call	__bit_and
	mov	x0, 9
	mov	x12, x11
	mov	x6, [rsp+4]
	mov	x7, [rsp+20]
	jz	rax, .LBB116_144
	jmp	.LBB116_140
.LBB116_140:                            // %.preheader88.preheader
                                        //   in Loop: Header=BB116_122 Depth=1
	mov	r0, [x11]
	mov	x12, x11
	mov	r1, -256
add	x12, 1
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	r1, 3
	mov	[x11], rax
	mov	r0, x12
	call	__bit_and
	mov	x0, 8
	jz	rax, .LBB116_144
	jmp	.LBB116_141
.LBB116_141:                            // %.preheader88.1
                                        //   in Loop: Header=BB116_122 Depth=1
	mov	x0, x11
add	x0, 1
	mov	r0, [x0]
	mov	x12, x11
	mov	r1, -256
add	x12, 2
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	r1, 3
	mov	[x0], rax
	mov	r0, x12
	call	__bit_and
	mov	x0, 7
	jz	rax, .LBB116_144
	jmp	.LBB116_142
.LBB116_142:                            // %.preheader88.2
                                        //   in Loop: Header=BB116_122 Depth=1
	mov	x0, x11
add	x0, 2
	mov	r0, [x0]
	mov	x12, x11
	mov	r1, -256
add	x12, 3
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	r1, 3
	mov	[x0], rax
	mov	r0, x12
	call	__bit_and
	mov	x0, 6
	jz	rax, .LBB116_144
	jmp	.LBB116_143
.LBB116_143:                            // %.preheader88.3
                                        //   in Loop: Header=BB116_122 Depth=1
	mov	x12, x11
add	x11, 3
	mov	r0, [x11]
	mov	r1, -256
add	x12, 4
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	[x11], rax
	mov	x0, 5
.LBB116_144:                            // %.thread73.preheader
                                        //   in Loop: Header=BB116_122 Depth=1
	mov	x4, [rsp+16]
	mov	x15, [rsp+32]
	mov	r1, -2147483645
.LBB116_145:                            // %.thread73
                                        //   Parent Loop BB116_122 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, x0
	mov	[x12], 808464432
add	x12, 4
add	r0, 2147483644
add	x0, -4
	jg	r0, r1, .LBB116_145
	jmp	.LBB116_146
.LBB116_146:                            // %.loopexit5.i65
                                        //   in Loop: Header=BB116_122 Depth=1
	mov	x5, [rsp+24]
	jz	x0, .LBB116_171
	jmp	.LBB116_147
.LBB116_147:                            // %.preheader87.preheader
                                        //   in Loop: Header=BB116_122 Depth=1
	mov	x2, 0
.LBB116_148:                            // %.preheader87
                                        //   Parent Loop BB116_122 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	x3, x12
	add	x3, x2
	mov	r0, [x3]
	mov	r1, -256
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
add	x2, 1
	mov	[x3], rax
	je	x0, x2, .LBB116_171
	jmp	.LBB116_148
.LBB116_149:
	mul	x14, -9
	mov	x2, [rsp+16]
	add	x14, x2
	mov	r0, 9
	mov	r1, 0
	mov	x3, [rsp+32]
	mov	x8, [rsp+36]
	mov	x11, [rsp+24]
	je	x14, r0, .LBB116_155
	jmp	.LBB116_150
.LBB116_150:
	mov	x0, rax
	mov	r1, [rsp]
	mov	r0, r1
add	r0, -2147483648
	mov	r2, -2147483647
	mov	r3, 1
	jg	r0, r2, .LBB116_152
// %bb.151:
	mov	r3, 0
.LBB116_152:
	mov	r0, 0
	sub	r0, r3
add	r1, -1
	call	__bit_and
	mov	x6, rax
add	x6, 1
	mov	rax, x0
	jmp	.LBB116_154
.LBB116_153:
	mov	r1, rax
	mul	r1, -10
	add	r1, x9
	mov	r0, 5
	je	r1, r0, .LBB116_158
	jmp	.LBB116_155
.LBB116_154:                            // =>This Inner Loop Header: Depth=1
	mov	r1, 10
	mov	x9, rax
	mov	r0, x9
	call	__udivsi3
add	x6, -1
	jz	x6, .LBB116_153
	jmp	.LBB116_154
.LBB116_155:
	mov	x4, rax
	mov	r2, 5
	mov	r0, 1
	jg	r1, r2, .LBB116_157
// %bb.156:
	mov	r0, 0
.LBB116_157:
	mov	r1, 1
	call	__bit_and
	mov	x2, rax
	mov	x9, [rsp+28]
	jmp	.LBB116_164
.LBB116_158:
	mov	x4, rax
	mov	r0, x2
	call	__bit_not
	mov	x6, rax
	mov	r0, [rsp+8]
	sub	x6, r0
	mov	r0, 1
	mov	x2, 2
	mov	x9, [rsp+28]
	jl	x6, r0, .LBB116_164
	jmp	.LBB116_159
.LBB116_159:
	mov	r0, 59
	mov	x2, 1
	jg	x6, r0, .LBB116_164
	jmp	.LBB116_160
.LBB116_160:
	mov	r0, x3
	mov	r1, x8
	call	__bit_or
	jnz	rax, .LBB116_162
	jmp	.LBB116_161
.LBB116_161:
	call	abort
.LBB116_162:
	mov	r1, 31
	mov	r0, x6
	call	__bit_and
	mov	x0, rax
	mov	r1, 0
	sub	r1, x0
	mov	x2, 0
	mov	r0, x0
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
add	x6, -32
	mov	r1, 31
	mov	x5, rax
	mov	r0, x6
	call	__bit_shr
	mov	r0, -1
	mov	x6, rax
	mov	r1, x0
	call	__bit_shl
	mov	x7, 0
	sub	x7, x6
	mov	x6, rax
	mov	r0, x7
	call	__bit_not
	mov	r0, x6
	mov	r1, rax
	call	__bit_and
	mov	r0, 32
	sub	r0, x0
	mov	r1, 31
	mov	x0, rax
	call	__bit_and
	mov	r0, -1
	mov	r1, rax
	call	__bit_shr
	sub	x2, x5
	mov	r0, rax
	mov	r1, x2
	call	__bit_and
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x7
	call	__bit_and
	mov	r0, rax
	mov	r1, x0
	call	__bit_or
	mov	x0, rax
	mov	r0, x6
	mov	r1, x7
	call	__bit_and
	mov	x2, rax
	mov	r0, x0
	call	__bit_not
	mov	x0, rax
	mov	r0, x2
	call	__bit_not
	mov	x2, rax
	mov	r0, x8
	mov	r1, x0
	call	__bit_and
	mov	x0, rax
	mov	r0, x3
	mov	r1, x2
	call	__bit_and
	mov	r0, rax
	mov	r1, x0
	call	__bit_or
	mov	x2, 2
	jz	rax, .LBB116_164
	jmp	.LBB116_163
.LBB116_163:
	mov	x2, 1
.LBB116_164:
	jz	x14, .LBB116_173
	jmp	.LBB116_165
.LBB116_165:
	mov	x7, x14
add	x7, -1
	mov	x3, 0
	mov	r0, x4
	jz	x7, .LBB116_168
	jmp	.LBB116_166
.LBB116_166:
	mov	x9, 0
	mov	x8, mcasm_static_6c0d4b28168d34450f36832cd0ebf870
add	x7, -2147483648
	mov	x5, r0
.LBB116_167:                            // %memcpy.exit68
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 100
	mov	r0, x5
	call	__udivsi3
	mov	x4, rax
	mov	r0, x4
	mul	r0, -100
	add	x5, r0
	mov	r1, 1
	mov	r0, x5
	call	__bit_shl
	mov	x0, rax
	add	x0, x8
	mov	r0, [x0]
	mov	x10, x11
add	x10, -1
	mov	r1, 255
add	x0, 1
	call	__bit_and
	mov	r0, [x10]
	mov	r1, -256
	mov	x5, rax
	call	__bit_and
	mov	r1, 255
	mov	x6, rax
	mov	r0, x5
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	[x10], rax
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x11]
	mov	r1, -256
	mov	x0, rax
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	r0, x4
	mov	[x11], rax
add	x3, 2
	mov	r1, x9
add	r1, -2147483646
add	x11, -2
	mov	x5, r0
	mov	x9, x3
	jl	r1, x7, .LBB116_167
	jmp	.LBB116_168
.LBB116_168:                            // %.loopexit
	mov	r1, x14
add	r1, -2147483648
	mov	r2, x3
add	r2, -2147483648
	mov	x9, [rsp+28]
	jge	r2, r1, .LBB116_170
	jmp	.LBB116_169
.LBB116_169:
	mov	x4, x1
	mov	r1, 10
	add	x4, x9
	call	__umodsi3
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	x0, rax
	mov	r0, x3
	call	__bit_not
	add	x4, x14
	add	x4, rax
	mov	r0, [x4]
	mov	r1, -256
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	[x4], rax
.LBB116_170:
	add	x9, x14
	jmp	.LBB116_173
.LBB116_171:                            // %memset.exit67
                                        //   in Loop: Header=BB116_122 Depth=1
add	x9, 9
add	x5, 9
	mov	x3, x7
	jge	x7, x14, .LBB116_122
	jmp	.LBB116_172
.LBB116_172:                            // %memset.exit67
                                        //   in Loop: Header=BB116_122 Depth=1
	mov	r0, x7
	mul	r0, 9
add	r0, 9
	mov	x3, x7
	jg	r0, x6, .LBB116_107
	jmp	.LBB116_122
.LBB116_173:
	jz	x2, .LBB116_205
	jmp	.LBB116_174
.LBB116_174:
	jz	x9, .LBB116_176
	jmp	.LBB116_175
.LBB116_175:                            // %.preheader86.preheader
	mov	x4, x1
add	x4, -1
	mov	x0, 0
	mov	x5, 46
	mov	x6, 57
	mov	x8, x9
	mov	x7, x8
	jmp	.LBB116_177
.LBB116_176:
	mov	r0, [x1]
	mov	r1, -256
	call	__bit_and
	mov	r1, 49
	mov	r0, rax
	call	__bit_or
	mov	[x1], rax
	jmp	.LBB116_184
.LBB116_177:                            // %.preheader86
                                        // =>This Inner Loop Header: Depth=1
	mov	x3, x4
	add	x3, x8
	mov	r0, [x3]
	mov	r1, 255
add	x7, -1
	call	__bit_and
	je	rax, x5, .LBB116_180
	jmp	.LBB116_178
.LBB116_178:                            // %.preheader86
                                        //   in Loop: Header=BB116_177 Depth=1
	je	rax, x6, .LBB116_185
	jmp	.LBB116_179
.LBB116_179:                            // %.preheader86
	mov	r0, 45
	je	rax, r0, .LBB116_181
	jmp	.LBB116_186
.LBB116_180:                            // %.preheader86._crit_edge27
                                        //   in Loop: Header=BB116_177 Depth=1
	mov	x0, x7
	jmp	.LBB116_189
.LBB116_181:                            // %.preheader86._crit_edge
	mov	x3, x8
.LBB116_182:
	add	x3, x1
	mov	r0, [x3]
	mov	r1, -256
	call	__bit_and
	mov	r1, 49
	mov	r0, rax
	call	__bit_or
	mov	r0, 1
	mov	[x3], rax
	jl	x0, r0, .LBB116_184
	jmp	.LBB116_183
.LBB116_183:
	add	x0, x1
	mov	r0, [x0]
	mov	r1, -256
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	[x0], rax
add	x0, 1
	mov	r0, [x0]
	mov	r1, -256
	call	__bit_and
	mov	r1, 46
	mov	r0, rax
	call	__bit_or
	mov	[x0], rax
.LBB116_184:
	add	x1, x9
	mov	r0, [x1]
	mov	r1, -256
add	x9, 1
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	[x1], rax
	jmp	.LBB116_205
.LBB116_185:                            //   in Loop: Header=BB116_177 Depth=1
	mov	r0, [x3]
	mov	r1, -256
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	[x3], rax
	mov	x2, 1
	jmp	.LBB116_189
.LBB116_186:
	mov	r1, 1
	mov	x1, rax
	mov	r0, rax
	call	__bit_and
	mov	r0, 2
	jne	x2, r0, .LBB116_188
	jmp	.LBB116_187
.LBB116_187:
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB116_205
	jmp	.LBB116_188
.LBB116_188:
	mov	x0, [x3]
	mov	r0, x1
add	r0, 1
	mov	r1, 255
	call	__bit_and
	mov	r1, -256
	mov	x1, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, 255
	mov	x0, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	[x3], rax
	jmp	.LBB116_205
.LBB116_189:                            //   in Loop: Header=BB116_177 Depth=1
	mov	x3, 0
	mov	x8, x7
	jz	x7, .LBB116_182
	jmp	.LBB116_177
.LBB116_190:
	mov	x3, x1
	add	x3, x9
	mov	r1, 3
	mov	r0, x3
	call	__bit_and
	mov	x0, x4
	jz	rax, .LBB116_194
	jmp	.LBB116_191
.LBB116_191:                            // %.preheader92.preheader
	add	x1, x9
add	x1, 1
	mov	x2, x3
	mov	x0, x4
.LBB116_192:                            // %.preheader92
                                        // =>This Inner Loop Header: Depth=1
	jz	x0, .LBB116_204
	jmp	.LBB116_193
.LBB116_193:                            //   in Loop: Header=BB116_192 Depth=1
	mov	r0, [x2]
add	x0, -1
	mov	x3, x2
	mov	r1, -256
add	x3, 1
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	r1, 3
	mov	[x2], rax
	mov	r0, x1
	call	__bit_and
add	x1, 1
	mov	x2, x3
	jnz	rax, .LBB116_192
	jmp	.LBB116_194
.LBB116_194:                            // %.loopexit7.i69
	mov	r0, x0
add	r0, -2147483648
	mov	r1, -2147483644
	jl	r0, r1, .LBB116_201
	jmp	.LBB116_195
.LBB116_195:
	mov	r1, -2147483632
	jl	r0, r1, .LBB116_197
	jmp	.LBB116_196
.LBB116_196:                            // %.preheader.i71.preheader
	mov	r0, -2147483633
	jmp	.LBB116_199
.LBB116_197:                            // %.preheader481
	mov	r0, -2147483645
	mov	r1, x0
	jmp	.LBB116_200
.LBB116_198:
	mov	r0, 3
	jg	x0, r0, .LBB116_197
	jmp	.LBB116_201
.LBB116_199:                            // %.preheader.i71
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, x0
	mov	r2, x3
add	r2, 4
	mov	[x3], 808464432
	mov	r3, x3
add	r3, 8
	mov	[r2], 808464432
	mov	r2, x3
add	r2, 12
	mov	[r3], 808464432
add	x3, 16
	mov	[r2], 808464432
add	r1, 2147483632
add	x0, -16
	jg	r1, r0, .LBB116_199
	jmp	.LBB116_198
.LBB116_200:                            // =>This Inner Loop Header: Depth=1
	mov	[x3], 808464432
add	x0, -4
	mov	r2, r1
add	r2, 2147483644
add	x3, 4
	mov	r1, x0
	jg	r2, r0, .LBB116_200
	jmp	.LBB116_201
.LBB116_201:                            // %.loopexit5.i70
	jz	x0, .LBB116_204
	jmp	.LBB116_202
.LBB116_202:                            // %.preheader91.preheader
	mov	x1, x3
.LBB116_203:                            // %.preheader91
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x3]
add	x0, -1
	mov	r1, -256
add	x1, 1
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	[x3], rax
	mov	x3, x1
	jnz	x0, .LBB116_203
	jmp	.LBB116_204
.LBB116_204:                            // %memset.exit72
	add	x9, x4
.LBB116_205:                            // %memcpy.exit38
	mov	rax, x9
	mov	x15, [rsp+64]
	mov	x14, [rsp+68]
	mov	x13, [rsp+72]
	mov	x12, [rsp+76]
	mov	x11, [rsp+80]
	mov	x10, [rsp+84]
	mov	x9, [rsp+88]
	mov	x8, [rsp+92]
	mov	x7, [rsp+96]
	mov	x6, [rsp+100]
	mov	x5, [rsp+104]
	mov	x4, [rsp+108]
	mov	x3, [rsp+112]
	mov	x2, [rsp+116]
	mov	x1, [rsp+120]
	mov	x0, [rsp+124]
add	rsp, 128
	ret
// -- End function
// -- Begin function ryu_fill_pow10_split_exp
ryu_fill_pow10_split_exp:               // @ryu_fill_pow10_split_exp
// %bb.0:
sub	rsp, 180
	mov	[rsp+176], x0
	mov	[rsp+172], x1
	mov	[rsp+168], x2
	mov	[rsp+164], x3
	mov	[rsp+160], x4
	mov	[rsp+156], x5
	mov	[rsp+152], x6
	mov	[rsp+148], x7
	mov	[rsp+144], x8
	mov	x1, r1
	mov	x2, x1
	mul	x2, -9
	add	x2, r0
add	x2, 128
	mov	r0, -1
	mov	x0, r2
	jg	x2, r0, .LBB117_2
	jmp	.LBB117_1
.LBB117_1:
	mov	[x0], 1
	mov	r0, x0
add	r0, 4
	mov	[r0], 0
	mov	r0, x0
add	r0, 8
	mov	r1, x0
add	r1, 12
	mov	[r1], 0
	mov	[r0], 0
	mov	r0, x0
add	r0, 16
add	x0, 20
	mov	[x0], 0
	mov	[r0], 0
	jmp	.LBB117_23
.LBB117_2:
	mov	r0, rsp
add	r0, 40
	mov	r1, rsp
add	r1, 44
	mov	[r1], 0
	mov	[r0], 0
	mov	r0, rsp
add	r0, 48
	mov	r1, rsp
add	r1, 52
	mov	[r1], 0
	mov	[r0], 0
	mov	r0, rsp
add	r0, 56
	mov	r1, rsp
add	r1, 60
	mov	[r1], 0
	mov	[r0], 0
	mov	r0, rsp
add	r0, 64
	mov	r1, rsp
add	r1, 68
	mov	[r1], -2147483648
	mov	[r0], 0
	mov	r0, -255
	jz	x1, .LBB117_9
	jmp	.LBB117_3
.LBB117_3:
	mov	[rsp], -255
	mov	r0, rsp
add	r0, 4
	mov	r1, rsp
add	r1, 8
	mov	[r1], 0
	mov	[r0], 0
	mov	r0, rsp
add	r0, 12
	mov	r1, rsp
add	r1, 16
	mov	[r1], 0
	mov	[r0], 0
	mov	r0, rsp
add	r0, 20
	mov	r1, rsp
add	r1, 24
	mov	[r1], 0
	mov	[r0], 0
	mov	r0, rsp
add	r0, 28
	mov	r1, rsp
add	r1, 32
	mov	[r1], -2147483648
	mov	[r0], 0
	mov	[rsp+108], -276
	mov	r0, rsp
add	r0, 112
	mov	r1, rsp
add	r1, 116
	mov	[r1], -209245859
	mov	[r0], 606470823
	mov	r0, rsp
add	r0, 120
	mov	r1, rsp
add	r1, 124
	mov	[r1], -36215714
	mov	[r0], 18528969
	mov	r0, rsp
add	r0, 128
	mov	r1, rsp
add	r1, 132
	mov	[r1], 828902024
	mov	[r0], -124440528
	mov	r0, rsp
add	r0, 136
	mov	r1, rsp
add	r1, 140
	mov	[r1], -1989124287
	mov	[r0], 917808535
.LBB117_4:                              // =>This Inner Loop Header: Depth=1
	mov	r1, 1
	mov	r0, x1
	call	__bit_and
	jz	rax, .LBB117_6
	jmp	.LBB117_5
.LBB117_5:                              //   in Loop: Header=BB117_4 Depth=1
	mov	r0, rsp
add	r0, 72
	mov	r1, rsp
	mov	r2, rsp
add	r2, 108
	call	ryu_dyadic256_quick_mul
	mov	r0, rsp
add	r0, 104
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 32
	mov	[r1], r0
	mov	r0, rsp
add	r0, 100
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 28
	mov	[r1], r0
	mov	r0, rsp
add	r0, 96
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 24
	mov	[r1], r0
	mov	r0, rsp
add	r0, 92
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 20
	mov	[r1], r0
	mov	r0, rsp
add	r0, 88
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 16
	mov	[r1], r0
	mov	r0, rsp
add	r0, 84
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 12
	mov	[r1], r0
	mov	r0, rsp
add	r0, 80
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 8
	mov	[r1], r0
	mov	r0, rsp
add	r0, 76
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 4
	mov	r2, [rsp+72]
	mov	[r1], r0
	mov	[rsp], r2
.LBB117_6:                              //   in Loop: Header=BB117_4 Depth=1
	mov	r1, 1
	mov	r0, x1
	call	__bit_shr
	mov	x1, rax
	jz	x1, .LBB117_8
	jmp	.LBB117_7
.LBB117_7:                              //   in Loop: Header=BB117_4 Depth=1
	mov	r0, rsp
add	r0, 72
	mov	r1, rsp
add	r1, 108
	mov	r2, r1
	call	ryu_dyadic256_quick_mul
	mov	r0, rsp
add	r0, 104
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 140
	mov	[r1], r0
	mov	r0, rsp
add	r0, 100
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 136
	mov	[r1], r0
	mov	r0, rsp
add	r0, 96
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 132
	mov	[r1], r0
	mov	r0, rsp
add	r0, 92
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 128
	mov	[r1], r0
	mov	r0, rsp
add	r0, 88
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 124
	mov	[r1], r0
	mov	r0, rsp
add	r0, 84
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 120
	mov	[r1], r0
	mov	r0, rsp
add	r0, 80
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 116
	mov	[r1], r0
	mov	r0, rsp
add	r0, 76
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 112
	mov	r2, [rsp+72]
	mov	[r1], r0
	mov	[rsp+108], r2
	jmp	.LBB117_4
.LBB117_8:
	mov	r0, rsp
add	r0, 4
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 40
	mov	[r1], r0
	mov	r0, rsp
add	r0, 8
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 44
	mov	[r1], r0
	mov	r0, rsp
add	r0, 12
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 48
	mov	[r1], r0
	mov	r0, rsp
add	r0, 16
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 52
	mov	[r1], r0
	mov	r0, rsp
add	r0, 20
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 56
	mov	[r1], r0
	mov	r0, rsp
add	r0, 24
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 60
	mov	[r1], r0
	mov	r0, rsp
add	r0, 28
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 64
	mov	[r1], r0
	mov	r0, rsp
add	r0, 32
	mov	r1, [r0]
	mov	r2, rsp
add	r2, 68
	mov	r0, [rsp]
	mov	[rsp+36], r0
	mov	r0, [rsp+36]
	mov	[r2], r1
.LBB117_9:
	add	r0, x2
	mov	[rsp+36], r0
	mov	r0, rsp
add	r0, 108
	mov	r1, rsp
add	r1, 36
	call	ryu_dyadic256_as_mantissa_type
	mov	r0, rsp
add	r0, 112
	mov	x3, [r0]
	mov	x4, [rsp+108]
	mov	r2, 1
	mov	r3, 0
	mov	r0, x4
	mov	r1, x3
	call	__adddi3
	mov	x2, rax
	mov	x1, t0
	mov	r0, x4
	mov	r1, x3
	call	__bit_and
	mov	r0, rsp
add	r0, 116
	mov	r1, rsp
add	r1, 120
	mov	x4, [r1]
	mov	x3, [r0]
	mov	r0, -1
	jne	rax, r0, .LBB117_13
	jmp	.LBB117_10
.LBB117_10:
	mov	r2, 1
	mov	r3, 0
	mov	r0, x3
	mov	r1, x4
	call	__adddi3
	mov	x3, rax
	mov	x4, t0
	mov	r0, x3
	mov	r1, x4
	call	__bit_or
	jnz	rax, .LBB117_13
	jmp	.LBB117_11
.LBB117_11:
	mov	x3, rsp
add	x3, 124
	mov	x4, rsp
add	x4, 128
	mov	r1, [x4]
	mov	r0, [x3]
	mov	r2, 1
	mov	r3, 0
	call	__adddi3
	mov	r1, t0
	mov	[x4], r1
	mov	[x3], rax
	mov	r0, rax
	call	__bit_or
	mov	x3, 0
	mov	x4, 0
	jnz	rax, .LBB117_13
	jmp	.LBB117_12
.LBB117_12:
	mov	x4, rsp
add	x4, 132
	mov	x5, rsp
add	x5, 136
	mov	r1, [x5]
	mov	r0, [x4]
	mov	r2, 1
	mov	r3, 0
	call	__adddi3
	mov	[x5], t0
	mov	[x4], rax
	mov	x4, 0
.LBB117_13:
	mov	r0, rsp
add	r0, 124
	mov	r1, rsp
add	r1, 128
	mov	x6, [r1]
	mov	x5, [r0]
	mov	r0, rsp
add	r0, 132
	mov	r1, rsp
add	r1, 136
	mov	x7, [r1]
	mov	x8, [r0]
	mov	r0, x8
	mov	r1, x7
	call	__bit_or
	jnz	rax, .LBB117_21
	jmp	.LBB117_14
.LBB117_14:
	mov	r1, 1000000000
	mov	r0, x5
	call	__bit_xor
	mov	r0, rax
	mov	r1, x6
	call	__bit_or
	jnz	rax, .LBB117_16
	jmp	.LBB117_15
.LBB117_15:
	mov	r0, x3
	mov	r1, x2
	call	__bit_or
	mov	x5, rax
	mov	r0, x4
	mov	r1, x1
	call	__bit_or
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	x6, 0
	mov	x5, 1000000000
	jz	rax, .LBB117_22
	jmp	.LBB117_21
.LBB117_16:
	mov	r0, x5
add	r0, -2147483648
	mov	r3, -1147483647
	mov	r2, 1
	mov	r1, 1
	jl	r0, r3, .LBB117_18
// %bb.17:
	mov	r1, 0
.LBB117_18:
	mov	r0, 0
	je	x6, r0, .LBB117_20
// %bb.19:
	mov	r2, 0
.LBB117_20:
	sub	r0, r2
	call	__bit_and
	jnz	rax, .LBB117_22
	jmp	.LBB117_21
.LBB117_21:
	mov	r2, 1000000000
	mov	r3, 0
	mov	r0, x8
	mov	r1, x7
	call	__udivdi3
	mov	r2, -1000000000
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	call	__muldi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x8
	mov	r3, x7
	call	__adddi3
	mov	r2, 1000000000
	mov	r3, 0
	mov	x7, rax
	mov	r0, x6
	mov	r1, x7
	call	__udivdi3
	mov	r2, -1000000000
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	call	__muldi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x6
	mov	r3, x7
	call	__adddi3
	mov	r1, -512
	mov	x7, rax
	mov	r0, x5
	call	__bit_and
	mov	r2, 1000000000
	mov	r3, 0
	mov	r0, rax
	mov	r1, x7
	call	__udivdi3
	mov	r2, -1000000000
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	call	__muldi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x5
	mov	r3, x6
	call	__adddi3
	mov	x5, rax
	mov	x6, 0
.LBB117_22:
	mov	[x0], x2
	mov	r0, x0
add	r0, 4
	mov	[r0], x1
	mov	r0, x0
add	r0, 8
	mov	r1, x0
add	r1, 12
	mov	[r1], x4
	mov	[r0], x3
	mov	r0, x0
add	r0, 16
add	x0, 20
	mov	[x0], x6
	mov	[r0], x5
.LBB117_23:
	mov	x8, [rsp+144]
	mov	x7, [rsp+148]
	mov	x6, [rsp+152]
	mov	x5, [rsp+156]
	mov	x4, [rsp+160]
	mov	x3, [rsp+164]
	mov	x2, [rsp+168]
	mov	x1, [rsp+172]
	mov	x0, [rsp+176]
add	rsp, 180
	ret
// -- End function
// -- Begin function ryu_mul_shift_mod1e9_exact
ryu_mul_shift_mod1e9_exact:             // @ryu_mul_shift_mod1e9_exact
// %bb.0:
sub	rsp, 120
	mov	[rsp+116], x0
	mov	[rsp+112], x1
	mov	[rsp+108], x2
	mov	[rsp+104], x3
	mov	[rsp+100], x4
	mov	[rsp+96], x5
	mov	[rsp+92], x6
	mov	[rsp+88], x7
	mov	[rsp+84], x8
	mov	[rsp+80], x9
	mov	[rsp+76], x10
	mov	[rsp+72], x11
	mov	[rsp+68], x12
	mov	[rsp+64], x13
	mov	[rsp+60], x14
	mov	[rsp+56], x15
	mov	[rsp+20], r3
	mov	x7, r2
	mov	x5, r1
	mov	x6, r0
	mov	r0, rsp
add	r0, 48
	mov	[rsp+12], r0
	mov	r0, rsp
add	r0, 40
	mov	[rsp+8], r0
	mov	r0, rsp
add	r0, 32
	mov	[rsp+4], r0
	mov	r0, x7
add	r0, 4
	mov	x1, [x7]
	mov	x2, [r0]
	mov	r1, 0
	mov	r3, 0
	mov	x8, 0
	mov	r0, x1
	mov	r2, x6
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x0, rax
	mov	x3, t0
	mov	r0, x1
	mov	r2, x5
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x1, rax
	mov	x9, t0
	mov	r0, x2
	mov	r2, x6
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x10, rax
	mov	x11, t0
	mov	r0, x2
	mov	r2, x5
	call	__muldi3
	mov	r1, 0
	mov	x2, rax
	mov	x12, t0
	mov	r0, x3
	mov	r2, x10
	mov	r3, x11
	call	__adddi3
	mov	r1, 0
	mov	x3, t0
	mov	r0, rax
	mov	r2, x1
	mov	r3, x9
	call	__adddi3
	mov	x9, t0
	mov	r0, rsp
add	r0, 28
	mov	[rsp+16], rax
	mov	[r0], rax
	mov	r1, 0
	mov	x1, x0
	mov	[rsp+24], x0
	mov	r0, x3
	mov	r2, x2
	mov	r3, x12
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x9
	call	__adddi3
	mov	r0, x7
add	r0, 8
	mov	r1, x7
add	r1, 12
	mov	x2, [r0]
	mov	x3, [r1]
	mov	r1, 0
	mov	r3, 0
	mov	x11, rax
	mov	x10, t0
	mov	r0, x2
	mov	r2, x6
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x15, rax
	mov	x9, t0
	mov	r0, x2
	mov	r2, x5
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x2, rax
	mov	x0, t0
	mov	r0, x3
	mov	r2, x6
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x14, rax
	mov	x4, t0
	mov	r0, x3
	mov	r2, x5
	call	__muldi3
	mov	r1, 0
	mov	x12, rax
	mov	x13, t0
	mov	r0, x9
	mov	r2, x14
	mov	r3, x4
	call	__adddi3
	mov	r1, 0
	mov	x14, t0
	mov	r0, rax
	mov	r2, x2
	mov	r3, x0
	call	__adddi3
	mov	r3, 0
	mov	x0, rax
	mov	x9, t0
	mov	r0, x11
	mov	r1, x10
	mov	r2, x15
	call	__adddi3
	mov	r2, 0
	mov	r1, t0
	mov	r0, rax
	mov	r3, x0
	call	__adddi3
	mov	x3, rax
	mov	x2, t0
	mov	r0, rsp
add	r0, 36
	mov	[r0], x2
	mov	r0, [rsp+4]
	mov	[r0], x3
	mov	r0, x10
add	r0, -2147483648
	mov	r2, x2
add	r2, -2147483648
	mov	r1, 1
	mov	x15, 1
	jl	r2, r0, .LBB118_2
// %bb.1:
	mov	x15, 0
.LBB118_2:
add	x11, -2147483648
	mov	r0, x3
add	r0, -2147483648
	jl	r0, x11, .LBB118_4
// %bb.3:
	mov	r1, 0
.LBB118_4:
	sub	r1, x15
	mov	r0, 1
	je	x2, x10, .LBB118_6
// %bb.5:
	mov	r0, 0
.LBB118_6:
	sub	x8, r0
	mov	r0, x8
	call	__bit_and
	mov	r1, 0
	add	x15, rax
	mov	r0, x14
	mov	r2, x12
	mov	r3, x13
	call	__adddi3
	mov	r1, 1
	mov	x8, rax
	mov	x10, t0
	mov	r0, x15
	call	__bit_and
	mov	r0, x7
add	r0, 16
add	x7, 20
	mov	x0, [r0]
	mov	x4, [x7]
	mov	r1, 0
	mov	r3, 0
	mov	x7, rax
	mov	r0, x0
	mov	r2, x6
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x11, rax
	mov	x12, t0
	mov	r0, x0
	mov	r2, x5
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x0, rax
	mov	x13, t0
	mov	r0, x4
	mov	r2, x6
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x6, rax
	mov	x14, t0
	mov	r0, x4
	mov	r2, x5
	call	__muldi3
	mov	r1, 0
	mov	x4, rax
	mov	x5, t0
	mov	r0, x12
	mov	r2, x6
	mov	r3, x14
	call	__adddi3
	mov	r1, 0
	mov	x6, t0
	mov	r0, rax
	mov	r2, x0
	mov	r3, x13
	call	__adddi3
	mov	r3, 0
	mov	x0, rax
	mov	x12, t0
	mov	r0, x8
	mov	r1, x10
	mov	r2, x11
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x9
	call	__adddi3
	mov	r2, 0
	mov	r1, t0
	mov	r0, rax
	mov	r3, x0
	call	__adddi3
	mov	x10, rax
	mov	x11, t0
	mov	r0, rsp
add	r0, 44
	mov	[r0], x11
	mov	r1, 0
	mov	r0, [rsp+8]
	mov	[r0], x10
	mov	r0, x6
	mov	r2, x4
	mov	r3, x5
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x12
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x7
	call	__adddi3
	mov	r0, rsp
add	r0, 52
	mov	[r0], t0
	mov	r0, [rsp+12]
	mov	[r0], rax
	mov	x12, rax
	mov	x13, t0
	mov	x15, x1
	mov	x1, [rsp+16]
	mov	x14, [rsp+20]
	jz	x14, .LBB118_23
	jmp	.LBB118_7
.LBB118_7:
	mov	x12, 0
	mov	r0, x14
add	r0, -2147483648
	mov	r1, -2147483393
	mov	x13, 0
	mov	x10, 0
	mov	x11, 0
	mov	x3, 0
	mov	x2, 0
	mov	x15, 0
	mov	x1, 0
	jg	r0, r1, .LBB118_23
	jmp	.LBB118_8
.LBB118_8:
	mov	[rsp+12], rax
	mov	[rsp+8], t0
	mov	r1, 6
	mov	r0, x14
	call	__bit_shr
	mov	r1, 63
	mov	x8, rax
	mov	r0, x14
	call	__bit_and
	mov	x7, rax
	mov	r1, 3
	mov	x6, 3
	mov	r0, x8
	call	__bit_shl
	mov	x5, rsp
add	x5, 24
	add	x5, rax
	mov	x15, [x5]
	mov	r0, x5
add	r0, 4
	mov	x1, [r0]
	jnz	x7, .LBB118_12
	jmp	.LBB118_9
.LBB118_9:
	mov	r0, 191
	jg	x14, r0, .LBB118_23
	jmp	.LBB118_10
.LBB118_10:
	mov	r0, x5
add	r0, 8
	mov	r1, x5
add	r1, 12
	mov	x2, [r1]
	mov	x3, [r0]
	mov	r0, 127
	jg	x14, r0, .LBB118_23
	jmp	.LBB118_11
.LBB118_11:
	mov	r0, x5
add	r0, 16
add	x5, 20
	mov	x11, [x5]
	mov	x10, [r0]
	jmp	.LBB118_23
.LBB118_12:
	mov	r0, 64
	mov	r1, 31
	sub	r0, x7
	mov	[rsp+4], r0
	mov	r0, x7
	call	__bit_and
	mov	x0, rax
	mov	r1, 0
	sub	r1, x0
	mov	r0, x0
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r0, x7
add	r0, -32
	mov	r1, 31
	mov	x4, rax
	mov	x9, r0
	call	__bit_shr
	mov	x3, rax
	mov	r0, x1
	mov	r1, x0
	call	__bit_shr
	sub	x10, x3
	mov	x11, rax
	mov	r0, x10
	call	__bit_not
	mov	r0, x11
	mov	r1, rax
	call	__bit_and
	mov	x12, rax
	mov	r0, x15
	mov	r1, x0
	call	__bit_shr
	mov	x13, rax
	mov	r0, 32
	sub	r0, x0
	mov	r1, 31
	mov	x3, 32
	call	__bit_and
	mov	r0, x1
	mov	r1, rax
	call	__bit_shl
	mov	r1, 0
	sub	r1, x4
	mov	r0, rax
	call	__bit_and
	mov	r0, x13
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x10
	call	__bit_and
	mov	r0, rax
	mov	r1, x12
	call	__bit_or
	mov	x15, rax
	mov	r0, x11
	mov	r1, x10
	call	__bit_and
	mov	x1, rax
	mov	[rsp+16], x8
	je	x8, x6, .LBB118_14
	jmp	.LBB118_13
.LBB118_13:
	mov	r0, x5
add	r0, 8
	mov	r1, x5
add	r1, 12
	mov	x0, [r1]
	mov	x4, [r0]
	mov	r1, 31
	mov	x6, [rsp+4]
	mov	r0, x6
	call	__bit_and
	mov	x10, rax
	mov	r1, 0
	sub	r1, x10
	mov	r0, x10
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
add	x6, -32
	mov	r1, 31
	mov	x11, rax
	mov	r0, x6
	call	__bit_shr
	mov	x12, rax
	mov	r0, x4
	mov	r1, x10
	call	__bit_shl
	mov	x13, 0
	sub	x13, x12
	mov	x12, rax
	mov	r0, x13
	call	__bit_not
	mov	r0, x12
	mov	r1, rax
	call	__bit_and
	mov	x14, rax
	mov	r0, x0
	mov	r1, x10
	call	__bit_shl
	sub	x3, x10
	mov	r1, 31
	mov	x0, rax
	mov	r0, x3
	call	__bit_and
	mov	r0, x4
	mov	r1, rax
	call	__bit_shr
	mov	r1, 0
	sub	r1, x11
	mov	r0, rax
	call	__bit_and
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x13
	call	__bit_and
	mov	r0, rax
	mov	r1, x14
	mov	x14, [rsp+20]
	call	__bit_or
	mov	x0, rax
	mov	r0, x12
	mov	r1, x13
	call	__bit_and
	mov	x3, rax
	mov	r0, x0
	mov	r1, x1
	call	__bit_or
	mov	x1, rax
	mov	r0, x3
	mov	r1, x15
	call	__bit_or
	mov	x15, rax
.LBB118_14:
	mov	r0, 191
	mov	x3, 0
	mov	x10, 0
	mov	x11, 0
	mov	x8, x9
	jg	x14, r0, .LBB118_21
	jmp	.LBB118_15
.LBB118_15:
	mov	x12, [rsp+16]
add	x12, 1
	mov	r1, 3
	mov	x14, 3
	mov	r0, x12
	call	__bit_shl
	mov	x6, rsp
add	x6, 24
	add	x6, rax
	mov	x0, [x6]
	mov	r0, x6
add	r0, 4
	mov	x2, [r0]
	mov	r1, 31
	mov	r0, x7
	call	__bit_and
	mov	x3, rax
	mov	r1, 0
	sub	r1, x3
	mov	r0, x3
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 31
	mov	x4, rax
	mov	r0, x8
	call	__bit_shr
	mov	x13, rax
	mov	r0, 32
	sub	r0, x3
	mov	r1, 31
	mov	x11, 32
	call	__bit_and
	mov	r0, x2
	mov	r1, rax
	call	__bit_shl
	mov	r1, 0
	sub	r1, x4
	mov	r0, rax
	call	__bit_and
	mov	x4, rax
	mov	r0, x0
	mov	r1, x3
	call	__bit_shr
	mov	r0, rax
	mov	r1, x4
	call	__bit_or
	mov	x0, 0
	sub	x0, x13
	mov	r0, rax
	mov	r1, x0
	call	__bit_and
	mov	x4, rax
	mov	r0, x2
	mov	r1, x3
	call	__bit_shr
	mov	x2, rax
	mov	r0, x0
	call	__bit_not
	mov	r0, x2
	mov	r1, rax
	call	__bit_and
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	x3, rax
	mov	r0, x2
	mov	r1, x0
	call	__bit_and
	mov	x2, rax
	je	x12, x14, .LBB118_17
	jmp	.LBB118_16
.LBB118_16:
	mov	r0, x6
add	r0, 8
add	x6, 12
	mov	x9, [x6]
	mov	x14, [r0]
	mov	r1, 31
	mov	x4, [rsp+4]
	mov	r0, x4
	call	__bit_and
	mov	x0, rax
	mov	r1, 0
	sub	r1, x0
	mov	r0, x0
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r0, x4
add	r0, -32
	mov	r1, 31
	mov	x4, rax
	call	__bit_shr
	mov	x12, rax
	mov	r0, x14
	mov	r1, x0
	call	__bit_shl
	mov	x13, x1
	mov	x1, x15
	mov	x15, 0
	sub	x15, x12
	mov	x12, rax
	mov	r0, x15
	call	__bit_not
	mov	r0, x12
	mov	r1, rax
	call	__bit_and
	mov	x6, rax
	mov	r0, x9
	mov	r1, x0
	call	__bit_shl
	sub	x11, x0
	mov	r1, 31
	mov	x0, rax
	mov	r0, x11
	call	__bit_and
	mov	r0, x14
	mov	r1, rax
	call	__bit_shr
	mov	r1, 0
	sub	r1, x4
	mov	r0, rax
	call	__bit_and
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x15
	call	__bit_and
	mov	r0, rax
	mov	r1, x6
	call	__bit_or
	mov	x0, rax
	mov	r0, x12
	mov	r1, x15
	mov	x15, x1
	mov	x1, x13
	call	__bit_and
	mov	x4, rax
	mov	r0, x0
	mov	r1, x2
	call	__bit_or
	mov	x2, rax
	mov	r0, x4
	mov	r1, x3
	call	__bit_or
	mov	x3, rax
	mov	r0, 127
	mov	x11, 0
	mov	r1, [rsp+20]
	jg	r1, r0, .LBB118_21
	jmp	.LBB118_19
.LBB118_17:
	mov	x12, 0
	mov	r0, 127
	mov	x13, 0
	mov	x11, 0
	mov	r1, [rsp+20]
	jg	r1, r0, .LBB118_23
	jmp	.LBB118_18
.LBB118_18:
	mov	r0, x5
add	r0, 16
	mov	x0, [r0]
	mov	r0, x5
add	r0, 20
	mov	x4, [r0]
	mov	r1, 31
	mov	r0, x7
	call	__bit_and
	mov	x6, rax
	mov	r1, 0
	sub	r1, x6
	mov	r0, x6
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 31
	mov	x11, rax
	mov	r0, x8
	call	__bit_shr
	mov	x12, rax
	mov	r0, x4
	mov	r1, x6
	call	__bit_shr
	sub	x13, x12
	mov	x12, rax
	mov	r0, x13
	call	__bit_not
	mov	r0, x12
	mov	r1, rax
	call	__bit_and
	mov	x14, rax
	mov	r0, x0
	mov	r1, x6
	call	__bit_shr
	mov	r0, 32
	sub	r0, x6
	mov	r1, 31
	mov	x0, rax
	call	__bit_and
	mov	r0, x4
	mov	r1, rax
	call	__bit_shl
	sub	x10, x11
	mov	r0, rax
	mov	r1, x10
	call	__bit_and
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x13
	call	__bit_and
	mov	r0, rax
	mov	r1, x14
	call	__bit_or
	mov	x10, rax
	mov	r0, x12
	mov	r1, x13
	call	__bit_and
	mov	x11, rax
	jmp	.LBB118_20
.LBB118_19:
	mov	r1, 31
	mov	r0, x7
	call	__bit_and
	mov	x0, rax
	mov	r1, 0
	sub	r1, x0
	mov	x12, 0
	mov	r0, x0
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 31
	mov	x4, rax
	mov	r0, x8
	call	__bit_shr
	mov	x6, rax
	mov	r0, x9
	mov	r1, x0
	call	__bit_shr
	sub	x11, x6
	mov	x6, rax
	mov	r0, x11
	call	__bit_not
	mov	r0, x6
	mov	r1, rax
	call	__bit_and
	mov	x10, rax
	mov	r0, x14
	mov	r1, x0
	call	__bit_shr
	mov	r0, 32
	sub	r0, x0
	mov	r1, 31
	mov	x0, rax
	call	__bit_and
	mov	r0, x9
	mov	r1, rax
	call	__bit_shl
	mov	r1, 0
	sub	r1, x4
	mov	r0, rax
	call	__bit_and
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x11
	call	__bit_and
	mov	r0, rax
	mov	r1, x10
	call	__bit_or
	mov	x10, rax
	mov	r0, x6
	mov	r1, x11
	call	__bit_and
	mov	x11, rax
	mov	r0, 1
	mov	x13, 0
	mov	r1, [rsp+16]
	je	r1, r0, .LBB118_23
	jmp	.LBB118_20
.LBB118_20:
	mov	r0, x5
add	r0, 24
add	x5, 28
	mov	x0, [x5]
	mov	x4, [r0]
	mov	r1, 31
	mov	x5, [rsp+4]
	mov	r0, x5
	call	__bit_and
	mov	x6, rax
	mov	r1, 0
	sub	r1, x6
	mov	x12, 0
	mov	r0, x6
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
add	x5, -32
	mov	r1, 31
	mov	x13, rax
	mov	r0, x5
	call	__bit_shr
	mov	x9, rax
	mov	r0, x4
	mov	r1, x6
	call	__bit_shl
	mov	x14, 0
	sub	x14, x9
	mov	x9, rax
	mov	r0, x14
	call	__bit_not
	mov	r0, x9
	mov	r1, rax
	call	__bit_and
	mov	x5, x1
	mov	x1, x15
	mov	x15, rax
	mov	r0, x0
	mov	r1, x6
	call	__bit_shl
	mov	r0, 32
	sub	r0, x6
	mov	r1, 31
	mov	x0, rax
	call	__bit_and
	mov	r0, x4
	mov	r1, rax
	call	__bit_shr
	sub	x12, x13
	mov	r0, rax
	mov	r1, x12
	call	__bit_and
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x14
	call	__bit_and
	mov	r0, rax
	mov	r1, x15
	mov	x15, x1
	mov	x1, x5
	call	__bit_or
	mov	x0, rax
	mov	r0, x9
	mov	r1, x14
	call	__bit_and
	mov	x4, rax
	mov	r0, x0
	mov	r1, x11
	call	__bit_or
	mov	x11, rax
	mov	r0, x4
	mov	r1, x10
	call	__bit_or
	mov	x10, rax
.LBB118_21:
	mov	r1, 31
	mov	r0, x7
	call	__bit_and
	mov	x0, rax
	mov	r1, 0
	sub	r1, x0
	mov	r0, x0
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 31
	mov	x4, rax
	mov	r0, x8
	call	__bit_shr
	mov	x6, rax
	mov	x7, [rsp+8]
	mov	r0, x7
	mov	r1, x0
	call	__bit_shr
	mov	x8, 0
	sub	x8, x6
	mov	x6, rax
	mov	r0, x8
	call	__bit_not
	mov	r0, x6
	mov	r1, rax
	call	__bit_and
	mov	x9, rax
	mov	r0, [rsp+12]
	mov	r1, x0
	call	__bit_shr
	mov	r0, 32
	sub	r0, x0
	mov	r1, 31
	mov	x0, rax
	call	__bit_and
	mov	r0, x7
	mov	r1, rax
	call	__bit_shl
	mov	r1, 0
	sub	r1, x4
	mov	r0, rax
	call	__bit_and
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x8
	call	__bit_and
	mov	r0, rax
	mov	r1, x9
	call	__bit_or
	mov	x12, rax
	mov	r0, x6
	mov	r1, x8
	call	__bit_and
	mov	x13, rax
	mov	r0, [rsp+16]
	jz	r0, .LBB118_23
	jmp	.LBB118_22
.LBB118_22:
	mov	x12, 0
	mov	x13, 0
.LBB118_23:
	mov	r1, -512
	mov	r0, x12
	call	__bit_and
	mov	r2, 0
	mov	r3, 1000000000
	mov	x0, rax
	mov	r0, x12
	mov	r1, x13
	call	__umoddi3
	mov	r1, 1073741823
	mov	r0, t0
	call	__bit_and
	mov	r2, 1000000000
	mov	r3, 0
	mov	r0, x0
	mov	r1, rax
	call	__udivdi3
	mov	r2, -1000000000
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	call	__muldi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x12
	mov	r3, x13
	call	__adddi3
	mov	r1, -512
	mov	x0, rax
	mov	r0, x10
	call	__bit_and
	mov	r2, 1000000000
	mov	r3, 0
	mov	x4, rax
	mov	r0, x11
	mov	r1, x0
	call	__udivdi3
	mov	r2, -1000000000
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	call	__muldi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x11
	mov	r3, x0
	call	__adddi3
	mov	r2, 1000000000
	mov	r3, 0
	mov	r0, x4
	mov	r1, rax
	call	__udivdi3
	mov	r2, -1000000000
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	call	__muldi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x10
	mov	r3, x11
	call	__adddi3
	mov	r1, -512
	mov	x0, rax
	mov	r0, x3
	call	__bit_and
	mov	r2, 1000000000
	mov	r3, 0
	mov	x4, rax
	mov	r0, x2
	mov	r1, x0
	call	__udivdi3
	mov	r2, -1000000000
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	call	__muldi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x2
	mov	r3, x0
	call	__adddi3
	mov	r2, 1000000000
	mov	r3, 0
	mov	r0, x4
	mov	r1, rax
	call	__udivdi3
	mov	r2, -1000000000
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	call	__muldi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x3
	mov	r3, x2
	call	__adddi3
	mov	r1, -512
	mov	x0, rax
	mov	r0, x15
	call	__bit_and
	mov	r2, 1000000000
	mov	r3, 0
	mov	x2, rax
	mov	r0, x1
	mov	r1, x0
	call	__udivdi3
	mov	r2, -1000000000
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	call	__muldi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x1
	mov	r3, x0
	call	__adddi3
	mov	r2, 1000000000
	mov	r3, 0
	mov	r0, x2
	mov	r1, rax
	call	__udivdi3
	mov	r2, -1000000000
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	call	__muldi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x15
	mov	r3, x1
	call	__adddi3
	mov	x15, [rsp+56]
	mov	x14, [rsp+60]
	mov	x13, [rsp+64]
	mov	x12, [rsp+68]
	mov	x11, [rsp+72]
	mov	x10, [rsp+76]
	mov	x9, [rsp+80]
	mov	x8, [rsp+84]
	mov	x7, [rsp+88]
	mov	x6, [rsp+92]
	mov	x5, [rsp+96]
	mov	x4, [rsp+100]
	mov	x3, [rsp+104]
	mov	x2, [rsp+108]
	mov	x1, [rsp+112]
	mov	x0, [rsp+116]
add	rsp, 120
	ret
// -- End function
// -- Begin function ryu_fill_pow10_split_2_exp
ryu_fill_pow10_split_2_exp:             // @ryu_fill_pow10_split_2_exp
// %bb.0:
sub	rsp, 180
	mov	[rsp+176], x0
	mov	[rsp+172], x1
	mov	[rsp+168], x2
	mov	[rsp+164], x3
	mov	[rsp+160], x4
	mov	[rsp+156], x5
	mov	[rsp+152], x6
	mov	[rsp+148], x7
	mov	[rsp+144], x8
	mov	x0, r2
	mov	x2, r1
	mov	x1, r0
	mov	[rsp+36], -255
	mov	r0, rsp
add	r0, 40
	mov	r1, rsp
add	r1, 44
	mov	[r1], 0
	mov	[r0], 0
	mov	r0, rsp
add	r0, 48
	mov	r1, rsp
add	r1, 52
	mov	[r1], 0
	mov	[r0], 0
	mov	r0, rsp
add	r0, 56
	mov	r1, rsp
add	r1, 60
	mov	[r1], 0
	mov	[r0], 0
	mov	r0, rsp
add	r0, 64
	mov	r1, rsp
add	r1, 68
	mov	[r1], -2147483648
	mov	[r0], 0
	mov	[rsp], -255
	mov	r0, rsp
add	r0, 4
	mov	r1, rsp
add	r1, 8
	mov	[r1], 0
	mov	[r0], 0
	mov	r0, rsp
add	r0, 12
	mov	r1, rsp
add	r1, 16
	mov	[r1], 0
	mov	[r0], 0
	mov	r0, rsp
add	r0, 20
	mov	r1, rsp
add	r1, 24
	mov	[r1], 0
	mov	[r0], 0
	mov	r0, rsp
add	r0, 28
	mov	r1, rsp
add	r1, 32
	mov	[r1], -2147483648
	mov	[r0], 0
	mov	[rsp+108], -226
	mov	r0, rsp
add	r0, 112
	mov	r1, rsp
add	r1, 116
	mov	[r1], 0
	mov	[r0], 0
	mov	r0, rsp
add	r0, 120
	mov	r1, rsp
add	r1, 124
	mov	[r1], 0
	mov	[r0], 0
	mov	r0, rsp
add	r0, 128
	mov	r1, rsp
add	r1, 132
	mov	[r1], 0
	mov	[r0], 0
	mov	r0, rsp
add	r0, 136
	mov	r1, rsp
add	r1, 140
	mov	[r1], -294967296
	mov	[r0], 0
.LBB119_1:                              // =>This Inner Loop Header: Depth=1
	mov	r1, 1
	mov	r0, x2
	call	__bit_and
	jz	rax, .LBB119_3
	jmp	.LBB119_2
.LBB119_2:                              //   in Loop: Header=BB119_1 Depth=1
	mov	r0, rsp
add	r0, 72
	mov	r1, rsp
	mov	r2, rsp
add	r2, 108
	call	ryu_dyadic256_quick_mul
	mov	r0, rsp
add	r0, 104
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 32
	mov	[r1], r0
	mov	r0, rsp
add	r0, 100
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 28
	mov	[r1], r0
	mov	r0, rsp
add	r0, 96
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 24
	mov	[r1], r0
	mov	r0, rsp
add	r0, 92
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 20
	mov	[r1], r0
	mov	r0, rsp
add	r0, 88
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 16
	mov	[r1], r0
	mov	r0, rsp
add	r0, 84
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 12
	mov	[r1], r0
	mov	r0, rsp
add	r0, 80
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 8
	mov	[r1], r0
	mov	r0, rsp
add	r0, 76
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 4
	mov	r2, [rsp+72]
	mov	[r1], r0
	mov	[rsp], r2
.LBB119_3:                              //   in Loop: Header=BB119_1 Depth=1
	mov	r1, 1
	mov	r0, x2
	call	__bit_shr
	mov	x2, rax
	jz	x2, .LBB119_5
	jmp	.LBB119_4
.LBB119_4:                              //   in Loop: Header=BB119_1 Depth=1
	mov	r0, rsp
add	r0, 72
	mov	r1, rsp
add	r1, 108
	mov	r2, r1
	call	ryu_dyadic256_quick_mul
	mov	r0, rsp
add	r0, 104
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 140
	mov	[r1], r0
	mov	r0, rsp
add	r0, 100
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 136
	mov	[r1], r0
	mov	r0, rsp
add	r0, 96
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 132
	mov	[r1], r0
	mov	r0, rsp
add	r0, 92
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 128
	mov	[r1], r0
	mov	r0, rsp
add	r0, 88
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 124
	mov	[r1], r0
	mov	r0, rsp
add	r0, 84
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 120
	mov	[r1], r0
	mov	r0, rsp
add	r0, 80
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 116
	mov	[r1], r0
	mov	r0, rsp
add	r0, 76
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 112
	mov	r2, [rsp+72]
	mov	[r1], r0
	mov	[rsp+108], r2
	jmp	.LBB119_1
.LBB119_5:
	mov	r0, rsp
add	r0, 4
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 40
	mov	[r1], r0
	mov	r0, rsp
add	r0, 8
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 44
	mov	[r1], r0
	mov	r0, rsp
add	r0, 12
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 48
	mov	[r1], r0
	mov	r0, rsp
add	r0, 16
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 52
	mov	[r1], r0
	mov	r0, rsp
add	r0, 20
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 56
	mov	[r1], r0
	mov	r0, rsp
add	r0, 24
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 60
	mov	[r1], r0
	mov	r0, rsp
add	r0, 28
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 64
	mov	[r1], r0
	mov	r0, rsp
add	r0, 32
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 68
	mov	r2, [rsp]
	mov	[rsp+36], r2
	mov	r2, [rsp+36]
	mov	[r1], r0
	sub	r2, x1
add	r2, 128
	mov	[rsp+36], r2
	mov	r0, rsp
add	r0, 108
	mov	r1, rsp
add	r1, 36
	call	ryu_dyadic256_as_mantissa_type
	mov	r0, rsp
add	r0, 112
	mov	x3, [r0]
	mov	x4, [rsp+108]
	mov	r0, rsp
add	r0, 116
	mov	r1, rsp
add	r1, 120
	mov	x2, [r1]
	mov	x1, [r0]
	mov	r0, rsp
add	r0, 124
	mov	r1, rsp
add	r1, 128
	mov	x6, [r1]
	mov	x5, [r0]
	mov	r0, rsp
add	r0, 132
	mov	r1, rsp
add	r1, 136
	mov	x7, [r1]
	mov	x8, [r0]
	mov	r0, x8
	mov	r1, x7
	call	__bit_or
	jnz	rax, .LBB119_13
	jmp	.LBB119_6
.LBB119_6:
	mov	r1, 1000000000
	mov	r0, x5
	call	__bit_xor
	mov	r0, rax
	mov	r1, x6
	call	__bit_or
	jnz	rax, .LBB119_8
	jmp	.LBB119_7
.LBB119_7:
	mov	r0, x1
	mov	r1, x4
	call	__bit_or
	mov	x5, rax
	mov	r0, x2
	mov	r1, x3
	call	__bit_or
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	x6, 0
	mov	x5, 1000000000
	jz	rax, .LBB119_14
	jmp	.LBB119_13
.LBB119_8:
	mov	r0, x5
add	r0, -2147483648
	mov	r3, -1147483647
	mov	r2, 1
	mov	r1, 1
	jl	r0, r3, .LBB119_10
// %bb.9:
	mov	r1, 0
.LBB119_10:
	mov	r0, 0
	je	x6, r0, .LBB119_12
// %bb.11:
	mov	r2, 0
.LBB119_12:
	sub	r0, r2
	call	__bit_and
	jnz	rax, .LBB119_14
	jmp	.LBB119_13
.LBB119_13:
	mov	r2, 1000000000
	mov	r3, 0
	mov	r0, x8
	mov	r1, x7
	call	__udivdi3
	mov	r2, -1000000000
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	call	__muldi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x8
	mov	r3, x7
	call	__adddi3
	mov	r2, 1000000000
	mov	r3, 0
	mov	x7, rax
	mov	r0, x6
	mov	r1, x7
	call	__udivdi3
	mov	r2, -1000000000
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	call	__muldi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x6
	mov	r3, x7
	call	__adddi3
	mov	r1, -512
	mov	x7, rax
	mov	r0, x5
	call	__bit_and
	mov	r2, 1000000000
	mov	r3, 0
	mov	r0, rax
	mov	r1, x7
	call	__udivdi3
	mov	r2, -1000000000
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	call	__muldi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x5
	mov	r3, x6
	call	__adddi3
	mov	x5, rax
	mov	x6, 0
.LBB119_14:
	mov	[x0], x4
	mov	r0, x0
add	r0, 4
	mov	[r0], x3
	mov	r0, x0
add	r0, 8
	mov	r1, x0
add	r1, 12
	mov	[r1], x2
	mov	[r0], x1
	mov	r0, x0
add	r0, 16
add	x0, 20
	mov	[x0], x6
	mov	[r0], x5
	mov	x8, [rsp+144]
	mov	x7, [rsp+148]
	mov	x6, [rsp+152]
	mov	x5, [rsp+156]
	mov	x4, [rsp+160]
	mov	x3, [rsp+164]
	mov	x2, [rsp+168]
	mov	x1, [rsp+172]
	mov	x0, [rsp+176]
add	rsp, 180
	ret
// -- End function
// -- Begin function ryu_dyadic256_quick_mul
ryu_dyadic256_quick_mul:                // @ryu_dyadic256_quick_mul
// %bb.0:
sub	rsp, 176
	mov	[rsp+172], x0
	mov	[rsp+168], x1
	mov	[rsp+164], x2
	mov	[rsp+160], x3
	mov	[rsp+156], x4
	mov	[rsp+152], x5
	mov	[rsp+148], x6
	mov	[rsp+144], x7
	mov	[rsp+140], x8
	mov	[rsp+136], x9
	mov	[rsp+132], x10
	mov	[rsp+128], x11
	mov	[rsp+124], x12
	mov	[rsp+120], x13
	mov	[rsp+116], x14
	mov	[rsp+112], x15
	mov	r3, [r2]
	add	r3, [r1]
	mov	[rsp], r3
add	r3, 256
	mov	[rsp+56], r0
	mov	[r0], r3
	mov	r0, r1
add	r0, 4
	mov	r3, r2
add	r3, 4
	mov	r3, [r3]
	mov	[rsp+52], r3
	mov	r3, r2
add	r3, 8
	mov	r3, [r3]
	mov	[rsp+80], r3
	mov	r3, r2
add	r3, 12
	mov	r3, [r3]
	mov	[rsp+72], r3
	mov	r3, r2
add	r3, 16
	mov	r3, [r3]
	mov	[rsp+76], r3
	mov	r3, r2
add	r3, 20
	mov	x11, [r3]
	mov	r3, r2
add	r3, 24
	mov	x10, [r3]
	mov	r3, r2
add	r3, 28
	mov	x9, [r3]
add	r2, 32
	mov	x0, [r2]
	mov	x5, [r0]
	mov	r0, r1
add	r0, 8
	mov	x1, [r0]
	mov	r0, r1
add	r0, 12
	mov	x13, [r0]
	mov	r0, r1
add	r0, 16
	mov	x12, [r0]
	mov	r0, r1
add	r0, 20
	mov	r0, [r0]
	mov	[rsp+84], r0
	mov	r0, r1
add	r0, 24
	mov	r0, [r0]
	mov	[rsp+88], r0
	mov	r0, r1
add	r0, 28
	mov	r0, [r0]
	mov	[rsp+104], r0
add	r1, 32
	mov	r0, [r1]
	mov	[rsp+108], r0
	mov	r1, 0
	mov	r3, 0
	mov	r0, x12
	mov	r2, x10
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x2, rax
	mov	x3, t0
	mov	r0, x1
	mov	r2, x0
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x6, rax
	mov	x7, t0
	mov	r0, x5
	mov	r2, x9
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x4, rax
	mov	x8, t0
	mov	r0, x1
	mov	[rsp+96], x9
	mov	r2, x9
	call	__muldi3
	mov	r1, 0
	mov	r3, t0
	mov	r0, x8
	mov	r2, rax
	call	__adddi3
	mov	r1, 0
	mov	x1, rax
	mov	r0, t0
	mov	r2, x6
	mov	r3, x7
	call	__adddi3
	mov	r1, 0
	mov	r3, 0
	mov	x6, rax
	mov	x7, t0
	mov	r0, x5
	mov	[rsp+100], x0
	mov	r2, x0
	call	__muldi3
	mov	r1, 0
	mov	r3, t0
	mov	r0, x1
	mov	r2, rax
	call	__adddi3
	mov	r3, 0
	mov	x5, rax
	mov	r2, t0
	mov	r0, x6
	mov	r1, x7
	call	__adddi3
	mov	r1, 0
	mov	r3, 0
	mov	x15, rax
	mov	x7, t0
	mov	r0, x13
	mov	r2, x11
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x8, rax
	mov	x1, t0
	mov	[rsp+64], x12
	mov	r0, x12
	mov	[rsp+68], x11
	mov	r2, x11
	call	__muldi3
	mov	r1, 0
	mov	r3, t0
	mov	r0, x1
	mov	r2, rax
	call	__adddi3
	mov	r1, 0
	mov	r3, 0
	mov	x1, rax
	mov	x6, t0
	mov	[rsp+60], x13
	mov	r0, x13
	mov	[rsp+92], x10
	mov	r2, x10
	call	__muldi3
	mov	r1, 0
	mov	r3, t0
	mov	r0, x1
	mov	r2, rax
	call	__adddi3
	mov	r1, 0
	mov	x9, rax
	mov	x1, t0
	mov	r0, x6
	mov	r2, x2
	mov	r3, x3
	call	__adddi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x15
	mov	r3, x7
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x1
	call	__adddi3
	mov	x10, rax
	mov	x6, t0
	mov	r0, x7
add	r0, -2147483648
	mov	x12, x6
add	x12, -2147483648
	mov	r1, 1
	mov	x1, 1
	jl	x12, r0, .LBB120_2
// %bb.1:
	mov	x1, 0
.LBB120_2:
add	x15, -2147483648
	mov	x13, x10
add	x13, -2147483648
	jl	x13, x15, .LBB120_4
// %bb.3:
	mov	r1, 0
.LBB120_4:
	sub	r1, x1
	mov	r2, 1
	je	x6, x7, .LBB120_6
// %bb.5:
	mov	r2, 0
.LBB120_6:
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	x1, rax
	mov	r1, 1
	mov	r0, x1
	call	__bit_and
	mov	r3, 0
	mov	x7, rax
	mov	r0, x4
	mov	r1, x5
	mov	r2, x8
	call	__adddi3
	mov	r2, 0
	mov	r1, t0
	mov	r0, rax
	mov	r3, x9
	call	__adddi3
	mov	x0, t0
	mov	r0, x5
add	r0, -2147483648
	mov	x2, x0
add	x2, -2147483648
	mov	x8, 1
	jl	x2, r0, .LBB120_8
// %bb.7:
	mov	x8, 0
.LBB120_8:
add	x4, -2147483648
	mov	x3, rax
add	x3, -2147483648
	mov	r1, 1
	jl	x3, x4, .LBB120_10
// %bb.9:
	mov	r1, 0
.LBB120_10:
	mov	[rsp+48], rax
	sub	r1, x8
	mov	x1, 1
	mov	r2, 1
	je	x0, x5, .LBB120_12
// %bb.11:
	mov	r2, 0
.LBB120_12:
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	x8, rax
	mov	r1, 1
	mov	r0, x8
	call	__bit_and
	mov	r3, 0
	mov	r0, x10
	mov	r1, x6
	mov	r2, rax
	call	__adddi3
	mov	x4, t0
	mov	x11, x4
add	x11, -2147483648
	mov	x5, rax
	jl	x11, x12, .LBB120_14
// %bb.13:
	mov	x1, 0
.LBB120_14:
	mov	x12, x5
add	x12, -2147483648
	mov	r2, 1
	mov	r1, 1
	jl	x12, x13, .LBB120_16
// %bb.15:
	mov	r1, 0
.LBB120_16:
	sub	r1, x1
	je	x4, x6, .LBB120_18
// %bb.17:
	mov	r2, 0
.LBB120_18:
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	x1, rax
	mov	r1, 1
	mov	r0, x1
	call	__bit_and
	mov	r1, 0
	mov	r3, 0
	mov	r0, rax
	mov	r2, x7
	call	__adddi3
	mov	r1, 0
	mov	r3, 0
	mov	[rsp+44], rax
	mov	x8, t0
	mov	x6, [rsp+88]
	mov	r0, x6
	mov	x15, [rsp+76]
	mov	r2, x15
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x1, rax
	mov	x7, t0
	mov	x14, [rsp+84]
	mov	r0, x14
	mov	x13, [rsp+72]
	mov	r2, x13
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x10, rax
	mov	x9, t0
	mov	r0, x6
	mov	r2, x13
	call	__muldi3
	mov	r1, 0
	mov	r3, t0
	mov	r0, x9
	mov	r2, rax
	call	__adddi3
	mov	r1, 0
	mov	r3, 0
	mov	x9, rax
	mov	x13, t0
	mov	r0, x14
	mov	r2, x15
	call	__muldi3
	mov	r1, 0
	mov	r3, t0
	mov	r0, x9
	mov	r2, rax
	call	__adddi3
	mov	r1, 0
	mov	x9, rax
	mov	x15, t0
	mov	r0, x13
	mov	r2, x1
	mov	r3, x7
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x15
	call	__adddi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x5
	mov	r3, x4
	call	__adddi3
	mov	x6, rax
	mov	x14, t0
	mov	x7, x14
add	x7, -2147483648
	mov	r1, 1
	mov	x13, 1
	jl	x7, x11, .LBB120_20
// %bb.19:
	mov	x13, 0
.LBB120_20:
	mov	x5, x6
add	x5, -2147483648
	jl	x5, x12, .LBB120_22
// %bb.21:
	mov	r1, 0
.LBB120_22:
	sub	r1, x13
	mov	x1, 1
	mov	r2, 1
	je	x14, x4, .LBB120_24
// %bb.23:
	mov	r2, 0
.LBB120_24:
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	x13, rax
	mov	r1, 1
	mov	r0, x13
	call	__bit_and
	mov	r3, 0
	mov	r0, [rsp+44]
	mov	r1, x8
	mov	r2, rax
	call	__adddi3
	mov	x8, rax
	mov	x15, t0
	mov	r0, x10
	mov	r1, x9
	mov	r2, [rsp+48]
	mov	r3, x0
	call	__adddi3
	mov	x4, t0
	mov	r0, x4
add	r0, -2147483648
	jl	r0, x2, .LBB120_26
// %bb.25:
	mov	x1, 0
.LBB120_26:
	mov	r0, rax
add	r0, -2147483648
	mov	r2, 1
	mov	r1, 1
	jl	r0, x3, .LBB120_28
// %bb.27:
	mov	r1, 0
.LBB120_28:
	mov	[rsp+48], rax
	sub	r1, x1
	je	x4, x0, .LBB120_30
// %bb.29:
	mov	r2, 0
.LBB120_30:
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	x1, rax
	mov	r1, 1
	mov	r0, x1
	call	__bit_and
	mov	r3, 0
	mov	r0, x6
	mov	r1, x14
	mov	r2, rax
	call	__adddi3
	mov	x12, rax
	mov	x2, t0
	mov	x3, x2
add	x3, -2147483648
	mov	r1, 1
	mov	x1, 1
	jl	x3, x7, .LBB120_32
// %bb.31:
	mov	x1, 0
.LBB120_32:
	mov	x6, x12
add	x6, -2147483648
	jl	x6, x5, .LBB120_34
// %bb.33:
	mov	r1, 0
.LBB120_34:
	sub	r1, x1
	mov	x5, 1
	mov	r2, 1
	je	x2, x14, .LBB120_36
// %bb.35:
	mov	r2, 0
.LBB120_36:
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	x1, rax
	mov	r1, 1
	mov	r0, x1
	call	__bit_and
	mov	r3, 0
	mov	r0, x8
	mov	r1, x15
	mov	r2, rax
	call	__adddi3
	mov	r1, 0
	mov	r3, 0
	mov	x7, rax
	mov	x8, t0
	mov	x14, [rsp+108]
	mov	r0, x14
	mov	x11, [rsp+80]
	mov	r2, x11
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x1, rax
	mov	x9, t0
	mov	x0, [rsp+104]
	mov	r0, x0
	mov	x15, [rsp+52]
	mov	r2, x15
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x10, rax
	mov	x13, t0
	mov	r0, x14
	mov	r2, x15
	call	__muldi3
	mov	r1, 0
	mov	r3, t0
	mov	r0, x13
	mov	r2, rax
	call	__adddi3
	mov	r1, 0
	mov	r3, 0
	mov	x13, rax
	mov	x15, t0
	mov	r0, x0
	mov	r2, x11
	call	__muldi3
	mov	r1, 0
	mov	r3, t0
	mov	r0, x13
	mov	r2, rax
	call	__adddi3
	mov	r1, 0
	mov	x14, rax
	mov	x0, t0
	mov	r0, x15
	mov	r2, x1
	mov	r3, x9
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x0
	call	__adddi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x12
	mov	r3, x2
	call	__adddi3
	mov	x0, t0
	mov	x9, x0
add	x9, -2147483648
	mov	x15, rax
	jl	x9, x3, .LBB120_38
// %bb.37:
	mov	x5, 0
.LBB120_38:
	mov	x13, x15
add	x13, -2147483648
	mov	r2, 1
	mov	r1, 1
	jl	x13, x6, .LBB120_40
// %bb.39:
	mov	r1, 0
.LBB120_40:
	sub	r1, x5
	je	x0, x2, .LBB120_42
// %bb.41:
	mov	r2, 0
.LBB120_42:
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	x5, rax
	mov	r1, 1
	mov	r0, x5
	call	__bit_and
	mov	r3, 0
	mov	r0, x7
	mov	r1, x8
	mov	r2, rax
	call	__adddi3
	mov	x5, rax
	mov	x6, t0
	mov	r0, x4
	call	__bit_not
	mov	x4, rax
	mov	r0, [rsp+48]
	call	__bit_not
add	rax, -2147483648
add	x10, -2147483648
	mov	x2, 1
	mov	r1, 1
	jg	x10, rax, .LBB120_44
// %bb.43:
	mov	r1, 0
.LBB120_44:
	mov	r0, x4
add	r0, -2147483648
	mov	r2, x14
add	r2, -2147483648
	jg	r2, r0, .LBB120_46
// %bb.45:
	mov	x2, 0
.LBB120_46:
	sub	r1, x2
	mov	x1, 1
	mov	r2, 1
	je	x14, x4, .LBB120_48
// %bb.47:
	mov	r2, 0
.LBB120_48:
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	x2, rax
	mov	r1, 1
	mov	r0, x2
	call	__bit_and
	mov	r3, 0
	mov	r0, x15
	mov	r1, x0
	mov	r2, rax
	call	__adddi3
	mov	x2, t0
	mov	x11, x2
add	x11, -2147483648
	mov	x3, rax
	jl	x11, x9, .LBB120_50
// %bb.49:
	mov	x1, 0
.LBB120_50:
	mov	x12, x3
add	x12, -2147483648
	mov	r2, 1
	mov	r1, 1
	jl	x12, x13, .LBB120_52
// %bb.51:
	mov	r1, 0
.LBB120_52:
	sub	r1, x1
	je	x2, x0, .LBB120_54
// %bb.53:
	mov	r2, 0
.LBB120_54:
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	x1, rax
	mov	r1, 1
	mov	r0, x1
	call	__bit_and
	mov	r3, 0
	mov	r0, x5
	mov	r1, x6
	mov	r2, rax
	call	__adddi3
	mov	r1, 0
	mov	r3, 0
	mov	x13, rax
	mov	[rsp+80], t0
	mov	x1, [rsp+60]
	mov	r0, x1
	mov	x4, [rsp+96]
	mov	r2, x4
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x0, rax
	mov	x6, t0
	mov	r0, x1
	mov	x1, [rsp+100]
	mov	r2, x1
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x7, rax
	mov	x9, t0
	mov	x5, [rsp+64]
	mov	r0, x5
	mov	r2, x4
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x8, rax
	mov	x10, t0
	mov	r0, x5
	mov	r2, x1
	call	__muldi3
	mov	r1, 0
	mov	x1, rax
	mov	x4, t0
	mov	r0, x6
	mov	r2, x8
	mov	r3, x10
	call	__adddi3
	mov	r1, 0
	mov	x8, t0
	mov	r0, rax
	mov	r2, x7
	mov	r3, x9
	call	__adddi3
	mov	x7, t0
	mov	r0, x0
	mov	r1, rax
	mov	r2, x3
	mov	r3, x2
	call	__adddi3
	mov	x6, rax
	mov	x0, t0
	mov	x5, x0
add	x5, -2147483648
	mov	r1, 1
	mov	x9, 1
	jl	x5, x11, .LBB120_56
// %bb.55:
	mov	x9, 0
.LBB120_56:
	mov	x11, x6
add	x11, -2147483648
	jl	x11, x12, .LBB120_58
// %bb.57:
	mov	r1, 0
.LBB120_58:
	sub	r1, x9
	mov	x3, 1
	mov	r2, 1
	je	x0, x2, .LBB120_60
// %bb.59:
	mov	r2, 0
.LBB120_60:
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	x9, rax
	mov	r1, 1
	mov	r0, x9
	call	__bit_and
	mov	r1, 0
	mov	x9, rax
	mov	r0, x8
	mov	r2, x1
	mov	r3, x4
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x7
	call	__adddi3
	mov	r1, t0
	mov	r0, rax
	mov	[rsp+44], x13
	mov	r2, x13
	mov	r3, [rsp+80]
	call	__adddi3
	mov	r3, 0
	mov	x4, rax
	mov	r1, t0
	mov	r0, x4
	mov	[rsp+28], r1
	mov	r2, x9
	call	__adddi3
	mov	r1, 0
	mov	r3, 0
	mov	[rsp+60], rax
	mov	[rsp+64], t0
	mov	x1, [rsp+84]
	mov	r0, x1
	mov	x9, [rsp+68]
	mov	r2, x9
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x7, rax
	mov	x8, t0
	mov	r0, x1
	mov	x1, [rsp+92]
	mov	r2, x1
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x10, rax
	mov	x13, t0
	mov	x2, [rsp+88]
	mov	r0, x2
	mov	r2, x9
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x14, rax
	mov	x15, t0
	mov	r0, x2
	mov	r2, x1
	call	__muldi3
	mov	r1, 0
	mov	x1, rax
	mov	x9, t0
	mov	r0, x8
	mov	r2, x14
	mov	r3, x15
	call	__adddi3
	mov	r1, 0
	mov	x14, t0
	mov	r0, rax
	mov	r2, x10
	mov	r3, x13
	call	__adddi3
	mov	x10, t0
	mov	r0, x7
	mov	r1, rax
	mov	r2, x6
	mov	r3, x0
	call	__adddi3
	mov	x6, t0
	mov	x7, x6
add	x7, -2147483648
	mov	x8, rax
	jl	x7, x5, .LBB120_62
// %bb.61:
	mov	x3, 0
.LBB120_62:
	mov	x12, x8
add	x12, -2147483648
	mov	r2, 1
	mov	r1, 1
	jl	x12, x11, .LBB120_64
// %bb.63:
	mov	r1, 0
.LBB120_64:
	sub	r1, x3
	je	x6, x0, .LBB120_66
// %bb.65:
	mov	r2, 0
.LBB120_66:
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	x3, rax
	mov	r1, 1
	mov	r0, x3
	call	__bit_and
	mov	r1, 0
	mov	x0, rax
	mov	r0, x14
	mov	r2, x1
	mov	r3, x9
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x10
	call	__adddi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, [rsp+60]
	mov	r3, [rsp+64]
	call	__adddi3
	mov	r3, 0
	mov	x10, rax
	mov	r1, t0
	mov	r0, x10
	mov	[rsp+20], r1
	mov	r2, x0
	call	__adddi3
	mov	r1, 0
	mov	r3, 0
	mov	x0, rax
	mov	x3, t0
	mov	x1, [rsp+104]
	mov	r0, x1
	mov	x2, [rsp+72]
	mov	r2, x2
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x15, rax
	mov	x13, t0
	mov	r0, x1
	mov	x9, [rsp+76]
	mov	r2, x9
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x14, rax
	mov	x5, t0
	mov	x1, [rsp+108]
	mov	r0, x1
	mov	r2, x2
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x11, rax
	mov	x2, t0
	mov	r0, x1
	mov	r2, x9
	call	__muldi3
	mov	r1, 0
	mov	x1, rax
	mov	x9, t0
	mov	r0, x13
	mov	r2, x11
	mov	r3, x2
	call	__adddi3
	mov	r1, 0
	mov	x13, t0
	mov	r0, rax
	mov	r2, x14
	mov	r3, x5
	call	__adddi3
	mov	x14, t0
	mov	r0, x15
	mov	r1, rax
	mov	r2, x8
	mov	r3, x6
	call	__adddi3
	mov	[rsp+76], rax
	mov	[rsp+72], t0
	mov	r0, t0
add	r0, -2147483648
	mov	r1, 1
	mov	x8, 1
	jl	r0, x7, .LBB120_68
// %bb.67:
	mov	x8, 0
.LBB120_68:
	mov	r0, [rsp+76]
add	r0, -2147483648
	jl	r0, x12, .LBB120_70
// %bb.69:
	mov	r1, 0
.LBB120_70:
	sub	r1, x8
	mov	x15, 1
	mov	r2, 1
	mov	r0, [rsp+72]
	je	r0, x6, .LBB120_72
// %bb.71:
	mov	r2, 0
.LBB120_72:
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	x8, rax
	mov	r1, 1
	mov	r0, x8
	call	__bit_and
	mov	r1, 0
	mov	x2, rax
	mov	r0, x13
	mov	r2, x1
	mov	r3, x9
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x14
	call	__adddi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x0
	mov	[rsp+24], x3
	mov	r3, x3
	call	__adddi3
	mov	r3, 0
	mov	x7, rax
	mov	r1, t0
	mov	r0, x7
	mov	[rsp+16], r1
	mov	r2, x2
	call	__adddi3
	mov	r1, 0
	mov	r3, 0
	mov	x3, rax
	mov	x1, t0
	mov	x6, [rsp+84]
	mov	r0, x6
	mov	x12, [rsp+96]
	mov	r2, x12
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x2, rax
	mov	x5, t0
	mov	r0, x6
	mov	x6, [rsp+100]
	mov	r2, x6
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x11, rax
	mov	x13, t0
	mov	x9, [rsp+88]
	mov	r0, x9
	mov	r2, x12
	call	__muldi3
	mov	r1, 0
	mov	r3, t0
	mov	r0, x5
	mov	r2, rax
	call	__adddi3
	mov	r1, 0
	mov	[rsp+8], t0
	mov	r0, rax
	mov	r2, x11
	mov	r3, x13
	call	__adddi3
	mov	[rsp+12], t0
	mov	r0, x2
	mov	r1, rax
	mov	[rsp+36], x3
	mov	r2, x3
	mov	x8, x1
	mov	r3, x1
	call	__adddi3
	mov	r1, 0
	mov	r3, 0
	mov	x1, rax
	mov	x3, t0
	mov	x11, [rsp+104]
	mov	r0, x11
	mov	x14, [rsp+68]
	mov	r2, x14
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x2, rax
	mov	x5, t0
	mov	r0, x11
	mov	r2, [rsp+92]
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x11, rax
	mov	x13, t0
	mov	x12, [rsp+108]
	mov	r0, x12
	mov	r2, x14
	call	__muldi3
	mov	r1, 0
	mov	r3, t0
	mov	r0, x5
	mov	r2, rax
	call	__adddi3
	mov	r1, 0
	mov	[rsp+32], t0
	mov	r0, rax
	mov	r2, x11
	mov	r3, x13
	call	__adddi3
	mov	[rsp+40], t0
	mov	r0, x2
	mov	r1, rax
	mov	[rsp+48], x1
	mov	r2, x1
	mov	x14, x3
	mov	r3, x3
	call	__adddi3
	mov	r1, 0
	mov	r3, 0
	mov	x13, rax
	mov	[rsp+52], t0
	mov	r0, x12
	mov	r2, x6
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	[rsp+84], rax
	mov	[rsp+68], t0
	mov	r0, x9
	mov	r2, x6
	call	__muldi3
	mov	r0, [rsp+80]
add	r0, -2147483648
	mov	x6, [rsp+28]
	mov	x2, x6
add	x2, -2147483648
	mov	[rsp+88], rax
	mov	[rsp+4], t0
	jl	x2, r0, .LBB120_74
// %bb.73:
	mov	x15, 0
.LBB120_74:
	mov	r0, [rsp+44]
add	r0, -2147483648
add	x4, -2147483648
	mov	r2, 1
	mov	r1, 1
	mov	x1, [rsp+64]
	mov	x3, [rsp+60]
	jl	x4, r0, .LBB120_76
// %bb.75:
	mov	r1, 0
.LBB120_76:
	sub	r1, x15
	mov	r0, [rsp+80]
	mov	x9, x8
	je	x6, r0, .LBB120_78
// %bb.77:
	mov	r2, 0
.LBB120_78:
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	x15, rax
	mov	r1, 1
	mov	r0, x15
	call	__bit_and
	mov	x5, rax
	mov	x11, x1
add	x11, -2147483648
	mov	r1, 1
	mov	x15, 1
	mov	x8, [rsp+20]
	jl	x11, x2, .LBB120_80
// %bb.79:
	mov	x15, 0
.LBB120_80:
add	x3, -2147483648
	jl	x3, x4, .LBB120_82
// %bb.81:
	mov	r1, 0
.LBB120_82:
	sub	r1, x15
	mov	x4, 1
	mov	r2, 1
	je	x1, x6, .LBB120_84
// %bb.83:
	mov	r2, 0
.LBB120_84:
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	x15, rax
	mov	r1, 1
	mov	r0, x15
	call	__bit_and
	mov	r1, 0
	mov	r3, 0
	mov	r0, rax
	mov	r2, x5
	call	__adddi3
	mov	x6, x8
add	x6, -2147483648
	mov	x2, rax
	mov	x5, t0
	jl	x6, x11, .LBB120_86
// %bb.85:
	mov	x4, 0
.LBB120_86:
add	x10, -2147483648
	mov	r2, 1
	mov	r1, 1
	mov	x15, [rsp+56]
	jl	x10, x3, .LBB120_88
// %bb.87:
	mov	r1, 0
.LBB120_88:
	sub	r1, x4
	je	x8, x1, .LBB120_90
// %bb.89:
	mov	r2, 0
.LBB120_90:
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	x4, rax
	mov	r1, 1
	mov	r0, x4
	call	__bit_and
	mov	r3, 0
	mov	r0, x2
	mov	r1, x5
	mov	r2, rax
	call	__adddi3
	mov	x4, rax
	mov	x5, t0
	mov	x3, [rsp+24]
	mov	x12, x3
add	x12, -2147483648
	mov	r1, 1
	mov	x11, 1
	jl	x12, x6, .LBB120_92
// %bb.91:
	mov	x11, 0
.LBB120_92:
add	x0, -2147483648
	mov	x1, [rsp+36]
	jl	x0, x10, .LBB120_94
// %bb.93:
	mov	r1, 0
.LBB120_94:
	sub	r1, x11
	mov	x2, 1
	mov	r2, 1
	je	x3, x8, .LBB120_96
// %bb.95:
	mov	r2, 0
.LBB120_96:
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	x11, rax
	mov	r1, 1
	mov	r0, x11
	call	__bit_and
	mov	r3, 0
	mov	r0, x4
	mov	r1, x5
	mov	r2, rax
	call	__adddi3
	mov	x8, [rsp+16]
	mov	x10, x8
add	x10, -2147483648
	mov	x4, rax
	mov	x5, t0
	jl	x10, x12, .LBB120_98
// %bb.97:
	mov	x2, 0
.LBB120_98:
add	x7, -2147483648
	mov	r2, 1
	mov	r1, 1
	jl	x7, x0, .LBB120_100
// %bb.99:
	mov	r1, 0
.LBB120_100:
	sub	r1, x2
	mov	x12, x14
	je	x8, x3, .LBB120_102
// %bb.101:
	mov	r2, 0
.LBB120_102:
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	x2, rax
	mov	r1, 1
	mov	r0, x2
	call	__bit_and
	mov	r3, 0
	mov	r0, x4
	mov	r1, x5
	mov	r2, rax
	call	__adddi3
	mov	x2, rax
	mov	x3, t0
	mov	x6, x9
add	x6, -2147483648
	mov	r1, 1
	mov	x4, 1
	mov	x14, x13
	jl	x6, x10, .LBB120_104
// %bb.103:
	mov	x4, 0
.LBB120_104:
add	x1, -2147483648
	mov	x13, [rsp+52]
	jl	x1, x7, .LBB120_106
// %bb.105:
	mov	r1, 0
.LBB120_106:
	sub	r1, x4
	mov	x0, 1
	mov	r2, 1
	je	x9, x8, .LBB120_108
// %bb.107:
	mov	r2, 0
.LBB120_108:
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	x4, rax
	mov	r1, 1
	mov	r0, x4
	call	__bit_and
	mov	r3, 0
	mov	r0, x2
	mov	r1, x3
	mov	r2, rax
	call	__adddi3
	mov	r1, 0
	mov	x5, rax
	mov	x4, t0
	mov	r0, [rsp+8]
	mov	r2, [rsp+88]
	mov	r3, [rsp+4]
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, [rsp+12]
	call	__adddi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x5
	mov	r3, x4
	call	__adddi3
	mov	x2, t0
	mov	r0, x4
add	r0, -2147483648
	mov	x8, x2
add	x8, -2147483648
	mov	x3, rax
	jl	x8, r0, .LBB120_110
// %bb.109:
	mov	x0, 0
.LBB120_110:
add	x5, -2147483648
	mov	x10, x3
add	x10, -2147483648
	mov	r2, 1
	mov	r1, 1
	jl	x10, x5, .LBB120_112
// %bb.111:
	mov	r1, 0
.LBB120_112:
	sub	r1, x0
	je	x2, x4, .LBB120_114
// %bb.113:
	mov	r2, 0
.LBB120_114:
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	x0, rax
	mov	r1, 1
	mov	r0, x0
	call	__bit_and
	mov	[rsp+88], rax
	mov	x7, x12
add	x7, -2147483648
	mov	r1, 1
	mov	x4, 1
	jl	x7, x6, .LBB120_116
// %bb.115:
	mov	x4, 0
.LBB120_116:
	mov	r0, [rsp+48]
add	r0, -2147483648
	mov	x0, r0
	jl	r0, x1, .LBB120_118
// %bb.117:
	mov	r1, 0
.LBB120_118:
	sub	r1, x4
	mov	x1, 1
	mov	r2, 1
	je	x12, x9, .LBB120_120
// %bb.119:
	mov	r2, 0
.LBB120_120:
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	x4, rax
	mov	r1, 1
	mov	r0, x4
	call	__bit_and
	mov	r3, 0
	mov	r0, x3
	mov	r1, x2
	mov	r2, rax
	call	__adddi3
	mov	x3, t0
	mov	x5, x3
add	x5, -2147483648
	mov	x4, rax
	jl	x5, x8, .LBB120_122
// %bb.121:
	mov	x1, 0
.LBB120_122:
	mov	x11, x4
add	x11, -2147483648
	mov	r2, 1
	mov	r1, 1
	jl	x11, x10, .LBB120_124
// %bb.123:
	mov	r1, 0
.LBB120_124:
	sub	r1, x1
	je	x3, x2, .LBB120_126
// %bb.125:
	mov	r2, 0
.LBB120_126:
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	x1, rax
	mov	r1, 1
	mov	r0, x1
	call	__bit_and
	mov	r1, 0
	mov	r3, 0
	mov	x1, rax
	mov	r0, [rsp+108]
	mov	r2, [rsp+92]
	call	__muldi3
	mov	r1, 0
	mov	r3, t0
	mov	r0, [rsp+32]
	mov	r2, rax
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, [rsp+40]
	call	__adddi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x4
	mov	r3, x3
	call	__adddi3
	mov	x4, rax
	mov	x2, t0
	mov	x8, x2
add	x8, -2147483648
	mov	r1, 1
	mov	x6, 1
	jl	x8, x5, .LBB120_128
// %bb.127:
	mov	x6, 0
.LBB120_128:
	mov	x9, x4
add	x9, -2147483648
	jl	x9, x11, .LBB120_130
// %bb.129:
	mov	r1, 0
.LBB120_130:
	sub	r1, x6
	mov	x5, 1
	mov	r2, 1
	je	x2, x3, .LBB120_132
// %bb.131:
	mov	r2, 0
.LBB120_132:
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	x6, rax
	mov	r1, 1
	mov	r0, x6
	call	__bit_and
	mov	r0, x13
add	r0, -2147483648
	mov	x3, rax
	jl	r0, x7, .LBB120_134
// %bb.133:
	mov	x5, 0
.LBB120_134:
	mov	r0, x14
add	r0, -2147483648
	mov	r2, 1
	mov	r1, 1
	jl	r0, x0, .LBB120_136
// %bb.135:
	mov	r1, 0
.LBB120_136:
	sub	r1, x5
	je	x13, x12, .LBB120_138
// %bb.137:
	mov	r2, 0
.LBB120_138:
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	x5, rax
	mov	r1, 1
	mov	r0, x5
	call	__bit_and
	mov	r3, 0
	mov	r0, x4
	mov	r1, x2
	mov	r2, rax
	call	__adddi3
	mov	x4, rax
	mov	x6, t0
	mov	x10, x6
add	x10, -2147483648
	mov	r1, 1
	mov	x5, 1
	jl	x10, x8, .LBB120_140
// %bb.139:
	mov	x5, 0
.LBB120_140:
	mov	x11, x4
add	x11, -2147483648
	jl	x11, x9, .LBB120_142
// %bb.141:
	mov	r1, 0
.LBB120_142:
	sub	r1, x5
	mov	x7, 1
	mov	r2, 1
	je	x6, x2, .LBB120_144
// %bb.143:
	mov	r2, 0
.LBB120_144:
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	x5, rax
	mov	r1, 1
	mov	r0, x5
	call	__bit_and
	mov	r1, 0
	mov	r3, 0
	mov	x5, rax
	mov	x12, [rsp+104]
	mov	r0, x12
	mov	x9, [rsp+96]
	mov	r2, x9
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x2, rax
	mov	x8, t0
	mov	r0, [rsp+108]
	mov	r2, x9
	call	__muldi3
	mov	r1, 0
	mov	r3, t0
	mov	r0, x8
	mov	r2, rax
	call	__adddi3
	mov	r1, 0
	mov	r3, 0
	mov	x9, rax
	mov	x8, t0
	mov	r0, x12
	mov	r2, [rsp+100]
	call	__muldi3
	mov	r1, 0
	mov	r3, t0
	mov	r0, x9
	mov	r2, rax
	call	__adddi3
	mov	x9, t0
	mov	r0, x2
	mov	r1, rax
	mov	r2, x4
	mov	r3, x6
	call	__adddi3
	mov	x2, t0
	mov	r0, x2
add	r0, -2147483648
	mov	x4, rax
	jl	r0, x10, .LBB120_146
// %bb.145:
	mov	x7, 0
.LBB120_146:
	mov	r0, x4
add	r0, -2147483648
	mov	r2, 1
	mov	r1, 1
	jl	r0, x11, .LBB120_148
// %bb.147:
	mov	r1, 0
.LBB120_148:
	mov	x0, x15
add	x0, 4
	sub	r1, x7
	je	x2, x6, .LBB120_150
// %bb.149:
	mov	r2, 0
.LBB120_150:
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	x7, rax
	mov	r1, 1
	mov	r0, x7
	call	__bit_and
	mov	r1, 0
	mov	x6, rax
	mov	r0, x8
	mov	r2, [rsp+84]
	mov	r3, [rsp+68]
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x9
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, [rsp+88]
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x1
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x3
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x5
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x6
	call	__adddi3
	mov	x3, rax
	mov	x1, t0
	mov	x7, x15
add	x7, 8
	mov	r1, [rsp+72]
	mov	[x7], r1
	mov	x5, [rsp+76]
	mov	[rsp+104], x0
	mov	[x0], x5
	mov	x8, x15
add	x8, 12
	mov	x9, x15
add	x9, 16
	mov	[x9], x13
	mov	[x8], x14
	mov	x11, x15
add	x11, 20
	mov	x12, x15
add	x12, 24
	mov	[x12], x2
	mov	[x11], x4
	mov	r0, x13
	mov	x13, x15
add	x13, 28
	mov	x10, x15
add	x10, 32
	mov	[x10], x1
	mov	[x13], x3
	mov	x6, r0
	call	__bit_or
	mov	x0, rax
	mov	[rsp+108], x14
	mov	r0, x14
	mov	r1, x5
	call	__bit_or
	mov	r0, rax
	mov	r1, x4
	call	__bit_or
	mov	x5, rax
	mov	r0, x0
	mov	r1, x2
	call	__bit_or
	mov	r0, rax
	mov	r1, x1
	call	__bit_or
	mov	x0, rax
	mov	r0, x5
	mov	r1, x3
	call	__bit_or
	mov	r0, 0
	jl	x1, r0, .LBB120_153
	jmp	.LBB120_151
.LBB120_151:
	mov	r0, rax
	mov	r1, x0
	call	__bit_or
	jz	rax, .LBB120_153
	jmp	.LBB120_152
.LBB120_152:
	mov	r0, [rsp]
add	r0, 255
	mov	r1, 1
	mov	[x15], r0
	mov	r0, x3
	call	__bit_shl
	mov	r1, 31
	mov	x0, rax
	mov	r0, x2
	call	__bit_shr
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	x14, rax
	mov	r0, x3
	call	__bit_shr
	mov	r1, 1
	mov	x3, rax
	mov	r0, x1
	call	__bit_shl
	mov	r0, rax
	mov	r1, x3
	call	__bit_or
	mov	r1, 1
	mov	x1, rax
	mov	r0, x4
	call	__bit_shl
	mov	r1, 31
	mov	x3, rax
	mov	r0, x6
	call	__bit_shr
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	x3, rax
	mov	r0, x4
	call	__bit_shr
	mov	r1, 1
	mov	x4, rax
	mov	r0, x2
	call	__bit_shl
	mov	r0, rax
	mov	r1, x4
	call	__bit_or
	mov	r1, 1
	mov	x2, rax
	mov	x5, [rsp+108]
	mov	r0, x5
	call	__bit_shl
	mov	r1, 31
	mov	x4, rax
	mov	x0, [rsp+72]
	mov	r0, x0
	call	__bit_shr
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	x4, rax
	mov	r0, x5
	call	__bit_shr
	mov	r1, 1
	mov	x5, rax
	mov	r0, x6
	call	__bit_shl
	mov	r0, rax
	mov	r1, x5
	call	__bit_or
	mov	r1, 31
	mov	x5, rax
	mov	x15, [rsp+76]
	mov	r0, x15
	call	__bit_shr
	mov	r1, 1
	mov	x6, rax
	mov	r0, x0
	call	__bit_shl
	mov	r0, rax
	mov	r1, x6
	call	__bit_or
	mov	r1, 1
	mov	x6, rax
	mov	r0, x15
	call	__bit_shl
	mov	r0, [rsp+104]
	mov	[r0], rax
	mov	[x7], x6
	mov	[x9], x5
	mov	[x8], x4
	mov	[x12], x2
	mov	[x11], x3
	mov	[x10], x1
	mov	[x13], x14
.LBB120_153:
	mov	x15, [rsp+112]
	mov	x14, [rsp+116]
	mov	x13, [rsp+120]
	mov	x12, [rsp+124]
	mov	x11, [rsp+128]
	mov	x10, [rsp+132]
	mov	x9, [rsp+136]
	mov	x8, [rsp+140]
	mov	x7, [rsp+144]
	mov	x6, [rsp+148]
	mov	x5, [rsp+152]
	mov	x4, [rsp+156]
	mov	x3, [rsp+160]
	mov	x2, [rsp+164]
	mov	x1, [rsp+168]
	mov	x0, [rsp+172]
add	rsp, 176
	ret
// -- End function
// -- Begin function ryu_dyadic256_as_mantissa_type
ryu_dyadic256_as_mantissa_type:         // @ryu_dyadic256_as_mantissa_type
// %bb.0:
sub	rsp, 132
	mov	[rsp+128], x0
	mov	[rsp+124], x1
	mov	[rsp+120], x2
	mov	[rsp+116], x3
	mov	[rsp+112], x4
	mov	[rsp+108], x5
	mov	[rsp+104], x6
	mov	[rsp+100], x7
	mov	[rsp+96], x8
	mov	[rsp+92], x9
	mov	[rsp+88], x10
	mov	[rsp+84], x11
	mov	[rsp+80], x12
	mov	[rsp+76], x13
	mov	[rsp+72], x14
	mov	[rsp+68], x15
	mov	x1, r1
	mov	x5, x1
add	x5, 4
add	r1, 8
	mov	x2, [r1]
	mov	r1, [x5]
	mov	r2, x1
add	r2, 12
	mov	r3, x1
add	r3, 16
	mov	r2, [r2]
	mov	x3, [r3]
	mov	x0, r0
	mov	r0, r2
	call	__bit_or
	mov	x4, rax
	mov	r0, x3
	mov	r1, x2
	call	__bit_or
	mov	r0, x1
add	r0, 20
	mov	r1, x1
add	r1, 24
	mov	r1, [r1]
	mov	x2, [r0]
	mov	r0, rax
	call	__bit_or
	mov	x3, rax
	mov	r0, x4
	mov	r1, x2
	call	__bit_or
	mov	r0, x1
add	r0, 28
	mov	r2, x1
add	r2, 32
	mov	r1, [r0]
	mov	x2, [r2]
	mov	r0, rax
	call	__bit_or
	mov	x4, rax
	mov	r0, x3
	mov	r1, x2
	call	__bit_or
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	jnz	rax, .LBB121_2
	jmp	.LBB121_1
.LBB121_1:
	mov	[x0], 0
	mov	r0, x0
add	r0, 28
	mov	[r0], 0
	mov	r0, x0
add	r0, 24
	mov	[r0], 0
	mov	r0, x0
add	r0, 20
	mov	[r0], 0
	mov	r0, x0
add	r0, 16
	mov	[r0], 0
	mov	r0, x0
add	r0, 12
	mov	[r0], 0
	mov	r0, x0
add	r0, 8
	mov	[r0], 0
add	x0, 4
	mov	[x0], 0
	jmp	.LBB121_41
.LBB121_2:
	mov	x4, [x1]
	mov	r0, 1
	jl	x4, r0, .LBB121_20
	jmp	.LBB121_3
.LBB121_3:
	mov	r0, x5
add	r0, 28
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 64
	mov	r2, x5
add	r2, 24
	mov	r2, [r2]
	mov	[r1], r0
	mov	r0, rsp
add	r0, 60
	mov	[r0], r2
	mov	r0, x5
add	r0, 20
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 56
	mov	r2, x5
add	r2, 16
	mov	r2, [r2]
	mov	[r1], r0
	mov	r0, rsp
add	r0, 52
	mov	[r0], r2
	mov	r0, x5
add	r0, 12
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 48
	mov	r2, x5
add	r2, 8
	mov	r2, [r2]
	mov	[r1], r0
	mov	r0, rsp
add	r0, 44
	mov	[r0], r2
	mov	r0, x5
add	r0, 4
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 40
	mov	r2, [x5]
	mov	[r1], r0
	mov	[rsp+36], r2
	mov	x5, x0
add	x5, 28
	mov	[x5], 0
	mov	x2, x0
add	x2, 24
	mov	[x2], 0
	mov	x1, x0
add	x1, 20
	mov	[x1], 0
	mov	x11, x0
add	x11, 16
	mov	[x11], 0
	mov	x6, x0
add	x6, 12
	mov	[x6], 0
	mov	x9, x0
add	x9, 8
	mov	[x9], 0
	mov	x15, x0
add	x15, 4
	mov	[x15], 0
	mov	r0, 255
	mov	[x0], 0
	jg	x4, r0, .LBB121_19
	jmp	.LBB121_4
.LBB121_4:
	mov	r1, 6
	mov	r0, x4
	call	__bit_shr
	mov	r1, 63
	mov	x12, rax
	mov	r0, x4
	call	__bit_and
	mov	x10, rax
	mov	r0, 3
	sub	r0, x12
	mov	r1, 3
	mov	x14, 3
	call	__bit_shl
	mov	x3, rsp
add	x3, 36
	add	x3, rax
	mov	x7, [x3]
	mov	r0, x3
add	r0, 4
	mov	x8, [r0]
	jnz	x10, .LBB121_8
	jmp	.LBB121_5
.LBB121_5:
	mov	[x5], x8
	mov	r0, 191
	mov	[x2], x7
	jg	x4, r0, .LBB121_19
	jmp	.LBB121_6
.LBB121_6:
	mov	r0, 2
	sub	r0, x12
	mov	r1, 3
	call	__bit_shl
	mov	r0, rsp
add	r0, 36
	add	r0, rax
	mov	r1, [r0]
add	r0, 4
	mov	r0, [r0]
	mov	[x1], r0
	mov	r0, 127
	mov	[x11], r1
	jg	x4, r0, .LBB121_19
	jmp	.LBB121_7
.LBB121_7:
	mov	r0, 1
	sub	r0, x12
	mov	r1, 3
	call	__bit_shl
	mov	r0, rsp
add	r0, 36
	add	r0, rax
	mov	r1, [r0]
add	r0, 4
	mov	r0, [r0]
	mov	[x6], r0
	mov	[x9], r1
	jmp	.LBB121_19
.LBB121_8:
	mov	[rsp+16], x11
	mov	[rsp+8], x9
	mov	[rsp+12], x6
	mov	r0, 64
	mov	r1, 31
	sub	r0, x10
	mov	[rsp+20], r0
	mov	r0, x10
	call	__bit_and
	mov	x9, rax
	mov	r1, 0
	sub	r1, x9
	mov	x6, 0
	mov	r0, x9
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	[rsp+28], x10
	mov	r0, x10
add	r0, -32
	mov	r1, 31
	mov	x10, rax
	mov	[rsp+24], r0
	call	__bit_shr
	mov	x11, rax
	mov	r0, x7
	mov	r1, x9
	call	__bit_shl
	mov	[rsp+32], x12
	mov	x12, 0
	sub	x12, x11
	mov	x11, rax
	mov	r0, x12
	call	__bit_not
	mov	r0, x11
	mov	r1, rax
	call	__bit_and
	mov	x13, rax
	mov	r0, x8
	mov	r1, x9
	call	__bit_shl
	mov	x8, rax
	mov	r0, 32
	sub	r0, x9
	mov	r1, 31
	mov	x9, 32
	call	__bit_and
	mov	r0, x7
	mov	r1, rax
	call	__bit_shr
	mov	r1, 0
	sub	r1, x10
	mov	r0, rax
	call	__bit_and
	mov	r0, x8
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x12
	call	__bit_and
	mov	r0, rax
	mov	r1, x13
	call	__bit_or
	mov	x7, rax
	mov	r0, x11
	mov	r1, x12
	mov	x12, [rsp+32]
	call	__bit_and
	mov	x8, rax
	je	x12, x14, .LBB121_10
	jmp	.LBB121_9
.LBB121_9:
	mov	r0, x3
add	r0, -8
	mov	x10, [r0]
add	x3, -4
	mov	x11, [x3]
	mov	r1, 31
	mov	x3, [rsp+20]
	mov	r0, x3
	call	__bit_and
	mov	x12, rax
	mov	r1, 0
	sub	r1, x12
	mov	r0, x12
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
add	x3, -32
	mov	r1, 31
	mov	x13, rax
	mov	r0, x3
	call	__bit_shr
	mov	x14, rax
	mov	r0, x11
	mov	r1, x12
	call	__bit_shr
	mov	[rsp+4], x15
	mov	x15, 0
	sub	x15, x14
	mov	x14, rax
	mov	r0, x15
	call	__bit_not
	mov	r0, x14
	mov	r1, rax
	call	__bit_and
	mov	x3, rax
	mov	r0, x10
	mov	r1, x12
	call	__bit_shr
	sub	x9, x12
	mov	x12, [rsp+32]
	mov	r1, 31
	mov	x10, rax
	mov	r0, x9
	call	__bit_and
	mov	r0, x11
	mov	r1, rax
	call	__bit_shl
	sub	x6, x13
	mov	r0, rax
	mov	r1, x6
	call	__bit_and
	mov	r0, x10
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x15
	call	__bit_and
	mov	r0, rax
	mov	r1, x3
	call	__bit_or
	mov	x3, rax
	mov	r0, x14
	mov	r1, x15
	mov	x15, [rsp+4]
	call	__bit_and
	mov	x6, rax
	mov	r0, x3
	mov	r1, x8
	call	__bit_or
	mov	x8, rax
	mov	r0, x6
	mov	r1, x7
	call	__bit_or
	mov	x7, rax
.LBB121_10:
	mov	[x5], x7
	mov	r0, 191
	mov	[x2], x8
	mov	x13, [rsp+28]
	jg	x4, r0, .LBB121_17
	jmp	.LBB121_11
.LBB121_11:
	mov	r0, 2
	sub	r0, x12
	mov	r1, 3
	mov	x5, 2
	call	__bit_shl
	mov	x2, rsp
add	x2, 36
	add	x2, rax
	mov	r0, x2
add	r0, 4
	mov	x3, [r0]
	mov	x8, [x2]
	mov	r1, 31
	mov	r0, x13
	call	__bit_and
	mov	x9, rax
	mov	r1, 0
	sub	r1, x9
	mov	x6, 0
	mov	r0, x9
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 31
	mov	x10, rax
	mov	r0, [rsp+24]
	call	__bit_shr
	mov	x11, rax
	mov	r0, 32
	sub	r0, x9
	mov	r1, 31
	mov	x7, 32
	call	__bit_and
	mov	r0, x8
	mov	r1, rax
	call	__bit_shr
	mov	r1, 0
	sub	r1, x10
	mov	r0, rax
	call	__bit_and
	mov	x10, rax
	mov	r0, x3
	mov	r1, x9
	call	__bit_shl
	mov	r0, rax
	mov	r1, x10
	call	__bit_or
	mov	x3, 0
	sub	x3, x11
	mov	r0, rax
	mov	r1, x3
	call	__bit_and
	mov	x10, rax
	mov	r0, x8
	mov	r1, x9
	call	__bit_shl
	mov	x9, rax
	mov	r0, x3
	call	__bit_not
	mov	r0, x9
	mov	r1, rax
	call	__bit_and
	mov	r0, x10
	mov	r1, rax
	call	__bit_or
	mov	x8, rax
	mov	r0, x9
	mov	r1, x3
	call	__bit_and
	mov	x9, rax
	je	x12, x5, .LBB121_13
	jmp	.LBB121_12
.LBB121_12:
	mov	r0, x2
add	r0, -8
	mov	x3, [r0]
add	x2, -4
	mov	x10, [x2]
	mov	r1, 31
	mov	x2, [rsp+20]
	mov	r0, x2
	call	__bit_and
	mov	x11, rax
	mov	r1, 0
	sub	r1, x11
	mov	r0, x11
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
add	x2, -32
	mov	r1, 31
	mov	x12, rax
	mov	r0, x2
	call	__bit_shr
	mov	x13, rax
	mov	r0, x10
	mov	r1, x11
	call	__bit_shr
	mov	x14, 0
	sub	x14, x13
	mov	x13, rax
	mov	r0, x14
	call	__bit_not
	mov	r0, x13
	mov	r1, rax
	call	__bit_and
	mov	x2, x15
	mov	x15, rax
	mov	r0, x3
	mov	r1, x11
	call	__bit_shr
	sub	x7, x11
	mov	r1, 31
	mov	x3, rax
	mov	r0, x7
	call	__bit_and
	mov	r0, x10
	mov	r1, rax
	call	__bit_shl
	sub	x6, x12
	mov	x12, [rsp+32]
	mov	r0, rax
	mov	r1, x6
	call	__bit_and
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x14
	call	__bit_and
	mov	r0, rax
	mov	r1, x15
	mov	x15, x2
	call	__bit_or
	mov	x3, rax
	mov	r0, x13
	mov	x13, [rsp+28]
	mov	r1, x14
	call	__bit_and
	mov	x6, rax
	mov	r0, x3
	mov	r1, x9
	call	__bit_or
	mov	x9, rax
	mov	r0, x6
	mov	r1, x8
	call	__bit_or
	mov	x8, rax
.LBB121_13:
	mov	[x1], x8
	mov	r0, 127
	mov	r1, [rsp+16]
	mov	[r1], x9
	jg	x4, r0, .LBB121_17
	jmp	.LBB121_14
.LBB121_14:
	mov	r0, 1
	sub	r0, x12
	mov	r1, 3
	mov	x2, 1
	call	__bit_shl
	mov	x1, rsp
add	x1, 36
	add	x1, rax
	mov	r0, x1
add	r0, 4
	mov	x3, [r0]
	mov	x7, [x1]
	mov	r1, 31
	mov	r0, x13
	call	__bit_and
	mov	x8, rax
	mov	r1, 0
	sub	r1, x8
	mov	x4, 0
	mov	r0, x8
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 31
	mov	x9, rax
	mov	r0, [rsp+24]
	call	__bit_shr
	mov	x10, rax
	mov	r0, 32
	sub	r0, x8
	mov	r1, 31
	mov	x6, 32
	call	__bit_and
	mov	r0, x7
	mov	r1, rax
	call	__bit_shr
	mov	r1, 0
	sub	r1, x9
	mov	r0, rax
	call	__bit_and
	mov	x9, rax
	mov	r0, x3
	mov	r1, x8
	call	__bit_shl
	mov	r0, rax
	mov	r1, x9
	call	__bit_or
	mov	x3, 0
	sub	x3, x10
	mov	r0, rax
	mov	r1, x3
	call	__bit_and
	mov	x9, rax
	mov	r0, x7
	mov	r1, x8
	call	__bit_shl
	mov	x8, rax
	mov	r0, x3
	call	__bit_not
	mov	r0, x8
	mov	r1, rax
	call	__bit_and
	mov	r0, x9
	mov	r1, rax
	call	__bit_or
	mov	x7, rax
	mov	r0, x8
	mov	r1, x3
	call	__bit_and
	mov	x8, rax
	je	x12, x2, .LBB121_16
	jmp	.LBB121_15
.LBB121_15:
	mov	r0, x1
add	r0, -8
	mov	x3, [r0]
add	x1, -4
	mov	x9, [x1]
	mov	r1, 31
	mov	x1, [rsp+20]
	mov	r0, x1
	call	__bit_and
	mov	x10, rax
	mov	r1, 0
	sub	r1, x10
	mov	r0, x10
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
add	x1, -32
	mov	r1, 31
	mov	x11, rax
	mov	r0, x1
	call	__bit_shr
	mov	x13, rax
	mov	r0, x9
	mov	r1, x10
	call	__bit_shr
	mov	x12, 0
	sub	x12, x13
	mov	x14, rax
	mov	r0, x12
	call	__bit_not
	mov	r0, x14
	mov	r1, rax
	call	__bit_and
	mov	x13, rax
	mov	r0, x3
	mov	r1, x10
	call	__bit_shr
	sub	x6, x10
	mov	r1, 31
	mov	x3, rax
	mov	r0, x6
	call	__bit_and
	mov	r0, x9
	mov	r1, rax
	call	__bit_shl
	sub	x4, x11
	mov	r0, rax
	mov	r1, x4
	call	__bit_and
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x12
	call	__bit_and
	mov	r0, rax
	mov	r1, x13
	mov	x13, [rsp+28]
	call	__bit_or
	mov	x3, rax
	mov	r0, x14
	mov	r1, x12
	mov	x12, [rsp+32]
	call	__bit_and
	mov	x4, rax
	mov	r0, x3
	mov	r1, x8
	call	__bit_or
	mov	x8, rax
	mov	r0, x4
	mov	r1, x7
	call	__bit_or
	mov	x7, rax
.LBB121_16:
	mov	r0, [rsp+12]
	mov	[r0], x7
	mov	r0, [rsp+8]
	mov	[r0], x8
.LBB121_17:
	jnz	x12, .LBB121_19
	jmp	.LBB121_18
.LBB121_18:
	mov	r0, rsp
add	r0, 40
	mov	x1, [r0]
	mov	x3, [rsp+36]
	mov	r1, 31
	mov	r0, x13
	call	__bit_and
	mov	x2, rax
	mov	r1, 0
	sub	r1, x2
	mov	x4, 0
	mov	r0, x2
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 31
	mov	x9, rax
	mov	r0, [rsp+24]
	call	__bit_shr
	mov	x6, rax
	mov	r0, x3
	mov	r1, x2
	call	__bit_shl
	mov	x7, 0
	sub	x7, x6
	mov	x6, rax
	mov	r0, x7
	call	__bit_not
	mov	r0, x6
	mov	r1, rax
	call	__bit_and
	mov	x8, rax
	mov	r0, x1
	mov	r1, x2
	call	__bit_shl
	mov	r0, 32
	sub	r0, x2
	mov	r1, 31
	mov	x1, rax
	call	__bit_and
	mov	r0, x3
	mov	r1, rax
	call	__bit_shr
	sub	x4, x9
	mov	r0, rax
	mov	r1, x4
	call	__bit_and
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x7
	call	__bit_and
	mov	r0, rax
	mov	r1, x8
	call	__bit_or
	mov	x1, rax
	mov	r0, x6
	mov	r1, x7
	call	__bit_and
	mov	[x0], rax
	mov	[x15], x1
.LBB121_19:
	jmp	.LBB121_41
.LBB121_20:
	mov	r0, x5
add	r0, 28
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 64
	mov	r2, x5
add	r2, 24
	mov	r2, [r2]
	mov	[r1], r0
	mov	r0, rsp
add	r0, 60
	mov	[r0], r2
	mov	r0, x5
add	r0, 20
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 56
	mov	r2, x5
add	r2, 16
	mov	r2, [r2]
	mov	[r1], r0
	mov	r0, rsp
add	r0, 52
	mov	[r0], r2
	mov	r0, x5
add	r0, 12
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 48
	mov	r2, x5
add	r2, 8
	mov	r2, [r2]
	mov	[r1], r0
	mov	r0, rsp
add	r0, 44
	mov	[r0], r2
	mov	r0, x5
add	r0, 4
	mov	r0, [r0]
	mov	r1, rsp
add	r1, 40
	mov	r2, [x5]
	mov	x5, 0
	sub	x5, x4
	mov	[r1], r0
	mov	[rsp+36], r2
	mov	x15, x0
add	x15, 28
	mov	[x15], 0
	mov	x14, x0
add	x14, 24
	mov	[x14], 0
	mov	x6, x0
add	x6, 20
	mov	[x6], 0
	mov	x9, x0
add	x9, 16
	mov	[x9], 0
	mov	x2, x0
add	x2, 12
	mov	[x2], 0
	mov	x1, x0
add	x1, 8
	mov	[x1], 0
	mov	x4, x0
add	x4, 4
	mov	[x4], 0
	mov	r0, 255
	mov	[x0], 0
	jg	x5, r0, .LBB121_40
	jmp	.LBB121_21
.LBB121_21:
	mov	r1, 6
	mov	r0, x5
	call	__bit_shr
	mov	r1, 63
	mov	x13, rax
	mov	r0, x5
	call	__bit_and
	mov	x10, rax
	mov	r1, 3
	mov	x3, 3
	mov	r0, x13
	call	__bit_shl
	mov	r2, rsp
add	r2, 36
	add	r2, rax
	mov	x8, [r2]
	mov	r0, r2
add	r0, 4
	mov	x7, [r0]
	jnz	x10, .LBB121_27
	jmp	.LBB121_22
.LBB121_22:
	mov	[x0], x8
	mov	r0, 191
	mov	[x4], x7
	jg	x5, r0, .LBB121_25
	jmp	.LBB121_23
.LBB121_23:
	mov	r0, r2
	mov	r1, r2
add	r1, 12
	mov	r1, [r1]
add	r0, 8
	mov	r0, [r0]
	mov	[x2], r1
	mov	r1, 127
	mov	[x1], r0
	jg	x5, r1, .LBB121_25
	jmp	.LBB121_24
.LBB121_24:
	mov	r0, r2
add	r0, 16
add	r2, 20
	mov	r1, [r2]
	mov	r0, [r0]
	mov	[x6], r1
	mov	[x9], r0
.LBB121_25:
	jnz	x13, .LBB121_40
	jmp	.LBB121_26
.LBB121_26:
	mov	r0, rsp
add	r0, 60
	mov	r1, rsp
add	r1, 64
	mov	rax, [r1]
	mov	x0, [r0]
	jmp	.LBB121_39
.LBB121_27:
	mov	[rsp+16], r2
	mov	[rsp+8], x9
	mov	[rsp+12], x6
	mov	r0, 64
	mov	r1, 31
	sub	r0, x10
	mov	[rsp+20], r0
	mov	r0, x10
	call	__bit_and
	mov	x9, rax
	mov	r1, 0
	sub	r1, x9
	mov	x6, 0
	mov	r0, x9
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	[rsp+28], x10
	mov	r0, x10
add	r0, -32
	mov	r1, 31
	mov	x10, rax
	mov	[rsp+24], r0
	call	__bit_shr
	mov	x11, rax
	mov	r0, x7
	mov	r1, x9
	call	__bit_shr
	mov	x12, 0
	sub	x12, x11
	mov	x11, rax
	mov	r0, x12
	call	__bit_not
	mov	r0, x11
	mov	r1, rax
	call	__bit_and
	mov	[rsp+32], x13
	mov	x13, rax
	mov	r0, x8
	mov	r1, x9
	call	__bit_shr
	mov	x8, rax
	mov	r0, 32
	sub	r0, x9
	mov	r1, 31
	mov	x9, 32
	call	__bit_and
	mov	r0, x7
	mov	r1, rax
	call	__bit_shl
	mov	r1, 0
	sub	r1, x10
	mov	r0, rax
	call	__bit_and
	mov	r0, x8
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x12
	call	__bit_and
	mov	r0, rax
	mov	r1, x13
	mov	x13, [rsp+32]
	call	__bit_or
	mov	x7, rax
	mov	r0, x11
	mov	r1, x12
	call	__bit_and
	mov	x8, rax
	je	x13, x3, .LBB121_29
	jmp	.LBB121_28
.LBB121_28:
	mov	r1, [rsp+16]
	mov	r0, r1
add	r0, 8
add	r1, 12
	mov	x10, [r1]
	mov	x11, [r0]
	mov	r1, 31
	mov	x3, [rsp+20]
	mov	r0, x3
	call	__bit_and
	mov	x12, rax
	mov	r1, 0
	sub	r1, x12
	mov	r0, x12
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
add	x3, -32
	mov	r1, 31
	mov	x13, rax
	mov	r0, x3
	call	__bit_shr
	mov	[rsp], x14
	mov	x14, rax
	mov	r0, x11
	mov	r1, x12
	call	__bit_shl
	mov	[rsp+4], x15
	mov	x15, 0
	sub	x15, x14
	mov	x14, rax
	mov	r0, x15
	call	__bit_not
	mov	r0, x14
	mov	r1, rax
	call	__bit_and
	mov	x3, rax
	mov	r0, x10
	mov	r1, x12
	call	__bit_shl
	sub	x9, x12
	mov	r1, 31
	mov	x10, rax
	mov	r0, x9
	call	__bit_and
	mov	r0, x11
	mov	r1, rax
	call	__bit_shr
	sub	x6, x13
	mov	x13, [rsp+32]
	mov	r0, rax
	mov	r1, x6
	call	__bit_and
	mov	r0, x10
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x15
	call	__bit_and
	mov	r0, rax
	mov	r1, x3
	call	__bit_or
	mov	x3, rax
	mov	r0, x14
	mov	x14, [rsp]
	mov	r1, x15
	mov	x15, [rsp+4]
	call	__bit_and
	mov	x6, rax
	mov	r0, x3
	mov	r1, x8
	call	__bit_or
	mov	x8, rax
	mov	r0, x6
	mov	r1, x7
	call	__bit_or
	mov	x7, rax
.LBB121_29:
	mov	[x0], x7
	mov	r0, 191
	mov	[x4], x8
	jg	x5, r0, .LBB121_37
	jmp	.LBB121_30
.LBB121_30:
	mov	x0, x13
add	x0, 1
	mov	r1, 3
	mov	x12, 3
	mov	r0, x0
	call	__bit_shl
	mov	x4, rsp
add	x4, 36
	add	x4, rax
	mov	x3, [x4]
	mov	r0, x4
add	r0, 4
	mov	x7, [r0]
	mov	r1, 31
	mov	r0, [rsp+28]
	call	__bit_and
	mov	x9, rax
	mov	r1, 0
	sub	r1, x9
	mov	x6, 0
	mov	r0, x9
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 31
	mov	x10, rax
	mov	r0, [rsp+24]
	call	__bit_shr
	mov	x11, rax
	mov	r0, 32
	sub	r0, x9
	mov	r1, 31
	mov	x8, 32
	call	__bit_and
	mov	r0, x7
	mov	r1, rax
	call	__bit_shl
	mov	r1, 0
	sub	r1, x10
	mov	r0, rax
	call	__bit_and
	mov	x10, rax
	mov	r0, x3
	mov	r1, x9
	call	__bit_shr
	mov	r0, rax
	mov	r1, x10
	call	__bit_or
	mov	x3, 0
	sub	x3, x11
	mov	r0, rax
	mov	r1, x3
	call	__bit_and
	mov	x10, rax
	mov	r0, x7
	mov	r1, x9
	call	__bit_shr
	mov	x7, rax
	mov	r0, x3
	call	__bit_not
	mov	r0, x7
	mov	r1, rax
	call	__bit_and
	mov	r0, x10
	mov	r1, rax
	call	__bit_or
	mov	x9, rax
	mov	r0, x7
	mov	r1, x3
	call	__bit_and
	mov	x10, rax
	je	x0, x12, .LBB121_32
	jmp	.LBB121_31
.LBB121_31:
	mov	r0, x4
add	r0, 8
add	x4, 12
	mov	x0, [x4]
	mov	x7, [r0]
	mov	r1, 31
	mov	x4, [rsp+20]
	mov	r0, x4
	call	__bit_and
	mov	x3, rax
	mov	r1, 0
	sub	r1, x3
	mov	r0, x3
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
add	x4, -32
	mov	r1, 31
	mov	x11, rax
	mov	r0, x4
	call	__bit_shr
	mov	x12, rax
	mov	r0, x7
	mov	r1, x3
	call	__bit_shl
	mov	x13, 0
	sub	x13, x12
	mov	x12, rax
	mov	r0, x13
	call	__bit_not
	mov	r0, x12
	mov	r1, rax
	call	__bit_and
	mov	x4, x14
	mov	x14, rax
	mov	r0, x0
	mov	r1, x3
	call	__bit_shl
	sub	x8, x3
	mov	r1, 31
	mov	x3, rax
	mov	r0, x8
	call	__bit_and
	mov	r0, x7
	mov	r1, rax
	call	__bit_shr
	sub	x6, x11
	mov	r0, rax
	mov	r1, x6
	call	__bit_and
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x13
	call	__bit_and
	mov	r0, rax
	mov	r1, x14
	mov	x14, x4
	call	__bit_or
	mov	x3, rax
	mov	r0, x12
	mov	r1, x13
	mov	x13, [rsp+32]
	call	__bit_and
	mov	x6, rax
	mov	r0, x3
	mov	r1, x10
	call	__bit_or
	mov	x3, rax
	mov	r0, x6
	mov	r1, x9
	call	__bit_or
	mov	[x1], rax
	mov	r0, 127
	mov	[x2], x3
	jg	x5, r0, .LBB121_37
	jmp	.LBB121_34
.LBB121_32:
	mov	[x2], x10
	mov	r0, 127
	mov	[x1], x9
	jg	x5, r0, .LBB121_40
	jmp	.LBB121_33
.LBB121_33:
	mov	x1, [rsp+16]
	mov	r0, x1
add	r0, 16
	mov	x0, [r0]
	mov	r0, x1
add	r0, 20
	mov	x3, [r0]
	mov	r1, 31
	mov	r0, [rsp+28]
	call	__bit_and
	mov	x5, rax
	mov	r1, 0
	sub	r1, x5
	mov	r0, x5
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 31
	mov	x7, rax
	mov	r0, [rsp+24]
	call	__bit_shr
	mov	x8, rax
	mov	r0, x3
	mov	r1, x5
	call	__bit_shr
	mov	x9, 0
	sub	x9, x8
	mov	x8, rax
	mov	r0, x9
	call	__bit_not
	mov	r0, x8
	mov	r1, rax
	call	__bit_and
	mov	x10, rax
	mov	r0, x0
	mov	r1, x5
	call	__bit_shr
	mov	r0, 32
	sub	r0, x5
	mov	r1, 31
	mov	x0, rax
	call	__bit_and
	mov	r0, x3
	mov	r1, rax
	call	__bit_shl
	sub	x6, x7
	mov	r0, rax
	mov	r1, x6
	call	__bit_and
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x9
	call	__bit_and
	mov	r0, rax
	mov	r1, x10
	call	__bit_or
	mov	x0, rax
	mov	r0, x8
	mov	r1, x9
	call	__bit_and
	mov	x5, rax
	jmp	.LBB121_35
.LBB121_34:
	mov	r1, 31
	mov	r0, [rsp+28]
	call	__bit_and
	mov	x3, rax
	mov	r1, 0
	sub	r1, x3
	mov	x5, 0
	mov	r0, x3
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 31
	mov	x6, rax
	mov	r0, [rsp+24]
	call	__bit_shr
	mov	x8, rax
	mov	r0, x0
	mov	r1, x3
	call	__bit_shr
	mov	x9, 0
	sub	x9, x8
	mov	x8, rax
	mov	r0, x9
	call	__bit_not
	mov	r0, x8
	mov	r1, rax
	call	__bit_and
	mov	x10, rax
	mov	r0, x7
	mov	r1, x3
	call	__bit_shr
	mov	r0, 32
	sub	r0, x3
	mov	r1, 31
	mov	x3, rax
	call	__bit_and
	mov	r0, x0
	mov	r1, rax
	call	__bit_shl
	sub	x5, x6
	mov	r0, rax
	mov	r1, x5
	call	__bit_and
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x9
	call	__bit_and
	mov	r0, rax
	mov	r1, x10
	call	__bit_or
	mov	x0, rax
	mov	r0, x8
	mov	r1, x9
	call	__bit_and
	mov	r0, 1
	mov	x5, rax
	mov	x1, [rsp+16]
	je	x13, r0, .LBB121_36
	jmp	.LBB121_35
.LBB121_35:
	mov	r0, x1
add	r0, 24
add	x1, 28
	mov	x3, [x1]
	mov	x6, [r0]
	mov	r1, 31
	mov	x1, [rsp+20]
	mov	r0, x1
	call	__bit_and
	mov	x7, rax
	mov	r1, 0
	sub	r1, x7
	mov	x8, 0
	mov	r0, x7
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
add	x1, -32
	mov	r1, 31
	mov	x9, rax
	mov	r0, x1
	call	__bit_shr
	mov	x11, rax
	mov	r0, x6
	mov	r1, x7
	call	__bit_shl
	mov	x10, 0
	sub	x10, x11
	mov	x12, rax
	mov	r0, x10
	call	__bit_not
	mov	r0, x12
	mov	r1, rax
	call	__bit_and
	mov	x11, rax
	mov	r0, x3
	mov	r1, x7
	call	__bit_shl
	mov	r0, 32
	sub	r0, x7
	mov	r1, 31
	mov	x3, rax
	call	__bit_and
	mov	r0, x6
	mov	r1, rax
	call	__bit_shr
	sub	x8, x9
	mov	r0, rax
	mov	r1, x8
	call	__bit_and
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x10
	call	__bit_and
	mov	r0, rax
	mov	r1, x11
	call	__bit_or
	mov	x3, rax
	mov	r0, x12
	mov	r1, x10
	call	__bit_and
	mov	x6, rax
	mov	r0, x3
	mov	r1, x5
	call	__bit_or
	mov	x5, rax
	mov	r0, x6
	mov	r1, x0
	call	__bit_or
	mov	x0, rax
.LBB121_36:
	mov	r0, [rsp+12]
	mov	[r0], x5
	mov	r0, [rsp+8]
	mov	[r0], x0
.LBB121_37:
	jnz	x13, .LBB121_40
	jmp	.LBB121_38
.LBB121_38:
	mov	r0, rsp
add	r0, 60
	mov	x0, [r0]
	mov	r0, rsp
add	r0, 64
	mov	x8, [r0]
	mov	r1, 31
	mov	r0, [rsp+28]
	call	__bit_and
	mov	x2, rax
	mov	r1, 0
	sub	r1, x2
	mov	x3, 0
	mov	r0, x2
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 31
	mov	x9, rax
	mov	r0, [rsp+24]
	call	__bit_shr
	mov	x5, rax
	mov	r0, x8
	mov	r1, x2
	call	__bit_shr
	mov	x6, 0
	sub	x6, x5
	mov	x5, rax
	mov	r0, x6
	call	__bit_not
	mov	r0, x5
	mov	r1, rax
	call	__bit_and
	mov	x7, rax
	mov	r0, x0
	mov	r1, x2
	call	__bit_shr
	mov	r0, 32
	sub	r0, x2
	mov	r1, 31
	mov	x0, rax
	call	__bit_and
	mov	r0, x8
	mov	r1, rax
	call	__bit_shl
	sub	x3, x9
	mov	r0, rax
	mov	r1, x3
	call	__bit_and
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x6
	call	__bit_and
	mov	r0, rax
	mov	r1, x7
	call	__bit_or
	mov	x0, rax
	mov	r0, x5
	mov	r1, x6
	call	__bit_and
.LBB121_39:
	mov	[x15], rax
	mov	[x14], x0
.LBB121_40:
.LBB121_41:
	mov	x15, [rsp+68]
	mov	x14, [rsp+72]
	mov	x13, [rsp+76]
	mov	x12, [rsp+80]
	mov	x11, [rsp+84]
	mov	x10, [rsp+88]
	mov	x9, [rsp+92]
	mov	x8, [rsp+96]
	mov	x7, [rsp+100]
	mov	x6, [rsp+104]
	mov	x5, [rsp+108]
	mov	x4, [rsp+112]
	mov	x3, [rsp+116]
	mov	x2, [rsp+120]
	mov	x1, [rsp+124]
	mov	x0, [rsp+128]
add	rsp, 132
	ret
// -- End function
// -- Begin function d2fixed_buffered
d2fixed_buffered:                       // @d2fixed_buffered
// %bb.0:
sub	rsp, 8
	mov	[rsp+4], x0
	mov	[rsp], x1
	mov	x0, r3
	call	d2fixed_buffered_n
	mov	x1, rax
	add	x1, x0
	mov	r0, [x1]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	[x1], rax
	mov	x1, [rsp]
	mov	x0, [rsp+4]
add	rsp, 8
	ret
// -- End function
// -- Begin function d2fixed
d2fixed:                                // @d2fixed
// %bb.0:
sub	rsp, 16
	mov	[rsp+12], x0
	mov	[rsp+8], x1
	mov	[rsp+4], x2
	mov	[rsp], x3
	mov	x0, r0
	mov	r0, 2000
	mov	x1, r2
	mov	x2, r1
	call	malloc
	mov	x3, rax
	mov	r0, x0
	mov	r1, x2
	mov	r2, x1
	mov	r3, x3
	call	d2fixed_buffered_n
	mov	x0, rax
	add	x0, x3
	mov	r0, [x0]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	[x0], rax
	mov	rax, x3
	mov	x3, [rsp]
	mov	x2, [rsp+4]
	mov	x1, [rsp+8]
	mov	x0, [rsp+12]
add	rsp, 16
	ret
// -- End function
// -- Begin function d2exp_buffered_n
d2exp_buffered_n:                       // @d2exp_buffered_n
// %bb.0:                               // %memcpy.exit
sub	rsp, 136
	mov	[rsp+132], x0
	mov	[rsp+128], x1
	mov	[rsp+124], x2
	mov	[rsp+120], x3
	mov	[rsp+116], x4
	mov	[rsp+112], x5
	mov	[rsp+108], x6
	mov	[rsp+104], x7
	mov	[rsp+100], x8
	mov	[rsp+96], x9
	mov	[rsp+92], x10
	mov	[rsp+88], x11
	mov	[rsp+84], x12
	mov	[rsp+80], x13
	mov	[rsp+76], x14
	mov	[rsp+72], x15
	mov	x1, r1
	mov	r1, 1048575
	mov	x15, r3
	mov	x5, r2
	mov	x2, r0
	mov	r0, x1
	call	__bit_and
	mov	r1, 20
	mov	x14, rax
	mov	r0, x1
	call	__bit_shr
	mov	r1, 2047
	mov	x0, 2047
	mov	r0, rax
	call	__bit_and
	mov	x6, rax
	jne	x6, x0, .LBB124_6
	jmp	.LBB124_1
.LBB124_1:
	mov	r0, x2
	mov	r1, x14
	call	__bit_or
	jz	rax, .LBB124_3
	jmp	.LBB124_2
.LBB124_2:                              // %memcpy.exit63.loopexit184
	mov	r0, [x15]
	mov	x0, x15
	mov	r1, -256
add	x0, 1
	call	__bit_and
	mov	r1, 110
	mov	r0, rax
	call	__bit_or
	mov	[x15], rax
	mov	r0, [x0]
	mov	r1, -256
add	x15, 2
	call	__bit_and
	mov	r1, 97
	mov	r0, rax
	call	__bit_or
	mov	[x0], rax
	mov	r0, [x15]
	mov	r1, -256
	call	__bit_and
	mov	r1, 110
	mov	r0, rax
	call	__bit_or
	mov	[x15], rax
	mov	x6, 3
	jmp	.LBB124_233
.LBB124_3:
	mov	r0, -1
	mov	x6, 8
	jg	x1, r0, .LBB124_5
	jmp	.LBB124_4
.LBB124_4:
	mov	r0, [x15]
	mov	r1, -256
	call	__bit_and
	mov	r1, 45
	mov	r0, rax
	call	__bit_or
	mov	[x15], rax
	mov	x6, 9
.LBB124_5:                              // %memcpy.exit63.loopexit
	mov	r1, 31
	mov	r0, x1
	call	__bit_shr
	add	x15, rax
	mov	r0, [x15]
	mov	x0, x15
	mov	r1, -256
add	x0, 1
	call	__bit_and
	mov	r1, 73
	mov	r0, rax
	call	__bit_or
	mov	[x15], rax
	mov	r0, [x0]
	mov	x1, x15
	mov	r1, -256
add	x1, 2
	call	__bit_and
	mov	r1, 110
	mov	r0, rax
	call	__bit_or
	mov	[x0], rax
	mov	r0, [x1]
	mov	x0, x15
	mov	r1, -256
add	x0, 3
	call	__bit_and
	mov	r1, 102
	mov	r0, rax
	call	__bit_or
	mov	[x1], rax
	mov	r0, [x0]
	mov	x1, x15
	mov	r1, -256
add	x1, 4
	call	__bit_and
	mov	r1, 105
	mov	r0, rax
	call	__bit_or
	mov	[x0], rax
	mov	r0, [x1]
	mov	x0, x15
	mov	r1, -256
add	x0, 5
	call	__bit_and
	mov	r1, 110
	mov	r0, rax
	call	__bit_or
	mov	[x1], rax
	mov	r0, [x0]
	mov	x1, x15
	mov	r1, -256
add	x1, 6
	call	__bit_and
	mov	r1, 105
	mov	r0, rax
	call	__bit_or
	mov	[x0], rax
	mov	r0, [x1]
	mov	r1, -256
add	x15, 7
	call	__bit_and
	mov	r1, 116
	mov	r0, rax
	call	__bit_or
	mov	[x1], rax
	mov	r0, [x15]
	mov	r1, -256
	call	__bit_and
	mov	r1, 121
	mov	r0, rax
	call	__bit_or
	mov	[x15], rax
	jmp	.LBB124_233
.LBB124_6:
	mov	r0, x2
	mov	r1, x14
	call	__bit_or
	jnz	rax, .LBB124_27
	jmp	.LBB124_7
.LBB124_7:
	jnz	x6, .LBB124_27
	jmp	.LBB124_8
.LBB124_8:
	mov	r0, -1
	mov	x3, 0
	jg	x1, r0, .LBB124_10
	jmp	.LBB124_9
.LBB124_9:
	mov	r0, [x15]
	mov	r1, -256
	call	__bit_and
	mov	r1, 45
	mov	r0, rax
	call	__bit_or
	mov	[x15], rax
	mov	x3, 1
.LBB124_10:
	mov	x4, x15
	add	x4, x3
	mov	r0, [x4]
	mov	x6, x3
	mov	r1, -256
add	x6, 1
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	[x4], rax
	jz	x5, .LBB124_26
	jmp	.LBB124_11
.LBB124_11:
	mov	r1, 2
	mov	r0, x3
	call	__bit_or
	add	x6, x15
	mov	r0, [x6]
	mov	r1, -256
	mov	x1, rax
	call	__bit_and
	mov	r1, 46
	mov	r0, rax
	call	__bit_or
	mov	x3, x15
	add	x3, x1
	mov	r1, 3
	mov	[x6], rax
	mov	r0, x3
	call	__bit_and
	mov	x0, x5
	jz	rax, .LBB124_15
	jmp	.LBB124_12
.LBB124_12:                             // %.preheader101.preheader
add	x4, 3
	mov	x2, x3
	mov	x0, x5
.LBB124_13:                             // %.preheader101
                                        // =>This Inner Loop Header: Depth=1
	jz	x0, .LBB124_25
	jmp	.LBB124_14
.LBB124_14:                             //   in Loop: Header=BB124_13 Depth=1
	mov	r0, [x2]
add	x0, -1
	mov	x3, x2
	mov	r1, -256
add	x3, 1
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	r1, 3
	mov	[x2], rax
	mov	r0, x4
	call	__bit_and
add	x4, 1
	mov	x2, x3
	jnz	rax, .LBB124_13
	jmp	.LBB124_15
.LBB124_15:                             // %.loopexit7.i
	mov	r0, x0
add	r0, -2147483648
	mov	r1, -2147483644
	jl	r0, r1, .LBB124_22
	jmp	.LBB124_16
.LBB124_16:
	mov	r1, -2147483632
	jl	r0, r1, .LBB124_18
	jmp	.LBB124_17
.LBB124_17:                             // %.preheader.i.preheader
	mov	r0, -2147483633
	jmp	.LBB124_20
.LBB124_18:                             // %.preheader418
	mov	r0, -2147483645
	mov	r1, x0
	jmp	.LBB124_21
.LBB124_19:
	mov	r0, 3
	jg	x0, r0, .LBB124_18
	jmp	.LBB124_22
.LBB124_20:                             // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, x0
	mov	r2, x3
add	r2, 4
	mov	[x3], 808464432
	mov	r3, x3
add	r3, 8
	mov	[r2], 808464432
	mov	r2, x3
add	r2, 12
	mov	[r3], 808464432
add	x3, 16
	mov	[r2], 808464432
add	r1, 2147483632
add	x0, -16
	jg	r1, r0, .LBB124_20
	jmp	.LBB124_19
.LBB124_21:                             // =>This Inner Loop Header: Depth=1
	mov	[x3], 808464432
add	x0, -4
	mov	r2, r1
add	r2, 2147483644
add	x3, 4
	mov	r1, x0
	jg	r2, r0, .LBB124_21
	jmp	.LBB124_22
.LBB124_22:                             // %.loopexit5.i
	jz	x0, .LBB124_25
	jmp	.LBB124_23
.LBB124_23:                             // %.preheader.preheader
	mov	x2, x3
.LBB124_24:                             // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x3]
add	x0, -1
	mov	r1, -256
add	x2, 1
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	[x3], rax
	mov	x3, x2
	jnz	x0, .LBB124_24
	jmp	.LBB124_25
.LBB124_25:                             // %memset.exit
	add	x1, x5
	mov	x6, x1
.LBB124_26:                             // %memcpy.exit65
	add	x15, x6
	mov	r0, [x15]
	mov	x0, x15
	mov	r1, -256
add	x0, 1
	call	__bit_and
	mov	r1, 101
	mov	r0, rax
	call	__bit_or
	mov	[x15], rax
	mov	r0, [x0]
	mov	x1, x15
	mov	r1, -256
add	x1, 2
	call	__bit_and
	mov	r1, 43
	mov	r0, rax
	call	__bit_or
	mov	[x0], rax
	mov	r0, [x1]
	mov	r1, -256
add	x15, 3
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	[x1], rax
	mov	r0, [x15]
	mov	r1, -256
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	[x15], rax
add	x6, 4
	jmp	.LBB124_233
.LBB124_27:
	mov	r1, 1048576
	mov	r0, x14
	call	__bit_or
	jz	x6, .LBB124_29
	jmp	.LBB124_28
.LBB124_28:
	mov	x14, rax
.LBB124_29:
	mov	x3, -1074
	jz	x6, .LBB124_31
	jmp	.LBB124_30
.LBB124_30:
add	x6, -1075
	mov	x3, x6
.LBB124_31:
	mov	x8, 0
	mov	x0, x5
add	x0, 1
	mov	r0, -1
	mov	x13, 0
	jg	x1, r0, .LBB124_33
	jmp	.LBB124_32
.LBB124_32:
	mov	r0, [x15]
	mov	r1, -256
	call	__bit_and
	mov	r1, 45
	mov	r0, rax
	call	__bit_or
	mov	[x15], rax
	mov	x13, 1
.LBB124_33:
	mov	r0, -52
	mov	r1, x0
add	r1, -2147483648
	mov	[rsp+36], r1
	mov	[rsp+24], x15
	mov	[rsp+40], x2
	mov	[rsp+44], x14
	mov	[rsp+16], x5
	mov	[rsp+8], x0
	mov	[rsp+4], x3
	jl	x3, r0, .LBB124_81
	jmp	.LBB124_34
.LBB124_34:
	mov	x4, 0
	mov	r1, 1
	jg	x3, x4, .LBB124_36
// %bb.35:
	mov	r1, 0
.LBB124_36:
	mov	r0, 0
	sub	r0, r1
	mov	r1, x3
	call	__bit_and
	mov	x10, rax
	mov	r0, x10
	mul	r0, 78913
	mov	r1, 18
	call	__bit_shr
add	rax, 25
	mov	r1, 65535
	mov	r0, rax
	call	__bit_and
	mul	rax, 58255
	mov	r1, 19
	mov	r0, rax
	call	__bit_shr
	mov	x9, rax
	mov	x12, x10
	sub	x12, x3
add	x12, 128
	mov	x3, 99999999
	mov	x6, mcasm_static_6c0d4b28168d34450f36832cd0ebf870
	mov	x2, -2147483645
	mov	[rsp+28], x10
	mov	[rsp+20], x12
.LBB124_37:                             // =>This Loop Header: Depth=1
                                        //     Child Loop BB124_47 Depth 2
                                        //     Child Loop BB124_50 Depth 2
                                        //     Child Loop BB124_68 Depth 2
	mov	x0, x9
add	x9, -1
	mov	x7, rsp
add	x7, 48
	mov	x1, x4
	mov	r0, x10
	mov	r1, x9
	mov	r2, x7
	call	ryu_fill_pow10_split_exp
	mov	r0, [rsp+40]
	mov	r1, x14
	mov	r2, x7
	mov	r3, x12
	call	ryu_mul_shift_mod1e9_exact
	mov	x7, rax
	jz	x1, .LBB124_52
	jmp	.LBB124_38
.LBB124_38:                             //   in Loop: Header=BB124_37 Depth=1
	mov	r0, x1
add	r0, -2147483639
	mov	x4, 9
	mov	r1, [rsp+36]
	jg	r0, r1, .LBB124_78
	jmp	.LBB124_39
.LBB124_39:                             //   in Loop: Header=BB124_37 Depth=1
	mov	x11, x15
	add	x11, x13
	jz	x7, .LBB124_41
	jmp	.LBB124_40
.LBB124_40:                             // %memcpy.exit66
                                        //   in Loop: Header=BB124_37 Depth=1
	mov	x3, x11
	mov	r1, 10000
add	x3, 7
	mov	r0, x7
	call	__udivsi3
	mov	x12, rax
	mov	x14, x12
	mul	x14, -10000
	add	x14, x7
	mov	r1, 100
	mov	r0, x14
	call	__udivsi3
	mov	x10, x13
	mov	x13, rax
	mov	r0, x13
	mul	r0, -100
	add	r0, x14
	mov	r1, 1
	call	__bit_shl
	mov	x14, rax
	add	x14, x6
	mov	r0, [x14]
	mov	r1, 255
add	x14, 1
	call	__bit_and
	mov	r0, [x3]
	mov	x15, rax
	mov	x4, x11
	mov	r1, -256
add	x4, 8
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x15
	mov	x15, [rsp+24]
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	[x3], rax
	mov	r0, [x14]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x4]
	mov	r1, -256
	mov	x5, rax
	call	__bit_and
	mov	r1, 255
	mov	x14, rax
	mov	r0, x5
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x14
	mov	r1, rax
	call	__bit_or
	mov	[x4], rax
	mov	x3, x11
	mov	r1, 1
add	x3, 5
	mov	r0, x13
	call	__bit_shl
	mov	x5, rax
	add	x5, x6
	mov	r0, [x5]
	mov	r1, 255
add	x5, 1
	call	__bit_and
	mov	r0, [x3]
	mov	x13, rax
	mov	x4, x11
	mov	r1, -256
add	x4, 6
	call	__bit_and
	mov	r1, 255
	mov	x14, rax
	mov	r0, x13
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x14
	mov	r1, rax
	call	__bit_or
	mov	[x3], rax
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x4]
	mov	r1, -256
	mov	x5, rax
	call	__bit_and
	mov	r1, 255
	mov	x13, rax
	mov	r0, x5
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x13
	mov	r1, rax
	call	__bit_or
	mov	r1, 100000000
	mov	[x4], rax
	mov	r0, x7
	call	__udivsi3
	mov	x7, rax
	mov	x5, x7
	mul	x5, -10000
	add	x5, x12
	mov	r1, 100
	mov	r0, x5
	call	__udivsi3
	mov	x12, rax
	mov	r0, x12
	mul	r0, -100
	add	r0, x5
	mov	r1, 1
	call	__bit_shl
	mov	x5, rax
	add	x5, x6
	mov	r0, [x5]
	mov	x3, x11
add	x3, 3
	mov	r1, 255
add	x5, 1
	call	__bit_and
	mov	r0, [x3]
	mov	x13, rax
	mov	x4, x11
	mov	r1, -256
add	x4, 4
	call	__bit_and
	mov	r1, 255
	mov	x14, rax
	mov	r0, x13
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x14
	mov	x14, [rsp+44]
	mov	r1, rax
	call	__bit_or
	mov	[x3], rax
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x4]
	mov	r1, -256
	mov	x5, rax
	call	__bit_and
	mov	r1, 255
	mov	x13, rax
	mov	r0, x5
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x13
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	[x4], rax
	mov	r0, x12
	call	__bit_shl
	mov	x5, rax
	add	x5, x6
	mov	r0, [x5]
	mov	x3, x11
add	x3, 1
	mov	r1, 255
add	x5, 1
	call	__bit_and
	mov	r0, [x3]
	mov	r1, -256
	mov	x12, rax
	call	__bit_and
	mov	r1, 255
	mov	x13, rax
	mov	r0, x12
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x13
	mov	x13, x10
	mov	x10, [rsp+28]
	mov	r1, rax
	call	__bit_or
	mov	[x3], rax
	mov	r0, [x5]
	mov	x3, x11
	mov	r1, 255
add	x3, 2
	call	__bit_and
	mov	r0, [x3]
	mov	r1, -256
	mov	x5, rax
	call	__bit_and
	mov	r1, 255
	mov	x12, rax
	mov	r0, x5
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x12
	mov	x12, [rsp+20]
	mov	r1, rax
	call	__bit_or
	mov	[x3], rax
	mov	r0, [x11]
	mov	r1, -256
add	x7, 48
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x7
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	[x11], rax
	jmp	.LBB124_51
.LBB124_41:                             //   in Loop: Header=BB124_37 Depth=1
	mov	r1, 3
	mov	r0, x11
	call	__bit_and
	mov	x3, 9
	mov	x7, x11
	jz	rax, .LBB124_46
	jmp	.LBB124_42
.LBB124_42:                             // %.preheader117.preheader
                                        //   in Loop: Header=BB124_37 Depth=1
	mov	r0, [x11]
	mov	x7, x11
	mov	r1, -256
add	x7, 1
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	r1, 3
	mov	[x11], rax
	mov	r0, x7
	call	__bit_and
	mov	x3, 8
	jz	rax, .LBB124_46
	jmp	.LBB124_43
.LBB124_43:                             // %.preheader117.1
                                        //   in Loop: Header=BB124_37 Depth=1
	mov	x3, x11
add	x3, 1
	mov	r0, [x3]
	mov	x7, x11
	mov	r1, -256
add	x7, 2
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	r1, 3
	mov	[x3], rax
	mov	r0, x7
	call	__bit_and
	mov	x3, 7
	jz	rax, .LBB124_46
	jmp	.LBB124_44
.LBB124_44:                             // %.preheader117.2
                                        //   in Loop: Header=BB124_37 Depth=1
	mov	x3, x11
add	x3, 2
	mov	r0, [x3]
	mov	x7, x11
	mov	r1, -256
add	x7, 3
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	r1, 3
	mov	[x3], rax
	mov	r0, x7
	call	__bit_and
	mov	x3, 6
	jz	rax, .LBB124_46
	jmp	.LBB124_45
.LBB124_45:                             // %.preheader117.3
                                        //   in Loop: Header=BB124_37 Depth=1
	mov	x7, x11
add	x11, 3
	mov	r0, [x11]
	mov	r1, -256
add	x7, 4
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	[x11], rax
	mov	x3, 5
.LBB124_46:                             // %.thread.preheader
                                        //   in Loop: Header=BB124_37 Depth=1
.LBB124_47:                             // %.thread
                                        //   Parent Loop BB124_37 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, x3
	mov	[x7], 808464432
add	x7, 4
add	r0, 2147483644
add	x3, -4
	jg	r0, x2, .LBB124_47
	jmp	.LBB124_48
.LBB124_48:                             // %.loopexit5.i71
                                        //   in Loop: Header=BB124_37 Depth=1
	jz	x3, .LBB124_51
	jmp	.LBB124_49
.LBB124_49:                             // %.preheader116.preheader
                                        //   in Loop: Header=BB124_37 Depth=1
	mov	x4, 0
.LBB124_50:                             // %.preheader116
                                        //   Parent Loop BB124_37 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	x5, x7
	add	x5, x4
	mov	r0, [x5]
	mov	r1, -256
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
add	x4, 1
	mov	[x5], rax
	jne	x3, x4, .LBB124_50
	jmp	.LBB124_51
.LBB124_51:                             // %memset.exit73
                                        //   in Loop: Header=BB124_37 Depth=1
add	x1, 9
add	x13, 9
	mov	x4, x1
	mov	x3, 99999999
	jmp	.LBB124_79
.LBB124_52:                             //   in Loop: Header=BB124_37 Depth=1
	mov	x4, 0
	jz	x7, .LBB124_79
	jmp	.LBB124_53
.LBB124_53:                             //   in Loop: Header=BB124_37 Depth=1
	mov	r0, x7
add	r0, -2147483648
	mov	r1, -1147483648
	jl	r0, r1, .LBB124_55
	jmp	.LBB124_54
.LBB124_54:
	call	abort
.LBB124_55:                             //   in Loop: Header=BB124_37 Depth=1
	mov	x4, 9
	jg	x7, x3, .LBB124_64
	jmp	.LBB124_56
.LBB124_56:                             //   in Loop: Header=BB124_37 Depth=1
	mov	x4, 8
	mov	r0, 9999999
	jg	x7, r0, .LBB124_64
	jmp	.LBB124_57
.LBB124_57:                             //   in Loop: Header=BB124_37 Depth=1
	mov	x4, 7
	mov	r0, 999999
	jg	x7, r0, .LBB124_64
	jmp	.LBB124_58
.LBB124_58:                             //   in Loop: Header=BB124_37 Depth=1
	mov	x4, 6
	mov	r0, 99999
	jg	x7, r0, .LBB124_64
	jmp	.LBB124_59
.LBB124_59:                             //   in Loop: Header=BB124_37 Depth=1
	mov	x4, 5
	mov	r0, 9999
	jg	x7, r0, .LBB124_64
	jmp	.LBB124_60
.LBB124_60:                             //   in Loop: Header=BB124_37 Depth=1
	mov	x4, 4
	mov	r0, 999
	jg	x7, r0, .LBB124_64
	jmp	.LBB124_61
.LBB124_61:                             //   in Loop: Header=BB124_37 Depth=1
	mov	x4, 3
	mov	r0, 99
	jg	x7, r0, .LBB124_64
	jmp	.LBB124_62
.LBB124_62:                             //   in Loop: Header=BB124_37 Depth=1
	mov	x4, 2
	mov	r0, 9
	jg	x7, r0, .LBB124_64
	jmp	.LBB124_63
.LBB124_63:                             //   in Loop: Header=BB124_37 Depth=1
	mov	x4, 1
.LBB124_64:                             //   in Loop: Header=BB124_37 Depth=1
	mov	x8, x9
	mul	x8, 9
	add	x8, x4
	mov	r0, x4
add	r0, -2147483648
add	x8, -1
	mov	r1, [rsp+36]
	jg	r0, r1, .LBB124_78
	jmp	.LBB124_65
.LBB124_65:                             //   in Loop: Header=BB124_37 Depth=1
	mov	r0, [rsp+16]
	jz	r0, .LBB124_76
	jmp	.LBB124_66
.LBB124_66:                             //   in Loop: Header=BB124_37 Depth=1
	mov	x10, x15
	add	x10, x13
	mov	x12, 0
	mov	x3, x10
	add	x3, x4
	mov	r0, 10000
	jl	x7, r0, .LBB124_70
	jmp	.LBB124_67
.LBB124_67:                             //   in Loop: Header=BB124_37 Depth=1
	mov	[rsp], x0
	mov	[rsp+32], x13
	mov	[rsp+12], x8
	mov	x8, 0
	mov	x0, 99999999
.LBB124_68:                             // %memcpy.exit74
                                        //   Parent Loop BB124_37 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 10000
	mov	x11, x7
	mov	r0, x11
	call	__udivsi3
	mov	x7, rax
	mov	x5, x7
	mul	x5, -10000
	add	x5, x11
	mov	r1, 100
	mov	r0, x5
	call	__udivsi3
	mov	x12, rax
	mov	r0, x12
	mul	r0, -100
	add	r0, x5
	mov	r1, 1
	call	__bit_shl
	mov	x5, rax
	mov	x1, x3
	add	x1, x8
	add	x5, x6
	mov	r0, [x5]
	mov	x15, x1
add	x15, -1
	mov	r1, 255
add	x5, 1
	call	__bit_and
	mov	r0, [x15]
	mov	r1, -256
	mov	x13, rax
	call	__bit_and
	mov	r1, 255
	mov	x14, rax
	mov	r0, x13
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x14
	mov	r1, rax
	call	__bit_or
	mov	[x15], rax
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x1]
	mov	r1, -256
	mov	x5, rax
	call	__bit_and
	mov	r1, 255
	mov	x13, rax
	mov	r0, x5
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x13
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	[x1], rax
	mov	r0, x12
	call	__bit_shl
	mov	x5, rax
	add	x5, x6
	mov	r0, [x5]
	mov	x14, x1
add	x14, -3
	mov	r1, 255
add	x5, 1
	call	__bit_and
	mov	r0, [x14]
	mov	x12, rax
	mov	r1, -256
add	x1, -2
	call	__bit_and
	mov	r1, 255
	mov	x13, rax
	mov	r0, x12
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x13
	mov	r1, rax
	call	__bit_or
	mov	[x14], rax
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x1]
	mov	r1, -256
	mov	x5, rax
	call	__bit_and
	mov	r1, 255
	mov	x12, rax
	mov	r0, x5
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x12
	mov	r1, rax
	call	__bit_or
	mov	[x1], rax
add	x8, -4
	jg	x11, x0, .LBB124_68
	jmp	.LBB124_69
.LBB124_69:                             // %.loopexit115.loopexit
                                        //   in Loop: Header=BB124_37 Depth=1
	mov	x12, 0
	sub	x12, x8
	mov	x15, [rsp+24]
	mov	x8, [rsp+12]
	mov	x13, [rsp+32]
	mov	x14, [rsp+44]
	mov	x0, [rsp]
.LBB124_70:                             // %.loopexit115
                                        //   in Loop: Header=BB124_37 Depth=1
	mov	r0, 100
	jl	x7, r0, .LBB124_72
	jmp	.LBB124_71
.LBB124_71:                             // %memcpy.exit76.loopexit
                                        //   in Loop: Header=BB124_37 Depth=1
	mov	r1, 65532
	mov	r0, x7
	call	__bit_and
	mov	r1, 2
	mov	r0, rax
	call	__bit_shr
	mul	rax, 5243
	mov	r1, 17
	mov	r0, rax
	call	__bit_shr
	mov	x11, rax
	mov	r0, x11
	mul	r0, -100
	add	r0, x7
	mov	r1, 65535
	call	__bit_and
	mov	r1, 1
	mov	r0, rax
	call	__bit_shl
	mov	x5, rax
	sub	x3, x12
	add	x5, x6
	mov	r0, [x5]
	mov	x1, x3
add	x1, -1
	mov	r1, 255
add	x5, 1
	call	__bit_and
	mov	r0, [x1]
	mov	r1, -256
	mov	x7, rax
	call	__bit_and
	mov	r1, 255
	mov	x12, rax
	mov	r0, x7
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x12
	mov	r1, rax
	call	__bit_or
	mov	[x1], rax
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x3]
	mov	r1, -256
	mov	x5, rax
	call	__bit_and
	mov	r1, 255
	mov	x7, rax
	mov	r0, x5
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x7
	mov	r1, rax
	call	__bit_or
	mov	[x3], rax
	mov	x7, x11
.LBB124_72:                             // %memcpy.exit76
                                        //   in Loop: Header=BB124_37 Depth=1
	mov	x1, x10
add	x1, 1
	mov	r0, 10
	jl	x7, r0, .LBB124_74
	jmp	.LBB124_73
.LBB124_73:                             //   in Loop: Header=BB124_37 Depth=1
	mov	r1, 1
	mov	r0, x7
	call	__bit_shl
	mov	x5, rax
	add	x5, x6
	mov	r0, x5
add	r0, 1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	x3, x10
add	x3, 2
	mov	r0, [x3]
	mov	r1, -256
	mov	x7, rax
	call	__bit_and
	mov	r1, 255
	mov	x11, rax
	mov	r0, x7
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x11
	mov	r1, rax
	call	__bit_or
	mov	[x3], rax
	mov	r0, [x1]
	mov	r1, -256
	call	__bit_and
	mov	r1, 46
	mov	r0, rax
	call	__bit_or
	mov	[x1], rax
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	mov	x12, [rsp+20]
	mov	x3, 99999999
	jmp	.LBB124_75
.LBB124_74:                             //   in Loop: Header=BB124_37 Depth=1
	mov	r0, [x1]
	mov	r1, -256
	call	__bit_and
	mov	r1, 46
	mov	r0, rax
	call	__bit_or
	mov	r1, 48
	mov	[x1], rax
	mov	r0, x7
	call	__bit_or
	mov	x12, [rsp+20]
	mov	x3, 99999999
.LBB124_75:                             //   in Loop: Header=BB124_37 Depth=1
	mov	x5, [x10]
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, -256
	mov	x7, rax
	mov	r0, x5
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x7
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	[x10], rax
	mov	r0, x4
add	r0, 1
	mov	x10, [rsp+28]
	jmp	.LBB124_77
.LBB124_76:                             //   in Loop: Header=BB124_37 Depth=1
	mov	x1, x15
	add	x1, x13
	mov	x5, [x1]
add	x7, 48
	mov	r1, 255
	mov	r0, x7
	call	__bit_and
	mov	r1, -256
	mov	x7, rax
	mov	r0, x5
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x7
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	[x1], rax
	mov	r0, 1
.LBB124_77:                             //   in Loop: Header=BB124_37 Depth=1
	add	x13, r0
	jmp	.LBB124_79
.LBB124_78:
	mov	[rsp+12], x8
	jmp	.LBB124_148
.LBB124_79:                             //   in Loop: Header=BB124_37 Depth=1
	mov	r0, 1
	jg	x0, r0, .LBB124_37
	jmp	.LBB124_80
.LBB124_80:
	mov	[rsp+12], x8
	mov	x12, 0
	mov	r0, [rsp+4]
	mov	x8, 0
	jl	r0, x12, .LBB124_84
	jmp	.LBB124_147
.LBB124_81:
	mov	r0, x3
	call	__bit_not
	mul	rax, 78913
	mov	r1, 18
	mov	r0, rax
	call	__bit_shr
add	rax, -15
	mov	r1, 65535
	mov	r0, rax
	call	__bit_and
	mul	rax, 58255
	mov	r1, 19
	mov	r0, rax
	call	__bit_shr
	mov	r0, rax
add	r0, -2147483648
	mov	r2, -2147483647
	mov	r1, 1
	jg	r0, r2, .LBB124_83
// %bb.82:
	mov	r1, 0
.LBB124_83:
	mov	r0, 0
	sub	r0, r1
add	rax, -1
	mov	r1, 0
	mov	[rsp+12], r1
	mov	r1, rax
	call	__bit_and
	mov	x12, rax
	mov	x4, 0
.LBB124_84:
	mov	r0, [rsp+4]
	sub	x8, r0
	mov	x1, x4
	mov	[rsp+20], x8
.LBB124_85:                             // =>This Loop Header: Depth=1
                                        //     Child Loop BB124_135 Depth 2
                                        //     Child Loop BB124_114 Depth 2
                                        //     Child Loop BB124_117 Depth 2
	mov	x9, x12
	mov	r0, rsp
add	r0, 68
	mov	[r0], 0
	mov	r0, rsp
add	r0, 64
	mov	[r0], 0
	mov	r0, rsp
add	r0, 60
	mov	[r0], 0
	mov	r0, rsp
add	r0, 56
	mov	[r0], 0
	mov	r0, rsp
add	r0, 52
	mov	[r0], 0
	mov	[rsp+48], 0
add	x12, 1
	jz	x9, .LBB124_87
	jmp	.LBB124_86
.LBB124_86:                             //   in Loop: Header=BB124_85 Depth=1
	mov	r0, x9
	mul	r0, 9
	jg	r0, x8, .LBB124_102
	jmp	.LBB124_87
.LBB124_87:                             //   in Loop: Header=BB124_85 Depth=1
	mov	[rsp+32], x13
	mov	r2, rsp
add	r2, 48
	mov	r0, x8
	mov	[rsp+28], x12
	mov	r1, x12
	call	ryu_fill_pow10_split_2_exp
	mov	r0, rsp
add	r0, 52
	mov	x5, [rsp+48]
	mov	x10, [r0]
	mov	r1, 0
	mov	r3, 0
	mov	r0, x5
	mov	x4, [rsp+40]
	mov	r2, x4
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x12, t0
	mov	r0, x10
	mov	r2, x4
	call	__muldi3
	mov	x13, rax
	mov	x7, t0
	mov	r1, 0
	mov	r3, 0
	add	x12, x13
	mov	r0, x5
	mov	r2, x14
	call	__muldi3
add	rax, -2147483648
	mov	x11, t0
	mov	r0, rax
	add	r0, x12
	mov	x0, 1
	mov	r1, 1
	jl	r0, rax, .LBB124_89
// %bb.88:                              //   in Loop: Header=BB124_85 Depth=1
	mov	r1, 0
.LBB124_89:                             //   in Loop: Header=BB124_85 Depth=1
	mov	r0, 0
	sub	r0, r1
	mov	r1, 1
	call	__bit_and
add	x12, -2147483648
add	x13, -2147483648
	jl	x12, x13, .LBB124_91
// %bb.90:                              //   in Loop: Header=BB124_85 Depth=1
	mov	x0, 0
.LBB124_91:                             //   in Loop: Header=BB124_85 Depth=1
	mov	r0, 0
	sub	r0, x0
	mov	r1, 1
	add	x11, rax
	call	__bit_and
	add	x7, rax
	mov	r1, 0
	mov	r3, 0
	add	x11, x7
	mov	r0, x10
	mov	r2, x14
	call	__muldi3
	mov	x13, t0
	mov	x14, rax
	add	x14, x11
add	rax, -2147483648
	mov	x3, x14
add	x3, -2147483648
	mov	x0, 1
	mov	r1, 1
	jl	x3, rax, .LBB124_93
// %bb.92:                              //   in Loop: Header=BB124_85 Depth=1
	mov	r1, 0
.LBB124_93:                             //   in Loop: Header=BB124_85 Depth=1
	mov	r0, 0
	sub	r0, r1
	mov	r1, 1
	call	__bit_and
add	x11, -2147483648
add	x7, -2147483648
	mov	x10, rax
	jl	x11, x7, .LBB124_95
// %bb.94:                              //   in Loop: Header=BB124_85 Depth=1
	mov	x0, 0
.LBB124_95:                             //   in Loop: Header=BB124_85 Depth=1
	mov	r0, 0
	sub	r0, x0
	mov	r1, 1
	call	__bit_and
	add	x13, rax
	mov	r0, rsp
add	r0, 56
	mov	r1, rsp
add	r1, 60
	mov	x5, [r0]
	mov	x7, [r1]
	mov	r1, 0
	mov	r3, 0
	add	x13, x10
	mov	r0, x5
	mov	r2, x4
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x15, rax
	mov	x10, t0
	mov	r0, x5
	mov	x11, [rsp+44]
	mov	r2, x11
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x5, rax
	mov	x2, t0
	mov	r0, x7
	mov	r2, x4
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x6, rax
	mov	x0, t0
	mov	r0, x7
	mov	r2, x11
	call	__muldi3
	mov	r1, 0
	mov	x11, rax
	mov	x12, t0
	mov	r0, x10
	mov	r2, x6
	mov	r3, x0
	call	__adddi3
	mov	r1, 0
	mov	x10, t0
	mov	r0, rax
	mov	r2, x5
	mov	r3, x2
	call	__adddi3
	mov	r1, 0
	mov	x0, rax
	mov	x7, t0
	mov	r0, x15
	mov	r2, x14
	mov	r3, x13
	call	__adddi3
	mov	r2, 0
	mov	r1, t0
	mov	r0, rax
	mov	r3, x0
	call	__adddi3
	mov	x14, 1
	mov	r1, 1
	je	t0, x13, .LBB124_97
// %bb.96:                              //   in Loop: Header=BB124_85 Depth=1
	mov	r1, 0
.LBB124_97:                             //   in Loop: Header=BB124_85 Depth=1
add	x13, -2147483648
add	t0, -2147483648
	jl	t0, x13, .LBB124_99
// %bb.98:                              //   in Loop: Header=BB124_85 Depth=1
	mov	x14, 0
.LBB124_99:                             //   in Loop: Header=BB124_85 Depth=1
	mov	r0, 0
	sub	r0, r1
add	rax, -2147483648
	mov	r1, 1
	jl	rax, x3, .LBB124_101
// %bb.100:                             //   in Loop: Header=BB124_85 Depth=1
	mov	r1, 0
.LBB124_101:                            //   in Loop: Header=BB124_85 Depth=1
	sub	r1, x14
	call	__bit_and
	add	x14, rax
	mov	r1, 1
	mov	r0, x14
	call	__bit_and
	mov	r0, rsp
add	r0, 64
	mov	r1, rsp
add	r1, 68
	mov	x0, [r0]
	mov	x2, [r1]
	mov	r1, 0
	mov	r3, 0
	mov	x13, rax
	mov	r0, x0
	mov	r2, x4
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x5, rax
	mov	x6, t0
	mov	r0, x0
	mov	x8, [rsp+44]
	mov	r2, x8
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x0, rax
	mov	x14, t0
	mov	r0, x2
	mov	r2, x4
	call	__muldi3
	mov	r1, 0
	mov	r3, 0
	mov	x15, rax
	mov	x3, t0
	mov	r0, x2
	mov	r2, x8
	call	__muldi3
	mov	r1, 0
	mov	x2, rax
	mov	x4, t0
	mov	r0, x6
	mov	r2, x15
	mov	r3, x3
	call	__adddi3
	mov	r1, 0
	mov	x3, t0
	mov	r0, rax
	mov	r2, x0
	mov	r3, x14
	call	__adddi3
	mov	r1, 0
	mov	x0, rax
	mov	x6, t0
	mov	r0, x5
	mov	r2, x11
	mov	r3, x12
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x10
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x7
	call	__adddi3
	mov	r2, 0
	mov	x10, rax
	mov	x7, t0
	mov	r0, x10
	mov	r1, x7
	mov	r3, x0
	call	__adddi3
	mov	r1, 0
	mov	x11, t0
	mov	r0, x3
	mov	r2, x2
	mov	r3, x4
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x6
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x13
	call	__adddi3
	mov	r1, -512
	mov	x0, rax
	mov	x2, t0
	mov	r0, x0
	call	__bit_and
	mov	r2, 0
	mov	r3, 1000000000
	mov	x3, rax
	mov	r0, x0
	mov	r1, x2
	call	__umoddi3
	mov	r1, 1073741823
	mov	r0, t0
	call	__bit_and
	mov	r2, 1000000000
	mov	r3, 0
	mov	r0, x3
	mov	r1, rax
	call	__udivdi3
	mov	r2, -1000000000
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	call	__muldi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x0
	mov	r3, x2
	call	__adddi3
	mov	r1, -512
	mov	x0, rax
	mov	r0, x10
	call	__bit_and
	mov	r2, 1000000000
	mov	r3, 0
	mov	x2, rax
	mov	r0, x11
	mov	r1, x0
	call	__udivdi3
	mov	r2, -1000000000
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	call	__muldi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x11
	mov	r3, x0
	call	__adddi3
	mov	r2, 1000000000
	mov	r3, 0
	mov	r0, x2
	mov	r1, rax
	call	__udivdi3
	mov	r2, -1000000000
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	call	__muldi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x10
	mov	r3, x7
	call	__adddi3
	mov	x7, rax
	jz	x1, .LBB124_119
	jmp	.LBB124_103
.LBB124_102:                            //   in Loop: Header=BB124_85 Depth=1
	mov	x4, 0
	jz	x1, .LBB124_146
	jmp	.LBB124_104
.LBB124_103:                            //   in Loop: Header=BB124_85 Depth=1
	mov	r0, x1
add	r0, -2147483639
	mov	x4, 9
	mov	x15, [rsp+24]
	mov	x13, [rsp+32]
	mov	x14, [rsp+44]
	mov	x8, [rsp+20]
	mov	r1, [rsp+36]
	mov	x12, [rsp+28]
	jg	r0, r1, .LBB124_145
	jmp	.LBB124_106
.LBB124_104:                            //   in Loop: Header=BB124_85 Depth=1
	mov	x4, 9
	mov	r0, x1
add	r0, -2147483639
	mov	x7, 0
	mov	r1, [rsp+36]
	jg	r0, r1, .LBB124_145
	jmp	.LBB124_105
.LBB124_105:                            //   in Loop: Header=BB124_85 Depth=1
add	x1, 9
	mov	x9, x15
	add	x9, x13
	jmp	.LBB124_108
.LBB124_106:                            //   in Loop: Header=BB124_85 Depth=1
add	x1, 9
	mov	x9, x15
	add	x9, x13
	jz	x7, .LBB124_108
	jmp	.LBB124_107
.LBB124_107:                            // %memcpy.exit77
                                        //   in Loop: Header=BB124_85 Depth=1
	mov	x4, x9
	mov	r1, 10000
add	x4, 7
	mov	r0, x7
	call	__udivsi3
	mov	x10, rax
	mov	x0, x10
	mul	x0, -10000
	add	x0, x7
	mov	r1, 100
	mov	r0, x0
	call	__udivsi3
	mov	x11, rax
	mov	r0, x11
	mul	r0, -100
	add	r0, x0
	mov	r1, 1
	call	__bit_shl
	mov	x0, rax
	mov	x6, mcasm_static_6c0d4b28168d34450f36832cd0ebf870
	add	x0, x6
	mov	r0, [x0]
	mov	r1, 255
add	x0, 1
	call	__bit_and
	mov	r0, [x4]
	mov	x2, rax
	mov	x5, x9
	mov	r1, -256
add	x5, 8
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	[x4], rax
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x5]
	mov	r1, -256
	mov	x0, rax
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	[x5], rax
	mov	x4, x9
	mov	r1, 1
add	x4, 5
	mov	r0, x11
	call	__bit_shl
	mov	x0, rax
	add	x0, x6
	mov	r0, [x0]
	mov	r1, 255
add	x0, 1
	call	__bit_and
	mov	r0, [x4]
	mov	x2, rax
	mov	x5, x9
	mov	r1, -256
add	x5, 6
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	[x4], rax
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x5]
	mov	r1, -256
	mov	x0, rax
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r1, 100000000
	mov	[x5], rax
	mov	r0, x7
	call	__udivsi3
	mov	x7, rax
	mov	x0, x7
	mul	x0, -10000
	add	x0, x10
	mov	r1, 100
	mov	r0, x0
	call	__udivsi3
	mov	x10, rax
	mov	r0, x10
	mul	r0, -100
	add	r0, x0
	mov	r1, 1
	call	__bit_shl
	mov	x0, rax
	add	x0, x6
	mov	r0, [x0]
	mov	x4, x9
add	x4, 3
	mov	r1, 255
add	x0, 1
	call	__bit_and
	mov	r0, [x4]
	mov	x2, rax
	mov	x5, x9
	mov	r1, -256
add	x5, 4
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	[x4], rax
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x5]
	mov	r1, -256
	mov	x0, rax
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	[x5], rax
	mov	r0, x10
	call	__bit_shl
	mov	x0, rax
	add	x0, x6
	mov	r0, [x0]
	mov	x4, x9
add	x4, 1
	mov	r1, 255
add	x0, 1
	call	__bit_and
	mov	r0, [x4]
	mov	r1, -256
	mov	x2, rax
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	[x4], rax
	mov	r0, [x0]
	mov	x3, x9
	mov	r1, 255
add	x3, 2
	call	__bit_and
	mov	r0, [x3]
	mov	r1, -256
	mov	x0, rax
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	[x3], rax
	mov	r0, [x9]
	mov	r1, -256
add	x7, 48
	call	__bit_and
	mov	r1, 255
	mov	x0, rax
	mov	r0, x7
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	[x9], rax
	jmp	.LBB124_118
.LBB124_108:                            //   in Loop: Header=BB124_85 Depth=1
	mov	r1, 3
	mov	r0, x9
	call	__bit_and
	mov	x2, 9
	jz	rax, .LBB124_113
	jmp	.LBB124_109
.LBB124_109:                            // %.preheader111.preheader
                                        //   in Loop: Header=BB124_85 Depth=1
	mov	x0, x15
	add	x0, x13
	mov	r0, [x0]
	mov	x9, x0
	mov	r1, -256
add	x9, 1
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	r1, 3
	mov	[x0], rax
	mov	r0, x9
	call	__bit_and
	mov	x2, 8
	jz	rax, .LBB124_113
	jmp	.LBB124_110
.LBB124_110:                            // %.preheader111.1
                                        //   in Loop: Header=BB124_85 Depth=1
	mov	x2, x0
add	x2, 1
	mov	r0, [x2]
	mov	x9, x0
	mov	r1, -256
add	x9, 2
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	r1, 3
	mov	[x2], rax
	mov	r0, x9
	call	__bit_and
	mov	x2, 7
	jz	rax, .LBB124_113
	jmp	.LBB124_111
.LBB124_111:                            // %.preheader111.2
                                        //   in Loop: Header=BB124_85 Depth=1
	mov	x2, x0
add	x2, 2
	mov	r0, [x2]
	mov	x9, x0
	mov	r1, -256
add	x9, 3
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	r1, 3
	mov	[x2], rax
	mov	r0, x9
	call	__bit_and
	mov	x2, 6
	jz	rax, .LBB124_113
	jmp	.LBB124_112
.LBB124_112:                            // %.preheader111.3
                                        //   in Loop: Header=BB124_85 Depth=1
	mov	x9, x0
add	x0, 3
	mov	r0, [x0]
	mov	r1, -256
add	x9, 4
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	[x0], rax
	mov	x2, 5
.LBB124_113:                            // %.thread98.preheader
                                        //   in Loop: Header=BB124_85 Depth=1
	mov	r1, -2147483645
.LBB124_114:                            // %.thread98
                                        //   Parent Loop BB124_85 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, x2
	mov	[x9], 808464432
add	x9, 4
add	r0, 2147483644
add	x2, -4
	jg	r0, r1, .LBB124_114
	jmp	.LBB124_115
.LBB124_115:                            // %.loopexit5.i82
                                        //   in Loop: Header=BB124_85 Depth=1
	jz	x2, .LBB124_118
	jmp	.LBB124_116
.LBB124_116:                            // %.preheader110.preheader
                                        //   in Loop: Header=BB124_85 Depth=1
	mov	x0, 0
.LBB124_117:                            // %.preheader110
                                        //   Parent Loop BB124_85 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	x3, x9
	add	x3, x0
	mov	r0, [x3]
	mov	r1, -256
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
add	x0, 1
	mov	[x3], rax
	jne	x2, x0, .LBB124_117
	jmp	.LBB124_118
.LBB124_118:                            // %memset.exit84
                                        //   in Loop: Header=BB124_85 Depth=1
add	x13, 9
	mov	x4, x1
	jmp	.LBB124_146
.LBB124_119:                            //   in Loop: Header=BB124_85 Depth=1
	mov	x4, 0
	mov	x15, [rsp+24]
	mov	x13, [rsp+32]
	mov	x14, [rsp+44]
	mov	x8, [rsp+20]
	mov	x12, [rsp+28]
	mov	r2, 99999999
	jz	x7, .LBB124_146
	jmp	.LBB124_120
.LBB124_120:                            //   in Loop: Header=BB124_85 Depth=1
	mov	r0, x7
add	r0, -2147483648
	mov	r1, -1147483648
	jl	r0, r1, .LBB124_122
	jmp	.LBB124_121
.LBB124_121:
	call	abort
.LBB124_122:                            //   in Loop: Header=BB124_85 Depth=1
	mov	x4, 9
	jg	x7, r2, .LBB124_131
	jmp	.LBB124_123
.LBB124_123:                            //   in Loop: Header=BB124_85 Depth=1
	mov	x4, 8
	mov	r0, 9999999
	jg	x7, r0, .LBB124_131
	jmp	.LBB124_124
.LBB124_124:                            //   in Loop: Header=BB124_85 Depth=1
	mov	x4, 7
	mov	r0, 999999
	jg	x7, r0, .LBB124_131
	jmp	.LBB124_125
.LBB124_125:                            //   in Loop: Header=BB124_85 Depth=1
	mov	x4, 6
	mov	r0, 99999
	jg	x7, r0, .LBB124_131
	jmp	.LBB124_126
.LBB124_126:                            //   in Loop: Header=BB124_85 Depth=1
	mov	x4, 5
	mov	r0, 9999
	jg	x7, r0, .LBB124_131
	jmp	.LBB124_127
.LBB124_127:                            //   in Loop: Header=BB124_85 Depth=1
	mov	x4, 4
	mov	r0, 999
	jg	x7, r0, .LBB124_131
	jmp	.LBB124_128
.LBB124_128:                            //   in Loop: Header=BB124_85 Depth=1
	mov	x4, 3
	mov	r0, 99
	jg	x7, r0, .LBB124_131
	jmp	.LBB124_129
.LBB124_129:                            //   in Loop: Header=BB124_85 Depth=1
	mov	x4, 2
	mov	r0, 9
	jg	x7, r0, .LBB124_131
	jmp	.LBB124_130
.LBB124_130:                            //   in Loop: Header=BB124_85 Depth=1
	mov	x4, 1
.LBB124_131:                            //   in Loop: Header=BB124_85 Depth=1
	mov	r0, x9
	call	__bit_not
	mul	rax, 9
	add	rax, x4
	mov	r0, x4
add	r0, -2147483648
add	rax, -1
	mov	[rsp+12], rax
	mov	r1, [rsp+36]
	jg	r0, r1, .LBB124_145
	jmp	.LBB124_132
.LBB124_132:                            //   in Loop: Header=BB124_85 Depth=1
	mov	r0, [rsp+16]
	jz	r0, .LBB124_143
	jmp	.LBB124_133
.LBB124_133:                            //   in Loop: Header=BB124_85 Depth=1
	mov	x10, x15
	add	x10, x13
	mov	x2, 0
	mov	r0, 10000
	jl	x7, r0, .LBB124_137
	jmp	.LBB124_134
.LBB124_134:                            //   in Loop: Header=BB124_85 Depth=1
	mov	x1, 99999999
	mov	[rsp], x10
	mov	x6, x10
	add	x6, x4
	mov	x5, 0
	mov	x15, mcasm_static_6c0d4b28168d34450f36832cd0ebf870
.LBB124_135:                            // %memcpy.exit85
                                        //   Parent Loop BB124_85 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 10000
	mov	x9, x7
	mov	r0, x9
	call	__udivsi3
	mov	x7, rax
	mov	x0, x7
	mul	x0, -10000
	add	x0, x9
	mov	r1, 100
	mov	r0, x0
	call	__udivsi3
	mov	x10, rax
	mov	r0, x10
	mul	r0, -100
	add	r0, x0
	mov	r1, 1
	call	__bit_shl
	mov	x0, rax
	mov	x11, x6
	add	x11, x5
	add	x0, x15
	mov	r0, [x0]
	mov	x12, x11
add	x12, -1
	mov	r1, 255
add	x0, 1
	call	__bit_and
	mov	r0, [x12]
	mov	r1, -256
	mov	x2, rax
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	[x12], rax
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x11]
	mov	r1, -256
	mov	x0, rax
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	[x11], rax
	mov	r0, x10
	call	__bit_shl
	mov	x0, rax
	add	x0, x15
	mov	r0, [x0]
	mov	x10, x11
add	x10, -3
	mov	r1, 255
add	x0, 1
	call	__bit_and
	mov	r0, [x10]
	mov	x2, rax
	mov	r1, -256
add	x11, -2
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	[x10], rax
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x11]
	mov	r1, -256
	mov	x0, rax
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	[x11], rax
add	x5, -4
	jg	x9, x1, .LBB124_135
	jmp	.LBB124_136
.LBB124_136:                            // %.loopexit113.loopexit
                                        //   in Loop: Header=BB124_85 Depth=1
	mov	x2, 0
	sub	x2, x5
	mov	x12, [rsp+28]
	mov	x15, [rsp+24]
	mov	x10, [rsp]
.LBB124_137:                            // %.loopexit113
                                        //   in Loop: Header=BB124_85 Depth=1
	mov	r0, 100
	mov	x1, mcasm_static_6c0d4b28168d34450f36832cd0ebf870
	jl	x7, r0, .LBB124_139
	jmp	.LBB124_138
.LBB124_138:                            // %memcpy.exit87.loopexit
                                        //   in Loop: Header=BB124_85 Depth=1
	mov	r1, 65532
	mov	r0, x7
	call	__bit_and
	mov	r1, 2
	mov	r0, rax
	call	__bit_shr
	mul	rax, 5243
	mov	r1, 17
	mov	r0, rax
	call	__bit_shr
	mov	x9, rax
	mov	r0, x9
	mul	r0, -100
	add	r0, x7
	mov	r1, 65535
	call	__bit_and
	mov	r1, 1
	mov	r0, rax
	call	__bit_shl
	mov	x0, rax
	mov	x5, x10
	add	x5, x4
	sub	x5, x2
	add	x0, x1
	mov	r0, [x0]
	mov	x6, x5
add	x6, -1
	mov	r1, 255
add	x0, 1
	call	__bit_and
	mov	r0, [x6]
	mov	r1, -256
	mov	x2, rax
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	[x6], rax
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x5]
	mov	r1, -256
	mov	x0, rax
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	[x5], rax
	mov	x7, x9
.LBB124_139:                            // %memcpy.exit87
                                        //   in Loop: Header=BB124_85 Depth=1
	mov	r0, 10
	jl	x7, r0, .LBB124_141
	jmp	.LBB124_140
.LBB124_140:                            //   in Loop: Header=BB124_85 Depth=1
	mov	r1, 1
	mov	r0, x7
	call	__bit_shl
	mov	x0, rax
	add	x0, x1
	mov	r0, x0
add	r0, 1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	x5, x10
add	x5, 2
	mov	r0, [x5]
	mov	r1, -256
	mov	x2, rax
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	[x5], rax
	mov	x2, x10
add	x2, 1
	mov	r0, [x2]
	mov	r1, -256
	call	__bit_and
	mov	r1, 46
	mov	r0, rax
	call	__bit_or
	mov	[x2], rax
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	jmp	.LBB124_142
.LBB124_141:                            //   in Loop: Header=BB124_85 Depth=1
	mov	x0, x10
add	x0, 1
	mov	r0, [x0]
	mov	r1, -256
	call	__bit_and
	mov	r1, 46
	mov	r0, rax
	call	__bit_or
	mov	r1, 48
	mov	[x0], rax
	mov	r0, x7
	call	__bit_or
.LBB124_142:                            //   in Loop: Header=BB124_85 Depth=1
	mov	x0, [x10]
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, -256
	mov	x2, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, 255
	mov	x0, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	[x10], rax
	mov	r0, x4
add	r0, 1
	jmp	.LBB124_144
.LBB124_143:                            //   in Loop: Header=BB124_85 Depth=1
	mov	x1, x15
	add	x1, x13
	mov	x0, [x1]
add	x10, 48
	mov	r1, 255
	mov	r0, x10
	call	__bit_and
	mov	r1, -256
	mov	x2, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, 255
	mov	x0, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	[x1], rax
	mov	r0, 1
.LBB124_144:                            //   in Loop: Header=BB124_85 Depth=1
	add	x13, r0
	jmp	.LBB124_146
.LBB124_145:
	jmp	.LBB124_148
.LBB124_146:                            //   in Loop: Header=BB124_85 Depth=1
	mov	x1, x4
	mov	r0, 200
	jne	x12, r0, .LBB124_85
	jmp	.LBB124_147
.LBB124_147:                            // %.loopexit114
	mov	x6, [rsp+8]
	sub	x6, x4
	mov	r1, 0
	mov	x1, x4
	mov	x7, 0
	jmp	.LBB124_152
.LBB124_148:
	mov	x2, [rsp+8]
	mov	x6, x2
	sub	x6, x1
	mov	r0, x6
add	r0, -2147483648
	mov	r2, x4
add	r2, -2147483648
	mov	r1, 0
	jle	r2, r0, .LBB124_152
	jmp	.LBB124_149
.LBB124_149:
	mov	x0, [rsp+16]
	sub	x0, x4
add	x0, 1
.LBB124_150:                            // =>This Inner Loop Header: Depth=1
	mov	r1, 10
	mov	x8, x7
	mov	r0, x8
	call	__udivsi3
add	x0, 1
	mov	x7, rax
	jne	x1, x0, .LBB124_150
	jmp	.LBB124_151
.LBB124_151:
	mov	r1, x7
	mul	r1, -10
	add	r1, x8
	mov	r0, 5
	je	r1, r0, .LBB124_155
	jmp	.LBB124_152
.LBB124_152:
	mov	r2, 5
	mov	r0, 1
	jg	r1, r2, .LBB124_154
// %bb.153:
	mov	r0, 0
.LBB124_154:
	mov	r1, 1
	call	__bit_and
	mov	x5, rax
	jmp	.LBB124_179
.LBB124_155:
	mov	r0, [rsp+12]
	sub	x2, r0
	mov	x11, x2
	mov	r0, [rsp+4]
	add	r0, x2
	mov	x8, 0
	sub	x8, r0
	mov	x9, 1
	mov	x10, [rsp+40]
	jl	x8, x9, .LBB124_162
	jmp	.LBB124_156
.LBB124_156:
	mov	r0, 59
	mov	x5, 1
	jg	x8, r0, .LBB124_179
	jmp	.LBB124_157
.LBB124_157:
	mov	r0, x10
	mov	r1, x14
	call	__bit_or
	jnz	rax, .LBB124_159
	jmp	.LBB124_158
.LBB124_158:
	call	abort
.LBB124_159:
	mov	r1, 31
	mov	r0, x8
	call	__bit_and
	mov	x0, rax
	mov	r1, 0
	sub	r1, x0
	mov	x5, 0
	mov	r0, x0
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
add	x8, -32
	mov	r1, 31
	mov	x2, rax
	mov	r0, x8
	call	__bit_shr
	mov	r0, -1
	mov	x3, rax
	mov	r1, x0
	call	__bit_shl
	mov	x4, 0
	sub	x4, x3
	mov	x3, rax
	mov	r0, x4
	call	__bit_not
	mov	r0, x3
	mov	r1, rax
	call	__bit_and
	mov	r0, 32
	sub	r0, x0
	mov	r1, 31
	mov	x0, rax
	call	__bit_and
	mov	r0, -1
	mov	r1, rax
	call	__bit_shr
	mov	r1, 0
	sub	r1, x2
	mov	r0, rax
	call	__bit_and
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x4
	call	__bit_and
	mov	r0, rax
	mov	r1, x0
	call	__bit_or
	mov	x0, rax
	mov	r0, x3
	mov	r1, x4
	call	__bit_and
	mov	x2, rax
	mov	r0, x0
	call	__bit_not
	mov	x0, rax
	mov	r0, x2
	call	__bit_not
	mov	x2, rax
	mov	r0, x14
	mov	r1, x0
	call	__bit_and
	mov	x0, rax
	mov	r0, x10
	mov	r1, x2
	call	__bit_and
	mov	r0, rax
	mov	r1, x0
	call	__bit_or
	je	rax, x5, .LBB124_161
// %bb.160:
	mov	x9, 0
.LBB124_161:
.LBB124_162:
	mov	x0, -1
	jg	x11, x0, .LBB124_175
	jmp	.LBB124_163
.LBB124_163:
	mov	r1, 1
	mov	r0, x9
	call	__bit_and
	jz	rax, .LBB124_175
	jmp	.LBB124_164
.LBB124_164:
	mov	r0, x10
	mov	r1, x14
	call	__bit_or
	jz	rax, .LBB124_166
	jmp	.LBB124_165
.LBB124_165:                            // %.preheader109.preheader
	mov	x0, 0
	sub	x0, x11
	mov	x2, -1
	mov	x3, -1288490189
	mov	x4, -1288490188
	mov	x5, 858993459
	jmp	.LBB124_167
.LBB124_166:
	call	abort
.LBB124_167:                            // %.preheader109
                                        // =>This Inner Loop Header: Depth=1
	mov	r2, -858993459
	mov	r3, -858993460
	mov	r0, [rsp+40]
	mov	r1, x14
	call	__muldi3
	mov	[rsp+40], rax
	mov	x14, t0
	mov	r0, x14
add	r0, -2147483648
	mov	r1, 1
	mov	x8, 1
	jl	r0, x3, .LBB124_169
// %bb.168:                             // %.preheader109
                                        //   in Loop: Header=BB124_167 Depth=1
	mov	x8, 0
.LBB124_169:                            // %.preheader109
                                        //   in Loop: Header=BB124_167 Depth=1
	mov	r0, [rsp+40]
add	r0, -2147483648
	jl	r0, x4, .LBB124_171
// %bb.170:                             // %.preheader109
                                        //   in Loop: Header=BB124_167 Depth=1
	mov	r1, 0
.LBB124_171:                            // %.preheader109
                                        //   in Loop: Header=BB124_167 Depth=1
	mov	r2, 1
	je	x14, x5, .LBB124_173
// %bb.172:                             // %.preheader109
                                        //   in Loop: Header=BB124_167 Depth=1
	mov	r2, 0
.LBB124_173:                            // %.preheader109
                                        //   in Loop: Header=BB124_167 Depth=1
	sub	r1, x8
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	rax, x8
add	x2, 1
	jnz	rax, .LBB124_167
	jmp	.LBB124_174
.LBB124_174:
add	x0, -2147483648
add	x2, -2147483648
	mov	x5, 1
	jge	x2, x0, .LBB124_178
	jmp	.LBB124_179
.LBB124_175:
	mov	x5, 1
	mov	r0, 1
	jg	x11, x0, .LBB124_177
// %bb.176:
	mov	r0, 0
.LBB124_177:
	mov	r1, x9
	call	__bit_and
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB124_179
	jmp	.LBB124_178
.LBB124_178:
	mov	x5, 2
.LBB124_179:
	jz	x1, .LBB124_201
	jmp	.LBB124_180
.LBB124_180:
	mov	x2, x15
	add	x2, x13
	jnz	x7, .LBB124_196
	jmp	.LBB124_181
.LBB124_181:
	mov	r1, 3
	mov	r0, x2
	call	__bit_and
	mov	x0, x6
	mov	x8, [rsp+12]
	jz	rax, .LBB124_186
	jmp	.LBB124_182
.LBB124_182:                            // %.preheader106.preheader
	mov	x0, x15
	add	x0, x13
add	x0, 1
	mov	x1, 0
.LBB124_183:                            // %.preheader106
                                        // =>This Inner Loop Header: Depth=1
	je	x6, x1, .LBB124_213
	jmp	.LBB124_184
.LBB124_184:                            //   in Loop: Header=BB124_183 Depth=1
	mov	x3, x2
	add	x3, x1
	mov	r0, [x3]
	mov	r1, -256
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	r0, x0
	add	r0, x1
	mov	r1, 3
	mov	[x3], rax
	call	__bit_and
add	x1, 1
	jnz	rax, .LBB124_183
	jmp	.LBB124_185
.LBB124_185:                            // %.loopexit7.i88.loopexit
	add	x2, x1
	mov	x0, x6
	sub	x0, x1
.LBB124_186:                            // %.loopexit7.i88
	mov	r0, x0
add	r0, -2147483648
	mov	r1, -2147483644
	jl	r0, r1, .LBB124_193
	jmp	.LBB124_187
.LBB124_187:
	mov	r1, -2147483632
	jl	r0, r1, .LBB124_189
	jmp	.LBB124_188
.LBB124_188:                            // %.preheader.i90.preheader
	mov	r0, -2147483633
	jmp	.LBB124_191
.LBB124_189:                            // %.preheader435
	mov	r0, -2147483645
	mov	r1, x0
	jmp	.LBB124_192
.LBB124_190:
	mov	r0, 3
	jg	x0, r0, .LBB124_189
	jmp	.LBB124_193
.LBB124_191:                            // %.preheader.i90
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, x0
	mov	r2, x2
add	r2, 4
	mov	[x2], 808464432
	mov	r3, x2
add	r3, 8
	mov	[r2], 808464432
	mov	r2, x2
add	r2, 12
	mov	[r3], 808464432
add	x2, 16
	mov	[r2], 808464432
add	r1, 2147483632
add	x0, -16
	jg	r1, r0, .LBB124_191
	jmp	.LBB124_190
.LBB124_192:                            // =>This Inner Loop Header: Depth=1
	mov	[x2], 808464432
add	x0, -4
	mov	r2, r1
add	r2, 2147483644
add	x2, 4
	mov	r1, x0
	jg	r2, r0, .LBB124_192
	jmp	.LBB124_193
.LBB124_193:                            // %.loopexit5.i89
	jz	x0, .LBB124_213
	jmp	.LBB124_194
.LBB124_194:                            // %.preheader105.preheader
	mov	x1, x2
.LBB124_195:                            // %.preheader105
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x2]
add	x0, -1
	mov	r1, -256
add	x1, 1
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	[x2], rax
	mov	x2, x1
	jz	x0, .LBB124_213
	jmp	.LBB124_195
.LBB124_196:
	mov	x1, x6
add	x1, -1
	mov	x3, 0
	jz	x1, .LBB124_199
	jmp	.LBB124_197
.LBB124_197:
	mov	x9, x13
	add	x9, x6
	add	x9, x15
add	x9, -1
	mov	x11, 0
	mov	x10, mcasm_static_6c0d4b28168d34450f36832cd0ebf870
add	x1, -2147483648
	mov	x4, x7
.LBB124_198:                            // %memcpy.exit92
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 100
	mov	r0, x4
	call	__udivsi3
	mov	x7, rax
	mov	r0, x7
	mul	r0, -100
	add	x4, r0
	mov	r1, 1
	mov	r0, x4
	call	__bit_shl
	mov	x0, rax
	add	x0, x10
	mov	r0, [x0]
	mov	x12, x9
add	x12, -1
	mov	r1, 255
add	x0, 1
	call	__bit_and
	mov	r0, [x12]
	mov	r1, -256
	mov	x4, rax
	call	__bit_and
	mov	r1, 255
	mov	x8, rax
	mov	r0, x4
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x8
	mov	r1, rax
	call	__bit_or
	mov	[x12], rax
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x9]
	mov	r1, -256
	mov	x0, rax
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	[x9], rax
add	x3, 2
	mov	r0, x11
add	r0, -2147483646
add	x9, -2
	mov	x4, x7
	mov	x11, x3
	jl	r0, x1, .LBB124_198
	jmp	.LBB124_199
.LBB124_199:                            // %.loopexit108
	mov	r0, x6
add	r0, -2147483648
	mov	r1, x3
add	r1, -2147483648
	mov	x8, [rsp+12]
	jge	r1, r0, .LBB124_213
	jmp	.LBB124_200
.LBB124_200:
	mov	r1, 10
	mov	r0, x7
	call	__umodsi3
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	x0, rax
	mov	r0, x3
	call	__bit_not
	add	x2, x6
	add	x2, rax
	mov	r0, [x2]
	mov	r1, -256
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	[x2], rax
	jmp	.LBB124_213
.LBB124_201:
	mov	r0, [rsp+16]
	jz	r0, .LBB124_212
	jmp	.LBB124_202
.LBB124_202:
	mov	x1, x15
	add	x1, x13
	mov	x0, 0
	mov	r0, x7
add	r0, -2147483648
	mov	r1, -2147473648
	mov	x9, x1
	add	x9, x6
	jl	r0, r1, .LBB124_206
	jmp	.LBB124_203
.LBB124_203:
	mov	[rsp+32], x13
	mov	x10, 0
	mov	x11, mcasm_static_6c0d4b28168d34450f36832cd0ebf870
	mov	x12, -2047483649
.LBB124_204:                            // %memcpy.exit93
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 10000
	mov	x2, x7
	mov	r0, x2
	call	__udivsi3
	mov	x7, rax
	mov	x0, x7
	mul	x0, -10000
	add	x0, x2
	mov	r1, 100
	mov	r0, x0
	call	__udivsi3
	mov	x3, rax
	mov	r0, x3
	mul	r0, -100
	add	r0, x0
	mov	r1, 1
	call	__bit_shl
	mov	x0, rax
	mov	x13, x9
	add	x13, x10
	add	x0, x11
	mov	r0, [x0]
	mov	x14, x13
add	x14, -1
	mov	r1, 255
add	x0, 1
	call	__bit_and
	mov	r0, [x14]
	mov	r1, -256
	mov	x4, rax
	call	__bit_and
	mov	r1, 255
	mov	x8, rax
	mov	r0, x4
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x8
	mov	r1, rax
	call	__bit_or
	mov	[x14], rax
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x13]
	mov	r1, -256
	mov	x0, rax
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	[x13], rax
	mov	r0, x3
	call	__bit_shl
	mov	x0, rax
	add	x0, x11
	mov	r0, [x0]
	mov	x8, x13
add	x8, -3
	mov	r1, 255
add	x0, 1
	call	__bit_and
	mov	r0, [x8]
	mov	x3, rax
	mov	r1, -256
add	x13, -2
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	[x8], rax
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x13]
	mov	r1, -256
	mov	x0, rax
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	[x13], rax
add	x2, -2147483648
add	x10, -4
	jg	x2, x12, .LBB124_204
	jmp	.LBB124_205
.LBB124_205:                            // %.loopexit104.loopexit
	mov	x0, 0
	sub	x0, x10
	mov	x13, [rsp+32]
.LBB124_206:                            // %.loopexit104
	mov	r0, 100
	mov	x8, [rsp+12]
	jl	x7, r0, .LBB124_208
	jmp	.LBB124_207
.LBB124_207:                            // %memcpy.exit95.loopexit
	mov	r1, 65532
	mov	r0, x7
	call	__bit_and
	mov	r1, 2
	mov	r0, rax
	call	__bit_shr
	mul	rax, 5243
	mov	r1, 17
	mov	r0, rax
	call	__bit_shr
	mov	x2, rax
	mov	r0, x2
	mul	r0, -100
	add	r0, x7
	mov	r1, 65535
	call	__bit_and
	mov	r1, 1
	mov	r0, rax
	call	__bit_shl
	sub	x9, x0
	mov	x4, mcasm_static_6c0d4b28168d34450f36832cd0ebf870
	add	x4, rax
	mov	r0, [x4]
	mov	x7, x9
add	x7, -1
	mov	r1, 255
add	x4, 1
	call	__bit_and
	mov	r0, [x7]
	mov	r1, -256
	mov	x0, rax
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	[x7], rax
	mov	r0, [x4]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x9]
	mov	r1, -256
	mov	x0, rax
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	[x9], rax
	mov	x7, x2
.LBB124_208:                            // %memcpy.exit95
	mov	r0, 10
	jl	x7, r0, .LBB124_210
	jmp	.LBB124_209
.LBB124_209:
	mov	r1, 1
	mov	r0, x7
	call	__bit_shl
	mov	x3, mcasm_static_6c0d4b28168d34450f36832cd0ebf870
	add	x3, rax
	mov	r0, x3
add	r0, 1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	x4, x1
add	x4, 2
	mov	r0, [x4]
	mov	r1, -256
	mov	x0, rax
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	[x4], rax
	mov	x0, x1
add	x0, 1
	mov	r0, [x0]
	mov	r1, -256
	call	__bit_and
	mov	r1, 46
	mov	r0, rax
	call	__bit_or
	mov	[x0], rax
	mov	r0, [x3]
	mov	r1, 255
	call	__bit_and
	jmp	.LBB124_211
.LBB124_210:
	mov	x0, x1
add	x0, 1
	mov	r0, [x0]
	mov	r1, -256
	call	__bit_and
	mov	r1, 46
	mov	r0, rax
	call	__bit_or
	mov	r1, 48
	mov	[x0], rax
	mov	r0, x7
	call	__bit_or
.LBB124_211:
	mov	x0, [x1]
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, -256
	mov	x2, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, 255
	mov	x0, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	[x1], rax
add	x6, 1
	jmp	.LBB124_213
.LBB124_212:
	mov	x1, x15
	add	x1, x13
	mov	x0, [x1]
add	x7, 48
	mov	r1, 255
	mov	r0, x7
	call	__bit_and
	mov	r1, -256
	mov	x2, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, 255
	mov	x0, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	[x1], rax
	mov	x6, 1
	mov	x8, [rsp+12]
.LBB124_213:                            // %memset.exit91
	add	x6, x13
	jz	x5, .LBB124_226
	jmp	.LBB124_214
.LBB124_214:
	mov	x0, 0
	jz	x6, .LBB124_220
	jmp	.LBB124_215
.LBB124_215:                            // %.preheader103.preheader
	mov	x2, x15
add	x2, -1
	mov	x4, 46
	mov	x7, 57
	mov	x3, x6
.LBB124_216:                            // %.preheader103
                                        // =>This Inner Loop Header: Depth=1
	mov	x1, x2
	add	x1, x3
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
	je	rax, x4, .LBB124_225
	jmp	.LBB124_217
.LBB124_217:                            // %.preheader103
                                        //   in Loop: Header=BB124_216 Depth=1
	je	rax, x7, .LBB124_221
	jmp	.LBB124_218
.LBB124_218:                            // %.preheader103
	mov	r0, 45
	jne	rax, r0, .LBB124_222
	jmp	.LBB124_219
.LBB124_219:                            // %.preheader103..loopexit.loopexit_crit_edge
	mov	x0, x3
.LBB124_220:                            // %.loopexit
	add	x0, x15
	mov	r0, [x0]
	mov	r1, -256
	call	__bit_and
	mov	r1, 49
	mov	r0, rax
	call	__bit_or
	mov	[x0], rax
add	x8, 1
	jmp	.LBB124_226
.LBB124_221:                            //   in Loop: Header=BB124_216 Depth=1
	mov	r0, [x1]
	mov	r1, -256
	call	__bit_and
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	[x1], rax
	mov	x5, 1
	jmp	.LBB124_225
.LBB124_222:
	mov	r1, 1
	mov	x2, rax
	mov	r0, rax
	call	__bit_and
	mov	r0, 2
	jne	x5, r0, .LBB124_224
	jmp	.LBB124_223
.LBB124_223:
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB124_226
	jmp	.LBB124_224
.LBB124_224:
	mov	x0, [x1]
	mov	r0, x2
add	r0, 1
	mov	r1, 255
	call	__bit_and
	mov	r1, -256
	mov	x2, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, 255
	mov	x0, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	[x1], rax
	jmp	.LBB124_226
.LBB124_225:                            //   in Loop: Header=BB124_216 Depth=1
add	x3, -1
	jz	x3, .LBB124_220
	jmp	.LBB124_216
.LBB124_226:
	mov	x4, x15
	add	x4, x6
	mov	r0, [x4]
	mov	r1, -256
	call	__bit_and
	mov	r1, 101
	mov	r0, rax
	call	__bit_or
	mov	[x4], rax
	mov	r0, 0
	mov	r1, 1
	jl	x8, r0, .LBB124_228
// %bb.227:
	mov	r1, 0
.LBB124_228:
	sub	r0, r1
	mov	r1, 2
	call	__bit_and
	mov	r0, -1
add	rax, 43
	jg	x8, r0, .LBB124_230
	jmp	.LBB124_229
.LBB124_229:
	mov	r0, 0
	sub	r0, x8
	mov	x8, r0
.LBB124_230:
	mov	x1, x4
add	x1, 1
	mov	x0, [x1]
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, -256
	mov	x2, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, 255
	mov	x0, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	[x1], rax
	mov	x0, x6
	mov	r0, 100
add	x0, 2
	jl	x8, r0, .LBB124_232
	jmp	.LBB124_231
.LBB124_231:                            // %memcpy.exit96
	mov	r1, 10
	mov	r0, x8
	call	__udivsi3
	mov	x2, rax
	mov	r1, 1
	add	x15, x0
	mov	r0, x2
	call	__bit_shl
	mov	x1, mcasm_static_6c0d4b28168d34450f36832cd0ebf870
	add	x1, rax
	mov	r0, [x1]
	mov	r1, 255
add	x1, 1
	call	__bit_and
	mov	r0, [x15]
	mov	x0, rax
	mov	x5, x15
	mov	r1, -256
add	x5, 1
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	[x15], rax
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x5]
	mov	r1, -256
	mov	x0, rax
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mul	x2, 246
	add	x2, x8
	mov	r1, 48
	mov	[x5], rax
	mov	r0, x2
	call	__bit_or
add	x4, 4
	mov	x0, [x4]
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, -256
	mov	x1, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, 255
	mov	x0, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	[x4], rax
add	x6, 5
	jmp	.LBB124_233
.LBB124_232:                            // %memcpy.exit97
	mov	r1, 1
	add	x15, x0
	mov	r0, x8
	call	__bit_shl
	mov	x2, mcasm_static_6c0d4b28168d34450f36832cd0ebf870
	add	x2, rax
	mov	r0, [x2]
	mov	r1, 255
add	x2, 1
	call	__bit_and
	mov	r0, [x15]
	mov	x0, rax
	mov	x3, x15
	mov	r1, -256
add	x3, 1
	call	__bit_and
	mov	r1, 255
	mov	x1, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	[x15], rax
	mov	r0, [x2]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x3]
	mov	r1, -256
	mov	x0, rax
	call	__bit_and
	mov	r1, 255
	mov	x1, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	[x3], rax
add	x6, 4
.LBB124_233:                            // %memcpy.exit63
	mov	rax, x6
	mov	x15, [rsp+72]
	mov	x14, [rsp+76]
	mov	x13, [rsp+80]
	mov	x12, [rsp+84]
	mov	x11, [rsp+88]
	mov	x10, [rsp+92]
	mov	x9, [rsp+96]
	mov	x8, [rsp+100]
	mov	x7, [rsp+104]
	mov	x6, [rsp+108]
	mov	x5, [rsp+112]
	mov	x4, [rsp+116]
	mov	x3, [rsp+120]
	mov	x2, [rsp+124]
	mov	x1, [rsp+128]
	mov	x0, [rsp+132]
add	rsp, 136
	ret
// -- End function
// -- Begin function d2exp_buffered
d2exp_buffered:                         // @d2exp_buffered
// %bb.0:
sub	rsp, 8
	mov	[rsp+4], x0
	mov	[rsp], x1
	mov	x0, r3
	call	d2exp_buffered_n
	mov	x1, rax
	add	x1, x0
	mov	r0, [x1]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	[x1], rax
	mov	x1, [rsp]
	mov	x0, [rsp+4]
add	rsp, 8
	ret
// -- End function
// -- Begin function d2exp
d2exp:                                  // @d2exp
// %bb.0:
sub	rsp, 16
	mov	[rsp+12], x0
	mov	[rsp+8], x1
	mov	[rsp+4], x2
	mov	[rsp], x3
	mov	x0, r0
	mov	r0, 2000
	mov	x1, r2
	mov	x2, r1
	call	malloc
	mov	x3, rax
	mov	r0, x0
	mov	r1, x2
	mov	r2, x1
	mov	r3, x3
	call	d2exp_buffered_n
	mov	x0, rax
	add	x0, x3
	mov	r0, [x0]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	[x0], rax
	mov	rax, x3
	mov	x3, [rsp]
	mov	x2, [rsp+4]
	mov	x1, [rsp+8]
	mov	x0, [rsp+12]
add	rsp, 16
	ret
// -- End function
// -- Begin function strtol
strtol:                                 // @strtol
// %bb.0:
sub	rsp, 48
	mov	[rsp+44], x0
	mov	[rsp+40], x1
	mov	[rsp+36], x2
	mov	[rsp+32], x3
	mov	[rsp+28], x4
	mov	[rsp+24], x5
	mov	[rsp+20], x6
	mov	[rsp+16], x7
	mov	[rsp+12], x8
	mov	[rsp+8], x9
	mov	[rsp+4], x10
	mov	[rsp], x11
	mov	x3, r2
add	r2, -2147483648
	mov	r3, -2147483612
	mov	x0, r1
	mov	x1, r0
	jg	r2, r3, .LBB127_3
	jmp	.LBB127_1
.LBB127_1:
	mov	r0, 1
	je	x3, r0, .LBB127_3
	jmp	.LBB127_2
.LBB127_2:                              // %.preheader6.preheader
	mov	x6, x1
add	x6, 1
	mov	x2, -2147483643
	mov	x4, 32
	jmp	.LBB127_5
.LBB127_3:
	mov	r0, mcasm_static_dc0ade02eb8bb208cf058fd41e6d2a5b
	mov	[r0], 22
	mov	x5, 0
	jz	x0, .LBB127_40
	jmp	.LBB127_4
.LBB127_4:
	mov	[x0], x1
	jmp	.LBB127_40
.LBB127_5:                              // %.preheader6
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, x6
add	r0, -1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r0, rax
add	r0, 2147483639
	jl	r0, x2, .LBB127_9
	jmp	.LBB127_6
.LBB127_6:                              // %.preheader6
                                        //   in Loop: Header=BB127_5 Depth=1
	je	rax, x4, .LBB127_9
	jmp	.LBB127_7
.LBB127_7:                              // %.preheader6
	mov	r0, 43
	je	rax, r0, .LBB127_11
	jmp	.LBB127_8
.LBB127_8:                              // %.preheader6
	mov	r0, 45
	je	rax, r0, .LBB127_10
	jmp	.LBB127_13
.LBB127_9:                              // %.preheader6.backedge
                                        //   in Loop: Header=BB127_5 Depth=1
add	x6, 1
	jmp	.LBB127_5
.LBB127_10:                             // %.loopexit8.loopexit
	mov	x2, 1
	jmp	.LBB127_12
.LBB127_11:                             // %.loopexit8.loopexit1
	mov	x2, 0
.LBB127_12:                             // %.loopexit8
	mov	r0, [x6]
	mov	r1, 255
add	x6, 1
	call	__bit_and
	jmp	.LBB127_14
.LBB127_13:                             // %.loopexit7.loopexit
	mov	x2, 0
.LBB127_14:                             // %.loopexit7
	mov	r1, 255
	mov	x5, rax
	mov	r0, rax
	call	__bit_and
	mov	r0, 48
	jne	rax, r0, .LBB127_20
	jmp	.LBB127_15
.LBB127_15:
	mov	r0, [x6]
	mov	r1, 255
	call	__bit_and
	mov	r1, -33
	mov	r0, rax
	call	__bit_and
	mov	r1, 47
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	jnz	rax, .LBB127_18
	jmp	.LBB127_16
.LBB127_16:
	mov	r1, 255
	mov	r0, x4
	call	__bit_and
	mov	r0, 88
	jne	rax, r0, .LBB127_18
	jmp	.LBB127_17
.LBB127_17:
	mov	r0, x6
add	r0, 1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	x5, rax
	mov	x7, x6
add	x7, 2
	mov	x4, 16
	mov	x1, x6
	jmp	.LBB127_22
.LBB127_18:
	mov	x4, 8
	mov	x5, 48
	mov	x7, x6
	jz	x3, .LBB127_22
	jmp	.LBB127_19
.LBB127_19:
	mov	x7, x6
	mov	x4, x3
	jmp	.LBB127_22
.LBB127_20:
	mov	x4, 10
	mov	x7, x6
	jz	x3, .LBB127_22
	jmp	.LBB127_21
.LBB127_21:
	mov	x7, x6
	mov	x4, x3
.LBB127_22:
	mov	x3, x2
add	x3, 2147483647
	mov	r0, x3
	mov	r1, x4
	call	__udivsi3
	mov	r1, 255
	mov	x6, rax
	mov	r0, x5
	call	__bit_and
	mov	x5, rax
	mov	r0, x5
add	r0, -1
	mov	r1, 32
	call	__bit_or
	mov	r0, x5
add	r0, -2147483648
	mov	r1, -2147483591
add	rax, -38
	jg	r0, r1, .LBB127_24
	jmp	.LBB127_23
.LBB127_23:
	mov	rax, x5
.LBB127_24:
	mov	x8, x4
add	x8, -2147483648
	mov	r0, rax
add	r0, 2147483600
	mov	x5, 0
	jge	r0, x8, .LBB127_34
	jmp	.LBB127_25
.LBB127_25:                             // %.preheader.preheader
	mov	r0, x6
	mul	r0, x4
	mov	x9, x3
	sub	x9, r0
add	rax, -48
add	x7, -1
	mov	x10, x6
add	x10, -2147483648
	mov	x11, -2147483591
add	x9, -2147483648
	mov	x1, x7
.LBB127_26:                             // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, x5
add	r0, -2147483648
	jg	r0, x10, .LBB127_29
	jmp	.LBB127_27
.LBB127_27:                             //   in Loop: Header=BB127_26 Depth=1
	mov	r0, rax
add	r0, -2147483648
	jle	r0, x9, .LBB127_30
	jmp	.LBB127_28
.LBB127_28:                             //   in Loop: Header=BB127_26 Depth=1
	jne	x5, x6, .LBB127_30
	jmp	.LBB127_29
.LBB127_29:                             //   in Loop: Header=BB127_26 Depth=1
	mov	r1, 2
	mov	r0, x2
	call	__bit_or
	mov	x2, rax
	jmp	.LBB127_31
.LBB127_30:                             //   in Loop: Header=BB127_26 Depth=1
	mul	x5, x4
	add	x5, rax
.LBB127_31:                             //   in Loop: Header=BB127_26 Depth=1
add	x1, 1
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
	mov	x7, rax
	mov	r0, x7
add	r0, -1
	mov	r1, 32
	call	__bit_or
	mov	r0, rax
	mov	r1, x7
add	r1, -2147483648
add	r0, -38
	jg	r1, x11, .LBB127_33
	jmp	.LBB127_32
.LBB127_32:                             //   in Loop: Header=BB127_26 Depth=1
	mov	r0, x7
.LBB127_33:                             //   in Loop: Header=BB127_26 Depth=1
	mov	rax, r0
add	r0, 2147483600
add	rax, -48
	jl	r0, x8, .LBB127_26
	jmp	.LBB127_34
.LBB127_34:                             // %.loopexit
	jz	x0, .LBB127_36
	jmp	.LBB127_35
.LBB127_35:
	mov	[x0], x1
.LBB127_36:
	mov	r1, 255
	mov	r0, x2
	call	__bit_and
	mov	r1, 1
	mov	x0, rax
	mov	r0, x0
	call	__bit_and
	jz	rax, .LBB127_38
	jmp	.LBB127_37
.LBB127_37:
	mov	r0, 0
	sub	r0, x5
	mov	x5, r0
.LBB127_38:
	mov	r1, 2
	mov	r0, x0
	call	__bit_and
	jz	rax, .LBB127_40
	jmp	.LBB127_39
.LBB127_39:
	mov	r0, mcasm_static_dc0ade02eb8bb208cf058fd41e6d2a5b
	mov	[r0], 34
	mov	x5, x3
.LBB127_40:
	mov	rax, x5
	mov	x11, [rsp]
	mov	x10, [rsp+4]
	mov	x9, [rsp+8]
	mov	x8, [rsp+12]
	mov	x7, [rsp+16]
	mov	x6, [rsp+20]
	mov	x5, [rsp+24]
	mov	x4, [rsp+28]
	mov	x3, [rsp+32]
	mov	x2, [rsp+36]
	mov	x1, [rsp+40]
	mov	x0, [rsp+44]
add	rsp, 48
	ret
// -- End function
// -- Begin function strtoll
strtoll:                                // @strtoll
// %bb.0:
sub	rsp, 52
	mov	[rsp+48], x0
	mov	[rsp+44], x1
	mov	[rsp+40], x2
	mov	[rsp+36], x3
	mov	[rsp+32], x4
	mov	[rsp+28], x5
	mov	[rsp+24], x6
	mov	[rsp+20], x7
	mov	[rsp+16], x8
	mov	[rsp+12], x9
	mov	[rsp+8], x10
	mov	[rsp+4], x11
	mov	[rsp], x12
	mov	x3, r2
add	r2, -2147483648
	mov	r3, -2147483612
	mov	x0, r1
	mov	x1, r0
	jg	r2, r3, .LBB128_3
	jmp	.LBB128_1
.LBB128_1:
	mov	r0, 1
	je	x3, r0, .LBB128_3
	jmp	.LBB128_2
.LBB128_2:                              // %.preheader.preheader
	mov	x2, -2147483643
	mov	x4, 32
	mov	x7, x1
	jmp	.LBB128_5
.LBB128_3:
	mov	r0, mcasm_static_dc0ade02eb8bb208cf058fd41e6d2a5b
	mov	[r0], 22
	mov	x5, 0
	mov	x6, 0
	jz	x0, .LBB128_54
	jmp	.LBB128_4
.LBB128_4:
	mov	[x0], x1
	jmp	.LBB128_54
.LBB128_5:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x7]
	mov	r1, 255
	call	__bit_and
	mov	r0, rax
add	r0, 2147483639
	jl	r0, x2, .LBB128_9
	jmp	.LBB128_6
.LBB128_6:                              // %.preheader
                                        //   in Loop: Header=BB128_5 Depth=1
	je	rax, x4, .LBB128_9
	jmp	.LBB128_7
.LBB128_7:                              // %.preheader
	mov	r0, 43
	je	rax, r0, .LBB128_10
	jmp	.LBB128_8
.LBB128_8:                              // %.preheader
	mov	r0, 45
	je	rax, r0, .LBB128_10
	jmp	.LBB128_13
.LBB128_9:                              // %isspace.exit
                                        //   in Loop: Header=BB128_5 Depth=1
add	x7, 1
	jmp	.LBB128_5
.LBB128_10:
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r0, 45
	mov	x9, 1
	jne	rax, r0, .LBB128_12
// %bb.11:
	mov	x9, 0
.LBB128_12:
add	x7, 1
	jmp	.LBB128_14
.LBB128_13:                             // %.loopexit51.loopexit
	mov	x9, 1
.LBB128_14:                             // %.loopexit51
	mov	r1, 16
	mov	x4, 16
	mov	r0, x3
	call	__bit_or
	mov	x2, x3
	je	rax, x4, .LBB128_15
	jmp	.LBB128_20
.LBB128_15:
	mov	r0, [x7]
	mov	r1, 255
	call	__bit_and
	mov	r0, 48
	mov	x2, 10
	jne	rax, r0, .LBB128_18
	jmp	.LBB128_16
.LBB128_16:
	mov	r0, x7
add	r0, 1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r1, 32
	mov	x2, 8
	mov	r0, rax
	call	__bit_or
	mov	r0, 120
	je	rax, r0, .LBB128_17
	jmp	.LBB128_18
.LBB128_17:
add	x7, 2
	mov	x2, 16
	jmp	.LBB128_20
.LBB128_18:
	jz	x3, .LBB128_20
	jmp	.LBB128_19
.LBB128_19:
	mov	x2, x3
.LBB128_20:
	mov	x3, 2147483647
	mov	x4, -1
	jnz	x9, .LBB128_22
	jmp	.LBB128_21
.LBB128_21:
	mov	x3, -2147483648
	mov	x4, 0
.LBB128_22:
	mov	r0, [x7]
	mov	r1, 255
	call	__bit_and
	mov	x5, rax
	mov	r0, x5
	mov	r1, x5
add	r1, 2147483600
	mov	r2, -2147483638
add	r0, -48
	jl	r1, r2, .LBB128_27
	jmp	.LBB128_23
.LBB128_23:
	mov	r0, x5
add	r0, -65
	mov	r1, 255
	call	__bit_and
add	rax, -2147483648
	mov	x6, -2147483622
	jl	rax, x6, .LBB128_26
	jmp	.LBB128_24
.LBB128_24:
	mov	r0, x5
add	r0, -97
	mov	r1, 255
	call	__bit_and
add	x5, -87
add	rax, -2147483648
	mov	r0, x5
	jl	rax, x6, .LBB128_27
	jmp	.LBB128_25
.LBB128_25:
	mov	r0, 36
	jmp	.LBB128_27
.LBB128_26:
add	x5, -55
	mov	r0, x5
.LBB128_27:
	mov	x5, 0
	mov	x6, 0
	jge	r0, x2, .LBB128_50
	jmp	.LBB128_28
.LBB128_28:
add	x7, 1
	mov	x10, -2147483638
	mov	x11, -2147483623
	mov	x12, -2147483622
	mov	x1, x7
	mov	x5, r0
.LBB128_29:                             // =>This Inner Loop Header: Depth=1
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
	mov	x8, rax
	mov	x7, x8
	mov	r0, x8
add	r0, 2147483600
add	x7, -48
	jl	r0, x10, .LBB128_34
	jmp	.LBB128_30
.LBB128_30:                             //   in Loop: Header=BB128_29 Depth=1
	mov	r0, x8
add	r0, -65
	mov	r1, 255
	call	__bit_and
add	rax, -2147483648
	jg	rax, x11, .LBB128_32
	jmp	.LBB128_31
.LBB128_31:                             //   in Loop: Header=BB128_29 Depth=1
add	x8, -55
	mov	x7, x8
	jmp	.LBB128_34
.LBB128_32:                             //   in Loop: Header=BB128_29 Depth=1
	mov	r0, x8
add	r0, -97
	mov	r1, 255
	call	__bit_and
add	x8, -87
add	rax, -2147483648
	mov	x7, x8
	jl	rax, x12, .LBB128_34
	jmp	.LBB128_33
.LBB128_33:                             //   in Loop: Header=BB128_29 Depth=1
	mov	x7, 36
.LBB128_34:                             //   in Loop: Header=BB128_29 Depth=1
	jge	x7, x2, .LBB128_50
	jmp	.LBB128_35
.LBB128_35:                             //   in Loop: Header=BB128_29 Depth=1
	mov	r3, 0
	mov	r0, x4
	mov	r1, x3
	mov	r2, x7
	call	__subdi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x2
	call	__udivdi3
	mov	r0, t0
add	r0, -2147483648
	mov	r2, x6
add	r2, -2147483648
	mov	r1, 1
	mov	x8, 1
	jle	r2, r0, .LBB128_37
// %bb.36:                              //   in Loop: Header=BB128_29 Depth=1
	mov	x8, 0
.LBB128_37:                             //   in Loop: Header=BB128_29 Depth=1
add	rax, -2147483648
	mov	r0, x5
add	r0, -2147483648
	jle	r0, rax, .LBB128_39
// %bb.38:                              //   in Loop: Header=BB128_29 Depth=1
	mov	r1, 0
.LBB128_39:                             //   in Loop: Header=BB128_29 Depth=1
	mov	r2, 1
	je	x6, t0, .LBB128_41
// %bb.40:                              //   in Loop: Header=BB128_29 Depth=1
	mov	r2, 0
.LBB128_41:                             //   in Loop: Header=BB128_29 Depth=1
	sub	r1, x8
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	rax, x8
	jnz	rax, .LBB128_49
	jmp	.LBB128_42
.LBB128_42:
	mov	r0, mcasm_static_dc0ade02eb8bb208cf058fd41e6d2a5b
	mov	[r0], 34
	mov	x7, -2147483638
	mov	x8, -2147483623
	mov	x10, -2147483622
.LBB128_43:                             // =>This Inner Loop Header: Depth=1
add	x1, 1
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
	mov	x5, rax
	mov	r0, x5
	mov	r1, x5
add	r1, 2147483600
add	r0, -48
	jl	r1, x7, .LBB128_48
	jmp	.LBB128_44
.LBB128_44:                             //   in Loop: Header=BB128_43 Depth=1
	mov	r0, x5
add	r0, -65
	mov	r1, 255
	call	__bit_and
add	rax, -2147483648
	jg	rax, x8, .LBB128_46
	jmp	.LBB128_45
.LBB128_45:                             //   in Loop: Header=BB128_43 Depth=1
add	x5, -55
	mov	r0, x5
	jmp	.LBB128_48
.LBB128_46:                             //   in Loop: Header=BB128_43 Depth=1
	mov	r0, x5
add	r0, -97
	mov	r1, 255
	call	__bit_and
add	x5, -87
add	rax, -2147483648
	mov	r0, x5
	jl	rax, x10, .LBB128_48
	jmp	.LBB128_47
.LBB128_47:                             //   in Loop: Header=BB128_43 Depth=1
	mov	r0, 36
.LBB128_48:                             //   in Loop: Header=BB128_43 Depth=1
	mov	x5, x4
	mov	x6, x3
	jl	r0, x2, .LBB128_43
	jmp	.LBB128_50
.LBB128_49:                             //   in Loop: Header=BB128_29 Depth=1
	mov	r3, 0
	mov	r0, x5
	mov	r1, x6
	mov	r2, x2
	call	__muldi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x7
	call	__adddi3
	mov	x5, rax
	mov	x6, t0
add	x1, 1
	jmp	.LBB128_29
.LBB128_50:                             // %.loopexit
	jz	x0, .LBB128_52
	jmp	.LBB128_51
.LBB128_51:
	mov	[x0], x1
.LBB128_52:
	mov	r0, 0
	mov	r1, 0
	mov	r2, x5
	mov	r3, x6
	call	__subdi3
	jnz	x9, .LBB128_54
	jmp	.LBB128_53
.LBB128_53:
	mov	x5, rax
	mov	x6, t0
.LBB128_54:
	mov	rax, x5
	mov	t0, x6
	mov	x12, [rsp]
	mov	x11, [rsp+4]
	mov	x10, [rsp+8]
	mov	x9, [rsp+12]
	mov	x8, [rsp+16]
	mov	x7, [rsp+20]
	mov	x6, [rsp+24]
	mov	x5, [rsp+28]
	mov	x4, [rsp+32]
	mov	x3, [rsp+36]
	mov	x2, [rsp+40]
	mov	x1, [rsp+44]
	mov	x0, [rsp+48]
add	rsp, 52
	ret
// -- End function
// -- Begin function strtoul
strtoul:                                // @strtoul
// %bb.0:
sub	rsp, 48
	mov	[rsp+44], x0
	mov	[rsp+40], x1
	mov	[rsp+36], x2
	mov	[rsp+32], x3
	mov	[rsp+28], x4
	mov	[rsp+24], x5
	mov	[rsp+20], x6
	mov	[rsp+16], x7
	mov	[rsp+12], x8
	mov	[rsp+8], x9
	mov	[rsp+4], x10
	mov	[rsp], x11
	mov	x4, r2
add	r2, -2147483648
	mov	r3, -2147483612
	mov	x0, r1
	mov	x1, r0
	jg	r2, r3, .LBB129_3
	jmp	.LBB129_1
.LBB129_1:
	mov	r0, 1
	je	x4, r0, .LBB129_3
	jmp	.LBB129_2
.LBB129_2:                              // %.preheader6.preheader
	mov	x5, x1
add	x5, 1
	mov	x2, -2147483643
	mov	x3, 32
	jmp	.LBB129_5
.LBB129_3:
	mov	r0, mcasm_static_dc0ade02eb8bb208cf058fd41e6d2a5b
	mov	[r0], 22
	mov	x4, 0
	jz	x0, .LBB129_40
	jmp	.LBB129_4
.LBB129_4:
	mov	[x0], x1
	jmp	.LBB129_40
.LBB129_5:                              // %.preheader6
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, x5
add	r0, -1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r0, rax
add	r0, 2147483639
	jl	r0, x2, .LBB129_9
	jmp	.LBB129_6
.LBB129_6:                              // %.preheader6
                                        //   in Loop: Header=BB129_5 Depth=1
	je	rax, x3, .LBB129_9
	jmp	.LBB129_7
.LBB129_7:                              // %.preheader6
	mov	r0, 43
	je	rax, r0, .LBB129_11
	jmp	.LBB129_8
.LBB129_8:                              // %.preheader6
	mov	r0, 45
	je	rax, r0, .LBB129_10
	jmp	.LBB129_13
.LBB129_9:                              // %.preheader6.backedge
                                        //   in Loop: Header=BB129_5 Depth=1
add	x5, 1
	jmp	.LBB129_5
.LBB129_10:                             // %.loopexit8.loopexit
	mov	x2, 1
	jmp	.LBB129_12
.LBB129_11:                             // %.loopexit8.loopexit1
	mov	x2, 0
.LBB129_12:                             // %.loopexit8
	mov	r0, [x5]
	mov	r1, 255
add	x5, 1
	call	__bit_and
	jmp	.LBB129_14
.LBB129_13:                             // %.loopexit7.loopexit
	mov	x2, 0
.LBB129_14:                             // %.loopexit7
	mov	r1, 255
	mov	x7, rax
	mov	r0, rax
	call	__bit_and
	mov	r0, 48
	jne	rax, r0, .LBB129_20
	jmp	.LBB129_15
.LBB129_15:
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	mov	r1, -33
	mov	r0, rax
	call	__bit_and
	mov	r1, 47
	mov	x3, rax
	mov	r0, x4
	call	__bit_and
	jnz	rax, .LBB129_18
	jmp	.LBB129_16
.LBB129_16:
	mov	r1, 255
	mov	r0, x3
	call	__bit_and
	mov	r0, 88
	jne	rax, r0, .LBB129_18
	jmp	.LBB129_17
.LBB129_17:
	mov	r0, x5
add	r0, 1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	x7, rax
	mov	x9, x5
add	x9, 2
	mov	x3, 16
	mov	x1, x5
	jmp	.LBB129_22
.LBB129_18:
	mov	x7, 48
	mov	x3, 8
	mov	x9, x5
	jz	x4, .LBB129_22
	jmp	.LBB129_19
.LBB129_19:
	mov	x3, x4
	mov	x9, x5
	jmp	.LBB129_22
.LBB129_20:
	mov	x3, 10
	mov	x9, x5
	jz	x4, .LBB129_22
	jmp	.LBB129_21
.LBB129_21:
	mov	x3, x4
	mov	x9, x5
.LBB129_22:
	mov	r0, -1
	mov	r1, x3
	call	__udivsi3
	mov	x5, rax
	mov	r0, x5
	mul	r0, x3
	call	__bit_not
	mov	r1, 255
	mov	x6, rax
	mov	r0, x7
	call	__bit_and
	mov	x4, rax
	mov	r0, x4
add	r0, -1
	mov	r1, 32
	call	__bit_or
	mov	r0, x4
add	r0, -2147483648
	mov	r1, -2147483591
add	rax, -38
	jg	r0, r1, .LBB129_24
	jmp	.LBB129_23
.LBB129_23:
	mov	rax, x4
.LBB129_24:
	mov	x8, x3
add	x8, -2147483648
	mov	r0, rax
add	r0, 2147483600
	mov	x4, 0
	jge	r0, x8, .LBB129_34
	jmp	.LBB129_25
.LBB129_25:                             // %.preheader.preheader
add	rax, -48
add	x9, -1
	mov	x10, x5
add	x10, -2147483648
	mov	x11, -2147483591
add	x6, -2147483648
	mov	x1, x9
.LBB129_26:                             // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, x4
add	r0, -2147483648
	jg	r0, x10, .LBB129_29
	jmp	.LBB129_27
.LBB129_27:                             //   in Loop: Header=BB129_26 Depth=1
	mov	r0, rax
add	r0, -2147483648
	jle	r0, x6, .LBB129_30
	jmp	.LBB129_28
.LBB129_28:                             //   in Loop: Header=BB129_26 Depth=1
	jne	x4, x5, .LBB129_30
	jmp	.LBB129_29
.LBB129_29:                             //   in Loop: Header=BB129_26 Depth=1
	mov	r1, 2
	mov	r0, x2
	call	__bit_or
	mov	x2, rax
	jmp	.LBB129_31
.LBB129_30:                             //   in Loop: Header=BB129_26 Depth=1
	mul	x4, x3
	add	x4, rax
.LBB129_31:                             //   in Loop: Header=BB129_26 Depth=1
add	x1, 1
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
	mov	x7, rax
	mov	r0, x7
add	r0, -1
	mov	r1, 32
	call	__bit_or
	mov	r0, rax
	mov	r1, x7
add	r1, -2147483648
add	r0, -38
	jg	r1, x11, .LBB129_33
	jmp	.LBB129_32
.LBB129_32:                             //   in Loop: Header=BB129_26 Depth=1
	mov	r0, x7
.LBB129_33:                             //   in Loop: Header=BB129_26 Depth=1
	mov	rax, r0
add	r0, 2147483600
add	rax, -48
	jl	r0, x8, .LBB129_26
	jmp	.LBB129_34
.LBB129_34:                             // %.loopexit
	jz	x0, .LBB129_36
	jmp	.LBB129_35
.LBB129_35:
	mov	[x0], x1
.LBB129_36:
	mov	r1, 255
	mov	r0, x2
	call	__bit_and
	mov	r1, 1
	mov	x0, rax
	mov	r0, x0
	call	__bit_and
	jz	rax, .LBB129_38
	jmp	.LBB129_37
.LBB129_37:
	mov	r0, 0
	sub	r0, x4
	mov	x4, r0
.LBB129_38:
	mov	r1, 2
	mov	r0, x0
	call	__bit_and
	jz	rax, .LBB129_40
	jmp	.LBB129_39
.LBB129_39:
	mov	r0, mcasm_static_dc0ade02eb8bb208cf058fd41e6d2a5b
	mov	[r0], 34
	mov	x4, -1
.LBB129_40:
	mov	rax, x4
	mov	x11, [rsp]
	mov	x10, [rsp+4]
	mov	x9, [rsp+8]
	mov	x8, [rsp+12]
	mov	x7, [rsp+16]
	mov	x6, [rsp+20]
	mov	x5, [rsp+24]
	mov	x4, [rsp+28]
	mov	x3, [rsp+32]
	mov	x2, [rsp+36]
	mov	x1, [rsp+40]
	mov	x0, [rsp+44]
add	rsp, 48
	ret
// -- End function
// -- Begin function strtoull
strtoull:                               // @strtoull
// %bb.0:
sub	rsp, 44
	mov	[rsp+40], x0
	mov	[rsp+36], x1
	mov	[rsp+32], x2
	mov	[rsp+28], x3
	mov	[rsp+24], x4
	mov	[rsp+20], x5
	mov	[rsp+16], x6
	mov	[rsp+12], x7
	mov	[rsp+8], x8
	mov	[rsp+4], x9
	mov	[rsp], x10
	mov	x3, r2
add	r2, -2147483648
	mov	r3, -2147483612
	mov	x0, r1
	mov	x1, r0
	jg	r2, r3, .LBB130_3
	jmp	.LBB130_1
.LBB130_1:
	mov	r0, 1
	je	x3, r0, .LBB130_3
	jmp	.LBB130_2
.LBB130_2:                              // %.preheader.preheader
	mov	x2, -2147483643
	mov	x4, 32
	mov	x5, x1
	jmp	.LBB130_5
.LBB130_3:
	mov	r0, mcasm_static_dc0ade02eb8bb208cf058fd41e6d2a5b
	mov	[r0], 22
	mov	x3, 0
	mov	x4, 0
	jz	x0, .LBB130_52
	jmp	.LBB130_4
.LBB130_4:
	mov	[x0], x1
	jmp	.LBB130_52
.LBB130_5:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	mov	r0, rax
add	r0, 2147483639
	jl	r0, x2, .LBB130_9
	jmp	.LBB130_6
.LBB130_6:                              // %.preheader
                                        //   in Loop: Header=BB130_5 Depth=1
	je	rax, x4, .LBB130_9
	jmp	.LBB130_7
.LBB130_7:                              // %.preheader
	mov	r0, 43
	je	rax, r0, .LBB130_10
	jmp	.LBB130_8
.LBB130_8:                              // %.preheader
	mov	r0, 45
	je	rax, r0, .LBB130_10
	jmp	.LBB130_13
.LBB130_9:                              // %isspace.exit
                                        //   in Loop: Header=BB130_5 Depth=1
add	x5, 1
	jmp	.LBB130_5
.LBB130_10:
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r0, 45
	mov	x7, 1
	jne	rax, r0, .LBB130_12
// %bb.11:
	mov	x7, 0
.LBB130_12:
add	x5, 1
	jmp	.LBB130_14
.LBB130_13:                             // %.loopexit51.loopexit
	mov	x7, 1
.LBB130_14:                             // %.loopexit51
	mov	r1, 16
	mov	x4, 16
	mov	r0, x3
	call	__bit_or
	mov	x2, x3
	je	rax, x4, .LBB130_15
	jmp	.LBB130_20
.LBB130_15:
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	mov	r0, 48
	mov	x2, 10
	jne	rax, r0, .LBB130_18
	jmp	.LBB130_16
.LBB130_16:
	mov	r0, x5
add	r0, 1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r1, 32
	mov	x2, 8
	mov	r0, rax
	call	__bit_or
	mov	r0, 120
	je	rax, r0, .LBB130_17
	jmp	.LBB130_18
.LBB130_17:
add	x5, 2
	mov	x2, 16
	jmp	.LBB130_20
.LBB130_18:
	jz	x3, .LBB130_20
	jmp	.LBB130_19
.LBB130_19:
	mov	x2, x3
.LBB130_20:
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	mov	x3, rax
	mov	r0, x3
	mov	r1, x3
add	r1, 2147483600
	mov	r2, -2147483638
add	r0, -48
	jl	r1, r2, .LBB130_25
	jmp	.LBB130_21
.LBB130_21:
	mov	r0, x3
add	r0, -65
	mov	r1, 255
	call	__bit_and
add	rax, -2147483648
	mov	x4, -2147483622
	jl	rax, x4, .LBB130_24
	jmp	.LBB130_22
.LBB130_22:
	mov	r0, x3
add	r0, -97
	mov	r1, 255
	call	__bit_and
add	x3, -87
add	rax, -2147483648
	mov	r0, x3
	jl	rax, x4, .LBB130_25
	jmp	.LBB130_23
.LBB130_23:
	mov	r0, 36
	jmp	.LBB130_25
.LBB130_24:
add	x3, -55
	mov	r0, x3
.LBB130_25:
	mov	x3, 0
	mov	x4, 0
	jge	r0, x2, .LBB130_48
	jmp	.LBB130_26
.LBB130_26:
add	x5, 1
	mov	x8, -2147483638
	mov	x9, -2147483623
	mov	x10, -2147483622
	mov	x1, x5
	mov	x3, r0
.LBB130_27:                             // =>This Inner Loop Header: Depth=1
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
	mov	x6, rax
	mov	x5, x6
	mov	r0, x6
add	r0, 2147483600
add	x5, -48
	jl	r0, x8, .LBB130_32
	jmp	.LBB130_28
.LBB130_28:                             //   in Loop: Header=BB130_27 Depth=1
	mov	r0, x6
add	r0, -65
	mov	r1, 255
	call	__bit_and
add	rax, -2147483648
	jg	rax, x9, .LBB130_30
	jmp	.LBB130_29
.LBB130_29:                             //   in Loop: Header=BB130_27 Depth=1
add	x6, -55
	mov	x5, x6
	jmp	.LBB130_32
.LBB130_30:                             //   in Loop: Header=BB130_27 Depth=1
	mov	r0, x6
add	r0, -97
	mov	r1, 255
	call	__bit_and
add	x6, -87
add	rax, -2147483648
	mov	x5, x6
	jl	rax, x10, .LBB130_32
	jmp	.LBB130_31
.LBB130_31:                             //   in Loop: Header=BB130_27 Depth=1
	mov	x5, 36
.LBB130_32:                             //   in Loop: Header=BB130_27 Depth=1
	jge	x5, x2, .LBB130_48
	jmp	.LBB130_33
.LBB130_33:                             //   in Loop: Header=BB130_27 Depth=1
	mov	r0, x5
	call	__bit_not
	mov	r1, -1
	mov	r3, 0
	mov	r0, rax
	mov	r2, x2
	call	__udivdi3
	mov	r0, t0
add	r0, -2147483648
	mov	r2, x4
add	r2, -2147483648
	mov	r1, 1
	mov	x6, 1
	jle	r2, r0, .LBB130_35
// %bb.34:                              //   in Loop: Header=BB130_27 Depth=1
	mov	x6, 0
.LBB130_35:                             //   in Loop: Header=BB130_27 Depth=1
add	rax, -2147483648
	mov	r0, x3
add	r0, -2147483648
	jle	r0, rax, .LBB130_37
// %bb.36:                              //   in Loop: Header=BB130_27 Depth=1
	mov	r1, 0
.LBB130_37:                             //   in Loop: Header=BB130_27 Depth=1
	mov	r2, 1
	je	x4, t0, .LBB130_39
// %bb.38:                              //   in Loop: Header=BB130_27 Depth=1
	mov	r2, 0
.LBB130_39:                             //   in Loop: Header=BB130_27 Depth=1
	sub	r1, x6
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	rax, x6
	jnz	rax, .LBB130_47
	jmp	.LBB130_40
.LBB130_40:
	mov	r0, mcasm_static_dc0ade02eb8bb208cf058fd41e6d2a5b
	mov	[r0], 34
	mov	x5, -2147483638
	mov	x6, -2147483623
	mov	x8, -2147483622
	mov	x4, -1
.LBB130_41:                             // =>This Inner Loop Header: Depth=1
add	x1, 1
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
	mov	x3, rax
	mov	r0, x3
	mov	r1, x3
add	r1, 2147483600
add	r0, -48
	jl	r1, x5, .LBB130_46
	jmp	.LBB130_42
.LBB130_42:                             //   in Loop: Header=BB130_41 Depth=1
	mov	r0, x3
add	r0, -65
	mov	r1, 255
	call	__bit_and
add	rax, -2147483648
	jg	rax, x6, .LBB130_44
	jmp	.LBB130_43
.LBB130_43:                             //   in Loop: Header=BB130_41 Depth=1
add	x3, -55
	mov	r0, x3
	jmp	.LBB130_46
.LBB130_44:                             //   in Loop: Header=BB130_41 Depth=1
	mov	r0, x3
add	r0, -97
	mov	r1, 255
	call	__bit_and
add	x3, -87
add	rax, -2147483648
	mov	r0, x3
	jl	rax, x8, .LBB130_46
	jmp	.LBB130_45
.LBB130_45:                             //   in Loop: Header=BB130_41 Depth=1
	mov	r0, 36
.LBB130_46:                             //   in Loop: Header=BB130_41 Depth=1
	mov	x3, -1
	jl	r0, x2, .LBB130_41
	jmp	.LBB130_48
.LBB130_47:                             //   in Loop: Header=BB130_27 Depth=1
	mov	r3, 0
	mov	r0, x3
	mov	r1, x4
	mov	r2, x2
	call	__muldi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x5
	call	__adddi3
	mov	x3, rax
	mov	x4, t0
add	x1, 1
	jmp	.LBB130_27
.LBB130_48:                             // %.loopexit
	jz	x0, .LBB130_50
	jmp	.LBB130_49
.LBB130_49:
	mov	[x0], x1
.LBB130_50:
	mov	r0, 0
	mov	r1, 0
	mov	r2, x3
	mov	r3, x4
	call	__subdi3
	jnz	x7, .LBB130_52
	jmp	.LBB130_51
.LBB130_51:
	mov	x3, rax
	mov	x4, t0
.LBB130_52:
	mov	rax, x3
	mov	t0, x4
	mov	x10, [rsp]
	mov	x9, [rsp+4]
	mov	x8, [rsp+8]
	mov	x7, [rsp+12]
	mov	x6, [rsp+16]
	mov	x5, [rsp+20]
	mov	x4, [rsp+24]
	mov	x3, [rsp+28]
	mov	x2, [rsp+32]
	mov	x1, [rsp+36]
	mov	x0, [rsp+40]
add	rsp, 44
	ret
// -- End function
// -- Begin function bcmp
bcmp:                                   // @bcmp
// %bb.0:
sub	rsp, 16
	mov	[rsp+12], x0
	mov	[rsp+8], x1
	mov	[rsp+4], x2
	mov	[rsp], x3
	mov	x2, r2
add	r2, -2147483648
	mov	r3, -2147483644
	mov	x0, r1
	mov	x1, r0
	mov	r1, x2
	jl	r2, r3, .LBB131_5
	jmp	.LBB131_1
.LBB131_1:
	mov	r0, x0
	mov	r1, x1
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB131_6
	jmp	.LBB131_2
.LBB131_2:                              // %.preheader.i.preheader
	mov	r0, -2147483645
.LBB131_3:                              // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, [x1]
	mov	r2, [x0]
	jne	r1, r2, .LBB131_6
	jmp	.LBB131_4
.LBB131_4:                              //   in Loop: Header=BB131_3 Depth=1
add	x1, 4
	mov	r1, x2
add	r1, -4
	mov	r2, x2
add	r2, 2147483644
add	x0, 4
	mov	x2, r1
	jg	r2, r0, .LBB131_3
	jmp	.LBB131_5
.LBB131_5:                              // %.loopexit8.i
	mov	rax, 0
	mov	x2, r1
	jz	r1, .LBB131_10
	jmp	.LBB131_6
.LBB131_6:                              // %.loopexit7.i.preheader
.LBB131_7:                              // %.loopexit7.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x0]
	mov	r1, 255
	mov	x3, rax
	call	__bit_and
	je	x3, rax, .LBB131_9
	jmp	.LBB131_8
.LBB131_8:
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 255
	mov	x0, rax
	mov	r0, x3
	call	__bit_and
	sub	rax, x0
	jmp	.LBB131_10
.LBB131_9:                              //   in Loop: Header=BB131_7 Depth=1
add	x2, -1
add	x1, 1
add	x0, 1
	mov	rax, 0
	jnz	x2, .LBB131_7
	jmp	.LBB131_10
.LBB131_10:                             // %memcmp.exit
	mov	x3, [rsp]
	mov	x2, [rsp+4]
	mov	x1, [rsp+8]
	mov	x0, [rsp+12]
add	rsp, 16
	ret
// -- End function
// -- Begin function bcopy
bcopy:                                  // @bcopy
// %bb.0:
sub	rsp, 24
	mov	[rsp+20], x0
	mov	[rsp+16], x1
	mov	[rsp+12], x2
	mov	[rsp+8], x3
	mov	[rsp+4], x4
	mov	[rsp], x5
	mov	x2, r1
	mov	x1, r0
	mov	r0, x2
add	r0, -2147483648
	mov	r1, x1
add	r1, -2147483648
	mov	x0, r2
	jge	r1, r0, .LBB132_10
	jmp	.LBB132_1
.LBB132_1:
	mov	x3, x1
	add	x3, x0
	mov	r1, x3
add	r1, -2147483648
	jge	r0, r1, .LBB132_10
	jmp	.LBB132_2
.LBB132_2:
	mov	x4, x2
	mov	r0, x0
add	r0, -2147483648
	mov	r1, -2147483644
	add	x4, x0
	jl	r0, r1, .LBB132_7
	jmp	.LBB132_3
.LBB132_3:
	mov	r0, x3
	mov	r1, x4
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB132_8
	jmp	.LBB132_4
.LBB132_4:                              // %.preheader.i.preheader
	mov	r0, -2147483645
.LBB132_5:                              // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, x0
	mov	r2, x1
	add	r2, r1
add	r2, -4
	mov	r2, [r2]
	mov	r3, x2
	add	r3, r1
add	r3, -4
	mov	[r3], r2
add	r1, 2147483644
add	x0, -4
	jg	r1, r0, .LBB132_5
	jmp	.LBB132_6
.LBB132_6:                              // %.loopexit9.i.loopexit
	add	x1, x0
	add	x2, x0
	mov	x4, x2
	mov	x3, x1
.LBB132_7:                              // %.loopexit9.i
	jz	x0, .LBB132_21
	jmp	.LBB132_8
.LBB132_8:                              // %.preheader
add	x3, -1
add	x4, -1
.LBB132_9:                              // =>This Inner Loop Header: Depth=1
	mov	r0, [x3]
	mov	r1, 255
add	x0, -1
	call	__bit_and
	mov	r0, [x4]
	mov	r1, -256
	mov	x1, rax
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	[x4], rax
add	x3, -1
add	x4, -1
	jz	x0, .LBB132_21
	jmp	.LBB132_9
.LBB132_10:
	mov	x3, x0
add	x3, -2147483648
	mov	r0, -2147483644
	jl	x3, r0, .LBB132_18
	jmp	.LBB132_11
.LBB132_11:
	mov	r0, x2
	mov	r1, x1
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB132_19
	jmp	.LBB132_12
.LBB132_12:
	mov	r0, -2147483632
	jl	x3, r0, .LBB132_14
	jmp	.LBB132_13
.LBB132_13:                             // %.preheader12.i.preheader
	mov	r0, -2147483633
	jmp	.LBB132_16
.LBB132_14:                             // %.preheader54
	mov	r0, -2147483645
	mov	r1, x0
	jmp	.LBB132_17
.LBB132_15:
	mov	r0, 3
	jg	x0, r0, .LBB132_14
	jmp	.LBB132_18
.LBB132_16:                             // %.preheader12.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, [x1]
	mov	r2, x1
add	r2, 4
	mov	[x2], r1
	mov	r1, [r2]
	mov	r2, x2
add	r2, 4
	mov	r3, x1
add	r3, 8
	mov	[r2], r1
	mov	r1, [r3]
	mov	r2, x0
	mov	r3, x2
add	r3, 8
	mov	r4, x1
add	r4, 12
	mov	r5, x2
	mov	[r3], r1
	mov	r1, [r4]
add	r5, 12
add	x1, 16
add	x2, 16
	mov	[r5], r1
add	r2, 2147483632
add	x0, -16
	jg	r2, r0, .LBB132_16
	jmp	.LBB132_15
.LBB132_17:                             // =>This Inner Loop Header: Depth=1
	mov	r2, [x1]
add	x1, 4
	mov	[x2], r2
add	x0, -4
	mov	r2, r1
add	r2, 2147483644
add	x2, 4
	mov	r1, x0
	jg	r2, r0, .LBB132_17
	jmp	.LBB132_18
.LBB132_18:                             // %.loopexit11.i
	jz	x0, .LBB132_21
	jmp	.LBB132_19
.LBB132_19:                             // %.preheader49
	mov	x5, x2
.LBB132_20:                             // =>This Inner Loop Header: Depth=1
	mov	r0, [x1]
add	x0, -1
	mov	r1, 255
add	x1, 1
	call	__bit_and
	mov	r0, [x2]
	mov	x3, rax
	mov	r1, -256
add	x5, 1
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	[x2], rax
	mov	x2, x5
	jnz	x0, .LBB132_20
	jmp	.LBB132_21
.LBB132_21:                             // %memmove.exit
	mov	x5, [rsp]
	mov	x4, [rsp+4]
	mov	x3, [rsp+8]
	mov	x2, [rsp+12]
	mov	x1, [rsp+16]
	mov	x0, [rsp+20]
add	rsp, 24
	ret
// -- End function
// -- Begin function bzero
bzero:                                  // @bzero
// %bb.0:
sub	rsp, 16
	mov	[rsp+12], x0
	mov	[rsp+8], x1
	mov	[rsp+4], x2
	mov	[rsp], x3
	mov	x0, r1
	mov	r1, 3
	mov	x1, r0
	call	__bit_and
	jz	rax, .LBB133_4
	jmp	.LBB133_1
.LBB133_1:                              // %.preheader1.preheader
	mov	x2, x1
add	x2, 1
	mov	x3, x1
.LBB133_2:                              // %.preheader1
                                        // =>This Inner Loop Header: Depth=1
	jz	x0, .LBB133_14
	jmp	.LBB133_3
.LBB133_3:                              //   in Loop: Header=BB133_2 Depth=1
	mov	r0, [x3]
add	x0, -1
	mov	x1, x3
	mov	r1, -256
add	x1, 1
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	r1, 3
	mov	[x3], rax
	mov	r0, x2
	call	__bit_and
add	x2, 1
	mov	x3, x1
	jnz	rax, .LBB133_2
	jmp	.LBB133_4
.LBB133_4:                              // %.loopexit7.i
	mov	r0, x0
add	r0, -2147483648
	mov	r1, -2147483644
	jl	r0, r1, .LBB133_11
	jmp	.LBB133_5
.LBB133_5:
	mov	r1, -2147483632
	jl	r0, r1, .LBB133_7
	jmp	.LBB133_6
.LBB133_6:                              // %.preheader.i.preheader
	mov	r0, -2147483633
	jmp	.LBB133_9
.LBB133_7:                              // %.preheader30
	mov	r0, -2147483645
	mov	r1, x0
	jmp	.LBB133_10
.LBB133_8:
	mov	r0, 3
	jg	x0, r0, .LBB133_7
	jmp	.LBB133_11
.LBB133_9:                              // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, x0
	mov	r2, x1
add	r2, 4
	mov	[x1], 0
	mov	r3, x1
add	r3, 8
	mov	[r2], 0
	mov	r2, x1
add	r2, 12
	mov	[r3], 0
add	x1, 16
	mov	[r2], 0
add	r1, 2147483632
add	x0, -16
	jg	r1, r0, .LBB133_9
	jmp	.LBB133_8
.LBB133_10:                             // =>This Inner Loop Header: Depth=1
	mov	[x1], 0
add	x0, -4
	mov	r2, r1
add	r2, 2147483644
add	x1, 4
	mov	r1, x0
	jg	r2, r0, .LBB133_10
	jmp	.LBB133_11
.LBB133_11:                             // %.loopexit5.i
	jz	x0, .LBB133_14
	jmp	.LBB133_12
.LBB133_12:                             // %.preheader.preheader
	mov	x2, x1
.LBB133_13:                             // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x1]
add	x0, -1
	mov	r1, -256
add	x2, 1
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	[x1], rax
	mov	x1, x2
	jnz	x0, .LBB133_13
	jmp	.LBB133_14
.LBB133_14:                             // %memset.exit
	mov	x3, [rsp]
	mov	x2, [rsp+4]
	mov	x1, [rsp+8]
	mov	x0, [rsp+12]
add	rsp, 16
	ret
// -- End function
// -- Begin function index
index:                                  // @index
// %bb.0:
sub	rsp, 28
	mov	[rsp+24], x0
	mov	[rsp+20], x1
	mov	[rsp+16], x2
	mov	[rsp+12], x3
	mov	[rsp+8], x4
	mov	[rsp+4], x5
	mov	[rsp], x6
	mov	x1, r1
	mov	r1, 255
	mov	x0, r0
	mov	r0, x1
	call	__bit_and
	mov	r1, 3
	mov	x2, rax
	mov	r0, x0
	call	__bit_and
	jz	x2, .LBB134_3
	jmp	.LBB134_1
.LBB134_1:
	jz	rax, .LBB134_11
	jmp	.LBB134_2
.LBB134_2:
	mov	x4, x0
add	x4, 1
	jmp	.LBB134_13
.LBB134_3:
	mov	x3, x0
	jz	rax, .LBB134_7
	jmp	.LBB134_4
.LBB134_4:                              // %.preheader2.i.preheader
	mov	x1, x0
add	x1, 1
	mov	x3, x0
.LBB134_5:                              // %.preheader2.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x3]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB134_24
	jmp	.LBB134_6
.LBB134_6:                              //   in Loop: Header=BB134_5 Depth=1
	mov	r1, 3
add	x3, 1
	mov	r0, x1
	call	__bit_and
add	x1, 1
	jnz	rax, .LBB134_5
	jmp	.LBB134_7
.LBB134_7:                              // %.loopexit4.i.preheader
add	x3, -5
	mov	x0, -2139062144
.LBB134_8:                              // %.loopexit4.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, x3
add	r0, 5
	mov	r1, [r0]
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
add	x3, 4
	je	rax, x0, .LBB134_8
	jmp	.LBB134_9
.LBB134_9:                              // %.preheader.i.preheader
.LBB134_10:                             // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
add	x3, 1
	mov	r0, [x3]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB134_24
	jmp	.LBB134_10
.LBB134_11:                             // %.loopexit9.i
	mov	x3, [x0]
	mov	r0, 16843008
	sub	r0, x3
	mov	r1, x3
	call	__bit_or
	mov	r1, -2139062144
	mov	x4, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x4, .LBB134_18
	jmp	.LBB134_12
.LBB134_12:                             // %.preheader5.i.preheader
	mul	x2, 16843009
	jmp	.LBB134_16
.LBB134_13:                             // =>This Inner Loop Header: Depth=1
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	mov	x5, rax
	mov	x3, 0
	jz	x5, .LBB134_24
	jmp	.LBB134_14
.LBB134_14:                             //   in Loop: Header=BB134_13 Depth=1
	mov	r1, 255
	mov	r0, x1
	call	__bit_and
	mov	r1, 255
	mov	x6, rax
	mov	r0, x5
	call	__bit_and
	mov	x3, x0
	je	rax, x6, .LBB134_24
	jmp	.LBB134_15
.LBB134_15:                             //   in Loop: Header=BB134_13 Depth=1
	mov	r1, 3
add	x0, 1
	mov	r0, x4
	call	__bit_and
add	x4, 1
	jz	rax, .LBB134_11
	jmp	.LBB134_13
.LBB134_16:                             // %.preheader5.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, x3
	mov	r1, x2
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, rax
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x4, .LBB134_18
	jmp	.LBB134_17
.LBB134_17:                             //   in Loop: Header=BB134_16 Depth=1
add	x0, 4
	mov	x3, [x0]
	mov	r0, 16843008
	sub	r0, x3
	mov	r1, x3
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	je	rax, x4, .LBB134_16
	jmp	.LBB134_18
.LBB134_18:                             // %.loopexit6.i
add	x0, -1
.LBB134_19:                             // =>This Inner Loop Header: Depth=1
add	x0, 1
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	mov	x2, rax
	jz	x2, .LBB134_21
	jmp	.LBB134_20
.LBB134_20:                             //   in Loop: Header=BB134_19 Depth=1
	mov	r1, 255
	mov	r0, x1
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x2
	call	__bit_and
	jne	rax, x3, .LBB134_19
	jmp	.LBB134_21
.LBB134_21:
	mov	r1, 255
	mov	r0, x1
	call	__bit_and
	mov	r1, 255
	mov	x1, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 1
	je	rax, x1, .LBB134_23
// %bb.22:
	mov	r1, 0
.LBB134_23:
	mov	r0, 0
	sub	r0, r1
	mov	r1, x0
	call	__bit_and
	mov	x3, rax
.LBB134_24:                             // %strchr.exit
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
// -- Begin function memccpy
memccpy:                                // @memccpy
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
	mov	x0, r3
add	r3, -2147483648
	mov	r4, -2147483644
	mov	x1, r2
	mov	x2, r1
	mov	x3, r0
	jl	r3, r4, .LBB135_5
	jmp	.LBB135_1
.LBB135_1:
	mov	r0, x2
	mov	r1, x3
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB135_5
	jmp	.LBB135_2
.LBB135_2:
	mov	r1, 255
	mov	r0, x1
	call	__bit_and
	mov	x4, rax
	mul	x4, 16843009
	mov	x6, -2139062144
	mov	x7, -2147483645
.LBB135_3:                              // =>This Inner Loop Header: Depth=1
	mov	x5, [x2]
	mov	r0, x5
	mov	r1, x4
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, rax
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x6, .LBB135_5
	jmp	.LBB135_4
.LBB135_4:                              //   in Loop: Header=BB135_3 Depth=1
add	x2, 4
	mov	[x3], x5
	mov	r0, x0
add	x0, -4
add	r0, 2147483644
add	x3, 4
	jg	r0, x7, .LBB135_3
	jmp	.LBB135_5
.LBB135_5:                              // %.loopexit
.LBB135_6:                              // =>This Inner Loop Header: Depth=1
	mov	x4, 0
	jz	x0, .LBB135_8
	jmp	.LBB135_7
.LBB135_7:                              //   in Loop: Header=BB135_6 Depth=1
	mov	r1, 255
	mov	r0, x1
	call	__bit_and
	mov	r0, [x2]
	mov	x5, rax
add	x0, -1
	mov	r1, 255
add	x2, 1
	call	__bit_and
	mov	r0, [x3]
	mov	x6, rax
	mov	x4, x3
	mov	r1, -256
add	x4, 1
	call	__bit_and
	mov	r1, 255
	mov	x7, rax
	mov	r0, x6
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x7
	mov	r1, rax
	call	__bit_or
	mov	[x3], rax
	mov	x3, x4
	jne	x6, x5, .LBB135_6
	jmp	.LBB135_8
.LBB135_8:
	mov	rax, x4
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
// -- Begin function memchr
memchr:                                 // @memchr
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
	mov	r1, 3
	mov	x2, r2
	mov	x1, r0
	call	__bit_and
	jz	rax, .LBB136_5
	jmp	.LBB136_1
.LBB136_1:
	mov	x3, x1
add	x3, 1
.LBB136_2:                              // =>This Inner Loop Header: Depth=1
	mov	rax, 0
	jz	x2, .LBB136_13
	jmp	.LBB136_3
.LBB136_3:                              //   in Loop: Header=BB136_2 Depth=1
	mov	r1, 255
	mov	r0, x0
	call	__bit_and
	mov	r0, [x1]
	mov	r1, 255
	mov	x4, rax
	call	__bit_and
	mov	r0, rax
	mov	rax, x1
	je	r0, x4, .LBB136_13
	jmp	.LBB136_4
.LBB136_4:                              //   in Loop: Header=BB136_2 Depth=1
	mov	r1, 3
add	x1, 1
	mov	r0, x3
	call	__bit_and
add	x3, 1
add	x2, -1
	jnz	rax, .LBB136_2
	jmp	.LBB136_5
.LBB136_5:                              // %.loopexit9
	mov	r0, x2
add	r0, -2147483648
	mov	r1, -2147483644
	jl	r0, r1, .LBB136_9
	jmp	.LBB136_6
.LBB136_6:
	mov	r1, 255
	mov	r0, x0
	call	__bit_and
	mov	x3, rax
	mul	x3, 16843009
	mov	x5, -2139062144
	mov	x6, -2147483645
	mov	x4, x2
.LBB136_7:                              // =>This Inner Loop Header: Depth=1
	mov	r0, [x1]
	mov	r1, x3
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, rax
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x5, .LBB136_10
	jmp	.LBB136_8
.LBB136_8:                              //   in Loop: Header=BB136_7 Depth=1
	mov	x2, x4
add	x2, -4
	mov	r0, x4
add	r0, 2147483644
add	x1, 4
	mov	x4, x2
	jg	r0, x6, .LBB136_7
	jmp	.LBB136_9
.LBB136_9:                              // %.loopexit6
	mov	rax, 0
	mov	x4, x2
	jz	x2, .LBB136_13
	jmp	.LBB136_10
.LBB136_10:                             // %.loopexit5
.LBB136_11:                             // =>This Inner Loop Header: Depth=1
	mov	r1, 255
	mov	r0, x0
	call	__bit_and
	mov	r0, [x1]
	mov	r1, 255
	mov	x2, rax
	call	__bit_and
	mov	r0, rax
	mov	rax, x1
	je	r0, x2, .LBB136_13
	jmp	.LBB136_12
.LBB136_12:                             //   in Loop: Header=BB136_11 Depth=1
add	x4, -1
add	x1, 1
	mov	rax, 0
	jnz	x4, .LBB136_11
	jmp	.LBB136_13
.LBB136_13:                             // %.loopexit
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
// -- Begin function memcmp
memcmp:                                 // @memcmp
// %bb.0:
sub	rsp, 16
	mov	[rsp+12], x0
	mov	[rsp+8], x1
	mov	[rsp+4], x2
	mov	[rsp], x3
	mov	x2, r2
add	r2, -2147483648
	mov	r3, -2147483644
	mov	x0, r1
	mov	x1, r0
	mov	r1, x2
	jl	r2, r3, .LBB137_5
	jmp	.LBB137_1
.LBB137_1:
	mov	r0, x0
	mov	r1, x1
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB137_6
	jmp	.LBB137_2
.LBB137_2:                              // %.preheader.preheader
	mov	r0, -2147483645
.LBB137_3:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, [x1]
	mov	r2, [x0]
	jne	r1, r2, .LBB137_6
	jmp	.LBB137_4
.LBB137_4:                              //   in Loop: Header=BB137_3 Depth=1
add	x1, 4
	mov	r1, x2
add	r1, -4
	mov	r2, x2
add	r2, 2147483644
add	x0, 4
	mov	x2, r1
	jg	r2, r0, .LBB137_3
	jmp	.LBB137_5
.LBB137_5:                              // %.loopexit8
	mov	rax, 0
	mov	x2, r1
	jz	r1, .LBB137_10
	jmp	.LBB137_6
.LBB137_6:                              // %.loopexit7.preheader
.LBB137_7:                              // %.loopexit7
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x0]
	mov	r1, 255
	mov	x3, rax
	call	__bit_and
	je	x3, rax, .LBB137_9
	jmp	.LBB137_8
.LBB137_8:
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 255
	mov	x0, rax
	mov	r0, x3
	call	__bit_and
	sub	rax, x0
	jmp	.LBB137_10
.LBB137_9:                              //   in Loop: Header=BB137_7 Depth=1
add	x2, -1
add	x1, 1
add	x0, 1
	mov	rax, 0
	jnz	x2, .LBB137_7
	jmp	.LBB137_10
.LBB137_10:                             // %.loopexit
	mov	x3, [rsp]
	mov	x2, [rsp+4]
	mov	x1, [rsp+8]
	mov	x0, [rsp+12]
add	rsp, 16
	ret
// -- End function
// -- Begin function memcpy
memcpy:                                 // @memcpy
// %bb.0:
sub	rsp, 60
	mov	[rsp+56], x0
	mov	[rsp+52], x1
	mov	[rsp+48], x2
	mov	[rsp+44], x3
	mov	[rsp+40], x4
	mov	[rsp+36], x5
	mov	[rsp+32], x6
	mov	[rsp+28], x7
	mov	[rsp+24], x8
	mov	[rsp+20], x9
	mov	[rsp+16], x10
	mov	[rsp+12], x11
	mov	[rsp+8], x12
	mov	[rsp+4], x13
	mov	[rsp], x14
	mov	x5, r2
add	r2, -2147483648
	mov	r3, -2147483632
	mov	x1, r1
	mov	x0, r0
	mov	x6, x0
	mov	x2, x5
	jl	r2, r3, .LBB138_13
	jmp	.LBB138_1
.LBB138_1:
	mov	r1, 3
	mov	r0, x0
	call	__bit_and
	mov	x2, rax
	mov	x7, 8
	sub	x7, x2
	mov	x9, 0
	mov	x3, x1
.LBB138_2:                              // =>This Inner Loop Header: Depth=1
	mov	r0, x1
	add	r0, x9
	mov	r0, [r0]
	mov	x8, x0
	mov	r1, 255
	add	x8, x9
	call	__bit_and
	mov	r0, [x8]
	mov	r1, -256
	mov	x4, rax
	call	__bit_and
	mov	r1, 255
	mov	x6, rax
	mov	r0, x4
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	[x8], rax
add	x9, 1
add	x3, 1
	jne	x7, x9, .LBB138_2
	jmp	.LBB138_3
.LBB138_3:
	mov	r1, -8
	mov	r0, x2
	call	__bit_or
	mov	x2, rax
	mov	x4, x1
	add	x4, x9
	mov	r1, 3
	add	x2, x5
	mov	r0, x4
	call	__bit_and
	jnz	rax, .LBB138_10
	jmp	.LBB138_4
.LBB138_4:
	mov	x6, x0
	mov	r0, x2
add	r0, -2147483648
	mov	r1, -2147483632
	add	x6, x9
	jl	r0, r1, .LBB138_7
	jmp	.LBB138_5
.LBB138_5:                              // %.preheader.preheader
	mov	x6, x0
	add	x6, x9
	add	x1, x9
	mov	r0, 0
	mov	r1, -2147483633
	jmp	.LBB138_8
.LBB138_6:
	add	x1, r0
	mov	r1, 4
	add	x6, r0
	mov	x4, x1
	jl	x2, r1, .LBB138_13
	jmp	.LBB138_7
.LBB138_7:                              // %.preheader59
	mov	r0, -2147483645
	mov	r1, x2
	mov	x1, x4
	jmp	.LBB138_9
.LBB138_8:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r2, x2
	mov	r3, x1
	add	r3, r0
	mov	r4, x6
	mov	r5, [r3]
	mov	r6, r3
add	r6, 4
	mov	r6, [r6]
	add	r4, r0
	mov	[r4], r5
	mov	r5, r4
add	r5, 4
	mov	[r5], r6
	mov	r5, r3
add	r5, 8
	mov	r5, [r5]
	mov	r6, r4
add	r3, 12
	mov	r3, [r3]
add	r6, 8
	mov	[r6], r5
add	r4, 12
	mov	[r4], r3
add	x2, -16
add	r2, 2147483632
add	r0, 16
	jg	r2, r1, .LBB138_8
	jmp	.LBB138_6
.LBB138_9:                              // =>This Inner Loop Header: Depth=1
	mov	r2, [x1]
add	x1, 4
	mov	[x6], r2
add	x2, -4
	mov	r2, r1
add	r2, 2147483644
add	x6, 4
	mov	r1, x2
	jg	r2, r0, .LBB138_9
	jmp	.LBB138_13
.LBB138_10:
	mov	r1, 3
	mov	r0, rax
	mov	x6, rax
	call	__bit_shl
	mov	x5, rax
	mov	x11, 8
	mov	r1, 3
	sub	x11, x6
	mov	r0, x3
	call	__bit_and
	mov	x12, x1
	sub	x12, rax
	mov	r0, x12
	add	r0, x9
	mov	x6, [r0]
add	x12, 4
	mov	x10, 0
add	x11, -2147483648
.LBB138_11:                             // =>This Inner Loop Header: Depth=1
	mov	x13, x2
	mov	x14, x0
	mov	r0, x9
	add	r0, x10
	add	r0, x12
	mov	x7, [r0]
	add	x14, x10
	mov	r1, 31
	add	x14, x9
	mov	r0, x5
	call	__bit_and
	mov	r0, x6
	mov	r1, rax
	call	__bit_shr
	mov	x6, rax
	mov	r0, x5
	call	__bit_not
	mov	r1, 31
	mov	r0, rax
	call	__bit_and
	mov	r1, 1
	mov	x8, rax
	mov	r0, x7
	call	__bit_shl
	mov	r0, rax
	mov	r1, x8
	call	__bit_shl
	mov	r0, rax
	mov	r1, x6
	call	__bit_or
	mov	[x14], rax
add	x2, -4
add	x13, 2147483644
add	x10, 4
	mov	x6, x7
	jge	x13, x11, .LBB138_11
	jmp	.LBB138_12
.LBB138_12:
	mov	r1, -4
	mov	r0, x4
	call	__bit_or
	mov	x4, rax
	mov	r1, 3
	add	x4, x10
	mov	r0, x3
	call	__bit_and
	sub	x1, rax
	add	x1, x4
	add	x1, x9
	add	x9, x0
	add	x9, x10
add	x1, 4
	mov	x6, x9
	jmp	.LBB138_14
.LBB138_13:                             // %.loopexit8
	jz	x2, .LBB138_16
	jmp	.LBB138_14
.LBB138_14:                             // %.preheader56
	mov	x5, x6
.LBB138_15:                             // =>This Inner Loop Header: Depth=1
	mov	r0, [x1]
add	x2, -1
	mov	r1, 255
add	x1, 1
	call	__bit_and
	mov	r0, [x6]
	mov	x3, rax
	mov	r1, -256
add	x5, 1
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	[x6], rax
	mov	x6, x5
	jnz	x2, .LBB138_15
	jmp	.LBB138_16
.LBB138_16:                             // %.loopexit
	mov	rax, x0
	mov	x14, [rsp]
	mov	x13, [rsp+4]
	mov	x12, [rsp+8]
	mov	x11, [rsp+12]
	mov	x10, [rsp+16]
	mov	x9, [rsp+20]
	mov	x8, [rsp+24]
	mov	x7, [rsp+28]
	mov	x6, [rsp+32]
	mov	x5, [rsp+36]
	mov	x4, [rsp+40]
	mov	x3, [rsp+44]
	mov	x2, [rsp+48]
	mov	x1, [rsp+52]
	mov	x0, [rsp+56]
add	rsp, 60
	ret
// -- End function
// -- Begin function two_way_long_needle
two_way_long_needle:                    // @two_way_long_needle
// %bb.0:
sub	rsp, 1112
	mov	[rsp+1108], x0
	mov	[rsp+1104], x1
	mov	[rsp+1100], x2
	mov	[rsp+1096], x3
	mov	[rsp+1092], x4
	mov	[rsp+1088], x5
	mov	[rsp+1084], x6
	mov	[rsp+1080], x7
	mov	[rsp+1076], x8
	mov	[rsp+1072], x9
	mov	[rsp+1068], x10
	mov	[rsp+1064], x11
	mov	[rsp+1060], x12
	mov	[rsp+1056], x13
	mov	[rsp+1052], x14
	mov	[rsp+1048], x15
	mov	x0, r3
	mov	x15, r2
	mov	x14, r1
	mov	[rsp+20], r0
	mov	x6, 0
	mov	x2, 1
	mov	x9, x0
add	x9, -2147483648
	mov	r0, -2147483646
	mov	x8, 0
	jl	x9, r0, .LBB139_24
	jmp	.LBB139_1
.LBB139_1:                              // %.preheader30.preheader
	mov	x10, -1
	mov	x11, 0
	mov	x5, 1
	mov	x8, 1
.LBB139_2:                              // %.preheader30
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, x15
	add	r0, x5
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r0, x15
	add	r0, x10
	add	r0, x8
	mov	r0, [r0]
	mov	r1, 255
	mov	x4, rax
	call	__bit_and
	mov	r0, x4
add	r0, -2147483648
	mov	r1, rax
add	r1, -2147483648
	jge	r0, r1, .LBB139_4
	jmp	.LBB139_3
.LBB139_3:                              //   in Loop: Header=BB139_2 Depth=1
	mov	x2, x5
	sub	x2, x10
	mov	x8, 1
	jmp	.LBB139_9
.LBB139_4:                              //   in Loop: Header=BB139_2 Depth=1
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x4
	call	__bit_and
	jne	rax, x5, .LBB139_8
	jmp	.LBB139_5
.LBB139_5:                              //   in Loop: Header=BB139_2 Depth=1
	je	x8, x2, .LBB139_7
	jmp	.LBB139_6
.LBB139_6:                              //   in Loop: Header=BB139_2 Depth=1
add	x8, 1
	mov	x5, x11
	jmp	.LBB139_9
.LBB139_7:                              //   in Loop: Header=BB139_2 Depth=1
	add	x11, x2
	mov	x8, 1
	mov	x5, x11
	jmp	.LBB139_9
.LBB139_8:                              //   in Loop: Header=BB139_2 Depth=1
	mov	x5, x11
add	x5, 1
	mov	x8, 1
	mov	x10, x11
	mov	x2, 1
.LBB139_9:                              //   in Loop: Header=BB139_2 Depth=1
	mov	x11, x5
	mov	x5, x8
	add	x5, x11
	mov	r0, x5
add	r0, -2147483648
	jl	r0, x9, .LBB139_2
	jmp	.LBB139_10
.LBB139_10:                             // %.preheader29.preheader
	mov	x11, -1
	mov	x13, 0
	mov	x5, 1
	mov	x12, 1
	mov	x8, 1
.LBB139_11:                             // %.preheader29
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, x15
	add	r0, x5
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r0, x15
	add	r0, x11
	add	r0, x8
	mov	r0, [r0]
	mov	r1, 255
	mov	x4, rax
	call	__bit_and
	mov	r0, x4
add	r0, -2147483648
	mov	r1, rax
add	r1, -2147483648
	jge	r1, r0, .LBB139_13
	jmp	.LBB139_12
.LBB139_12:                             //   in Loop: Header=BB139_11 Depth=1
	mov	x12, x5
	sub	x12, x11
	mov	x8, 1
	jmp	.LBB139_18
.LBB139_13:                             //   in Loop: Header=BB139_11 Depth=1
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x4
	call	__bit_and
	jne	rax, x5, .LBB139_17
	jmp	.LBB139_14
.LBB139_14:                             //   in Loop: Header=BB139_11 Depth=1
	je	x8, x12, .LBB139_16
	jmp	.LBB139_15
.LBB139_15:                             //   in Loop: Header=BB139_11 Depth=1
add	x8, 1
	mov	x5, x13
	jmp	.LBB139_18
.LBB139_16:                             //   in Loop: Header=BB139_11 Depth=1
	add	x13, x12
	mov	x8, 1
	mov	x5, x13
	jmp	.LBB139_18
.LBB139_17:                             //   in Loop: Header=BB139_11 Depth=1
	mov	x5, x13
add	x5, 1
	mov	x8, 1
	mov	x11, x13
	mov	x12, 1
.LBB139_18:                             //   in Loop: Header=BB139_11 Depth=1
	mov	x13, x5
	mov	x5, x8
	add	x5, x13
	mov	r0, x5
add	r0, -2147483648
	jl	r0, x9, .LBB139_11
	jmp	.LBB139_19
.LBB139_19:
	mov	x8, x10
add	x8, 1
	mov	r0, x11
add	x10, -2147483647
add	x11, -2147483647
add	r0, 1
	jl	x11, x10, .LBB139_21
	jmp	.LBB139_20
.LBB139_20:
	mov	x2, x12
.LBB139_21:
	mov	r1, r0
	sub	r1, x8
	mov	r3, x8
add	r3, -2147483648
add	r0, -2147483648
	mov	r2, 1
	jg	r0, r3, .LBB139_23
// %bb.22:
	mov	r2, 0
.LBB139_23:
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	x8, rax
.LBB139_24:
	mov	r0, 1024
	jmp	.LBB139_27
.LBB139_25:
	jz	x0, .LBB139_29
	jmp	.LBB139_26
.LBB139_26:                             // %.preheader27.preheader
	mov	x1, x0
add	x1, -1
	mov	x3, -1
	mov	x4, x15
	jmp	.LBB139_28
.LBB139_27:                             // =>This Inner Loop Header: Depth=1
	mov	r1, rsp
add	r1, 24
	add	r1, x6
add	x6, 4
	mov	[r1], x0
	je	x6, r0, .LBB139_25
	jmp	.LBB139_27
.LBB139_28:                             // %.preheader27
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x4]
	mov	r1, 255
	call	__bit_and
	mov	r1, 2
	mov	r0, rax
	call	__bit_shl
	mov	r0, rsp
add	r0, 24
	add	r0, rax
	mov	[r0], x1
add	x1, -1
add	x4, 1
	jne	x1, x3, .LBB139_28
	jmp	.LBB139_29
.LBB139_29:                             // %.loopexit28
	mov	x4, x15
	mov	r2, x8
add	r2, -2147483648
	mov	r1, -2147483644
	add	x4, x2
	mov	r0, x8
	mov	x6, x15
	mov	[rsp+16], r2
	jl	r2, r1, .LBB139_35
	jmp	.LBB139_30
.LBB139_30:
	mov	r0, x4
	mov	r1, x15
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	mov	x7, x8
	mov	x6, x15
	jnz	rax, .LBB139_37
	jmp	.LBB139_31
.LBB139_31:                             // %.preheader.i.preheader
	mov	r1, -2147483645
	mov	x6, x15
	mov	x7, x8
.LBB139_32:                             // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	x4, x6
	add	x4, x2
	mov	r0, [x6]
	mov	r2, [x4]
	jne	r0, r2, .LBB139_36
	jmp	.LBB139_33
.LBB139_33:                             //   in Loop: Header=BB139_32 Depth=1
	mov	r0, x7
add	r0, -4
	mov	r2, x7
add	r2, 2147483644
add	x6, 4
	mov	x7, r0
	jg	r2, r1, .LBB139_32
	jmp	.LBB139_34
.LBB139_34:                             // %.loopexit8.i.loopexit
	mov	x4, x6
	add	x4, x2
.LBB139_35:                             // %.loopexit8.i
	mov	x7, r0
	jz	r0, .LBB139_40
	jmp	.LBB139_37
.LBB139_36:                             // %.loopexit7.i.preheader.loopexit
.LBB139_37:                             // %.loopexit7.i.preheader
.LBB139_38:                             // %.loopexit7.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x6]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x4]
	mov	r1, 255
	mov	x5, rax
	call	__bit_and
	jne	x5, rax, .LBB139_59
	jmp	.LBB139_39
.LBB139_39:                             //   in Loop: Header=BB139_38 Depth=1
add	x7, -1
add	x6, 1
add	x4, 1
	jnz	x7, .LBB139_38
	jmp	.LBB139_40
.LBB139_40:                             // %memcmp.exit.thread
	mov	x9, x14
	sub	x9, x0
	mov	x10, x0
	sub	x10, x2
	mov	r0, x0
add	r0, -1
	mov	r1, 1
	sub	r1, x8
	mov	[rsp], r1
	mov	r1, [rsp+20]
add	r1, -1
	mov	[rsp+8], r1
	mov	x14, x15
add	x14, -1
	mov	x13, 0
	mov	[rsp+4], r0
add	r0, -2147483648
	mov	[rsp+12], r0
add	x9, -2147483648
	mov	x12, 0
.LBB139_41:                             // =>This Loop Header: Depth=1
                                        //     Child Loop BB139_53 Depth 2
                                        //     Child Loop BB139_55 Depth 2
	mov	x4, [rsp+20]
	add	x4, x12
	mov	r0, x4
	add	r0, x0
add	r0, -1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r1, 2
	mov	r0, rax
	call	__bit_shl
	mov	r0, rsp
add	r0, 24
	add	r0, rax
	mov	x7, [r0]
	jz	x7, .LBB139_46
	jmp	.LBB139_42
.LBB139_42:                             //   in Loop: Header=BB139_41 Depth=1
	mov	r0, 0
	jz	x13, .LBB139_45
	jmp	.LBB139_43
.LBB139_43:                             //   in Loop: Header=BB139_41 Depth=1
	mov	r1, x2
add	r1, -2147483648
	mov	r2, x7
add	r2, -2147483648
	jge	r2, r1, .LBB139_45
	jmp	.LBB139_44
.LBB139_44:                             //   in Loop: Header=BB139_41 Depth=1
	mov	x7, x10
.LBB139_45:                             //   in Loop: Header=BB139_41 Depth=1
	add	x12, x7
	mov	r1, x12
add	r1, -2147483648
	mov	x4, 0
	mov	x13, r0
	jg	r1, x9, .LBB139_73
	jmp	.LBB139_41
.LBB139_46:                             //   in Loop: Header=BB139_41 Depth=1
	mov	x11, x13
add	x11, -2147483648
	mov	r2, 1
	mov	r0, [rsp+16]
	jg	r0, x11, .LBB139_48
// %bb.47:                              //   in Loop: Header=BB139_41 Depth=1
	mov	r2, 0
.LBB139_48:                             //   in Loop: Header=BB139_41 Depth=1
	mov	r1, x8
	sub	r1, x13
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	mov	x5, rax
	add	x5, x13
	mov	r0, x5
add	r0, -2147483648
	mov	r1, [rsp+12]
	jge	r0, r1, .LBB139_50
	jmp	.LBB139_49
.LBB139_49:                             // %.preheader.preheader
                                        //   in Loop: Header=BB139_41 Depth=1
	mov	x7, [rsp]
	add	x7, x5
	mov	x3, [rsp+4]
	sub	x3, x5
	mov	x1, x15
	add	x1, x5
	add	x5, x12
	mov	r0, [rsp+20]
	add	x5, r0
	jmp	.LBB139_53
.LBB139_50:                             // %.loopexit
                                        //   in Loop: Header=BB139_41 Depth=1
	mov	r2, 1
	mov	r0, [rsp+16]
	jl	x11, r0, .LBB139_52
// %bb.51:                              // %.loopexit
                                        //   in Loop: Header=BB139_41 Depth=1
	mov	r2, 0
.LBB139_52:                             // %.loopexit
                                        //   in Loop: Header=BB139_41 Depth=1
	mov	r1, x13
	sub	r1, x8
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	mov	x5, rax
	add	x5, x8
	mov	x1, [rsp+8]
	add	x1, x12
	mov	x3, x8
	jmp	.LBB139_55
.LBB139_53:                             // %.preheader
                                        //   Parent Loop BB139_41 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x5]
	mov	r1, 255
	mov	x6, rax
	call	__bit_and
	mov	r0, 0
	jne	x6, rax, .LBB139_45
	jmp	.LBB139_54
.LBB139_54:                             //   in Loop: Header=BB139_53 Depth=2
add	x7, 1
add	x3, -1
add	x1, 1
add	x5, 1
	jz	x3, .LBB139_50
	jmp	.LBB139_53
.LBB139_55:                             //   Parent Loop BB139_41 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, x3
add	r0, -2147483648
	jge	x11, r0, .LBB139_58
	jmp	.LBB139_56
.LBB139_56:                             //   in Loop: Header=BB139_55 Depth=2
	mov	r0, x14
	add	r0, x3
	mov	r0, [r0]
	mov	x7, x3
	mov	r1, 255
add	x7, -1
	call	__bit_and
	add	x3, x1
	mov	r0, [x3]
	mov	r1, 255
	mov	x6, rax
	call	__bit_and
	mov	x3, x7
	je	x6, rax, .LBB139_55
	jmp	.LBB139_57
.LBB139_57:                             // %._crit_edge
                                        //   in Loop: Header=BB139_41 Depth=1
add	x7, 1
	mov	x5, x7
.LBB139_58:                             //   in Loop: Header=BB139_41 Depth=1
add	x13, -2147483647
add	x5, -2147483648
	mov	x7, x2
	mov	r0, x10
	jl	x5, x13, .LBB139_73
	jmp	.LBB139_45
.LBB139_59:                             // %memcmp.exit
	mov	x6, x0
	sub	x6, x8
	mov	r1, x8
	sub	r1, x6
	mov	r0, x6
add	r0, -2147483648
	mov	r2, 1
	mov	r3, [rsp+16]
	jg	r3, r0, .LBB139_61
// %bb.60:                              // %memcmp.exit
	mov	r2, 0
.LBB139_61:                             // %memcmp.exit
	mov	r0, 0
	sub	r0, r2
	mov	x7, 0
	call	__bit_and
	add	x6, rax
	mov	x10, x0
add	x10, -1
	mov	x9, x14
	sub	x9, x0
	mov	x11, x10
	sub	x11, x8
	mov	x12, x15
	add	x12, x8
	mov	x14, [rsp+20]
	mov	x13, x14
	add	x13, x8
add	x14, -1
add	x15, -1
add	x10, -2147483648
add	x9, -2147483648
.LBB139_62:                             // =>This Loop Header: Depth=1
                                        //     Child Loop BB139_67 Depth 2
                                        //     Child Loop BB139_70 Depth 2
	mov	x4, [rsp+20]
	add	x4, x7
	mov	r0, x4
	add	r0, x0
add	r0, -1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r1, 2
	mov	r0, rax
	call	__bit_shl
	mov	r0, rsp
add	r0, 24
	add	r0, rax
	mov	r0, [r0]
	jnz	r0, .LBB139_65
	jmp	.LBB139_63
.LBB139_63:                             //   in Loop: Header=BB139_62 Depth=1
	mov	r0, [rsp+16]
	jle	x10, r0, .LBB139_69
	jmp	.LBB139_64
.LBB139_64:                             // %.preheader24.preheader
                                        //   in Loop: Header=BB139_62 Depth=1
	mov	x2, x13
	add	x2, x7
	mov	x1, 0
	jmp	.LBB139_67
.LBB139_65:                             //   in Loop: Header=BB139_62 Depth=1
	add	x7, r0
.LBB139_66:                             //   in Loop: Header=BB139_62 Depth=1
	mov	r0, x7
add	r0, -2147483648
	mov	x4, 0
	jg	r0, x9, .LBB139_73
	jmp	.LBB139_62
.LBB139_67:                             // %.preheader24
                                        //   Parent Loop BB139_62 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, x12
	add	r0, x1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r0, x2
	add	r0, x1
	mov	r0, [r0]
	mov	r1, 255
	mov	x5, rax
	call	__bit_and
	jne	x5, rax, .LBB139_72
	jmp	.LBB139_68
.LBB139_68:                             //   in Loop: Header=BB139_67 Depth=2
add	x1, 1
	jne	x11, x1, .LBB139_67
	jmp	.LBB139_69
.LBB139_69:                             // %.loopexit25.preheader
                                        //   in Loop: Header=BB139_62 Depth=1
	mov	x2, x14
	add	x2, x7
	mov	x3, x8
.LBB139_70:                             // %.loopexit25
                                        //   Parent Loop BB139_62 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	jz	x3, .LBB139_73
	jmp	.LBB139_71
.LBB139_71:                             //   in Loop: Header=BB139_70 Depth=2
	mov	r0, x15
	add	r0, x3
	mov	r0, [r0]
	mov	x1, x3
	mov	r1, 255
add	x1, -1
	call	__bit_and
	add	x3, x2
	mov	r0, [x3]
	mov	r1, 255
	mov	x5, rax
	call	__bit_and
	mov	x3, x1
	mov	x1, x6
	je	x5, rax, .LBB139_70
	jmp	.LBB139_72
.LBB139_72:                             // %.loopexit23
                                        //   in Loop: Header=BB139_62 Depth=1
	add	x7, x1
add	x7, 1
	jmp	.LBB139_66
.LBB139_73:                             // %.loopexit21
	mov	rax, x4
	mov	x15, [rsp+1048]
	mov	x14, [rsp+1052]
	mov	x13, [rsp+1056]
	mov	x12, [rsp+1060]
	mov	x11, [rsp+1064]
	mov	x10, [rsp+1068]
	mov	x9, [rsp+1072]
	mov	x8, [rsp+1076]
	mov	x7, [rsp+1080]
	mov	x6, [rsp+1084]
	mov	x5, [rsp+1088]
	mov	x4, [rsp+1092]
	mov	x3, [rsp+1096]
	mov	x2, [rsp+1100]
	mov	x1, [rsp+1104]
	mov	x0, [rsp+1108]
add	rsp, 1112
	ret
// -- End function
// -- Begin function memmem
memmem:                                 // @memmem
// %bb.0:
sub	rsp, 316
	mov	[rsp+312], x0
	mov	[rsp+308], x1
	mov	[rsp+304], x2
	mov	[rsp+300], x3
	mov	[rsp+296], x4
	mov	[rsp+292], x5
	mov	[rsp+288], x6
	mov	[rsp+284], x7
	mov	[rsp+280], x8
	mov	[rsp+276], x9
	mov	[rsp+272], x10
	mov	[rsp+268], x11
	mov	[rsp+264], x12
	mov	[rsp+260], x13
	mov	[rsp+256], x14
	mov	x2, r3
	mov	x1, r2
	mov	x3, r1
	mov	x0, r0
	mov	x4, x0
	jz	x2, .LBB140_80
	jmp	.LBB140_1
.LBB140_1:
	mov	r0, 1
	jne	x2, r0, .LBB140_15
	jmp	.LBB140_2
.LBB140_2:
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
	mov	r1, 3
	mov	x1, rax
	mov	r0, x0
	call	__bit_and
	jz	rax, .LBB140_7
	jmp	.LBB140_3
.LBB140_3:                              // %.preheader25.preheader
	mov	x2, x0
add	x2, 1
.LBB140_4:                              // %.preheader25
                                        // =>This Inner Loop Header: Depth=1
	mov	x4, 0
	jz	x3, .LBB140_80
	jmp	.LBB140_5
.LBB140_5:                              //   in Loop: Header=BB140_4 Depth=1
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x1
	call	__bit_and
	mov	x4, x0
	je	x5, rax, .LBB140_80
	jmp	.LBB140_6
.LBB140_6:                              //   in Loop: Header=BB140_4 Depth=1
	mov	r1, 3
add	x0, 1
	mov	r0, x2
	call	__bit_and
add	x2, 1
add	x3, -1
	jnz	rax, .LBB140_4
	jmp	.LBB140_7
.LBB140_7:                              // %.loopexit9.i
	mov	r0, x3
add	r0, -2147483648
	mov	r1, -2147483644
	jl	r0, r1, .LBB140_11
	jmp	.LBB140_8
.LBB140_8:
	mov	x2, x1
	mul	x2, 16843009
	mov	x4, -2139062144
	mov	x6, -2147483645
	mov	x5, x3
.LBB140_9:                              // =>This Inner Loop Header: Depth=1
	mov	r0, [x0]
	mov	r1, x2
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, rax
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x4, .LBB140_12
	jmp	.LBB140_10
.LBB140_10:                             //   in Loop: Header=BB140_9 Depth=1
	mov	x3, x5
add	x3, -4
	mov	r0, x5
add	r0, 2147483644
add	x0, 4
	mov	x5, x3
	jg	r0, x6, .LBB140_9
	jmp	.LBB140_11
.LBB140_11:                             // %.loopexit6.i
	mov	x4, 0
	mov	x5, x3
	jz	x3, .LBB140_80
	jmp	.LBB140_12
.LBB140_12:                             // %.loopexit5.i.preheader
.LBB140_13:                             // %.loopexit5.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	x4, x0
	je	x2, rax, .LBB140_80
	jmp	.LBB140_14
.LBB140_14:                             //   in Loop: Header=BB140_13 Depth=1
add	x5, -1
add	x0, 1
	mov	x4, 0
	jz	x5, .LBB140_80
	jmp	.LBB140_13
.LBB140_15:
	mov	x6, x2
add	x6, -2147483648
	mov	r0, x3
add	r0, -2147483648
	mov	x4, 0
	jl	r0, x6, .LBB140_80
	jmp	.LBB140_16
.LBB140_16:
	mov	x7, x3
	sub	x7, x2
	mov	x8, x0
	mov	r0, 2
	add	x8, x7
	jne	x2, r0, .LBB140_26
	jmp	.LBB140_17
.LBB140_17:
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
	mov	r1, 16
	mov	r0, rax
	call	__bit_shl
add	x1, 1
	mov	r0, [x1]
	mov	r1, 255
	mov	x1, rax
	call	__bit_and
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	r0, [x0]
	mov	r1, 255
	mov	x1, rax
	call	__bit_and
	mov	r1, 16
	mov	r0, rax
	call	__bit_shl
	mov	r0, x0
add	r0, 1
	mov	r0, [r0]
	mov	r1, 255
	mov	x2, rax
	call	__bit_and
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	x3, 1
	jl	x7, x3, .LBB140_23
	jmp	.LBB140_18
.LBB140_18:
	je	rax, x1, .LBB140_23
	jmp	.LBB140_19
.LBB140_19:                             // %.preheader.preheader
add	x0, 2
add	x8, -2147483648
.LBB140_20:                             // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 16
	mov	x4, x0
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x4]
	mov	r1, 255
	mov	x2, rax
	call	__bit_and
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
add	x4, -2147483648
add	x0, 1
	jg	x4, x8, .LBB140_22
	jmp	.LBB140_21
.LBB140_21:                             // %.preheader
                                        //   in Loop: Header=BB140_20 Depth=1
	jne	rax, x1, .LBB140_20
	jmp	.LBB140_22
.LBB140_22:                             // %.loopexit.loopexit
add	x0, -2
.LBB140_23:                             // %.loopexit
	je	rax, x1, .LBB140_25
// %bb.24:                              // %.loopexit
	mov	x3, 0
.LBB140_25:                             // %.loopexit
	mov	r0, 0
	sub	r0, x3
	mov	r1, x0
	call	__bit_and
	mov	x4, rax
	jmp	.LBB140_80
.LBB140_26:
	mov	r0, -2147483391
	jl	x6, r0, .LBB140_28
	jmp	.LBB140_27
.LBB140_27:
	mov	r0, x0
	mov	r1, x3
	mov	r2, x1
	mov	r3, x2
	call	two_way_long_needle
	mov	x4, rax
	jmp	.LBB140_80
.LBB140_28:
	mov	x3, rsp
	mov	r1, 3
	mov	r0, x3
	call	__bit_and
	mov	x4, 256
	jz	rax, .LBB140_33
	jmp	.LBB140_29
.LBB140_29:                             // %.preheader22.preheader
	mov	r0, rsp
	mov	r1, 3
	call	__bit_and
	mov	r1, 3
	mov	r0, rax
	call	__bit_xor
	mov	x3, rax
add	x3, 1
	mov	x5, 0
.LBB140_30:                             // =>This Inner Loop Header: Depth=1
	mov	x4, rsp
	add	x4, x5
	mov	r0, [x4]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
add	x5, 1
	mov	[x4], rax
	jne	x3, x5, .LBB140_30
	jmp	.LBB140_31
.LBB140_31:                             // %.loopexit7.i
	mov	x3, rsp
	add	x3, x5
	mov	x4, 256
	mov	r0, -2147483391
	sub	r0, x5
	mov	r1, -2147483643
	sub	x4, x5
	jl	r0, r1, .LBB140_38
	jmp	.LBB140_32
.LBB140_32:                             // %.loopexit7.i.thread
	mov	r0, x4
add	r0, -2147483648
	mov	r1, -2147483632
	jl	r0, r1, .LBB140_34
	jmp	.LBB140_33
.LBB140_33:                             // %.preheader.i.preheader
	mov	r0, -2147483633
	jmp	.LBB140_36
.LBB140_34:                             // %.preheader239
	mov	r0, -2147483645
	mov	r1, x4
	jmp	.LBB140_37
.LBB140_35:
	mov	r0, x4
add	r0, 16
	mov	r1, 19
	jg	r0, r1, .LBB140_34
	jmp	.LBB140_38
.LBB140_36:                             // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, x4
	mov	r2, x3
add	r2, 4
	mov	[x3], 0
	mov	r3, x3
add	r3, 8
	mov	[r2], 0
	mov	r2, x3
add	r2, 12
	mov	[r3], 0
add	x3, 16
	mov	[r2], 0
add	r1, 2147483632
add	x4, -16
	jg	r1, r0, .LBB140_36
	jmp	.LBB140_35
.LBB140_37:                             // =>This Inner Loop Header: Depth=1
	mov	[x3], 0
add	x4, -4
	mov	r2, r1
add	r2, 2147483644
add	x3, 4
	mov	r1, x4
	jg	r2, r0, .LBB140_37
	jmp	.LBB140_38
.LBB140_38:                             // %.loopexit5.i6
	jz	x4, .LBB140_41
	jmp	.LBB140_39
.LBB140_39:                             // %.preheader21.preheader
	mov	x5, x3
.LBB140_40:                             // %.preheader21
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x3]
add	x4, -1
	mov	r1, -256
add	x5, 1
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	[x3], rax
	mov	x3, x5
	jnz	x4, .LBB140_40
	jmp	.LBB140_41
.LBB140_41:                             // %memset.exit.preheader
	mov	x3, x2
add	x3, -1
	mov	x9, x2
add	x9, -2
	mov	x4, 0
.LBB140_42:                             // %memset.exit
                                        // =>This Inner Loop Header: Depth=1
	mov	x5, x1
	add	x5, x4
	mov	r0, x5
add	r0, 1
	mov	r0, [r0]
	mov	r1, 255
add	x4, 1
	call	__bit_and
	mov	r0, [x5]
	mov	r1, 255
	mov	x5, rax
	call	__bit_and
	mov	r1, 3
	mov	r0, rax
	call	__bit_shl
	sub	x5, rax
	mov	r1, 255
	mov	r0, x5
	call	__bit_and
	mov	x10, rsp
	add	x10, rax
	mov	r0, [x10]
	mov	r1, -256
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x4
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	[x10], rax
	jne	x9, x4, .LBB140_42
	jmp	.LBB140_43
.LBB140_43:
	mov	x4, x1
	add	x4, x3
	mov	r0, [x4]
	mov	r1, 255
	call	__bit_and
add	x4, -1
	mov	r0, [x4]
	mov	r1, 255
	mov	x4, rax
	call	__bit_and
	mov	r1, 3
	mov	r0, rax
	call	__bit_shl
	sub	x4, rax
	mov	r1, 255
	mov	r0, x4
	call	__bit_and
	mov	x5, rsp
	add	x5, rax
	mov	x4, [x5]
	mov	r1, 255
	mov	r0, x4
	call	__bit_and
	mov	x9, x3
	mov	r1, -256
	sub	x9, rax
	mov	r0, x4
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	mov	r1, 0
	mov	x10, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	r0, 17
	mov	[x5], rax
	jl	x2, r0, .LBB140_45
	jmp	.LBB140_44
.LBB140_44:                             // %.preheader19.preheader
add	x8, -2147483648
	mov	x11, x3
add	x11, -2147483648
	mov	x12, -2147483645
	jmp	.LBB140_61
.LBB140_45:                             // %.preheader14
	mov	x4, 0
	jl	x7, x4, .LBB140_79
	jmp	.LBB140_46
.LBB140_46:                             // %.preheader13.lr.ph
add	x8, -2147483648
	mov	x5, x3
add	x5, -2147483648
	mov	x7, -2147483643
	mov	x10, -2147483645
.LBB140_47:                             // %.preheader13
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB140_54 Depth 2
                                        //     Child Loop BB140_58 Depth 2
	mov	x4, x0
	add	x4, x3
	mov	r0, [x4]
	mov	r1, 255
	call	__bit_and
	mov	r0, x4
add	r0, -1
	mov	r0, [r0]
	mov	r1, 255
	mov	x0, rax
	call	__bit_and
	mov	r1, 3
	mov	r0, rax
	call	__bit_shl
	sub	x0, rax
	mov	r1, 255
	mov	r0, x0
	call	__bit_and
	mov	r0, rsp
	add	r0, rax
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r0, x4
add	r0, -2147483648
	mov	x2, rax
	jg	r0, x8, .LBB140_49
	jmp	.LBB140_48
.LBB140_48:                             // %.preheader13
                                        //   in Loop: Header=BB140_47 Depth=1
	mov	r1, 255
	mov	r0, x2
	call	__bit_and
	mov	x0, x4
	jz	rax, .LBB140_47
	jmp	.LBB140_49
.LBB140_49:                             //   in Loop: Header=BB140_47 Depth=1
	mov	r1, 255
	mov	r0, x2
	call	__bit_and
	sub	x4, rax
add	rax, -2147483648
	jle	x5, rax, .LBB140_51
	jmp	.LBB140_50
.LBB140_50:                             //   in Loop: Header=BB140_47 Depth=1
	mov	r0, x4
add	r0, -2147483648
	mov	x0, x4
	mov	x4, 0
	jg	r0, x8, .LBB140_79
	jmp	.LBB140_47
.LBB140_51:                             //   in Loop: Header=BB140_47 Depth=1
	mov	r0, x3
	mov	x11, x4
	mov	x2, x1
	jl	x6, x7, .LBB140_56
	jmp	.LBB140_52
.LBB140_52:                             //   in Loop: Header=BB140_47 Depth=1
	mov	r0, x4
	mov	r1, x1
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	mov	x12, x3
	mov	x2, x1
	mov	x11, x4
	jnz	rax, .LBB140_57
	jmp	.LBB140_53
.LBB140_53:                             // %.preheader.i8.preheader
                                        //   in Loop: Header=BB140_47 Depth=1
	mov	x2, x1
	mov	x11, x4
	mov	x12, x3
.LBB140_54:                             // %.preheader.i8
                                        //   Parent Loop BB140_47 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, [x11]
	mov	r1, [x2]
	jne	r0, r1, .LBB140_57
	jmp	.LBB140_55
.LBB140_55:                             //   in Loop: Header=BB140_54 Depth=2
add	x11, 4
	mov	r0, x12
add	r0, -4
	mov	r1, x12
add	r1, 2147483644
add	x2, 4
	mov	x12, r0
	jg	r1, x10, .LBB140_54
	jmp	.LBB140_56
.LBB140_56:                             // %.loopexit8.i
                                        //   in Loop: Header=BB140_47 Depth=1
	mov	x12, r0
	jz	r0, .LBB140_79
	jmp	.LBB140_57
.LBB140_57:                             // %.loopexit7.i7.preheader
                                        //   in Loop: Header=BB140_47 Depth=1
.LBB140_58:                             // %.loopexit7.i7
                                        //   Parent Loop BB140_47 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, [x11]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x2]
	mov	r1, 255
	mov	x0, rax
	call	__bit_and
	jne	x0, rax, .LBB140_60
	jmp	.LBB140_59
.LBB140_59:                             //   in Loop: Header=BB140_58 Depth=2
add	x12, -1
add	x11, 1
add	x2, 1
	jz	x12, .LBB140_79
	jmp	.LBB140_58
.LBB140_60:                             // %memcmp.exit
                                        //   in Loop: Header=BB140_47 Depth=1
	add	x4, x9
	jmp	.LBB140_50
.LBB140_61:                             // %.preheader19
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB140_62 Depth 2
                                        //       Child Loop BB140_64 Depth 3
	mov	r0, x0
.LBB140_62:                             //   Parent Loop BB140_61 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB140_64 Depth 3
	mov	x0, r0
add	r0, -2147483648
	mov	x4, 0
	jg	r0, x8, .LBB140_79
	jmp	.LBB140_63
.LBB140_63:                             // %.preheader16.preheader
                                        //   in Loop: Header=BB140_62 Depth=2
	mov	x5, x0
	add	x5, x2
	mov	x13, 0
.LBB140_64:                             // %.preheader16
                                        //   Parent Loop BB140_61 Depth=1
                                        //     Parent Loop BB140_62 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	mov	x6, x5
	add	x6, x13
	mov	r0, x6
add	r0, -1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r0, x6
add	r0, -2
	mov	r0, [r0]
	mov	r1, 255
	mov	x4, rax
	call	__bit_and
	mov	r1, 3
	mov	r0, rax
	call	__bit_shl
	sub	x4, rax
	mov	r1, 255
	mov	r0, x4
	call	__bit_and
	mov	r0, rsp
	add	r0, rax
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	x4, rax
add	x6, 2147483647
	add	x13, x3
	jg	x6, x8, .LBB140_66
	jmp	.LBB140_65
.LBB140_65:                             // %.preheader16
                                        //   in Loop: Header=BB140_64 Depth=3
	mov	r1, 255
	mov	r0, x4
	call	__bit_and
	jz	rax, .LBB140_64
	jmp	.LBB140_66
.LBB140_66:                             //   in Loop: Header=BB140_62 Depth=2
	mov	r1, 255
	mov	r0, x4
	call	__bit_and
	mov	r0, x0
	sub	r0, rax
add	rax, -2147483648
	add	r0, x13
	jg	x11, rax, .LBB140_62
	jmp	.LBB140_67
.LBB140_67:                             //   in Loop: Header=BB140_61 Depth=1
	mov	r1, 255
	mov	r0, x4
	call	__bit_and
	mov	x14, x10
	add	x14, x0
	mov	x5, rax
	mov	x7, x14
	sub	x7, x5
	mov	x6, x1
	add	x6, x10
	add	x7, x13
	mov	r0, x7
	mov	r1, x6
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB140_69
	jmp	.LBB140_68
.LBB140_68:                             // %.preheader.i10.preheader
                                        //   in Loop: Header=BB140_61 Depth=1
	mov	r0, [x7]
	mov	r1, [x6]
	je	r0, r1, .LBB140_73
	jmp	.LBB140_69
.LBB140_69:                             // %.loopexit7.i9
                                        //   in Loop: Header=BB140_61 Depth=1
	mov	r0, [x7]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x6]
	mov	r1, 255
	mov	x7, rax
	call	__bit_and
	jne	x7, rax, .LBB140_77
	jmp	.LBB140_70
.LBB140_70:                             // %.loopexit7.i9.1
                                        //   in Loop: Header=BB140_61 Depth=1
	mov	r1, 255
	mov	r0, x4
	call	__bit_and
	mov	r0, x14
	sub	r0, rax
	add	r0, x13
add	r0, 1
	mov	r0, [r0]
	mov	x7, x6
	mov	r1, 255
add	x7, 1
	call	__bit_and
	mov	r0, [x7]
	mov	r1, 255
	mov	x7, rax
	call	__bit_and
	jne	x7, rax, .LBB140_77
	jmp	.LBB140_71
.LBB140_71:                             // %.loopexit7.i9.2
                                        //   in Loop: Header=BB140_61 Depth=1
	mov	r1, 255
	mov	r0, x4
	call	__bit_and
	mov	r0, x14
	sub	r0, rax
	add	r0, x13
add	r0, 2
	mov	r0, [r0]
	mov	x7, x6
	mov	r1, 255
add	x7, 2
	call	__bit_and
	mov	r0, [x7]
	mov	r1, 255
	mov	x7, rax
	call	__bit_and
	jne	x7, rax, .LBB140_77
	jmp	.LBB140_72
.LBB140_72:                             // %.loopexit7.i9.3
                                        //   in Loop: Header=BB140_61 Depth=1
	mov	r1, 255
	mov	r0, x4
	call	__bit_and
	sub	x14, rax
	add	x14, x13
add	x14, 3
	mov	r0, [x14]
	mov	r1, 255
add	x6, 3
	call	__bit_and
	mov	r0, [x6]
	mov	r1, 255
	mov	x6, rax
	call	__bit_and
	jne	x6, rax, .LBB140_77
	jmp	.LBB140_73
.LBB140_73:                             // %memcmp.exit12.thread
                                        //   in Loop: Header=BB140_61 Depth=1
	mov	r0, x0
	sub	r0, x5
	add	r0, x13
	mov	r1, x1
	mov	r2, x3
	call	memcmp
	jz	rax, .LBB140_78
	jmp	.LBB140_74
.LBB140_74:                             //   in Loop: Header=BB140_61 Depth=1
	mov	r0, x10
add	r0, -2147483648
	jg	r0, x12, .LBB140_76
	jmp	.LBB140_75
.LBB140_75:                             //   in Loop: Header=BB140_61 Depth=1
	mov	x10, x3
.LBB140_76:                             //   in Loop: Header=BB140_61 Depth=1
add	x10, -4
.LBB140_77:                             // %memcmp.exit12
                                        //   in Loop: Header=BB140_61 Depth=1
	mov	r1, 255
	mov	r0, x4
	call	__bit_and
	add	x0, x9
	sub	x0, rax
	add	x0, x13
	jmp	.LBB140_61
.LBB140_78:                             // %memcmp.exit.thread.loopexit4
	mov	r1, 255
	mov	r0, x4
	call	__bit_and
	sub	x0, rax
	add	x0, x13
	mov	x4, x0
.LBB140_79:                             // %memcmp.exit.thread
.LBB140_80:                             // %memchr.exit
	mov	rax, x4
	mov	x14, [rsp+256]
	mov	x13, [rsp+260]
	mov	x12, [rsp+264]
	mov	x11, [rsp+268]
	mov	x10, [rsp+272]
	mov	x9, [rsp+276]
	mov	x8, [rsp+280]
	mov	x7, [rsp+284]
	mov	x6, [rsp+288]
	mov	x5, [rsp+292]
	mov	x4, [rsp+296]
	mov	x3, [rsp+300]
	mov	x2, [rsp+304]
	mov	x1, [rsp+308]
	mov	x0, [rsp+312]
add	rsp, 316
	ret
// -- End function
// -- Begin function memmove
memmove:                                // @memmove
// %bb.0:
sub	rsp, 28
	mov	[rsp+24], x0
	mov	[rsp+20], x1
	mov	[rsp+16], x2
	mov	[rsp+12], x3
	mov	[rsp+8], x4
	mov	[rsp+4], x5
	mov	[rsp], x6
	mov	x2, r1
	mov	x0, r0
add	r0, -2147483648
add	r1, -2147483648
	mov	x1, r2
	jge	r1, r0, .LBB141_10
	jmp	.LBB141_1
.LBB141_1:
	mov	x3, x2
	add	x3, x1
	mov	r1, x3
add	r1, -2147483648
	jge	r0, r1, .LBB141_10
	jmp	.LBB141_2
.LBB141_2:
	mov	x4, x0
	mov	r0, x1
add	r0, -2147483648
	mov	r1, -2147483644
	add	x4, x1
	jl	r0, r1, .LBB141_7
	jmp	.LBB141_3
.LBB141_3:
	mov	r0, x3
	mov	r1, x4
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB141_8
	jmp	.LBB141_4
.LBB141_4:                              // %.preheader.preheader
	mov	r0, -2147483645
.LBB141_5:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, x1
	mov	r2, x2
	add	r2, r1
add	r2, -4
	mov	r2, [r2]
	mov	r3, x0
	add	r3, r1
add	r3, -4
	mov	[r3], r2
add	r1, 2147483644
add	x1, -4
	jg	r1, r0, .LBB141_5
	jmp	.LBB141_6
.LBB141_6:                              // %.loopexit9.loopexit
	add	x2, x1
	mov	x4, x0
	add	x4, x1
	mov	x3, x2
.LBB141_7:                              // %.loopexit9
	jz	x1, .LBB141_21
	jmp	.LBB141_8
.LBB141_8:                              // %.preheader56
add	x3, -1
add	x4, -1
.LBB141_9:                              // =>This Inner Loop Header: Depth=1
	mov	r0, [x3]
	mov	r1, 255
add	x1, -1
	call	__bit_and
	mov	r0, [x4]
	mov	r1, -256
	mov	x2, rax
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	[x4], rax
add	x3, -1
add	x4, -1
	jz	x1, .LBB141_21
	jmp	.LBB141_9
.LBB141_10:
	mov	x3, x1
add	x3, -2147483648
	mov	r0, -2147483644
	mov	x5, x0
	jl	x3, r0, .LBB141_18
	jmp	.LBB141_11
.LBB141_11:
	mov	r0, x2
	mov	r1, x0
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	mov	x5, x0
	jnz	rax, .LBB141_19
	jmp	.LBB141_12
.LBB141_12:
	mov	r0, -2147483632
	mov	x5, x0
	jl	x3, r0, .LBB141_15
	jmp	.LBB141_13
.LBB141_13:                             // %.preheader12.preheader
	mov	r0, -2147483633
	mov	x5, x0
	jmp	.LBB141_16
.LBB141_14:
	mov	r0, 4
	jl	x1, r0, .LBB141_18
	jmp	.LBB141_15
.LBB141_15:                             // %.preheader66
	mov	r0, -2147483645
	mov	r1, x1
	jmp	.LBB141_17
.LBB141_16:                             // %.preheader12
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, [x2]
	mov	r2, x2
add	r2, 4
	mov	[x5], r1
	mov	r1, [r2]
	mov	r2, x5
add	r2, 4
	mov	r3, x2
add	r3, 8
	mov	[r2], r1
	mov	r1, [r3]
	mov	r2, x1
	mov	r3, x5
add	r3, 8
	mov	r4, x2
add	r4, 12
	mov	r5, x5
	mov	[r3], r1
	mov	r1, [r4]
add	r5, 12
add	x2, 16
add	x5, 16
	mov	[r5], r1
add	r2, 2147483632
add	x1, -16
	jg	r2, r0, .LBB141_16
	jmp	.LBB141_14
.LBB141_17:                             // =>This Inner Loop Header: Depth=1
	mov	r2, [x2]
add	x2, 4
	mov	[x5], r2
add	x1, -4
	mov	r2, r1
add	r2, 2147483644
add	x5, 4
	mov	r1, x1
	jg	r2, r0, .LBB141_17
	jmp	.LBB141_18
.LBB141_18:                             // %.loopexit11
	jz	x1, .LBB141_21
	jmp	.LBB141_19
.LBB141_19:                             // %.preheader61
	mov	x6, x5
.LBB141_20:                             // =>This Inner Loop Header: Depth=1
	mov	r0, [x2]
add	x1, -1
	mov	r1, 255
add	x2, 1
	call	__bit_and
	mov	r0, [x5]
	mov	x3, rax
	mov	r1, -256
add	x6, 1
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	[x5], rax
	mov	x5, x6
	jnz	x1, .LBB141_20
	jmp	.LBB141_21
.LBB141_21:                             // %.loopexit
	mov	rax, x0
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
// -- Begin function mempcpy
mempcpy:                                // @mempcpy
// %bb.0:
sub	rsp, 24
	mov	[rsp+20], x0
	mov	[rsp+16], x1
	mov	[rsp+12], x2
	mov	[rsp+8], x3
	mov	[rsp+4], x4
	mov	[rsp], x5
	mov	x0, r2
	mov	x3, x0
add	x3, -2147483648
	mov	r2, -2147483644
	mov	x2, r1
	mov	x1, r0
	jl	x3, r2, .LBB142_8
	jmp	.LBB142_1
.LBB142_1:
	mov	r0, x2
	mov	r1, x1
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB142_9
	jmp	.LBB142_2
.LBB142_2:
	mov	r0, -2147483632
	jl	x3, r0, .LBB142_5
	jmp	.LBB142_3
.LBB142_3:                              // %.preheader.preheader
	mov	r0, -2147483633
	jmp	.LBB142_6
.LBB142_4:
	mov	r0, 4
	jl	x0, r0, .LBB142_8
	jmp	.LBB142_5
.LBB142_5:                              // %.preheader35
	mov	r0, -2147483645
	mov	r1, x0
	jmp	.LBB142_7
.LBB142_6:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, [x2]
	mov	r2, x2
add	r2, 4
	mov	[x1], r1
	mov	r1, [r2]
	mov	r2, x1
add	r2, 4
	mov	r3, x2
add	r3, 8
	mov	[r2], r1
	mov	r1, [r3]
	mov	r2, x0
	mov	r3, x1
add	r3, 8
	mov	r4, x2
add	r4, 12
	mov	r5, x1
	mov	[r3], r1
	mov	r1, [r4]
add	r5, 12
add	x2, 16
add	x1, 16
	mov	[r5], r1
add	r2, 2147483632
add	x0, -16
	jg	r2, r0, .LBB142_6
	jmp	.LBB142_4
.LBB142_7:                              // =>This Inner Loop Header: Depth=1
	mov	r2, [x2]
add	x2, 4
	mov	[x1], r2
add	x0, -4
	mov	r2, r1
add	r2, 2147483644
add	x1, 4
	mov	r1, x0
	jg	r2, r0, .LBB142_7
	jmp	.LBB142_8
.LBB142_8:                              // %.loopexit4
	jz	x0, .LBB142_11
	jmp	.LBB142_9
.LBB142_9:                              // %.preheader32
	mov	x5, x1
.LBB142_10:                             // =>This Inner Loop Header: Depth=1
	mov	r0, [x2]
add	x0, -1
	mov	r1, 255
add	x2, 1
	call	__bit_and
	mov	r0, [x5]
	mov	x3, rax
	mov	r1, -256
add	x1, 1
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	[x5], rax
	mov	x5, x1
	jnz	x0, .LBB142_10
	jmp	.LBB142_11
.LBB142_11:                             // %.loopexit
	mov	rax, x1
	mov	x5, [rsp]
	mov	x4, [rsp+4]
	mov	x3, [rsp+8]
	mov	x2, [rsp+12]
	mov	x1, [rsp+16]
	mov	x0, [rsp+20]
add	rsp, 24
	ret
// -- End function
// -- Begin function memrchr
memrchr:                                // @memrchr
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
	mov	x1, r2
	mov	x0, r1
	mov	x2, r0
	mov	r0, x1
	add	r0, x2
	mov	r1, 3
	call	__bit_and
	mov	x4, x1
	sub	x4, rax
	mov	x6, 0
	mov	x7, x2
.LBB143_1:                              // =>This Inner Loop Header: Depth=1
	mov	x5, x2
	mov	r0, x1
	add	r0, x7
	mov	r1, 3
	add	x5, x1
	call	__bit_and
	jz	rax, .LBB143_4
	jmp	.LBB143_2
.LBB143_2:                              //   in Loop: Header=BB143_1 Depth=1
	mov	rax, 0
	je	x1, x6, .LBB143_16
	jmp	.LBB143_3
.LBB143_3:                              //   in Loop: Header=BB143_1 Depth=1
	mov	r1, 255
	mov	r0, x0
	call	__bit_and
add	x5, -1
	mov	r0, [x5]
	mov	r1, 255
	mov	x3, rax
	call	__bit_and
add	x6, 1
add	x2, -1
add	x7, -1
	je	rax, x3, .LBB143_15
	jmp	.LBB143_1
.LBB143_4:
	mov	x3, x5
	mov	r0, x4
add	r0, -2147483648
	mov	r1, -2147483644
add	x3, -1
	jl	r0, r1, .LBB143_11
	jmp	.LBB143_5
.LBB143_5:
	mov	r1, 255
	mov	r0, x0
	call	__bit_and
	mov	x3, rax
	mul	x3, 16843009
	mov	x6, 0
	mov	x7, -2139062144
	mov	x8, -2147483645
.LBB143_6:                              // =>This Inner Loop Header: Depth=1
	mov	r0, x1
	add	r0, x6
	add	r0, x2
add	r0, -4
	mov	r0, [r0]
	mov	r1, x3
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, rax
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x7, .LBB143_8
	jmp	.LBB143_7
.LBB143_7:                              //   in Loop: Header=BB143_6 Depth=1
add	x6, -4
	mov	r0, x4
	add	r0, x6
	mov	r1, r0
add	r1, -2147483648
	jg	r1, x8, .LBB143_6
	jmp	.LBB143_9
.LBB143_8:                              // %split
	add	x5, x6
	add	x4, x6
	mov	x3, x5
	jmp	.LBB143_10
.LBB143_9:                              // %._crit_edge
	add	x5, x6
	mov	x3, x5
	mov	x4, r0
.LBB143_10:
add	x3, -1
.LBB143_11:
	mov	rax, 0
	jz	x4, .LBB143_16
	jmp	.LBB143_12
.LBB143_12:                             // %.preheader.preheader
.LBB143_13:                             // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 255
	mov	r0, x0
	call	__bit_and
	mov	r0, [x3]
	mov	r1, 255
	mov	x1, rax
	call	__bit_and
	mov	r0, rax
	mov	rax, x3
	je	r0, x1, .LBB143_16
	jmp	.LBB143_14
.LBB143_14:                             //   in Loop: Header=BB143_13 Depth=1
add	x4, -1
add	x3, -1
	mov	rax, 0
	jz	x4, .LBB143_16
	jmp	.LBB143_13
.LBB143_15:                             // %..loopexit.loopexit1_crit_edge
	add	x2, x1
	mov	rax, x2
.LBB143_16:                             // %.loopexit
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
// -- Begin function memset
memset:                                 // @memset
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
	mov	x0, r1
	mov	r1, 255
	mov	x2, r2
	mov	x1, r0
	mov	r0, x0
	call	__bit_and
	mov	r1, 3
	mov	x3, rax
	mov	r0, x1
	call	__bit_and
	mov	x7, x1
	jz	rax, .LBB144_4
	jmp	.LBB144_1
.LBB144_1:
	mov	x4, x1
add	x4, 1
	mov	x8, x1
.LBB144_2:                              // =>This Inner Loop Header: Depth=1
	jz	x2, .LBB144_14
	jmp	.LBB144_3
.LBB144_3:                              //   in Loop: Header=BB144_2 Depth=1
	mov	x5, [x8]
add	x2, -1
	mov	x7, x8
	mov	r1, 255
add	x7, 1
	mov	r0, x0
	call	__bit_and
	mov	r1, -256
	mov	x6, rax
	mov	r0, x5
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x6
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	r1, 3
	mov	[x8], rax
	mov	r0, x4
	call	__bit_and
add	x4, 1
	mov	x8, x7
	jnz	rax, .LBB144_2
	jmp	.LBB144_4
.LBB144_4:                              // %.loopexit7
	mov	r0, x2
add	r0, -2147483648
	mov	r1, -2147483644
	jl	r0, r1, .LBB144_11
	jmp	.LBB144_5
.LBB144_5:
	mov	r1, -2147483632
	mul	x3, 16843009
	jl	r0, r1, .LBB144_8
	jmp	.LBB144_6
.LBB144_6:                              // %.preheader.preheader
	mov	r0, -2147483633
	jmp	.LBB144_9
.LBB144_7:
	mov	r0, 4
	jl	x2, r0, .LBB144_11
	jmp	.LBB144_8
.LBB144_8:                              // %.preheader35
	mov	r0, -2147483645
	mov	r1, x2
	jmp	.LBB144_10
.LBB144_9:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, x2
	mov	r2, x7
add	r2, 4
	mov	[x7], x3
	mov	r3, x7
add	r3, 8
	mov	[r2], x3
	mov	r2, x7
add	r2, 12
	mov	[r3], x3
add	x7, 16
	mov	[r2], x3
add	r1, 2147483632
add	x2, -16
	jg	r1, r0, .LBB144_9
	jmp	.LBB144_7
.LBB144_10:                             // =>This Inner Loop Header: Depth=1
	mov	[x7], x3
add	x2, -4
	mov	r2, r1
add	r2, 2147483644
add	x7, 4
	mov	r1, x2
	jg	r2, r0, .LBB144_10
	jmp	.LBB144_11
.LBB144_11:                             // %.loopexit5
	jz	x2, .LBB144_14
	jmp	.LBB144_12
.LBB144_12:
	mov	x5, x7
.LBB144_13:                             // =>This Inner Loop Header: Depth=1
	mov	x3, [x7]
add	x2, -1
	mov	r1, 255
add	x5, 1
	mov	r0, x0
	call	__bit_and
	mov	r1, -256
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x4
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	[x7], rax
	mov	x7, x5
	jnz	x2, .LBB144_13
	jmp	.LBB144_14
.LBB144_14:                             // %.loopexit
	mov	rax, x1
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
// -- Begin function rawmemchr
rawmemchr:                              // @rawmemchr
// %bb.0:
sub	rsp, 16
	mov	[rsp+12], x0
	mov	[rsp+8], x1
	mov	[rsp+4], x2
	mov	[rsp], x3
	mov	x0, r1
	mov	r1, 3
	mov	x1, r0
	call	__bit_and
	jz	rax, .LBB145_4
	jmp	.LBB145_1
.LBB145_1:
	mov	x2, x1
add	x2, 1
.LBB145_2:                              // =>This Inner Loop Header: Depth=1
	mov	r1, 255
	mov	r0, x0
	call	__bit_and
	mov	r0, [x1]
	mov	r1, 255
	mov	x3, rax
	call	__bit_and
	je	rax, x3, .LBB145_8
	jmp	.LBB145_3
.LBB145_3:                              //   in Loop: Header=BB145_2 Depth=1
	mov	r1, 3
add	x1, 1
	mov	r0, x2
	call	__bit_and
add	x2, 1
	jnz	rax, .LBB145_2
	jmp	.LBB145_4
.LBB145_4:                              // %.loopexit2
	mov	r1, 255
	mov	r0, x0
	call	__bit_and
	mov	x2, rax
	mul	x2, 16843009
add	x1, -5
	mov	x3, -2139062144
.LBB145_5:                              // =>This Inner Loop Header: Depth=1
	mov	r0, x1
add	r0, 5
	mov	r0, [r0]
	mov	r1, x2
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, rax
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
add	x1, 4
	je	rax, x3, .LBB145_5
	jmp	.LBB145_6
.LBB145_6:
.LBB145_7:                              // =>This Inner Loop Header: Depth=1
	mov	r1, 255
	mov	r0, x0
	call	__bit_and
add	x1, 1
	mov	r0, [x1]
	mov	r1, 255
	mov	x2, rax
	call	__bit_and
	jne	rax, x2, .LBB145_7
	jmp	.LBB145_8
.LBB145_8:                              // %.loopexit
	mov	rax, x1
	mov	x3, [rsp]
	mov	x2, [rsp+4]
	mov	x1, [rsp+8]
	mov	x0, [rsp+12]
add	rsp, 16
	ret
// -- End function
// -- Begin function rindex
rindex:                                 // @rindex
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
	mov	x2, r1
	mov	r1, 255
	mov	x1, r0
	mov	r0, x2
	call	__bit_and
	mov	x3, rax
	jz	x3, .LBB146_16
	jmp	.LBB146_1
.LBB146_1:                              // %.preheader.split.preheader.i
	mul	x3, 16843009
	mov	x0, 0
	mov	x7, -2139062144
.LBB146_2:                              // %.preheader.split.i
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB146_6 Depth 2
                                        //     Child Loop BB146_9 Depth 2
                                        //     Child Loop BB146_12 Depth 2
	mov	r1, 3
	mov	r0, x1
	call	__bit_and
	jz	rax, .LBB146_4
	jmp	.LBB146_3
.LBB146_3:                              // %.preheader29.i.preheader
                                        //   in Loop: Header=BB146_2 Depth=1
	mov	x4, x1
add	x4, 1
	jmp	.LBB146_6
.LBB146_4:                              // %.loopexit9.i.i
                                        //   in Loop: Header=BB146_2 Depth=1
	mov	x4, [x1]
	mov	r0, 16843008
	sub	r0, x4
	mov	r1, x4
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x7, .LBB146_11
	jmp	.LBB146_5
.LBB146_5:                              // %.preheader5.i.i.preheader
                                        //   in Loop: Header=BB146_2 Depth=1
	jmp	.LBB146_9
.LBB146_6:                              // %.preheader29.i
                                        //   Parent Loop BB146_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
	mov	x5, rax
	jz	x5, .LBB146_24
	jmp	.LBB146_7
.LBB146_7:                              //   in Loop: Header=BB146_6 Depth=2
	mov	r1, 255
	mov	r0, x2
	call	__bit_and
	mov	r1, 255
	mov	x6, rax
	mov	r0, x5
	call	__bit_and
	je	rax, x6, .LBB146_15
	jmp	.LBB146_8
.LBB146_8:                              //   in Loop: Header=BB146_6 Depth=2
	mov	r1, 3
add	x1, 1
	mov	r0, x4
	call	__bit_and
add	x4, 1
	jz	rax, .LBB146_4
	jmp	.LBB146_6
.LBB146_9:                              // %.preheader5.i.i
                                        //   Parent Loop BB146_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, x4
	mov	r1, x3
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, rax
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x7, .LBB146_11
	jmp	.LBB146_10
.LBB146_10:                             //   in Loop: Header=BB146_9 Depth=2
add	x1, 4
	mov	x4, [x1]
	mov	r0, 16843008
	sub	r0, x4
	mov	r1, x4
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	je	rax, x7, .LBB146_9
	jmp	.LBB146_11
.LBB146_11:                             // %.loopexit6.i.i.preheader
                                        //   in Loop: Header=BB146_2 Depth=1
add	x1, -1
.LBB146_12:                             // %.loopexit6.i.i
                                        //   Parent Loop BB146_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
add	x1, 1
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
	mov	x4, rax
	jz	x4, .LBB146_14
	jmp	.LBB146_13
.LBB146_13:                             // %.loopexit6.i.i
                                        //   in Loop: Header=BB146_12 Depth=2
	mov	r1, 255
	mov	r0, x2
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x4
	call	__bit_and
	jne	rax, x5, .LBB146_12
	jmp	.LBB146_14
.LBB146_14:                             //   in Loop: Header=BB146_2 Depth=1
	mov	r1, 255
	mov	r0, x2
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x4
	call	__bit_and
	jne	rax, x5, .LBB146_24
	jmp	.LBB146_15
.LBB146_15:                             // %strchr.exit.i
                                        //   in Loop: Header=BB146_2 Depth=1
	mov	r0, x1
add	r0, 1
	mov	x0, x1
	mov	x1, r0
	jmp	.LBB146_2
.LBB146_16:
	mov	r1, 3
	mov	r0, x1
	call	__bit_and
	mov	x0, x1
	jz	rax, .LBB146_20
	jmp	.LBB146_17
.LBB146_17:                             // %.preheader2.i1.i.preheader
	mov	x2, x1
add	x2, 1
	mov	x0, x1
.LBB146_18:                             // %.preheader2.i1.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB146_24
	jmp	.LBB146_19
.LBB146_19:                             //   in Loop: Header=BB146_18 Depth=1
	mov	r1, 3
add	x0, 1
	mov	r0, x2
	call	__bit_and
add	x2, 1
	jnz	rax, .LBB146_18
	jmp	.LBB146_20
.LBB146_20:                             // %.loopexit4.i2.i.preheader
add	x0, -5
	mov	x1, -2139062144
.LBB146_21:                             // %.loopexit4.i2.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, x0
add	r0, 5
	mov	r1, [r0]
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
add	x0, 4
	je	rax, x1, .LBB146_21
	jmp	.LBB146_22
.LBB146_22:                             // %.preheader.i3.i.preheader
.LBB146_23:                             // %.preheader.i3.i
                                        // =>This Inner Loop Header: Depth=1
add	x0, 1
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	jnz	rax, .LBB146_23
	jmp	.LBB146_24
.LBB146_24:                             // %strrchr.exit
	mov	rax, x0
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
// -- Begin function stpcpy
stpcpy:                                 // @stpcpy
// %bb.0:
sub	rsp, 16
	mov	[rsp+12], x0
	mov	[rsp+8], x1
	mov	[rsp+4], x2
	mov	[rsp], x3
	mov	x1, r1
	mov	x0, r0
	mov	r0, x1
	mov	r1, x0
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB147_4
	jmp	.LBB147_1
.LBB147_1:
	mov	x2, [x1]
	mov	r0, 16843008
	sub	r0, x2
	mov	r1, x2
	call	__bit_or
	mov	r1, -2139062144
	mov	x3, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x3, .LBB147_4
	jmp	.LBB147_2
.LBB147_2:                              // %.preheader.preheader
.LBB147_3:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
add	x1, 4
	mov	[x0], x2
	mov	x2, [x1]
	mov	r0, 16843008
	sub	r0, x2
add	x0, 4
	mov	r1, x2
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	je	rax, x3, .LBB147_3
	jmp	.LBB147_4
.LBB147_4:                              // %.loopexit.preheader
add	x0, -1
.LBB147_5:                              // %.loopexit
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x1]
add	x0, 1
	mov	r1, 255
add	x1, 1
	call	__bit_and
	mov	r0, [x0]
	mov	r1, -256
	mov	x2, rax
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	[x0], rax
	jnz	x2, .LBB147_5
	jmp	.LBB147_6
.LBB147_6:
	mov	rax, x0
	mov	x3, [rsp]
	mov	x2, [rsp+4]
	mov	x1, [rsp+8]
	mov	x0, [rsp+12]
add	rsp, 16
	ret
// -- End function
// -- Begin function stpncpy
stpncpy:                                // @stpncpy
// %bb.0:
sub	rsp, 28
	mov	[rsp+24], x0
	mov	[rsp+20], x1
	mov	[rsp+16], x2
	mov	[rsp+12], x3
	mov	[rsp+8], x4
	mov	[rsp+4], x5
	mov	[rsp], x6
	mov	x1, r2
	mov	x2, r1
	mov	x0, r0
	mov	r0, x2
	mov	r1, x0
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	mov	r0, x1
add	r0, -2147483648
	mov	r1, -2147483644
	jl	r0, r1, .LBB148_5
	jmp	.LBB148_1
.LBB148_1:
	jnz	rax, .LBB148_5
	jmp	.LBB148_2
.LBB148_2:                              // %.preheader5.preheader
	mov	x4, -2139062144
	mov	x5, -2147483645
.LBB148_3:                              // %.preheader5
                                        // =>This Inner Loop Header: Depth=1
	mov	x3, [x2]
	mov	r0, 16843008
	sub	r0, x3
	mov	r1, x3
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x4, .LBB148_5
	jmp	.LBB148_4
.LBB148_4:                              //   in Loop: Header=BB148_3 Depth=1
	mov	r0, x1
add	x1, -4
add	x2, 4
	mov	[x0], x3
add	r0, 2147483644
add	x0, 4
	jg	r0, x5, .LBB148_3
	jmp	.LBB148_5
.LBB148_5:                              // %.loopexit6.preheader
	mov	x5, 0
.LBB148_6:                              // %.loopexit6
                                        // =>This Inner Loop Header: Depth=1
	je	x1, x5, .LBB148_12
	jmp	.LBB148_7
.LBB148_7:                              //   in Loop: Header=BB148_6 Depth=1
	mov	r0, x2
	add	r0, x5
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	x6, x0
	add	x6, x5
	mov	r0, [x6]
	mov	r1, -256
	mov	x3, rax
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	[x6], rax
add	x5, 1
	jnz	x3, .LBB148_6
	jmp	.LBB148_8
.LBB148_8:
	mov	r1, x0
	add	r1, x5
	mov	x2, r1
add	x2, -1
	je	x1, x5, .LBB148_13
	jmp	.LBB148_9
.LBB148_9:                              // %.preheader.preheader
	sub	x1, x5
	mov	x3, 0
.LBB148_10:                             // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	x4, x0
	add	x4, x3
	add	x4, x5
	mov	r0, [x4]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
add	x3, 1
	mov	[x4], rax
	jne	x1, x3, .LBB148_10
	jmp	.LBB148_11
.LBB148_11:                             // %.loopexit.loopexit
	add	x0, x5
	add	x0, x3
	mov	r1, x0
	jmp	.LBB148_13
.LBB148_12:                             // %.loopexit.loopexit1
	add	x0, x5
	mov	x2, 0
	mov	r1, x0
.LBB148_13:                             // %.loopexit
	mov	r0, 0
	mov	r2, 1
	je	x2, r0, .LBB148_15
// %bb.14:                              // %.loopexit
	mov	r2, 0
.LBB148_15:                             // %.loopexit
	sub	r1, x2
	sub	r0, r2
	call	__bit_and
	add	rax, x2
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
// -- Begin function strcat
strcat:                                 // @strcat
// %bb.0:
sub	rsp, 24
	mov	[rsp+20], x0
	mov	[rsp+16], x1
	mov	[rsp+12], x2
	mov	[rsp+8], x3
	mov	[rsp+4], x4
	mov	[rsp], x5
	mov	x0, r1
	mov	r1, 3
	mov	x1, r0
	call	__bit_and
	mov	x2, x1
	jz	rax, .LBB149_4
	jmp	.LBB149_1
.LBB149_1:                              // %.preheader2.preheader
	mov	x3, x1
add	x3, 1
	mov	x2, x1
.LBB149_2:                              // %.preheader2
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x2]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB149_9
	jmp	.LBB149_3
.LBB149_3:                              //   in Loop: Header=BB149_2 Depth=1
	mov	r1, 3
add	x2, 1
	mov	r0, x3
	call	__bit_and
add	x3, 1
	jnz	rax, .LBB149_2
	jmp	.LBB149_4
.LBB149_4:                              // %.loopexit4
	mov	r0, [x2]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB149_9
	jmp	.LBB149_5
.LBB149_5:                              // %.preheader1.preheader
add	x2, -5
	mov	x3, -2139062144
.LBB149_6:                              // %.preheader1
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, x2
add	r0, 5
	mov	r1, [r0]
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
add	x2, 4
	je	rax, x3, .LBB149_6
	jmp	.LBB149_7
.LBB149_7:                              // %.preheader.preheader
.LBB149_8:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
add	x2, 1
	mov	r0, [x2]
	mov	r1, 255
	call	__bit_and
	jnz	rax, .LBB149_8
	jmp	.LBB149_9
.LBB149_9:                              // %.loopexit
	mov	r0, x2
	mov	r1, x0
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB149_13
	jmp	.LBB149_10
.LBB149_10:
	mov	x3, [x0]
	mov	r0, 16843008
	sub	r0, x3
	mov	r1, x3
	call	__bit_or
	mov	r1, -2139062144
	mov	x4, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x4, .LBB149_13
	jmp	.LBB149_11
.LBB149_11:                             // %.preheader.i.preheader
.LBB149_12:                             // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
add	x0, 4
	mov	[x2], x3
	mov	x3, [x0]
	mov	r0, 16843008
	sub	r0, x3
add	x2, 4
	mov	r1, x3
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	je	rax, x4, .LBB149_12
	jmp	.LBB149_13
.LBB149_13:                             // %.loopexit.i.preheader
	mov	x5, x2
.LBB149_14:                             // %.loopexit.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x0]
	mov	r1, 255
add	x0, 1
	call	__bit_and
	mov	r0, [x2]
	mov	x3, rax
	mov	r1, -256
add	x5, 1
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	[x2], rax
	mov	x2, x5
	jnz	x3, .LBB149_14
	jmp	.LBB149_15
.LBB149_15:                             // %strcpy.exit
	mov	rax, x1
	mov	x5, [rsp]
	mov	x4, [rsp+4]
	mov	x3, [rsp+8]
	mov	x2, [rsp+12]
	mov	x1, [rsp+16]
	mov	x0, [rsp+20]
add	rsp, 24
	ret
// -- End function
// -- Begin function strchr
strchr:                                 // @strchr
// %bb.0:
sub	rsp, 28
	mov	[rsp+24], x0
	mov	[rsp+20], x1
	mov	[rsp+16], x2
	mov	[rsp+12], x3
	mov	[rsp+8], x4
	mov	[rsp+4], x5
	mov	[rsp], x6
	mov	x1, r1
	mov	r1, 255
	mov	x0, r0
	mov	r0, x1
	call	__bit_and
	mov	r1, 3
	mov	x2, rax
	mov	r0, x0
	call	__bit_and
	jz	x2, .LBB150_3
	jmp	.LBB150_1
.LBB150_1:
	jz	rax, .LBB150_11
	jmp	.LBB150_2
.LBB150_2:
	mov	x4, x0
add	x4, 1
	jmp	.LBB150_13
.LBB150_3:
	mov	x3, x0
	jz	rax, .LBB150_7
	jmp	.LBB150_4
.LBB150_4:                              // %.preheader2.preheader
	mov	x1, x0
add	x1, 1
	mov	x3, x0
.LBB150_5:                              // %.preheader2
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x3]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB150_24
	jmp	.LBB150_6
.LBB150_6:                              //   in Loop: Header=BB150_5 Depth=1
	mov	r1, 3
add	x3, 1
	mov	r0, x1
	call	__bit_and
add	x1, 1
	jnz	rax, .LBB150_5
	jmp	.LBB150_7
.LBB150_7:                              // %.loopexit4.preheader
add	x3, -5
	mov	x0, -2139062144
.LBB150_8:                              // %.loopexit4
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, x3
add	r0, 5
	mov	r1, [r0]
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
add	x3, 4
	je	rax, x0, .LBB150_8
	jmp	.LBB150_9
.LBB150_9:                              // %.preheader.preheader
.LBB150_10:                             // %.preheader
                                        // =>This Inner Loop Header: Depth=1
add	x3, 1
	mov	r0, [x3]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB150_24
	jmp	.LBB150_10
.LBB150_11:                             // %.loopexit9
	mov	x3, [x0]
	mov	r0, 16843008
	sub	r0, x3
	mov	r1, x3
	call	__bit_or
	mov	r1, -2139062144
	mov	x4, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x4, .LBB150_18
	jmp	.LBB150_12
.LBB150_12:                             // %.preheader5.preheader
	mul	x2, 16843009
	jmp	.LBB150_16
.LBB150_13:                             // =>This Inner Loop Header: Depth=1
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	mov	x5, rax
	mov	x3, 0
	jz	x5, .LBB150_24
	jmp	.LBB150_14
.LBB150_14:                             //   in Loop: Header=BB150_13 Depth=1
	mov	r1, 255
	mov	r0, x1
	call	__bit_and
	mov	r1, 255
	mov	x6, rax
	mov	r0, x5
	call	__bit_and
	mov	x3, x0
	je	rax, x6, .LBB150_24
	jmp	.LBB150_15
.LBB150_15:                             //   in Loop: Header=BB150_13 Depth=1
	mov	r1, 3
add	x0, 1
	mov	r0, x4
	call	__bit_and
add	x4, 1
	jz	rax, .LBB150_11
	jmp	.LBB150_13
.LBB150_16:                             // %.preheader5
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, x3
	mov	r1, x2
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, rax
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x4, .LBB150_18
	jmp	.LBB150_17
.LBB150_17:                             //   in Loop: Header=BB150_16 Depth=1
add	x0, 4
	mov	x3, [x0]
	mov	r0, 16843008
	sub	r0, x3
	mov	r1, x3
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	je	rax, x4, .LBB150_16
	jmp	.LBB150_18
.LBB150_18:                             // %.loopexit6
add	x0, -1
.LBB150_19:                             // =>This Inner Loop Header: Depth=1
add	x0, 1
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	mov	x2, rax
	jz	x2, .LBB150_21
	jmp	.LBB150_20
.LBB150_20:                             //   in Loop: Header=BB150_19 Depth=1
	mov	r1, 255
	mov	r0, x1
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x2
	call	__bit_and
	jne	rax, x3, .LBB150_19
	jmp	.LBB150_21
.LBB150_21:
	mov	r1, 255
	mov	r0, x1
	call	__bit_and
	mov	r1, 255
	mov	x1, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 1
	je	rax, x1, .LBB150_23
// %bb.22:
	mov	r1, 0
.LBB150_23:
	mov	r0, 0
	sub	r0, r1
	mov	r1, x0
	call	__bit_and
	mov	x3, rax
.LBB150_24:                             // %.loopexit
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
// -- Begin function strchrnul
strchrnul:                              // @strchrnul
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
	mov	x3, r1
	mov	r1, 255
	mov	x1, r0
	mov	r0, x3
	call	__bit_and
	mov	r1, 3
	mov	x4, rax
	mov	r0, x1
	call	__bit_and
	mov	x2, rax
	jz	x4, .LBB151_3
	jmp	.LBB151_1
.LBB151_1:
	mov	x0, x1
	jz	x2, .LBB151_11
	jmp	.LBB151_2
.LBB151_2:
	mov	x5, x1
add	x5, 1
	mov	x0, x1
	jmp	.LBB151_13
.LBB151_3:
	mov	x0, x1
	jz	x2, .LBB151_7
	jmp	.LBB151_4
.LBB151_4:                              // %.preheader2.i.preheader
	mov	x2, x1
add	x2, 1
	mov	x0, x1
.LBB151_5:                              // %.preheader2.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB151_32
	jmp	.LBB151_6
.LBB151_6:                              //   in Loop: Header=BB151_5 Depth=1
	mov	r1, 3
add	x0, 1
	mov	r0, x2
	call	__bit_and
add	x2, 1
	jnz	rax, .LBB151_5
	jmp	.LBB151_7
.LBB151_7:                              // %.loopexit4.i.preheader
add	x0, -5
	mov	x1, -2139062144
.LBB151_8:                              // %.loopexit4.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, x0
add	r0, 5
	mov	r1, [r0]
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
add	x0, 4
	je	rax, x1, .LBB151_8
	jmp	.LBB151_9
.LBB151_9:                              // %.preheader.i.preheader
.LBB151_10:                             // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
add	x0, 1
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB151_32
	jmp	.LBB151_10
.LBB151_11:                             // %.loopexit9.i
	mov	x5, [x0]
	mov	r0, 16843008
	sub	r0, x5
	mov	r1, x5
	call	__bit_or
	mov	r1, -2139062144
	mov	x6, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x6, .LBB151_18
	jmp	.LBB151_12
.LBB151_12:                             // %.preheader5.i.preheader
	mul	x4, 16843009
	jmp	.LBB151_16
.LBB151_13:                             // =>This Inner Loop Header: Depth=1
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	mov	x6, rax
	jz	x6, .LBB151_22
	jmp	.LBB151_14
.LBB151_14:                             //   in Loop: Header=BB151_13 Depth=1
	mov	r1, 255
	mov	r0, x3
	call	__bit_and
	mov	r1, 255
	mov	x7, rax
	mov	r0, x6
	call	__bit_and
	je	rax, x7, .LBB151_32
	jmp	.LBB151_15
.LBB151_15:                             //   in Loop: Header=BB151_13 Depth=1
	mov	r1, 3
add	x0, 1
	mov	r0, x5
	call	__bit_and
add	x5, 1
	jz	rax, .LBB151_11
	jmp	.LBB151_13
.LBB151_16:                             // %.preheader5.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, x5
	mov	r1, x4
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, rax
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x6, .LBB151_18
	jmp	.LBB151_17
.LBB151_17:                             //   in Loop: Header=BB151_16 Depth=1
add	x0, 4
	mov	x5, [x0]
	mov	r0, 16843008
	sub	r0, x5
	mov	r1, x5
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	je	rax, x6, .LBB151_16
	jmp	.LBB151_18
.LBB151_18:                             // %.loopexit6.i
add	x0, -1
.LBB151_19:                             // =>This Inner Loop Header: Depth=1
add	x0, 1
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	mov	x4, rax
	jz	x4, .LBB151_21
	jmp	.LBB151_20
.LBB151_20:                             //   in Loop: Header=BB151_19 Depth=1
	mov	r1, 255
	mov	r0, x3
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x4
	call	__bit_and
	jne	rax, x5, .LBB151_19
	jmp	.LBB151_21
.LBB151_21:
	mov	r1, 255
	mov	r0, x3
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x4
	call	__bit_and
	je	rax, x3, .LBB151_32
	jmp	.LBB151_22
.LBB151_22:                             // %strchr.exit
	jz	x2, .LBB151_27
	jmp	.LBB151_23
.LBB151_23:
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
	mov	x0, x1
	jz	rax, .LBB151_31
	jmp	.LBB151_24
.LBB151_24:                             // %.preheader1.i.preheader
	mov	r0, x1
add	r0, 1
	mov	x0, x1
	mov	x1, r0
	jmp	.LBB151_26
.LBB151_25:                             //   in Loop: Header=BB151_26 Depth=1
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
add	x1, 1
	jz	rax, .LBB151_31
	jmp	.LBB151_26
.LBB151_26:                             // %.preheader1.i
                                        // =>This Inner Loop Header: Depth=1
add	x0, 1
	mov	r1, 3
	mov	r0, x0
	call	__bit_and
	jnz	rax, .LBB151_25
	jmp	.LBB151_27
.LBB151_27:                             // %.loopexit.i.preheader
	mov	x2, x1
add	x2, -1
	mov	x3, -2139062144
.LBB151_28:                             // %.loopexit.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, [x1]
	mov	r0, 16843008
	sub	r0, r1
	mov	x0, x2
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
add	x1, 4
add	x2, 4
	je	rax, x3, .LBB151_28
	jmp	.LBB151_29
.LBB151_29:                             // %.preheader.i1.preheader
	mov	x2, -4
.LBB151_30:                             // %.preheader.i1
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, x1
	add	r0, x2
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
add	x0, 1
add	x2, 1
	jnz	rax, .LBB151_30
	jmp	.LBB151_31
.LBB151_31:                             // %strlen.exit
.LBB151_32:                             // %strchr.exit.thread
	mov	rax, x0
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
// -- Begin function strcmp
strcmp:                                 // @strcmp
// %bb.0:
sub	rsp, 20
	mov	[rsp+16], x0
	mov	[rsp+12], x1
	mov	[rsp+8], x2
	mov	[rsp+4], x3
	mov	[rsp], x4
	mov	x0, r1
	mov	x1, r0
	mov	r0, x0
	mov	r1, x1
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB152_2
	jmp	.LBB152_1
.LBB152_1:
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
	mov	x2, rax
	jmp	.LBB152_7
.LBB152_2:
	mov	x2, [x1]
	mov	r0, [x0]
	jne	x2, r0, .LBB152_7
	jmp	.LBB152_3
.LBB152_3:                              // %.preheader5.preheader
	mov	x4, -2139062144
	mov	x3, 0
.LBB152_4:                              // %.preheader5
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, 16843008
	sub	r0, x2
	mov	r1, x2
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x4, .LBB152_13
	jmp	.LBB152_5
.LBB152_5:                              //   in Loop: Header=BB152_4 Depth=1
add	x1, 4
add	x0, 4
	mov	x2, [x1]
	mov	r0, [x0]
	je	x2, r0, .LBB152_4
	jmp	.LBB152_6
.LBB152_6:
.LBB152_7:
	mov	r1, 255
	mov	r0, x2
	call	__bit_and
	mov	x3, 0
	jz	rax, .LBB152_12
	jmp	.LBB152_8
.LBB152_8:                              // %.preheader.preheader
add	x1, 1
.LBB152_9:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x2
	call	__bit_and
	mov	r0, x2
	jne	rax, x3, .LBB152_11
	jmp	.LBB152_10
.LBB152_10:                             //   in Loop: Header=BB152_9 Depth=1
	mov	r0, [x1]
	mov	r1, 255
add	x0, 1
	call	__bit_and
	mov	x2, rax
add	x1, 1
	mov	r0, 0
	jnz	x2, .LBB152_9
	jmp	.LBB152_11
.LBB152_11:
	mov	r1, 255
	call	__bit_and
	mov	x3, rax
.LBB152_12:
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	sub	x3, rax
.LBB152_13:                             // %.loopexit
	mov	rax, x3
	mov	x4, [rsp]
	mov	x3, [rsp+4]
	mov	x2, [rsp+8]
	mov	x1, [rsp+12]
	mov	x0, [rsp+16]
add	rsp, 20
	ret
// -- End function
// -- Begin function strcpy
strcpy:                                 // @strcpy
// %bb.0:
sub	rsp, 24
	mov	[rsp+20], x0
	mov	[rsp+16], x1
	mov	[rsp+12], x2
	mov	[rsp+8], x3
	mov	[rsp+4], x4
	mov	[rsp], x5
	mov	x1, r1
	mov	x0, r0
	mov	r0, x1
	mov	r1, x0
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	mov	x4, x0
	jnz	rax, .LBB153_4
	jmp	.LBB153_1
.LBB153_1:
	mov	x2, [x1]
	mov	r0, 16843008
	sub	r0, x2
	mov	r1, x2
	call	__bit_or
	mov	r1, -2139062144
	mov	x3, -2139062144
	mov	r0, rax
	call	__bit_and
	mov	x4, x0
	jne	rax, x3, .LBB153_4
	jmp	.LBB153_2
.LBB153_2:                              // %.preheader.preheader
	mov	x4, x0
.LBB153_3:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
add	x1, 4
	mov	[x4], x2
	mov	x2, [x1]
	mov	r0, 16843008
	sub	r0, x2
add	x4, 4
	mov	r1, x2
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	je	rax, x3, .LBB153_3
	jmp	.LBB153_4
.LBB153_4:                              // %.loopexit.preheader
	mov	x5, x4
.LBB153_5:                              // %.loopexit
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x1]
	mov	r1, 255
add	x1, 1
	call	__bit_and
	mov	r0, [x4]
	mov	x2, rax
	mov	r1, -256
add	x5, 1
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	[x4], rax
	mov	x4, x5
	jnz	x2, .LBB153_5
	jmp	.LBB153_6
.LBB153_6:
	mov	rax, x0
	mov	x5, [rsp]
	mov	x4, [rsp+4]
	mov	x3, [rsp+8]
	mov	x2, [rsp+12]
	mov	x1, [rsp+16]
	mov	x0, [rsp+20]
add	rsp, 24
	ret
// -- End function
// -- Begin function strcspn
strcspn:                                // @strcspn
// %bb.0:
sub	rsp, 28
	mov	[rsp+24], x0
	mov	[rsp+20], x1
	mov	[rsp+16], x2
	mov	[rsp+12], x3
	mov	[rsp+8], x4
	mov	[rsp+4], x5
	mov	[rsp], x6
	mov	x0, r0
	mov	r0, [x0]
	mov	x1, r1
	mov	r1, 255
	call	__bit_and
	mov	x3, rax
	mov	x2, x0
	jz	x3, .LBB154_9
	jmp	.LBB154_1
.LBB154_1:
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
	mov	x4, rax
	jz	x4, .LBB154_3
	jmp	.LBB154_2
.LBB154_2:                              // %.preheader4.preheader
add	x1, 1
	mov	x2, x0
	jmp	.LBB154_5
.LBB154_3:                              // %.preheader.preheader
	mov	x2, x0
.LBB154_4:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
add	x2, 1
	mov	r0, [x2]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB154_9
	jmp	.LBB154_4
.LBB154_5:                              // %.preheader4
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB154_7 Depth 2
	mov	x6, x1
	mov	rax, x4
	jmp	.LBB154_7
.LBB154_6:                              //   in Loop: Header=BB154_7 Depth=2
	mov	r0, [x6]
	mov	r1, 255
	call	__bit_and
add	x6, 1
	jz	rax, .LBB154_8
	jmp	.LBB154_7
.LBB154_7:                              //   Parent Loop BB154_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x3
	call	__bit_and
	je	rax, x5, .LBB154_9
	jmp	.LBB154_6
.LBB154_8:                              //   in Loop: Header=BB154_5 Depth=1
add	x2, 1
	mov	r0, [x2]
	mov	r1, 255
	call	__bit_and
	mov	x3, rax
	jnz	x3, .LBB154_5
	jmp	.LBB154_9
.LBB154_9:                              // %.loopexit
	sub	x2, x0
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
// -- Begin function strdup
strdup:                                 // @strdup
// %bb.0:
sub	rsp, 60
	mov	[rsp+56], x0
	mov	[rsp+52], x1
	mov	[rsp+48], x2
	mov	[rsp+44], x3
	mov	[rsp+40], x4
	mov	[rsp+36], x5
	mov	[rsp+32], x6
	mov	[rsp+28], x7
	mov	[rsp+24], x8
	mov	[rsp+20], x9
	mov	[rsp+16], x10
	mov	[rsp+12], x11
	mov	[rsp+8], x12
	mov	[rsp+4], x13
	mov	[rsp], x14
	mov	r1, 3
	mov	x0, r0
	call	__bit_and
	mov	x1, x0
	jz	rax, .LBB155_5
	jmp	.LBB155_1
.LBB155_1:
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	mov	x3, x0
	jz	rax, .LBB155_9
	jmp	.LBB155_2
.LBB155_2:                              // %.preheader1.i.preheader
	mov	x1, x0
add	x1, 1
	mov	x3, x0
	jmp	.LBB155_4
.LBB155_3:                              //   in Loop: Header=BB155_4 Depth=1
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
add	x1, 1
	jz	rax, .LBB155_9
	jmp	.LBB155_4
.LBB155_4:                              // %.preheader1.i
                                        // =>This Inner Loop Header: Depth=1
add	x3, 1
	mov	r1, 3
	mov	r0, x3
	call	__bit_and
	jnz	rax, .LBB155_3
	jmp	.LBB155_5
.LBB155_5:                              // %.loopexit.i.preheader
	mov	x2, x1
add	x2, -1
	mov	x4, -2139062144
.LBB155_6:                              // %.loopexit.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, [x1]
	mov	r0, 16843008
	sub	r0, r1
	mov	x3, x2
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
add	x1, 4
add	x2, 4
	je	rax, x4, .LBB155_6
	jmp	.LBB155_7
.LBB155_7:                              // %.preheader.i.preheader
	mov	x2, -4
.LBB155_8:                              // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, x1
	add	r0, x2
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
add	x3, 1
add	x2, 1
	jnz	rax, .LBB155_8
	jmp	.LBB155_9
.LBB155_9:                              // %strlen.exit
	sub	x3, x0
add	x3, 1
	mov	r0, x3
	call	malloc
	mov	x1, rax
	jz	x1, .LBB155_26
	jmp	.LBB155_10
.LBB155_10:
	mov	r0, x3
add	r0, -2147483648
	mov	r1, -2147483632
	mov	x6, x1
	jl	r0, r1, .LBB155_23
	jmp	.LBB155_11
.LBB155_11:
	mov	r1, 3
	mov	r0, x1
	call	__bit_and
	mov	x2, rax
	mov	x7, 8
	sub	x7, x2
	mov	x9, 0
	mov	x4, x0
.LBB155_12:                             // =>This Inner Loop Header: Depth=1
	mov	r0, x0
	add	r0, x9
	mov	r0, [r0]
	mov	x8, x1
	mov	r1, 255
	add	x8, x9
	call	__bit_and
	mov	r0, [x8]
	mov	r1, -256
	mov	x5, rax
	call	__bit_and
	mov	r1, 255
	mov	x6, rax
	mov	r0, x5
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	[x8], rax
add	x9, 1
add	x4, 1
	jne	x7, x9, .LBB155_12
	jmp	.LBB155_13
.LBB155_13:
	mov	r1, -8
	mov	r0, x2
	call	__bit_or
	mov	x2, rax
	mov	x5, x0
	add	x5, x9
	mov	r1, 3
	add	x2, x3
	mov	r0, x5
	call	__bit_and
	jnz	rax, .LBB155_20
	jmp	.LBB155_14
.LBB155_14:
	mov	x6, x1
	mov	r0, x2
add	r0, -2147483648
	mov	r1, -2147483632
	add	x6, x9
	jl	r0, r1, .LBB155_16
	jmp	.LBB155_15
.LBB155_15:                             // %.preheader.i2.preheader
	mov	x6, x1
	add	x6, x9
	add	x0, x9
	mov	r0, 0
	mov	r1, -2147483633
	jmp	.LBB155_18
.LBB155_16:                             // %.preheader77
	mov	r0, -2147483645
	mov	x0, x5
	mov	x3, x2
	jmp	.LBB155_19
.LBB155_17:
	add	x0, r0
	mov	r1, 3
	add	x6, r0
	mov	x5, x0
	mov	x3, x2
	jg	x2, r1, .LBB155_16
	jmp	.LBB155_23
.LBB155_18:                             // %.preheader.i2
                                        // =>This Inner Loop Header: Depth=1
	mov	r2, x0
	add	r2, r0
	mov	r3, [r2]
	mov	r4, x6
	add	r4, r0
	mov	[r4], r3
	mov	r3, r2
add	r3, 4
	mov	r3, [r3]
	mov	r5, r4
add	r5, 4
	mov	[r5], r3
	mov	r3, r2
add	r3, 8
	mov	r3, [r3]
	mov	r5, r4
add	r5, 8
	mov	[r5], r3
add	r2, 12
	mov	r2, [r2]
	mov	r3, x2
add	r4, 12
	mov	[r4], r2
add	x2, -16
add	r3, 2147483632
add	r0, 16
	jg	r3, r1, .LBB155_18
	jmp	.LBB155_17
.LBB155_19:                             // =>This Inner Loop Header: Depth=1
	mov	r1, [x0]
add	x0, 4
	mov	[x6], r1
add	x3, -4
	mov	r1, x2
add	r1, 2147483644
add	x6, 4
	mov	x2, x3
	jg	r1, r0, .LBB155_19
	jmp	.LBB155_23
.LBB155_20:
	mov	r1, 3
	mov	r0, rax
	mov	x6, rax
	call	__bit_shl
	mov	x3, rax
	mov	x11, 8
	mov	r1, 3
	sub	x11, x6
	mov	r0, x4
	call	__bit_and
	mov	x12, x0
	sub	x12, rax
	mov	r0, x12
	add	r0, x9
	mov	x6, [r0]
add	x12, 4
	mov	x10, 0
add	x11, -2147483648
.LBB155_21:                             // =>This Inner Loop Header: Depth=1
	mov	x13, x2
	mov	x14, x1
	mov	r0, x9
	add	r0, x10
	add	r0, x12
	mov	x7, [r0]
	add	x14, x10
	mov	r1, 31
	add	x14, x9
	mov	r0, x3
	call	__bit_and
	mov	r0, x6
	mov	r1, rax
	call	__bit_shr
	mov	x6, rax
	mov	r0, x3
	call	__bit_not
	mov	r1, 31
	mov	r0, rax
	call	__bit_and
	mov	r1, 1
	mov	x8, rax
	mov	r0, x7
	call	__bit_shl
	mov	r0, rax
	mov	r1, x8
	call	__bit_shl
	mov	r0, rax
	mov	r1, x6
	call	__bit_or
	mov	[x14], rax
add	x2, -4
add	x13, 2147483644
add	x10, 4
	mov	x6, x7
	jge	x13, x11, .LBB155_21
	jmp	.LBB155_22
.LBB155_22:
	mov	r1, -4
	mov	r0, x5
	call	__bit_or
	mov	x3, rax
	mov	r1, 3
	add	x3, x10
	mov	r0, x4
	call	__bit_and
	sub	x0, rax
	add	x0, x3
	add	x0, x9
add	x0, 4
	mov	x6, x1
	add	x6, x9
	add	x6, x10
	jmp	.LBB155_24
.LBB155_23:                             // %.loopexit8.i
	mov	x2, x3
	jz	x3, .LBB155_26
	jmp	.LBB155_24
.LBB155_24:                             // %.preheader
	mov	x5, x6
.LBB155_25:                             // =>This Inner Loop Header: Depth=1
	mov	r0, [x0]
add	x2, -1
	mov	r1, 255
add	x0, 1
	call	__bit_and
	mov	r0, [x6]
	mov	x3, rax
	mov	r1, -256
add	x5, 1
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	[x6], rax
	mov	x6, x5
	jnz	x2, .LBB155_25
	jmp	.LBB155_26
.LBB155_26:                             // %memcpy.exit
	mov	rax, x1
	mov	x14, [rsp]
	mov	x13, [rsp+4]
	mov	x12, [rsp+8]
	mov	x11, [rsp+12]
	mov	x10, [rsp+16]
	mov	x9, [rsp+20]
	mov	x8, [rsp+24]
	mov	x7, [rsp+28]
	mov	x6, [rsp+32]
	mov	x5, [rsp+36]
	mov	x4, [rsp+40]
	mov	x3, [rsp+44]
	mov	x2, [rsp+48]
	mov	x1, [rsp+52]
	mov	x0, [rsp+56]
add	rsp, 60
	ret
// -- End function
// -- Begin function strlen
strlen:                                 // @strlen
// %bb.0:
sub	rsp, 20
	mov	[rsp+16], x0
	mov	[rsp+12], x1
	mov	[rsp+8], x2
	mov	[rsp+4], x3
	mov	[rsp], x4
	mov	r1, 3
	mov	x0, r0
	call	__bit_and
	mov	x2, x0
	jz	rax, .LBB156_5
	jmp	.LBB156_1
.LBB156_1:
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	mov	x1, x0
	jz	rax, .LBB156_9
	jmp	.LBB156_2
.LBB156_2:                              // %.preheader1.preheader
	mov	x2, x0
add	x2, 1
	mov	x1, x0
	jmp	.LBB156_4
.LBB156_3:                              //   in Loop: Header=BB156_4 Depth=1
	mov	r0, [x2]
	mov	r1, 255
	call	__bit_and
add	x2, 1
	jz	rax, .LBB156_9
	jmp	.LBB156_4
.LBB156_4:                              // %.preheader1
                                        // =>This Inner Loop Header: Depth=1
add	x1, 1
	mov	r1, 3
	mov	r0, x1
	call	__bit_and
	jnz	rax, .LBB156_3
	jmp	.LBB156_5
.LBB156_5:                              // %.loopexit.preheader
	mov	x3, x2
add	x3, -1
	mov	x4, -2139062144
.LBB156_6:                              // %.loopexit
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, [x2]
	mov	r0, 16843008
	sub	r0, r1
	mov	x1, x3
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
add	x2, 4
add	x3, 4
	je	rax, x4, .LBB156_6
	jmp	.LBB156_7
.LBB156_7:                              // %.preheader.preheader
	mov	x3, -4
.LBB156_8:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, x2
	add	r0, x3
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
add	x1, 1
add	x3, 1
	jnz	rax, .LBB156_8
	jmp	.LBB156_9
.LBB156_9:                              // %.loopexit2
	sub	x1, x0
	mov	rax, x1
	mov	x4, [rsp]
	mov	x3, [rsp+4]
	mov	x2, [rsp+8]
	mov	x1, [rsp+12]
	mov	x0, [rsp+16]
add	rsp, 20
	ret
// -- End function
// -- Begin function strncat
strncat:                                // @strncat
// %bb.0:
sub	rsp, 24
	mov	[rsp+20], x0
	mov	[rsp+16], x1
	mov	[rsp+12], x2
	mov	[rsp+8], x3
	mov	[rsp+4], x4
	mov	[rsp], x5
	mov	x1, r1
	mov	r1, 3
	mov	x2, r2
	mov	x0, r0
	call	__bit_and
	mov	x5, x0
	jz	rax, .LBB157_4
	jmp	.LBB157_1
.LBB157_1:                              // %.preheader5.preheader
	mov	x3, x0
add	x3, 1
	mov	x5, x0
.LBB157_2:                              // %.preheader5
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB157_9
	jmp	.LBB157_3
.LBB157_3:                              //   in Loop: Header=BB157_2 Depth=1
	mov	r1, 3
add	x5, 1
	mov	r0, x3
	call	__bit_and
add	x3, 1
	jnz	rax, .LBB157_2
	jmp	.LBB157_4
.LBB157_4:                              // %.loopexit7
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB157_9
	jmp	.LBB157_5
.LBB157_5:                              // %.preheader4.preheader
add	x5, -5
	mov	x3, -2139062144
.LBB157_6:                              // %.preheader4
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, x5
add	r0, 5
	mov	r1, [r0]
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
add	x5, 4
	je	rax, x3, .LBB157_6
	jmp	.LBB157_7
.LBB157_7:                              // %.preheader2.preheader
.LBB157_8:                              // %.preheader2
                                        // =>This Inner Loop Header: Depth=1
add	x5, 1
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	jnz	rax, .LBB157_8
	jmp	.LBB157_9
.LBB157_9:                              // %.loopexit3
	jz	x2, .LBB157_14
	jmp	.LBB157_10
.LBB157_10:                             // %.preheader.preheader
.LBB157_11:                             // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x5]
	mov	r1, -256
	mov	x3, rax
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	[x5], rax
	jz	x3, .LBB157_14
	jmp	.LBB157_12
.LBB157_12:                             //   in Loop: Header=BB157_11 Depth=1
add	x5, 1
add	x2, -1
add	x1, 1
	jnz	x2, .LBB157_11
	jmp	.LBB157_13
.LBB157_13:
	mov	r0, [x5]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	[x5], rax
.LBB157_14:                             // %.loopexit
	mov	rax, x0
	mov	x5, [rsp]
	mov	x4, [rsp+4]
	mov	x3, [rsp+8]
	mov	x2, [rsp+12]
	mov	x1, [rsp+16]
	mov	x0, [rsp+20]
add	rsp, 24
	ret
// -- End function
// -- Begin function strncmp
strncmp:                                // @strncmp
// %bb.0:
sub	rsp, 28
	mov	[rsp+24], x0
	mov	[rsp+20], x1
	mov	[rsp+16], x2
	mov	[rsp+12], x3
	mov	[rsp+8], x4
	mov	[rsp+4], x5
	mov	[rsp], x6
	mov	x1, r2
	mov	x2, r1
	mov	x3, r0
	mov	x0, 0
	jz	x1, .LBB158_14
	jmp	.LBB158_1
.LBB158_1:
	mov	r0, x2
	mov	r1, x3
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	mov	r0, x1
add	r0, -2147483648
	mov	r1, -2147483644
	jl	r0, r1, .LBB158_8
	jmp	.LBB158_2
.LBB158_2:
	jnz	rax, .LBB158_8
	jmp	.LBB158_3
.LBB158_3:                              // %.preheader10.preheader
	mov	x4, 4
	mov	x5, -2139062144
	mov	x6, -2147483645
.LBB158_4:                              // %.preheader10
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, [x3]
	mov	r0, [x2]
	jne	r1, r0, .LBB158_8
	jmp	.LBB158_5
.LBB158_5:                              //   in Loop: Header=BB158_4 Depth=1
	je	x1, x4, .LBB158_14
	jmp	.LBB158_6
.LBB158_6:                              //   in Loop: Header=BB158_4 Depth=1
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x5, .LBB158_14
	jmp	.LBB158_7
.LBB158_7:                              //   in Loop: Header=BB158_4 Depth=1
add	x1, -4
add	x3, 4
	mov	r0, x1
add	r0, -2147483648
add	x2, 4
	jg	r0, x6, .LBB158_4
	jmp	.LBB158_8
.LBB158_8:                              // %.loopexit11
	mov	r0, [x3]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x2]
	mov	r1, 255
	mov	x4, rax
	call	__bit_and
	jne	x4, rax, .LBB158_13
	jmp	.LBB158_9
.LBB158_9:                              // %.preheader.preheader
add	x1, -1
add	x2, 1
add	x3, 1
.LBB158_10:                             // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 255
	mov	r0, x4
	call	__bit_and
	jz	rax, .LBB158_14
	jmp	.LBB158_11
.LBB158_11:                             // %.preheader
                                        //   in Loop: Header=BB158_10 Depth=1
	jz	x1, .LBB158_14
	jmp	.LBB158_12
.LBB158_12:                             //   in Loop: Header=BB158_10 Depth=1
	mov	r0, [x3]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x2]
	mov	r1, 255
	mov	x4, rax
	call	__bit_and
add	x1, -1
add	x2, 1
add	x3, 1
	je	x4, rax, .LBB158_10
	jmp	.LBB158_13
.LBB158_13:                             // %.loopexit9
	mov	r1, 255
	mov	r0, x4
	mov	x1, rax
	call	__bit_and
	mov	r1, 255
	mov	x0, rax
	mov	r0, x1
	call	__bit_and
	sub	x0, rax
.LBB158_14:                             // %.loopexit
	mov	rax, x0
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
// -- Begin function strncpy
strncpy:                                // @strncpy
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
	mov	x2, r2
	mov	x1, r1
	mov	x0, r0
	mov	r0, x1
	mov	r1, x0
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	mov	r0, x2
add	r0, -2147483648
	mov	r1, -2147483644
	mov	x4, x0
	jl	r0, r1, .LBB159_5
	jmp	.LBB159_1
.LBB159_1:
	mov	x4, x0
	jnz	rax, .LBB159_5
	jmp	.LBB159_2
.LBB159_2:                              // %.preheader4.preheader
	mov	x6, -2139062144
	mov	x7, -2147483645
	mov	x4, x0
	mov	x5, x2
.LBB159_3:                              // %.preheader4
                                        // =>This Inner Loop Header: Depth=1
	mov	x3, [x1]
	mov	r0, 16843008
	sub	r0, x3
	mov	r1, x3
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x6, .LBB159_6
	jmp	.LBB159_4
.LBB159_4:                              //   in Loop: Header=BB159_3 Depth=1
	mov	x2, x5
add	x2, -4
add	x1, 4
	mov	[x4], x3
	mov	r0, x5
add	r0, 2147483644
add	x4, 4
	mov	x5, x2
	jg	r0, x7, .LBB159_3
	jmp	.LBB159_5
.LBB159_5:                              // %.loopexit6
	mov	x5, x2
	jz	x2, .LBB159_12
	jmp	.LBB159_6
.LBB159_6:                              // %.loopexit5.preheader
	mov	x6, 1
.LBB159_7:                              // %.loopexit5
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x1]
	mov	x8, x4
	mov	x7, x5
	mov	r1, 255
add	x5, -1
	call	__bit_and
	mov	r0, [x8]
	mov	x2, rax
	mov	r1, -256
add	x4, 1
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	[x8], rax
	jz	x2, .LBB159_9
	jmp	.LBB159_8
.LBB159_8:                              // %.loopexit5
                                        //   in Loop: Header=BB159_7 Depth=1
add	x1, 1
	jne	x7, x6, .LBB159_7
	jmp	.LBB159_9
.LBB159_9:
	jz	x5, .LBB159_12
	jmp	.LBB159_10
.LBB159_10:                             // %.preheader.preheader
	mov	x1, 0
.LBB159_11:                             // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	x2, x4
	add	x2, x1
	mov	r0, [x2]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
add	x1, 1
	mov	[x2], rax
	jne	x5, x1, .LBB159_11
	jmp	.LBB159_12
.LBB159_12:                             // %.loopexit
	mov	rax, x0
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
// -- Begin function strndup
strndup:                                // @strndup
// %bb.0:
sub	rsp, 64
	mov	[rsp+60], x0
	mov	[rsp+56], x1
	mov	[rsp+52], x2
	mov	[rsp+48], x3
	mov	[rsp+44], x4
	mov	[rsp+40], x5
	mov	[rsp+36], x6
	mov	[rsp+32], x7
	mov	[rsp+28], x8
	mov	[rsp+24], x9
	mov	[rsp+20], x10
	mov	[rsp+16], x11
	mov	[rsp+12], x12
	mov	[rsp+8], x13
	mov	[rsp+4], x14
	mov	[rsp], x15
	mov	x1, r1
	mov	x0, r0
	mov	x9, x0
	jz	x1, .LBB160_4
	jmp	.LBB160_1
.LBB160_1:
	mov	x2, x0
	add	x2, x1
	mov	x3, x0
.LBB160_2:                              // =>This Inner Loop Header: Depth=1
	mov	r0, [x3]
	mov	r1, 255
	call	__bit_and
	mov	x9, x3
	jz	rax, .LBB160_4
	jmp	.LBB160_3
.LBB160_3:                              //   in Loop: Header=BB160_2 Depth=1
add	x1, -1
add	x3, 1
	mov	x9, x2
	jnz	x1, .LBB160_2
	jmp	.LBB160_4
.LBB160_4:                              // %.loopexit
	sub	x9, x0
	mov	r0, x9
add	r0, 1
	call	malloc
	mov	x1, rax
	jz	x1, .LBB160_22
	jmp	.LBB160_5
.LBB160_5:
	mov	r0, x9
add	r0, -2147483648
	mov	r1, -2147483632
	mov	x5, x1
	mov	x2, x9
	jl	r0, r1, .LBB160_18
	jmp	.LBB160_6
.LBB160_6:
	mov	r1, 3
	mov	r0, x1
	call	__bit_and
	mov	x2, rax
	mov	x6, 8
	sub	x6, x2
	mov	x10, 0
	mov	x3, x0
.LBB160_7:                              // =>This Inner Loop Header: Depth=1
	mov	r0, x0
	add	r0, x10
	mov	r0, [r0]
	mov	x7, x1
	mov	r1, 255
	add	x7, x10
	call	__bit_and
	mov	r0, [x7]
	mov	r1, -256
	mov	x4, rax
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x4
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	[x7], rax
add	x10, 1
add	x3, 1
	jne	x6, x10, .LBB160_7
	jmp	.LBB160_8
.LBB160_8:
	mov	r1, -8
	mov	r0, x2
	call	__bit_or
	mov	x2, rax
	mov	x4, x0
	add	x4, x10
	mov	r1, 3
	add	x2, x9
	mov	r0, x4
	call	__bit_and
	jnz	rax, .LBB160_15
	jmp	.LBB160_9
.LBB160_9:
	mov	x5, x1
	mov	r0, x2
add	r0, -2147483648
	mov	r1, -2147483632
	add	x5, x10
	jl	r0, r1, .LBB160_11
	jmp	.LBB160_10
.LBB160_10:                             // %.preheader.i.preheader
	mov	x5, x1
	add	x5, x10
	add	x0, x10
	mov	r0, 0
	mov	r1, -2147483633
	jmp	.LBB160_13
.LBB160_11:                             // %.preheader55
	mov	r0, -2147483645
	mov	r1, x2
	mov	x0, x4
	jmp	.LBB160_14
.LBB160_12:
	add	x0, r0
	mov	r1, 3
	add	x5, r0
	mov	x4, x0
	jg	x2, r1, .LBB160_11
	jmp	.LBB160_18
.LBB160_13:                             // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r2, x0
	add	r2, r0
	mov	r3, [r2]
	mov	r4, x5
	add	r4, r0
	mov	[r4], r3
	mov	r3, r2
add	r3, 4
	mov	r3, [r3]
	mov	r5, r4
add	r5, 4
	mov	[r5], r3
	mov	r3, r2
add	r3, 8
	mov	r3, [r3]
	mov	r5, r4
add	r5, 8
	mov	[r5], r3
add	r2, 12
	mov	r2, [r2]
	mov	r3, x2
add	r4, 12
	mov	[r4], r2
add	x2, -16
add	r3, 2147483632
add	r0, 16
	jg	r3, r1, .LBB160_13
	jmp	.LBB160_12
.LBB160_14:                             // =>This Inner Loop Header: Depth=1
	mov	r2, [x0]
add	x0, 4
	mov	[x5], r2
add	x2, -4
	mov	r2, r1
add	r2, 2147483644
add	x5, 4
	mov	r1, x2
	jg	r2, r0, .LBB160_14
	jmp	.LBB160_18
.LBB160_15:
	mov	r1, 3
	mov	r0, rax
	mov	x6, rax
	call	__bit_shl
	mov	x5, rax
	mov	x12, 8
	mov	r1, 3
	sub	x12, x6
	mov	r0, x3
	call	__bit_and
	mov	x13, x0
	sub	x13, rax
	mov	r0, x13
	add	r0, x10
	mov	x6, [r0]
add	x13, 4
	mov	x11, 0
add	x12, -2147483648
.LBB160_16:                             // =>This Inner Loop Header: Depth=1
	mov	x14, x2
	mov	x15, x1
	mov	r0, x10
	add	r0, x11
	add	r0, x13
	mov	x7, [r0]
	add	x15, x11
	mov	r1, 31
	add	x15, x10
	mov	r0, x5
	call	__bit_and
	mov	r0, x6
	mov	r1, rax
	call	__bit_shr
	mov	x6, rax
	mov	r0, x5
	call	__bit_not
	mov	r1, 31
	mov	r0, rax
	call	__bit_and
	mov	r1, 1
	mov	x8, rax
	mov	r0, x7
	call	__bit_shl
	mov	r0, rax
	mov	r1, x8
	call	__bit_shl
	mov	r0, rax
	mov	r1, x6
	call	__bit_or
	mov	[x15], rax
add	x2, -4
add	x14, 2147483644
add	x11, 4
	mov	x6, x7
	jge	x14, x12, .LBB160_16
	jmp	.LBB160_17
.LBB160_17:
	mov	r1, -4
	mov	r0, x4
	call	__bit_or
	mov	x4, rax
	mov	r1, 3
	add	x4, x11
	mov	r0, x3
	call	__bit_and
	sub	x0, rax
	add	x0, x4
	add	x0, x10
	add	x10, x1
	add	x10, x11
add	x0, 4
	mov	x5, x10
	jmp	.LBB160_19
.LBB160_18:                             // %.loopexit8.i
	jz	x2, .LBB160_21
	jmp	.LBB160_19
.LBB160_19:                             // %.preheader
	mov	x6, x5
.LBB160_20:                             // =>This Inner Loop Header: Depth=1
	mov	r0, [x0]
add	x2, -1
	mov	r1, 255
add	x0, 1
	call	__bit_and
	mov	r0, [x5]
	mov	x3, rax
	mov	r1, -256
add	x6, 1
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	[x5], rax
	mov	x5, x6
	jnz	x2, .LBB160_20
	jmp	.LBB160_21
.LBB160_21:                             // %memcpy.exit
	mov	x0, x1
	add	x0, x9
	mov	r0, [x0]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	[x0], rax
.LBB160_22:
	mov	rax, x1
	mov	x15, [rsp]
	mov	x14, [rsp+4]
	mov	x13, [rsp+8]
	mov	x12, [rsp+12]
	mov	x11, [rsp+16]
	mov	x10, [rsp+20]
	mov	x9, [rsp+24]
	mov	x8, [rsp+28]
	mov	x7, [rsp+32]
	mov	x6, [rsp+36]
	mov	x5, [rsp+40]
	mov	x4, [rsp+44]
	mov	x3, [rsp+48]
	mov	x2, [rsp+52]
	mov	x1, [rsp+56]
	mov	x0, [rsp+60]
add	rsp, 64
	ret
// -- End function
// -- Begin function strnlen
strnlen:                                // @strnlen
// %bb.0:
sub	rsp, 16
	mov	[rsp+12], x0
	mov	[rsp+8], x1
	mov	[rsp+4], x2
	mov	[rsp], x3
	mov	x1, r1
	mov	x0, r0
	mov	rax, x0
	jz	x1, .LBB161_4
	jmp	.LBB161_1
.LBB161_1:
	mov	x2, x0
	add	x2, x1
	mov	x3, x0
.LBB161_2:                              // =>This Inner Loop Header: Depth=1
	mov	r0, [x3]
	mov	r1, 255
	call	__bit_and
	mov	r0, rax
	mov	rax, x3
	jz	r0, .LBB161_4
	jmp	.LBB161_3
.LBB161_3:                              //   in Loop: Header=BB161_2 Depth=1
add	x1, -1
add	x3, 1
	mov	rax, x2
	jnz	x1, .LBB161_2
	jmp	.LBB161_4
.LBB161_4:                              // %.loopexit
	sub	rax, x0
	mov	x3, [rsp]
	mov	x2, [rsp+4]
	mov	x1, [rsp+8]
	mov	x0, [rsp+12]
add	rsp, 16
	ret
// -- End function
// -- Begin function strnstr
strnstr:                                // @strnstr
// %bb.0:
sub	rsp, 28
	mov	[rsp+24], x0
	mov	[rsp+20], x1
	mov	[rsp+16], x2
	mov	[rsp+12], x3
	mov	[rsp+8], x4
	mov	[rsp+4], x5
	mov	[rsp], x6
	mov	x2, r2
	mov	x1, r1
	mov	x0, r0
	mov	x3, x1
	jz	x2, .LBB162_4
	jmp	.LBB162_1
.LBB162_1:
	mov	x4, x1
	add	x4, x2
	mov	x5, x2
	mov	x6, x1
.LBB162_2:                              // =>This Inner Loop Header: Depth=1
	mov	r0, [x6]
	mov	r1, 255
	call	__bit_and
	mov	x3, x6
	jz	rax, .LBB162_4
	jmp	.LBB162_3
.LBB162_3:                              //   in Loop: Header=BB162_2 Depth=1
add	x5, -1
add	x6, 1
	mov	x3, x4
	jnz	x5, .LBB162_2
	jmp	.LBB162_4
.LBB162_4:                              // %strnlen.exit
	sub	x3, x1
	mov	r0, x3
add	r0, -2147483648
	mov	r1, x2
add	r1, -2147483648
	jl	r0, r1, .LBB162_6
	jmp	.LBB162_5
.LBB162_5:
	mov	r0, x1
	add	r0, x3
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r0, rax
	mov	rax, 0
	jnz	r0, .LBB162_21
	jmp	.LBB162_6
.LBB162_6:
	mov	r0, x0
	mov	r1, x2
	mov	r2, x1
	mov	r3, x3
	call	memmem
	mov	x1, rax
	mov	rax, 0
	jz	x1, .LBB162_21
	jmp	.LBB162_7
.LBB162_7:
	mov	x3, x1
	mov	r1, 3
	sub	x3, x0
	mov	r0, x0
	call	__bit_and
	jz	rax, .LBB162_13
	jmp	.LBB162_8
.LBB162_8:                              // %.preheader2.preheader
	mov	x2, x0
.LBB162_9:                              // %.preheader2
                                        // =>This Inner Loop Header: Depth=1
	mov	rax, x1
	je	x1, x2, .LBB162_21
	jmp	.LBB162_10
.LBB162_10:                             //   in Loop: Header=BB162_9 Depth=1
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	mov	r0, rax
	mov	rax, 0
	jz	r0, .LBB162_21
	jmp	.LBB162_11
.LBB162_11:                             //   in Loop: Header=BB162_9 Depth=1
add	x2, 1
	mov	r1, 3
add	x0, 1
	mov	r0, x2
	call	__bit_and
	jnz	rax, .LBB162_9
	jmp	.LBB162_12
.LBB162_12:                             // %.loopexit9.i.loopexit
	mov	x3, x1
	sub	x3, x2
.LBB162_13:                             // %.loopexit9.i
	mov	r0, x3
add	r0, -2147483648
	mov	r1, -2147483644
	jl	r0, r1, .LBB162_17
	jmp	.LBB162_14
.LBB162_14:                             // %.preheader.preheader
	mov	x4, -2139062144
	mov	x5, -2147483645
	mov	x2, x3
.LBB162_15:                             // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, [x0]
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x4, .LBB162_18
	jmp	.LBB162_16
.LBB162_16:                             //   in Loop: Header=BB162_15 Depth=1
	mov	x3, x2
add	x3, -4
	mov	r0, x2
add	r0, 2147483644
add	x0, 4
	mov	x2, x3
	jg	r0, x5, .LBB162_15
	jmp	.LBB162_17
.LBB162_17:                             // %.loopexit6.i
	mov	x2, x3
	mov	rax, x1
	jz	x3, .LBB162_21
	jmp	.LBB162_18
.LBB162_18:                             // %.loopexit5.i.preheader
.LBB162_19:                             // %.loopexit5.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	mov	r0, rax
	mov	rax, 0
	jz	r0, .LBB162_21
	jmp	.LBB162_20
.LBB162_20:                             //   in Loop: Header=BB162_19 Depth=1
add	x2, -1
add	x0, 1
	mov	rax, x1
	jnz	x2, .LBB162_19
	jmp	.LBB162_21
.LBB162_21:                             // %memchr.exit
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
// -- Begin function strpbrk
strpbrk:                                // @strpbrk
// %bb.0:
sub	rsp, 24
	mov	[rsp+20], x0
	mov	[rsp+16], x1
	mov	[rsp+12], x2
	mov	[rsp+8], x3
	mov	[rsp+4], x4
	mov	[rsp], x5
	mov	x4, r0
	mov	r0, [x4]
	mov	x0, r1
	mov	r1, 255
	call	__bit_and
	mov	x1, rax
	mov	x2, 0
	jz	x1, .LBB163_7
	jmp	.LBB163_1
.LBB163_1:
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	mov	x3, rax
	jz	x3, .LBB163_7
	jmp	.LBB163_2
.LBB163_2:                              // %.preheader.preheader
add	x0, 1
.LBB163_3:                              // %.preheader
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB163_5 Depth 2
	mov	x2, x4
	mov	x5, x0
	mov	rax, x3
	jmp	.LBB163_5
.LBB163_4:                              //   in Loop: Header=BB163_5 Depth=2
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
add	x5, 1
	jz	rax, .LBB163_6
	jmp	.LBB163_5
.LBB163_5:                              //   Parent Loop BB163_3 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x1
	call	__bit_and
	je	rax, x4, .LBB163_7
	jmp	.LBB163_4
.LBB163_6:                              //   in Loop: Header=BB163_3 Depth=1
add	x2, 1
	mov	r0, [x2]
	mov	r1, 255
	call	__bit_and
	mov	x1, rax
	mov	x4, x2
	mov	x2, 0
	jnz	x1, .LBB163_3
	jmp	.LBB163_7
.LBB163_7:                              // %.loopexit
	mov	rax, x2
	mov	x5, [rsp]
	mov	x4, [rsp+4]
	mov	x3, [rsp+8]
	mov	x2, [rsp+12]
	mov	x1, [rsp+16]
	mov	x0, [rsp+20]
add	rsp, 24
	ret
// -- End function
// -- Begin function strrchr
strrchr:                                // @strrchr
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
	mov	x2, r1
	mov	r1, 255
	mov	x1, r0
	mov	r0, x2
	call	__bit_and
	mov	x3, rax
	jz	x3, .LBB164_16
	jmp	.LBB164_1
.LBB164_1:                              // %.preheader.split.preheader
	mul	x3, 16843009
	mov	x0, 0
	mov	x7, -2139062144
.LBB164_2:                              // %.preheader.split
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB164_6 Depth 2
                                        //     Child Loop BB164_9 Depth 2
                                        //     Child Loop BB164_12 Depth 2
	mov	r1, 3
	mov	r0, x1
	call	__bit_and
	jz	rax, .LBB164_4
	jmp	.LBB164_3
.LBB164_3:                              // %.preheader29.preheader
                                        //   in Loop: Header=BB164_2 Depth=1
	mov	x4, x1
add	x4, 1
	jmp	.LBB164_6
.LBB164_4:                              // %.loopexit9.i
                                        //   in Loop: Header=BB164_2 Depth=1
	mov	x4, [x1]
	mov	r0, 16843008
	sub	r0, x4
	mov	r1, x4
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x7, .LBB164_11
	jmp	.LBB164_5
.LBB164_5:                              // %.preheader5.i.preheader
                                        //   in Loop: Header=BB164_2 Depth=1
	jmp	.LBB164_9
.LBB164_6:                              // %.preheader29
                                        //   Parent Loop BB164_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
	mov	x5, rax
	jz	x5, .LBB164_24
	jmp	.LBB164_7
.LBB164_7:                              //   in Loop: Header=BB164_6 Depth=2
	mov	r1, 255
	mov	r0, x2
	call	__bit_and
	mov	r1, 255
	mov	x6, rax
	mov	r0, x5
	call	__bit_and
	je	rax, x6, .LBB164_15
	jmp	.LBB164_8
.LBB164_8:                              //   in Loop: Header=BB164_6 Depth=2
	mov	r1, 3
add	x1, 1
	mov	r0, x4
	call	__bit_and
add	x4, 1
	jz	rax, .LBB164_4
	jmp	.LBB164_6
.LBB164_9:                              // %.preheader5.i
                                        //   Parent Loop BB164_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, x4
	mov	r1, x3
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, rax
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x7, .LBB164_11
	jmp	.LBB164_10
.LBB164_10:                             //   in Loop: Header=BB164_9 Depth=2
add	x1, 4
	mov	x4, [x1]
	mov	r0, 16843008
	sub	r0, x4
	mov	r1, x4
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	je	rax, x7, .LBB164_9
	jmp	.LBB164_11
.LBB164_11:                             // %.loopexit6.i.preheader
                                        //   in Loop: Header=BB164_2 Depth=1
add	x1, -1
.LBB164_12:                             // %.loopexit6.i
                                        //   Parent Loop BB164_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
add	x1, 1
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
	mov	x4, rax
	jz	x4, .LBB164_14
	jmp	.LBB164_13
.LBB164_13:                             // %.loopexit6.i
                                        //   in Loop: Header=BB164_12 Depth=2
	mov	r1, 255
	mov	r0, x2
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x4
	call	__bit_and
	jne	rax, x5, .LBB164_12
	jmp	.LBB164_14
.LBB164_14:                             //   in Loop: Header=BB164_2 Depth=1
	mov	r1, 255
	mov	r0, x2
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x4
	call	__bit_and
	jne	rax, x5, .LBB164_24
	jmp	.LBB164_15
.LBB164_15:                             // %strchr.exit
                                        //   in Loop: Header=BB164_2 Depth=1
	mov	r0, x1
add	r0, 1
	mov	x0, x1
	mov	x1, r0
	jmp	.LBB164_2
.LBB164_16:
	mov	r1, 3
	mov	r0, x1
	call	__bit_and
	mov	x0, x1
	jz	rax, .LBB164_20
	jmp	.LBB164_17
.LBB164_17:                             // %.preheader2.i1.preheader
	mov	x2, x1
add	x2, 1
	mov	x0, x1
.LBB164_18:                             // %.preheader2.i1
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB164_24
	jmp	.LBB164_19
.LBB164_19:                             //   in Loop: Header=BB164_18 Depth=1
	mov	r1, 3
add	x0, 1
	mov	r0, x2
	call	__bit_and
add	x2, 1
	jnz	rax, .LBB164_18
	jmp	.LBB164_20
.LBB164_20:                             // %.loopexit4.i2.preheader
add	x0, -5
	mov	x1, -2139062144
.LBB164_21:                             // %.loopexit4.i2
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, x0
add	r0, 5
	mov	r1, [r0]
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
add	x0, 4
	je	rax, x1, .LBB164_21
	jmp	.LBB164_22
.LBB164_22:                             // %.preheader.i3.preheader
.LBB164_23:                             // %.preheader.i3
                                        // =>This Inner Loop Header: Depth=1
add	x0, 1
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	jnz	rax, .LBB164_23
	jmp	.LBB164_24
.LBB164_24:                             // %strchr.exit4
	mov	rax, x0
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
// -- Begin function strsep
strsep:                                 // @strsep
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
	mov	x0, r0
	mov	x4, [x0]
	mov	x1, r1
	mov	rax, 0
	jz	x4, .LBB165_14
	jmp	.LBB165_1
.LBB165_1:
	mov	r0, [x4]
	mov	x5, x4
	mov	r1, 255
add	x5, 1
	call	__bit_and
	mov	x2, rax
	mov	x6, x1
.LBB165_2:                              // =>This Inner Loop Header: Depth=1
	mov	r0, [x6]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB165_5
	jmp	.LBB165_3
.LBB165_3:                              //   in Loop: Header=BB165_2 Depth=1
	mov	r1, 255
add	x6, 1
	mov	r0, rax
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x2
	call	__bit_and
	jne	rax, x3, .LBB165_2
	jmp	.LBB165_4
.LBB165_4:
	mov	[x0], x5
	mov	r0, [x4]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	[x4], rax
	mov	rax, x4
	jmp	.LBB165_14
.LBB165_5:                              // %.loopexit.i
	mov	r1, 255
	mov	r0, x2
	call	__bit_and
	jz	rax, .LBB165_7
	jmp	.LBB165_6
.LBB165_6:                              // %.preheader.i.preheader
	jmp	.LBB165_8
.LBB165_7:
	mov	[x0], 0
	mov	rax, 0
	jmp	.LBB165_14
.LBB165_8:                              // %.preheader.i
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB165_9 Depth 2
	mov	x6, x5
	mov	r0, [x6]
	mov	r1, 255
add	x5, 1
	call	__bit_and
	mov	x2, rax
	mov	x7, x1
.LBB165_9:                              //   Parent Loop BB165_8 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, [x7]
	mov	r1, 255
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x2
	call	__bit_and
	jne	x3, rax, .LBB165_13
	jmp	.LBB165_10
.LBB165_10:
	mov	r1, 255
	mov	r0, x2
	call	__bit_and
	mov	r0, 0
	jz	rax, .LBB165_12
	jmp	.LBB165_11
.LBB165_11:
	mov	r0, [x6]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	[x6], rax
	mov	r0, x5
.LBB165_12:
	mov	[x0], r0
	mov	rax, x4
	jmp	.LBB165_14
.LBB165_13:                             //   in Loop: Header=BB165_9 Depth=2
	mov	r1, 255
add	x7, 1
	mov	r0, x3
	call	__bit_and
	jz	rax, .LBB165_8
	jmp	.LBB165_9
.LBB165_14:                             // %__strtok_r.exit
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
// -- Begin function strspn
strspn:                                 // @strspn
// %bb.0:
sub	rsp, 28
	mov	[rsp+24], x0
	mov	[rsp+20], x1
	mov	[rsp+16], x2
	mov	[rsp+12], x3
	mov	[rsp+8], x4
	mov	[rsp+4], x5
	mov	[rsp], x6
	mov	x0, r0
	mov	r0, [x0]
	mov	x1, r1
	mov	r1, 255
	call	__bit_and
	mov	x2, rax
	mov	x4, x0
	jz	x2, .LBB166_7
	jmp	.LBB166_1
.LBB166_1:
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
	mov	x3, rax
	mov	x4, x0
	jz	x3, .LBB166_7
	jmp	.LBB166_2
.LBB166_2:                              // %.preheader.preheader
add	x1, 1
	mov	x4, x0
.LBB166_3:                              // %.preheader
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB166_5 Depth 2
	mov	x6, x1
	mov	rax, x3
	jmp	.LBB166_5
.LBB166_4:                              //   in Loop: Header=BB166_5 Depth=2
	mov	r0, [x6]
	mov	r1, 255
	call	__bit_and
add	x6, 1
	jz	rax, .LBB166_7
	jmp	.LBB166_5
.LBB166_5:                              //   Parent Loop BB166_3 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x2
	call	__bit_and
	jne	rax, x5, .LBB166_4
	jmp	.LBB166_6
.LBB166_6:                              //   in Loop: Header=BB166_3 Depth=1
add	x4, 1
	mov	r0, [x4]
	mov	r1, 255
	call	__bit_and
	mov	x2, rax
	jnz	x2, .LBB166_3
	jmp	.LBB166_7
.LBB166_7:                              // %.loopexit
	sub	x4, x0
	mov	rax, x4
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
// -- Begin function two_way_long_needle.65
two_way_long_needle.65:                 // @two_way_long_needle.65
// %bb.0:
sub	rsp, 1120
	mov	[rsp+1116], x0
	mov	[rsp+1112], x1
	mov	[rsp+1108], x2
	mov	[rsp+1104], x3
	mov	[rsp+1100], x4
	mov	[rsp+1096], x5
	mov	[rsp+1092], x6
	mov	[rsp+1088], x7
	mov	[rsp+1084], x8
	mov	[rsp+1080], x9
	mov	[rsp+1076], x10
	mov	[rsp+1072], x11
	mov	[rsp+1068], x12
	mov	[rsp+1064], x13
	mov	[rsp+1060], x14
	mov	[rsp+1056], x15
	mov	x0, r3
	mov	x3, r2
	mov	x2, r1
	mov	[rsp+28], r0
	mov	x6, 0
	mov	x9, 1
	mov	x7, x0
add	x7, -2147483648
	mov	r0, -2147483646
	mov	x8, 0
	jl	x7, r0, .LBB167_24
	jmp	.LBB167_1
.LBB167_1:                              // %.preheader31.preheader
	mov	x10, -1
	mov	x11, 0
	mov	x5, 1
	mov	x8, 1
.LBB167_2:                              // %.preheader31
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, x3
	add	r0, x5
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r0, x3
	add	r0, x10
	add	r0, x8
	mov	r0, [r0]
	mov	r1, 255
	mov	x4, rax
	call	__bit_and
	mov	r0, x4
add	r0, -2147483648
	mov	r1, rax
add	r1, -2147483648
	jge	r0, r1, .LBB167_4
	jmp	.LBB167_3
.LBB167_3:                              //   in Loop: Header=BB167_2 Depth=1
	mov	x9, x5
	sub	x9, x10
	mov	x8, 1
	jmp	.LBB167_9
.LBB167_4:                              //   in Loop: Header=BB167_2 Depth=1
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x4
	call	__bit_and
	jne	rax, x5, .LBB167_8
	jmp	.LBB167_5
.LBB167_5:                              //   in Loop: Header=BB167_2 Depth=1
	je	x8, x9, .LBB167_7
	jmp	.LBB167_6
.LBB167_6:                              //   in Loop: Header=BB167_2 Depth=1
add	x8, 1
	mov	x5, x11
	jmp	.LBB167_9
.LBB167_7:                              //   in Loop: Header=BB167_2 Depth=1
	add	x11, x9
	mov	x8, 1
	mov	x5, x11
	jmp	.LBB167_9
.LBB167_8:                              //   in Loop: Header=BB167_2 Depth=1
	mov	x5, x11
add	x5, 1
	mov	x8, 1
	mov	x10, x11
	mov	x9, 1
.LBB167_9:                              //   in Loop: Header=BB167_2 Depth=1
	mov	x11, x5
	mov	x5, x8
	add	x5, x11
	mov	r0, x5
add	r0, -2147483648
	jl	r0, x7, .LBB167_2
	jmp	.LBB167_10
.LBB167_10:                             // %.preheader30.preheader
	mov	x11, -1
	mov	x13, 0
	mov	x5, 1
	mov	x12, 1
	mov	x8, 1
.LBB167_11:                             // %.preheader30
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, x3
	add	r0, x5
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r0, x3
	add	r0, x11
	add	r0, x8
	mov	r0, [r0]
	mov	r1, 255
	mov	x4, rax
	call	__bit_and
	mov	r0, x4
add	r0, -2147483648
	mov	r1, rax
add	r1, -2147483648
	jge	r1, r0, .LBB167_13
	jmp	.LBB167_12
.LBB167_12:                             //   in Loop: Header=BB167_11 Depth=1
	mov	x12, x5
	sub	x12, x11
	mov	x8, 1
	jmp	.LBB167_18
.LBB167_13:                             //   in Loop: Header=BB167_11 Depth=1
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x4
	call	__bit_and
	jne	rax, x5, .LBB167_17
	jmp	.LBB167_14
.LBB167_14:                             //   in Loop: Header=BB167_11 Depth=1
	je	x8, x12, .LBB167_16
	jmp	.LBB167_15
.LBB167_15:                             //   in Loop: Header=BB167_11 Depth=1
add	x8, 1
	mov	x5, x13
	jmp	.LBB167_18
.LBB167_16:                             //   in Loop: Header=BB167_11 Depth=1
	add	x13, x12
	mov	x8, 1
	mov	x5, x13
	jmp	.LBB167_18
.LBB167_17:                             //   in Loop: Header=BB167_11 Depth=1
	mov	x5, x13
add	x5, 1
	mov	x8, 1
	mov	x11, x13
	mov	x12, 1
.LBB167_18:                             //   in Loop: Header=BB167_11 Depth=1
	mov	x13, x5
	mov	x5, x8
	add	x5, x13
	mov	r0, x5
add	r0, -2147483648
	jl	r0, x7, .LBB167_11
	jmp	.LBB167_19
.LBB167_19:
	mov	x8, x10
add	x8, 1
	mov	r0, x11
add	x10, -2147483647
add	x11, -2147483647
add	r0, 1
	jl	x11, x10, .LBB167_21
	jmp	.LBB167_20
.LBB167_20:
	mov	x9, x12
.LBB167_21:
	mov	r1, r0
	sub	r1, x8
	mov	r3, x8
add	r3, -2147483648
add	r0, -2147483648
	mov	r2, 1
	jg	r0, r3, .LBB167_23
// %bb.22:
	mov	r2, 0
.LBB167_23:
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	x8, rax
.LBB167_24:
	mov	r0, 1024
	jmp	.LBB167_27
.LBB167_25:
	jz	x0, .LBB167_29
	jmp	.LBB167_26
.LBB167_26:                             // %.preheader28.preheader
	mov	x1, x0
add	x1, -1
	mov	x4, -1
	mov	x5, x3
	jmp	.LBB167_28
.LBB167_27:                             // =>This Inner Loop Header: Depth=1
	mov	r1, rsp
add	r1, 32
	add	r1, x6
add	x6, 4
	mov	[r1], x0
	je	x6, r0, .LBB167_25
	jmp	.LBB167_27
.LBB167_28:                             // %.preheader28
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	mov	r1, 2
	mov	r0, rax
	call	__bit_shl
	mov	r0, rsp
add	r0, 32
	add	r0, rax
	mov	[r0], x1
add	x1, -1
add	x5, 1
	jne	x1, x4, .LBB167_28
	jmp	.LBB167_29
.LBB167_29:                             // %.loopexit29
	mov	x4, x3
	mov	r2, x8
add	r2, -2147483648
	mov	r1, -2147483644
	add	x4, x9
	mov	r0, x8
	mov	x6, x3
	mov	[rsp+20], x8
	mov	[rsp+24], r2
	jl	r2, r1, .LBB167_35
	jmp	.LBB167_30
.LBB167_30:
	mov	r0, x4
	mov	r1, x3
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	mov	x7, x8
	mov	x6, x3
	jnz	rax, .LBB167_37
	jmp	.LBB167_31
.LBB167_31:                             // %.preheader.i.preheader
	mov	r1, -2147483645
	mov	x6, x3
	mov	x7, x8
.LBB167_32:                             // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	x4, x6
	add	x4, x9
	mov	r0, [x6]
	mov	r2, [x4]
	jne	r0, r2, .LBB167_36
	jmp	.LBB167_33
.LBB167_33:                             //   in Loop: Header=BB167_32 Depth=1
	mov	r0, x7
add	r0, -4
	mov	r2, x7
add	r2, 2147483644
add	x6, 4
	mov	x7, r0
	jg	r2, r1, .LBB167_32
	jmp	.LBB167_34
.LBB167_34:                             // %.loopexit8.i.loopexit
	mov	x4, x6
	add	x4, x9
.LBB167_35:                             // %.loopexit8.i
	mov	x7, r0
	jz	r0, .LBB167_40
	jmp	.LBB167_37
.LBB167_36:                             // %.loopexit7.i.preheader.loopexit
.LBB167_37:                             // %.loopexit7.i.preheader
.LBB167_38:                             // %.loopexit7.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x6]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x4]
	mov	r1, 255
	mov	x5, rax
	call	__bit_and
	jne	x5, rax, .LBB167_64
	jmp	.LBB167_39
.LBB167_39:                             //   in Loop: Header=BB167_38 Depth=1
add	x7, -1
add	x6, 1
add	x4, 1
	jnz	x7, .LBB167_38
	jmp	.LBB167_40
.LBB167_40:                             // %memcmp.exit.thread
	mov	r1, 2048
	mov	r0, x0
	call	__bit_or
	mov	x4, rax
	mov	r0, x0
	mov	x11, x9
	sub	r0, x9
	mov	[rsp+16], r0
	mov	r0, x0
add	r0, -1
	mov	r1, 1
	sub	r1, x8
	mov	[rsp], r1
	mov	r1, [rsp+28]
add	r1, -1
	mov	[rsp+8], r1
	mov	x15, x3
add	x15, -1
	mov	x13, 0
	mov	[rsp+4], r0
add	r0, -2147483648
	mov	[rsp+12], r0
	mov	x10, 0
.LBB167_41:                             // =>This Loop Header: Depth=1
                                        //     Child Loop BB167_43 Depth 2
                                        //     Child Loop BB167_58 Depth 2
                                        //     Child Loop BB167_60 Depth 2
	mov	r0, x2
	sub	r0, x0
add	r0, -2147483648
	mov	x1, x13
add	x1, -2147483648
	jle	x1, r0, .LBB167_46
	jmp	.LBB167_42
.LBB167_42:                             //   in Loop: Header=BB167_41 Depth=1
	mov	x5, [rsp+28]
	add	x5, x2
	mov	x6, x5
	add	x6, x4
	mov	x7, x4
	mov	x8, x5
.LBB167_43:                             //   Parent Loop BB167_41 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, [x8]
	mov	r1, 255
	call	__bit_and
	mov	r0, x8
	jz	rax, .LBB167_45
	jmp	.LBB167_44
.LBB167_44:                             //   in Loop: Header=BB167_43 Depth=2
add	x7, -1
add	x8, 1
	mov	r0, x6
	jnz	x7, .LBB167_43
	jmp	.LBB167_45
.LBB167_45:                             // %strnlen.exit
                                        //   in Loop: Header=BB167_41 Depth=1
	sub	r0, x5
	add	x2, r0
	mov	r0, x2
	sub	r0, x0
add	r0, -2147483648
	mov	x5, 0
	jg	x1, r0, .LBB167_82
	jmp	.LBB167_46
.LBB167_46:                             //   in Loop: Header=BB167_41 Depth=1
	mov	x5, [rsp+28]
	add	x5, x13
	mov	r0, x5
	add	r0, x0
add	r0, -1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r1, 2
	mov	r0, rax
	call	__bit_shl
	mov	r0, rsp
add	r0, 32
	add	r0, rax
	mov	x9, [r0]
	jz	x9, .LBB167_51
	jmp	.LBB167_47
.LBB167_47:                             //   in Loop: Header=BB167_41 Depth=1
	mov	r0, 0
	jz	x10, .LBB167_50
	jmp	.LBB167_48
.LBB167_48:                             //   in Loop: Header=BB167_41 Depth=1
	mov	r1, x11
add	r1, -2147483648
	mov	r2, x9
add	r2, -2147483648
	jge	r2, r1, .LBB167_50
	jmp	.LBB167_49
.LBB167_49:                             //   in Loop: Header=BB167_41 Depth=1
	mov	x9, [rsp+16]
.LBB167_50:                             //   in Loop: Header=BB167_41 Depth=1
	add	x13, x9
	mov	x10, r0
	jmp	.LBB167_41
.LBB167_51:                             //   in Loop: Header=BB167_41 Depth=1
	mov	x14, x10
add	x14, -2147483648
	mov	r2, 1
	mov	r0, [rsp+24]
	jg	r0, x14, .LBB167_53
// %bb.52:                              //   in Loop: Header=BB167_41 Depth=1
	mov	r2, 0
.LBB167_53:                             //   in Loop: Header=BB167_41 Depth=1
	mov	r1, [rsp+20]
	sub	r1, x10
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	mov	x6, rax
	add	x6, x10
	mov	r0, x6
add	r0, -2147483648
	mov	r1, [rsp+12]
	jge	r0, r1, .LBB167_55
	jmp	.LBB167_54
.LBB167_54:                             // %.preheader.preheader
                                        //   in Loop: Header=BB167_41 Depth=1
	mov	x9, [rsp]
	add	x9, x6
	mov	x12, [rsp+4]
	sub	x12, x6
	mov	x1, x3
	add	x1, x6
	add	x6, x13
	mov	r0, [rsp+28]
	add	x6, r0
	jmp	.LBB167_58
.LBB167_55:                             // %.loopexit
                                        //   in Loop: Header=BB167_41 Depth=1
	mov	r2, 1
	mov	r0, [rsp+24]
	jl	x14, r0, .LBB167_57
// %bb.56:                              // %.loopexit
                                        //   in Loop: Header=BB167_41 Depth=1
	mov	r2, 0
.LBB167_57:                             // %.loopexit
                                        //   in Loop: Header=BB167_41 Depth=1
	mov	r1, x10
	mov	x9, [rsp+20]
	sub	r1, x9
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	mov	x6, rax
	add	x6, x9
	mov	x1, [rsp+8]
	add	x1, x13
	jmp	.LBB167_60
.LBB167_58:                             // %.preheader
                                        //   Parent Loop BB167_41 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x6]
	mov	r1, 255
	mov	x7, rax
	call	__bit_and
	mov	r0, 0
	jne	x7, rax, .LBB167_50
	jmp	.LBB167_59
.LBB167_59:                             //   in Loop: Header=BB167_58 Depth=2
add	x9, 1
add	x12, -1
add	x1, 1
add	x6, 1
	jz	x12, .LBB167_55
	jmp	.LBB167_58
.LBB167_60:                             //   Parent Loop BB167_41 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, x9
add	r0, -2147483648
	jge	x14, r0, .LBB167_63
	jmp	.LBB167_61
.LBB167_61:                             //   in Loop: Header=BB167_60 Depth=2
	mov	r0, x15
	add	r0, x9
	mov	r0, [r0]
	mov	x8, x9
	mov	r1, 255
add	x8, -1
	call	__bit_and
	add	x9, x1
	mov	r0, [x9]
	mov	r1, 255
	mov	x7, rax
	call	__bit_and
	mov	x9, x8
	je	x7, rax, .LBB167_60
	jmp	.LBB167_62
.LBB167_62:                             // %._crit_edge
                                        //   in Loop: Header=BB167_41 Depth=1
add	x8, 1
	mov	x6, x8
.LBB167_63:                             //   in Loop: Header=BB167_41 Depth=1
add	x10, -2147483647
add	x6, -2147483648
	mov	x9, x11
	mov	r0, [rsp+16]
	jl	x6, x10, .LBB167_82
	jmp	.LBB167_50
.LBB167_64:                             // %memcmp.exit
	mov	x7, x0
	sub	x7, x8
	mov	r1, x8
	sub	r1, x7
	mov	r0, x7
add	r0, -2147483648
	mov	r2, 1
	mov	r3, [rsp+24]
	jg	r3, r0, .LBB167_66
// %bb.65:                              // %memcmp.exit
	mov	r2, 0
.LBB167_66:                             // %memcmp.exit
	mov	r0, 0
	sub	r0, r2
	mov	x9, 0
	call	__bit_and
	mov	r1, 2048
	add	x7, rax
	mov	r0, x0
	call	__bit_or
	mov	x11, x0
add	x11, -1
	mov	x4, rax
	mov	x12, x11
	sub	x12, x8
	mov	x13, x3
	add	x13, x8
	mov	x15, [rsp+28]
	mov	x14, x15
	add	x14, x8
add	x15, -1
add	x3, -1
add	x11, -2147483648
.LBB167_67:                             // =>This Loop Header: Depth=1
                                        //     Child Loop BB167_69 Depth 2
                                        //     Child Loop BB167_76 Depth 2
                                        //     Child Loop BB167_79 Depth 2
	mov	r0, x2
	sub	r0, x0
add	r0, -2147483648
	mov	x1, x9
add	x1, -2147483648
	jle	x1, r0, .LBB167_72
	jmp	.LBB167_68
.LBB167_68:                             //   in Loop: Header=BB167_67 Depth=1
	mov	x5, [rsp+28]
	add	x5, x2
	mov	x6, x5
	add	x6, x4
	mov	x8, x4
	mov	x10, x5
.LBB167_69:                             //   Parent Loop BB167_67 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, [x10]
	mov	r1, 255
	call	__bit_and
	mov	r0, x10
	jz	rax, .LBB167_71
	jmp	.LBB167_70
.LBB167_70:                             //   in Loop: Header=BB167_69 Depth=2
add	x8, -1
add	x10, 1
	mov	r0, x6
	jnz	x8, .LBB167_69
	jmp	.LBB167_71
.LBB167_71:                             // %strnlen.exit21
                                        //   in Loop: Header=BB167_67 Depth=1
	sub	r0, x5
	add	x2, r0
	mov	r0, x2
	sub	r0, x0
add	r0, -2147483648
	mov	x5, 0
	jg	x1, r0, .LBB167_82
	jmp	.LBB167_72
.LBB167_72:                             //   in Loop: Header=BB167_67 Depth=1
	mov	x5, [rsp+28]
	add	x5, x9
	mov	r0, x5
	add	r0, x0
add	r0, -1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r1, 2
	mov	r0, rax
	call	__bit_shl
	mov	r0, rsp
add	r0, 32
	add	r0, rax
	mov	r0, [r0]
	jnz	r0, .LBB167_75
	jmp	.LBB167_73
.LBB167_73:                             //   in Loop: Header=BB167_67 Depth=1
	mov	r0, [rsp+24]
	jle	x11, r0, .LBB167_78
	jmp	.LBB167_74
.LBB167_74:                             // %.preheader25.preheader
                                        //   in Loop: Header=BB167_67 Depth=1
	mov	x10, x14
	add	x10, x9
	mov	x1, 0
	jmp	.LBB167_76
.LBB167_75:                             //   in Loop: Header=BB167_67 Depth=1
	add	x9, r0
	jmp	.LBB167_67
.LBB167_76:                             // %.preheader25
                                        //   Parent Loop BB167_67 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, x13
	add	r0, x1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r0, x10
	add	r0, x1
	mov	r0, [r0]
	mov	r1, 255
	mov	x6, rax
	call	__bit_and
	jne	x6, rax, .LBB167_81
	jmp	.LBB167_77
.LBB167_77:                             //   in Loop: Header=BB167_76 Depth=2
add	x1, 1
	jne	x12, x1, .LBB167_76
	jmp	.LBB167_78
.LBB167_78:                             // %.loopexit26.preheader
                                        //   in Loop: Header=BB167_67 Depth=1
	mov	x10, x15
	add	x10, x9
	mov	x8, [rsp+20]
.LBB167_79:                             // %.loopexit26
                                        //   Parent Loop BB167_67 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	jz	x8, .LBB167_82
	jmp	.LBB167_80
.LBB167_80:                             //   in Loop: Header=BB167_79 Depth=2
	mov	r0, x3
	add	r0, x8
	mov	r0, [r0]
	mov	x1, x8
	mov	r1, 255
add	x1, -1
	call	__bit_and
	add	x8, x10
	mov	r0, [x8]
	mov	r1, 255
	mov	x6, rax
	call	__bit_and
	mov	x8, x1
	mov	x1, x7
	je	x6, rax, .LBB167_79
	jmp	.LBB167_81
.LBB167_81:                             // %.loopexit24
                                        //   in Loop: Header=BB167_67 Depth=1
	add	x9, x1
add	x9, 1
	jmp	.LBB167_67
.LBB167_82:                             // %.loopexit22
	mov	rax, x5
	mov	x15, [rsp+1056]
	mov	x14, [rsp+1060]
	mov	x13, [rsp+1064]
	mov	x12, [rsp+1068]
	mov	x11, [rsp+1072]
	mov	x10, [rsp+1076]
	mov	x9, [rsp+1080]
	mov	x8, [rsp+1084]
	mov	x7, [rsp+1088]
	mov	x6, [rsp+1092]
	mov	x5, [rsp+1096]
	mov	x4, [rsp+1100]
	mov	x3, [rsp+1104]
	mov	x2, [rsp+1108]
	mov	x1, [rsp+1112]
	mov	x0, [rsp+1116]
add	rsp, 1120
	ret
// -- End function
// -- Begin function strstr
strstr:                                 // @strstr
// %bb.0:
sub	rsp, 116
	mov	[rsp+112], x0
	mov	[rsp+108], x1
	mov	[rsp+104], x2
	mov	[rsp+100], x3
	mov	[rsp+96], x4
	mov	[rsp+92], x5
	mov	[rsp+88], x6
	mov	[rsp+84], x7
	mov	[rsp+80], x8
	mov	[rsp+76], x9
	mov	[rsp+72], x10
	mov	[rsp+68], x11
	mov	[rsp+64], x12
	mov	x1, r1
	mov	r2, [x1]
	mov	r1, 255
	mov	x0, r0
	mov	r0, r2
	call	__bit_and
	mov	x2, rax
	mov	x4, x0
	jz	x2, .LBB168_99
	jmp	.LBB168_1
.LBB168_1:
	mov	x6, x1
add	x6, 1
	mov	r0, [x6]
	mov	r1, 255
	call	__bit_and
	mov	x4, rax
	jnz	x4, .LBB168_17
	jmp	.LBB168_2
.LBB168_2:
	mov	r1, 255
	mov	r0, x2
	call	__bit_and
	mov	r1, 3
	mov	x1, rax
	mov	r0, x0
	call	__bit_and
	jz	rax, .LBB168_4
	jmp	.LBB168_3
.LBB168_3:                              // %.preheader.preheader
	mov	x3, x0
add	x3, 1
	jmp	.LBB168_6
.LBB168_4:                              // %.loopexit9.i
	mov	x3, [x0]
	mov	r0, 16843008
	sub	r0, x3
	mov	r1, x3
	call	__bit_or
	mov	r1, -2139062144
	mov	x4, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x4, .LBB168_11
	jmp	.LBB168_5
.LBB168_5:                              // %.preheader5.i.preheader
	mul	x1, 16843009
	jmp	.LBB168_9
.LBB168_6:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	mov	x5, rax
	mov	x4, 0
	jz	x5, .LBB168_99
	jmp	.LBB168_7
.LBB168_7:                              //   in Loop: Header=BB168_6 Depth=1
	mov	r1, 255
	mov	r0, x2
	call	__bit_and
	mov	r1, 255
	mov	x6, rax
	mov	r0, x5
	call	__bit_and
	mov	x4, x0
	je	rax, x6, .LBB168_99
	jmp	.LBB168_8
.LBB168_8:                              //   in Loop: Header=BB168_6 Depth=1
	mov	r1, 3
add	x0, 1
	mov	r0, x3
	call	__bit_and
add	x3, 1
	jz	rax, .LBB168_4
	jmp	.LBB168_6
.LBB168_9:                              // %.preheader5.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, x3
	mov	r1, x1
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, rax
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x4, .LBB168_11
	jmp	.LBB168_10
.LBB168_10:                             //   in Loop: Header=BB168_9 Depth=1
add	x0, 4
	mov	x3, [x0]
	mov	r0, 16843008
	sub	r0, x3
	mov	r1, x3
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	je	rax, x4, .LBB168_9
	jmp	.LBB168_11
.LBB168_11:                             // %.loopexit6.i.preheader
add	x0, -1
.LBB168_12:                             // %.loopexit6.i
                                        // =>This Inner Loop Header: Depth=1
add	x0, 1
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	mov	x1, rax
	jz	x1, .LBB168_14
	jmp	.LBB168_13
.LBB168_13:                             // %.loopexit6.i
                                        //   in Loop: Header=BB168_12 Depth=1
	mov	r1, 255
	mov	r0, x2
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x1
	call	__bit_and
	jne	rax, x3, .LBB168_12
	jmp	.LBB168_14
.LBB168_14:
	mov	r1, 255
	mov	r0, x2
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 1
	je	rax, x2, .LBB168_16
// %bb.15:
	mov	r1, 0
.LBB168_16:
	mov	r0, 0
	sub	r0, r1
	mov	r1, x0
	call	__bit_and
	mov	x4, rax
	jmp	.LBB168_99
.LBB168_17:
	mov	r0, x1
add	r0, 2
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	x3, rax
	jnz	x3, .LBB168_25
	jmp	.LBB168_18
.LBB168_18:
	mov	r1, 255
	mov	r0, x2
	call	__bit_and
	mov	r1, 16
	mov	r0, rax
	call	__bit_shl
	mov	r1, 255
	mov	x1, rax
	mov	r0, x4
	call	__bit_and
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	r0, [x0]
	mov	r1, 255
	mov	x1, rax
	call	__bit_and
	mov	x3, rax
	mov	x4, 0
	jz	x3, .LBB168_99
	jmp	.LBB168_19
.LBB168_19:                             // %.preheader24.preheader
add	x0, -2
	mov	x2, 0
.LBB168_20:                             // %.preheader24
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 255
	mov	r0, x3
	call	__bit_and
	mov	r1, 16
	mov	x3, rax
	mov	r0, x2
	call	__bit_shl
	mov	r0, rax
	mov	r1, x3
	call	__bit_or
	mov	r0, x0
add	r0, 3
	mov	r0, [r0]
	mov	r1, 255
	mov	x2, rax
	call	__bit_and
	mov	x3, rax
add	x0, 1
	je	x1, x2, .LBB168_22
	jmp	.LBB168_21
.LBB168_21:                             // %.preheader24
                                        //   in Loop: Header=BB168_20 Depth=1
	mov	r1, 255
	mov	r0, x3
	call	__bit_and
	jnz	rax, .LBB168_20
	jmp	.LBB168_22
.LBB168_22:
	mov	r1, 1
	je	x1, x2, .LBB168_24
// %bb.23:
	mov	r1, 0
.LBB168_24:
	mov	r0, 0
	sub	r0, r1
	mov	r1, x0
	call	__bit_and
	mov	x4, rax
	jmp	.LBB168_99
.LBB168_25:
	mov	r0, x1
add	r0, 3
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	x5, rax
	jnz	x5, .LBB168_33
	jmp	.LBB168_26
.LBB168_26:
	mov	r1, 255
	mov	r0, x2
	call	__bit_and
	mov	r1, 24
	mov	r0, rax
	call	__bit_shl
	mov	r1, 255
	mov	x1, rax
	mov	r0, x4
	call	__bit_and
	mov	r1, 16
	mov	r0, rax
	call	__bit_shl
	mov	r0, rax
	mov	r1, x1
	call	__bit_or
	mov	r1, 255
	mov	x1, rax
	mov	r0, x3
	call	__bit_and
	mov	r1, 8
	mov	r0, rax
	call	__bit_shl
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	r0, [x0]
	mov	r1, 255
	mov	x1, rax
	call	__bit_and
	mov	x2, rax
	mov	x4, 0
	jz	x2, .LBB168_99
	jmp	.LBB168_27
.LBB168_27:                             // %.preheader25.preheader
add	x0, -3
	mov	x3, 0
.LBB168_28:                             // %.preheader25
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 255
	mov	r0, x2
	call	__bit_and
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r1, 8
	mov	r0, rax
	call	__bit_shl
	mov	r0, x0
add	r0, 4
	mov	r0, [r0]
	mov	r1, 255
	mov	x3, rax
	call	__bit_and
	mov	x2, rax
add	x0, 1
	je	x1, x3, .LBB168_30
	jmp	.LBB168_29
.LBB168_29:                             // %.preheader25
                                        //   in Loop: Header=BB168_28 Depth=1
	mov	r1, 255
	mov	r0, x2
	call	__bit_and
	jnz	rax, .LBB168_28
	jmp	.LBB168_30
.LBB168_30:
	mov	r1, 1
	je	x1, x3, .LBB168_32
// %bb.31:
	mov	r1, 0
.LBB168_32:
	mov	r0, 0
	sub	r0, r1
	mov	r1, x0
	call	__bit_and
	mov	x4, rax
	jmp	.LBB168_99
.LBB168_33:
	mov	r0, x1
add	r0, 4
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	jnz	rax, .LBB168_41
	jmp	.LBB168_34
.LBB168_34:
	mov	r1, 255
	mov	r0, x2
	call	__bit_and
	mov	r1, 24
	mov	r0, rax
	call	__bit_shl
	mov	r1, 255
	mov	x1, rax
	mov	r0, x4
	call	__bit_and
	mov	r1, 16
	mov	r0, rax
	call	__bit_shl
	mov	r0, rax
	mov	r1, x1
	call	__bit_or
	mov	r1, 255
	mov	x1, rax
	mov	r0, x3
	call	__bit_and
	mov	r1, 8
	mov	r0, rax
	call	__bit_shl
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	r1, 255
	mov	x1, rax
	mov	r0, x5
	call	__bit_and
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	r0, [x0]
	mov	r1, 255
	mov	x1, rax
	call	__bit_and
	mov	x4, 0
	jz	rax, .LBB168_99
	jmp	.LBB168_35
.LBB168_35:                             // %.preheader26.preheader
add	x0, -4
	mov	x2, 0
.LBB168_36:                             // %.preheader26
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 8
	mov	x3, rax
	mov	r0, x2
	call	__bit_shl
	mov	r0, rax
	mov	r1, x3
	call	__bit_or
	mov	r0, x0
add	r0, 5
	mov	r0, [r0]
	mov	r1, 255
	mov	x2, rax
	call	__bit_and
add	x0, 1
	jz	rax, .LBB168_38
	jmp	.LBB168_37
.LBB168_37:                             // %.preheader26
                                        //   in Loop: Header=BB168_36 Depth=1
	jne	x1, x2, .LBB168_36
	jmp	.LBB168_38
.LBB168_38:
	mov	r1, 1
	je	x1, x2, .LBB168_40
// %bb.39:
	mov	r1, 0
.LBB168_40:
	mov	r0, 0
	sub	r0, r1
	mov	r1, x0
	call	__bit_and
	mov	x4, rax
	jmp	.LBB168_99
.LBB168_41:
	mov	r1, 3
	mov	r0, x1
	call	__bit_and
	mov	x3, x1
	jz	rax, .LBB168_45
	jmp	.LBB168_42
.LBB168_42:                             // %.preheader1.i.preheader
	mov	x2, x1
	mov	x3, x6
	jmp	.LBB168_44
.LBB168_43:                             //   in Loop: Header=BB168_44 Depth=1
	mov	r0, [x3]
	mov	r1, 255
	call	__bit_and
add	x3, 1
	jz	rax, .LBB168_49
	jmp	.LBB168_44
.LBB168_44:                             // %.preheader1.i
                                        // =>This Inner Loop Header: Depth=1
add	x2, 1
	mov	r1, 3
	mov	r0, x2
	call	__bit_and
	jnz	rax, .LBB168_43
	jmp	.LBB168_45
.LBB168_45:                             // %.loopexit.i.preheader
	mov	x4, x3
add	x4, -1
	mov	x5, -2139062144
.LBB168_46:                             // %.loopexit.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, [x3]
	mov	r0, 16843008
	sub	r0, r1
	mov	x2, x4
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
add	x3, 4
add	x4, 4
	je	rax, x5, .LBB168_46
	jmp	.LBB168_47
.LBB168_47:                             // %.preheader.i14.preheader
	mov	x4, -4
.LBB168_48:                             // %.preheader.i14
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, x3
	add	r0, x4
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
add	x2, 1
add	x4, 1
	jnz	rax, .LBB168_48
	jmp	.LBB168_49
.LBB168_49:                             // %strlen.exit
	sub	x2, x1
	mov	r1, 512
	mov	r0, x2
	call	__bit_or
	mov	x3, rax
	mov	x4, x3
	add	x3, x0
	mov	x5, 0
.LBB168_50:                             // =>This Inner Loop Header: Depth=1
	mov	x6, x0
	add	x6, x5
	mov	r0, [x6]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB168_52
	jmp	.LBB168_51
.LBB168_51:                             //   in Loop: Header=BB168_50 Depth=1
add	x5, 1
	je	x4, x5, .LBB168_53
	jmp	.LBB168_50
.LBB168_52:                             // %.strnlen.exit_crit_edge
	mov	x3, x6
.LBB168_53:                             // %strnlen.exit
	sub	x3, x0
	mov	r0, x3
add	r0, -2147483648
	mov	x8, x2
add	x8, -2147483648
	mov	x4, 0
	jl	r0, x8, .LBB168_99
	jmp	.LBB168_54
.LBB168_54:
	mov	r0, -2147483394
	jg	x8, r0, .LBB168_98
	jmp	.LBB168_55
.LBB168_55:
	add	x3, x0
	mov	x4, x2
add	x4, 1
	mov	x5, rsp
	mov	r1, 3
	mov	x9, 3
	mov	r0, x5
	call	__bit_and
	mov	x7, 64
	jz	rax, .LBB168_60
	jmp	.LBB168_56
.LBB168_56:
	mov	r0, rsp
	mov	r1, 3
	call	__bit_and
	mov	x5, rsp
add	x5, 1
	mov	r0, [rsp]
	mov	r1, -256
	mov	x6, rax
	call	__bit_and
	mov	r1, 255
	mov	x7, rax
	mov	r0, x4
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x7
	mov	r1, rax
	call	__bit_or
	mov	[rsp], rax
	mov	x7, 63
	je	x6, x9, .LBB168_60
	jmp	.LBB168_57
.LBB168_57:
	mov	x5, rsp
add	x5, 2
	mov	x9, rsp
add	x9, 1
	mov	r0, [x9]
	mov	r1, -256
	call	__bit_and
	mov	r1, 255
	mov	x7, rax
	mov	r0, x4
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x7
	mov	r1, rax
	call	__bit_or
	mov	[x9], rax
	mov	r0, 2
	mov	x7, 62
	je	x6, r0, .LBB168_60
	jmp	.LBB168_58
.LBB168_58:
	mov	x5, rsp
add	x5, 3
	mov	x9, rsp
add	x9, 2
	mov	r0, [x9]
	mov	r1, -256
	call	__bit_and
	mov	r1, 255
	mov	x7, rax
	mov	r0, x4
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x7
	mov	r1, rax
	call	__bit_or
	mov	[x9], rax
	mov	r0, 1
	mov	x7, 61
	je	x6, r0, .LBB168_60
	jmp	.LBB168_59
.LBB168_59:
	mov	x5, rsp
add	x5, 4
	mov	x7, rsp
add	x7, 3
	mov	r0, [x7]
	mov	r1, -256
	call	__bit_and
	mov	r1, 255
	mov	x6, rax
	mov	r0, x4
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	[x7], rax
	mov	x7, 60
.LBB168_60:                             // %.preheader.i17.preheader
	sub	x3, x2
	mov	r0, x4
	mul	r0, 16843009
	mov	r1, -2147483633
	jmp	.LBB168_63
.LBB168_61:
	mov	r1, x7
add	r1, 16
	mov	r2, 20
	jl	r1, r2, .LBB168_65
	jmp	.LBB168_62
.LBB168_62:                             // %.preheader194.preheader
	mov	r1, -2147483645
	mov	r2, x7
	jmp	.LBB168_64
.LBB168_63:                             // %.preheader.i17
                                        // =>This Inner Loop Header: Depth=1
	mov	r2, x7
	mov	r3, x5
add	r3, 4
	mov	[x5], r0
	mov	r4, x5
add	r4, 8
	mov	[r3], r0
	mov	r3, x5
add	r3, 12
	mov	[r4], r0
add	x5, 16
	mov	[r3], r0
add	r2, 2147483632
add	x7, -16
	jg	r2, r1, .LBB168_63
	jmp	.LBB168_61
.LBB168_64:                             // %.preheader194
                                        // =>This Inner Loop Header: Depth=1
	mov	[x5], r0
add	x7, -4
	mov	r3, r2
add	r3, 2147483644
add	x5, 4
	mov	r2, x7
	jg	r3, r1, .LBB168_64
	jmp	.LBB168_65
.LBB168_65:                             // %.loopexit5.i
	jz	x7, .LBB168_68
	jmp	.LBB168_66
.LBB168_66:
	mov	x9, x5
.LBB168_67:                             // =>This Inner Loop Header: Depth=1
	mov	r0, [x5]
add	x7, -1
	mov	r1, -256
add	x9, 1
	call	__bit_and
	mov	r1, 255
	mov	x6, rax
	mov	r0, x4
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	[x5], rax
	mov	x5, x9
	jnz	x7, .LBB168_67
	jmp	.LBB168_68
.LBB168_68:                             // %memset.exit
	jz	x2, .LBB168_71
	jmp	.LBB168_69
.LBB168_69:                             // %.preheader30.preheader
	mov	x6, x1
	mov	x4, x2
.LBB168_70:                             // %.preheader30
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x6]
	mov	r1, 255
	call	__bit_and
	mov	r1, 63
	mov	r0, rax
	call	__bit_and
	mov	x7, rsp
	add	x7, rax
	mov	r0, [x7]
	mov	r1, -256
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x4
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	[x7], rax
add	x4, -1
add	x6, 1
	jnz	x4, .LBB168_70
	jmp	.LBB168_71
.LBB168_71:                             // %.loopexit31
	mov	x5, 2047
	mov	x6, -2147483644
	mov	x7, -2147483645
.LBB168_72:                             // =>This Loop Header: Depth=1
                                        //     Child Loop BB168_81 Depth 2
                                        //       Child Loop BB168_83 Depth 3
                                        //       Child Loop BB168_88 Depth 3
                                        //     Child Loop BB168_77 Depth 2
                                        //       Child Loop BB168_78 Depth 3
                                        //     Child Loop BB168_94 Depth 2
add	x0, -1
	mov	r0, x0
	add	r0, x2
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r1, 63
	mov	r0, rax
	call	__bit_and
	mov	r0, rsp
	add	r0, rax
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	x4, rax
	add	x4, x0
	mov	r0, x4
add	r0, -2147483648
	mov	x9, x3
add	x9, -2147483648
	jg	r0, x9, .LBB168_91
	jmp	.LBB168_73
.LBB168_73:                             // %.preheader27
                                        //   in Loop: Header=BB168_72 Depth=1
	jl	x8, x6, .LBB168_75
	jmp	.LBB168_74
.LBB168_74:                             // %.preheader27.split.preheader
                                        //   in Loop: Header=BB168_72 Depth=1
	jmp	.LBB168_81
.LBB168_75:                             // %.preheader27.split.us
                                        //   in Loop: Header=BB168_72 Depth=1
	jz	x2, .LBB168_97
	jmp	.LBB168_76
.LBB168_76:                             // %.loopexit8.i.us.preheader
                                        //   in Loop: Header=BB168_72 Depth=1
.LBB168_77:                             // %.loopexit8.i.us
                                        //   Parent Loop BB168_72 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB168_78 Depth 3
	mov	x10, 0
.LBB168_78:                             //   Parent Loop BB168_72 Depth=1
                                        //     Parent Loop BB168_77 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	mov	r0, x4
	add	r0, x10
	mov	r0, [r0]
	mov	x0, x1
	mov	r1, 255
	add	x0, x10
	call	__bit_and
	mov	r0, [x0]
	mov	r1, 255
	mov	x0, rax
	call	__bit_and
	je	x0, rax, .LBB168_80
	jmp	.LBB168_79
.LBB168_79:                             // %memcmp.exit.us
                                        //   in Loop: Header=BB168_77 Depth=2
	mov	r0, x4
	add	r0, x2
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r1, 63
	mov	r0, rax
	call	__bit_and
	mov	r0, rsp
	add	r0, rax
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	add	x4, rax
	mov	r0, x4
add	r0, -2147483648
	jg	r0, x9, .LBB168_91
	jmp	.LBB168_77
.LBB168_80:                             //   in Loop: Header=BB168_78 Depth=3
add	x10, 1
	je	x2, x10, .LBB168_97
	jmp	.LBB168_78
.LBB168_81:                             // %.preheader27.split
                                        //   Parent Loop BB168_72 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB168_83 Depth 3
                                        //       Child Loop BB168_88 Depth 3
	mov	r0, x4
	mov	r1, x1
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	mov	x10, x2
	mov	x11, x1
	mov	x12, x4
	jnz	rax, .LBB168_87
	jmp	.LBB168_82
.LBB168_82:                             // %.preheader.i20.preheader
                                        //   in Loop: Header=BB168_81 Depth=2
	mov	r0, 0
	mov	r1, x2
.LBB168_83:                             // %.preheader.i20
                                        //   Parent Loop BB168_72 Depth=1
                                        //     Parent Loop BB168_81 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	mov	x11, x1
	add	x11, r0
	mov	x12, x4
	add	x12, r0
	mov	r2, [x12]
	mov	r3, [x11]
	jne	r2, r3, .LBB168_86
	jmp	.LBB168_84
.LBB168_84:                             //   in Loop: Header=BB168_83 Depth=3
	mov	x10, r1
add	x10, -4
	mov	r2, r1
add	r2, 2147483644
add	r0, 4
	mov	r1, x10
	jg	r2, x7, .LBB168_83
	jmp	.LBB168_85
.LBB168_85:                             // %.loopexit8.i.loopexit
                                        //   in Loop: Header=BB168_81 Depth=2
	mov	x11, x1
	add	x11, r0
	add	r0, x4
	mov	x12, r0
	jz	x10, .LBB168_97
	jmp	.LBB168_87
.LBB168_86:                             // %.loopexit7.i18.preheader.loopexit
                                        //   in Loop: Header=BB168_81 Depth=2
	mov	x10, r1
.LBB168_87:                             // %.loopexit7.i18.preheader
                                        //   in Loop: Header=BB168_81 Depth=2
.LBB168_88:                             // %.loopexit7.i18
                                        //   Parent Loop BB168_72 Depth=1
                                        //     Parent Loop BB168_81 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	mov	r0, [x12]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x11]
	mov	r1, 255
	mov	x0, rax
	call	__bit_and
	jne	x0, rax, .LBB168_90
	jmp	.LBB168_89
.LBB168_89:                             //   in Loop: Header=BB168_88 Depth=3
add	x10, -1
add	x12, 1
add	x11, 1
	jz	x10, .LBB168_97
	jmp	.LBB168_88
.LBB168_90:                             // %memcmp.exit
                                        //   in Loop: Header=BB168_81 Depth=2
	mov	r0, x4
	add	r0, x2
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r1, 63
	mov	r0, rax
	call	__bit_and
	mov	r0, rsp
	add	r0, rax
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	add	x4, rax
	mov	r0, x4
add	r0, -2147483648
	jle	r0, x9, .LBB168_81
	jmp	.LBB168_91
.LBB168_91:                             // %.loopexit
                                        //   in Loop: Header=BB168_72 Depth=1
	mov	x9, x3
	add	x9, x2
	mov	r0, [x9]
	mov	r1, 255
	mov	x0, x4
	call	__bit_and
	mov	x4, 0
	jz	rax, .LBB168_97
	jmp	.LBB168_92
.LBB168_92:                             //   in Loop: Header=BB168_72 Depth=1
	mov	x4, x9
add	x4, 2048
	mov	x10, 0
	jmp	.LBB168_94
.LBB168_93:                             // %thread-pre-split
                                        //   in Loop: Header=BB168_94 Depth=2
	mov	r0, x9
	add	r0, x10
add	r0, 1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
add	x10, 1
	jz	rax, .LBB168_95
	jmp	.LBB168_94
.LBB168_94:                             //   Parent Loop BB168_72 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	je	x10, x5, .LBB168_96
	jmp	.LBB168_93
.LBB168_95:                             // %thread-pre-split.strnlen.exit22_crit_edge
                                        //   in Loop: Header=BB168_72 Depth=1
	add	x10, x9
	mov	x4, x10
.LBB168_96:                             // %strnlen.exit22
                                        //   in Loop: Header=BB168_72 Depth=1
	sub	x4, x9
	add	x3, x4
	mov	r0, x3
add	r0, -2147483648
	mov	r1, x0
add	r1, -2147483648
	mov	x4, 0
	jle	r1, r0, .LBB168_72
	jmp	.LBB168_97
.LBB168_97:                             // %memcmp.exit.thread
	jmp	.LBB168_99
.LBB168_98:
	mov	r0, x0
	mov	r1, x3
	mov	r2, x1
	mov	r3, x2
	call	two_way_long_needle.65
	mov	x4, rax
.LBB168_99:                             // %strchr.exit
	mov	rax, x4
	mov	x12, [rsp+64]
	mov	x11, [rsp+68]
	mov	x10, [rsp+72]
	mov	x9, [rsp+76]
	mov	x8, [rsp+80]
	mov	x7, [rsp+84]
	mov	x6, [rsp+88]
	mov	x5, [rsp+92]
	mov	x4, [rsp+96]
	mov	x3, [rsp+100]
	mov	x2, [rsp+104]
	mov	x1, [rsp+108]
	mov	x0, [rsp+112]
add	rsp, 116
	ret
// -- End function
// -- Begin function strtok
strtok:                                 // @strtok
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
	mov	x1, r1
	mov	x0, r0
	jnz	x0, .LBB169_2
	jmp	.LBB169_1
.LBB169_1:
	mov	r0, mcasm_static_eaa5da6a646c4823ecdddb4c661ba0aa
	mov	x0, [r0]
	mov	rax, 0
	jz	x0, .LBB169_14
	jmp	.LBB169_2
.LBB169_2:                              // %.preheader7.i.preheader
.LBB169_3:                              // %.preheader7.i
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB169_4 Depth 2
	mov	x4, x0
	mov	r0, [x4]
	mov	r1, 255
add	x0, 1
	call	__bit_and
	mov	x2, rax
	mov	x5, x1
.LBB169_4:                              //   Parent Loop BB169_3 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB169_6
	jmp	.LBB169_5
.LBB169_5:                              //   in Loop: Header=BB169_4 Depth=2
	mov	r1, 255
add	x5, 1
	mov	r0, rax
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x2
	call	__bit_and
	je	rax, x3, .LBB169_3
	jmp	.LBB169_4
.LBB169_6:                              // %.loopexit.i
	mov	r1, 255
	mov	r0, x2
	call	__bit_and
	mov	r0, rax
	mov	x5, 0
	mov	rax, 0
	jz	r0, .LBB169_13
	jmp	.LBB169_7
.LBB169_7:                              // %.preheader.i.preheader
.LBB169_8:                              // %.preheader.i
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB169_9 Depth 2
	mov	x6, x0
	mov	r0, [x6]
	mov	r1, 255
add	x0, 1
	call	__bit_and
	mov	x2, rax
	mov	x7, x1
.LBB169_9:                              //   Parent Loop BB169_8 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, [x7]
	mov	r1, 255
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x2
	call	__bit_and
	jne	x3, rax, .LBB169_12
	jmp	.LBB169_10
.LBB169_10:
	mov	r1, 255
	mov	r0, x2
	call	__bit_and
	mov	r0, rax
	mov	rax, x4
	jz	r0, .LBB169_13
	jmp	.LBB169_11
.LBB169_11:
	mov	r0, [x6]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	[x6], rax
	mov	x5, x0
	mov	rax, x4
	jmp	.LBB169_13
.LBB169_12:                             //   in Loop: Header=BB169_9 Depth=2
	mov	r1, 255
add	x7, 1
	mov	r0, x3
	call	__bit_and
	jz	rax, .LBB169_8
	jmp	.LBB169_9
.LBB169_13:                             // %__strtok_r.exit.sink.split
	mov	r0, mcasm_static_eaa5da6a646c4823ecdddb4c661ba0aa
	mov	[r0], x5
.LBB169_14:                             // %__strtok_r.exit
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
// -- Begin function __strtok_r
__strtok_r:                             // @__strtok_r
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
	mov	x1, r2
	mov	x2, r1
	mov	x0, r0
	jnz	x0, .LBB170_2
	jmp	.LBB170_1
.LBB170_1:
	mov	x0, [x1]
	mov	rax, 0
	jz	x0, .LBB170_20
	jmp	.LBB170_2
.LBB170_2:
	jz	r3, .LBB170_4
	jmp	.LBB170_3
.LBB170_3:                              // %.preheader7.preheader
	mov	x5, x0
	jmp	.LBB170_7
.LBB170_4:
	mov	r0, [x0]
	mov	x5, x0
	mov	r1, 255
add	x5, 1
	call	__bit_and
	mov	x3, rax
	mov	x6, x2
.LBB170_5:                              // =>This Inner Loop Header: Depth=1
	mov	r0, [x6]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB170_11
	jmp	.LBB170_6
.LBB170_6:                              //   in Loop: Header=BB170_5 Depth=1
	mov	r1, 255
add	x6, 1
	mov	r0, rax
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	je	rax, x4, .LBB170_10
	jmp	.LBB170_5
.LBB170_7:                              // %.preheader7
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB170_8 Depth 2
	mov	x0, x5
	mov	r0, [x0]
	mov	r1, 255
add	x5, 1
	call	__bit_and
	mov	x3, rax
	mov	x6, x2
.LBB170_8:                              //   Parent Loop BB170_7 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, [x6]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB170_11
	jmp	.LBB170_9
.LBB170_9:                              //   in Loop: Header=BB170_8 Depth=2
	mov	r1, 255
add	x6, 1
	mov	r0, rax
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	je	rax, x4, .LBB170_7
	jmp	.LBB170_8
.LBB170_10:
	mov	[x1], x5
	mov	r0, [x0]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	[x0], rax
	mov	rax, x0
	jmp	.LBB170_20
.LBB170_11:                             // %.loopexit
	mov	r1, 255
	mov	r0, x3
	call	__bit_and
	jz	rax, .LBB170_13
	jmp	.LBB170_12
.LBB170_12:                             // %.preheader.preheader
	jmp	.LBB170_14
.LBB170_13:
	mov	[x1], 0
	mov	rax, 0
	jmp	.LBB170_20
.LBB170_14:                             // %.preheader
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB170_15 Depth 2
	mov	x6, x5
	mov	r0, [x6]
	mov	r1, 255
add	x5, 1
	call	__bit_and
	mov	x3, rax
	mov	x7, x2
.LBB170_15:                             //   Parent Loop BB170_14 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, [x7]
	mov	r1, 255
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	jne	x4, rax, .LBB170_19
	jmp	.LBB170_16
.LBB170_16:
	mov	r1, 255
	mov	r0, x3
	call	__bit_and
	mov	r0, 0
	jz	rax, .LBB170_18
	jmp	.LBB170_17
.LBB170_17:
	mov	r0, [x6]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	[x6], rax
	mov	r0, x5
.LBB170_18:
	mov	[x1], r0
	mov	rax, x0
	jmp	.LBB170_20
.LBB170_19:                             //   in Loop: Header=BB170_15 Depth=2
	mov	r1, 255
add	x7, 1
	mov	r0, x4
	call	__bit_and
	jz	rax, .LBB170_14
	jmp	.LBB170_15
.LBB170_20:
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
// -- Begin function strtok_r
strtok_r:                               // @strtok_r
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
	mov	x0, r2
	mov	x2, r1
	mov	x1, r0
	jnz	x1, .LBB171_2
	jmp	.LBB171_1
.LBB171_1:
	mov	x1, [x0]
	mov	rax, 0
	jz	x1, .LBB171_14
	jmp	.LBB171_2
.LBB171_2:                              // %.preheader31
.LBB171_3:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB171_4 Depth 2
	mov	x5, x1
	mov	r0, [x5]
	mov	r1, 255
add	x1, 1
	call	__bit_and
	mov	x3, rax
	mov	x6, x2
.LBB171_4:                              //   Parent Loop BB171_3 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, [x6]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB171_6
	jmp	.LBB171_5
.LBB171_5:                              //   in Loop: Header=BB171_4 Depth=2
	mov	r1, 255
add	x6, 1
	mov	r0, rax
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	je	rax, x4, .LBB171_3
	jmp	.LBB171_4
.LBB171_6:
	mov	r1, 255
	mov	r0, x3
	call	__bit_and
	mov	r0, rax
	mov	x7, 0
	mov	rax, 0
	jz	r0, .LBB171_13
	jmp	.LBB171_7
.LBB171_7:                              // %.preheader.preheader
.LBB171_8:                              // %.preheader
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB171_9 Depth 2
	mov	x6, x1
	mov	r0, [x6]
	mov	r1, 255
add	x1, 1
	call	__bit_and
	mov	x3, rax
	mov	x8, x2
.LBB171_9:                              //   Parent Loop BB171_8 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, [x8]
	mov	r1, 255
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	jne	x4, rax, .LBB171_12
	jmp	.LBB171_10
.LBB171_10:
	mov	r1, 255
	mov	r0, x3
	call	__bit_and
	mov	r0, rax
	mov	rax, x5
	jz	r0, .LBB171_13
	jmp	.LBB171_11
.LBB171_11:
	mov	r0, [x6]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	[x6], rax
	mov	x7, x1
	mov	rax, x5
	jmp	.LBB171_13
.LBB171_12:                             //   in Loop: Header=BB171_9 Depth=2
	mov	r1, 255
add	x8, 1
	mov	r0, x4
	call	__bit_and
	jz	rax, .LBB171_8
	jmp	.LBB171_9
.LBB171_13:
	mov	[x0], x7
.LBB171_14:
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
// -- Begin function mbrtoc16
mbrtoc16:                               // @mbrtoc16
// %bb.0:
sub	rsp, 16
	mov	[rsp+12], x0
	mov	[rsp+8], x1
	mov	[rsp+4], x2
	mov	[rsp], x3
	mov	x0, r0
	mov	x1, 0
                                        // implicit-def: $x2
	jz	r1, .LBB172_7
	jmp	.LBB172_1
.LBB172_1:
	mov	x1, -2
	jz	r2, .LBB172_9
	jmp	.LBB172_2
.LBB172_2:
	mov	r0, [r1]
	mov	r1, 255
	call	__bit_and
	mov	r1, 24
	mov	r0, rax
	call	__bit_shl
	mov	r1, 24
	mov	r0, rax
	call	__bit_sar
	mov	x1, -1
	jg	rax, x1, .LBB172_4
	jmp	.LBB172_3
.LBB172_3:
	mov	r0, mcasm_static_dc0ade02eb8bb208cf058fd41e6d2a5b
	mov	[r0], 84
	jmp	.LBB172_9
.LBB172_4:
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	x2, rax
	mov	r1, 0
	mov	r0, 1
	jne	x2, r1, .LBB172_6
// %bb.5:
	mov	r0, 0
.LBB172_6:
	mov	r1, 1
	call	__bit_and
	mov	x1, rax
.LBB172_7:                              // %mbrtowc.exit
	jz	x0, .LBB172_9
	jmp	.LBB172_8
.LBB172_8:
	mov	x3, [x0]
	mov	r1, 65535
	mov	r0, x2
	call	__bit_and
	mov	r1, -65536
	mov	x2, rax
	mov	r0, x3
	call	__bit_and
	mov	r1, 65535
	mov	x3, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	[x0], rax
.LBB172_9:                              // %mbrtowc.exit.thread
	mov	rax, x1
	mov	x3, [rsp]
	mov	x2, [rsp+4]
	mov	x1, [rsp+8]
	mov	x0, [rsp+12]
add	rsp, 16
	ret
// -- End function
// -- Begin function c16rtomb
c16rtomb:                               // @c16rtomb
// %bb.0:
sub	rsp, 12
	mov	[rsp+8], x0
	mov	[rsp+4], x1
	mov	[rsp], x2
	mov	rax, 1
	jz	r0, .LBB173_4
	jmp	.LBB173_1
.LBB173_1:
	mov	r2, r1
add	r2, -2147483648
	mov	r3, -2147483520
	jl	r2, r3, .LBB173_3
	jmp	.LBB173_2
.LBB173_2:
	mov	r0, mcasm_static_dc0ade02eb8bb208cf058fd41e6d2a5b
	mov	[r0], 84
	mov	rax, -1
	jmp	.LBB173_4
.LBB173_3:
	mov	x0, [r0]
	mov	r2, r1
	mov	r1, 255
	mov	x2, r0
	mov	r0, r2
	call	__bit_and
	mov	r1, -256
	mov	x1, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, 255
	mov	x0, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	rax, 1
	mov	[x2], r0
.LBB173_4:                              // %wcrtomb.exit
	mov	x2, [rsp]
	mov	x1, [rsp+4]
	mov	x0, [rsp+8]
add	rsp, 12
	ret
// -- End function
// -- Begin function mbrtoc32
mbrtoc32:                               // @mbrtoc32
// %bb.0:
sub	rsp, 8
	mov	[rsp+4], x0
	mov	[rsp], x1
	mov	rax, 0
                                        // implicit-def: $x0
	jz	r1, .LBB174_7
	jmp	.LBB174_1
.LBB174_1:
	mov	rax, -2
	jz	r2, .LBB174_9
	jmp	.LBB174_2
.LBB174_2:
	mov	x1, r0
	mov	r0, [r1]
	mov	r1, 255
	call	__bit_and
	mov	r1, 24
	mov	r0, rax
	call	__bit_shl
	mov	r1, 24
	mov	r0, rax
	call	__bit_sar
	mov	r0, rax
	mov	rax, -1
	jg	r0, rax, .LBB174_4
	jmp	.LBB174_3
.LBB174_3:
	mov	r0, mcasm_static_dc0ade02eb8bb208cf058fd41e6d2a5b
	mov	[r0], 84
	jmp	.LBB174_9
.LBB174_4:
	mov	r1, 255
	call	__bit_and
	mov	x0, rax
	mov	r1, 0
	mov	r0, 1
	jne	x0, r1, .LBB174_6
// %bb.5:
	mov	r0, 0
.LBB174_6:
	mov	r1, 1
	call	__bit_and
	mov	r0, x1
.LBB174_7:                              // %mbrtowc.exit
	jz	r0, .LBB174_9
	jmp	.LBB174_8
.LBB174_8:
	mov	[r0], x0
.LBB174_9:                              // %mbrtowc.exit.thread
	mov	x1, [rsp]
	mov	x0, [rsp+4]
add	rsp, 8
	ret
// -- End function
// -- Begin function c32rtomb
c32rtomb:                               // @c32rtomb
// %bb.0:
sub	rsp, 12
	mov	[rsp+8], x0
	mov	[rsp+4], x1
	mov	[rsp], x2
	mov	rax, 1
	jz	r0, .LBB175_4
	jmp	.LBB175_1
.LBB175_1:
	mov	r2, r1
add	r2, -2147483648
	mov	r3, -2147483520
	jl	r2, r3, .LBB175_3
	jmp	.LBB175_2
.LBB175_2:
	mov	r0, mcasm_static_dc0ade02eb8bb208cf058fd41e6d2a5b
	mov	[r0], 84
	mov	rax, -1
	jmp	.LBB175_4
.LBB175_3:
	mov	r2, [r0]
	mov	x0, r1
	mov	r1, -256
	mov	x2, r0
	mov	r0, r2
	call	__bit_and
	mov	r1, 255
	mov	x1, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	rax, 1
	mov	[x2], r0
.LBB175_4:                              // %wcrtomb.exit
	mov	x2, [rsp]
	mov	x1, [rsp+4]
	mov	x0, [rsp+8]
add	rsp, 12
	ret
// -- End function
// -- Begin function btowc
btowc:                                  // @btowc
// %bb.0:
	mov	r1, r0
add	r1, -2147483648
	mov	r2, -2147483521
	mov	rax, -1
	jg	r1, r2, .LBB176_2
	jmp	.LBB176_1
.LBB176_1:
	mov	rax, r0
.LBB176_2:
	ret
// -- End function
// -- Begin function wctob
wctob:                                  // @wctob
// %bb.0:
	mov	r1, r0
add	r1, -2147483648
	mov	r2, -2147483521
	mov	rax, -1
	jg	r1, r2, .LBB177_2
	jmp	.LBB177_1
.LBB177_1:
	mov	rax, r0
.LBB177_2:
	ret
// -- End function
// -- Begin function mbsinit
mbsinit:                                // @mbsinit
// %bb.0:
	mov	rax, 1
	jz	r0, .LBB178_4
	jmp	.LBB178_1
.LBB178_1:
	mov	r1, [r0]
	mov	r2, 0
	mov	r0, 1
	je	r1, r2, .LBB178_3
// %bb.2:
	mov	r0, 0
.LBB178_3:
	mov	r1, 1
	call	__bit_and
.LBB178_4:
	ret
// -- End function
// -- Begin function mbrtowc
mbrtowc:                                // @mbrtowc
// %bb.0:
sub	rsp, 8
	mov	[rsp+4], x0
	mov	[rsp], x1
	mov	rax, 0
	jz	r1, .LBB179_9
	jmp	.LBB179_1
.LBB179_1:
	mov	rax, -2
	jz	r2, .LBB179_9
	jmp	.LBB179_2
.LBB179_2:
	mov	x1, r0
	mov	r0, [r1]
	mov	r1, 255
	call	__bit_and
	mov	r1, 255
	mov	x0, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, 128
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
add	r0, -128
	mov	rax, -1
	jg	r0, rax, .LBB179_4
	jmp	.LBB179_3
.LBB179_3:
	mov	r0, mcasm_static_dc0ade02eb8bb208cf058fd41e6d2a5b
	mov	[r0], 84
	jmp	.LBB179_9
.LBB179_4:
	jz	x1, .LBB179_6
	jmp	.LBB179_5
.LBB179_5:
	mov	[x1], x0
.LBB179_6:
	mov	r1, 255
	call	__bit_and
	mov	r1, 0
	mov	r0, 1
	jne	rax, r1, .LBB179_8
// %bb.7:
	mov	r0, 0
.LBB179_8:
	mov	r1, 1
	call	__bit_and
.LBB179_9:
	mov	x1, [rsp]
	mov	x0, [rsp+4]
add	rsp, 8
	ret
// -- End function
// -- Begin function mbrlen
mbrlen:                                 // @mbrlen
// %bb.0:
	mov	rax, 0
	jz	r0, .LBB180_7
	jmp	.LBB180_1
.LBB180_1:
	mov	rax, -2
	jz	r1, .LBB180_7
	jmp	.LBB180_2
.LBB180_2:
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r1, 24
	mov	r0, rax
	call	__bit_shl
	mov	r1, 24
	mov	r0, rax
	call	__bit_sar
	mov	r0, rax
	mov	rax, -1
	jg	r0, rax, .LBB180_4
	jmp	.LBB180_3
.LBB180_3:
	mov	r0, mcasm_static_dc0ade02eb8bb208cf058fd41e6d2a5b
	mov	[r0], 84
	jmp	.LBB180_7
.LBB180_4:
	mov	r1, 255
	call	__bit_and
	mov	r1, 0
	mov	r0, 1
	jne	rax, r1, .LBB180_6
// %bb.5:
	mov	r0, 0
.LBB180_6:
	mov	r1, 1
	call	__bit_and
.LBB180_7:
	ret
// -- End function
// -- Begin function wcrtomb
wcrtomb:                                // @wcrtomb
// %bb.0:
sub	rsp, 12
	mov	[rsp+8], x0
	mov	[rsp+4], x1
	mov	[rsp], x2
	mov	rax, 1
	jz	r0, .LBB181_4
	jmp	.LBB181_1
.LBB181_1:
	mov	r2, r1
add	r2, -2147483648
	mov	r3, -2147483520
	jl	r2, r3, .LBB181_3
	jmp	.LBB181_2
.LBB181_2:
	mov	r0, mcasm_static_dc0ade02eb8bb208cf058fd41e6d2a5b
	mov	[r0], 84
	mov	rax, -1
	jmp	.LBB181_4
.LBB181_3:
	mov	r2, [r0]
	mov	x0, r1
	mov	r1, -256
	mov	x2, r0
	mov	r0, r2
	call	__bit_and
	mov	r1, 255
	mov	x1, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	rax, 1
	mov	[x2], r0
.LBB181_4:
	mov	x2, [rsp]
	mov	x1, [rsp+4]
	mov	x0, [rsp+8]
add	rsp, 12
	ret
// -- End function
// -- Begin function mbstowcs
mbstowcs:                               // @mbstowcs
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
	mov	x1, r2
	mov	x2, r1
	mov	x0, r0
	jz	x0, .LBB182_2
	jmp	.LBB182_1
.LBB182_1:                              // %.preheader9.preheader
	mov	x3, 0
	mov	x6, -1
	mov	x7, x1
add	x7, -2147483648
	mov	x8, x0
	jmp	.LBB182_6
.LBB182_2:
	mov	r0, [x2]
	mov	r1, 255
	call	__bit_and
	mov	r0, 0
	jz	rax, .LBB182_15
	jmp	.LBB182_3
.LBB182_3:                              // %.preheader.preheader
add	x2, 1
	mov	x4, 0
	mov	x3, 0
.LBB182_4:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 128
	mov	r0, rax
	call	__bit_xor
add	rax, -128
	jl	rax, x4, .LBB182_8
	jmp	.LBB182_5
.LBB182_5:                              //   in Loop: Header=BB182_4 Depth=1
	mov	r0, x2
	add	r0, x3
	mov	r0, [r0]
	mov	r1, 255
add	x3, 1
	call	__bit_and
	jz	rax, .LBB182_12
	jmp	.LBB182_4
.LBB182_6:                              // %.preheader9
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, x2
	add	r0, x3
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r1, 24
	mov	r0, rax
	call	__bit_shl
	mov	r1, 24
	mov	r0, rax
	call	__bit_sar
	mov	x5, rax
	jz	x5, .LBB182_12
	jmp	.LBB182_7
.LBB182_7:                              //   in Loop: Header=BB182_6 Depth=1
	mov	r1, 255
	mov	r0, x5
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x5
	call	__bit_and
	mov	r1, 128
	mov	r0, rax
	call	__bit_xor
add	rax, -128
	jg	rax, x6, .LBB182_9
	jmp	.LBB182_8
.LBB182_8:                              // %.loopexit
	mov	r0, mcasm_static_dc0ade02eb8bb208cf058fd41e6d2a5b
	mov	[r0], 84
	mov	r0, -1
	jmp	.LBB182_15
.LBB182_9:                              //   in Loop: Header=BB182_6 Depth=1
	mov	r0, x3
add	r0, -2147483648
	jge	r0, x7, .LBB182_11
	jmp	.LBB182_10
.LBB182_10:                             //   in Loop: Header=BB182_6 Depth=1
	mov	[x8], x4
.LBB182_11:                             //   in Loop: Header=BB182_6 Depth=1
add	x3, 1
add	x8, 4
	mov	r0, x1
	je	x1, x3, .LBB182_15
	jmp	.LBB182_6
.LBB182_12:                             // %.loopexit8
	mov	r0, x3
	jz	x0, .LBB182_15
	jmp	.LBB182_13
.LBB182_13:                             // %.loopexit8
add	x1, -2147483648
	mov	r1, x3
add	r1, -2147483648
	mov	r0, x3
	jge	r1, x1, .LBB182_15
	jmp	.LBB182_14
.LBB182_14:
	mov	r1, 2
	mov	r0, x3
	call	__bit_shl
	add	x0, rax
	mov	[x0], 0
	mov	r0, x3
.LBB182_15:                             // %.loopexit12
	mov	rax, r0
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
// -- Begin function wcstombs
wcstombs:                               // @wcstombs
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
	mov	x1, r2
	mov	x2, r1
	mov	x0, r0
	jz	x0, .LBB183_2
	jmp	.LBB183_1
.LBB183_1:                              // %.preheader9.preheader
	mov	x5, 0
	mov	x6, -2147483520
	mov	x7, x1
add	x7, -2147483648
	jmp	.LBB183_6
.LBB183_2:
	mov	r0, [x2]
	mov	rax, 0
	jz	r0, .LBB183_15
	jmp	.LBB183_3
.LBB183_3:                              // %.preheader.preheader
add	x2, 4
	mov	x5, 0
	mov	r1, -2147483521
.LBB183_4:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
add	r0, -2147483648
	jg	r0, r1, .LBB183_8
	jmp	.LBB183_5
.LBB183_5:                              //   in Loop: Header=BB183_4 Depth=1
	mov	r0, [x2]
add	x5, 1
add	x2, 4
	jz	r0, .LBB183_12
	jmp	.LBB183_4
.LBB183_6:                              // %.preheader9
                                        // =>This Inner Loop Header: Depth=1
	mov	x3, [x2]
	jz	x3, .LBB183_12
	jmp	.LBB183_7
.LBB183_7:                              //   in Loop: Header=BB183_6 Depth=1
	mov	r0, x3
add	r0, -2147483648
	jl	r0, x6, .LBB183_9
	jmp	.LBB183_8
.LBB183_8:                              // %.loopexit
	mov	r0, mcasm_static_dc0ade02eb8bb208cf058fd41e6d2a5b
	mov	[r0], 84
	mov	rax, -1
	jmp	.LBB183_15
.LBB183_9:                              //   in Loop: Header=BB183_6 Depth=1
	mov	r0, x5
add	r0, -2147483648
	jge	r0, x7, .LBB183_11
	jmp	.LBB183_10
.LBB183_10:                             //   in Loop: Header=BB183_6 Depth=1
	mov	x8, x0
	add	x8, x5
	mov	r0, [x8]
	mov	r1, -256
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_shl
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	[x8], rax
.LBB183_11:                             //   in Loop: Header=BB183_6 Depth=1
add	x5, 1
add	x2, 4
	mov	rax, x1
	je	x1, x5, .LBB183_15
	jmp	.LBB183_6
.LBB183_12:                             // %.loopexit8
	mov	rax, x5
	jz	x0, .LBB183_15
	jmp	.LBB183_13
.LBB183_13:                             // %.loopexit8
add	x1, -2147483648
	mov	r0, x5
add	r0, -2147483648
	mov	rax, x5
	jge	r0, x1, .LBB183_15
	jmp	.LBB183_14
.LBB183_14:
	add	x0, x5
	mov	r0, [x0]
	mov	r1, -256
	call	__bit_and
	mov	r1, 0
	mov	r0, rax
	call	__bit_or
	mov	[x0], rax
	mov	rax, x5
.LBB183_15:                             // %.loopexit12
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
// -- Begin function wcslen
wcslen:                                 // @wcslen
// %bb.0:
	mov	rax, -1
.LBB184_1:                              // =>This Inner Loop Header: Depth=1
	mov	r1, [r0]
add	rax, 1
add	r0, 4
	jnz	r1, .LBB184_1
	jmp	.LBB184_2
.LBB184_2:
	ret
// -- End function
// -- Begin function wcscpy
wcscpy:                                 // @wcscpy
// %bb.0:
	mov	rax, r0
	mov	r0, 0
.LBB185_1:                              // =>This Inner Loop Header: Depth=1
	mov	r2, r1
	add	r2, r0
	mov	r2, [r2]
	mov	r3, rax
	add	r3, r0
	mov	[r3], r2
add	r0, 4
	jnz	r2, .LBB185_1
	jmp	.LBB185_2
.LBB185_2:
	ret
// -- End function
// -- Begin function wcsncpy
wcsncpy:                                // @wcsncpy
// %bb.0:
sub	rsp, 8
	mov	[rsp+4], x0
	mov	[rsp], x1
	mov	rax, r0
	mov	r0, 0
	jz	r2, .LBB186_4
	jmp	.LBB186_1
.LBB186_1:                              // %.preheader3.preheader
	mov	r3, rax
.LBB186_2:                              // %.preheader3
                                        // =>This Inner Loop Header: Depth=1
	mov	r4, [r1]
	jz	r4, .LBB186_4
	jmp	.LBB186_3
.LBB186_3:                              //   in Loop: Header=BB186_2 Depth=1
	mov	[r3], r4
add	r0, 1
add	r3, 4
add	r1, 4
	je	r2, r0, .LBB186_7
	jmp	.LBB186_2
.LBB186_4:                              // %.loopexit4
	mov	r1, r0
add	r1, -2147483648
	mov	r3, r2
add	r3, -2147483648
	jle	r3, r1, .LBB186_7
	jmp	.LBB186_5
.LBB186_5:                              // %.preheader.preheader
	mov	r1, 2
	sub	r2, r0
	mov	x1, r2
	mov	x0, rax
	call	__bit_shl
	mov	r1, x1
	mov	r0, rax
	mov	rax, x0
	add	r0, rax
.LBB186_6:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	[r0], 0
add	r1, -1
add	r0, 4
	jnz	r1, .LBB186_6
	jmp	.LBB186_7
.LBB186_7:                              // %.loopexit
	mov	x1, [rsp]
	mov	x0, [rsp+4]
add	rsp, 8
	ret
// -- End function
// -- Begin function wcscat
wcscat:                                 // @wcscat
// %bb.0:
	mov	rax, r0
	mov	r0, 0
.LBB187_1:                              // =>This Inner Loop Header: Depth=1
	mov	r2, rax
	add	r2, r0
	mov	r2, [r2]
add	r0, 4
	jnz	r2, .LBB187_1
	jmp	.LBB187_2
.LBB187_2:
add	r0, -4
.LBB187_3:                              // =>This Inner Loop Header: Depth=1
	mov	r2, [r1]
	mov	r3, rax
	add	r3, r0
add	r1, 4
	mov	[r3], r2
add	r0, 4
	jnz	r2, .LBB187_3
	jmp	.LBB187_4
.LBB187_4:
	ret
// -- End function
// -- Begin function wcsncat
wcsncat:                                // @wcsncat
// %bb.0:
sub	rsp, 8
	mov	[rsp+4], x0
	mov	[rsp], x1
	mov	x0, r0
	mov	x1, x0
add	x1, -4
.LBB188_1:                              // =>This Inner Loop Header: Depth=1
add	x1, 4
	mov	r0, [x1]
	jnz	r0, .LBB188_1
	jmp	.LBB188_2
.LBB188_2:
	mov	r0, 0
	jz	r2, .LBB188_6
	jmp	.LBB188_3
.LBB188_3:                              // %.preheader.preheader
	mov	r3, 0
	mov	r4, x1
.LBB188_4:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r5, [r1]
	mov	r0, r3
	jz	r5, .LBB188_6
	jmp	.LBB188_5
.LBB188_5:                              //   in Loop: Header=BB188_4 Depth=1
	mov	[r4], r5
add	r3, 1
add	r4, 4
add	r1, 4
	mov	r0, r2
	jne	r2, r3, .LBB188_4
	jmp	.LBB188_6
.LBB188_6:                              // %.loopexit
	mov	r1, 2
	call	__bit_shl
	add	x1, rax
	mov	[x1], 0
	mov	rax, x0
	mov	x1, [rsp]
	mov	x0, [rsp+4]
add	rsp, 8
	ret
// -- End function
// -- Begin function wcscmp
wcscmp:                                 // @wcscmp
// %bb.0:
sub	rsp, 20
	mov	[rsp+16], x0
	mov	[rsp+12], x1
	mov	[rsp+8], x2
	mov	[rsp+4], x3
	mov	[rsp], x4
	mov	r2, [r0]
	mov	x2, 0
	jz	r2, .LBB189_4
	jmp	.LBB189_1
.LBB189_1:                              // %.preheader.preheader
add	r0, 4
.LBB189_2:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r3, [r1]
	mov	x2, r2
	jne	r2, r3, .LBB189_4
	jmp	.LBB189_3
.LBB189_3:                              //   in Loop: Header=BB189_2 Depth=1
	mov	r2, [r0]
add	r1, 4
add	r0, 4
	mov	x2, 0
	jnz	r2, .LBB189_2
	jmp	.LBB189_4
.LBB189_4:                              // %.loopexit
	mov	x3, [r1]
	mov	r1, 1
	jg	x2, x3, .LBB189_6
// %bb.5:                               // %.loopexit
	mov	r1, 0
.LBB189_6:                              // %.loopexit
	mov	x0, 0
	mov	r0, 0
	sub	r0, r1
	mov	r1, 1
	mov	x4, 1
	call	__bit_and
	mov	x1, rax
	mov	r0, x1
	call	__bit_not
	jl	x2, x3, .LBB189_8
// %bb.7:                               // %.loopexit
	mov	x4, 0
.LBB189_8:                              // %.loopexit
	sub	x0, x4
	mov	r0, x0
	mov	r1, rax
	call	__bit_and
	add	rax, x1
	mov	x4, [rsp]
	mov	x3, [rsp+4]
	mov	x2, [rsp+8]
	mov	x1, [rsp+12]
	mov	x0, [rsp+16]
add	rsp, 20
	ret
// -- End function
// -- Begin function wcsncmp
wcsncmp:                                // @wcsncmp
// %bb.0:
sub	rsp, 20
	mov	[rsp+16], x0
	mov	[rsp+12], x1
	mov	[rsp+8], x2
	mov	[rsp+4], x3
	mov	[rsp], x4
	mov	rax, 0
	jz	r2, .LBB190_10
	jmp	.LBB190_1
.LBB190_1:                              // %.preheader.preheader
	jmp	.LBB190_3
.LBB190_2:                              //   in Loop: Header=BB190_3 Depth=1
add	r2, -1
add	r1, 4
add	r0, 4
	jz	r2, .LBB190_10
	jmp	.LBB190_3
.LBB190_3:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	x1, [r0]
	mov	x2, [r1]
	jz	x1, .LBB190_5
	jmp	.LBB190_4
.LBB190_4:                              // %.preheader
                                        //   in Loop: Header=BB190_3 Depth=1
	je	x1, x2, .LBB190_2
	jmp	.LBB190_5
.LBB190_5:
	mov	r1, 1
	jg	x1, x2, .LBB190_7
// %bb.6:
	mov	r1, 0
.LBB190_7:
	mov	x0, 0
	mov	r0, 0
	sub	r0, r1
	mov	r1, 1
	mov	x4, 1
	call	__bit_and
	mov	x3, rax
	mov	r0, rax
	call	__bit_not
	jl	x1, x2, .LBB190_9
// %bb.8:
	mov	x4, 0
.LBB190_9:
	sub	x0, x4
	mov	r0, x0
	mov	r1, rax
	call	__bit_and
	mov	r0, rax
	mov	rax, x3
	add	rax, r0
.LBB190_10:                             // %.loopexit
	mov	x4, [rsp]
	mov	x3, [rsp+4]
	mov	x2, [rsp+8]
	mov	x1, [rsp+12]
	mov	x0, [rsp+16]
add	rsp, 20
	ret
// -- End function
// -- Begin function wcschr
wcschr:                                 // @wcschr
// %bb.0:
.LBB191_1:                              // =>This Inner Loop Header: Depth=1
	mov	r2, [r0]
	mov	rax, r0
	je	r2, r1, .LBB191_3
	jmp	.LBB191_2
.LBB191_2:                              //   in Loop: Header=BB191_1 Depth=1
add	r0, 4
	mov	rax, 0
	jnz	r2, .LBB191_1
	jmp	.LBB191_3
.LBB191_3:
	ret
// -- End function
// -- Begin function wcsrchr
wcsrchr:                                // @wcsrchr
// %bb.0:
sub	rsp, 16
	mov	[rsp+12], x0
	mov	[rsp+8], x1
	mov	[rsp+4], x2
	mov	[rsp], x3
	mov	x0, r1
	mov	x2, r0
	mov	x1, 0
.LBB192_1:                              // =>This Inner Loop Header: Depth=1
	mov	x3, [x2]
	mov	r2, 1
	je	x3, x0, .LBB192_3
// %bb.2:                               //   in Loop: Header=BB192_1 Depth=1
	mov	r2, 0
.LBB192_3:                              //   in Loop: Header=BB192_1 Depth=1
	mov	r1, x2
	sub	r1, x1
	mov	r0, 0
	sub	r0, r2
	call	__bit_and
	add	x1, rax
add	x2, 4
	jnz	x3, .LBB192_1
	jmp	.LBB192_4
.LBB192_4:
	mov	rax, x1
	mov	x3, [rsp]
	mov	x2, [rsp+4]
	mov	x1, [rsp+8]
	mov	x0, [rsp+12]
add	rsp, 16
	ret
// -- End function
// -- Begin function wcsspn
wcsspn:                                 // @wcsspn
// %bb.0:
sub	rsp, 12
	mov	[rsp+8], x0
	mov	[rsp+4], x1
	mov	[rsp], x2
	mov	x0, r0
	mov	r0, [x0]
	mov	x1, r1
	mov	x2, 0
	jz	r0, .LBB193_6
	jmp	.LBB193_1
.LBB193_1:                              // %.preheader.preheader
.LBB193_2:                              // %.preheader
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB193_3 Depth 2
	mov	r1, x1
.LBB193_3:                              //   Parent Loop BB193_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r2, [r1]
	je	r2, r0, .LBB193_5
	jmp	.LBB193_4
.LBB193_4:                              //   in Loop: Header=BB193_3 Depth=2
add	r1, 4
	jz	r2, .LBB193_6
	jmp	.LBB193_3
.LBB193_5:                              //   in Loop: Header=BB193_2 Depth=1
add	x2, 1
	mov	r1, 2
	mov	r0, x2
	call	__bit_shl
	add	rax, x0
	mov	r0, [rax]
	jnz	r0, .LBB193_2
	jmp	.LBB193_6
.LBB193_6:                              // %.loopexit
	mov	rax, x2
	mov	x2, [rsp]
	mov	x1, [rsp+4]
	mov	x0, [rsp+8]
add	rsp, 12
	ret
// -- End function
// -- Begin function wcscspn
wcscspn:                                // @wcscspn
// %bb.0:
sub	rsp, 12
	mov	[rsp+8], x0
	mov	[rsp+4], x1
	mov	[rsp], x2
	mov	x0, r0
	mov	r0, [x0]
	mov	x1, r1
	mov	x2, 0
	jz	r0, .LBB194_6
	jmp	.LBB194_1
.LBB194_1:                              // %.preheader.preheader
.LBB194_2:                              // %.preheader
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB194_3 Depth 2
	mov	r1, x1
.LBB194_3:                              //   Parent Loop BB194_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r2, [r1]
	je	r2, r0, .LBB194_6
	jmp	.LBB194_4
.LBB194_4:                              //   in Loop: Header=BB194_3 Depth=2
add	r1, 4
	jnz	r2, .LBB194_3
	jmp	.LBB194_5
.LBB194_5:                              //   in Loop: Header=BB194_2 Depth=1
add	x2, 1
	mov	r1, 2
	mov	r0, x2
	call	__bit_shl
	add	rax, x0
	mov	r0, [rax]
	jnz	r0, .LBB194_2
	jmp	.LBB194_6
.LBB194_6:                              // %.loopexit
	mov	rax, x2
	mov	x2, [rsp]
	mov	x1, [rsp+4]
	mov	x0, [rsp+8]
add	rsp, 12
	ret
// -- End function
// -- Begin function wcspbrk
wcspbrk:                                // @wcspbrk
// %bb.0:
	mov	r2, [r0]
	mov	rax, 0
	jz	r2, .LBB195_6
	jmp	.LBB195_1
.LBB195_1:                              // %.preheader.preheader
.LBB195_2:                              // %.preheader
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB195_3 Depth 2
	mov	rax, r0
	mov	r0, r1
.LBB195_3:                              //   Parent Loop BB195_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r3, [r0]
	je	r3, r2, .LBB195_6
	jmp	.LBB195_4
.LBB195_4:                              //   in Loop: Header=BB195_3 Depth=2
add	r0, 4
	jnz	r3, .LBB195_3
	jmp	.LBB195_5
.LBB195_5:                              //   in Loop: Header=BB195_2 Depth=1
add	rax, 4
	mov	r2, [rax]
	mov	r0, rax
	mov	rax, 0
	jnz	r2, .LBB195_2
	jmp	.LBB195_6
.LBB195_6:                              // %.loopexit
	ret
// -- End function
// -- Begin function wcsstr
wcsstr:                                 // @wcsstr
// %bb.0:
	mov	r2, -1
	mov	r3, r1
.LBB196_1:                              // =>This Inner Loop Header: Depth=1
	mov	r4, [r3]
add	r2, 1
add	r3, 4
	jnz	r4, .LBB196_1
	jmp	.LBB196_2
.LBB196_2:
	mov	rax, r0
	jz	r2, .LBB196_11
	jmp	.LBB196_3
.LBB196_3:
	mov	r3, [r0]
	mov	rax, 0
	jz	r3, .LBB196_11
	jmp	.LBB196_4
.LBB196_4:                              // %.preheader.preheader
.LBB196_5:                              // %.preheader
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB196_7 Depth 2
	mov	rax, r0
	mov	r0, 0
	mov	r3, r2
	jmp	.LBB196_7
.LBB196_6:                              //   in Loop: Header=BB196_7 Depth=2
add	r3, -1
add	r0, 4
	jz	r3, .LBB196_11
	jmp	.LBB196_7
.LBB196_7:                              //   Parent Loop BB196_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r4, rax
	add	r4, r0
	mov	r4, [r4]
	mov	r5, r1
	add	r5, r0
	mov	r5, [r5]
	jz	r4, .LBB196_9
	jmp	.LBB196_8
.LBB196_8:                              //   in Loop: Header=BB196_7 Depth=2
	je	r4, r5, .LBB196_6
	jmp	.LBB196_9
.LBB196_9:                              //   in Loop: Header=BB196_5 Depth=1
	je	r4, r5, .LBB196_11
	jmp	.LBB196_10
.LBB196_10:                             //   in Loop: Header=BB196_5 Depth=1
add	rax, 4
	mov	r3, [rax]
	mov	r0, rax
	mov	rax, 0
	jnz	r3, .LBB196_5
	jmp	.LBB196_11
.LBB196_11:                             // %.loopexit
	ret
// -- End function
// -- Begin function iswalnum
iswalnum:                               // @iswalnum
// %bb.0:
sub	rsp, 4
	mov	[rsp], x0
	mov	x0, r0
add	r0, -2147483648
	mov	r1, -2147483521
	mov	rax, 0
	jg	r0, r1, .LBB197_6
	jmp	.LBB197_1
.LBB197_1:
	mov	r1, 95
	mov	r0, x0
	call	__bit_and
add	rax, 2147483583
	mov	r2, -2147483622
	mov	r0, 1
	mov	r1, 1
	jl	rax, r2, .LBB197_3
// %bb.2:
	mov	r1, 0
.LBB197_3:
add	x0, 2147483600
	mov	r2, -2147483638
	jl	x0, r2, .LBB197_5
// %bb.4:
	mov	r0, 0
.LBB197_5:
	call	__bit_or
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
.LBB197_6:
	mov	x0, [rsp]
add	rsp, 4
	ret
// -- End function
// -- Begin function iswalpha
iswalpha:                               // @iswalpha
// %bb.0:
sub	rsp, 8
	mov	[rsp+4], x0
	mov	[rsp], x1
	mov	r1, r0
add	r1, -2147483648
	mov	r2, -2147483520
	mov	x0, 1
	mov	x1, 1
	jl	r1, r2, .LBB198_2
// %bb.1:
	mov	x1, 0
.LBB198_2:
	mov	r1, -33
	call	__bit_and
add	rax, 2147483583
	mov	r0, -2147483622
	jl	rax, r0, .LBB198_4
// %bb.3:
	mov	x0, 0
.LBB198_4:
	mov	r0, x1
	mov	r1, x0
	call	__bit_and
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	x1, [rsp]
	mov	x0, [rsp+4]
add	rsp, 8
	ret
// -- End function
// -- Begin function iswblank
iswblank:                               // @iswblank
// %bb.0:
	mov	r2, r0
	mov	r3, 32
	mov	r1, 1
	mov	r0, 1
	je	r2, r3, .LBB199_2
// %bb.1:
	mov	r0, 0
.LBB199_2:
	mov	r3, 9
	je	r2, r3, .LBB199_4
// %bb.3:
	mov	r1, 0
.LBB199_4:
	call	__bit_or
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	ret
// -- End function
// -- Begin function iswcntrl
iswcntrl:                               // @iswcntrl
// %bb.0:
sub	rsp, 4
	mov	[rsp], x0
	mov	r2, r0
	mov	r1, r2
add	r1, -2147483648
	mov	r3, -2147483520
	mov	r0, 1
	mov	x0, 1
	jl	r1, r3, .LBB200_2
// %bb.1:
	mov	x0, 0
.LBB200_2:
	mov	r3, -2147483616
	jl	r1, r3, .LBB200_4
// %bb.3:
	mov	r0, 0
.LBB200_4:
	mov	r3, 127
	mov	r1, 1
	je	r2, r3, .LBB200_6
// %bb.5:
	mov	r1, 0
.LBB200_6:
	call	__bit_or
	mov	r0, x0
	mov	r1, rax
	call	__bit_and
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	x0, [rsp]
add	rsp, 4
	ret
// -- End function
// -- Begin function iswdigit
iswdigit:                               // @iswdigit
// %bb.0:
	mov	r1, r0
add	r1, 2147483600
	mov	r2, -2147483638
	mov	r0, 1
	jl	r1, r2, .LBB201_2
// %bb.1:
	mov	r0, 0
.LBB201_2:
	mov	r1, 1
	call	__bit_and
	ret
// -- End function
// -- Begin function iswgraph
iswgraph:                               // @iswgraph
// %bb.0:
	mov	r1, r0
add	r1, 2147483615
	mov	r2, -2147483554
	mov	r0, 1
	jl	r1, r2, .LBB202_2
// %bb.1:
	mov	r0, 0
.LBB202_2:
	mov	r1, 1
	call	__bit_and
	ret
// -- End function
// -- Begin function iswlower
iswlower:                               // @iswlower
// %bb.0:
	mov	r1, r0
add	r1, 2147483551
	mov	r2, -2147483622
	mov	r0, 1
	jl	r1, r2, .LBB203_2
// %bb.1:
	mov	r0, 0
.LBB203_2:
	mov	r1, 1
	call	__bit_and
	ret
// -- End function
// -- Begin function iswprint
iswprint:                               // @iswprint
// %bb.0:
	mov	r1, r0
add	r1, 2147483616
	mov	r2, -2147483553
	mov	r0, 1
	jl	r1, r2, .LBB204_2
// %bb.1:
	mov	r0, 0
.LBB204_2:
	mov	r1, 1
	call	__bit_and
	ret
// -- End function
// -- Begin function iswpunct
iswpunct:                               // @iswpunct
// %bb.0:
sub	rsp, 4
	mov	[rsp], x0
	mov	x0, r0
add	r0, 2147483521
	mov	r1, 2147483554
	mov	rax, 0
	jl	r0, r1, .LBB205_6
	jmp	.LBB205_1
.LBB205_1:
	mov	r1, 95
	mov	r0, x0
	call	__bit_and
add	rax, 2147483557
	mov	r2, 2147483622
	mov	r0, 1
	mov	r1, 1
	jl	rax, r2, .LBB205_3
// %bb.2:
	mov	r1, 0
.LBB205_3:
add	x0, 2147483590
	mov	r2, 2147483638
	jl	x0, r2, .LBB205_5
// %bb.4:
	mov	r0, 0
.LBB205_5:
	call	__bit_and
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
.LBB205_6:                              // %ispunct.exit
	mov	x0, [rsp]
add	rsp, 4
	ret
// -- End function
// -- Begin function iswspace
iswspace:                               // @iswspace
// %bb.0:
	mov	r1, r0
add	r1, -2147483648
	mov	r2, -2147483521
	mov	rax, 0
	jg	r1, r2, .LBB206_7
	jmp	.LBB206_1
.LBB206_1:
	mov	r2, r0
add	r2, 2147483639
	mov	r1, -2147483646
	mov	rax, 1
	jl	r2, r1, .LBB206_7
	jmp	.LBB206_2
.LBB206_2:
	mov	r2, r0
add	r2, 2147483636
	jl	r2, r1, .LBB206_7
	jmp	.LBB206_3
.LBB206_3:
	mov	r1, 32
	je	r0, r1, .LBB206_7
	jmp	.LBB206_4
.LBB206_4:
	mov	r1, 11
	mov	r2, 1
	je	r0, r1, .LBB206_6
// %bb.5:
	mov	r2, 0
.LBB206_6:
	mov	r1, 1
	mov	r0, r2
	call	__bit_and
.LBB206_7:                              // %isspace.exit
	ret
// -- End function
// -- Begin function iswupper
iswupper:                               // @iswupper
// %bb.0:
	mov	r1, r0
add	r1, 2147483583
	mov	r2, -2147483622
	mov	r0, 1
	jl	r1, r2, .LBB207_2
// %bb.1:
	mov	r0, 0
.LBB207_2:
	mov	r1, 1
	call	__bit_and
	ret
// -- End function
// -- Begin function iswxdigit
iswxdigit:                              // @iswxdigit
// %bb.0:
sub	rsp, 8
	mov	[rsp+4], x0
	mov	[rsp], x1
	mov	r1, r0
add	r1, -2147483648
	mov	r2, -2147483521
	mov	rax, 0
	jg	r1, r2, .LBB208_6
	jmp	.LBB208_1
.LBB208_1:
	mov	r1, r0
add	r1, 2147483600
	mov	r2, -2147483638
	mov	x0, 1
	mov	x1, 1
	jl	r1, r2, .LBB208_3
// %bb.2:
	mov	x1, 0
.LBB208_3:
	mov	r1, 95
	call	__bit_and
add	rax, 2147483583
	mov	r0, -2147483642
	jl	rax, r0, .LBB208_5
// %bb.4:
	mov	x0, 0
.LBB208_5:
	mov	r0, x1
	mov	r1, x0
	call	__bit_or
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
.LBB208_6:
	mov	x1, [rsp]
	mov	x0, [rsp+4]
add	rsp, 8
	ret
// -- End function
// -- Begin function towlower
towlower:                               // @towlower
// %bb.0:
	mov	rax, r0
add	r0, 2147483557
	mov	r1, 2147483622
	jl	r0, r1, .LBB209_2
	jmp	.LBB209_1
.LBB209_1:
add	rax, 32
.LBB209_2:
	ret
// -- End function
// -- Begin function towupper
towupper:                               // @towupper
// %bb.0:
	mov	rax, r0
add	r0, 2147483525
	mov	r1, 2147483622
	jl	r0, r1, .LBB210_2
	jmp	.LBB210_1
.LBB210_1:
add	rax, -32
.LBB210_2:
	ret
// -- End function
// -- Begin function wctype
wctype:                                 // @wctype
// %bb.0:
sub	rsp, 28
	mov	[rsp+24], x0
	mov	[rsp+20], x1
	mov	[rsp+16], x2
	mov	[rsp+12], x3
	mov	[rsp+8], x4
	mov	[rsp+4], x5
	mov	[rsp], x6
	mov	r1, 3
	mov	x0, r0
	call	__bit_and
	mov	x2, rax
	jz	x2, .LBB211_2
	jmp	.LBB211_1
.LBB211_1:
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	mov	x1, rax
	mov	x5, mcasm_static_c7b95f326180fa323daa354fbb6c3120
	mov	x3, x1
	mov	x6, x0
	jmp	.LBB211_7
.LBB211_2:
	mov	x1, [x0]
	mov	r1, 1970170977
	mov	x5, mcasm_static_c7b95f326180fa323daa354fbb6c3120
	mov	x3, x1
	mov	x6, x0
	jne	x1, r1, .LBB211_7
	jmp	.LBB211_3
.LBB211_3:                              // %.preheader5.i.preheader
	mov	x3, -2139062144
	mov	x6, x0
.LBB211_4:                              // %.preheader5.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	mov	rax, 1
	jne	r0, x3, .LBB211_113
	jmp	.LBB211_5
.LBB211_5:                              //   in Loop: Header=BB211_4 Depth=1
add	x6, 4
add	x5, 4
	mov	r1, [x6]
	mov	r0, [x5]
	je	r1, r0, .LBB211_4
	jmp	.LBB211_6
.LBB211_6:
	mov	x3, r1
.LBB211_7:
	mov	r1, 255
	mov	r0, x3
	call	__bit_and
	mov	x4, 0
	jz	rax, .LBB211_12
	jmp	.LBB211_8
.LBB211_8:                              // %.preheader.i.preheader
add	x6, 1
.LBB211_9:                              // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	mov	r0, x3
	jne	rax, x4, .LBB211_11
	jmp	.LBB211_10
.LBB211_10:                             //   in Loop: Header=BB211_9 Depth=1
	mov	r0, [x6]
	mov	r1, 255
add	x5, 1
	call	__bit_and
	mov	x3, rax
add	x6, 1
	mov	r0, 0
	jnz	x3, .LBB211_9
	jmp	.LBB211_11
.LBB211_11:
	mov	r1, 255
	call	__bit_and
	mov	x4, rax
.LBB211_12:                             // %strcmp.exit
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	mov	r0, rax
	mov	rax, 1
	je	x4, r0, .LBB211_113
	jmp	.LBB211_13
.LBB211_13:
	mov	x5, mcasm_static_a863be26076611e3fbbb5fc196632df6
	mov	x3, x1
	mov	x6, x0
	jnz	x2, .LBB211_19
	jmp	.LBB211_14
.LBB211_14:
	mov	x1, [x0]
	mov	r1, 1752198241
	mov	x3, x1
	mov	x6, x0
	jne	x1, r1, .LBB211_19
	jmp	.LBB211_15
.LBB211_15:                             // %.preheader5.i2.preheader
	mov	x3, -2139062144
	mov	x6, x0
.LBB211_16:                             // %.preheader5.i2
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	mov	rax, 2
	jne	r0, x3, .LBB211_113
	jmp	.LBB211_17
.LBB211_17:                             //   in Loop: Header=BB211_16 Depth=1
add	x6, 4
add	x5, 4
	mov	r1, [x6]
	mov	r0, [x5]
	je	r1, r0, .LBB211_16
	jmp	.LBB211_18
.LBB211_18:
	mov	x3, r1
.LBB211_19:
	mov	r1, 255
	mov	r0, x3
	call	__bit_and
	mov	x4, 0
	jz	rax, .LBB211_24
	jmp	.LBB211_20
.LBB211_20:                             // %.preheader.i1.preheader
add	x6, 1
.LBB211_21:                             // %.preheader.i1
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	mov	r0, x3
	jne	rax, x4, .LBB211_23
	jmp	.LBB211_22
.LBB211_22:                             //   in Loop: Header=BB211_21 Depth=1
	mov	r0, [x6]
	mov	r1, 255
add	x5, 1
	call	__bit_and
	mov	x3, rax
add	x6, 1
	mov	r0, 0
	jnz	x3, .LBB211_21
	jmp	.LBB211_23
.LBB211_23:
	mov	r1, 255
	call	__bit_and
	mov	x4, rax
.LBB211_24:                             // %strcmp.exit3
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	mov	r0, rax
	mov	rax, 2
	je	x4, r0, .LBB211_113
	jmp	.LBB211_25
.LBB211_25:
	mov	x5, mcasm_static_89268db83ea86d66b40b3b1140892e42
	mov	x3, x1
	mov	x6, x0
	jnz	x2, .LBB211_31
	jmp	.LBB211_26
.LBB211_26:
	mov	x1, [x0]
	mov	r1, 1851878498
	mov	x3, x1
	mov	x6, x0
	jne	x1, r1, .LBB211_31
	jmp	.LBB211_27
.LBB211_27:                             // %.preheader5.i5.preheader
	mov	x3, -2139062144
	mov	x6, x0
.LBB211_28:                             // %.preheader5.i5
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	mov	rax, 3
	jne	r0, x3, .LBB211_113
	jmp	.LBB211_29
.LBB211_29:                             //   in Loop: Header=BB211_28 Depth=1
add	x6, 4
add	x5, 4
	mov	r1, [x6]
	mov	r0, [x5]
	je	r1, r0, .LBB211_28
	jmp	.LBB211_30
.LBB211_30:
	mov	x3, r1
.LBB211_31:
	mov	r1, 255
	mov	r0, x3
	call	__bit_and
	mov	x4, 0
	jz	rax, .LBB211_36
	jmp	.LBB211_32
.LBB211_32:                             // %.preheader.i4.preheader
add	x6, 1
.LBB211_33:                             // %.preheader.i4
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	mov	r0, x3
	jne	rax, x4, .LBB211_35
	jmp	.LBB211_34
.LBB211_34:                             //   in Loop: Header=BB211_33 Depth=1
	mov	r0, [x6]
	mov	r1, 255
add	x5, 1
	call	__bit_and
	mov	x3, rax
add	x6, 1
	mov	r0, 0
	jnz	x3, .LBB211_33
	jmp	.LBB211_35
.LBB211_35:
	mov	r1, 255
	call	__bit_and
	mov	x4, rax
.LBB211_36:                             // %strcmp.exit6
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	mov	r0, rax
	mov	rax, 3
	je	x4, r0, .LBB211_113
	jmp	.LBB211_37
.LBB211_37:
	mov	x5, mcasm_static_83a606b5393e5824aafbd9b2d6359765
	mov	x3, x1
	mov	x6, x0
	jnz	x2, .LBB211_43
	jmp	.LBB211_38
.LBB211_38:
	mov	x1, [x0]
	mov	r1, 1920233059
	mov	x3, x1
	mov	x6, x0
	jne	x1, r1, .LBB211_43
	jmp	.LBB211_39
.LBB211_39:                             // %.preheader5.i8.preheader
	mov	x3, -2139062144
	mov	x6, x0
.LBB211_40:                             // %.preheader5.i8
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	mov	rax, 4
	jne	r0, x3, .LBB211_113
	jmp	.LBB211_41
.LBB211_41:                             //   in Loop: Header=BB211_40 Depth=1
add	x6, 4
add	x5, 4
	mov	r1, [x6]
	mov	r0, [x5]
	je	r1, r0, .LBB211_40
	jmp	.LBB211_42
.LBB211_42:
	mov	x3, r1
.LBB211_43:
	mov	r1, 255
	mov	r0, x3
	call	__bit_and
	mov	x4, 0
	jz	rax, .LBB211_48
	jmp	.LBB211_44
.LBB211_44:                             // %.preheader.i7.preheader
add	x6, 1
.LBB211_45:                             // %.preheader.i7
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	mov	r0, x3
	jne	rax, x4, .LBB211_47
	jmp	.LBB211_46
.LBB211_46:                             //   in Loop: Header=BB211_45 Depth=1
	mov	r0, [x6]
	mov	r1, 255
add	x5, 1
	call	__bit_and
	mov	x3, rax
add	x6, 1
	mov	r0, 0
	jnz	x3, .LBB211_45
	jmp	.LBB211_47
.LBB211_47:
	mov	r1, 255
	call	__bit_and
	mov	x4, rax
.LBB211_48:                             // %strcmp.exit9
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	mov	r0, rax
	mov	rax, 4
	je	x4, r0, .LBB211_113
	jmp	.LBB211_49
.LBB211_49:
	mov	x5, mcasm_static_ca5d5f524267e4c5d5bc4a6b88c10493
	mov	x3, x1
	mov	x6, x0
	jnz	x2, .LBB211_55
	jmp	.LBB211_50
.LBB211_50:
	mov	x1, [x0]
	mov	r1, 1768384868
	mov	x3, x1
	mov	x6, x0
	jne	x1, r1, .LBB211_55
	jmp	.LBB211_51
.LBB211_51:                             // %.preheader5.i11.preheader
	mov	x3, -2139062144
	mov	x6, x0
.LBB211_52:                             // %.preheader5.i11
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	mov	rax, 5
	jne	r0, x3, .LBB211_113
	jmp	.LBB211_53
.LBB211_53:                             //   in Loop: Header=BB211_52 Depth=1
add	x6, 4
add	x5, 4
	mov	r1, [x6]
	mov	r0, [x5]
	je	r1, r0, .LBB211_52
	jmp	.LBB211_54
.LBB211_54:
	mov	x3, r1
.LBB211_55:
	mov	r1, 255
	mov	r0, x3
	call	__bit_and
	mov	x4, 0
	jz	rax, .LBB211_60
	jmp	.LBB211_56
.LBB211_56:                             // %.preheader.i10.preheader
add	x6, 1
.LBB211_57:                             // %.preheader.i10
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	mov	r0, x3
	jne	rax, x4, .LBB211_59
	jmp	.LBB211_58
.LBB211_58:                             //   in Loop: Header=BB211_57 Depth=1
	mov	r0, [x6]
	mov	r1, 255
add	x5, 1
	call	__bit_and
	mov	x3, rax
add	x6, 1
	mov	r0, 0
	jnz	x3, .LBB211_57
	jmp	.LBB211_59
.LBB211_59:
	mov	r1, 255
	call	__bit_and
	mov	x4, rax
.LBB211_60:                             // %strcmp.exit12
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	mov	r0, rax
	mov	rax, 5
	je	x4, r0, .LBB211_113
	jmp	.LBB211_61
.LBB211_61:
	mov	x5, mcasm_static_7194ffb7bcd538a0bc972dd06e03855e
	mov	x3, x1
	mov	x6, x0
	jnz	x2, .LBB211_67
	jmp	.LBB211_62
.LBB211_62:
	mov	x1, [x0]
	mov	r1, 1885434471
	mov	x3, x1
	mov	x6, x0
	jne	x1, r1, .LBB211_67
	jmp	.LBB211_63
.LBB211_63:                             // %.preheader5.i14.preheader
	mov	x3, -2139062144
	mov	x6, x0
.LBB211_64:                             // %.preheader5.i14
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	mov	rax, 6
	jne	r0, x3, .LBB211_113
	jmp	.LBB211_65
.LBB211_65:                             //   in Loop: Header=BB211_64 Depth=1
add	x6, 4
add	x5, 4
	mov	r1, [x6]
	mov	r0, [x5]
	je	r1, r0, .LBB211_64
	jmp	.LBB211_66
.LBB211_66:
	mov	x3, r1
.LBB211_67:
	mov	r1, 255
	mov	r0, x3
	call	__bit_and
	mov	x4, 0
	jz	rax, .LBB211_72
	jmp	.LBB211_68
.LBB211_68:                             // %.preheader.i13.preheader
add	x6, 1
.LBB211_69:                             // %.preheader.i13
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	mov	r0, x3
	jne	rax, x4, .LBB211_71
	jmp	.LBB211_70
.LBB211_70:                             //   in Loop: Header=BB211_69 Depth=1
	mov	r0, [x6]
	mov	r1, 255
add	x5, 1
	call	__bit_and
	mov	x3, rax
add	x6, 1
	mov	r0, 0
	jnz	x3, .LBB211_69
	jmp	.LBB211_71
.LBB211_71:
	mov	r1, 255
	call	__bit_and
	mov	x4, rax
.LBB211_72:                             // %strcmp.exit15
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	mov	r0, rax
	mov	rax, 6
	je	x4, r0, .LBB211_113
	jmp	.LBB211_73
.LBB211_73:
	mov	x5, mcasm_static_29364bc9793049772e34ba2addadc4b9
	mov	x3, x1
	mov	x6, x0
	jnz	x2, .LBB211_79
	jmp	.LBB211_74
.LBB211_74:
	mov	x1, [x0]
	mov	r1, 1702326124
	mov	x3, x1
	mov	x6, x0
	jne	x1, r1, .LBB211_79
	jmp	.LBB211_75
.LBB211_75:                             // %.preheader5.i17.preheader
	mov	x3, -2139062144
	mov	x6, x0
.LBB211_76:                             // %.preheader5.i17
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	mov	rax, 7
	jne	r0, x3, .LBB211_113
	jmp	.LBB211_77
.LBB211_77:                             //   in Loop: Header=BB211_76 Depth=1
add	x6, 4
add	x5, 4
	mov	r1, [x6]
	mov	r0, [x5]
	je	r1, r0, .LBB211_76
	jmp	.LBB211_78
.LBB211_78:
	mov	x3, r1
.LBB211_79:
	mov	r1, 255
	mov	r0, x3
	call	__bit_and
	mov	x4, 0
	jz	rax, .LBB211_84
	jmp	.LBB211_80
.LBB211_80:                             // %.preheader.i16.preheader
add	x6, 1
.LBB211_81:                             // %.preheader.i16
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	mov	r0, x3
	jne	rax, x4, .LBB211_83
	jmp	.LBB211_82
.LBB211_82:                             //   in Loop: Header=BB211_81 Depth=1
	mov	r0, [x6]
	mov	r1, 255
add	x5, 1
	call	__bit_and
	mov	x3, rax
add	x6, 1
	mov	r0, 0
	jnz	x3, .LBB211_81
	jmp	.LBB211_83
.LBB211_83:
	mov	r1, 255
	call	__bit_and
	mov	x4, rax
.LBB211_84:                             // %strcmp.exit18
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	mov	r0, rax
	mov	rax, 7
	je	x4, r0, .LBB211_113
	jmp	.LBB211_85
.LBB211_85:
	mov	x5, mcasm_static_1f901193d724ccbf92dd157d664b937c
	mov	x3, x1
	mov	x6, x0
	jnz	x2, .LBB211_91
	jmp	.LBB211_86
.LBB211_86:
	mov	x1, [x0]
	mov	r1, 1852404336
	mov	x3, x1
	mov	x6, x0
	jne	x1, r1, .LBB211_91
	jmp	.LBB211_87
.LBB211_87:                             // %.preheader5.i20.preheader
	mov	x3, -2139062144
	mov	x6, x0
.LBB211_88:                             // %.preheader5.i20
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	mov	rax, 8
	jne	r0, x3, .LBB211_113
	jmp	.LBB211_89
.LBB211_89:                             //   in Loop: Header=BB211_88 Depth=1
add	x6, 4
add	x5, 4
	mov	r1, [x6]
	mov	r0, [x5]
	je	r1, r0, .LBB211_88
	jmp	.LBB211_90
.LBB211_90:
	mov	x3, r1
.LBB211_91:
	mov	r1, 255
	mov	r0, x3
	call	__bit_and
	mov	x4, 0
	jz	rax, .LBB211_96
	jmp	.LBB211_92
.LBB211_92:                             // %.preheader.i19.preheader
add	x6, 1
.LBB211_93:                             // %.preheader.i19
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	mov	r0, x3
	jne	rax, x4, .LBB211_95
	jmp	.LBB211_94
.LBB211_94:                             //   in Loop: Header=BB211_93 Depth=1
	mov	r0, [x6]
	mov	r1, 255
add	x5, 1
	call	__bit_and
	mov	x3, rax
add	x6, 1
	mov	r0, 0
	jnz	x3, .LBB211_93
	jmp	.LBB211_95
.LBB211_95:
	mov	r1, 255
	call	__bit_and
	mov	x4, rax
.LBB211_96:                             // %strcmp.exit21
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	mov	r0, rax
	mov	rax, 8
	je	x4, r0, .LBB211_113
	jmp	.LBB211_97
.LBB211_97:
	mov	x3, mcasm_static_164e0f25166781d3132eb0e71a1ff6b2
	mov	x4, x0
	jnz	x2, .LBB211_103
	jmp	.LBB211_98
.LBB211_98:
	mov	x1, [x0]
	mov	r1, 1668183408
	mov	x4, x0
	jne	x1, r1, .LBB211_103
	jmp	.LBB211_99
.LBB211_99:                             // %.preheader5.i23.preheader
	mov	x1, -2139062144
	mov	x4, x0
.LBB211_100:                            // %.preheader5.i23
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	mov	rax, 9
	jne	r0, x1, .LBB211_113
	jmp	.LBB211_101
.LBB211_101:                            //   in Loop: Header=BB211_100 Depth=1
add	x4, 4
add	x3, 4
	mov	r1, [x4]
	mov	r0, [x3]
	je	r1, r0, .LBB211_100
	jmp	.LBB211_102
.LBB211_102:
	mov	x1, r1
.LBB211_103:
	mov	r1, 255
	mov	r0, x1
	call	__bit_and
	mov	x2, 0
	jz	rax, .LBB211_108
	jmp	.LBB211_104
.LBB211_104:                            // %.preheader.i22.preheader
add	x4, 1
.LBB211_105:                            // %.preheader.i22
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x3]
	mov	r1, 255
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	r0, x1
	jne	rax, x2, .LBB211_107
	jmp	.LBB211_106
.LBB211_106:                            //   in Loop: Header=BB211_105 Depth=1
	mov	r0, [x4]
	mov	r1, 255
add	x3, 1
	call	__bit_and
	mov	x1, rax
add	x4, 1
	mov	r0, 0
	jnz	x1, .LBB211_105
	jmp	.LBB211_107
.LBB211_107:
	mov	r1, 255
	call	__bit_and
	mov	x2, rax
.LBB211_108:                            // %strcmp.exit24
	mov	r0, [x3]
	mov	r1, 255
	call	__bit_and
	mov	r0, rax
	mov	rax, 9
	je	x2, r0, .LBB211_113
	jmp	.LBB211_109
.LBB211_109:
	mov	r1, mcasm_static_b80a84f005fc4d67c3f797155cfd473f
	mov	r0, x0
	call	strcmp
	mov	r0, rax
	mov	rax, 10
	jz	r0, .LBB211_113
	jmp	.LBB211_110
.LBB211_110:
	mov	r1, mcasm_static_a246b644b114a84ebeed45804dabaa35
	mov	r0, x0
	call	strcmp
	mov	r0, rax
	mov	rax, 11
	jz	r0, .LBB211_113
	jmp	.LBB211_111
.LBB211_111:
	mov	r1, mcasm_static_f7738ed1476e9ee50d2f0e58f82d5f59
	mov	r0, x0
	call	strcmp
	mov	r0, rax
	mov	rax, 12
	jz	r0, .LBB211_113
	jmp	.LBB211_112
.LBB211_112:
	mov	rax, 0
.LBB211_113:                            // %strcmp.exit.thread
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
// -- Begin function iswctype
iswctype:                               // @iswctype
// %bb.0:
sub	rsp, 8
	mov	[rsp+4], x0
	mov	[rsp], x1
	mov	r3, 6
	mov	r2, 0
	jg	r1, r3, .LBB212_8
	jmp	.LBB212_1
.LBB212_1:
	mov	r3, 3
	jg	r1, r3, .LBB212_5
	jmp	.LBB212_2
.LBB212_2:
	mov	r3, 1
	je	r1, r3, .LBB212_15
	jmp	.LBB212_3
.LBB212_3:
	mov	r3, 2
	je	r1, r3, .LBB212_21
	jmp	.LBB212_4
.LBB212_4:
	mov	r3, 3
	je	r1, r3, .LBB212_25
	jmp	.LBB212_72
.LBB212_5:
	mov	r3, 4
	je	r1, r3, .LBB212_31
	jmp	.LBB212_6
.LBB212_6:
	mov	r3, 5
	je	r1, r3, .LBB212_37
	jmp	.LBB212_7
.LBB212_7:
	mov	r3, 6
	je	r1, r3, .LBB212_41
	jmp	.LBB212_72
.LBB212_8:
	mov	r3, 9
	jg	r1, r3, .LBB212_12
	jmp	.LBB212_9
.LBB212_9:
	mov	r3, 7
	je	r1, r3, .LBB212_45
	jmp	.LBB212_10
.LBB212_10:
	mov	r3, 8
	je	r1, r3, .LBB212_49
	jmp	.LBB212_11
.LBB212_11:
	mov	r3, 9
	je	r1, r3, .LBB212_53
	jmp	.LBB212_72
.LBB212_12:
	mov	r3, 10
	je	r1, r3, .LBB212_59
	jmp	.LBB212_13
.LBB212_13:
	mov	r3, 11
	je	r1, r3, .LBB212_61
	jmp	.LBB212_14
.LBB212_14:
	mov	r3, 12
	je	r1, r3, .LBB212_65
	jmp	.LBB212_72
.LBB212_15:
	mov	r1, r0
add	r1, -2147483648
	mov	r3, -2147483521
	jg	r1, r3, .LBB212_72
	jmp	.LBB212_16
.LBB212_16:
	mov	r1, 95
	mov	x0, r0
	call	__bit_and
add	rax, 2147483583
	mov	r2, -2147483622
	mov	r0, 1
	mov	r1, 1
	jl	rax, r2, .LBB212_18
// %bb.17:
	mov	r1, 0
.LBB212_18:
add	x0, 2147483600
	mov	r2, -2147483638
	jl	x0, r2, .LBB212_20
// %bb.19:
	mov	r0, 0
.LBB212_20:
	call	__bit_or
	mov	r2, rax
	jmp	.LBB212_72
.LBB212_21:
	mov	r1, r0
add	r1, -2147483648
	mov	r3, -2147483521
	jg	r1, r3, .LBB212_72
	jmp	.LBB212_22
.LBB212_22:
	mov	r1, 95
	call	__bit_and
add	rax, 2147483583
	mov	r0, -2147483622
	mov	r2, 1
	jl	rax, r0, .LBB212_24
// %bb.23:
	mov	r2, 0
.LBB212_24:
	jmp	.LBB212_72
.LBB212_25:
	mov	r1, r0
add	r1, -2147483648
	mov	r3, -2147483521
	jg	r1, r3, .LBB212_72
	jmp	.LBB212_26
.LBB212_26:
	mov	r3, 32
	mov	r1, 1
	mov	r2, 1
	je	r0, r3, .LBB212_28
// %bb.27:
	mov	r2, 0
.LBB212_28:
	mov	r3, 9
	je	r0, r3, .LBB212_30
// %bb.29:
	mov	r1, 0
.LBB212_30:
	mov	r0, r2
	call	__bit_or
	mov	r2, rax
	jmp	.LBB212_72
.LBB212_31:
	mov	r1, r0
add	r1, -2147483648
	mov	r3, -2147483521
	jg	r1, r3, .LBB212_72
	jmp	.LBB212_32
.LBB212_32:
	mov	r3, 32
	mov	r1, 1
	mov	r2, 1
	jl	r0, r3, .LBB212_34
// %bb.33:
	mov	r2, 0
.LBB212_34:
	mov	r3, 127
	je	r0, r3, .LBB212_36
// %bb.35:
	mov	r1, 0
.LBB212_36:
	mov	r0, r2
	call	__bit_or
	mov	r2, rax
	jmp	.LBB212_72
.LBB212_37:
	mov	r1, r0
add	r1, -2147483648
	mov	r3, -2147483521
	jg	r1, r3, .LBB212_72
	jmp	.LBB212_38
.LBB212_38:
add	r0, 2147483600
	mov	r1, -2147483638
	mov	r2, 1
	jl	r0, r1, .LBB212_40
// %bb.39:
	mov	r2, 0
.LBB212_40:
	jmp	.LBB212_72
.LBB212_41:
	mov	r1, r0
add	r1, -2147483648
	mov	r3, -2147483521
	jg	r1, r3, .LBB212_72
	jmp	.LBB212_42
.LBB212_42:
add	r0, 2147483615
	mov	r1, -2147483554
	mov	r2, 1
	jl	r0, r1, .LBB212_44
// %bb.43:
	mov	r2, 0
.LBB212_44:
	jmp	.LBB212_72
.LBB212_45:
	mov	r1, r0
add	r1, -2147483648
	mov	r3, -2147483521
	jg	r1, r3, .LBB212_72
	jmp	.LBB212_46
.LBB212_46:
add	r0, 2147483551
	mov	r1, -2147483622
	mov	r2, 1
	jl	r0, r1, .LBB212_48
// %bb.47:
	mov	r2, 0
.LBB212_48:
	jmp	.LBB212_72
.LBB212_49:
	mov	r1, r0
add	r1, -2147483648
	mov	r3, -2147483521
	jg	r1, r3, .LBB212_72
	jmp	.LBB212_50
.LBB212_50:
add	r0, 2147483616
	mov	r1, -2147483553
	mov	r2, 1
	jl	r0, r1, .LBB212_52
// %bb.51:
	mov	r2, 0
.LBB212_52:
	jmp	.LBB212_72
.LBB212_53:
	mov	r1, r0
add	r1, 2147483521
	mov	r3, 2147483554
	jl	r1, r3, .LBB212_72
	jmp	.LBB212_54
.LBB212_54:
	mov	r1, 95
	mov	x0, r0
	call	__bit_and
add	rax, 2147483557
	mov	r2, 2147483622
	mov	r0, 1
	mov	r1, 1
	jl	rax, r2, .LBB212_56
// %bb.55:
	mov	r1, 0
.LBB212_56:
add	x0, 2147483590
	mov	r2, 2147483638
	jl	x0, r2, .LBB212_58
// %bb.57:
	mov	r0, 0
.LBB212_58:
	call	__bit_and
	mov	r2, rax
	jmp	.LBB212_72
.LBB212_59:
	mov	r1, r0
add	r1, -2147483648
	mov	r3, -2147483521
	jg	r1, r3, .LBB212_72
	jmp	.LBB212_60
.LBB212_60:
	mov	r1, r0
add	r1, 2147483639
	mov	r3, -2147483624
	jl	r1, r3, .LBB212_71
	jmp	.LBB212_72
.LBB212_61:
	mov	r1, r0
add	r1, -2147483648
	mov	r3, -2147483521
	jg	r1, r3, .LBB212_72
	jmp	.LBB212_62
.LBB212_62:
add	r0, 2147483583
	mov	r1, -2147483622
	mov	r2, 1
	jl	r0, r1, .LBB212_64
// %bb.63:
	mov	r2, 0
.LBB212_64:
	jmp	.LBB212_72
.LBB212_65:
	mov	r1, r0
add	r1, -2147483648
	mov	r3, -2147483521
	jg	r1, r3, .LBB212_72
	jmp	.LBB212_66
.LBB212_66:
	mov	r1, r0
add	r1, 2147483600
	mov	r2, -2147483638
	mov	x0, 1
	mov	x1, 1
	jl	r1, r2, .LBB212_68
// %bb.67:
	mov	x1, 0
.LBB212_68:
	mov	r1, 95
	call	__bit_and
add	rax, 2147483583
	mov	r0, -2147483642
	jl	rax, r0, .LBB212_70
// %bb.69:
	mov	x0, 0
.LBB212_70:
	mov	r0, x1
	mov	r1, x0
	call	__bit_or
	mov	r2, rax
	jmp	.LBB212_72
.LBB212_71:                             // %switch.lookup
add	r0, -9
	mov	r1, r0
	mov	r0, 8388639
	call	__bit_shr
	mov	r2, rax
.LBB212_72:                             // %ispunct.exit
	mov	r1, 1
	mov	r0, r2
	call	__bit_and
	mov	x1, [rsp]
	mov	x0, [rsp+4]
add	rsp, 8
	ret
// -- End function
// -- Begin function wctrans
wctrans:                                // @wctrans
// %bb.0:
sub	rsp, 28
	mov	[rsp+24], x0
	mov	[rsp+20], x1
	mov	[rsp+16], x2
	mov	[rsp+12], x3
	mov	[rsp+8], x4
	mov	[rsp+4], x5
	mov	[rsp], x6
	mov	r1, 3
	mov	x0, r0
	call	__bit_and
	mov	x2, rax
	jz	x2, .LBB213_2
	jmp	.LBB213_1
.LBB213_1:
	mov	r0, [x0]
	mov	r1, 255
	call	__bit_and
	mov	x1, rax
	mov	x5, mcasm_static_cbf56cdeb39f9aa8f4bb0cbc13317c14
	mov	x3, x1
	mov	x6, x0
	jmp	.LBB213_7
.LBB213_2:
	mov	x1, [x0]
	mov	r1, 1869377396
	mov	x5, mcasm_static_cbf56cdeb39f9aa8f4bb0cbc13317c14
	mov	x3, x1
	mov	x6, x0
	jne	x1, r1, .LBB213_7
	jmp	.LBB213_3
.LBB213_3:                              // %.preheader5.i.preheader
	mov	x3, -2139062144
	mov	x6, x0
.LBB213_4:                              // %.preheader5.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	mov	rax, 1
	jne	r0, x3, .LBB213_28
	jmp	.LBB213_5
.LBB213_5:                              //   in Loop: Header=BB213_4 Depth=1
add	x6, 4
add	x5, 4
	mov	r1, [x6]
	mov	r0, [x5]
	je	r1, r0, .LBB213_4
	jmp	.LBB213_6
.LBB213_6:
	mov	x3, r1
.LBB213_7:
	mov	r1, 255
	mov	r0, x3
	call	__bit_and
	mov	x4, 0
	jz	rax, .LBB213_12
	jmp	.LBB213_8
.LBB213_8:                              // %.preheader.i.preheader
add	x6, 1
.LBB213_9:                              // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	mov	r0, x3
	jne	rax, x4, .LBB213_11
	jmp	.LBB213_10
.LBB213_10:                             //   in Loop: Header=BB213_9 Depth=1
	mov	r0, [x6]
	mov	r1, 255
add	x5, 1
	call	__bit_and
	mov	x3, rax
add	x6, 1
	mov	r0, 0
	jnz	x3, .LBB213_9
	jmp	.LBB213_11
.LBB213_11:
	mov	r1, 255
	call	__bit_and
	mov	x4, rax
.LBB213_12:                             // %strcmp.exit
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	mov	r0, rax
	mov	rax, 1
	je	x4, r0, .LBB213_28
	jmp	.LBB213_13
.LBB213_13:
	mov	x3, mcasm_static_34a97b910a42293fb8cda873387d2de6
	jnz	x2, .LBB213_19
	jmp	.LBB213_14
.LBB213_14:
	mov	x1, [x0]
	mov	r1, 1886744436
	jne	x1, r1, .LBB213_19
	jmp	.LBB213_15
.LBB213_15:                             // %.preheader5.i2.preheader
	mov	x1, -2139062144
.LBB213_16:                             // %.preheader5.i2
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x1, .LBB213_27
	jmp	.LBB213_17
.LBB213_17:                             //   in Loop: Header=BB213_16 Depth=1
add	x0, 4
add	x3, 4
	mov	r1, [x0]
	mov	r0, [x3]
	je	r1, r0, .LBB213_16
	jmp	.LBB213_18
.LBB213_18:
	mov	x1, r1
.LBB213_19:
	mov	r1, 255
	mov	r0, x1
	call	__bit_and
	mov	x2, 0
	jz	rax, .LBB213_24
	jmp	.LBB213_20
.LBB213_20:                             // %.preheader.i1.preheader
add	x0, 1
.LBB213_21:                             // %.preheader.i1
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [x3]
	mov	r1, 255
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	r0, x1
	jne	rax, x2, .LBB213_23
	jmp	.LBB213_22
.LBB213_22:                             //   in Loop: Header=BB213_21 Depth=1
	mov	r0, [x0]
	mov	r1, 255
add	x3, 1
	call	__bit_and
	mov	x1, rax
add	x0, 1
	mov	r0, 0
	jnz	x1, .LBB213_21
	jmp	.LBB213_23
.LBB213_23:
	mov	r1, 255
	call	__bit_and
	mov	x2, rax
.LBB213_24:                             // %strcmp.exit3
	mov	r0, [x3]
	mov	r1, 255
	call	__bit_and
	mov	r0, 1
	je	x2, rax, .LBB213_26
// %bb.25:                              // %strcmp.exit3
	mov	r0, 0
.LBB213_26:                             // %strcmp.exit3
	mov	r1, 1
	call	__bit_and
	mov	r0, rax
	mov	rax, 0
	jz	r0, .LBB213_28
	jmp	.LBB213_27
.LBB213_27:                             // %strcmp.exit3.thread
	mov	rax, 2
.LBB213_28:                             // %strcmp.exit.thread
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
// -- Begin function towctrans
towctrans:                              // @towctrans
// %bb.0:
	mov	r2, 2
	mov	rax, r0
	je	r1, r2, .LBB214_5
	jmp	.LBB214_1
.LBB214_1:
	mov	r0, 1
	jne	r1, r0, .LBB214_8
	jmp	.LBB214_2
.LBB214_2:
	mov	r0, rax
add	r0, -2147483648
	mov	r1, -2147483521
	jg	r0, r1, .LBB214_8
	jmp	.LBB214_3
.LBB214_3:
	mov	r0, rax
add	r0, 2147483557
	mov	r1, 2147483622
	jl	r0, r1, .LBB214_8
	jmp	.LBB214_4
.LBB214_4:
add	rax, 32
	jmp	.LBB214_8
.LBB214_5:
	mov	r0, rax
add	r0, -2147483648
	mov	r1, -2147483521
	jg	r0, r1, .LBB214_8
	jmp	.LBB214_6
.LBB214_6:
	mov	r0, rax
add	r0, 2147483525
	mov	r1, 2147483622
	jl	r0, r1, .LBB214_8
	jmp	.LBB214_7
.LBB214_7:
add	rax, -32
.LBB214_8:
	ret
// -- End function
static mcasm_static_6da2fa0f2706f9afd3bdbc7a9dd09788 [67, 0]
static mcasm_static_7c0c617ead60ecbef17ac1561a8b3871 [67, 0]
static mcasm_static_9a7642606df7b543c47db680f0a43242 [80, 79, 83, 73, 88, 0]
static mcasm_static_58a3b40d2bfcfe03a5078bc035f75e01 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 127, 127, 127, 127, 127, 127, 127, 127]
static mcasm_static_2acaf25186f93f5f42d6c23e9e8a68e4 [46, 0]
static mcasm_static_07e235928230f0cbeb9ce1cc64439655 [0]
static mcasm_static_b1826cb52f8db3569f288b1402ca6605 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
static mcasm_static_e8ebc19853357b798dee453f5c3219cf [0, 0, 0, 0]
static mcasm_static_6a944e6c8ede535926a6bcf193c44153 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
static mcasm_static_6043f3fb49f3189af47f42e698dc1394 [40, 110, 117, 108, 108, 41, 0]
static mcasm_static_abea4a0b131ac189c8852248f0bcde4e [48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 0]
static mcasm_static_73584816913d3f1377b02c86d0cb3810 [0]
static mcasm_static_e9b9d4fa234f92993c5a3606bcad2ac0 [78, 65, 78, 0]
static mcasm_static_bc72e38ef0e51415a51f8c5519afeed4 [73, 78, 70, 0]
static mcasm_static_3fbd6e67ca14cf5a4c4249a5cf47f5f8 [78, 97, 78, 0]
static mcasm_static_760ecf6681c729f1ad8f31cd17c23263 [110, 97, 110, 0]
static mcasm_static_fba4a0ea904fafa57dfc353d7c31778d [73, 110, 102, 105, 110, 105, 116, 121, 0]
static mcasm_static_4b3346717c4e5d4dfc64dcf9c1c8076d [105, 110, 102, 0]
static mcasm_static_cc5d6cc9e217724ec301015dbbf8939f [45, 73, 110, 102, 105, 110, 105, 116, 121, 0]
static mcasm_static_da38ae9fb5dcf6ec107248c010704ea3 [45, 105, 110, 102, 0]
static mcasm_static_4eb66271a16ac2758f7587f407e70a7d [48, 48, 48, 49, 48, 50, 48, 51, 48, 52, 48, 53, 48, 54, 48, 55, 48, 56, 48, 57, 49, 48, 49, 49, 49, 50, 49, 51, 49, 52, 49, 53, 49, 54, 49, 55, 49, 56, 49, 57, 50, 48, 50, 49, 50, 50, 50, 51, 50, 52, 50, 53, 50, 54, 50, 55, 50, 56, 50, 57, 51, 48, 51, 49, 51, 50, 51, 51, 51, 52, 51, 53, 51, 54, 51, 55, 51, 56, 51, 57, 52, 48, 52, 49, 52, 50, 52, 51, 52, 52, 52, 53, 52, 54, 52, 55, 52, 56, 52, 57, 53, 48, 53, 49, 53, 50, 53, 51, 53, 52, 53, 53, 53, 54, 53, 55, 53, 56, 53, 57, 54, 48, 54, 49, 54, 50, 54, 51, 54, 52, 54, 53, 54, 54, 54, 55, 54, 56, 54, 57, 55, 48, 55, 49, 55, 50, 55, 51, 55, 52, 55, 53, 55, 54, 55, 55, 55, 56, 55, 57, 56, 48, 56, 49, 56, 50, 56, 51, 56, 52, 56, 53, 56, 54, 56, 55, 56, 56, 56, 57, 57, 48, 57, 49, 57, 50, 57, 51, 57, 52, 57, 53, 57, 54, 57, 55, 57, 56, 57, 57, 0]
static mcasm_static_a0798eab031e00674a0fec7ab4aa2dd0 [48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 0]
static mcasm_static_6c0d4b28168d34450f36832cd0ebf870 [48, 48, 48, 49, 48, 50, 48, 51, 48, 52, 48, 53, 48, 54, 48, 55, 48, 56, 48, 57, 49, 48, 49, 49, 49, 50, 49, 51, 49, 52, 49, 53, 49, 54, 49, 55, 49, 56, 49, 57, 50, 48, 50, 49, 50, 50, 50, 51, 50, 52, 50, 53, 50, 54, 50, 55, 50, 56, 50, 57, 51, 48, 51, 49, 51, 50, 51, 51, 51, 52, 51, 53, 51, 54, 51, 55, 51, 56, 51, 57, 52, 48, 52, 49, 52, 50, 52, 51, 52, 52, 52, 53, 52, 54, 52, 55, 52, 56, 52, 57, 53, 48, 53, 49, 53, 50, 53, 51, 53, 52, 53, 53, 53, 54, 53, 55, 53, 56, 53, 57, 54, 48, 54, 49, 54, 50, 54, 51, 54, 52, 54, 53, 54, 54, 54, 55, 54, 56, 54, 57, 55, 48, 55, 49, 55, 50, 55, 51, 55, 52, 55, 53, 55, 54, 55, 55, 55, 56, 55, 57, 56, 48, 56, 49, 56, 50, 56, 51, 56, 52, 56, 53, 56, 54, 56, 55, 56, 56, 56, 57, 57, 48, 57, 49, 57, 50, 57, 51, 57, 52, 57, 53, 57, 54, 57, 55, 57, 56, 57, 57]
static mcasm_static_eaa5da6a646c4823ecdddb4c661ba0aa [0, 0, 0, 0]
static mcasm_static_dc0ade02eb8bb208cf058fd41e6d2a5b [0, 0, 0, 0]
static mcasm_static_c7b95f326180fa323daa354fbb6c3120 [97, 108, 110, 117, 109, 0]
static mcasm_static_a863be26076611e3fbbb5fc196632df6 [97, 108, 112, 104, 97, 0]
static mcasm_static_89268db83ea86d66b40b3b1140892e42 [98, 108, 97, 110, 107, 0]
static mcasm_static_83a606b5393e5824aafbd9b2d6359765 [99, 110, 116, 114, 108, 0]
static mcasm_static_ca5d5f524267e4c5d5bc4a6b88c10493 [100, 105, 103, 105, 116, 0]
static mcasm_static_7194ffb7bcd538a0bc972dd06e03855e [103, 114, 97, 112, 104, 0]
static mcasm_static_29364bc9793049772e34ba2addadc4b9 [108, 111, 119, 101, 114, 0]
static mcasm_static_1f901193d724ccbf92dd157d664b937c [112, 114, 105, 110, 116, 0]
static mcasm_static_164e0f25166781d3132eb0e71a1ff6b2 [112, 117, 110, 99, 116, 0]
static mcasm_static_b80a84f005fc4d67c3f797155cfd473f [115, 112, 97, 99, 101, 0]
static mcasm_static_a246b644b114a84ebeed45804dabaa35 [117, 112, 112, 101, 114, 0]
static mcasm_static_f7738ed1476e9ee50d2f0e58f82d5f59 [120, 100, 105, 103, 105, 116, 0]
static mcasm_static_cbf56cdeb39f9aa8f4bb0cbc13317c14 [116, 111, 108, 111, 119, 101, 114, 0]
static mcasm_static_34a97b910a42293fb8cda873387d2de6 [116, 111, 117, 112, 112, 101, 114, 0]
static mcasm_static_46a6490e36bbbc1765bc1d1328388d87 [0, 0, 0, 0, 0, 0, 0, 0]

export _ll_shared:z/__mc_string_begin_0:
    inline data modify storage std:vm s1 set value {str: "", next: ""}
    inline $data modify storage std:vm s1.str set from storage std:vm char2str_map."$(a)"
	ret

export _ll_shared:z/__mc_string_begin_1:
    inline $data modify storage std:vm s1.next set from storage std:vm char2str_map."$(a)"
    inline function std:_internal/merge_string with storage std:vm s1
	ret
