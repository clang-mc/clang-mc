#once

#include "_ll_std"

// -- Begin function printf
printf:                                 // @printf
// %bb.0:
	mov	r1, rsp
	add	r1, 1
	mov	[rsp], r1
	call	vprintf
	ret
// -- End function
// -- Begin function putchar
putchar:                                // @putchar
// %bb.0:
	mov	r1, 255
	mov	r3, r0
	call	__bit_and
	mov	r0, mcasm_static_3da3d5d57e159b8de744dd0ffa9d06c5
	mov	r0, [r0]
	mov	r1, 10
	mov	r2, rax
	jne	r2, r1, .LBB1_5
	jmp	.LBB1_1
.LBB1_1:
	mov	r3, mcasm_static_120360ef34487e8c71315170e55a9280
	add	r0, r3
	mov	[r0], 0
	mov	r0, [r3]
	inline data modify storage std:vm s0 set value {a: -1}
	inline execute store result storage std:vm s0.a int 1 run scoreboard players get r0 vm_regs
	inline function _ll_shared:z/putchar_0 with storage std:vm s0
	mov	r0, mcasm_static_120360ef34487e8c71315170e55a9280
	add	r0, 1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB1_4
	jmp	.LBB1_2
.LBB1_2:                                // %.preheader.i.i.preheader
	add	r3, 8
.LBB1_3:                                // %.preheader.i.i
                                        // =>This Inner Loop Header: Depth=1
	inline data modify storage std:vm s0 set value {a: -1}
	inline execute store result storage std:vm s0.a int 1 run scoreboard players get r0 vm_regs
	inline function _ll_shared:z/putchar_1 with storage std:vm s0
	mov	r0, [r3]
	call	__bit_and
	add	r3, 4
	jnz	rax, .LBB1_3
	jmp	.LBB1_4
.LBB1_4:                                // %puts.exit.i
	inline tellraw @a {"storage": "std:vm", "nbt": "s1.str"}
	mov	r0, mcasm_static_3da3d5d57e159b8de744dd0ffa9d06c5
	mov	[r0], 0
	jmp	.LBB1_11
.LBB1_5:
	mov	r1, -2147483648
	call	__bit_xor
	mov	r1, -2147482625
	jl	rax, r1, .LBB1_10
	jmp	.LBB1_6
.LBB1_6:
	mov	r4, mcasm_static_120360ef34487e8c71315170e55a9280
	add	r0, r4
	mov	[r0], 0
	mov	r0, [r4]
	inline data modify storage std:vm s0 set value {a: -1}
	inline execute store result storage std:vm s0.a int 1 run scoreboard players get r0 vm_regs
	inline function _ll_shared:z/putchar_0 with storage std:vm s0
	mov	r0, mcasm_static_120360ef34487e8c71315170e55a9280
	add	r0, 1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB1_9
	jmp	.LBB1_7
.LBB1_7:                                // %.preheader.i2.i.preheader
	add	r4, 8
.LBB1_8:                                // %.preheader.i2.i
                                        // =>This Inner Loop Header: Depth=1
	inline data modify storage std:vm s0 set value {a: -1}
	inline execute store result storage std:vm s0.a int 1 run scoreboard players get r0 vm_regs
	inline function _ll_shared:z/putchar_1 with storage std:vm s0
	mov	r0, [r4]
	call	__bit_and
	add	r4, 4
	jnz	rax, .LBB1_8
	jmp	.LBB1_9
.LBB1_9:                                // %puts.exit3.i
	inline tellraw @a {"storage": "std:vm", "nbt": "s1.str"}
	mov	r0, 0
.LBB1_10:
	mov	r1, r0
	add	r1, 1
	mov	r4, mcasm_static_3da3d5d57e159b8de744dd0ffa9d06c5
	mov	[r4], r1
	mov	r4, mcasm_static_120360ef34487e8c71315170e55a9280
	mov	r1, 255
	add	r4, r0
	mov	r0, r3
	call	__bit_and
	mov	[r4], rax
.LBB1_11:                               // %__stdout_linebuf_putc.exit
	mov	rax, r2
	ret
// -- End function
// -- Begin function puts
puts:                                   // @puts
// %bb.0:
	mov	r2, r0
	jnz	r2, .LBB2_2
	jmp	.LBB2_1
.LBB2_1:
	call	abort
.LBB2_2:
	mov	r0, [r2]
	inline data modify storage std:vm s0 set value {a: -1}
	inline execute store result storage std:vm s0.a int 1 run scoreboard players get r0 vm_regs
	inline function _ll_shared:z/putchar_0 with storage std:vm s0
	mov	r0, r2
	add	r0, 1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB2_5
	jmp	.LBB2_3
.LBB2_3:                                // %.preheader.preheader
	add	r2, 8
.LBB2_4:                                // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	inline data modify storage std:vm s0 set value {a: -1}
	inline execute store result storage std:vm s0.a int 1 run scoreboard players get r0 vm_regs
	inline function _ll_shared:z/putchar_1 with storage std:vm s0
	mov	r0, [r2]
	call	__bit_and
	add	r2, 4
	jnz	rax, .LBB2_4
	jmp	.LBB2_5
.LBB2_5:                                // %.loopexit
	mov	rax, 1
	inline tellraw @a {"storage": "std:vm", "nbt": "s1.str"}
	ret
// -- End function
// -- Begin function snprintf
snprintf:                               // @snprintf
// %bb.0:
	mov	r3, rsp
	add	r3, 3
	mov	[rsp], r3
	call	vsnprintf
	ret
// -- End function
// -- Begin function sprintf
sprintf:                                // @sprintf
// %bb.0:
	mov	r2, r1
	mov	r3, rsp
	add	r3, 2
	mov	r1, -1
	mov	[rsp], r3
	call	vsnprintf
	ret
// -- End function
// -- Begin function __stdout_linebuf_flush
__stdout_linebuf_flush:                 // @__stdout_linebuf_flush
// %bb.0:
	mov	r0, mcasm_static_3da3d5d57e159b8de744dd0ffa9d06c5
	mov	r0, [r0]
	jz	r0, .LBB5_5
	jmp	.LBB5_1
.LBB5_1:
	mov	r2, mcasm_static_120360ef34487e8c71315170e55a9280
	add	r0, r2
	mov	[r0], 0
	mov	r0, [r2]
	inline data modify storage std:vm s0 set value {a: -1}
	inline execute store result storage std:vm s0.a int 1 run scoreboard players get r0 vm_regs
	inline function _ll_shared:z/putchar_0 with storage std:vm s0
	mov	r0, mcasm_static_120360ef34487e8c71315170e55a9280
	add	r0, 1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB5_4
	jmp	.LBB5_2
.LBB5_2:                                // %.preheader.i.preheader
	add	r2, 8
.LBB5_3:                                // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	inline data modify storage std:vm s0 set value {a: -1}
	inline execute store result storage std:vm s0.a int 1 run scoreboard players get r0 vm_regs
	inline function _ll_shared:z/putchar_1 with storage std:vm s0
	mov	r0, [r2]
	call	__bit_and
	add	r2, 4
	jnz	rax, .LBB5_3
	jmp	.LBB5_4
.LBB5_4:                                // %puts.exit
	inline tellraw @a {"storage": "std:vm", "nbt": "s1.str"}
	mov	r0, mcasm_static_3da3d5d57e159b8de744dd0ffa9d06c5
	mov	[r0], 0
.LBB5_5:
	mov	rax, 0
	ret
// -- End function
// -- Begin function __stdout_linebuf_putc
__stdout_linebuf_putc:                  // @__stdout_linebuf_putc
// %bb.0:
	mov	r1, 255
	mov	r3, r0
	call	__bit_and
	mov	r0, mcasm_static_3da3d5d57e159b8de744dd0ffa9d06c5
	mov	r0, [r0]
	mov	r1, 10
	mov	r2, rax
	jne	r2, r1, .LBB6_5
	jmp	.LBB6_1
.LBB6_1:
	mov	r3, mcasm_static_120360ef34487e8c71315170e55a9280
	add	r0, r3
	mov	[r0], 0
	mov	r0, [r3]
	inline data modify storage std:vm s0 set value {a: -1}
	inline execute store result storage std:vm s0.a int 1 run scoreboard players get r0 vm_regs
	inline function _ll_shared:z/putchar_0 with storage std:vm s0
	mov	r0, mcasm_static_120360ef34487e8c71315170e55a9280
	add	r0, 1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB6_4
	jmp	.LBB6_2
.LBB6_2:                                // %.preheader.i.preheader
	add	r3, 8
.LBB6_3:                                // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	inline data modify storage std:vm s0 set value {a: -1}
	inline execute store result storage std:vm s0.a int 1 run scoreboard players get r0 vm_regs
	inline function _ll_shared:z/putchar_1 with storage std:vm s0
	mov	r0, [r3]
	call	__bit_and
	add	r3, 4
	jnz	rax, .LBB6_3
	jmp	.LBB6_4
.LBB6_4:                                // %puts.exit
	inline tellraw @a {"storage": "std:vm", "nbt": "s1.str"}
	mov	r0, mcasm_static_3da3d5d57e159b8de744dd0ffa9d06c5
	mov	[r0], 0
	jmp	.LBB6_11
.LBB6_5:
	mov	r1, -2147483648
	call	__bit_xor
	mov	r1, -2147482625
	jl	rax, r1, .LBB6_10
	jmp	.LBB6_6
.LBB6_6:
	mov	r4, mcasm_static_120360ef34487e8c71315170e55a9280
	add	r0, r4
	mov	[r0], 0
	mov	r0, [r4]
	inline data modify storage std:vm s0 set value {a: -1}
	inline execute store result storage std:vm s0.a int 1 run scoreboard players get r0 vm_regs
	inline function _ll_shared:z/putchar_0 with storage std:vm s0
	mov	r0, mcasm_static_120360ef34487e8c71315170e55a9280
	add	r0, 1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB6_9
	jmp	.LBB6_7
.LBB6_7:                                // %.preheader.i2.preheader
	add	r4, 8
.LBB6_8:                                // %.preheader.i2
                                        // =>This Inner Loop Header: Depth=1
	inline data modify storage std:vm s0 set value {a: -1}
	inline execute store result storage std:vm s0.a int 1 run scoreboard players get r0 vm_regs
	inline function _ll_shared:z/putchar_1 with storage std:vm s0
	mov	r0, [r4]
	call	__bit_and
	add	r4, 4
	jnz	rax, .LBB6_8
	jmp	.LBB6_9
.LBB6_9:                                // %puts.exit3
	inline tellraw @a {"storage": "std:vm", "nbt": "s1.str"}
	mov	r0, 0
.LBB6_10:
	mov	r1, r0
	add	r1, 1
	mov	r4, mcasm_static_3da3d5d57e159b8de744dd0ffa9d06c5
	mov	[r4], r1
	mov	r4, mcasm_static_120360ef34487e8c71315170e55a9280
	mov	r1, 255
	add	r4, r0
	mov	r0, r3
	call	__bit_and
	mov	[r4], rax
.LBB6_11:
	mov	rax, r2
	ret
// -- End function
// -- Begin function __stdout_linebuf_write
__stdout_linebuf_write:                 // @__stdout_linebuf_write
// %bb.0:
	mov	[rsp-1], x0
	mov	[rsp-2], x1
	mov	[rsp-3], x2
	mov	[rsp-4], x3
	mov	[rsp-5], x4
	mov	[rsp-6], x5
	mov	[rsp-7], x6
	mov	[rsp-8], x7
	mov	[rsp-9], x8
	mov	[rsp-10], x9
	mov	[rsp-11], x10
	mov	[rsp-12], x11
	mov	[rsp-13], x12
	mov	r2, r1
	mov	r3, r0
	jz	r2, .LBB7_45
	jmp	.LBB7_1
.LBB7_1:                                // %.preheader12.preheader
	mov	t5, 3
	mov	t6, -2147483644
	mov	t7, 10
	mov	x0, -2139062144
	mov	x1, -2147483645
	mov	x2, mcasm_static_3da3d5d57e159b8de744dd0ffa9d06c5
	mov	x3, mcasm_static_120360ef34487e8c71315170e55a9280
	mov	x4, mcasm_static_120360ef34487e8c71315170e55a9280
	add	x4, 1
	mov	x5, mcasm_static_120360ef34487e8c71315170e55a9280
	add	x5, 8
	mov	x6, -2147483632
	mov	x7, -2147482625
	mov	x8, -2147483633
.LBB7_2:                                // %.preheader12
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB7_4 Depth 2
                                        //     Child Loop BB7_8 Depth 2
                                        //     Child Loop BB7_12 Depth 2
                                        //     Child Loop BB7_18 Depth 2
                                        //       Child Loop BB7_27 Depth 3
                                        //       Child Loop BB7_24 Depth 3
                                        //       Child Loop BB7_25 Depth 3
                                        //       Child Loop BB7_31 Depth 3
                                        //       Child Loop BB7_36 Depth 3
                                        //     Child Loop BB7_42 Depth 2
	mov	r1, 3
	mov	r0, r3
	call	__bit_and
	jz	rax, .LBB7_6
	jmp	.LBB7_3
.LBB7_3:                                // %.preheader.i.preheader
                                        //   in Loop: Header=BB7_2 Depth=1
	mov	r4, r2
	mov	r5, r3
.LBB7_4:                                // %.preheader.i
                                        //   Parent Loop BB7_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, [r5]
	mov	r1, 255
	call	__bit_and
	mov	x9, r5
	je	rax, t7, .LBB7_14
	jmp	.LBB7_5
.LBB7_5:                                //   in Loop: Header=BB7_4 Depth=2
	add	r4, -1
	add	r5, 1
	mov	x9, 0
	jz	r4, .LBB7_14
	jmp	.LBB7_4
.LBB7_6:                                //   in Loop: Header=BB7_2 Depth=1
	mov	r1, -2147483648
	mov	r0, r2
	call	__bit_xor
	mov	r4, r2
	mov	r6, r3
	jl	rax, t6, .LBB7_11
	jmp	.LBB7_7
.LBB7_7:                                // %.preheader9.preheader
                                        //   in Loop: Header=BB7_2 Depth=1
	mov	r6, r3
	mov	r4, r2
.LBB7_8:                                // %.preheader9
                                        //   Parent Loop BB7_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r5, [r6]
	mov	r1, 168430090
	mov	r0, r5
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, r5
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x0, .LBB7_11
	jmp	.LBB7_9
.LBB7_9:                                //   in Loop: Header=BB7_8 Depth=2
	add	r4, -4
	mov	r1, -2147483648
	add	r6, 4
	mov	r0, r4
	call	__bit_xor
	jg	rax, x1, .LBB7_8
	jmp	.LBB7_10
.LBB7_10:                               // %.loopexit7.i
                                        //   in Loop: Header=BB7_2 Depth=1
	mov	x9, 0
	jz	r4, .LBB7_14
	jmp	.LBB7_11
.LBB7_11:                               // %.loopexit6.i.preheader
                                        //   in Loop: Header=BB7_2 Depth=1
.LBB7_12:                               // %.loopexit6.i
                                        //   Parent Loop BB7_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, [r6]
	mov	r1, 255
	call	__bit_and
	mov	x9, r6
	je	rax, t7, .LBB7_14
	jmp	.LBB7_13
.LBB7_13:                               //   in Loop: Header=BB7_12 Depth=2
	add	r4, -1
	add	r6, 1
	mov	x9, 0
	jnz	r4, .LBB7_12
	jmp	.LBB7_14
.LBB7_14:                               // %memchr.exit
                                        //   in Loop: Header=BB7_2 Depth=1
	mov	x10, r2
	jz	x9, .LBB7_16
	jmp	.LBB7_15
.LBB7_15:                               //   in Loop: Header=BB7_2 Depth=1
	mov	x10, x9
	sub	x10, r3
.LBB7_16:                               //   in Loop: Header=BB7_2 Depth=1
	jz	x10, .LBB7_39
	jmp	.LBB7_17
.LBB7_17:                               //   in Loop: Header=BB7_2 Depth=1
	mov	r5, [x2]
.LBB7_18:                               //   Parent Loop BB7_2 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB7_27 Depth 3
                                        //       Child Loop BB7_24 Depth 3
                                        //       Child Loop BB7_25 Depth 3
                                        //       Child Loop BB7_31 Depth 3
                                        //       Child Loop BB7_36 Depth 3
	mov	r6, 1023
	sub	r6, r5
	mov	r4, x10
	sub	r4, r6
	mov	r1, 31
	mov	r0, r4
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r0, rax
	mov	r1, r4
	call	__bit_and
	mov	r4, rax
	add	r4, r6
	mov	x11, mcasm_static_120360ef34487e8c71315170e55a9280
	mov	r1, -2147483648
	add	x11, r5
	mov	r0, r4
	call	__bit_xor
	mov	r7, r3
	mov	r6, r4
	jl	rax, x6, .LBB7_29
	jmp	.LBB7_19
.LBB7_19:                               // %.preheader.preheader
                                        //   in Loop: Header=BB7_18 Depth=2
	mov	r0, [r3]
	mov	r6, r3
	mov	r1, 255
	add	r6, 1
	call	__bit_and
	mov	[x11], rax
	mov	r0, [r6]
	mov	r6, x11
	add	r6, 1
	mov	r7, r3
	add	r7, 2
	call	__bit_and
	mov	[r6], rax
	mov	r0, [r7]
	mov	r6, x11
	add	r6, 2
	mov	r7, r3
	add	r7, 3
	call	__bit_and
	mov	[r6], rax
	mov	r0, [r7]
	mov	r6, x11
	add	r6, 3
	mov	r7, r3
	add	r7, 4
	call	__bit_and
	mov	[r6], rax
	mov	r0, [r7]
	mov	r6, x11
	add	r6, 4
	mov	r7, r3
	add	r7, 5
	call	__bit_and
	mov	[r6], rax
	mov	r0, [r7]
	mov	r6, x11
	add	r6, 5
	mov	r7, r3
	add	r7, 6
	call	__bit_and
	mov	[r6], rax
	mov	r0, [r7]
	mov	r6, x11
	add	r6, 6
	mov	r7, r3
	add	r7, 7
	call	__bit_and
	mov	[r6], rax
	mov	r0, [r7]
	mov	r6, x11
	add	r6, 7
	mov	r7, r3
	add	r7, 8
	call	__bit_and
	add	x11, 8
	mov	[r6], rax
	mov	r6, r4
	mov	r1, 3
	add	r6, -8
	mov	r0, r7
	call	__bit_and
	mov	r0, rax
	jnz	r0, .LBB7_26
	jmp	.LBB7_20
.LBB7_20:                               //   in Loop: Header=BB7_18 Depth=2
	mov	r1, -2147483648
	mov	r0, r6
	call	__bit_xor
	jl	rax, x6, .LBB7_22
	jmp	.LBB7_21
.LBB7_21:                               // %.preheader.i5.preheader
                                        //   in Loop: Header=BB7_18 Depth=2
	mov	t1, x11
	mov	t2, r7
	jmp	.LBB7_24
.LBB7_22:                               // %.preheader111
                                        //   in Loop: Header=BB7_18 Depth=2
	jmp	.LBB7_25
.LBB7_23:                               //   in Loop: Header=BB7_18 Depth=2
	jg	r6, t5, .LBB7_22
	jmp	.LBB7_29
.LBB7_24:                               // %.preheader.i5
                                        //   Parent Loop BB7_2 Depth=1
                                        //     Parent Loop BB7_18 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	mov	r0, [t2]
	mov	[t1], r0
	mov	r7, t2
	add	r7, 16
	mov	r0, [r7]
	mov	x11, t1
	add	x11, 16
	mov	[x11], r0
	mov	r0, t2
	add	r0, 32
	mov	r0, [r0]
	mov	r1, t1
	add	r1, 32
	mov	[r1], r0
	mov	r0, t2
	add	r0, 48
	mov	r0, [r0]
	mov	r1, t1
	add	r1, 48
	mov	[r1], r0
	add	r6, -16
	add	t2, 64
	mov	r1, -2147483648
	add	t1, 64
	mov	r0, r6
	call	__bit_xor
	jg	rax, x8, .LBB7_24
	jmp	.LBB7_23
.LBB7_25:                               //   Parent Loop BB7_2 Depth=1
                                        //     Parent Loop BB7_18 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	mov	r0, [r7]
	add	r7, 4
	mov	[x11], r0
	add	r6, -4
	mov	r1, -2147483648
	add	x11, 4
	mov	r0, r6
	call	__bit_xor
	jg	rax, x1, .LBB7_25
	jmp	.LBB7_29
.LBB7_26:                               //   in Loop: Header=BB7_18 Depth=2
	call	__bit_shl
	mov	r5, rax
	mov	r1, r7
	sub	r1, r0
	mov	t2, [r1]
	mov	t1, 8
	mov	r1, 4
	sub	t1, r0
	call	__bit_shl
	mov	x12, 192
	sub	x12, rax
	div	x12, 4
	add	x12, r3
.LBB7_27:                               //   Parent Loop BB7_2 Depth=1
                                        //     Parent Loop BB7_18 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	mov	t3, [x12]
	mov	r1, 31
	mov	r0, r5
	call	__bit_and
	mov	r0, t2
	mov	r1, rax
	call	__bit_shl
	mov	r1, 1
	mov	t2, rax
	mov	r0, t3
	call	__bit_shr
	mov	t4, rax
	mov	r0, r5
	call	__bit_not
	mov	r1, 31
	mov	r0, rax
	call	__bit_and
	mov	r0, t4
	mov	r1, rax
	call	__bit_shr
	mov	r0, t2
	mov	r1, rax
	call	__bit_or
	mov	[x11], rax
	add	x11, 4
	add	r6, -4
	mov	r1, -2147483648
	add	x12, 16
	mov	r0, t1
	call	__bit_xor
	mov	t4, rax
	mov	r0, r6
	call	__bit_xor
	mov	t2, t3
	jge	rax, t4, .LBB7_27
	jmp	.LBB7_28
.LBB7_28:                               //   in Loop: Header=BB7_18 Depth=2
	mov	r1, -4
	mov	r0, r7
	call	__bit_or
	mov	r1, 2
	mov	r0, rax
	call	__bit_shl
	add	x12, rax
	mov	r7, x12
	jmp	.LBB7_30
.LBB7_29:                               // %.loopexit8.i
                                        //   in Loop: Header=BB7_18 Depth=2
	jz	r6, .LBB7_33
	jmp	.LBB7_30
.LBB7_30:                               // %.preheader
                                        //   in Loop: Header=BB7_18 Depth=2
.LBB7_31:                               //   Parent Loop BB7_2 Depth=1
                                        //     Parent Loop BB7_18 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	mov	r0, [r7]
	add	r6, -1
	mov	r1, 255
	add	r7, 1
	call	__bit_and
	mov	[x11], rax
	add	x11, 1
	jnz	r6, .LBB7_31
	jmp	.LBB7_32
.LBB7_32:                               // %memcpy.exit.loopexit
                                        //   in Loop: Header=BB7_18 Depth=2
	mov	r5, [x2]
.LBB7_33:                               // %memcpy.exit
                                        //   in Loop: Header=BB7_18 Depth=2
	add	r5, r4
	mov	r1, -2147483648
	mov	[x2], r5
	mov	r0, r5
	call	__bit_xor
	jl	rax, x7, .LBB7_38
	jmp	.LBB7_34
.LBB7_34:                               //   in Loop: Header=BB7_18 Depth=2
	add	r5, x3
	mov	[r5], 0
	mov	r0, [x3]
	inline data modify storage std:vm s0 set value {a: -1}
	inline execute store result storage std:vm s0.a int 1 run scoreboard players get r0 vm_regs
	inline function _ll_shared:z/putchar_0 with storage std:vm s0
	mov	r0, [x4]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB7_37
	jmp	.LBB7_35
.LBB7_35:                               // %.preheader.i6.preheader
                                        //   in Loop: Header=BB7_18 Depth=2
	mov	r5, mcasm_static_120360ef34487e8c71315170e55a9280
	add	r5, 8
.LBB7_36:                               // %.preheader.i6
                                        //   Parent Loop BB7_2 Depth=1
                                        //     Parent Loop BB7_18 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	inline data modify storage std:vm s0 set value {a: -1}
	inline execute store result storage std:vm s0.a int 1 run scoreboard players get r0 vm_regs
	inline function _ll_shared:z/putchar_1 with storage std:vm s0
	mov	r0, [r5]
	mov	r1, 255
	call	__bit_and
	add	r5, 4
	jnz	rax, .LBB7_36
	jmp	.LBB7_37
.LBB7_37:                               // %puts.exit
                                        //   in Loop: Header=BB7_18 Depth=2
	inline tellraw @a {"storage": "std:vm", "nbt": "s1.str"}
	mov	[x2], 0
	mov	r5, 0
.LBB7_38:                               //   in Loop: Header=BB7_18 Depth=2
	add	r3, r4
	sub	x10, r4
	sub	r2, r4
	jnz	x10, .LBB7_18
	jmp	.LBB7_39
.LBB7_39:                               // %.loopexit
                                        //   in Loop: Header=BB7_2 Depth=1
	jz	x9, .LBB7_44
	jmp	.LBB7_40
.LBB7_40:                               //   in Loop: Header=BB7_2 Depth=1
	mov	r0, mcasm_static_120360ef34487e8c71315170e55a9280
	add	r0, [x2]
	mov	[r0], 0
	mov	r0, [x3]
	inline data modify storage std:vm s0 set value {a: -1}
	inline execute store result storage std:vm s0.a int 1 run scoreboard players get r0 vm_regs
	inline function _ll_shared:z/putchar_0 with storage std:vm s0
	mov	r0, [x4]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB7_43
	jmp	.LBB7_41
.LBB7_41:                               // %.preheader.i7.preheader
                                        //   in Loop: Header=BB7_2 Depth=1
	mov	r4, x5
.LBB7_42:                               // %.preheader.i7
                                        //   Parent Loop BB7_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	inline data modify storage std:vm s0 set value {a: -1}
	inline execute store result storage std:vm s0.a int 1 run scoreboard players get r0 vm_regs
	inline function _ll_shared:z/putchar_1 with storage std:vm s0
	mov	r0, [r4]
	mov	r1, 255
	call	__bit_and
	add	r4, 4
	jnz	rax, .LBB7_42
	jmp	.LBB7_43
.LBB7_43:                               // %puts.exit8
                                        //   in Loop: Header=BB7_2 Depth=1
	add	r3, 1
	add	r2, -1
	inline tellraw @a {"storage": "std:vm", "nbt": "s1.str"}
	mov	[x2], 0
.LBB7_44:                               //   in Loop: Header=BB7_2 Depth=1
	jnz	r2, .LBB7_2
	jmp	.LBB7_45
.LBB7_45:                               // %.loopexit13
	mov	rax, 0
	mov	x12, [rsp-13]
	mov	x11, [rsp-12]
	mov	x10, [rsp-11]
	mov	x9, [rsp-10]
	mov	x8, [rsp-9]
	mov	x7, [rsp-8]
	mov	x6, [rsp-7]
	mov	x5, [rsp-6]
	mov	x4, [rsp-5]
	mov	x3, [rsp-4]
	mov	x2, [rsp-3]
	mov	x1, [rsp-2]
	mov	x0, [rsp-1]
	ret
// -- End function
// -- Begin function vprintf
vprintf:                                // @vprintf
// %bb.0:
	mov	r3, r1
	mov	r2, r0
	mov	[rsp], r3
	mov	r1, 512
	mov	[rsp], r3
	mov	r0, rsp
	call	vsnprintf
	mov	r1, rax
	mov	r0, 0
	mov	r5, -1
	jl	r1, r0, .LBB8_41
	jmp	.LBB8_1
.LBB8_1:
	mov	r0, 511
	jg	r1, r0, .LBB8_3
	jmp	.LBB8_2
.LBB8_2:                                // %.thread
	mov	r0, rsp
	call	__stdout_linebuf_write
	mov	r5, r1
	jmp	.LBB8_41
.LBB8_3:
	add	r1, 1
	mov	r0, r1
	call	malloc
	mov	r4, rax
	jnz	r4, .LBB8_5
	jmp	.LBB8_4
.LBB8_4:
	mov	r0, mcasm_static_5c63489e54ec887af4b4f111740ffb34
	mov	[r0], 12
	jmp	.LBB8_41
.LBB8_5:
	mov	r3, [rsp]
	mov	[rsp], r3
	mov	r0, r4
	call	vsnprintf
	mov	r0, -1
	mov	r5, rax
	jg	r5, r0, .LBB8_23
	jmp	.LBB8_6
.LBB8_6:
	mov	r0, 16384
	mov	r1, [r0]
	mov	r2, 1296125004
	je	r1, r2, .LBB8_8
	jmp	.LBB8_7
.LBB8_7:
	mov	[r0], 1296125004
	mov	r0, 16385
	mov	[r0], 16387
	mov	r0, 16386
	mov	[r0], 0
	mov	r2, r4
	add	r2, -1
	mov	r5, [r2]
	mov	r6, 0
	mov	r3, 0
	mov	rax, 0
	jmp	.LBB8_13
.LBB8_8:
	mov	r0, 16386
	mov	r3, [r0]
	mov	r2, r4
	add	r2, -1
	mov	r5, [r2]
	mov	r0, r3
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r6, 0
	jz	r3, .LBB8_13
	jmp	.LBB8_9
.LBB8_9:
	jge	r3, r2, .LBB8_13
	jmp	.LBB8_10
.LBB8_10:                               // %.preheader.i.preheader
.LBB8_11:                               // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r6, r3
	mov	r0, r6
	add	r0, 1
	mov	r3, [r0]
	mov	r0, r3
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	jz	r3, .LBB8_13
	jmp	.LBB8_12
.LBB8_12:                               // %.preheader.i
                                        //   in Loop: Header=BB8_11 Depth=1
	jl	r3, r2, .LBB8_11
	jmp	.LBB8_13
.LBB8_13:                               // %.loopexit.i
	jne	r3, r2, .LBB8_15
	jmp	.LBB8_14
.LBB8_14:
	call	abort
.LBB8_15:
	mov	r0, 16386
	jz	r6, .LBB8_19
	jmp	.LBB8_16
.LBB8_16:
	mov	r0, [r6]
	mov	r1, r0
	add	r1, r6
	jne	r1, r2, .LBB8_18
	jmp	.LBB8_17
.LBB8_17:
	add	r0, r5
	mov	[r6], r0
	mov	r2, r6
	jmp	.LBB8_20
.LBB8_18:
	add	r6, 1
	mov	r0, r6
.LBB8_19:
	mov	[r0], r2
	mov	[r4], r3
.LBB8_20:
	mov	r1, 1
	mov	r5, -1
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB8_41
	jmp	.LBB8_21
.LBB8_21:
	mov	r0, [r2]
	mov	r1, r0
	add	r1, r2
	jne	r1, r3, .LBB8_41
	jmp	.LBB8_22
.LBB8_22:
	add	r0, [r3]
	mov	[r2], r0
	add	r3, 1
	mov	r0, [r3]
	add	r2, 1
	mov	[r2], r0
	jmp	.LBB8_41
.LBB8_23:
	mov	r0, r4
	mov	r1, r5
	call	__stdout_linebuf_write
	je	r4, rsp, .LBB8_41
	jmp	.LBB8_24
.LBB8_24:
	mov	r0, 16384
	mov	r1, [r0]
	mov	r2, 1296125004
	je	r1, r2, .LBB8_26
	jmp	.LBB8_25
.LBB8_25:
	mov	[r0], 1296125004
	mov	r0, 16385
	mov	[r0], 16387
	mov	r0, 16386
	mov	[r0], 0
	mov	r2, r4
	add	r2, -1
	mov	r6, [r2]
	mov	r7, 0
	mov	r3, 0
	mov	rax, 0
	jmp	.LBB8_31
.LBB8_26:
	mov	r0, 16386
	mov	r3, [r0]
	mov	r2, r4
	add	r2, -1
	mov	r6, [r2]
	mov	r0, r3
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r7, 0
	jz	r3, .LBB8_31
	jmp	.LBB8_27
.LBB8_27:
	jge	r3, r2, .LBB8_31
	jmp	.LBB8_28
.LBB8_28:                               // %.preheader.i5.preheader
.LBB8_29:                               // %.preheader.i5
                                        // =>This Inner Loop Header: Depth=1
	mov	r7, r3
	mov	r0, r7
	add	r0, 1
	mov	r3, [r0]
	mov	r0, r3
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	jz	r3, .LBB8_31
	jmp	.LBB8_30
.LBB8_30:                               // %.preheader.i5
                                        //   in Loop: Header=BB8_29 Depth=1
	jl	r3, r2, .LBB8_29
	jmp	.LBB8_31
.LBB8_31:                               // %.loopexit.i4
	jne	r3, r2, .LBB8_33
	jmp	.LBB8_32
.LBB8_32:
	call	abort
.LBB8_33:
	mov	r0, 16386
	jz	r7, .LBB8_37
	jmp	.LBB8_34
.LBB8_34:
	mov	r0, [r7]
	mov	r1, r0
	add	r1, r7
	jne	r1, r2, .LBB8_36
	jmp	.LBB8_35
.LBB8_35:
	add	r0, r6
	mov	[r7], r0
	mov	r2, r7
	jmp	.LBB8_38
.LBB8_36:
	add	r7, 1
	mov	r0, r7
.LBB8_37:
	mov	[r0], r2
	mov	[r4], r3
.LBB8_38:
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB8_41
	jmp	.LBB8_39
.LBB8_39:
	mov	r0, [r2]
	mov	r1, r0
	add	r1, r2
	jne	r1, r3, .LBB8_41
	jmp	.LBB8_40
.LBB8_40:
	add	r0, [r3]
	mov	[r2], r0
	add	r3, 1
	mov	r0, [r3]
	add	r2, 1
	mov	[r2], r0
.LBB8_41:                               // %free.exit
	mov	rax, r5
	ret
// -- End function
// -- Begin function vsnprintf
vsnprintf:                              // @vsnprintf
// %bb.0:
	mov	[rsp-1], x0
	mov	[rsp-2], x1
	mov	[rsp-3], x2
	mov	[rsp-4], x3
	mov	[rsp-5], x4
	mov	[rsp-6], x5
	mov	[rsp-7], x6
	mov	[rsp-8], x7
	mov	[rsp-9], x8
	mov	[rsp-10], x9
	mov	[rsp-11], x10
	mov	[rsp-12], x11
	mov	[rsp-13], x12
	mov	[rsp-14], x13
	mov	[rsp-15], x14
	mov	[rsp-16], x15
	mov	x11, r2
	mov	r2, rsp
	mov	r4, rsp
	mov	[rsp], r3
	mov	[rsp], r0
	add	r2, 4
	mov	[r2], r1
	add	r4, 8
	mov	[r4], 0
	mov	t3, 37
	mov	t4, 42
	mov	t5, 32
	mov	t6, 35
	mov	t7, -1
	mov	x0, 0
	mov	x1, 46
	mov	x2, 1
	mov	x4, -2147483638
	mov	x6, 2
	mov	x8, 109
	mov	x10, 3
	mov	x15, -2139062144
	mov	x5, 43
	mov	x7, 41
	mov	x12, 45
.LBB9_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB9_44 Depth 2
                                        //       Child Loop BB9_40 Depth 3
                                        //         Child Loop BB9_36 Depth 4
                                        //           Child Loop BB9_16 Depth 5
                                        //             Child Loop BB9_24 Depth 6
                                        //             Child Loop BB9_8 Depth 6
                                        //     Child Loop BB9_58 Depth 2
                                        //     Child Loop BB9_64 Depth 2
                                        //     Child Loop BB9_183 Depth 2
                                        //     Child Loop BB9_184 Depth 2
                                        //     Child Loop BB9_186 Depth 2
                                        //     Child Loop BB9_197 Depth 2
                                        //     Child Loop BB9_208 Depth 2
                                        //     Child Loop BB9_219 Depth 2
                                        //     Child Loop BB9_176 Depth 2
                                        //     Child Loop BB9_159 Depth 2
                                        //     Child Loop BB9_245 Depth 2
                                        //     Child Loop BB9_259 Depth 2
	mov	r2, [x11]
	mov	r1, 255
	mov	r0, r2
	call	__bit_and
	je	rax, t3, .LBB9_3
	jmp	.LBB9_2
.LBB9_2:                                //   in Loop: Header=BB9_1 Depth=1
	jz	rax, .LBB9_272
	jmp	.LBB9_4
.LBB9_3:                                // %.preheader55.preheader
                                        //   in Loop: Header=BB9_1 Depth=1
	mov	r6, 0
	mov	r2, 32
	mov	t1, x11
	mov	x9, 0
	mov	x13, 0
	mov	x14, 0
	mov	r7, 0
	jmp	.LBB9_44
.LBB9_4:                                //   in Loop: Header=BB9_1 Depth=1
	mov	r0, rsp
	mov	r1, rsp
	add	r0, 16
	add	r1, 32
	mov	r5, [r1]
	mov	r0, [r0]
	mov	r3, r5
	add	r3, 1
	jz	r0, .LBB9_7
	jmp	.LBB9_5
.LBB9_5:                                //   in Loop: Header=BB9_1 Depth=1
	mov	r1, -2147483648
	call	__bit_xor
	mov	r4, rax
	mov	r0, r3
	call	__bit_xor
	jge	rax, r4, .LBB9_7
	jmp	.LBB9_6
.LBB9_6:                                //   in Loop: Header=BB9_1 Depth=1
	add	r5, [rsp]
	mov	r1, 255
	mov	r0, r2
	call	__bit_and
	mov	[r5], rax
.LBB9_7:                                //   in Loop: Header=BB9_1 Depth=1
	mov	r0, rsp
	add	x11, 1
	add	r0, 32
	mov	[r0], r3
	jmp	.LBB9_1
.LBB9_8:                                // %.preheader
                                        //   Parent Loop BB9_1 Depth=1
                                        //     Parent Loop BB9_44 Depth=2
                                        //       Parent Loop BB9_40 Depth=3
                                        //         Parent Loop BB9_36 Depth=4
                                        //           Parent Loop BB9_16 Depth=5
                                        // =>          This Inner Loop Header: Depth=6
	mov	r0, t1
	add	r0, 4
	mov	r3, [r0]
	mov	r1, 255
	add	t1, 1
	mov	r0, r3
	call	__bit_and
	je	rax, x12, .LBB9_8
	jmp	.LBB9_9
.LBB9_9:                                // %.preheader
                                        //   in Loop: Header=BB9_16 Depth=5
	jg	rax, x7, .LBB9_12
	jmp	.LBB9_10
.LBB9_10:                               // %.preheader
                                        //   in Loop: Header=BB9_36 Depth=4
	je	rax, t5, .LBB9_33
	jmp	.LBB9_11
.LBB9_11:                               // %.preheader
                                        //   in Loop: Header=BB9_40 Depth=3
	je	rax, t6, .LBB9_37
	jmp	.LBB9_53
.LBB9_12:                               // %.preheader
                                        //   in Loop: Header=BB9_16 Depth=5
	je	rax, t4, .LBB9_45
	jmp	.LBB9_13
.LBB9_13:                               // %.preheader
                                        //   in Loop: Header=BB9_16 Depth=5
	mov	r0, 48
	je	rax, r0, .LBB9_41
	jmp	.LBB9_14
.LBB9_14:                               // %.preheader
                                        //   in Loop: Header=BB9_16 Depth=5
	jne	rax, x5, .LBB9_53
	jmp	.LBB9_15
.LBB9_15:                               // %.loopexit27.outer.loopexit
                                        //   in Loop: Header=BB9_16 Depth=5
	mov	x14, 1
	mov	r7, 1
.LBB9_16:                               // %.loopexit27.outer
                                        //   Parent Loop BB9_1 Depth=1
                                        //     Parent Loop BB9_44 Depth=2
                                        //       Parent Loop BB9_40 Depth=3
                                        //         Parent Loop BB9_36 Depth=4
                                        // =>        This Loop Header: Depth=5
                                        //             Child Loop BB9_24 Depth 6
                                        //             Child Loop BB9_8 Depth 6
	mov	r4, t1
	add	r4, 1
	mov	r3, [r4]
	mov	r1, 255
	mov	r0, r3
	call	__bit_and
	jg	rax, t4, .LBB9_20
	jmp	.LBB9_17
.LBB9_17:                               // %.loopexit27.outer
                                        //   in Loop: Header=BB9_36 Depth=4
	je	rax, t5, .LBB9_35
	jmp	.LBB9_18
.LBB9_18:                               // %.loopexit27.outer
                                        //   in Loop: Header=BB9_40 Depth=3
	je	rax, t6, .LBB9_39
	jmp	.LBB9_19
.LBB9_19:                               // %.loopexit27.outer
                                        //   in Loop: Header=BB9_1 Depth=1
	je	rax, t4, .LBB9_47
	jmp	.LBB9_55
.LBB9_20:                               // %.loopexit27.outer
                                        //   in Loop: Header=BB9_16 Depth=5
	je	rax, x5, .LBB9_23
	jmp	.LBB9_21
.LBB9_21:                               // %.loopexit27.outer
                                        //   in Loop: Header=BB9_16 Depth=5
	je	rax, x12, .LBB9_32
	jmp	.LBB9_22
.LBB9_22:                               // %.loopexit27.outer
                                        //   in Loop: Header=BB9_44 Depth=2
	mov	r0, 48
	je	rax, r0, .LBB9_43
	jmp	.LBB9_55
.LBB9_23:                               // %.loopexit27.preheader
                                        //   in Loop: Header=BB9_16 Depth=5
.LBB9_24:                               // %.loopexit27
                                        //   Parent Loop BB9_1 Depth=1
                                        //     Parent Loop BB9_44 Depth=2
                                        //       Parent Loop BB9_40 Depth=3
                                        //         Parent Loop BB9_36 Depth=4
                                        //           Parent Loop BB9_16 Depth=5
                                        // =>          This Inner Loop Header: Depth=6
	mov	r0, r4
	add	r0, 4
	mov	r3, [r0]
	mov	r1, 255
	add	r4, 1
	mov	r0, r3
	call	__bit_and
	je	rax, x5, .LBB9_24
	jmp	.LBB9_25
.LBB9_25:                               // %.loopexit27
                                        //   in Loop: Header=BB9_16 Depth=5
	jg	rax, x7, .LBB9_28
	jmp	.LBB9_26
.LBB9_26:                               // %.loopexit27
                                        //   in Loop: Header=BB9_36 Depth=4
	je	rax, t5, .LBB9_34
	jmp	.LBB9_27
.LBB9_27:                               // %.loopexit27
                                        //   in Loop: Header=BB9_40 Depth=3
	je	rax, t6, .LBB9_38
	jmp	.LBB9_54
.LBB9_28:                               // %.loopexit27
                                        //   in Loop: Header=BB9_16 Depth=5
	je	rax, t4, .LBB9_46
	jmp	.LBB9_29
.LBB9_29:                               // %.loopexit27
                                        //   in Loop: Header=BB9_16 Depth=5
	mov	r0, 48
	je	rax, r0, .LBB9_42
	jmp	.LBB9_30
.LBB9_30:                               // %.loopexit27
                                        //   in Loop: Header=BB9_16 Depth=5
	jne	rax, x12, .LBB9_54
	jmp	.LBB9_31
.LBB9_31:                               // %.preheader.preheader.loopexit
                                        //   in Loop: Header=BB9_16 Depth=5
	mov	x14, 1
.LBB9_32:                               // %.preheader.preheader
                                        //   in Loop: Header=BB9_16 Depth=5
	mov	t1, r4
	jmp	.LBB9_8
.LBB9_33:                               // %.loopexit28.backedge.loopexit
                                        //   in Loop: Header=BB9_36 Depth=4
	mov	x13, 1
	mov	r7, 1
	jmp	.LBB9_36
.LBB9_34:                               // %.loopexit28.backedge.loopexit2
                                        //   in Loop: Header=BB9_36 Depth=4
	mov	x13, 1
	mov	t1, r4
	mov	x14, 1
	jmp	.LBB9_36
.LBB9_35:                               // %.loopexit28.backedge.loopexit7
                                        //   in Loop: Header=BB9_36 Depth=4
	mov	x13, 1
	mov	t1, r4
.LBB9_36:                               // %.loopexit28
                                        //   Parent Loop BB9_1 Depth=1
                                        //     Parent Loop BB9_44 Depth=2
                                        //       Parent Loop BB9_40 Depth=3
                                        // =>      This Loop Header: Depth=4
                                        //           Child Loop BB9_16 Depth 5
                                        //             Child Loop BB9_24 Depth 6
                                        //             Child Loop BB9_8 Depth 6
	jmp	.LBB9_16
.LBB9_37:                               // %.loopexit29.backedge.loopexit
                                        //   in Loop: Header=BB9_40 Depth=3
	mov	r6, 1
	mov	r7, 1
	jmp	.LBB9_40
.LBB9_38:                               // %.loopexit29.backedge.loopexit3
                                        //   in Loop: Header=BB9_40 Depth=3
	mov	r6, 1
	mov	t1, r4
	mov	x14, 1
	jmp	.LBB9_40
.LBB9_39:                               // %.loopexit29.backedge.loopexit8
                                        //   in Loop: Header=BB9_40 Depth=3
	mov	r6, 1
	mov	t1, r4
.LBB9_40:                               // %.loopexit29
                                        //   Parent Loop BB9_1 Depth=1
                                        //     Parent Loop BB9_44 Depth=2
                                        // =>    This Loop Header: Depth=3
                                        //         Child Loop BB9_36 Depth 4
                                        //           Child Loop BB9_16 Depth 5
                                        //             Child Loop BB9_24 Depth 6
                                        //             Child Loop BB9_8 Depth 6
	jmp	.LBB9_36
.LBB9_41:                               // %.preheader55.backedge.loopexit
                                        //   in Loop: Header=BB9_44 Depth=2
	mov	x9, 1
	mov	r2, r3
	mov	r7, 1
	jmp	.LBB9_44
.LBB9_42:                               // %.preheader55.backedge.loopexit4
                                        //   in Loop: Header=BB9_44 Depth=2
	mov	x9, 1
	mov	t1, r4
	mov	r2, r3
	mov	x14, 1
	jmp	.LBB9_44
.LBB9_43:                               // %.preheader55.backedge.loopexit9
                                        //   in Loop: Header=BB9_44 Depth=2
	mov	x9, 1
	mov	t1, r4
	mov	r2, r3
.LBB9_44:                               // %.preheader55
                                        //   Parent Loop BB9_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB9_40 Depth 3
                                        //         Child Loop BB9_36 Depth 4
                                        //           Child Loop BB9_16 Depth 5
                                        //             Child Loop BB9_24 Depth 6
                                        //             Child Loop BB9_8 Depth 6
	jmp	.LBB9_40
.LBB9_45:                               // %.loopexit31.loopexit
                                        //   in Loop: Header=BB9_1 Depth=1
	add	t1, -4
	mov	r7, 1
	jmp	.LBB9_48
.LBB9_46:                               // %.loopexit31.loopexit5
                                        //   in Loop: Header=BB9_1 Depth=1
	add	r4, -4
	mov	x14, 1
	mov	t1, r4
	jmp	.LBB9_48
.LBB9_47:                               // %.loopexit31.loopexit10
                                        //   in Loop: Header=BB9_1 Depth=1
.LBB9_48:                               // %.loopexit31
                                        //   in Loop: Header=BB9_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 1
	mov	[rsp], r1
	mov	r1, [r0]
	mov	r4, r1
	jg	r1, t7, .LBB9_50
	jmp	.LBB9_49
.LBB9_49:                               //   in Loop: Header=BB9_1 Depth=1
	mov	r4, 0
	sub	r4, r1
.LBB9_50:                               //   in Loop: Header=BB9_1 Depth=1
	mov	r0, 1
	jl	r1, x0, .LBB9_52
	jmp	.LBB9_51
.LBB9_51:                               //   in Loop: Header=BB9_1 Depth=1
	mov	r0, r7
.LBB9_52:                               //   in Loop: Header=BB9_1 Depth=1
	add	t1, 2
	mov	r3, [t1]
	mov	r7, r0
	jmp	.LBB9_59
.LBB9_53:                               // %.loopexit.loopexit
                                        //   in Loop: Header=BB9_1 Depth=1
	mov	r7, 1
	jmp	.LBB9_56
.LBB9_54:                               // %.loopexit.loopexit1
                                        //   in Loop: Header=BB9_1 Depth=1
	mov	x14, 1
	mov	t1, r4
	jmp	.LBB9_56
.LBB9_55:                               // %.loopexit.loopexit6
                                        //   in Loop: Header=BB9_1 Depth=1
	mov	t1, r4
.LBB9_56:                               // %.loopexit
                                        //   in Loop: Header=BB9_1 Depth=1
	mov	r0, r3
	add	r0, -48
	call	__bit_and
	mov	r1, -2147483648
	mov	r4, 0
	mov	r0, rax
	call	__bit_xor
	mov	r0, -2147483639
	jg	rax, r0, .LBB9_59
	jmp	.LBB9_57
.LBB9_57:                               // %.preheader53.preheader
                                        //   in Loop: Header=BB9_1 Depth=1
	mov	r5, t1
.LBB9_58:                               // %.preheader53
                                        //   Parent Loop BB9_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	r3, -48
	mov	r1, 255
	mul	r4, 10
	mov	r0, r3
	call	__bit_and
	add	r5, 4
	mov	r3, [r5]
	add	r4, rax
	mov	r0, r3
	add	r0, -48
	add	t1, 1
	call	__bit_and
	mov	r1, -2147483648
	mov	r0, rax
	call	__bit_xor
	mov	r5, t1
	jl	rax, x4, .LBB9_58
	jmp	.LBB9_59
.LBB9_59:                               // %.loopexit54
                                        //   in Loop: Header=BB9_1 Depth=1
	mov	r1, 255
	mov	r0, r3
	call	__bit_and
	mov	r5, -1
	jne	rax, x1, .LBB9_65
	jmp	.LBB9_60
.LBB9_60:                               //   in Loop: Header=BB9_1 Depth=1
	mov	t2, t1
	add	t2, 1
	mov	r3, [t2]
	mov	r0, r3
	call	__bit_and
	jne	rax, t4, .LBB9_62
	jmp	.LBB9_61
.LBB9_61:                               //   in Loop: Header=BB9_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 1
	mov	[rsp], r1
	mov	r3, [r0]
	mov	r1, -2147483648
	add	t1, 2
	mov	r0, r3
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
	add	r3, 1
	mov	r0, rax
	mov	r1, r3
	call	__bit_and
	mov	r3, [t1]
	mov	r5, rax
	add	r5, -1
	jmp	.LBB9_65
.LBB9_62:                               //   in Loop: Header=BB9_1 Depth=1
	mov	r0, r3
	add	r0, -48
	call	__bit_and
	mov	r1, -2147483648
	mov	r5, 0
	mov	r0, rax
	call	__bit_xor
	mov	t1, t2
	mov	r0, -2147483639
	jg	rax, r0, .LBB9_65
	jmp	.LBB9_63
.LBB9_63:                               // %.preheader51.preheader
                                        //   in Loop: Header=BB9_1 Depth=1
	mov	t1, t2
.LBB9_64:                               // %.preheader51
                                        //   Parent Loop BB9_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	r3, -48
	mov	r1, 255
	mul	r5, 10
	mov	r0, r3
	call	__bit_and
	add	t2, 4
	mov	r3, [t2]
	add	r5, rax
	mov	r0, r3
	add	r0, -48
	add	t1, 1
	call	__bit_and
	mov	r1, -2147483648
	mov	r0, rax
	call	__bit_xor
	mov	t2, t1
	jl	rax, x4, .LBB9_64
	jmp	.LBB9_65
.LBB9_65:                               // %.loopexit52
                                        //   in Loop: Header=BB9_1 Depth=1
	mov	r0, r3
	add	r0, -104
	mov	r1, 254
	call	__bit_and
	mov	r1, 7
	mov	x11, rax
	call	__bit_shl
	mov	t2, rax
	mov	r1, 1
	mov	x3, 1
	mov	r0, x11
	call	__bit_shr
	mov	r0, t2
	mov	r1, rax
	call	__bit_or
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r0, 5
	mov	t2, 0
	jg	rax, r0, .LBB9_68
	jmp	.LBB9_66
.LBB9_66:                               // %.loopexit52
                                        //   in Loop: Header=BB9_1 Depth=1
	jz	rax, .LBB9_70
	jmp	.LBB9_67
.LBB9_67:                               // %.loopexit52
                                        //   in Loop: Header=BB9_1 Depth=1
	mov	x11, t1
	je	rax, x6, .LBB9_71
	jmp	.LBB9_74
.LBB9_68:                               // %.loopexit52
                                        //   in Loop: Header=BB9_1 Depth=1
	mov	r1, 6
	je	rax, r1, .LBB9_72
	jmp	.LBB9_69
.LBB9_69:                               // %.loopexit52
                                        //   in Loop: Header=BB9_1 Depth=1
	mov	x11, t1
	mov	r1, 9
	je	rax, r1, .LBB9_73
	jmp	.LBB9_74
.LBB9_70:                               //   in Loop: Header=BB9_1 Depth=1
	mov	x11, t1
	add	x11, 1
	mov	r3, [x11]
	mov	r0, r3
	call	__bit_and
	mov	r0, 1
	mov	x3, 2
	mov	t2, 2
	mov	r1, 104
	je	rax, r1, .LBB9_73
	jmp	.LBB9_74
.LBB9_71:                               //   in Loop: Header=BB9_1 Depth=1
	mov	x11, t1
	add	x11, 1
	mov	r3, [x11]
	mov	r0, r3
	call	__bit_and
	mov	t2, 3
	mov	r0, 4
	mov	x3, 2
	mov	r1, 108
	je	rax, r1, .LBB9_73
	jmp	.LBB9_74
.LBB9_72:                               //   in Loop: Header=BB9_1 Depth=1
	mov	r0, 6
.LBB9_73:                               //   in Loop: Header=BB9_1 Depth=1
	add	t1, x3
	mov	r3, [t1]
	mov	x11, t1
	mov	t2, r0
.LBB9_74:                               //   in Loop: Header=BB9_1 Depth=1
	mov	r1, 255
	mov	r0, r3
	call	__bit_and
	jz	rax, .LBB9_272
	jmp	.LBB9_75
.LBB9_75:                               //   in Loop: Header=BB9_1 Depth=1
	add	x11, 1
	mov	r0, r3
	call	__bit_and
	jg	rax, x8, .LBB9_82
	jmp	.LBB9_76
.LBB9_76:                               //   in Loop: Header=BB9_1 Depth=1
	mov	r0, 98
	jg	rax, r0, .LBB9_79
	jmp	.LBB9_77
.LBB9_77:                               //   in Loop: Header=BB9_1 Depth=1
	je	rax, t3, .LBB9_237
	jmp	.LBB9_78
.LBB9_78:                               //   in Loop: Header=BB9_1 Depth=1
	mov	r0, 88
	je	rax, r0, .LBB9_121
	jmp	.LBB9_262
.LBB9_79:                               //   in Loop: Header=BB9_1 Depth=1
	mov	r0, 99
	je	rax, r0, .LBB9_151
	jmp	.LBB9_80
.LBB9_80:                               //   in Loop: Header=BB9_1 Depth=1
	mov	r0, 100
	je	rax, r0, .LBB9_89
	jmp	.LBB9_81
.LBB9_81:                               //   in Loop: Header=BB9_1 Depth=1
	mov	r0, 105
	je	rax, r0, .LBB9_89
	jmp	.LBB9_262
.LBB9_82:                               //   in Loop: Header=BB9_1 Depth=1
	mov	r0, 114
	jg	rax, r0, .LBB9_86
	jmp	.LBB9_83
.LBB9_83:                               //   in Loop: Header=BB9_1 Depth=1
	mov	r0, 110
	je	rax, r0, .LBB9_223
	jmp	.LBB9_84
.LBB9_84:                               //   in Loop: Header=BB9_1 Depth=1
	mov	r0, 111
	je	rax, r0, .LBB9_136
	jmp	.LBB9_85
.LBB9_85:                               //   in Loop: Header=BB9_1 Depth=1
	mov	r0, 112
	je	rax, r0, .LBB9_222
	jmp	.LBB9_262
.LBB9_86:                               //   in Loop: Header=BB9_1 Depth=1
	mov	r0, 115
	je	rax, r0, .LBB9_179
	jmp	.LBB9_87
.LBB9_87:                               //   in Loop: Header=BB9_1 Depth=1
	mov	r0, 117
	je	rax, r0, .LBB9_106
	jmp	.LBB9_88
.LBB9_88:                               //   in Loop: Header=BB9_1 Depth=1
	mov	r0, 120
	je	rax, r0, .LBB9_121
	jmp	.LBB9_262
.LBB9_89:                               //   in Loop: Header=BB9_1 Depth=1
	mov	r0, [rsp]
	mov	[rsp], r0
	jg	t2, x10, .LBB9_93
	jmp	.LBB9_90
.LBB9_90:                               //   in Loop: Header=BB9_1 Depth=1
	je	t2, x2, .LBB9_96
	jmp	.LBB9_91
.LBB9_91:                               //   in Loop: Header=BB9_1 Depth=1
	je	t2, x6, .LBB9_97
	jmp	.LBB9_92
.LBB9_92:                               //   in Loop: Header=BB9_1 Depth=1
	je	t2, x10, .LBB9_98
	jmp	.LBB9_102
.LBB9_93:                               //   in Loop: Header=BB9_1 Depth=1
	mov	r0, 4
	je	t2, r0, .LBB9_99
	jmp	.LBB9_94
.LBB9_94:                               //   in Loop: Header=BB9_1 Depth=1
	mov	r0, 5
	je	t2, r0, .LBB9_100
	jmp	.LBB9_95
.LBB9_95:                               //   in Loop: Header=BB9_1 Depth=1
	mov	r0, 6
	je	t2, r0, .LBB9_101
	jmp	.LBB9_102
.LBB9_96:                               //   in Loop: Header=BB9_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 1
	mov	[rsp], r1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r1, 128
	mov	r0, rax
	call	__bit_xor
	mov	r2, rax
	add	r2, -128
	mov	r1, 31
	mov	r0, r2
	call	__bit_sar
	jmp	.LBB9_103
.LBB9_97:                               //   in Loop: Header=BB9_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 1
	mov	[rsp], r1
	mov	r0, [r0]
	mov	r1, 65535
	call	__bit_and
	mov	r1, 32768
	mov	r0, rax
	call	__bit_xor
	mov	r2, rax
	add	r2, -32768
	mov	r1, 31
	mov	r0, r2
	call	__bit_sar
	jmp	.LBB9_103
.LBB9_98:                               //   in Loop: Header=BB9_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 1
	mov	[rsp], r1
	mov	r2, [r0]
	mov	r1, 31
	mov	r0, r2
	call	__bit_sar
	jmp	.LBB9_103
.LBB9_99:                               //   in Loop: Header=BB9_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 1
	mov	[rsp], r1
	mov	r2, [r0]
	add	r0, 2
	mov	[rsp], r0
	mov	rax, [r1]
	jmp	.LBB9_103
.LBB9_100:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 1
	mov	[rsp], r1
	mov	r2, [r0]
	mov	r1, 31
	mov	r0, r2
	call	__bit_sar
	jmp	.LBB9_103
.LBB9_101:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 1
	mov	[rsp], r1
	mov	r2, [r0]
	mov	r1, 31
	mov	r0, r2
	call	__bit_sar
	jmp	.LBB9_103
.LBB9_102:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 1
	mov	[rsp], r1
	mov	r2, [r0]
	mov	r1, 31
	mov	r0, r2
	call	__bit_sar
.LBB9_103:                              //   in Loop: Header=BB9_1 Depth=1
	jg	rax, t7, .LBB9_105
	jmp	.LBB9_104
.LBB9_104:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, 0
	mov	r1, 0
	mov	r3, rax
	call	__subdi3
	mov	r2, t0
	mov	r0, rsp
	mov	r1, rsp
	mov	r3, rsp
	mov	r6, rsp
	add	r0, 4
	mov	[r0], r5
	add	r1, 3
	mov	[r1], r4
	add	r3, 2
	mov	[r3], x9
	add	r6, 1
	mov	[r6], x13
	mov	r3, 1
	mov	r4, 10
	mov	r5, 0
	mov	r6, 0
	mov	[rsp], x14
	mov	r0, rsp
	mov	r1, rax
	call	format_integer
	jmp	.LBB9_1
.LBB9_105:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, rsp
	mov	r1, rsp
	mov	r3, rsp
	mov	r6, rsp
	add	r0, 4
	mov	[r0], r5
	add	r1, 3
	mov	[r1], r4
	add	r3, 2
	mov	[r3], x9
	add	r6, 1
	mov	[r6], x13
	mov	r3, 0
	mov	r4, 10
	mov	r5, 0
	mov	r6, 0
	mov	[rsp], x14
	mov	r0, rsp
	mov	r1, r2
	mov	r2, rax
	call	format_integer
	jmp	.LBB9_1
.LBB9_106:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, [rsp]
	mov	[rsp], r0
	jg	t2, x10, .LBB9_110
	jmp	.LBB9_107
.LBB9_107:                              //   in Loop: Header=BB9_1 Depth=1
	je	t2, x2, .LBB9_113
	jmp	.LBB9_108
.LBB9_108:                              //   in Loop: Header=BB9_1 Depth=1
	je	t2, x6, .LBB9_114
	jmp	.LBB9_109
.LBB9_109:                              //   in Loop: Header=BB9_1 Depth=1
	je	t2, x10, .LBB9_115
	jmp	.LBB9_119
.LBB9_110:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, 4
	je	t2, r0, .LBB9_116
	jmp	.LBB9_111
.LBB9_111:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, 5
	je	t2, r0, .LBB9_117
	jmp	.LBB9_112
.LBB9_112:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, 6
	je	t2, r0, .LBB9_118
	jmp	.LBB9_119
.LBB9_113:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 1
	mov	[rsp], r1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r1, rax
	mov	r2, 0
	jmp	.LBB9_120
.LBB9_114:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 1
	mov	[rsp], r1
	mov	r0, [r0]
	mov	r1, 65535
	call	__bit_and
	mov	r1, rax
	mov	r2, 0
	jmp	.LBB9_120
.LBB9_115:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 1
	mov	[rsp], r1
	mov	r1, [r0]
	mov	r2, 0
	jmp	.LBB9_120
.LBB9_116:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, [rsp]
	mov	r2, r0
	add	r2, 1
	mov	[rsp], r2
	mov	r1, [r0]
	add	r0, 2
	mov	[rsp], r0
	mov	r2, [r2]
	jmp	.LBB9_120
.LBB9_117:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 1
	mov	[rsp], r1
	mov	r1, [r0]
	mov	r2, 0
	jmp	.LBB9_120
.LBB9_118:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 1
	mov	[rsp], r1
	mov	r0, [r0]
	mov	r1, 31
	call	__bit_sar
	mov	r1, r0
	mov	r2, rax
	jmp	.LBB9_120
.LBB9_119:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 1
	mov	[rsp], r1
	mov	r1, [r0]
	mov	r2, 0
.LBB9_120:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, rsp
	mov	r3, rsp
	mov	r6, rsp
	mov	t0, rsp
	add	r0, 4
	mov	[r0], r5
	add	r3, 3
	mov	[r3], r4
	add	r6, 2
	mov	[r6], x9
	add	t0, 1
	mov	[t0], 0
	mov	r3, 0
	mov	r4, 10
	mov	r5, 0
	mov	r6, 0
	mov	[rsp], 0
	mov	r0, rsp
	call	format_integer
	jmp	.LBB9_1
.LBB9_121:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, [rsp]
	mov	[rsp], r0
	jg	t2, x10, .LBB9_125
	jmp	.LBB9_122
.LBB9_122:                              //   in Loop: Header=BB9_1 Depth=1
	je	t2, x2, .LBB9_128
	jmp	.LBB9_123
.LBB9_123:                              //   in Loop: Header=BB9_1 Depth=1
	je	t2, x6, .LBB9_129
	jmp	.LBB9_124
.LBB9_124:                              //   in Loop: Header=BB9_1 Depth=1
	je	t2, x10, .LBB9_130
	jmp	.LBB9_134
.LBB9_125:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, 4
	je	t2, r0, .LBB9_131
	jmp	.LBB9_126
.LBB9_126:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, 5
	je	t2, r0, .LBB9_132
	jmp	.LBB9_127
.LBB9_127:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, 6
	je	t2, r0, .LBB9_133
	jmp	.LBB9_134
.LBB9_128:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 1
	mov	[rsp], r1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	t2, rax
	mov	r2, 0
	jmp	.LBB9_135
.LBB9_129:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 1
	mov	[rsp], r1
	mov	r0, [r0]
	mov	r1, 65535
	call	__bit_and
	mov	t2, rax
	mov	r2, 0
	jmp	.LBB9_135
.LBB9_130:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 1
	mov	[rsp], r1
	mov	t2, [r0]
	mov	r2, 0
	jmp	.LBB9_135
.LBB9_131:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 1
	mov	[rsp], r1
	mov	t2, [r0]
	add	r0, 2
	mov	[rsp], r0
	mov	r2, [r1]
	jmp	.LBB9_135
.LBB9_132:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 1
	mov	[rsp], r1
	mov	t2, [r0]
	mov	r2, 0
	jmp	.LBB9_135
.LBB9_133:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 1
	mov	[rsp], r1
	mov	t2, [r0]
	mov	r1, 31
	mov	r0, t2
	call	__bit_sar
	mov	r2, rax
	jmp	.LBB9_135
.LBB9_134:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 1
	mov	[rsp], r1
	mov	t2, [r0]
	mov	r2, 0
.LBB9_135:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r1, 255
	mov	r0, r3
	call	__bit_and
	mov	r1, 88
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_and
	mov	r0, rsp
	mov	r1, rsp
	mov	r3, rsp
	mov	t0, rsp
	add	r0, 4
	mov	[r0], r5
	add	r1, 3
	mov	[r1], r4
	add	r3, 2
	mov	[r3], x9
	add	t0, 1
	mov	[t0], 0
	mov	r3, 0
	mov	r4, 16
	mov	[rsp], 0
	mov	r0, rsp
	mov	r1, t2
	mov	r5, rax
	call	format_integer
	jmp	.LBB9_1
.LBB9_136:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, [rsp]
	mov	[rsp], r0
	jg	t2, x10, .LBB9_140
	jmp	.LBB9_137
.LBB9_137:                              //   in Loop: Header=BB9_1 Depth=1
	je	t2, x2, .LBB9_143
	jmp	.LBB9_138
.LBB9_138:                              //   in Loop: Header=BB9_1 Depth=1
	je	t2, x6, .LBB9_144
	jmp	.LBB9_139
.LBB9_139:                              //   in Loop: Header=BB9_1 Depth=1
	je	t2, x10, .LBB9_145
	jmp	.LBB9_149
.LBB9_140:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, 4
	je	t2, r0, .LBB9_146
	jmp	.LBB9_141
.LBB9_141:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, 5
	je	t2, r0, .LBB9_147
	jmp	.LBB9_142
.LBB9_142:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, 6
	je	t2, r0, .LBB9_148
	jmp	.LBB9_149
.LBB9_143:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 1
	mov	[rsp], r1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r1, rax
	mov	r2, 0
	jmp	.LBB9_150
.LBB9_144:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 1
	mov	[rsp], r1
	mov	r0, [r0]
	mov	r1, 65535
	call	__bit_and
	mov	r1, rax
	mov	r2, 0
	jmp	.LBB9_150
.LBB9_145:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 1
	mov	[rsp], r1
	mov	r1, [r0]
	mov	r2, 0
	jmp	.LBB9_150
.LBB9_146:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, [rsp]
	mov	r2, r0
	add	r2, 1
	mov	[rsp], r2
	mov	r1, [r0]
	add	r0, 2
	mov	[rsp], r0
	mov	r2, [r2]
	jmp	.LBB9_150
.LBB9_147:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 1
	mov	[rsp], r1
	mov	r1, [r0]
	mov	r2, 0
	jmp	.LBB9_150
.LBB9_148:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 1
	mov	[rsp], r1
	mov	r0, [r0]
	mov	r1, 31
	call	__bit_sar
	mov	r1, r0
	mov	r2, rax
	jmp	.LBB9_150
.LBB9_149:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 1
	mov	[rsp], r1
	mov	r1, [r0]
	mov	r2, 0
.LBB9_150:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, rsp
	mov	r3, rsp
	mov	t0, rsp
	mov	t1, rsp
	add	r0, 4
	mov	[r0], r5
	add	r3, 3
	mov	[r3], r4
	add	t0, 2
	mov	[t0], x9
	add	t1, 1
	mov	[t1], 0
	mov	r3, 0
	mov	r4, 8
	mov	r5, 0
	mov	[rsp], 0
	mov	r0, rsp
	call	format_integer
	jmp	.LBB9_1
.LBB9_151:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 1
	mov	[rsp], r1
	mov	r2, [r0]
	mov	r6, r4
	add	r6, -1
	jnz	r7, .LBB9_166
	jmp	.LBB9_152
.LBB9_152:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r1, -2147483648
	mov	r0, r4
	call	__bit_xor
	mov	r0, -2147483647
	sub	r0, rax
	mov	r1, 31
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r0, rax
	mov	r1, r6
	call	__bit_and
	mov	r0, rsp
	mov	r1, rsp
	add	r0, 16
	add	r1, 32
	mov	r6, [r1]
	mov	r4, [r0]
	mov	r5, rax
	mov	r3, r6
	jz	r5, .LBB9_162
	jmp	.LBB9_153
.LBB9_153:                              //   in Loop: Header=BB9_1 Depth=1
	jz	r4, .LBB9_158
	jmp	.LBB9_154
.LBB9_154:                              //   in Loop: Header=BB9_1 Depth=1
	mov	t1, [rsp]
	mov	r3, r6
	mov	r1, -2147483648
	add	r3, 1
	mov	r0, r4
	call	__bit_xor
	mov	r7, rax
	mov	r0, r3
	call	__bit_xor
	jge	rax, r7, .LBB9_156
	jmp	.LBB9_155
.LBB9_155:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, t1
	add	r0, r6
	mov	[r0], 32
.LBB9_156:                              //   in Loop: Header=BB9_1 Depth=1
	je	r5, x2, .LBB9_162
	jmp	.LBB9_157
.LBB9_157:                              // %.preheader41.preheader
                                        //   in Loop: Header=BB9_1 Depth=1
	mov	r1, 2
	mov	r0, r6
	call	__bit_shl
	mov	r0, rax
	call	__bit_shl
	add	rax, 16
	div	rax, 4
	add	t1, rax
	jmp	.LBB9_159
.LBB9_158:                              //   in Loop: Header=BB9_1 Depth=1
	add	r5, 1
	add	r6, r5
	jmp	.LBB9_165
.LBB9_159:                              // %.preheader41
                                        //   Parent Loop BB9_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, -2147483648
	add	r3, 1
	mov	r0, r4
	call	__bit_xor
	mov	r6, rax
	mov	r0, r3
	call	__bit_xor
	jge	rax, r6, .LBB9_161
	jmp	.LBB9_160
.LBB9_160:                              //   in Loop: Header=BB9_159 Depth=2
	mov	[t1], 32
.LBB9_161:                              //   in Loop: Header=BB9_159 Depth=2
	add	r5, -1
	add	t1, 4
	jg	r5, x2, .LBB9_159
	jmp	.LBB9_162
.LBB9_162:                              // %.loopexit42
                                        //   in Loop: Header=BB9_1 Depth=1
	mov	r6, r3
	add	r6, 1
	jz	r4, .LBB9_165
	jmp	.LBB9_163
.LBB9_163:                              // %.loopexit42
                                        //   in Loop: Header=BB9_1 Depth=1
	mov	r1, -2147483648
	mov	r0, r4
	call	__bit_xor
	mov	r4, rax
	mov	r0, r6
	call	__bit_xor
	jge	rax, r4, .LBB9_165
	jmp	.LBB9_164
.LBB9_164:                              //   in Loop: Header=BB9_1 Depth=1
	add	r3, [rsp]
	mov	r1, 255
	mov	r0, r2
	call	__bit_and
	mov	[r3], rax
.LBB9_165:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, rsp
	add	r0, 32
	mov	[r0], r6
	jmp	.LBB9_1
.LBB9_166:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, rsp
	mov	r1, rsp
	add	r0, 16
	add	r1, 32
	mov	r5, [r1]
	mov	r3, [r0]
	mov	r7, r5
	add	r7, 1
	jz	r3, .LBB9_169
	jmp	.LBB9_167
.LBB9_167:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r1, -2147483648
	mov	r0, r3
	call	__bit_xor
	mov	t2, rax
	mov	r0, r7
	call	__bit_xor
	jge	rax, t2, .LBB9_169
	jmp	.LBB9_168
.LBB9_168:                              //   in Loop: Header=BB9_1 Depth=1
	mov	t1, r5
	add	t1, [rsp]
	mov	r1, 255
	mov	r0, r2
	call	__bit_and
	mov	[t1], rax
.LBB9_169:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, rsp
	add	r0, 32
	mov	r1, -2147483648
	mov	[r0], r7
	mov	r0, r4
	call	__bit_xor
	mov	r0, -2147483647
	sub	r0, rax
	mov	r1, 31
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r0, rax
	mov	r1, r6
	call	__bit_and
	mov	r2, rax
	jz	r2, .LBB9_1
	jmp	.LBB9_170
.LBB9_170:                              //   in Loop: Header=BB9_1 Depth=1
	jz	r3, .LBB9_175
	jmp	.LBB9_171
.LBB9_171:                              //   in Loop: Header=BB9_1 Depth=1
	mov	t1, [rsp]
	mov	r4, r5
	mov	r1, -2147483648
	add	r4, 2
	mov	r0, r3
	call	__bit_xor
	mov	r6, rax
	mov	r0, r4
	call	__bit_xor
	jge	rax, r6, .LBB9_173
	jmp	.LBB9_172
.LBB9_172:                              //   in Loop: Header=BB9_1 Depth=1
	add	r7, t1
	mov	[r7], 32
.LBB9_173:                              //   in Loop: Header=BB9_1 Depth=1
	je	r2, x2, .LBB9_270
	jmp	.LBB9_174
.LBB9_174:                              // %.preheader43.preheader
                                        //   in Loop: Header=BB9_1 Depth=1
	mov	r1, 2
	mov	r0, r5
	call	__bit_shl
	mov	r0, rax
	call	__bit_shl
	add	rax, 32
	div	rax, 4
	add	t1, rax
	jmp	.LBB9_176
.LBB9_175:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, rsp
	add	r2, 1
	add	r5, r2
	add	r0, 32
	mov	[r0], r5
	jmp	.LBB9_1
.LBB9_176:                              // %.preheader43
                                        //   Parent Loop BB9_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, -2147483648
	add	r4, 1
	mov	r0, r3
	call	__bit_xor
	mov	r5, rax
	mov	r0, r4
	call	__bit_xor
	jge	rax, r5, .LBB9_178
	jmp	.LBB9_177
.LBB9_177:                              //   in Loop: Header=BB9_176 Depth=2
	mov	[t1], 32
.LBB9_178:                              //   in Loop: Header=BB9_176 Depth=2
	add	r2, -1
	add	t1, 4
	jg	r2, x2, .LBB9_176
	jmp	.LBB9_270
.LBB9_179:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 1
	mov	[rsp], r1
	mov	r3, [r0]
	mov	r0, r3
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	mov	r1, mcasm_static_85b4ab734597d3737c690b05ac7caa7d
	sub	r1, r3
	add	rax, 1
	mov	r0, rax
	call	__bit_and
	mov	r2, rax
	add	r2, r3
	mov	r1, 3
	mov	r0, r2
	call	__bit_and
	jnz	rax, .LBB9_181
	jmp	.LBB9_180
.LBB9_180:                              // %.preheader1.i.preheader
                                        //   in Loop: Header=BB9_1 Depth=1
	mov	r3, r2
	add	r3, -16
	mov	r6, r2
	add	r6, -4
	jmp	.LBB9_184
.LBB9_181:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, [r2]
	mov	r1, 255
	call	__bit_and
	mov	t1, r2
	jz	rax, .LBB9_187
	jmp	.LBB9_182
.LBB9_182:                              // %.preheader2.i.preheader
                                        //   in Loop: Header=BB9_1 Depth=1
	mov	r3, r2
	add	r3, 4
	mov	t1, r2
.LBB9_183:                              // %.preheader2.i
                                        //   Parent Loop BB9_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, [r3]
	mov	r1, 255
	call	__bit_and
	add	t1, 4
	add	r3, 4
	jz	rax, .LBB9_187
	jmp	.LBB9_183
.LBB9_184:                              // %.preheader1.i
                                        //   Parent Loop BB9_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	r3, 16
	mov	r1, [r3]
	mov	r0, 16843008
	sub	r0, r1
	mov	t1, r6
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	add	r6, 64
	je	rax, x15, .LBB9_184
	jmp	.LBB9_185
.LBB9_185:                              // %.preheader.i.preheader
                                        //   in Loop: Header=BB9_1 Depth=1
	mov	r6, 0
.LBB9_186:                              // %.preheader.i
                                        //   Parent Loop BB9_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, r3
	add	r0, r6
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	add	t1, 4
	add	r6, 4
	jnz	rax, .LBB9_186
	jmp	.LBB9_187
.LBB9_187:                              // %strlen.exit
                                        //   in Loop: Header=BB9_1 Depth=1
	sub	t1, r2
	mov	r3, r5
	sub	r3, t1
	mov	r1, 31
	mov	r0, r3
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r0, rax
	mov	r1, r3
	call	__bit_and
	jl	r5, x0, .LBB9_189
	jmp	.LBB9_188
.LBB9_188:                              //   in Loop: Header=BB9_1 Depth=1
	add	t1, rax
.LBB9_189:                              //   in Loop: Header=BB9_1 Depth=1
	jnz	r7, .LBB9_201
	jmp	.LBB9_190
.LBB9_190:                              //   in Loop: Header=BB9_1 Depth=1
	jle	r4, t1, .LBB9_201
	jmp	.LBB9_191
.LBB9_191:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, rsp
	mov	r1, rsp
	add	r0, 16
	mov	r3, [r0]
	add	r1, 32
	mov	r6, [r1]
	mov	x9, r4
	sub	x9, t1
	jz	r3, .LBB9_196
	jmp	.LBB9_192
.LBB9_192:                              //   in Loop: Header=BB9_1 Depth=1
	mov	x13, [rsp]
	mov	r5, r6
	mov	r1, -2147483648
	add	r5, 1
	mov	r0, r3
	call	__bit_xor
	mov	t2, rax
	mov	r0, r5
	call	__bit_xor
	jge	rax, t2, .LBB9_194
	jmp	.LBB9_193
.LBB9_193:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, x13
	add	r0, r6
	mov	[r0], 32
.LBB9_194:                              //   in Loop: Header=BB9_1 Depth=1
	jl	x9, x6, .LBB9_200
	jmp	.LBB9_195
.LBB9_195:                              // %.preheader49.preheader
                                        //   in Loop: Header=BB9_1 Depth=1
	mov	r1, 2
	mov	r0, r6
	call	__bit_shl
	mov	r0, rax
	call	__bit_shl
	add	rax, 16
	div	rax, 4
	add	x13, rax
	add	x9, 1
	jmp	.LBB9_197
.LBB9_196:                              //   in Loop: Header=BB9_1 Depth=1
	add	r6, x9
	mov	r5, r6
	jmp	.LBB9_200
.LBB9_197:                              // %.preheader49
                                        //   Parent Loop BB9_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, -2147483648
	add	r5, 1
	mov	r0, r3
	call	__bit_xor
	mov	r6, rax
	mov	r0, r5
	call	__bit_xor
	jge	rax, r6, .LBB9_199
	jmp	.LBB9_198
.LBB9_198:                              //   in Loop: Header=BB9_197 Depth=2
	mov	[x13], 32
.LBB9_199:                              //   in Loop: Header=BB9_197 Depth=2
	add	x9, -1
	add	x13, 4
	jg	x9, x6, .LBB9_197
	jmp	.LBB9_200
.LBB9_200:                              // %.loopexit50
                                        //   in Loop: Header=BB9_1 Depth=1
	mov	r0, rsp
	add	r0, 32
	mov	[r0], r5
.LBB9_201:                              //   in Loop: Header=BB9_1 Depth=1
	jz	t1, .LBB9_211
	jmp	.LBB9_202
.LBB9_202:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r1, rsp
	mov	r0, rsp
	add	r1, 16
	mov	r5, [r1]
	add	r0, 32
	mov	r3, [r0]
	jz	r5, .LBB9_207
	jmp	.LBB9_203
.LBB9_203:                              //   in Loop: Header=BB9_1 Depth=1
	mov	x9, [rsp]
	mov	r6, r3
	mov	r1, -2147483648
	add	r6, 1
	mov	r0, r5
	call	__bit_xor
	mov	t2, rax
	mov	r0, r6
	call	__bit_xor
	jge	rax, t2, .LBB9_205
	jmp	.LBB9_204
.LBB9_204:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, [r2]
	mov	r1, 255
	call	__bit_and
	mov	r0, x9
	add	r0, r3
	mov	[r0], rax
.LBB9_205:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, rsp
	add	r0, 32
	mov	[r0], r6
	je	t1, x2, .LBB9_211
	jmp	.LBB9_206
.LBB9_206:                              // %.preheader47.preheader
                                        //   in Loop: Header=BB9_1 Depth=1
	mov	r1, 2
	mov	r0, r3
	call	__bit_shl
	mov	r0, rax
	call	__bit_shl
	add	rax, 16
	div	rax, 4
	add	x9, rax
	add	r3, 2
	mov	t2, t1
	add	t2, -1
	add	r2, 4
	jmp	.LBB9_208
.LBB9_207:                              //   in Loop: Header=BB9_1 Depth=1
	add	r3, t1
	mov	[r0], r3
	jmp	.LBB9_211
.LBB9_208:                              // %.preheader47
                                        //   Parent Loop BB9_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, -2147483648
	mov	r0, r5
	call	__bit_xor
	mov	r6, rax
	mov	r0, r3
	call	__bit_xor
	jge	rax, r6, .LBB9_210
	jmp	.LBB9_209
.LBB9_209:                              //   in Loop: Header=BB9_208 Depth=2
	mov	r0, [r2]
	mov	r1, 255
	call	__bit_and
	mov	[x9], rax
.LBB9_210:                              //   in Loop: Header=BB9_208 Depth=2
	mov	r0, rsp
	add	r0, 32
	mov	[r0], r3
	add	x9, 4
	add	r3, 1
	add	t2, -1
	add	r2, 4
	jnz	t2, .LBB9_208
	jmp	.LBB9_211
.LBB9_211:                              // %.loopexit48
                                        //   in Loop: Header=BB9_1 Depth=1
	jz	r7, .LBB9_1
	jmp	.LBB9_212
.LBB9_212:                              // %.loopexit48
                                        //   in Loop: Header=BB9_1 Depth=1
	jle	r4, t1, .LBB9_1
	jmp	.LBB9_213
.LBB9_213:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r1, rsp
	mov	r0, rsp
	add	r1, 16
	mov	r2, [r1]
	add	r0, 32
	mov	r5, [r0]
	sub	r4, t1
	jz	r2, .LBB9_218
	jmp	.LBB9_214
.LBB9_214:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r7, [rsp]
	mov	r3, r5
	mov	r1, -2147483648
	add	r3, 1
	mov	r0, r2
	call	__bit_xor
	mov	r6, rax
	mov	r0, r3
	call	__bit_xor
	jge	rax, r6, .LBB9_216
	jmp	.LBB9_215
.LBB9_215:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, r7
	add	r0, r5
	mov	[r0], 32
.LBB9_216:                              //   in Loop: Header=BB9_1 Depth=1
	jl	r4, x6, .LBB9_271
	jmp	.LBB9_217
.LBB9_217:                              // %.preheader45.preheader
                                        //   in Loop: Header=BB9_1 Depth=1
	mov	r1, 2
	mov	r0, r5
	call	__bit_shl
	mov	r0, rax
	call	__bit_shl
	add	rax, 16
	div	rax, 4
	add	r7, rax
	add	r4, 1
	jmp	.LBB9_219
.LBB9_218:                              //   in Loop: Header=BB9_1 Depth=1
	add	r5, r4
	mov	[r0], r5
	jmp	.LBB9_1
.LBB9_219:                              // %.preheader45
                                        //   Parent Loop BB9_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, -2147483648
	add	r3, 1
	mov	r0, r2
	call	__bit_xor
	mov	r5, rax
	mov	r0, r3
	call	__bit_xor
	jge	rax, r5, .LBB9_221
	jmp	.LBB9_220
.LBB9_220:                              //   in Loop: Header=BB9_219 Depth=2
	mov	[r7], 32
.LBB9_221:                              //   in Loop: Header=BB9_219 Depth=2
	add	r4, -1
	add	r7, 4
	jg	r4, x6, .LBB9_219
	jmp	.LBB9_271
.LBB9_222:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 1
	mov	[rsp], r1
	mov	r1, [r0]
	mov	r0, rsp
	mov	r2, rsp
	mov	r3, rsp
	mov	r6, rsp
	add	r0, 4
	mov	[r0], r5
	add	r2, 3
	mov	[r2], r4
	add	r3, 2
	mov	[r3], x9
	add	r6, 1
	mov	[r6], 0
	mov	r2, 0
	mov	r3, 0
	mov	r4, 16
	mov	r5, 0
	mov	r6, 1
	mov	[rsp], 0
	mov	r0, rsp
	call	format_integer
	jmp	.LBB9_1
.LBB9_223:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, rsp
	add	r0, 32
	mov	r0, [r0]
	jg	t2, x10, .LBB9_227
	jmp	.LBB9_224
.LBB9_224:                              //   in Loop: Header=BB9_1 Depth=1
	je	t2, x2, .LBB9_230
	jmp	.LBB9_225
.LBB9_225:                              //   in Loop: Header=BB9_1 Depth=1
	je	t2, x6, .LBB9_231
	jmp	.LBB9_226
.LBB9_226:                              //   in Loop: Header=BB9_1 Depth=1
	je	t2, x10, .LBB9_232
	jmp	.LBB9_236
.LBB9_227:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r1, 4
	je	t2, r1, .LBB9_233
	jmp	.LBB9_228
.LBB9_228:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r1, 5
	je	t2, r1, .LBB9_234
	jmp	.LBB9_229
.LBB9_229:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r1, 6
	je	t2, r1, .LBB9_235
	jmp	.LBB9_236
.LBB9_230:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r1, [rsp]
	mov	r2, r1
	add	r2, 1
	mov	[rsp], r2
	mov	r2, [r1]
	mov	r1, 255
	call	__bit_and
	mov	[r2], rax
	jmp	.LBB9_1
.LBB9_231:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r1, [rsp]
	mov	r2, r1
	add	r2, 1
	mov	[rsp], r2
	mov	r2, [r1]
	mov	r1, 65535
	call	__bit_and
	mov	[r2], rax
	jmp	.LBB9_1
.LBB9_232:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r1, [rsp]
	mov	r2, r1
	add	r2, 1
	mov	[rsp], r2
	mov	r1, [r1]
	mov	[r1], r0
	jmp	.LBB9_1
.LBB9_233:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r1, [rsp]
	mov	r2, r1
	add	r2, 1
	mov	[rsp], r2
	mov	r1, [r1]
	mov	[r1], r0
	add	r1, 1
	mov	[r1], 0
	jmp	.LBB9_1
.LBB9_234:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r1, [rsp]
	mov	r2, r1
	add	r2, 1
	mov	[rsp], r2
	mov	r1, [r1]
	mov	[r1], r0
	jmp	.LBB9_1
.LBB9_235:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r1, [rsp]
	mov	r2, r1
	add	r2, 1
	mov	[rsp], r2
	mov	r1, [r1]
	mov	[r1], r0
	jmp	.LBB9_1
.LBB9_236:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r1, [rsp]
	mov	r2, r1
	add	r2, 1
	mov	[rsp], r2
	mov	r1, [r1]
	mov	[r1], r0
	jmp	.LBB9_1
.LBB9_237:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, rsp
	mov	r1, rsp
	add	r0, 16
	add	r1, 32
	mov	r6, [r1]
	mov	r3, [r0]
	mov	r5, r6
	jnz	r7, .LBB9_248
	jmp	.LBB9_238
.LBB9_238:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r5, r6
	jl	r4, x6, .LBB9_248
	jmp	.LBB9_239
.LBB9_239:                              //   in Loop: Header=BB9_1 Depth=1
	jz	r3, .LBB9_244
	jmp	.LBB9_240
.LBB9_240:                              //   in Loop: Header=BB9_1 Depth=1
	mov	t1, [rsp]
	mov	r5, r6
	mov	r1, -2147483648
	add	r5, 1
	mov	r0, r3
	call	__bit_xor
	mov	t2, rax
	mov	r0, r5
	call	__bit_xor
	jge	rax, t2, .LBB9_242
	jmp	.LBB9_241
.LBB9_241:                              //   in Loop: Header=BB9_1 Depth=1
	mov	t2, t1
	mov	r1, 255
	add	t2, r6
	mov	r0, r2
	call	__bit_and
	mov	[t2], rax
.LBB9_242:                              //   in Loop: Header=BB9_1 Depth=1
	jl	r4, x10, .LBB9_248
	jmp	.LBB9_243
.LBB9_243:                              // %.preheader39.preheader
                                        //   in Loop: Header=BB9_1 Depth=1
	mov	r1, 2
	mov	r0, r6
	call	__bit_shl
	mov	r0, rax
	call	__bit_shl
	add	rax, 16
	div	rax, 4
	add	t1, rax
	mov	t2, r4
	add	t2, 1
	jmp	.LBB9_245
.LBB9_244:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, rsp
	add	r6, r4
	add	r0, 32
	mov	[r0], r6
	jmp	.LBB9_1
.LBB9_245:                              // %.preheader39
                                        //   Parent Loop BB9_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, -2147483648
	add	r5, 1
	mov	r0, r3
	call	__bit_xor
	mov	r6, rax
	mov	r0, r5
	call	__bit_xor
	jge	rax, r6, .LBB9_247
	jmp	.LBB9_246
.LBB9_246:                              //   in Loop: Header=BB9_245 Depth=2
	mov	r1, 255
	mov	r0, r2
	call	__bit_and
	mov	[t1], rax
.LBB9_247:                              //   in Loop: Header=BB9_245 Depth=2
	add	t2, -1
	add	t1, 4
	jg	t2, x10, .LBB9_245
	jmp	.LBB9_248
.LBB9_248:                              // %.loopexit40
                                        //   in Loop: Header=BB9_1 Depth=1
	mov	r6, r5
	add	r6, 1
	jz	r3, .LBB9_251
	jmp	.LBB9_249
.LBB9_249:                              // %.loopexit40
                                        //   in Loop: Header=BB9_1 Depth=1
	mov	r1, -2147483648
	mov	r0, r3
	call	__bit_xor
	mov	r2, rax
	mov	r0, r6
	call	__bit_xor
	jge	rax, r2, .LBB9_251
	jmp	.LBB9_250
.LBB9_250:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, r5
	add	r0, [rsp]
	mov	[r0], 37
.LBB9_251:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, rsp
	add	r0, 32
	mov	[r0], r6
	jz	r7, .LBB9_1
	jmp	.LBB9_252
.LBB9_252:                              //   in Loop: Header=BB9_1 Depth=1
	jl	r4, x6, .LBB9_1
	jmp	.LBB9_253
.LBB9_253:                              //   in Loop: Header=BB9_1 Depth=1
	jz	r3, .LBB9_258
	jmp	.LBB9_254
.LBB9_254:                              //   in Loop: Header=BB9_1 Depth=1
	mov	t1, [rsp]
	mov	r2, r5
	mov	r1, -2147483648
	add	r2, 2
	mov	r0, r3
	call	__bit_xor
	mov	r7, rax
	mov	r0, r2
	call	__bit_xor
	jge	rax, r7, .LBB9_256
	jmp	.LBB9_255
.LBB9_255:                              //   in Loop: Header=BB9_1 Depth=1
	add	r6, t1
	mov	[r6], 32
.LBB9_256:                              //   in Loop: Header=BB9_1 Depth=1
	jl	r4, x10, .LBB9_269
	jmp	.LBB9_257
.LBB9_257:                              // %.preheader37.preheader
                                        //   in Loop: Header=BB9_1 Depth=1
	mov	r1, 2
	mov	r0, r5
	call	__bit_shl
	mov	r0, rax
	call	__bit_shl
	add	rax, 32
	div	rax, 4
	add	t1, rax
	add	r4, 1
	jmp	.LBB9_259
.LBB9_258:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, rsp
	add	r5, r4
	add	r0, 32
	mov	[r0], r5
	jmp	.LBB9_1
.LBB9_259:                              // %.preheader37
                                        //   Parent Loop BB9_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, -2147483648
	add	r2, 1
	mov	r0, r3
	call	__bit_xor
	mov	r5, rax
	mov	r0, r2
	call	__bit_xor
	jge	rax, r5, .LBB9_261
	jmp	.LBB9_260
.LBB9_260:                              //   in Loop: Header=BB9_259 Depth=2
	mov	[t1], 32
.LBB9_261:                              //   in Loop: Header=BB9_259 Depth=2
	add	r4, -1
	add	t1, 4
	jg	r4, x10, .LBB9_259
	jmp	.LBB9_269
.LBB9_262:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, rsp
	mov	r1, rsp
	add	r0, 16
	mov	r5, [r0]
	add	r1, 32
	mov	r2, [r1]
	jnz	r5, .LBB9_264
	jmp	.LBB9_263
.LBB9_263:                              // %._crit_edge
                                        //   in Loop: Header=BB9_1 Depth=1
	add	r2, 2
	jmp	.LBB9_268
.LBB9_264:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r4, r2
	mov	r1, -2147483648
	add	r4, 1
	mov	r0, r5
	call	__bit_xor
	mov	r6, rax
	mov	r0, r4
	call	__bit_xor
	jge	rax, r6, .LBB9_266
	jmp	.LBB9_265
.LBB9_265:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, r2
	add	r0, [rsp]
	mov	[r0], 37
.LBB9_266:                              //   in Loop: Header=BB9_1 Depth=1
	add	r2, 2
	mov	r0, r5
	call	__bit_xor
	mov	r5, rax
	mov	r0, r2
	call	__bit_xor
	jge	rax, r5, .LBB9_268
	jmp	.LBB9_267
.LBB9_267:                              //   in Loop: Header=BB9_1 Depth=1
	add	r4, [rsp]
	mov	r1, 255
	mov	r0, r3
	call	__bit_and
	mov	[r4], rax
.LBB9_268:                              //   in Loop: Header=BB9_1 Depth=1
	mov	r0, rsp
	add	r0, 32
	mov	[r0], r2
	jmp	.LBB9_1
.LBB9_269:                              // %.loopexit38
                                        //   in Loop: Header=BB9_1 Depth=1
	mov	r0, rsp
	add	r0, 32
	mov	[r0], r2
	jmp	.LBB9_1
.LBB9_270:                              // %.loopexit44
                                        //   in Loop: Header=BB9_1 Depth=1
	mov	r0, rsp
	add	r0, 32
	mov	[r0], r4
	jmp	.LBB9_1
.LBB9_271:                              // %.loopexit46
                                        //   in Loop: Header=BB9_1 Depth=1
	mov	r0, rsp
	add	r0, 32
	mov	[r0], r3
	jmp	.LBB9_1
.LBB9_272:
	mov	r0, rsp
	mov	r1, rsp
	add	r0, 16
	mov	r4, [r0]
	add	r1, 32
	mov	r2, [r1]
	jz	r4, .LBB9_274
	jmp	.LBB9_273
.LBB9_273:
	add	r4, -1
	mov	r3, r2
	sub	r3, r4
	mov	r1, 31
	mov	r0, r3
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r0, rax
	mov	r1, r3
	call	__bit_and
	add	rax, r4
	add	rax, [rsp]
	mov	[rax], 0
.LBB9_274:
	mov	r1, -2147483648
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
	add	rax, 1
	add	r2, 1
	mov	r0, rax
	mov	r1, r2
	call	__bit_and
	add	rax, -1
	mov	x15, [rsp-16]
	mov	x14, [rsp-15]
	mov	x13, [rsp-14]
	mov	x12, [rsp-13]
	mov	x11, [rsp-12]
	mov	x10, [rsp-11]
	mov	x9, [rsp-10]
	mov	x8, [rsp-9]
	mov	x7, [rsp-8]
	mov	x6, [rsp-7]
	mov	x5, [rsp-6]
	mov	x4, [rsp-5]
	mov	x3, [rsp-4]
	mov	x2, [rsp-3]
	mov	x1, [rsp-2]
	mov	x0, [rsp-1]
	ret
// -- End function
// -- Begin function format_integer
format_integer:                         // @format_integer
// %bb.0:
	mov	[rsp-1], x0
	mov	[rsp-2], x1
	mov	[rsp-3], x2
	mov	[rsp-4], x3
	mov	[rsp-5], x4
	mov	[rsp-6], x5
	mov	[rsp-7], x6
	mov	[rsp-8], x7
	mov	[rsp-9], x8
	mov	[rsp-10], x9
	mov	t0, rsp
	add	t0, 4
	mov	x2, [t0]
	mov	t4, r5
	mov	t1, r4
	mov	t5, r3
	mov	t2, r2
	mov	t3, r1
	mov	r4, r0
	mov	r0, t3
	mov	r1, t2
	call	__bit_or
	mov	r3, rax
	mov	r0, r3
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r2, rax
	jnz	r3, .LBB10_2
	jmp	.LBB10_1
.LBB10_1:
	mov	r5, 0
	jz	x2, .LBB10_6
	jmp	.LBB10_2
.LBB10_2:
	mov	r0, t4
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r5, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	mov	x3, mcasm_static_067109f202df94d33292f33a22bdb1e2
	mov	r1, mcasm_static_297ce85d1d6061ce7e975a0742e97867
	sub	r1, x3
	add	rax, 1
	mov	r0, rax
	call	__bit_and
	jnz	r2, .LBB10_4
	jmp	.LBB10_3
.LBB10_3:
	mov	x4, rsp
	add	x3, rax
	mov	r5, 0
	mov	x0, t3
	mov	x1, t2
	jmp	.LBB10_5
.LBB10_4:
	mov	[rsp], 48
	jmp	.LBB10_6
.LBB10_5:                               // =>This Inner Loop Header: Depth=1
	mov	r3, 0
	mov	r0, x0
	mov	r1, x1
	mov	r2, t1
	call	__udivdi3
	mov	t6, rax
	mov	t7, t0
	mov	r0, t6
	mov	r1, t7
	call	__muldi3
	mov	r3, t0
	mov	r0, x0
	mov	r1, x1
	mov	r2, rax
	call	__subdi3
	add	rax, x3
	mov	r0, [rax]
	mov	r1, 255
	call	__bit_and
	add	r5, 1
	mov	[x4], rax
	mov	r0, x1
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	sub	x0, t1
	mov	r1, 31
	mov	r2, rax
	mov	r0, x0
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_xor
	add	rax, -1
	add	r2, 1
	mov	r0, r2
	mov	r1, rax
	call	__bit_and
	add	rax, 1
	add	x4, 4
	mov	x0, t6
	mov	x1, t7
	jnz	rax, .LBB10_5
	jmp	.LBB10_6
.LBB10_6:                               // %.loopexit22
	mov	r2, 45
	mov	x3, 0
	mov	r3, 0
	jnz	t5, .LBB10_9
	jmp	.LBB10_7
.LBB10_7:
	mov	r0, [rsp]
	mov	r2, 43
	jnz	r0, .LBB10_9
	jmp	.LBB10_8
.LBB10_8:
	mov	r0, rsp
	add	r0, 1
	mov	r0, [r0]
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r3, rax
	mov	r0, r3
	call	__bit_not
	add	rax, 1
	mov	r1, -32
	mov	r0, rax
	call	__bit_and
	mov	r2, rax
	add	r2, 32
.LBB10_9:
	mov	x5, 0
	mov	x4, 0
	mov	t6, 0
	mov	t5, 0
	jz	r6, .LBB10_17
	jmp	.LBB10_10
.LBB10_10:
	mov	r0, 8
	jne	t1, r0, .LBB10_14
	jmp	.LBB10_11
.LBB10_11:
	jz	r5, .LBB10_13
	jmp	.LBB10_12
.LBB10_12:
	mov	r0, rsp
	add	r0, r5
	add	r0, -1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r0, 48
	je	rax, r0, .LBB10_17
	jmp	.LBB10_13
.LBB10_13:
	mov	x3, 48
	mov	x5, 1
	mov	t6, 1
	jmp	.LBB10_17
.LBB10_14:
	mov	r0, t3
	mov	r1, t2
	call	__bit_or
	jz	rax, .LBB10_17
	jmp	.LBB10_15
.LBB10_15:
	mov	r0, 16
	jne	t1, r0, .LBB10_17
	jmp	.LBB10_16
.LBB10_16:
	mov	r0, t4
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	x5, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, 32
	mov	r0, rax
	call	__bit_and
	mov	t5, rax
	add	t5, 88
	mov	x3, 48
	mov	t6, 2
	mov	x4, 1
.LBB10_17:
	mov	x0, x2
	sub	x0, r5
	jg	x2, r5, .LBB10_19
	jmp	.LBB10_18
.LBB10_18:
	mov	x0, 0
.LBB10_19:
	mov	r1, rsp
	mov	r0, -1
	add	r1, 3
	mov	x1, x0
	jg	x2, r0, .LBB10_21
	jmp	.LBB10_20
.LBB10_20:
	mov	x1, 0
.LBB10_21:
	mov	t1, [r1]
	mov	r6, 0
	jg	x2, r0, .LBB10_23
	jmp	.LBB10_22
.LBB10_22:
	mov	r0, rsp
	add	r0, 2
	mov	r6, [r0]
.LBB10_23:
	mov	t2, x1
	add	t2, r5
	mov	r0, r3
	call	__bit_not
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	add	rax, t2
	add	rax, t6
	mov	t3, t1
	sub	t3, rax
	mov	t4, t3
	jg	t1, rax, .LBB10_25
	jmp	.LBB10_24
.LBB10_24:
	mov	t4, 0
.LBB10_25:
	mov	r0, r6
	mov	r1, r7
	call	__bit_or
	mov	t6, r4
	add	t6, 4
	mov	t7, r4
	add	t7, 8
	jnz	rax, .LBB10_35
	jmp	.LBB10_26
.LBB10_26:
	mov	r0, 1
	jl	t4, r0, .LBB10_35
	jmp	.LBB10_27
.LBB10_27:
	mov	r0, [t6]
	mov	x8, [t7]
	jz	r0, .LBB10_29
	jmp	.LBB10_28
.LBB10_28:                              // %.preheader20.preheader
	mov	x2, r4
	add	x2, 32
	mov	x6, 1
	mov	x7, r4
	add	x7, 16
	mov	x9, t3
	mov	t1, x8
	jmp	.LBB10_31
.LBB10_29:
	add	x8, t4
	mov	r0, r4
	add	r0, 32
	mov	[r0], x8
	jmp	.LBB10_35
.LBB10_30:                              //   in Loop: Header=BB10_31 Depth=1
	mov	r0, [x7]
	add	x9, -1
	mov	x8, t1
.LBB10_31:                              // %.preheader20
                                        // =>This Inner Loop Header: Depth=1
	add	t1, 1
	jz	r0, .LBB10_34
	jmp	.LBB10_32
.LBB10_32:                              // %.preheader20
                                        //   in Loop: Header=BB10_31 Depth=1
	mov	r1, -2147483648
	call	__bit_xor
	mov	t2, rax
	mov	r0, t1
	call	__bit_xor
	jge	rax, t2, .LBB10_34
	jmp	.LBB10_33
.LBB10_33:                              //   in Loop: Header=BB10_31 Depth=1
	add	x8, [r4]
	mov	[x8], 32
	mov	t1, 1
	add	t1, [x2]
.LBB10_34:                              //   in Loop: Header=BB10_31 Depth=1
	mov	[x2], t1
	jg	x9, x6, .LBB10_30
	jmp	.LBB10_35
.LBB10_35:                              // %.loopexit21
	jnz	r3, .LBB10_40
	jmp	.LBB10_36
.LBB10_36:
	mov	r0, [t6]
	jz	r0, .LBB10_39
	jmp	.LBB10_37
.LBB10_37:
	mov	t2, [t7]
	mov	r3, t2
	mov	r1, -2147483648
	add	r3, 1
	call	__bit_xor
	mov	t1, rax
	mov	r0, r3
	call	__bit_xor
	jge	rax, t1, .LBB10_39
	jmp	.LBB10_38
.LBB10_38:
	add	t2, [r4]
	mov	r1, 255
	mov	r0, r2
	call	__bit_and
	mov	[t2], rax
.LBB10_39:
	add	[t7], 1
.LBB10_40:
	jz	x5, .LBB10_45
	jmp	.LBB10_41
.LBB10_41:
	mov	r0, [t6]
	jz	r0, .LBB10_44
	jmp	.LBB10_42
.LBB10_42:
	mov	t1, [t7]
	mov	r2, t1
	mov	r1, -2147483648
	add	r2, 1
	call	__bit_xor
	mov	r3, rax
	mov	r0, r2
	call	__bit_xor
	jge	rax, r3, .LBB10_44
	jmp	.LBB10_43
.LBB10_43:
	add	t1, [r4]
	mov	[t1], x3
.LBB10_44:
	add	[t7], 1
.LBB10_45:
	jz	x4, .LBB10_50
	jmp	.LBB10_46
.LBB10_46:
	mov	r0, [t6]
	jz	r0, .LBB10_49
	jmp	.LBB10_47
.LBB10_47:
	mov	t1, [t7]
	mov	r2, t1
	mov	r1, -2147483648
	add	r2, 1
	call	__bit_xor
	mov	r3, rax
	mov	r0, r2
	call	__bit_xor
	jge	rax, r3, .LBB10_49
	jmp	.LBB10_48
.LBB10_48:
	add	t1, [r4]
	mov	r1, 255
	mov	r0, t5
	call	__bit_and
	mov	[t1], rax
.LBB10_49:
	add	[t7], 1
.LBB10_50:
	jnz	r7, .LBB10_61
	jmp	.LBB10_51
.LBB10_51:
	jz	r6, .LBB10_61
	jmp	.LBB10_52
.LBB10_52:
	mov	r0, 1
	jl	t4, r0, .LBB10_61
	jmp	.LBB10_53
.LBB10_53:
	mov	r0, [t6]
	mov	t5, [t7]
	jz	r0, .LBB10_55
	jmp	.LBB10_54
.LBB10_54:                              // %.preheader18.preheader
	mov	r6, r4
	add	r6, 32
	mov	t1, 1
	mov	t2, r4
	add	t2, 16
	mov	x2, t3
	mov	r2, t5
	jmp	.LBB10_57
.LBB10_55:
	add	t5, t4
	mov	r0, r4
	add	r0, 32
	mov	[r0], t5
	jmp	.LBB10_61
.LBB10_56:                              //   in Loop: Header=BB10_57 Depth=1
	mov	r0, [t2]
	add	x2, -1
	mov	t5, r2
.LBB10_57:                              // %.preheader18
                                        // =>This Inner Loop Header: Depth=1
	add	r2, 1
	jz	r0, .LBB10_60
	jmp	.LBB10_58
.LBB10_58:                              // %.preheader18
                                        //   in Loop: Header=BB10_57 Depth=1
	mov	r1, -2147483648
	call	__bit_xor
	mov	r3, rax
	mov	r0, r2
	call	__bit_xor
	jge	rax, r3, .LBB10_60
	jmp	.LBB10_59
.LBB10_59:                              //   in Loop: Header=BB10_57 Depth=1
	add	t5, [r4]
	mov	[t5], 48
	mov	r2, 1
	add	r2, [r6]
.LBB10_60:                              //   in Loop: Header=BB10_57 Depth=1
	mov	[r6], r2
	jg	x2, t1, .LBB10_56
	jmp	.LBB10_61
.LBB10_61:                              // %.loopexit19
	mov	r6, 1
	jl	x1, r6, .LBB10_70
	jmp	.LBB10_62
.LBB10_62:
	mov	r0, [t6]
	mov	x2, [t7]
	jz	r0, .LBB10_64
	jmp	.LBB10_63
.LBB10_63:                              // %.preheader16.preheader
	mov	t1, r4
	add	t1, 32
	mov	t2, 1
	mov	t5, r4
	add	t5, 16
	mov	r2, x2
	jmp	.LBB10_66
.LBB10_64:
	add	x2, x1
	mov	r0, r4
	add	r0, 32
	mov	[r0], x2
	jmp	.LBB10_70
.LBB10_65:                              //   in Loop: Header=BB10_66 Depth=1
	mov	r0, [t5]
	add	x0, -1
	mov	x2, r2
.LBB10_66:                              // %.preheader16
                                        // =>This Inner Loop Header: Depth=1
	add	r2, 1
	jz	r0, .LBB10_69
	jmp	.LBB10_67
.LBB10_67:                              // %.preheader16
                                        //   in Loop: Header=BB10_66 Depth=1
	mov	r1, -2147483648
	call	__bit_xor
	mov	r3, rax
	mov	r0, r2
	call	__bit_xor
	jge	rax, r3, .LBB10_69
	jmp	.LBB10_68
.LBB10_68:                              //   in Loop: Header=BB10_66 Depth=1
	add	x2, [r4]
	mov	[x2], 48
	mov	r2, 1
	add	r2, [t1]
.LBB10_69:                              //   in Loop: Header=BB10_66 Depth=1
	mov	[t1], r2
	jg	x0, t2, .LBB10_65
	jmp	.LBB10_70
.LBB10_70:                              // %.loopexit17
	jl	r5, r6, .LBB10_79
	jmp	.LBB10_71
.LBB10_71:
	mov	r2, [t6]
	mov	t1, [t7]
	jz	r2, .LBB10_73
	jmp	.LBB10_72
.LBB10_72:                              // %.preheader14.preheader
	mov	r1, 2
	mov	r0, r5
	call	__bit_shl
	mov	r0, rax
	call	__bit_shl
	mov	r0, r2
	mov	r2, rax
	add	r2, -16
	div	r2, 4
	add	r2, rsp
	mov	t2, r4
	add	t2, 32
	mov	t5, 1
	mov	x0, r4
	add	x0, 16
	mov	r3, t1
	jmp	.LBB10_75
.LBB10_73:
	add	t1, r5
	mov	r0, r4
	add	r0, 32
	mov	[r0], t1
	jmp	.LBB10_79
.LBB10_74:                              //   in Loop: Header=BB10_75 Depth=1
	mov	r0, [x0]
	add	r2, -4
	add	r5, -1
	mov	t1, r3
.LBB10_75:                              // %.preheader14
                                        // =>This Inner Loop Header: Depth=1
	add	r3, 1
	jz	r0, .LBB10_78
	jmp	.LBB10_76
.LBB10_76:                              // %.preheader14
                                        //   in Loop: Header=BB10_75 Depth=1
	mov	r1, -2147483648
	call	__bit_xor
	mov	r6, rax
	mov	r0, r3
	call	__bit_xor
	jge	rax, r6, .LBB10_78
	jmp	.LBB10_77
.LBB10_77:                              //   in Loop: Header=BB10_75 Depth=1
	mov	r0, [r2]
	mov	r1, 255
	call	__bit_and
	add	t1, [r4]
	mov	[t1], rax
	mov	r3, 1
	add	r3, [t2]
.LBB10_78:                              //   in Loop: Header=BB10_75 Depth=1
	mov	[t2], r3
	jg	r5, t5, .LBB10_74
	jmp	.LBB10_79
.LBB10_79:                              // %.loopexit15
	jz	r7, .LBB10_89
	jmp	.LBB10_80
.LBB10_80:                              // %.loopexit15
	mov	r0, 1
	jl	t4, r0, .LBB10_89
	jmp	.LBB10_81
.LBB10_81:
	mov	r0, [t6]
	mov	t1, [t7]
	jz	r0, .LBB10_83
	jmp	.LBB10_82
.LBB10_82:                              // %.preheader.preheader
	mov	r5, r4
	add	r5, 32
	mov	r6, 1
	mov	r7, r4
	add	r7, 16
	mov	r2, t1
	jmp	.LBB10_85
.LBB10_83:
	add	t1, t4
	add	r4, 32
	mov	[r4], t1
	jmp	.LBB10_89
.LBB10_84:                              //   in Loop: Header=BB10_85 Depth=1
	mov	r0, [r7]
	add	t3, -1
	mov	t1, r2
.LBB10_85:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	add	r2, 1
	jz	r0, .LBB10_88
	jmp	.LBB10_86
.LBB10_86:                              // %.preheader
                                        //   in Loop: Header=BB10_85 Depth=1
	mov	r1, -2147483648
	call	__bit_xor
	mov	r3, rax
	mov	r0, r2
	call	__bit_xor
	jge	rax, r3, .LBB10_88
	jmp	.LBB10_87
.LBB10_87:                              //   in Loop: Header=BB10_85 Depth=1
	add	t1, [r4]
	mov	[t1], 32
	mov	r2, 1
	add	r2, [r5]
.LBB10_88:                              //   in Loop: Header=BB10_85 Depth=1
	mov	[r5], r2
	jg	t3, r6, .LBB10_84
	jmp	.LBB10_89
.LBB10_89:                              // %.loopexit
	mov	x9, [rsp-10]
	mov	x8, [rsp-9]
	mov	x7, [rsp-8]
	mov	x6, [rsp-7]
	mov	x5, [rsp-6]
	mov	x4, [rsp-5]
	mov	x3, [rsp-4]
	mov	x2, [rsp-3]
	mov	x1, [rsp-2]
	mov	x0, [rsp-1]
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
// -- Begin function abs
abs:                                    // @abs
// %bb.0:
	mov	r1, -1
	mov	rax, r0
	jg	rax, r1, .LBB12_2
	jmp	.LBB12_1
.LBB12_1:
	mov	r0, 0
	sub	r0, rax
	mov	rax, r0
.LBB12_2:
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
// -- Begin function gcvt
gcvt:                                   // @gcvt
// %bb.0:
	mov	[rsp-1], x0
	mov	r4, r3
	mov	r5, r1
	mov	r6, r0
	jz	r4, .LBB15_103
	jmp	.LBB15_1
.LBB15_1:
	mov	r0, 0
	jg	r2, r0, .LBB15_3
	jmp	.LBB15_2
.LBB15_2:
	mov	[r4], 0
	jmp	.LBB15_103
.LBB15_3:
	mov	r0, 112
	sub	r0, r2
	mov	r1, 31
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, r2
	add	r1, -112
	mov	r0, rax
	call	__bit_and
	mov	r3, rax
	add	r3, -1048064
	mov	r1, 31
	mov	r0, r3
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r0, rax
	mov	r1, r3
	call	__bit_and
	mov	r7, rax
	mov	r3, rsp
	mov	t1, r7
	mov	r0, 625
	add	t1, 1048576
	jl	r2, r0, .LBB15_6
	jmp	.LBB15_4
.LBB15_4:
	mov	r0, t1
	call	malloc
	mov	r3, rax
	jnz	r3, .LBB15_6
	jmp	.LBB15_5
.LBB15_5:
	mov	r0, r6
	mov	r1, r5
	mov	r3, r4
	call	gcvt_fast
	jmp	.LBB15_103
.LBB15_6:
	mov	t6, r2
	add	r2, -1
	add	r7, 1048176
	mov	r0, r6
	mov	r1, r5
	call	d2exp_buffered_n
	mov	r2, rax
	mov	r1, -2147483648
	add	r7, 399
	mov	r0, r2
	call	__bit_xor
	mov	t2, rax
	mov	r0, t1
	call	__bit_xor
	jl	t2, rax, .LBB15_8
	jmp	.LBB15_7
.LBB15_7:
	mov	r2, r7
.LBB15_8:
	add	r2, r3
	mov	r1, 3
	mov	[r2], 0
	mov	r0, r3
	call	__bit_and
	mov	t3, rax
	jz	t3, .LBB15_10
	jmp	.LBB15_9
.LBB15_9:
	mov	t2, [r3]
	mov	r2, t6
	jmp	.LBB15_11
.LBB15_10:
	mov	t2, [r3]
	mov	r0, 78
	mov	r2, t6
	je	t2, r0, .LBB15_25
	jmp	.LBB15_11
.LBB15_11:
	mov	r1, 255
	mov	r0, t2
	call	__bit_and
	mov	t4, 0
	mov	t7, mcasm_static_85f5982e2bd1a4d205f1ac51ed6294b3
	jz	rax, .LBB15_16
	jmp	.LBB15_12
.LBB15_12:                              // %.preheader.i.preheader
	mov	x0, r3
	add	x0, 4
	mov	t4, t2
.LBB15_13:                              // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [t7]
	mov	r1, 255
	call	__bit_and
	mov	t5, rax
	mov	r0, t4
	call	__bit_and
	jne	rax, t5, .LBB15_15
	jmp	.LBB15_14
.LBB15_14:                              //   in Loop: Header=BB15_13 Depth=1
	mov	t4, [x0]
	add	t7, 1
	mov	r0, t4
	call	__bit_and
	add	x0, 4
	mov	r0, 0
	jnz	rax, .LBB15_13
	jmp	.LBB15_15
.LBB15_15:
	call	__bit_and
	mov	t4, rax
.LBB15_16:                              // %strcmp.exit
	mov	r0, [t7]
	call	__bit_and
	je	t4, rax, .LBB15_25
	jmp	.LBB15_17
.LBB15_17:
	jnz	t3, .LBB15_19
	jmp	.LBB15_18
.LBB15_18:
	mov	t2, [r3]
	mov	r0, 110
	je	t2, r0, .LBB15_25
	jmp	.LBB15_19
.LBB15_19:
	mov	r0, t2
	call	__bit_and
	mov	t4, 0
	mov	t7, mcasm_static_8da01a94af81936d9fd310472be1e764
	jz	rax, .LBB15_24
	jmp	.LBB15_20
.LBB15_20:                              // %.preheader.i4.preheader
	mov	x0, r3
	add	x0, 4
	mov	t4, t2
.LBB15_21:                              // %.preheader.i4
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [t7]
	mov	r1, 255
	call	__bit_and
	mov	t5, rax
	mov	r0, t4
	call	__bit_and
	jne	rax, t5, .LBB15_23
	jmp	.LBB15_22
.LBB15_22:                              //   in Loop: Header=BB15_21 Depth=1
	mov	t4, [x0]
	add	t7, 1
	mov	r0, t4
	call	__bit_and
	add	x0, 4
	mov	r0, 0
	jnz	rax, .LBB15_21
	jmp	.LBB15_23
.LBB15_23:
	call	__bit_and
	mov	t4, rax
.LBB15_24:                              // %strcmp.exit6
	mov	r0, [t7]
	call	__bit_and
	jne	t4, rax, .LBB15_43
	jmp	.LBB15_25
.LBB15_25:                              // %strcmp.exit.thread
	mov	r0, r4
	add	r0, 1
	mov	[r4], 110
	mov	r1, r4
	add	r1, 2
	mov	[r0], 0
	mov	r0, r4
	add	r0, 3
	mov	[r1], 0
	mov	r1, -2147483648
	mov	[r0], 0
	mov	r0, r2
	call	__bit_xor
	mov	r0, -2147483023
	jl	rax, r0, .LBB15_103
	jmp	.LBB15_26
.LBB15_26:
	mov	r0, 16384
	mov	r1, [r0]
	mov	r2, 1296125004
	je	r1, r2, .LBB15_28
	jmp	.LBB15_27
.LBB15_27:
	mov	[r0], 1296125004
	mov	r0, 16385
	mov	[r0], 16387
	mov	r0, 16386
	mov	[r0], 0
	mov	r5, r3
	add	r5, -1
	mov	r6, [r5]
	mov	r7, 0
	mov	r2, 0
	mov	rax, 0
	jmp	.LBB15_33
.LBB15_28:
	mov	r0, 16386
	mov	r2, [r0]
	mov	r5, r3
	add	r5, -1
	mov	r6, [r5]
	mov	r0, r2
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r7, 0
	jz	r2, .LBB15_33
	jmp	.LBB15_29
.LBB15_29:
	jge	r2, r5, .LBB15_33
	jmp	.LBB15_30
.LBB15_30:                              // %.preheader.i7.preheader
.LBB15_31:                              // %.preheader.i7
                                        // =>This Inner Loop Header: Depth=1
	mov	r7, r2
	mov	r0, r7
	add	r0, 1
	mov	r2, [r0]
	mov	r0, r2
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	jz	r2, .LBB15_33
	jmp	.LBB15_32
.LBB15_32:                              // %.preheader.i7
                                        //   in Loop: Header=BB15_31 Depth=1
	jl	r2, r5, .LBB15_31
	jmp	.LBB15_33
.LBB15_33:                              // %.loopexit.i
	jne	r2, r5, .LBB15_35
	jmp	.LBB15_34
.LBB15_34:
	call	abort
.LBB15_35:
	mov	r0, 16386
	jz	r7, .LBB15_39
	jmp	.LBB15_36
.LBB15_36:
	mov	r0, [r7]
	mov	r1, r0
	add	r1, r7
	jne	r1, r5, .LBB15_38
	jmp	.LBB15_37
.LBB15_37:
	add	r0, r6
	mov	[r7], r0
	mov	r5, r7
	jmp	.LBB15_40
.LBB15_38:
	add	r7, 1
	mov	r0, r7
.LBB15_39:
	mov	[r0], r5
	mov	[r3], r2
.LBB15_40:
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB15_103
	jmp	.LBB15_41
.LBB15_41:
	mov	r0, [r5]
	mov	r1, r0
	add	r1, r5
	jne	r1, r2, .LBB15_103
	jmp	.LBB15_42
.LBB15_42:
	add	r0, [r2]
	mov	[r5], r0
	add	r2, 1
	mov	r0, [r2]
	add	r5, 1
	mov	[r5], r0
	jmp	.LBB15_103
.LBB15_43:
	jnz	t3, .LBB15_45
	jmp	.LBB15_44
.LBB15_44:
	mov	t2, [r3]
	mov	r0, 73
	je	t2, r0, .LBB15_59
	jmp	.LBB15_45
.LBB15_45:
	mov	r0, t2
	call	__bit_and
	mov	t4, 0
	mov	t7, mcasm_static_182f086555dd68bfb237d591fe2273c9
	jz	rax, .LBB15_50
	jmp	.LBB15_46
.LBB15_46:                              // %.preheader.i8.preheader
	mov	x0, r3
	add	x0, 4
	mov	t4, t2
.LBB15_47:                              // %.preheader.i8
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [t7]
	mov	r1, 255
	call	__bit_and
	mov	t5, rax
	mov	r0, t4
	call	__bit_and
	jne	rax, t5, .LBB15_49
	jmp	.LBB15_48
.LBB15_48:                              //   in Loop: Header=BB15_47 Depth=1
	mov	t4, [x0]
	add	t7, 1
	mov	r0, t4
	call	__bit_and
	add	x0, 4
	mov	r0, 0
	jnz	rax, .LBB15_47
	jmp	.LBB15_49
.LBB15_49:
	call	__bit_and
	mov	t4, rax
.LBB15_50:                              // %strcmp.exit11
	mov	r0, [t7]
	call	__bit_and
	je	t4, rax, .LBB15_59
	jmp	.LBB15_51
.LBB15_51:
	jnz	t3, .LBB15_53
	jmp	.LBB15_52
.LBB15_52:
	mov	t2, [r3]
	mov	r0, 105
	je	t2, r0, .LBB15_59
	jmp	.LBB15_53
.LBB15_53:
	mov	r0, t2
	call	__bit_and
	mov	t4, 0
	mov	t7, mcasm_static_ccfcec774c0173bfea25317fcbd7a74b
	jz	rax, .LBB15_58
	jmp	.LBB15_54
.LBB15_54:                              // %.preheader.i12.preheader
	mov	x0, r3
	add	x0, 4
	mov	t4, t2
.LBB15_55:                              // %.preheader.i12
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [t7]
	mov	r1, 255
	call	__bit_and
	mov	t5, rax
	mov	r0, t4
	call	__bit_and
	jne	rax, t5, .LBB15_57
	jmp	.LBB15_56
.LBB15_56:                              //   in Loop: Header=BB15_55 Depth=1
	mov	t4, [x0]
	add	t7, 1
	mov	r0, t4
	call	__bit_and
	add	x0, 4
	mov	r0, 0
	jnz	rax, .LBB15_55
	jmp	.LBB15_57
.LBB15_57:
	call	__bit_and
	mov	t4, rax
.LBB15_58:                              // %strcmp.exit15
	mov	r0, [t7]
	call	__bit_and
	jne	t4, rax, .LBB15_77
	jmp	.LBB15_59
.LBB15_59:                              // %strcmp.exit11.thread
	mov	r0, r4
	add	r0, 1
	mov	[r4], 105
	mov	r1, r4
	add	r1, 2
	mov	[r0], 0
	mov	r0, r4
	add	r0, 3
	mov	[r1], 0
	mov	r1, -2147483648
	mov	[r0], 0
	mov	r0, r2
	call	__bit_xor
	mov	r0, -2147483023
	jl	rax, r0, .LBB15_103
	jmp	.LBB15_60
.LBB15_60:
	mov	r0, 16384
	mov	r1, [r0]
	mov	r2, 1296125004
	je	r1, r2, .LBB15_62
	jmp	.LBB15_61
.LBB15_61:
	mov	[r0], 1296125004
	mov	r0, 16385
	mov	[r0], 16387
	mov	r0, 16386
	mov	[r0], 0
	mov	r5, r3
	add	r5, -1
	mov	r6, [r5]
	mov	r7, 0
	mov	r2, 0
	mov	rax, 0
	jmp	.LBB15_67
.LBB15_62:
	mov	r0, 16386
	mov	r2, [r0]
	mov	r5, r3
	add	r5, -1
	mov	r6, [r5]
	mov	r0, r2
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r7, 0
	jz	r2, .LBB15_67
	jmp	.LBB15_63
.LBB15_63:
	jge	r2, r5, .LBB15_67
	jmp	.LBB15_64
.LBB15_64:                              // %.preheader.i19.preheader
.LBB15_65:                              // %.preheader.i19
                                        // =>This Inner Loop Header: Depth=1
	mov	r7, r2
	mov	r0, r7
	add	r0, 1
	mov	r2, [r0]
	mov	r0, r2
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	jz	r2, .LBB15_67
	jmp	.LBB15_66
.LBB15_66:                              // %.preheader.i19
                                        //   in Loop: Header=BB15_65 Depth=1
	jl	r2, r5, .LBB15_65
	jmp	.LBB15_67
.LBB15_67:                              // %.loopexit.i18
	jne	r2, r5, .LBB15_69
	jmp	.LBB15_68
.LBB15_68:
	call	abort
.LBB15_69:
	mov	r0, 16386
	jz	r7, .LBB15_73
	jmp	.LBB15_70
.LBB15_70:
	mov	r0, [r7]
	mov	r1, r0
	add	r1, r7
	jne	r1, r5, .LBB15_72
	jmp	.LBB15_71
.LBB15_71:
	add	r0, r6
	mov	[r7], r0
	mov	r5, r7
	jmp	.LBB15_74
.LBB15_72:
	add	r7, 1
	mov	r0, r7
.LBB15_73:
	mov	[r0], r5
	mov	[r3], r2
.LBB15_74:
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB15_103
	jmp	.LBB15_75
.LBB15_75:
	mov	r0, [r5]
	mov	r1, r0
	add	r1, r5
	jne	r1, r2, .LBB15_103
	jmp	.LBB15_76
.LBB15_76:
	add	r0, [r2]
	mov	[r5], r0
	add	r2, 1
	mov	r0, [r2]
	add	r5, 1
	mov	[r5], r0
	jmp	.LBB15_103
.LBB15_77:
	jnz	t3, .LBB15_79
	jmp	.LBB15_78
.LBB15_78:
	mov	t2, [r3]
	mov	r0, 45
	je	t2, r0, .LBB15_93
	jmp	.LBB15_79
.LBB15_79:
	mov	r0, t2
	call	__bit_and
	mov	t4, 0
	mov	t7, mcasm_static_2d61138acd3f842e66affc15dc4b4acc
	jz	rax, .LBB15_84
	jmp	.LBB15_80
.LBB15_80:                              // %.preheader.i21.preheader
	mov	x0, r3
	add	x0, 4
	mov	t4, t2
.LBB15_81:                              // %.preheader.i21
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [t7]
	mov	r1, 255
	call	__bit_and
	mov	t5, rax
	mov	r0, t4
	call	__bit_and
	jne	rax, t5, .LBB15_83
	jmp	.LBB15_82
.LBB15_82:                              //   in Loop: Header=BB15_81 Depth=1
	mov	t4, [x0]
	add	t7, 1
	mov	r0, t4
	call	__bit_and
	add	x0, 4
	mov	r0, 0
	jnz	rax, .LBB15_81
	jmp	.LBB15_83
.LBB15_83:
	call	__bit_and
	mov	t4, rax
.LBB15_84:                              // %strcmp.exit24
	mov	r0, [t7]
	call	__bit_and
	je	t4, rax, .LBB15_93
	jmp	.LBB15_85
.LBB15_85:
	jnz	t3, .LBB15_87
	jmp	.LBB15_86
.LBB15_86:
	mov	t2, [r3]
	mov	r0, 45
	je	t2, r0, .LBB15_93
	jmp	.LBB15_87
.LBB15_87:
	mov	r0, t2
	call	__bit_and
	mov	t3, 0
	mov	t4, mcasm_static_2a332ce1019f7d241215866e128eca51
	jz	rax, .LBB15_92
	jmp	.LBB15_88
.LBB15_88:                              // %.preheader.i25.preheader
	mov	t5, r3
	add	t5, 4
.LBB15_89:                              // %.preheader.i25
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [t4]
	mov	r1, 255
	call	__bit_and
	mov	t3, rax
	mov	r0, t2
	call	__bit_and
	jne	rax, t3, .LBB15_91
	jmp	.LBB15_90
.LBB15_90:                              //   in Loop: Header=BB15_89 Depth=1
	mov	t2, [t5]
	add	t4, 1
	mov	r0, t2
	call	__bit_and
	add	t5, 4
	mov	r0, 0
	jnz	rax, .LBB15_89
	jmp	.LBB15_91
.LBB15_91:
	call	__bit_and
	mov	t3, rax
.LBB15_92:                              // %strcmp.exit28
	mov	r0, [t4]
	call	__bit_and
	jne	t3, rax, .LBB15_95
	jmp	.LBB15_93
.LBB15_93:                              // %strcmp.exit24.thread
	mov	r0, r4
	add	r0, 1
	mov	[r4], 45
	mov	r1, r4
	add	r1, 2
	mov	[r0], 0
	mov	r0, r4
	add	r0, 3
	mov	[r1], 0
	mov	r5, r4
	add	r5, 4
	mov	[r0], 0
	mov	r1, -2147483648
	mov	[r5], 105
	mov	r0, r2
	call	__bit_xor
	mov	r0, -2147483023
	jl	rax, r0, .LBB15_103
	jmp	.LBB15_94
.LBB15_94:
	mov	r0, r3
	call	free
	jmp	.LBB15_103
.LBB15_95:
	mov	r0, r3
	mov	r1, rsp
	call	parse_exp10
	jnz	rax, .LBB15_101
	jmp	.LBB15_96
.LBB15_96:
	mov	r0, [rsp]
	mov	r1, -4
	jl	r0, r1, .LBB15_101
	jmp	.LBB15_97
.LBB15_97:
	jge	r0, r2, .LBB15_101
	jmp	.LBB15_98
.LBB15_98:
	call	__bit_not
	mov	t2, rax
	add	t2, r2
	mov	r1, -2147483648
	mov	r2, -2147483648
	mov	r0, t2
	call	__bit_xor
	sub	r2, rax
	mov	r1, 31
	mov	r0, r2
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r0, rax
	mov	r1, t2
	call	__bit_and
	mov	r0, r6
	mov	r1, r5
	mov	r2, rax
	call	d2fixed_buffered_n
	mov	r1, -2147483648
	mov	r2, rax
	mov	r0, r2
	call	__bit_xor
	mov	r5, rax
	mov	r0, t1
	call	__bit_xor
	jl	r5, rax, .LBB15_100
	jmp	.LBB15_99
.LBB15_99:
	mov	r2, r7
.LBB15_100:
	add	r2, r3
	mov	[r2], 0
	mov	r2, t6
.LBB15_101:
	mov	r0, r3
	call	trim_trailing_zeros_g
	call	strlen
	add	rax, 1
	mov	r0, r4
	mov	r1, r3
	mov	r5, r2
	mov	r2, rax
	call	memcpy
	mov	r1, -2147483648
	mov	r0, r5
	call	__bit_xor
	mov	r0, -2147483023
	jl	rax, r0, .LBB15_103
	jmp	.LBB15_102
.LBB15_102:
	mov	r0, r3
	call	free
.LBB15_103:                             // %free.exit
	mov	rax, r4
	mov	x0, [rsp-1]
	ret
// -- End function
// -- Begin function parse_exp10
parse_exp10:                            // @parse_exp10
// %bb.0:
	mov	r2, r1
	mov	r1, 3
	mov	r3, r0
	call	__bit_and
	mov	r5, rax
	jz	r5, .LBB16_3
	jmp	.LBB16_1
.LBB16_1:
	mov	r4, [r3]
	mov	r1, 255
	mov	r0, r4
	call	__bit_and
	mov	r6, -1
	jz	rax, .LBB16_36
	jmp	.LBB16_2
.LBB16_2:                               // %.lr.ph.i.preheader
	mov	r6, 101
	mov	r0, r4
	mov	r7, r3
	jmp	.LBB16_5
.LBB16_3:
	mov	r4, [r3]
	mov	r0, 16843008
	sub	r0, r4
	mov	r1, r4
	call	__bit_or
	mov	r1, -2139062144
	mov	t1, -2139062144
	mov	r0, rax
	call	__bit_and
	mov	r7, r3
	jne	rax, t1, .LBB16_9
	jmp	.LBB16_4
.LBB16_4:                               // %.preheader5.i.preheader
	mov	r6, r4
	mov	r7, r3
	jmp	.LBB16_7
.LBB16_5:                               // %.lr.ph.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 255
	call	__bit_and
	je	rax, r6, .LBB16_27
	jmp	.LBB16_6
.LBB16_6:                               //   in Loop: Header=BB16_5 Depth=1
	mov	t1, r7
	add	r7, 4
	mov	r0, [r7]
	add	t1, 1
	call	__bit_and
	mov	r7, t1
	jz	rax, .LBB16_13
	jmp	.LBB16_5
.LBB16_7:                               // %.preheader5.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 1701143909
	mov	r0, r6
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, r6
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, t1, .LBB16_9
	jmp	.LBB16_8
.LBB16_8:                               //   in Loop: Header=BB16_7 Depth=1
	mov	t2, r7
	add	r7, 16
	mov	r6, [r7]
	mov	r0, 16843008
	sub	r0, r6
	add	t2, 4
	mov	r1, r6
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	mov	r7, t2
	je	rax, t1, .LBB16_7
	jmp	.LBB16_9
.LBB16_9:                               // %.loopexit6.i.preheader
	add	r7, -4
	mov	r6, 101
	mov	r1, 255
.LBB16_10:                              // %.loopexit6.i
                                        // =>This Inner Loop Header: Depth=1
	add	r7, 4
	mov	r0, [r7]
	call	__bit_and
	je	rax, r6, .LBB16_26
	jmp	.LBB16_11
.LBB16_11:                              // %.loopexit6.i
                                        //   in Loop: Header=BB16_10 Depth=1
	jnz	rax, .LBB16_10
	jmp	.LBB16_12
.LBB16_12:                              // %.loopexit.loopexit
.LBB16_13:                              // %.loopexit
	jz	r5, .LBB16_16
	jmp	.LBB16_14
.LBB16_14:
	mov	r1, 255
	mov	r0, r4
	call	__bit_and
	mov	r6, -1
	jz	rax, .LBB16_36
	jmp	.LBB16_15
.LBB16_15:                              // %.lr.ph.i2.preheader
	mov	r5, 69
	mov	r7, r3
	jmp	.LBB16_18
.LBB16_16:
	mov	r4, [r3]
	mov	r0, 16843008
	sub	r0, r4
	mov	r1, r4
	call	__bit_or
	mov	r1, -2139062144
	mov	r5, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, r5, .LBB16_22
	jmp	.LBB16_17
.LBB16_17:                              // %.preheader5.i4.preheader
	jmp	.LBB16_20
.LBB16_18:                              // %.lr.ph.i2
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 255
	mov	r0, r4
	call	__bit_and
	je	rax, r5, .LBB16_27
	jmp	.LBB16_19
.LBB16_19:                              //   in Loop: Header=BB16_18 Depth=1
	mov	r3, r7
	add	r7, 4
	mov	r4, [r7]
	add	r3, 1
	mov	r0, r4
	call	__bit_and
	mov	r7, r3
	jz	rax, .LBB16_36
	jmp	.LBB16_18
.LBB16_20:                              // %.preheader5.i4
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 1162167621
	mov	r0, r4
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, r4
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, r5, .LBB16_22
	jmp	.LBB16_21
.LBB16_21:                              //   in Loop: Header=BB16_20 Depth=1
	mov	r6, r3
	add	r3, 16
	mov	r4, [r3]
	mov	r0, 16843008
	sub	r0, r4
	add	r6, 4
	mov	r1, r4
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	mov	r3, r6
	je	rax, r5, .LBB16_20
	jmp	.LBB16_22
.LBB16_22:                              // %.loopexit6.i3.preheader
	add	r3, -4
	mov	r4, 69
	mov	r7, r3
	mov	r1, 255
.LBB16_23:                              // %.loopexit6.i3
                                        // =>This Inner Loop Header: Depth=1
	add	r7, 4
	mov	r0, [r7]
	call	__bit_and
	jz	rax, .LBB16_35
	jmp	.LBB16_24
.LBB16_24:                              // %.loopexit6.i3
                                        //   in Loop: Header=BB16_23 Depth=1
	jne	rax, r4, .LBB16_23
	jmp	.LBB16_25
.LBB16_25:                              // %strchr.exit.loopexit
	jmp	.LBB16_27
.LBB16_26:                              // %strchr.exit.loopexit3
.LBB16_27:                              // %strchr.exit
	mov	r5, r7
	add	r5, 1
	mov	r0, [r5]
	mov	r1, 255
	call	__bit_and
	mov	r0, 45
	je	rax, r0, .LBB16_30
	jmp	.LBB16_28
.LBB16_28:                              // %strchr.exit
	mov	r0, 43
	mov	t1, 1
	jne	rax, r0, .LBB16_31
	jmp	.LBB16_29
.LBB16_29:
	add	r7, 2
	mov	r5, r7
	jmp	.LBB16_31
.LBB16_30:
	add	r7, 2
	mov	t1, -1
	mov	r5, r7
.LBB16_31:
	mov	r3, [r5]
	mov	r0, r3
	add	r0, -58
	call	__bit_and
	mov	r1, -2147483648
	mov	r6, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, -2147483402
	jl	rax, r0, .LBB16_36
	jmp	.LBB16_32
.LBB16_32:                              // %.preheader.preheader
	add	r5, 4
	mov	r4, 0
	mov	r6, -2147483638
.LBB16_33:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r7, r4
	add	r3, -48
	mov	r1, 255
	mul	r7, 10
	mov	r0, r3
	call	__bit_and
	mov	r3, [r5]
	mov	r4, rax
	mov	r0, r3
	add	r0, -48
	add	r4, r7
	call	__bit_and
	mov	r1, -2147483648
	add	r5, 4
	mov	r0, rax
	call	__bit_xor
	jl	rax, r6, .LBB16_33
	jmp	.LBB16_34
.LBB16_34:
	mul	r4, t1
	mov	[r2], r4
	mov	r6, 0
	jmp	.LBB16_36
.LBB16_35:                              // %strchr.exit5.thread.loopexit
	mov	r6, -1
.LBB16_36:                              // %strchr.exit5.thread
	mov	rax, r6
	ret
// -- End function
// -- Begin function trim_trailing_zeros_g
trim_trailing_zeros_g:                  // @trim_trailing_zeros_g
// %bb.0:
	mov	r1, 3
	mov	r3, r0
	call	__bit_and
	mov	r5, rax
	jz	r5, .LBB17_3
	jmp	.LBB17_1
.LBB17_1:
	mov	r4, [r3]
	mov	r1, 255
	mov	r0, r4
	call	__bit_and
	mov	r0, 0
	mov	r2, r3
	jz	rax, .LBB17_34
	jmp	.LBB17_2
.LBB17_2:                               // %.lr.ph.i.preheader
	mov	r6, 101
	mov	r0, r4
	mov	r2, r3
	jmp	.LBB17_5
.LBB17_3:
	mov	r4, [r3]
	mov	r0, 16843008
	sub	r0, r4
	mov	r1, r4
	call	__bit_or
	mov	r1, -2139062144
	mov	r7, -2139062144
	mov	r0, rax
	call	__bit_and
	mov	r2, r3
	jne	rax, r7, .LBB17_9
	jmp	.LBB17_4
.LBB17_4:                               // %.preheader5.i.preheader
	mov	r6, r4
	mov	r2, r3
	jmp	.LBB17_7
.LBB17_5:                               // %.lr.ph.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 255
	call	__bit_and
	je	rax, r6, .LBB17_37
	jmp	.LBB17_6
.LBB17_6:                               //   in Loop: Header=BB17_5 Depth=1
	mov	r7, r2
	add	r2, 4
	mov	r0, [r2]
	add	r7, 1
	call	__bit_and
	mov	r2, r7
	jz	rax, .LBB17_13
	jmp	.LBB17_5
.LBB17_7:                               // %.preheader5.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 1701143909
	mov	r0, r6
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, r6
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, r7, .LBB17_9
	jmp	.LBB17_8
.LBB17_8:                               //   in Loop: Header=BB17_7 Depth=1
	mov	t1, r2
	add	r2, 16
	mov	r6, [r2]
	mov	r0, 16843008
	sub	r0, r6
	add	t1, 4
	mov	r1, r6
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	mov	r2, t1
	je	rax, r7, .LBB17_7
	jmp	.LBB17_9
.LBB17_9:                               // %.loopexit6.i.preheader
	add	r2, -4
	mov	r6, 101
	mov	r1, 255
.LBB17_10:                              // %.loopexit6.i
                                        // =>This Inner Loop Header: Depth=1
	add	r2, 4
	mov	r0, [r2]
	call	__bit_and
	je	rax, r6, .LBB17_36
	jmp	.LBB17_11
.LBB17_11:                              // %.loopexit6.i
                                        //   in Loop: Header=BB17_10 Depth=1
	jnz	rax, .LBB17_10
	jmp	.LBB17_12
.LBB17_12:                              // %.loopexit28.loopexit
.LBB17_13:                              // %.loopexit28
	jz	r5, .LBB17_16
	jmp	.LBB17_14
.LBB17_14:
	mov	r1, 255
	mov	r0, r4
	call	__bit_and
	mov	r0, 0
	mov	r2, r3
	jz	rax, .LBB17_34
	jmp	.LBB17_15
.LBB17_15:                              // %.lr.ph.i5.preheader
	mov	r6, 69
	mov	r0, r4
	mov	r2, r3
	jmp	.LBB17_18
.LBB17_16:
	mov	r4, [r3]
	mov	r0, 16843008
	sub	r0, r4
	mov	r1, r4
	call	__bit_or
	mov	r1, -2139062144
	mov	r7, -2139062144
	mov	r0, rax
	call	__bit_and
	mov	r2, r3
	jne	rax, r7, .LBB17_22
	jmp	.LBB17_17
.LBB17_17:                              // %.preheader5.i7.preheader
	mov	r6, r4
	mov	r2, r3
	jmp	.LBB17_20
.LBB17_18:                              // %.lr.ph.i5
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 255
	call	__bit_and
	je	rax, r6, .LBB17_37
	jmp	.LBB17_19
.LBB17_19:                              //   in Loop: Header=BB17_18 Depth=1
	mov	r7, r2
	add	r2, 4
	mov	r0, [r2]
	add	r7, 1
	call	__bit_and
	mov	r2, r7
	jz	rax, .LBB17_26
	jmp	.LBB17_18
.LBB17_20:                              // %.preheader5.i7
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 1162167621
	mov	r0, r6
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, r6
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, r7, .LBB17_22
	jmp	.LBB17_21
.LBB17_21:                              //   in Loop: Header=BB17_20 Depth=1
	mov	t1, r2
	add	r2, 16
	mov	r6, [r2]
	mov	r0, 16843008
	sub	r0, r6
	add	t1, 4
	mov	r1, r6
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	mov	r2, t1
	je	rax, r7, .LBB17_20
	jmp	.LBB17_22
.LBB17_22:                              // %.loopexit6.i6.preheader
	add	r2, -4
	mov	r6, 69
	mov	r1, 255
.LBB17_23:                              // %.loopexit6.i6
                                        // =>This Inner Loop Header: Depth=1
	add	r2, 4
	mov	r0, [r2]
	call	__bit_and
	je	rax, r6, .LBB17_35
	jmp	.LBB17_24
.LBB17_24:                              // %.loopexit6.i6
                                        //   in Loop: Header=BB17_23 Depth=1
	jnz	rax, .LBB17_23
	jmp	.LBB17_25
.LBB17_25:                              // %.loopexit.loopexit
.LBB17_26:                              // %.loopexit
	jnz	r5, .LBB17_28
	jmp	.LBB17_27
.LBB17_27:                              // %.preheader1.i.preheader
	mov	r7, r3
	add	r7, -4
	mov	t1, -2139062144
	mov	r6, r3
	jmp	.LBB17_31
.LBB17_28:                              // %.thread20
	mov	r1, 255
	mov	r0, r4
	call	__bit_and
	mov	r0, 0
	mov	r2, r3
	jz	rax, .LBB17_34
	jmp	.LBB17_29
.LBB17_29:                              // %.preheader2.i.preheader
	mov	r6, r3
	add	r6, 4
	mov	r2, r3
.LBB17_30:                              // %.preheader2.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [r6]
	call	__bit_and
	add	r2, 4
	add	r6, 4
	mov	r0, r4
	jz	rax, .LBB17_34
	jmp	.LBB17_30
.LBB17_31:                              // %.preheader1.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, [r6]
	mov	r0, 16843008
	sub	r0, r1
	mov	r2, r7
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	add	r6, 4
	add	r7, 16
	je	rax, t1, .LBB17_31
	jmp	.LBB17_32
.LBB17_32:                              // %.preheader.i.preheader
	mov	r7, -16
	mov	r1, 255
.LBB17_33:                              // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r6
	add	r0, r7
	mov	r0, [r0]
	call	__bit_and
	add	r2, 4
	add	r7, 4
	mov	r0, r4
	jnz	rax, .LBB17_33
	jmp	.LBB17_34
.LBB17_34:                              // %strlen.exit
	mov	r4, r0
	jmp	.LBB17_37
.LBB17_35:                              // %strchr.exit.loopexit
	jmp	.LBB17_37
.LBB17_36:                              // %strchr.exit.loopexit5
.LBB17_37:                              // %strchr.exit
	jz	r5, .LBB17_40
	jmp	.LBB17_38
.LBB17_38:
	mov	r1, 255
	mov	r0, r4
	call	__bit_and
	jz	rax, .LBB17_84
	jmp	.LBB17_39
.LBB17_39:                              // %.lr.ph.i9.preheader
	mov	r5, 46
	jmp	.LBB17_42
.LBB17_40:
	mov	r4, [r3]
	mov	r0, 16843008
	sub	r0, r4
	mov	r1, r4
	call	__bit_or
	mov	r1, -2139062144
	mov	r5, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, r5, .LBB17_46
	jmp	.LBB17_41
.LBB17_41:                              // %.preheader5.i11.preheader
	jmp	.LBB17_44
.LBB17_42:                              // %.lr.ph.i9
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 255
	mov	r0, r4
	call	__bit_and
	je	rax, r5, .LBB17_50
	jmp	.LBB17_43
.LBB17_43:                              //   in Loop: Header=BB17_42 Depth=1
	mov	r6, r3
	add	r3, 4
	mov	r4, [r3]
	add	r6, 1
	mov	r0, r4
	call	__bit_and
	mov	r3, r6
	jz	rax, .LBB17_84
	jmp	.LBB17_42
.LBB17_44:                              // %.preheader5.i11
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 774778414
	mov	r0, r4
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, r4
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, r5, .LBB17_46
	jmp	.LBB17_45
.LBB17_45:                              //   in Loop: Header=BB17_44 Depth=1
	mov	r6, r3
	add	r3, 16
	mov	r4, [r3]
	mov	r0, 16843008
	sub	r0, r4
	add	r6, 4
	mov	r1, r4
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	mov	r3, r6
	je	rax, r5, .LBB17_44
	jmp	.LBB17_46
.LBB17_46:                              // %.loopexit6.i10.preheader
	add	r3, -4
	mov	r4, 46
	mov	r1, 255
.LBB17_47:                              // %.loopexit6.i10
                                        // =>This Inner Loop Header: Depth=1
	add	r3, 4
	mov	r0, [r3]
	call	__bit_and
	je	rax, r4, .LBB17_49
	jmp	.LBB17_48
.LBB17_48:                              // %.loopexit6.i10
                                        //   in Loop: Header=BB17_47 Depth=1
	jnz	rax, .LBB17_47
	jmp	.LBB17_49
.LBB17_49:
	mov	r1, 255
	call	__bit_and
	mov	r1, 46
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r0, rax
	mov	r1, r3
	call	__bit_and
	mov	r3, rax
.LBB17_50:                              // %strchr.exit12
	jz	r3, .LBB17_84
	jmp	.LBB17_51
.LBB17_51:                              // %strchr.exit12
	mov	r1, -2147483648
	mov	r0, r2
	call	__bit_xor
	mov	r4, rax
	mov	r0, r3
	call	__bit_xor
	jge	rax, r4, .LBB17_84
	jmp	.LBB17_52
.LBB17_52:
	add	r3, 1
	mov	r0, 0
	mov	r6, 48
	mov	r5, r2
.LBB17_53:                              // =>This Inner Loop Header: Depth=1
	mov	r1, -2147483648
	mov	r4, r5
	mov	t2, r0
	mov	r0, r3
	call	__bit_xor
	mov	r5, rax
	mov	r0, r4
	call	__bit_xor
	jle	rax, r5, .LBB17_55
	jmp	.LBB17_54
.LBB17_54:                              //   in Loop: Header=BB17_53 Depth=1
	mov	r5, r4
	add	r5, -1
	mov	r0, [r5]
	mov	r1, 255
	call	__bit_and
	mov	r0, t2
	add	r0, -4
	je	rax, r6, .LBB17_53
	jmp	.LBB17_55
.LBB17_55:
	mov	r0, r4
	mov	r1, r3
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	mov	r5, rax
	add	r5, 1
	mov	r1, 3
	add	r4, r5
	mov	r0, r2
	call	__bit_and
	jnz	rax, .LBB17_57
	jmp	.LBB17_56
.LBB17_56:                              // %.preheader1.i14.preheader
	mov	r7, r2
	add	r7, -4
	mov	t1, -2139062144
	mov	r3, r2
	jmp	.LBB17_60
.LBB17_57:
	mov	r0, [r2]
	mov	r1, 255
	call	__bit_and
	mov	r6, r2
	jz	rax, .LBB17_63
	jmp	.LBB17_58
.LBB17_58:                              // %.preheader2.i13.preheader
	mov	r3, r2
	add	r3, 4
	mov	r6, r2
.LBB17_59:                              // %.preheader2.i13
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [r3]
	call	__bit_and
	add	r6, 4
	add	r3, 4
	jz	rax, .LBB17_63
	jmp	.LBB17_59
.LBB17_60:                              // %.preheader1.i14
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, [r3]
	mov	r0, 16843008
	sub	r0, r1
	mov	r6, r7
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	add	r3, 4
	add	r7, 16
	je	rax, t1, .LBB17_60
	jmp	.LBB17_61
.LBB17_61:                              // %.preheader.i15.preheader
	mov	r7, -16
	mov	r1, 255
.LBB17_62:                              // %.preheader.i15
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r3
	add	r0, r7
	mov	r0, [r0]
	call	__bit_and
	add	r6, 4
	add	r7, 4
	jnz	rax, .LBB17_62
	jmp	.LBB17_63
.LBB17_63:                              // %strlen.exit16
	mov	r3, r6
	sub	r3, r2
	mov	r1, -2147483648
	add	r3, 1
	mov	r0, r4
	call	__bit_xor
	mov	r7, rax
	mov	r0, r2
	call	__bit_xor
	jge	rax, r7, .LBB17_73
	jmp	.LBB17_64
.LBB17_64:
	mov	r7, r2
	add	r7, r3
	mov	r0, r7
	call	__bit_xor
	mov	t1, rax
	mov	r0, r4
	call	__bit_xor
	jge	rax, t1, .LBB17_73
	jmp	.LBB17_65
.LBB17_65:
	add	r4, r3
	mov	r0, r3
	call	__bit_xor
	mov	r0, -2147483644
	jl	rax, r0, .LBB17_70
	jmp	.LBB17_66
.LBB17_66:
	mov	r0, r7
	mov	r1, r4
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB17_71
	jmp	.LBB17_67
.LBB17_67:                              // %.preheader.i17.preheader
	mov	r1, 4
	mov	r0, r2
	call	__bit_shl
	mov	t1, 0
	sub	t1, rax
	div	t1, 4
	mov	r1, 2
	add	t1, r2
	mov	r0, r6
	call	__bit_shl
	add	r5, r6
	mov	r2, rax
	mov	r0, r5
	call	__bit_shl
	mov	r4, rax
	add	r4, t2
	mov	r7, -2147483645
.LBB17_68:                              // %.preheader.i17
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, t1
	add	r0, r2
	add	r0, -12
	mov	r0, [r0]
	mov	r1, t1
	add	r1, r4
	add	r1, -12
	mov	[r1], r0
	add	r3, -4
	mov	r1, -2147483648
	add	t1, -16
	mov	r0, r3
	call	__bit_xor
	jg	rax, r7, .LBB17_68
	jmp	.LBB17_69
.LBB17_69:                              // %.loopexit9.i.loopexit
	mov	r1, 2
	mov	r0, r6
	call	__bit_shl
	mov	r7, rax
	add	r7, t1
	add	r7, 4
	mov	r0, r5
	call	__bit_shl
	mov	r4, rax
	add	r4, t2
	add	r4, t1
	add	r4, 4
.LBB17_70:                              // %.loopexit9.i
	jz	r3, .LBB17_84
	jmp	.LBB17_71
.LBB17_71:                              // %.preheader
	add	r7, -4
	add	r4, -4
	mov	r1, 255
.LBB17_72:                              // =>This Inner Loop Header: Depth=1
	mov	r0, [r7]
	add	r3, -1
	call	__bit_and
	mov	[r4], rax
	add	r7, -4
	add	r4, -4
	jz	r3, .LBB17_84
	jmp	.LBB17_72
.LBB17_73:
	mov	r0, r3
	call	__bit_xor
	mov	r0, -2147483644
	jl	rax, r0, .LBB17_81
	jmp	.LBB17_74
.LBB17_74:
	mov	r0, r4
	mov	r1, r2
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB17_82
	jmp	.LBB17_75
.LBB17_75:
	mov	r1, -2147483648
	mov	r0, r3
	call	__bit_xor
	mov	r0, -2147483632
	jl	rax, r0, .LBB17_77
	jmp	.LBB17_76
.LBB17_76:                              // %.preheader12.i.preheader
	mov	r1, 2
	mov	r0, r5
	call	__bit_shl
	mov	r4, rax
	add	r4, t2
	mov	r6, -2147483633
	mov	r7, r2
	jmp	.LBB17_79
.LBB17_77:                              // %.preheader196
	mov	r5, -2147483645
	mov	r1, -2147483648
	jmp	.LBB17_80
.LBB17_78:
	mov	r1, 2
	mov	r0, r5
	call	__bit_shl
	mov	r4, rax
	add	r4, t2
	mov	r0, 3
	add	r4, r2
	jg	r3, r0, .LBB17_77
	jmp	.LBB17_81
.LBB17_79:                              // %.preheader12.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [r7]
	mov	r1, r7
	add	r1, r4
	mov	[r1], r0
	mov	r2, r7
	add	r2, 16
	mov	r0, [r2]
	mov	t0, r1
	add	t0, 16
	mov	[t0], r0
	mov	r0, r7
	add	r0, 32
	mov	r0, [r0]
	mov	t0, r1
	add	t0, 32
	mov	[t0], r0
	mov	r0, r7
	add	r0, 48
	mov	r0, [r0]
	add	r1, 48
	mov	[r1], r0
	add	r3, -16
	mov	r1, -2147483648
	add	r7, 64
	mov	r0, r3
	call	__bit_xor
	jg	rax, r6, .LBB17_79
	jmp	.LBB17_78
.LBB17_80:                              // =>This Inner Loop Header: Depth=1
	mov	r0, [r2]
	add	r2, 4
	mov	[r4], r0
	add	r3, -4
	add	r4, 4
	mov	r0, r3
	call	__bit_xor
	jg	rax, r5, .LBB17_80
	jmp	.LBB17_81
.LBB17_81:                              // %.loopexit11.i
	jz	r3, .LBB17_84
	jmp	.LBB17_82
.LBB17_82:                              // %.preheader191
	mov	r1, 255
.LBB17_83:                              // =>This Inner Loop Header: Depth=1
	mov	r0, [r2]
	add	r3, -1
	add	r2, 1
	call	__bit_and
	mov	[r4], rax
	add	r4, 1
	jnz	r3, .LBB17_83
	jmp	.LBB17_84
.LBB17_84:                              // %memmove.exit
	ret
// -- End function
// -- Begin function gcvt_fast
gcvt_fast:                              // @gcvt_fast
// %bb.0:
	mov	r4, r3
	mov	t1, r1
	mov	r7, r0
	jz	r4, .LBB18_66
	jmp	.LBB18_1
.LBB18_1:
	mov	r0, 0
	jg	r2, r0, .LBB18_3
	jmp	.LBB18_2
.LBB18_2:
	mov	[r4], 0
	jmp	.LBB18_66
.LBB18_3:
	mov	t4, r2
	add	r2, -63
	mov	r1, 31
	mov	r0, r2
	call	__bit_shr
	mov	r1, 1
	mov	r5, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r0, rax
	mov	r1, r2
	call	__bit_and
	mov	r6, rax
	mov	r0, r7
	mov	r1, t1
	mov	r2, r7
	mov	r3, t1
	call	__unorddf2
	jz	rax, .LBB18_5
	jmp	.LBB18_4
.LBB18_4:
	mov	[r4], 110
	mov	r0, r4
	add	r0, 1
	mov	[r0], 97
	mov	r0, r4
	add	r0, 2
	mov	[r0], 110
	mov	r0, r4
	add	r0, 3
	mov	[r0], 0
	jmp	.LBB18_66
.LBB18_5:
	mov	r1, 2147483647
	mov	r0, t1
	call	__bit_and
	mov	r2, -1
	mov	r3, 2146435071
	mov	t2, -1
	mov	r0, r7
	mov	r1, rax
	call	__gtdf2
	jl	rax, r5, .LBB18_9
	jmp	.LBB18_6
.LBB18_6:
	mov	r2, 0
	mov	r3, 0
	mov	r0, r7
	mov	r1, t1
	call	__ltdf2
	mov	r0, r4
	jg	rax, t2, .LBB18_8
	jmp	.LBB18_7
.LBB18_7:
	mov	r0, r4
	add	r0, 1
	mov	[r4], 45
.LBB18_8:
	mov	[r0], 105
	mov	r1, r0
	add	r1, 1
	mov	[r1], 110
	mov	r1, r0
	add	r1, 2
	mov	[r1], 102
	add	r0, 3
	mov	[r0], 0
	jmp	.LBB18_66
.LBB18_9:
	mov	r2, 0
	mov	r3, 0
	mov	r0, r7
	mov	r1, t1
	call	__ltdf2
	mov	t3, r4
	jg	rax, t2, .LBB18_11
	jmp	.LBB18_10
.LBB18_10:
	mov	t3, r4
	add	t3, 1
	mov	r1, -2147483648
	mov	[r4], 45
	mov	r0, t1
	call	__bit_xor
	mov	t1, rax
.LBB18_11:
	mov	r5, 0
	mov	r0, r7
	mov	r1, t1
	call	__eqdf2
	jz	rax, .LBB18_14
	jmp	.LBB18_12
.LBB18_12:
	mov	r3, 1076101120
	mov	r0, r7
	mov	r1, t1
	call	__gedf2
	jl	rax, r5, .LBB18_15
	jmp	.LBB18_13
.LBB18_13:                              // %.preheader28.preheader
	mov	t2, 0
	jmp	.LBB18_17
.LBB18_14:
	mov	[t3], 48
	add	t3, 1
	mov	[t3], 0
	jmp	.LBB18_66
.LBB18_15:                              // %.loopexit29
	add	r6, 63
	mov	r3, 1072693248
	mov	t5, 0
	mov	r0, r7
	mov	r1, t1
	call	__ltdf2
	mov	r0, -1
	jg	rax, r0, .LBB18_18
	jmp	.LBB18_16
.LBB18_16:                              // %.preheader26.preheader
	mov	t2, 0
	jmp	.LBB18_19
.LBB18_17:                              // %.preheader28
                                        // =>This Inner Loop Header: Depth=1
	mov	r2, -1717986918
	mov	r3, 1069128089
	mov	r0, r7
	mov	r1, t1
	call	__muldf3
	mov	r7, rax
	mov	t1, t0
	mov	r2, 0
	mov	r3, 1076101120
	add	r5, 1
	mov	r0, r7
	mov	r1, t1
	call	__ltdf2
	jl	rax, t2, .LBB18_15
	jmp	.LBB18_17
.LBB18_18:                              // %.loopexit27
	mov	r1, 2
	mov	r0, r6
	call	__bit_shl
	mov	t2, rax
	add	t2, 4
	jmp	.LBB18_20
.LBB18_19:                              // %.preheader26
                                        // =>This Inner Loop Header: Depth=1
	mov	r2, 0
	mov	r3, 1076101120
	mov	r0, r7
	mov	r1, t1
	call	__muldf3
	mov	r7, rax
	mov	t1, t0
	mov	r3, 1072693248
	add	r5, -1
	mov	r0, r7
	mov	r1, t1
	call	__ltdf2
	jl	rax, t2, .LBB18_19
	jmp	.LBB18_18
.LBB18_20:                              // =>This Inner Loop Header: Depth=1
	mov	r0, r7
	mov	r1, t1
	call	__fixdfsi
	mov	r2, rax
	mov	r3, rsp
	mov	r0, r2
	add	r0, 48
	mov	r1, 255
	add	r3, t5
	call	__bit_and
	mov	[r3], rax
	mov	r0, r2
	call	__floatsidf
	mov	r3, t0
	mov	r0, r7
	mov	r1, t1
	mov	r2, rax
	call	__subdf3
	mov	r2, 0
	mov	r3, 1076101120
	mov	r1, t0
	mov	r0, rax
	call	__muldf3
	add	t5, 4
	mov	r7, rax
	mov	t1, t0
	jne	t2, t5, .LBB18_20
	jmp	.LBB18_21
.LBB18_21:
	mov	r0, rsp
	add	r0, r6
	mov	r0, [r0]
	mov	r1, 24
	call	__bit_shl
	mov	r0, rax
	call	__bit_sar
	mov	r0, 53
	jl	rax, r0, .LBB18_29
	jmp	.LBB18_22
.LBB18_22:                              // %.preheader25.preheader
	mov	r3, r6
	mov	r1, 2
	add	r3, 1
	mov	r0, r6
	call	__bit_shl
	mov	r2, rax
	add	r2, -4
	mov	r7, 57
	mov	t1, 1
	mov	r1, 255
.LBB18_23:                              // %.preheader25
                                        // =>This Inner Loop Header: Depth=1
	mov	t2, rsp
	add	t2, r2
	mov	r0, [t2]
	call	__bit_and
	jne	rax, r7, .LBB18_26
	jmp	.LBB18_24
.LBB18_24:                              //   in Loop: Header=BB18_23 Depth=1
	mov	[t2], 48
	add	r3, -1
	add	r2, -4
	jg	r3, t1, .LBB18_23
	jmp	.LBB18_25
.LBB18_25:                              // %.preheader24.preheader
	mov	r3, r6
	mov	r1, 2
	add	r3, 1
	mov	r0, r6
	call	__bit_shl
	mov	r2, rax
	add	r2, rsp
	mov	r7, 1
	mov	t1, r2
	mov	r1, 255
	jmp	.LBB18_27
.LBB18_26:
	add	r0, 1
	mov	r1, 255
	call	__bit_and
	mov	[t2], rax
	jmp	.LBB18_29
.LBB18_27:                              // %.preheader24
                                        // =>This Inner Loop Header: Depth=1
	add	t1, -4
	mov	r0, [t1]
	call	__bit_and
	add	r3, -1
	mov	[r2], rax
	mov	r2, t1
	jg	r3, r7, .LBB18_27
	jmp	.LBB18_28
.LBB18_28:
	mov	[rsp], 49
	add	r5, 1
.LBB18_29:
	mov	r1, 1
	mov	r0, r6
	je	t4, r1, .LBB18_35
	jmp	.LBB18_30
.LBB18_30:                              // %.preheader22.preheader
	mov	r1, 2
	mov	r7, 2
	mov	r0, r6
	call	__bit_shl
	mov	r2, rax
	add	r2, -4
	mov	t1, 48
	mov	t0, r6
	mov	r1, 255
.LBB18_31:                              // %.preheader22
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, rsp
	add	r0, r2
	mov	r0, [r0]
	mov	r3, t0
	call	__bit_and
	jne	rax, t1, .LBB18_33
	jmp	.LBB18_32
.LBB18_32:                              //   in Loop: Header=BB18_31 Depth=1
	mov	t0, r3
	add	t0, -1
	add	r2, -4
	mov	r0, 1
	jg	r3, r7, .LBB18_31
	jmp	.LBB18_35
.LBB18_33:
	mov	r0, -4
	jl	r5, r0, .LBB18_38
	jmp	.LBB18_34
.LBB18_34:
	jge	r5, r6, .LBB18_38
	jmp	.LBB18_50
.LBB18_35:                              // %.loopexit23
	mov	r1, -4
	jl	r5, r1, .LBB18_37
	jmp	.LBB18_36
.LBB18_36:                              // %.loopexit23
	mov	r3, r0
	jl	r5, r6, .LBB18_50
	jmp	.LBB18_37
.LBB18_37:
	mov	r0, [rsp]
	mov	r1, 255
	call	__bit_and
	mov	[t3], rax
	add	t3, 1
	jmp	.LBB18_41
.LBB18_38:
	mov	r0, [rsp]
	mov	r1, 255
	call	__bit_and
	mov	r0, t3
	add	r0, 1
	mov	[t3], rax
	add	t3, 2
	mov	r1, 2
	mov	[r0], 46
	jl	r3, r1, .LBB18_41
	jmp	.LBB18_39
.LBB18_39:                              // %.preheader20.preheader
	mov	r2, rsp
	mov	r6, 1
	add	r2, 4
	mov	r1, 255
.LBB18_40:                              // %.preheader20
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [r2]
	call	__bit_and
	mov	[t3], rax
	add	t3, 1
	add	r6, 1
	add	r2, 4
	jne	r3, r6, .LBB18_40
	jmp	.LBB18_41
.LBB18_41:                              // %.loopexit21
	mov	r1, -2147483648
	mov	[t3], 101
	mov	r0, r5
	call	__bit_xor
	add	rax, -2147483648
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
	mov	r0, -1
	add	rax, 43
	jg	r5, r0, .LBB18_43
	jmp	.LBB18_42
.LBB18_42:
	mov	r0, 0
	sub	r0, r5
	mov	r5, r0
.LBB18_43:
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r0, t3
	add	r0, 4
	mov	r1, 10
	mov	[r0], rax
	jl	r5, r1, .LBB18_45
	jmp	.LBB18_44
.LBB18_44:                              // %.preheader.preheader
	mov	r2, t3
	add	r2, 8
	mov	r3, t3
	add	r3, 48
	mov	t1, 99
	mov	t3, r2
	mov	r6, r5
	jmp	.LBB18_46
.LBB18_45:
	mov	r0, t3
	add	r0, 3
	add	t3, 32
	mov	[t3], 48
	mov	t3, r0
	jmp	.LBB18_49
.LBB18_46:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 10
	mov	r7, r6
	mov	r0, r7
	call	__udivsi3
	mov	r6, rax
	mov	r0, r6
	call	__umodsi3
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	[t3], rax
	add	r3, 64
	add	t3, 16
	jg	r7, t1, .LBB18_46
	jmp	.LBB18_47
.LBB18_47:
	mov	r7, r3
.LBB18_48:                              // =>This Inner Loop Header: Depth=1
	mov	r0, [r2]
	mov	t1, r3
	mov	r1, 255
	add	t1, 4
	call	__bit_and
	mov	r0, [t1]
	mov	r6, rax
	call	__bit_and
	mov	[r2], rax
	add	r2, 1
	mov	[t1], r6
	mov	r1, -2147483648
	add	r7, -4
	mov	r0, r3
	call	__bit_xor
	mov	r6, rax
	mov	r0, r2
	call	__bit_xor
	mov	r3, r7
	jl	rax, r6, .LBB18_48
	jmp	.LBB18_49
.LBB18_49:                              // %.loopexit
	mov	r1, 10
	mov	r0, r5
	call	__umodsi3
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	[t3], rax
	add	t3, 1
	jmp	.LBB18_65
.LBB18_50:
	mov	r0, 0
	jl	r5, r0, .LBB18_58
	jmp	.LBB18_51
.LBB18_51:                              // %.preheader98.preheader
	mov	r2, t3
	mov	r1, 255
.LBB18_52:                              // %.preheader98
                                        // =>This Inner Loop Header: Depth=1
	mov	r6, r0
	mov	r0, 48
	jge	r6, r3, .LBB18_54
	jmp	.LBB18_53
.LBB18_53:                              //   in Loop: Header=BB18_52 Depth=1
	mov	r0, rsp
	add	r0, r6
	mov	r0, [r0]
.LBB18_54:                              //   in Loop: Header=BB18_52 Depth=1
	mov	t3, r2
	add	t3, 1
	call	__bit_and
	mov	[r2], rax
	mov	r0, r6
	add	r0, 1
	mov	r2, t3
	jne	r6, r5, .LBB18_52
	jmp	.LBB18_55
.LBB18_55:
	mov	r0, r5
	add	r0, 1
	jle	r3, r0, .LBB18_65
	jmp	.LBB18_56
.LBB18_56:
	mov	[t3], 46
	mov	r0, r5
	call	__bit_not
	mov	r2, rax
	mov	r1, 2
	add	r2, r3
	call	__bit_shl
	mov	r3, rax
	add	r3, rsp
	mov	r5, 4
	mov	r1, 255
.LBB18_57:                              // =>This Inner Loop Header: Depth=1
	mov	r0, r3
	add	r0, r5
	mov	r0, [r0]
	mov	r6, t3
	add	r6, r5
	call	__bit_and
	mov	[r6], rax
	add	r2, -1
	add	r5, 4
	jz	r2, .LBB18_64
	jmp	.LBB18_57
.LBB18_58:
	mov	r0, t3
	add	r0, 1
	mov	[t3], 48
	add	t3, 2
	mov	r2, -1
	mov	[r0], 46
	je	r5, r2, .LBB18_60
	jmp	.LBB18_59
.LBB18_59:                              // %.preheader18.preheader
	mov	r0, 1
	jmp	.LBB18_62
.LBB18_60:                              // %.loopexit19
	mov	r0, 1
	jl	r3, r0, .LBB18_65
	jmp	.LBB18_61
.LBB18_61:                              // %.preheader16.preheader
	mov	r2, rsp
	mov	r1, 255
	jmp	.LBB18_63
.LBB18_62:                              // %.preheader18
                                        // =>This Inner Loop Header: Depth=1
	mov	[t3], 48
	add	t3, 1
	mov	r1, r5
	call	__bit_xor
	add	r0, 1
	je	rax, r2, .LBB18_60
	jmp	.LBB18_62
.LBB18_63:                              // %.preheader16
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [r2]
	call	__bit_and
	mov	[t3], rax
	add	t3, 1
	add	r3, -1
	add	r2, 4
	jz	r3, .LBB18_65
	jmp	.LBB18_63
.LBB18_64:                              // %.loopexit15.loopexit
	add	t3, r5
.LBB18_65:                              // %.loopexit15
	mov	[t3], 0
.LBB18_66:
	mov	rax, r4
	ret
// -- End function
// -- Begin function itoa
itoa:                                   // @itoa
// %bb.0:
	mov	r5, r2
	mov	r2, r1
	mov	r4, r5
	add	r4, -37
	mov	r1, -2147483648
	mov	r3, r0
	mov	r0, r4
	call	__bit_xor
	mov	r0, 2147483612
	jg	rax, r0, .LBB19_2
	jmp	.LBB19_1
.LBB19_1:
	mov	[r2], 0
	mov	r2, 0
	jmp	.LBB19_20
.LBB19_2:
	mov	r0, -1
	jg	r3, r0, .LBB19_5
	jmp	.LBB19_3
.LBB19_3:
	mov	r0, 10
	jne	r5, r0, .LBB19_5
	jmp	.LBB19_4
.LBB19_4:
	mov	[r2], 45
	mov	r0, 0
	sub	r0, r3
	mov	r4, 1
	mov	r3, r0
	jmp	.LBB19_7
.LBB19_5:
	mov	r0, 10
	mov	r4, 0
	je	r5, r0, .LBB19_7
	jmp	.LBB19_6
.LBB19_6:                               // %.preheader7.preheader
	mov	r7, 0
	mov	t1, -1
	mov	t2, mcasm_static_297ce85d1d6061ce7e975a0742e97867
	jmp	.LBB19_16
.LBB19_7:
	mov	r7, rsp
	add	r7, 15
	mov	[r7], 0
	mov	r0, r3
	call	__bit_xor
	mov	r0, -2147483548
	jl	rax, r0, .LBB19_10
	jmp	.LBB19_8
.LBB19_8:                               // %.preheader.preheader
	mov	t1, mcasm_static_a5283b90efaa9cce44f90fcd4e2ba4be
	mov	t2, -2147473649
	mov	r5, r3
	mov	t3, r7
.LBB19_9:                               // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 100
	mov	r0, r5
	call	__udivsi3
	mov	r3, rax
	mov	r0, r3
	mul	r0, 2147483548
	add	r0, r5
	mov	r1, 1
	call	__bit_shl
	mov	r6, rax
	add	r6, t1
	mov	r0, r6
	add	r0, 1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r0, [r6]
	mov	r6, t3
	add	r6, -4
	mov	[r6], rax
	call	__bit_and
	add	r7, -2
	add	t3, -8
	mov	r1, -2147483648
	mov	[t3], rax
	mov	r0, r5
	call	__bit_xor
	mov	r5, r3
	mov	t3, r7
	jg	rax, t2, .LBB19_9
	jmp	.LBB19_10
.LBB19_10:                              // %.loopexit
	mov	r0, 9
	jg	r3, r0, .LBB19_12
	jmp	.LBB19_11
.LBB19_11:
	mov	r1, 48
	mov	r0, r3
	call	__bit_or
	mov	r3, rax
	mov	r5, -1
	jmp	.LBB19_13
.LBB19_12:
	mov	r5, r7
	mov	r1, 1
	add	r5, -1
	mov	r0, r3
	call	__bit_shl
	mov	r3, mcasm_static_a5283b90efaa9cce44f90fcd4e2ba4be
	add	r3, rax
	mov	r0, r3
	add	r0, 1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r3, [r3]
	mov	[r5], rax
	mov	r5, -2
.LBB19_13:
	mov	r6, r7
	mov	r1, 255
	add	r6, r5
	mov	r0, r3
	call	__bit_and
	mov	r1, 2
	mov	[r6], rax
	mov	r0, r4
	call	__bit_shl
	mov	r4, rax
	mov	r0, r5
	call	__bit_shl
	mov	r0, rax
	call	__bit_shl
	mov	r5, rax
	add	r5, 16
	div	r5, 4
	add	r5, r7
.LBB19_14:                              // =>This Inner Loop Header: Depth=1
	mov	r6, r2
	mov	r1, 255
	add	r6, r4
	mov	r0, r3
	call	__bit_and
	mov	[r6], rax
	mov	r3, [r5]
	mov	r0, r3
	call	__bit_and
	add	r4, 4
	add	r5, 4
	jnz	rax, .LBB19_14
	jmp	.LBB19_15
.LBB19_15:
	add	r4, r2
	mov	[r4], 0
	jmp	.LBB19_20
.LBB19_16:                              // %.preheader7
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r3
	mov	r1, r5
	call	__udivsi3
	mov	r4, rax
	mov	r0, r4
	mul	r0, r5
	mov	r1, r3
	sub	r1, r0
	add	r1, t2
	mov	r0, [r1]
	mov	r1, 255
	call	__bit_and
	mov	r0, r2
	add	r0, r7
	mov	[r0], rax
	add	r7, 4
	mov	r1, -2147483648
	add	t1, 1
	mov	r0, r3
	call	__bit_xor
	mov	r6, rax
	mov	r0, r5
	call	__bit_xor
	mov	r3, r4
	jle	rax, r6, .LBB19_16
	jmp	.LBB19_17
.LBB19_17:
	mov	r0, r2
	add	r0, r7
	mov	[r0], 0
	jz	t1, .LBB19_20
	jmp	.LBB19_18
.LBB19_18:                              // %.preheader5.preheader
	add	r7, -4
	mov	r4, 1
	mov	r5, 0
.LBB19_19:                              // %.preheader5
                                        // =>This Inner Loop Header: Depth=1
	mov	r6, r2
	add	r6, r5
	mov	r0, [r6]
	mov	r1, 255
	mov	t2, r4
	call	__bit_and
	mov	t3, r2
	add	t3, r7
	mov	r0, [t3]
	mov	r3, rax
	call	__bit_and
	mov	[r6], rax
	mov	[t3], r3
	add	t1, -1
	add	r7, -4
	add	r4, 1
	add	r5, 4
	jl	t2, t1, .LBB19_19
	jmp	.LBB19_20
.LBB19_20:                              // %.loopexit6
	mov	rax, r2
	ret
// -- End function
// -- Begin function labs
labs:                                   // @labs
// %bb.0:
	mov	r1, -1
	mov	rax, r0
	jg	rax, r1, .LBB20_2
	jmp	.LBB20_1
.LBB20_1:
	mov	r0, 0
	sub	r0, rax
	mov	rax, r0
.LBB20_2:
	ret
// -- End function
// -- Begin function malloc
malloc:                                 // @malloc
// %bb.0:
	mov	r1, 16384
	mov	r2, [r1]
	mov	r3, 1296125004
	je	r2, r3, .LBB21_2
	jmp	.LBB21_1
.LBB21_1:
	mov	[r1], 1296125004
	mov	r1, 16385
	mov	[r1], 16387
	mov	r2, 16386
	add	r0, 3
	mov	r1, 2
	mov	[r2], 0
	call	__bit_shr
	mov	r2, rax
	mov	r0, 1
	sub	r0, r2
	mov	r1, 31
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	add	r2, -1
	add	rax, 1
	mov	r0, rax
	mov	r1, r2
	call	__bit_and
	mov	r2, rax
	mov	r4, r2
	add	r4, 1
	add	r2, 2
	jmp	.LBB21_17
.LBB21_2:
	mov	r1, 16386
	mov	t2, [r1]
	add	r0, 3
	mov	r1, 2
	call	__bit_shr
	mov	r2, rax
	mov	r0, 1
	sub	r0, r2
	mov	r1, 31
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	add	r2, -1
	add	rax, 1
	mov	r0, rax
	mov	r1, r2
	call	__bit_and
	mov	r2, rax
	mov	r4, r2
	add	r4, 1
	add	r2, 2
	jz	t2, .LBB21_17
	jmp	.LBB21_3
.LBB21_3:                               // %.preheader.preheader
	mov	r0, 0
.LBB21_4:                               // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	t1, t2
	mov	r5, [t1]
	mov	r7, t1
	add	r7, 1
	mov	t2, [r7]
	mov	r1, -2147483648
	mov	r3, r0
	mov	r0, r4
	call	__bit_xor
	mov	r6, rax
	mov	r0, r5
	call	__bit_xor
	jle	rax, r6, .LBB21_12
	jmp	.LBB21_5
.LBB21_5:
	add	r4, 3
	mov	r0, r4
	call	__bit_xor
	mov	r4, rax
	mov	r0, r5
	call	__bit_xor
	jge	rax, r4, .LBB21_9
	jmp	.LBB21_6
.LBB21_6:
	jnz	r3, .LBB21_8
	jmp	.LBB21_7
.LBB21_7:
	mov	r0, 16386
	mov	[r0], t2
	mov	r6, r7
	jmp	.LBB21_20
.LBB21_8:
	add	r3, 1
	mov	[r3], t2
	mov	r6, r7
	jmp	.LBB21_20
.LBB21_9:
	mov	r0, t1
	add	r0, r2
	sub	r5, r2
	mov	[r0], r5
	mov	r1, r0
	add	r1, 1
	mov	[r1], t2
	mov	[t1], r2
	jnz	r3, .LBB21_11
	jmp	.LBB21_10
.LBB21_10:
	mov	r1, 16386
	mov	[r1], r0
	mov	r6, r7
	jmp	.LBB21_20
.LBB21_11:
	add	r3, 1
	mov	[r3], r0
	mov	r6, r7
	jmp	.LBB21_20
.LBB21_12:                              //   in Loop: Header=BB21_4 Depth=1
	mov	r0, t1
	jnz	t2, .LBB21_4
	jmp	.LBB21_13
.LBB21_13:
	mov	r0, 16385
	mov	t2, [r0]
	mov	r0, r5
	add	r0, t1
	jne	t2, r0, .LBB21_17
	jmp	.LBB21_14
.LBB21_14:
	mov	r0, t2
	add	r0, -8388609
	mov	r6, 0
	call	__bit_xor
	mov	r0, 2139111426
	jl	rax, r0, .LBB21_20
	jmp	.LBB21_15
.LBB21_15:
	mov	r4, r2
	mov	r0, 8388608
	sub	r0, t2
	sub	r4, r5
	call	__bit_xor
	mov	r5, rax
	mov	r0, r4
	call	__bit_xor
	jg	rax, r5, .LBB21_20
	jmp	.LBB21_16
.LBB21_16:
	mov	r0, r3
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r4, r3
	add	r4, 1
	mov	r0, rax
	call	__bit_not
	mov	r1, 16385
	sub	r1, r3
	add	rax, 1
	mov	r3, 16385
	mov	r0, rax
	call	__bit_and
	add	rax, r4
	mov	[rax], 0
	mov	r0, t1
	add	r0, r2
	mov	[r3], r0
	mov	[t1], r2
	mov	r6, r7
	jmp	.LBB21_20
.LBB21_17:
	mov	r0, 16385
	mov	r3, [r0]
	mov	r0, r3
	add	r0, -8388609
	mov	r1, -2147483648
	mov	r6, 0
	call	__bit_xor
	mov	r0, 2139111426
	jl	rax, r0, .LBB21_20
	jmp	.LBB21_18
.LBB21_18:
	mov	r0, 8388608
	sub	r0, r3
	jge	r4, r0, .LBB21_20
	jmp	.LBB21_19
.LBB21_19:
	mov	r0, r3
	add	r0, r2
	mov	r1, 16385
	mov	[r1], r0
	mov	[r3], r2
	add	r3, 1
	mov	r6, r3
.LBB21_20:
	mov	rax, r6
	ret
// -- End function
// -- Begin function free
free:                                   // @free
// %bb.0:
	mov	r3, r0
	jz	r3, .LBB22_18
	jmp	.LBB22_1
.LBB22_1:
	mov	r0, 16384
	mov	r1, [r0]
	mov	r2, 1296125004
	je	r1, r2, .LBB22_3
	jmp	.LBB22_2
.LBB22_2:
	mov	[r0], 1296125004
	mov	r0, 16385
	mov	[r0], 16387
	mov	r0, 16386
	mov	[r0], 0
	mov	r4, r3
	add	r4, -1
	mov	r5, [r4]
	mov	r6, 0
	mov	r2, 0
	mov	rax, 0
	jmp	.LBB22_8
.LBB22_3:
	mov	r0, 16386
	mov	r2, [r0]
	mov	r4, r3
	add	r4, -1
	mov	r5, [r4]
	mov	r0, r2
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r6, 0
	jz	r2, .LBB22_8
	jmp	.LBB22_4
.LBB22_4:
	jge	r2, r4, .LBB22_8
	jmp	.LBB22_5
.LBB22_5:                               // %.preheader.preheader
.LBB22_6:                               // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r6, r2
	mov	r0, r6
	add	r0, 1
	mov	r2, [r0]
	mov	r0, r2
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	jz	r2, .LBB22_8
	jmp	.LBB22_7
.LBB22_7:                               // %.preheader
                                        //   in Loop: Header=BB22_6 Depth=1
	jl	r2, r4, .LBB22_6
	jmp	.LBB22_8
.LBB22_8:                               // %.loopexit
	jne	r2, r4, .LBB22_10
	jmp	.LBB22_9
.LBB22_9:
	call	abort
.LBB22_10:
	mov	r0, 16386
	jz	r6, .LBB22_14
	jmp	.LBB22_11
.LBB22_11:
	mov	r0, [r6]
	mov	r1, r0
	add	r1, r6
	jne	r1, r4, .LBB22_13
	jmp	.LBB22_12
.LBB22_12:
	add	r0, r5
	mov	[r6], r0
	mov	r4, r6
	jmp	.LBB22_15
.LBB22_13:
	add	r6, 1
	mov	r0, r6
.LBB22_14:
	mov	[r0], r4
	mov	[r3], r2
.LBB22_15:
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB22_18
	jmp	.LBB22_16
.LBB22_16:
	mov	r0, [r4]
	mov	r1, r0
	add	r1, r4
	jne	r1, r2, .LBB22_18
	jmp	.LBB22_17
.LBB22_17:
	add	r0, [r2]
	mov	[r4], r0
	add	r2, 1
	mov	r0, [r2]
	add	r4, 1
	mov	[r4], r0
.LBB22_18:
	ret
// -- End function
// -- Begin function realloc
realloc:                                // @realloc
// %bb.0:
	mov	[rsp-1], x0
	mov	[rsp-2], x1
	mov	r2, r0
	jnz	r2, .LBB23_2
	jmp	.LBB23_1
.LBB23_1:
	mov	r0, r1
	call	malloc
	jmp	.LBB23_92
.LBB23_2:
	mov	r0, 16384
	mov	r0, [r0]
	jnz	r1, .LBB23_20
	jmp	.LBB23_3
.LBB23_3:
	mov	r1, 1296125004
	je	r0, r1, .LBB23_5
	jmp	.LBB23_4
.LBB23_4:
	mov	r0, 16384
	mov	[r0], 1296125004
	mov	r0, 16385
	mov	[r0], 16387
	mov	r0, 16386
	mov	[r0], 0
	mov	r4, r2
	add	r4, -1
	mov	r5, [r4]
	mov	r6, 0
	mov	r3, 0
	mov	rax, 0
	jmp	.LBB23_10
.LBB23_5:
	mov	r0, 16386
	mov	r3, [r0]
	mov	r4, r2
	add	r4, -1
	mov	r5, [r4]
	mov	r0, r3
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r6, 0
	jz	r3, .LBB23_10
	jmp	.LBB23_6
.LBB23_6:
	jge	r3, r4, .LBB23_10
	jmp	.LBB23_7
.LBB23_7:                               // %.preheader.preheader
.LBB23_8:                               // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r6, r3
	mov	r0, r6
	add	r0, 1
	mov	r3, [r0]
	mov	r0, r3
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	jz	r3, .LBB23_10
	jmp	.LBB23_9
.LBB23_9:                               // %.preheader
                                        //   in Loop: Header=BB23_8 Depth=1
	jl	r3, r4, .LBB23_8
	jmp	.LBB23_10
.LBB23_10:                              // %.loopexit
	jne	r3, r4, .LBB23_12
	jmp	.LBB23_11
.LBB23_11:
	call	abort
.LBB23_12:
	mov	r0, 16386
	jz	r6, .LBB23_16
	jmp	.LBB23_13
.LBB23_13:
	mov	r0, [r6]
	mov	r1, r0
	add	r1, r6
	jne	r1, r4, .LBB23_15
	jmp	.LBB23_14
.LBB23_14:
	add	r0, r5
	mov	[r6], r0
	mov	r4, r6
	jmp	.LBB23_17
.LBB23_15:
	add	r6, 1
	mov	r0, r6
.LBB23_16:
	mov	[r0], r4
	mov	[r2], r3
.LBB23_17:
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	mov	rax, 0
	jz	r0, .LBB23_92
	jmp	.LBB23_18
.LBB23_18:
	mov	r0, [r4]
	mov	r1, r0
	add	r1, r4
	jne	r1, r3, .LBB23_92
	jmp	.LBB23_19
.LBB23_19:
	add	r0, [r3]
	mov	[r4], r0
	add	r3, 1
	mov	r0, [r3]
	add	r4, 1
	mov	[r4], r0
	jmp	.LBB23_92
.LBB23_20:
	mov	r3, 1296125004
	je	r0, r3, .LBB23_22
	jmp	.LBB23_21
.LBB23_21:
	mov	r0, 16384
	mov	[r0], 1296125004
	mov	r0, 16385
	mov	[r0], 16387
	mov	r0, 16386
	mov	[r0], 0
.LBB23_22:
	mov	t4, r2
	add	t4, -1
	mov	r5, [t4]
	mov	t3, r1
	mov	r0, r1
	add	r0, 3
	mov	r1, 2
	call	__bit_shr
	mov	r3, rax
	mov	r0, 1
	sub	r0, r3
	mov	r1, 31
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	add	r3, -1
	add	rax, 1
	mov	r0, rax
	mov	r1, r3
	call	__bit_and
	mov	r4, rax
	mov	r3, r4
	add	r3, 1
	mov	r1, -2147483648
	add	r4, 2
	mov	r0, r3
	call	__bit_xor
	mov	r6, rax
	mov	r0, r5
	call	__bit_xor
	jg	rax, r6, .LBB23_73
	jmp	.LBB23_23
.LBB23_23:
	mov	r0, 16385
	mov	r0, [r0]
	mov	t1, r5
	add	t1, t4
	mov	r7, r4
	sub	r7, r5
	je	t1, r0, .LBB23_27
	jmp	.LBB23_24
.LBB23_24:
	mov	r0, 16386
	mov	r0, [r0]
	mov	r6, 0
	jz	r0, .LBB23_32
	jmp	.LBB23_25
.LBB23_25:
	jge	r0, t1, .LBB23_32
	jmp	.LBB23_26
.LBB23_26:                              // %.preheader29.preheader
	jmp	.LBB23_30
.LBB23_27:
	mov	r0, t1
	add	r0, -8388609
	call	__bit_xor
	mov	r0, 2139111426
	jl	rax, r0, .LBB23_39
	jmp	.LBB23_28
.LBB23_28:
	mov	r0, 8388608
	sub	r0, t1
	jg	r7, r0, .LBB23_39
	jmp	.LBB23_29
.LBB23_29:
	add	r3, r2
	mov	r0, 16385
	mov	[r0], r3
	mov	r0, r2
	add	r0, -1
	mov	[r0], r4
	mov	rax, r2
	jmp	.LBB23_92
.LBB23_30:                              // %.preheader29
                                        // =>This Inner Loop Header: Depth=1
	mov	r6, r0
	add	r0, 1
	mov	r0, [r0]
	jz	r0, .LBB23_32
	jmp	.LBB23_31
.LBB23_31:                              // %.preheader29
                                        //   in Loop: Header=BB23_30 Depth=1
	jl	r0, t1, .LBB23_30
	jmp	.LBB23_32
.LBB23_32:                              // %.loopexit30
	jne	r0, t1, .LBB23_39
	jmp	.LBB23_33
.LBB23_33:
	mov	t1, [t1]
	mov	r1, -2147483648
	mov	r0, r7
	call	__bit_xor
	mov	t2, rax
	mov	r0, t1
	call	__bit_xor
	jl	rax, t2, .LBB23_39
	jmp	.LBB23_34
.LBB23_34:
	mov	r0, r5
	add	r0, r2
	mov	t3, [r0]
	mov	r0, r7
	add	r0, 2
	call	__bit_xor
	mov	t2, rax
	mov	r0, t1
	call	__bit_xor
	jge	rax, t2, .LBB23_38
	jmp	.LBB23_35
.LBB23_35:
	add	t1, r5
	mov	[t4], t1
	jnz	r6, .LBB23_37
	jmp	.LBB23_36
.LBB23_36:
	mov	r0, 16386
	mov	[r0], t3
	mov	rax, r2
	jmp	.LBB23_92
.LBB23_37:
	add	r6, 1
	mov	[r6], t3
	mov	rax, r2
	jmp	.LBB23_92
.LBB23_38:
	add	r3, r2
	sub	t1, r7
	mov	[r3], t1
	mov	r0, r3
	add	r0, 1
	mov	[r0], t3
	mov	r0, r6
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r5, r6
	add	r5, 1
	mov	r0, rax
	call	__bit_not
	mov	r1, 16385
	sub	r1, r6
	add	rax, 1
	mov	r0, rax
	call	__bit_and
	add	rax, r5
	mov	[rax], r3
	mov	r0, r2
	add	r0, -1
	mov	[r0], r4
	mov	rax, r2
	jmp	.LBB23_92
.LBB23_39:
	mov	r0, t3
	call	malloc
	mov	r3, rax
	mov	rax, 0
	jz	r3, .LBB23_92
	jmp	.LBB23_40
.LBB23_40:
	mov	r4, r0
	mov	r1, 2
	mov	t6, r3
	mov	r0, r5
	call	__bit_shl
	mov	r3, rax
	sub	r3, r4
	add	r3, -4
	mov	r1, 31
	mov	r0, r3
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r0, rax
	mov	r1, r3
	call	__bit_and
	mov	r5, rax
	add	r5, r4
	mov	r1, -2147483648
	mov	r0, r5
	call	__bit_xor
	mov	r0, -2147483632
	mov	r3, r2
	mov	t5, t6
	jl	rax, r0, .LBB23_53
	jmp	.LBB23_41
.LBB23_41:
	mov	r1, 3
	mov	r0, t5
	call	__bit_and
	mov	r4, rax
	mov	r6, 8
	sub	r6, r4
	mov	t6, r0
	mov	r3, r2
	mov	r1, 255
.LBB23_42:                              // =>This Inner Loop Header: Depth=1
	mov	r0, [r3]
	add	r6, -1
	add	r3, 1
	call	__bit_and
	mov	[t6], rax
	add	t6, 1
	jnz	r6, .LBB23_42
	jmp	.LBB23_43
.LBB23_43:
	mov	r1, -8
	mov	r0, r4
	call	__bit_or
	mov	r4, rax
	mov	r1, 3
	add	r4, r5
	mov	r0, r3
	call	__bit_and
	mov	r5, rax
	jnz	r5, .LBB23_50
	jmp	.LBB23_44
.LBB23_44:
	mov	r1, -2147483648
	mov	r0, r4
	call	__bit_xor
	mov	r0, -2147483632
	jl	rax, r0, .LBB23_46
	jmp	.LBB23_45
.LBB23_45:                              // %.preheader.i.preheader
	mov	r5, 0
	mov	r6, -2147483633
	mov	r7, t6
	mov	t1, r3
	jmp	.LBB23_48
.LBB23_46:                              // %.preheader162
	mov	r6, -2147483645
	mov	r5, r4
	jmp	.LBB23_49
.LBB23_47:
	add	t6, r5
	mov	r0, 3
	add	r3, r5
	mov	r5, r4
	jg	r4, r0, .LBB23_46
	jmp	.LBB23_53
.LBB23_48:                              // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r3
	add	r0, r5
	mov	r0, [r0]
	mov	r1, t6
	add	r1, r5
	mov	t0, t1
	add	t0, 4
	mov	[r1], r0
	mov	r0, [t0]
	mov	r1, r7
	add	r1, 4
	mov	t0, t1
	add	t0, 8
	mov	[r1], r0
	mov	r0, [t0]
	mov	r1, r7
	add	r1, 8
	mov	t0, t1
	add	t0, 12
	mov	t2, r7
	mov	[r1], r0
	mov	r0, [t0]
	add	t2, 12
	add	t1, 16
	add	r7, 16
	mov	[t2], r0
	add	r4, -16
	mov	r1, -2147483648
	add	r5, 64
	mov	r0, r4
	call	__bit_xor
	jg	rax, r6, .LBB23_48
	jmp	.LBB23_47
.LBB23_49:                              // =>This Inner Loop Header: Depth=1
	mov	r0, [r3]
	add	r3, 4
	mov	[t6], r0
	add	r5, -4
	add	t6, 4
	mov	r0, r5
	call	__bit_xor
	jg	rax, r6, .LBB23_49
	jmp	.LBB23_53
.LBB23_50:
	mov	r0, r5
	call	__bit_shl
	mov	r6, rax
	mov	r0, r3
	sub	r0, r5
	mov	t1, [r0]
	mov	r7, 8
	mov	r1, 4
	sub	r7, r5
	mov	r0, r5
	call	__bit_shl
	mov	t7, 0
	mov	x0, 0
	sub	x0, rax
	div	x0, 4
	add	x0, r3
.LBB23_51:                              // =>This Inner Loop Header: Depth=1
	mov	r0, x0
	add	r0, t7
	add	r0, 16
	mov	t2, [r0]
	mov	x1, t6
	mov	r1, 31
	add	x1, t7
	mov	r0, r6
	call	__bit_and
	mov	r0, t1
	mov	r1, rax
	call	__bit_shl
	mov	t1, rax
	mov	r0, r6
	call	__bit_not
	mov	r1, 31
	mov	r0, rax
	call	__bit_and
	mov	r1, 1
	mov	t3, rax
	mov	r0, t2
	call	__bit_shr
	mov	r0, rax
	mov	r1, t3
	call	__bit_shr
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	[x1], rax
	add	r4, -4
	mov	r1, -2147483648
	add	t7, 16
	mov	r0, r7
	call	__bit_xor
	mov	t3, rax
	mov	r0, r4
	call	__bit_xor
	mov	t1, t2
	jge	rax, t3, .LBB23_51
	jmp	.LBB23_52
.LBB23_52:
	mov	r1, -4
	mov	r0, r3
	call	__bit_or
	mov	r1, 2
	mov	r0, rax
	call	__bit_shl
	mov	r6, rax
	mov	r0, r5
	call	__bit_shl
	sub	r6, rax
	add	r6, r3
	add	r6, t7
	add	r6, 16
	add	t6, t7
	mov	r3, r6
	jmp	.LBB23_54
.LBB23_53:                              // %.loopexit8.i
	mov	r4, r5
	jz	r5, .LBB23_56
	jmp	.LBB23_54
.LBB23_54:                              // %.preheader159
	mov	r1, 255
.LBB23_55:                              // =>This Inner Loop Header: Depth=1
	mov	r0, [r3]
	add	r4, -1
	add	r3, 1
	call	__bit_and
	mov	[t6], rax
	add	t6, 1
	jnz	r4, .LBB23_55
	jmp	.LBB23_56
.LBB23_56:                              // %memcpy.exit
	mov	r0, 16384
	mov	r1, [r0]
	mov	r3, 1296125004
	je	r1, r3, .LBB23_58
	jmp	.LBB23_57
.LBB23_57:
	mov	[r0], 1296125004
	mov	r0, 16385
	mov	[r0], 16387
	mov	r0, 16386
	mov	[r0], 0
	mov	r4, [t4]
	mov	r5, 0
	mov	r3, 0
	mov	rax, 0
	jmp	.LBB23_63
.LBB23_58:
	mov	r0, 16386
	mov	r3, [r0]
	mov	r4, [t4]
	mov	r0, r3
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r5, 0
	jz	r3, .LBB23_63
	jmp	.LBB23_59
.LBB23_59:
	jge	r3, t4, .LBB23_63
	jmp	.LBB23_60
.LBB23_60:                              // %.preheader27.preheader
.LBB23_61:                              // %.preheader27
                                        // =>This Inner Loop Header: Depth=1
	mov	r5, r3
	mov	r0, r5
	add	r0, 1
	mov	r3, [r0]
	mov	r0, r3
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	jz	r3, .LBB23_63
	jmp	.LBB23_62
.LBB23_62:                              // %.preheader27
                                        //   in Loop: Header=BB23_61 Depth=1
	jl	r3, t4, .LBB23_61
	jmp	.LBB23_63
.LBB23_63:                              // %.loopexit28
	jne	r3, t4, .LBB23_65
	jmp	.LBB23_64
.LBB23_64:
	call	abort
.LBB23_65:
	mov	r0, 16386
	jz	r5, .LBB23_69
	jmp	.LBB23_66
.LBB23_66:
	mov	r0, [r5]
	mov	r1, r0
	add	r1, r5
	jne	r1, t4, .LBB23_68
	jmp	.LBB23_67
.LBB23_67:
	add	r0, r4
	mov	[r5], r0
	mov	t4, r5
	jmp	.LBB23_70
.LBB23_68:
	add	r5, 1
	mov	r0, r5
.LBB23_69:
	mov	[r0], t4
	mov	[r2], r3
.LBB23_70:
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	mov	rax, t5
	jz	r0, .LBB23_92
	jmp	.LBB23_71
.LBB23_71:
	mov	r0, [t4]
	mov	r1, r0
	add	r1, t4
	jne	r1, r3, .LBB23_92
	jmp	.LBB23_72
.LBB23_72:
	add	r0, [r3]
	mov	[t4], r0
	add	r3, 1
	mov	r0, [r3]
	add	t4, 1
	mov	[t4], r0
	jmp	.LBB23_92
.LBB23_73:
	sub	r5, r4
	mov	r0, r5
	call	__bit_xor
	mov	r1, -2147483646
	mov	r0, rax
	mov	rax, r2
	jl	r0, r1, .LBB23_92
	jmp	.LBB23_74
.LBB23_74:
	add	r3, r2
	mov	r0, r2
	add	r0, -1
	mov	[r0], r4
	add	r4, r2
	mov	[r3], r5
	mov	rax, r2
	jz	r4, .LBB23_92
	jmp	.LBB23_75
.LBB23_75:
	mov	r0, 16384
	mov	r1, [r0]
	mov	r6, 1296125004
	je	r1, r6, .LBB23_77
	jmp	.LBB23_76
.LBB23_76:
	mov	[r0], 1296125004
	mov	r0, 16385
	mov	[r0], 16387
	mov	r0, 16386
	mov	[r0], 0
	mov	r5, [r3]
	mov	r7, 0
	mov	r6, 0
	mov	rax, 0
	jmp	.LBB23_82
.LBB23_77:
	mov	r0, 16386
	mov	r6, [r0]
	mov	r0, r6
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r7, 0
	jz	r6, .LBB23_82
	jmp	.LBB23_78
.LBB23_78:
	jge	r6, r3, .LBB23_82
	jmp	.LBB23_79
.LBB23_79:                              // %.preheader25.preheader
.LBB23_80:                              // %.preheader25
                                        // =>This Inner Loop Header: Depth=1
	mov	r7, r6
	mov	r0, r7
	add	r0, 1
	mov	r6, [r0]
	mov	r0, r6
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	jz	r6, .LBB23_82
	jmp	.LBB23_81
.LBB23_81:                              // %.preheader25
                                        //   in Loop: Header=BB23_80 Depth=1
	jl	r6, r3, .LBB23_80
	jmp	.LBB23_82
.LBB23_82:                              // %.loopexit26
	jne	r6, r3, .LBB23_84
	jmp	.LBB23_83
.LBB23_83:
	call	abort
.LBB23_84:
	mov	r0, 16386
	jz	r7, .LBB23_88
	jmp	.LBB23_85
.LBB23_85:
	mov	r0, [r7]
	mov	r1, r0
	add	r1, r7
	jne	r1, r3, .LBB23_87
	jmp	.LBB23_86
.LBB23_86:
	add	r0, r5
	mov	[r7], r0
	mov	r3, r7
	jmp	.LBB23_89
.LBB23_87:
	add	r7, 1
	mov	r0, r7
.LBB23_88:
	mov	[r0], r3
	mov	[r4], r6
.LBB23_89:
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	mov	rax, r2
	jz	r0, .LBB23_92
	jmp	.LBB23_90
.LBB23_90:
	mov	r0, [r3]
	mov	r1, r0
	add	r1, r3
	mov	rax, r2
	jne	r1, r6, .LBB23_92
	jmp	.LBB23_91
.LBB23_91:
	add	r0, [r6]
	mov	[r3], r0
	add	r6, 1
	mov	r0, [r6]
	add	r3, 1
	mov	[r3], r0
	mov	rax, r2
.LBB23_92:
	mov	x1, [rsp-2]
	mov	x0, [rsp-1]
	ret
// -- End function
// -- Begin function calloc
calloc:                                 // @calloc
// %bb.0:
	mov	r2, r1
	mov	r5, r0
	jz	r5, .LBB24_2
	jmp	.LBB24_1
.LBB24_1:
	mov	r1, 0
	mov	r3, 0
	mov	r4, 0
	mov	r0, r5
	call	__muldi3
	mov	r0, t0
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	jnz	rax, .LBB24_17
	jmp	.LBB24_2
.LBB24_2:
	mul	r2, r5
	mov	r0, r2
	call	malloc
	mov	r4, 0
	jz	rax, .LBB24_17
	jmp	.LBB24_3
.LBB24_3:
	mov	r1, 3
	mov	r4, rax
	mov	r0, r4
	call	__bit_and
	jz	rax, .LBB24_7
	jmp	.LBB24_4
.LBB24_4:
	jz	r2, .LBB24_17
	jmp	.LBB24_5
.LBB24_5:                               // %.preheader5.i.preheader
	mov	r0, r4
.LBB24_6:                               // %.preheader5.i
                                        // =>This Inner Loop Header: Depth=1
	add	r2, -1
	mov	[r0], 0
	add	r0, 1
	jz	r2, .LBB24_17
	jmp	.LBB24_6
.LBB24_7:
	mov	r1, -2147483648
	mov	r0, r2
	call	__bit_xor
	mov	r0, -2147483644
	mov	r3, r4
	jl	rax, r0, .LBB24_14
	jmp	.LBB24_8
.LBB24_8:
	mov	r0, r2
	call	__bit_xor
	mov	r0, -2147483632
	mov	r3, r4
	jl	rax, r0, .LBB24_10
	jmp	.LBB24_9
.LBB24_9:                               // %.preheader.i.preheader
	mov	r5, -2147483633
	mov	r6, r4
	jmp	.LBB24_12
.LBB24_10:                              // %.preheader23
	mov	r5, -2147483645
	mov	r1, -2147483648
	jmp	.LBB24_13
.LBB24_11:
	mov	r0, 3
	jg	r2, r0, .LBB24_10
	jmp	.LBB24_14
.LBB24_12:                              // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	[r6], 0
	mov	r3, r6
	add	r3, 16
	mov	[r3], 0
	mov	r0, r6
	add	r0, 32
	mov	[r0], 0
	mov	r0, r6
	add	r0, 48
	mov	[r0], 0
	add	r2, -16
	add	r6, 64
	mov	r0, r2
	call	__bit_xor
	jg	rax, r5, .LBB24_12
	jmp	.LBB24_11
.LBB24_13:                              // =>This Inner Loop Header: Depth=1
	mov	[r3], 0
	add	r2, -4
	add	r3, 4
	mov	r0, r2
	call	__bit_xor
	jg	rax, r5, .LBB24_13
	jmp	.LBB24_14
.LBB24_14:                              // %.loopexit4.i
	jz	r2, .LBB24_17
	jmp	.LBB24_15
.LBB24_15:                              // %.preheader.preheader
.LBB24_16:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	add	r2, -1
	mov	[r3], 0
	add	r3, 1
	jnz	r2, .LBB24_16
	jmp	.LBB24_17
.LBB24_17:                              // %memset.exit
	mov	rax, r4
	ret
// -- End function
// -- Begin function d2fixed_buffered_n
d2fixed_buffered_n:                     // @d2fixed_buffered_n
// %bb.0:                               // %memcpy.exit
	mov	[rsp-1], x0
	mov	[rsp-2], x1
	mov	[rsp-3], x2
	mov	[rsp-4], x3
	mov	[rsp-5], x4
	mov	[rsp-6], x5
	mov	[rsp-7], x6
	mov	[rsp-8], x7
	mov	[rsp-9], x8
	mov	[rsp-10], x9
	mov	[rsp-11], x10
	mov	[rsp-12], x11
	mov	[rsp-13], x12
	mov	[rsp-14], x13
	mov	[rsp-15], x14
	mov	[rsp-16], x15
	mov	t4, r1
	mov	r1, 1048575
	mov	r4, r3
	mov	r5, r2
	mov	r6, r0
	mov	r0, t4
	call	__bit_and
	mov	r1, 20
	mov	r7, rax
	call	__bit_shr
	mov	r1, 2047
	mov	r3, 2047
	mov	r0, rax
	call	__bit_and
	mov	r2, rax
	jne	r2, r3, .LBB25_6
	jmp	.LBB25_1
.LBB25_1:
	mov	r0, r6
	mov	r1, r7
	call	__bit_or
	jz	rax, .LBB25_3
	jmp	.LBB25_2
.LBB25_2:                               // %memcpy.exit38.loopexit147
	mov	r0, r4
	add	r0, 1
	mov	[r4], 110
	add	r4, 2
	mov	[r0], 0
	mov	[r4], 0
	mov	t2, 3
	jmp	.LBB25_168
.LBB25_3:
	mov	r0, -1
	mov	t2, 8
	jg	t4, r0, .LBB25_5
	jmp	.LBB25_4
.LBB25_4:
	mov	[r4], 45
	mov	t2, 9
.LBB25_5:                               // %memcpy.exit38.loopexit
	mov	r1, 29
	mov	r0, t4
	call	__bit_shr
	mov	r1, 4
	mov	r0, rax
	call	__bit_and
	div	rax, 4
	add	r4, rax
	mov	r0, r4
	add	r0, 1
	mov	[r4], 73
	mov	r1, r4
	add	r1, 2
	mov	[r0], 0
	mov	r0, r4
	add	r0, 3
	mov	[r1], 0
	mov	r1, r4
	add	r1, 4
	mov	[r0], 0
	mov	r0, r4
	add	r0, 5
	mov	[r1], 110
	mov	r1, r4
	add	r1, 6
	mov	[r0], 0
	add	r4, 7
	mov	[r1], 0
	mov	[r4], 0
	jmp	.LBB25_168
.LBB25_6:
	mov	r0, r6
	mov	r1, r7
	call	__bit_or
	jnz	rax, .LBB25_25
	jmp	.LBB25_7
.LBB25_7:
	jnz	r2, .LBB25_25
	jmp	.LBB25_8
.LBB25_8:
	mov	r1, -1
	mov	r0, 0
	jg	t4, r1, .LBB25_10
	jmp	.LBB25_9
.LBB25_9:
	mov	[r4], 45
	mov	r0, 1
.LBB25_10:
	mov	t2, r0
	add	t2, 1
	mov	r1, r4
	add	r1, r0
	mov	[r1], 48
	jz	r5, .LBB25_168
	jmp	.LBB25_11
.LBB25_11:
	mov	r1, 2
	call	__bit_or
	mov	r2, rax
	add	t2, r4
	add	r4, r2
	mov	r1, 3
	mov	[t2], 46
	mov	r0, r4
	call	__bit_and
	jz	rax, .LBB25_14
	jmp	.LBB25_12
.LBB25_12:                              // %.preheader5.i.preheader
	mov	r0, r5
.LBB25_13:                              // %.preheader5.i
                                        // =>This Inner Loop Header: Depth=1
	add	r0, -1
	mov	[r4], 48
	add	r4, 1
	jz	r0, .LBB25_24
	jmp	.LBB25_13
.LBB25_14:
	mov	r1, -2147483648
	mov	r0, r5
	call	__bit_xor
	mov	r1, -2147483644
	jl	rax, r1, .LBB25_22
	jmp	.LBB25_15
.LBB25_15:
	mov	r1, -2147483648
	mov	r0, r5
	call	__bit_xor
	mov	r1, -2147483632
	jl	rax, r1, .LBB25_17
	jmp	.LBB25_16
.LBB25_16:                              // %.preheader.i.preheader
	mov	r3, -2147483633
	mov	r6, r4
	mov	r0, r5
	jmp	.LBB25_19
.LBB25_17:                              // %.preheader351
	mov	r3, -2147483645
	mov	r1, -2147483648
	jmp	.LBB25_20
.LBB25_18:
	mov	r1, 3
	jg	r0, r1, .LBB25_17
	jmp	.LBB25_21
.LBB25_19:                              // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	[r6], 808464432
	mov	r4, r6
	add	r4, 16
	mov	[r4], 808464432
	mov	r1, r6
	add	r1, 32
	mov	[r1], 808464432
	mov	r1, r6
	add	r1, 48
	mov	[r1], 808464432
	add	r0, -16
	mov	r1, -2147483648
	add	r6, 64
	call	__bit_xor
	jg	rax, r3, .LBB25_19
	jmp	.LBB25_18
.LBB25_20:                              // =>This Inner Loop Header: Depth=1
	mov	[r4], 808464432
	add	r0, -4
	add	r4, 4
	call	__bit_xor
	jg	rax, r3, .LBB25_20
	jmp	.LBB25_21
.LBB25_21:                              // %.loopexit4.i
	jz	r0, .LBB25_24
	jmp	.LBB25_22
.LBB25_22:                              // %.loopexit4.i.thread.preheader
.LBB25_23:                              // %.loopexit4.i.thread
                                        // =>This Inner Loop Header: Depth=1
	add	r0, -1
	mov	[r4], 48
	add	r4, 1
	jnz	r0, .LBB25_23
	jmp	.LBB25_24
.LBB25_24:                              // %memset.exit
	add	r2, r5
	mov	t2, r2
	jmp	.LBB25_168
.LBB25_25:
	mov	r1, 1048576
	mov	r0, r7
	call	__bit_or
	jz	r2, .LBB25_27
	jmp	.LBB25_26
.LBB25_26:
	mov	r7, rax
.LBB25_27:
	mov	t1, -1074
	jz	r2, .LBB25_29
	jmp	.LBB25_28
.LBB25_28:
	add	r2, -1075
	mov	t1, r2
.LBB25_29:
	mov	r0, -1
	mov	t2, 0
	jg	t4, r0, .LBB25_31
	jmp	.LBB25_30
.LBB25_30:
	mov	[r4], 45
	mov	t2, 1
.LBB25_31:
	mov	r0, -52
	jl	t1, r0, .LBB25_67
	jmp	.LBB25_32
.LBB25_32:
	mov	r1, -2147483648
	mov	r2, -2147483648
	mov	r0, t1
	call	__bit_xor
	sub	r2, rax
	mov	r1, 31
	mov	r0, r2
	call	__bit_shr
	mov	r1, 1
	mov	t3, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r0, rax
	mov	r1, t1
	call	__bit_and
	mov	t4, rax
	mov	r0, t4
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
	mov	t5, rax
	mov	r3, t4
	sub	r3, t1
	add	r3, 128
	mov	x5, r4
	add	x5, -8
	mov	t7, 0
	mov	x6, 100
	mov	x7, mcasm_static_de0ca07a3ba831a25dedc7210c66af9c
	mov	x8, 2
	mov	x9, -1147483648
	mov	x10, 99999999
	mov	x11, 10
	mov	x12, 9999999
	mov	x13, 999999
	mov	x14, 99999
	mov	t6, t5
.LBB25_33:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB25_37 Depth 2
                                        //     Child Loop BB25_58 Depth 2
	add	t6, -1
	mov	r0, t4
	mov	r1, t6
	mov	r2, rsp
	call	ryu_fill_pow10_split_exp
	mov	r0, r6
	mov	r1, r7
	call	ryu_mul_shift_mod1e9_exact
	mov	r2, rax
	jnz	t7, .LBB25_38
	jmp	.LBB25_34
.LBB25_34:                              //   in Loop: Header=BB25_33 Depth=1
	jnz	r2, .LBB25_45
	jmp	.LBB25_35
.LBB25_35:                              //   in Loop: Header=BB25_33 Depth=1
	jl	t5, x8, .LBB25_67
	jmp	.LBB25_36
.LBB25_36:                              // %.preheader90.preheader
                                        //   in Loop: Header=BB25_33 Depth=1
.LBB25_37:                              // %.preheader90
                                        //   Parent Loop BB25_33 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	t6, t5
	add	t6, -2
	mov	r0, t4
	mov	r1, t6
	mov	r2, rsp
	call	ryu_fill_pow10_split_exp
	mov	r0, r6
	mov	r1, r7
	call	ryu_mul_shift_mod1e9_exact
	mov	r2, rax
	jz	r2, .LBB25_66
	jmp	.LBB25_44
.LBB25_38:                              //   in Loop: Header=BB25_33 Depth=1
	mov	t7, r4
	add	t7, t2
	jz	r2, .LBB25_40
	jmp	.LBB25_39
.LBB25_39:                              // %memcpy.exit40
                                        //   in Loop: Header=BB25_33 Depth=1
	mov	x3, t7
	mov	r1, 10000
	add	x3, 7
	mov	r0, r2
	call	__udivsi3
	mov	x0, rax
	mov	r0, x0
	mul	r0, -10000
	add	r0, r2
	mov	r1, 100
	call	__udivsi3
	mov	x1, rax
	mov	t0, x1
	mul	t0, -100
	add	t0, r0
	mov	r1, 1
	mov	r0, t0
	call	__bit_shl
	mov	x2, rax
	add	x2, x7
	mov	r0, [x2]
	mov	r1, 255
	add	x2, 1
	call	__bit_and
	mov	[x3], rax
	mov	r0, [x2]
	mov	x2, t7
	add	x2, 8
	call	__bit_and
	mov	[x2], rax
	mov	x2, t7
	mov	r1, 1
	add	x2, 5
	mov	r0, x1
	call	__bit_shl
	mov	x1, rax
	add	x1, x7
	mov	r0, [x1]
	mov	r1, 255
	add	x1, 1
	call	__bit_and
	mov	[x2], rax
	mov	r0, [x1]
	mov	x1, t7
	add	x1, 6
	call	__bit_and
	mov	r1, 100000000
	mov	[x1], rax
	mov	r0, r2
	call	__udivsi3
	mov	r2, rax
	mov	r0, r2
	mul	r0, -10000
	add	r0, x0
	mov	r1, 100
	call	__udivsi3
	mov	x0, rax
	mov	t0, x0
	mul	t0, -100
	add	t0, r0
	mov	r1, 1
	mov	r0, t0
	call	__bit_shl
	mov	x1, rax
	add	x1, x7
	mov	r0, [x1]
	mov	x2, t7
	add	x2, 3
	mov	r1, 255
	add	x1, 1
	call	__bit_and
	mov	[x2], rax
	mov	r0, [x1]
	mov	x1, t7
	add	x1, 4
	call	__bit_and
	mov	r1, 1
	mov	[x1], rax
	mov	r0, x0
	call	__bit_shl
	mov	x0, rax
	add	x0, x7
	mov	r0, [x0]
	mov	x1, t7
	add	x1, 1
	mov	r1, 255
	add	x0, 1
	call	__bit_and
	mov	[x1], rax
	mov	r0, [x0]
	mov	x0, t7
	add	x0, 2
	call	__bit_and
	mov	[x0], rax
	add	r2, 48
	mov	[t7], r2
	jmp	.LBB25_43
.LBB25_40:                              //   in Loop: Header=BB25_33 Depth=1
	mov	r1, 3
	mov	r0, t7
	call	__bit_and
	jz	rax, .LBB25_42
	jmp	.LBB25_41
.LBB25_41:                              // %.preheader5.i44.preheader
                                        //   in Loop: Header=BB25_33 Depth=1
	mov	r0, t7
	add	r0, 1
	mov	[t7], 48
	mov	r1, t7
	add	r1, 2
	mov	[r0], 48
	mov	r0, t7
	add	r0, 3
	mov	[r1], 48
	mov	r1, t7
	add	r1, 4
	mov	[r0], 48
	mov	r0, t7
	add	r0, 5
	mov	[r1], 48
	mov	r1, t7
	add	r1, 6
	mov	[r0], 48
	mov	r0, t7
	add	r0, 7
	mov	[r1], 48
	add	t7, 8
	mov	[r0], 48
	mov	[t7], 48
	jmp	.LBB25_43
.LBB25_42:                              // %.preheader86.preheader
                                        //   in Loop: Header=BB25_33 Depth=1
	mov	r0, t7
	add	r0, 4
	mov	[t7], 808464432
	mov	[r0], 808464432
	add	t7, 8
	mov	[t7], 48
.LBB25_43:                              // %memset.exit46
                                        //   in Loop: Header=BB25_33 Depth=1
	add	t2, 9
	jmp	.LBB25_65
.LBB25_44:                              // %.loopexit91.loopexit
                                        //   in Loop: Header=BB25_33 Depth=1
	add	t5, -1
.LBB25_45:                              // %.loopexit91
                                        //   in Loop: Header=BB25_33 Depth=1
	mov	r1, -2147483648
	mov	r0, r2
	call	__bit_xor
	jl	rax, x9, .LBB25_47
	jmp	.LBB25_46
.LBB25_46:
	call	abort
.LBB25_47:                              //   in Loop: Header=BB25_33 Depth=1
	mov	t7, 9
	mov	x15, r4
	add	x15, t2
	jg	r2, x10, .LBB25_57
	jmp	.LBB25_48
.LBB25_48:                              //   in Loop: Header=BB25_33 Depth=1
	mov	t7, 8
	jg	r2, x12, .LBB25_57
	jmp	.LBB25_49
.LBB25_49:                              //   in Loop: Header=BB25_33 Depth=1
	mov	t7, 7
	jg	r2, x13, .LBB25_57
	jmp	.LBB25_50
.LBB25_50:                              //   in Loop: Header=BB25_33 Depth=1
	mov	t7, 6
	jg	r2, x14, .LBB25_57
	jmp	.LBB25_51
.LBB25_51:                              //   in Loop: Header=BB25_33 Depth=1
	mov	t7, 5
	mov	r0, 9999
	jg	r2, r0, .LBB25_57
	jmp	.LBB25_52
.LBB25_52:                              //   in Loop: Header=BB25_33 Depth=1
	mov	t7, 4
	mov	r0, 999
	jg	r2, r0, .LBB25_56
	jmp	.LBB25_53
.LBB25_53:                              //   in Loop: Header=BB25_33 Depth=1
	mov	t7, 3
	mov	r0, 99
	jg	r2, r0, .LBB25_56
	jmp	.LBB25_54
.LBB25_54:                              //   in Loop: Header=BB25_33 Depth=1
	mov	t7, 2
	mov	r0, 9
	jg	r2, r0, .LBB25_56
	jmp	.LBB25_55
.LBB25_55:                              //   in Loop: Header=BB25_33 Depth=1
	mov	t7, 1
.LBB25_56:                              //   in Loop: Header=BB25_33 Depth=1
	mov	x0, 0
	jmp	.LBB25_59
.LBB25_57:                              //   in Loop: Header=BB25_33 Depth=1
	mov	r1, 2
	mov	r0, t7
	call	__bit_shl
	mov	x0, rax
	mov	r0, t2
	call	__bit_shl
	mov	x1, rax
	add	x1, x0
	add	x1, x5
	mov	x0, 0
.LBB25_58:                              // %memcpy.exit47
                                        //   Parent Loop BB25_33 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 10000
	mov	x2, r2
	mov	r0, x2
	call	__udivsi3
	mov	r2, rax
	mov	r0, r2
	mul	r0, -10000
	add	r0, x2
	mov	r1, 100
	call	__udivsi3
	mov	x3, rax
	mov	t0, x3
	mul	t0, -100
	add	t0, r0
	mov	r1, 1
	mov	r0, t0
	call	__bit_shl
	mov	x4, rax
	add	x4, x7
	mov	r0, [x4]
	mov	r1, 255
	add	x4, 1
	call	__bit_and
	mov	[x1], rax
	mov	r0, [x4]
	mov	x4, x1
	add	x4, 4
	call	__bit_and
	mov	r1, 1
	mov	[x4], rax
	mov	r0, x3
	call	__bit_shl
	mov	x3, rax
	add	x3, x7
	mov	r0, [x3]
	mov	x4, x1
	add	x4, -8
	mov	r1, 255
	add	x3, 1
	call	__bit_and
	mov	[x4], rax
	mov	r0, [x3]
	mov	x3, x1
	add	x3, -4
	call	__bit_and
	mov	[x3], rax
	add	x0, 4
	add	x1, -16
	jg	x2, x10, .LBB25_58
	jmp	.LBB25_59
.LBB25_59:                              // %.loopexit89
                                        //   in Loop: Header=BB25_33 Depth=1
	jl	r2, x6, .LBB25_61
	jmp	.LBB25_60
.LBB25_60:                              // %memcpy.exit49
                                        //   in Loop: Header=BB25_33 Depth=1
	mov	x2, r4
	mov	r1, 65532
	add	x2, t2
	mov	r0, r2
	call	__bit_and
	mov	r1, 2
	mov	r0, rax
	call	__bit_shr
	mul	rax, 5243
	mov	r1, 17
	mov	r0, rax
	call	__bit_shr
	mov	x1, rax
	mov	r0, x1
	mul	r0, -100
	add	x2, t7
	sub	x2, x0
	add	r0, r2
	mov	x3, x2
	mov	r1, 3
	add	x3, -2
	call	__bit_shl
	mov	r1, 262136
	mov	r0, rax
	call	__bit_and
	mov	r2, rax
	div	r2, 4
	add	r2, x7
	mov	r0, [r2]
	mov	r1, 255
	add	r2, 1
	call	__bit_and
	mov	[x3], rax
	mov	r0, [r2]
	add	x2, -1
	call	__bit_and
	mov	r1, 2
	mov	[x2], rax
	mov	r0, x0
	call	__bit_or
	mov	x0, rax
	mov	r2, x1
.LBB25_61:                              //   in Loop: Header=BB25_33 Depth=1
	jl	r2, x11, .LBB25_63
	jmp	.LBB25_62
.LBB25_62:                              // %memcpy.exit50.loopexit
                                        //   in Loop: Header=BB25_33 Depth=1
	mov	x1, r4
	mov	r1, 1
	add	x1, t2
	mov	r0, r2
	call	__bit_shl
	mov	r2, rax
	add	x1, t7
	sub	x1, x0
	add	r2, x7
	mov	r0, [r2]
	mov	x0, x1
	add	x0, -2
	mov	r1, 255
	add	r2, 1
	call	__bit_and
	mov	[x0], rax
	mov	r0, [r2]
	add	x1, -1
	call	__bit_and
	mov	[x1], rax
	jmp	.LBB25_64
.LBB25_63:                              //   in Loop: Header=BB25_33 Depth=1
	mov	r1, 48
	mov	r0, r2
	call	__bit_or
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	[x15], rax
.LBB25_64:                              // %memcpy.exit50
                                        //   in Loop: Header=BB25_33 Depth=1
	add	t2, t7
.LBB25_65:                              //   in Loop: Header=BB25_33 Depth=1
	mov	t7, 1
	mov	r0, t5
	mov	t5, t6
	jg	r0, t7, .LBB25_33
	jmp	.LBB25_68
.LBB25_66:                              //   in Loop: Header=BB25_37 Depth=2
	add	t5, -1
	jg	t5, t3, .LBB25_37
	jmp	.LBB25_67
.LBB25_67:                              // %.loopexit92
	mov	r0, r4
	add	r0, t2
	add	t2, 1
	mov	[r0], 48
.LBB25_68:                              // %.loopexit94
	jz	r5, .LBB25_70
	jmp	.LBB25_69
.LBB25_69:
	mov	r0, r4
	add	r0, t2
	add	t2, 1
	mov	[r0], 46
.LBB25_70:
	mov	r0, -1
	jg	t1, r0, .LBB25_153
	jmp	.LBB25_71
.LBB25_71:
	mov	r0, -52
	jl	t1, r0, .LBB25_73
	jmp	.LBB25_72
.LBB25_72:
	mov	r1, 9
	mov	r0, r5
	call	__udivsi3
	mov	t4, rax
	mov	t6, 0
	jmp	.LBB25_91
.LBB25_73:
	mov	r0, t1
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
	mov	r2, rax
	mov	r0, 1
	sub	r0, r2
	mov	r1, 31
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	add	r2, -1
	add	rax, 1
	mov	r0, rax
	mov	r1, r2
	call	__bit_and
	mov	r1, 9
	mov	r3, rax
	mov	r0, r5
	call	__udivsi3
	mov	t4, rax
	jge	t4, r3, .LBB25_89
	jmp	.LBB25_74
.LBB25_74:
	add	r4, t2
	mov	r1, 3
	mov	r0, r4
	call	__bit_and
	jz	rax, .LBB25_78
	jmp	.LBB25_75
.LBB25_75:
	jz	r5, .LBB25_88
	jmp	.LBB25_76
.LBB25_76:                              // %.preheader5.i51.preheader
	mov	r0, r5
.LBB25_77:                              // %.preheader5.i51
                                        // =>This Inner Loop Header: Depth=1
	add	r0, -1
	mov	[r4], 48
	add	r4, 1
	jz	r0, .LBB25_88
	jmp	.LBB25_77
.LBB25_78:
	mov	r1, -2147483648
	mov	r0, r5
	call	__bit_xor
	mov	r1, -2147483644
	jl	rax, r1, .LBB25_85
	jmp	.LBB25_79
.LBB25_79:
	mov	r1, -2147483648
	mov	r0, r5
	call	__bit_xor
	mov	r1, -2147483632
	jl	rax, r1, .LBB25_81
	jmp	.LBB25_80
.LBB25_80:                              // %.preheader.i53.preheader
	mov	r2, -2147483633
	mov	r3, r4
	mov	r0, r5
	jmp	.LBB25_83
.LBB25_81:                              // %.preheader358
	mov	r2, -2147483645
	mov	r1, -2147483648
	jmp	.LBB25_84
.LBB25_82:
	mov	r1, 3
	jg	r0, r1, .LBB25_81
	jmp	.LBB25_85
.LBB25_83:                              // %.preheader.i53
                                        // =>This Inner Loop Header: Depth=1
	mov	[r3], 808464432
	mov	r4, r3
	add	r4, 16
	mov	[r4], 808464432
	mov	r1, r3
	add	r1, 32
	mov	[r1], 808464432
	mov	r1, r3
	add	r1, 48
	mov	[r1], 808464432
	add	r0, -16
	mov	r1, -2147483648
	add	r3, 64
	call	__bit_xor
	jg	rax, r2, .LBB25_83
	jmp	.LBB25_82
.LBB25_84:                              // =>This Inner Loop Header: Depth=1
	mov	[r4], 808464432
	add	r0, -4
	add	r4, 4
	call	__bit_xor
	jg	rax, r2, .LBB25_84
	jmp	.LBB25_85
.LBB25_85:                              // %.loopexit4.i52
	jz	r0, .LBB25_88
	jmp	.LBB25_86
.LBB25_86:                              // %.preheader.preheader
.LBB25_87:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	add	r0, -1
	mov	[r4], 48
	add	r4, 1
	jnz	r0, .LBB25_87
	jmp	.LBB25_88
.LBB25_88:                              // %memset.exit54
	add	t2, r5
	jmp	.LBB25_168
.LBB25_89:
	mov	t6, 0
	jz	r3, .LBB25_91
	jmp	.LBB25_90
.LBB25_90:
	mov	r0, r4
	add	r0, t2
	mov	r2, r3
	mul	r2, 9
	mov	r1, 48
	call	memset
	add	t2, r2
	mov	t6, r3
.LBB25_91:
	mov	r2, 0
	sub	r2, t1
	mov	r3, t6
	mul	r3, 9
	jge	t6, t4, .LBB25_93
	jmp	.LBB25_92
.LBB25_92:
	mov	r0, r3
	add	r0, 9
	jg	r0, r2, .LBB25_95
	jmp	.LBB25_93
.LBB25_93:
	mov	r1, 3
	mov	r0, r4
	mov	[rsp-23], r2
	call	__bit_and
	mov	[rsp-29], rax
	mov	r0, t4
	mul	r0, 9
	sub	r0, r5
	add	r0, 9
	mov	[rsp-30], r0
	mov	r2, t2
	add	r2, r5
	mov	t3, t4
	mov	r1, 2
	mul	t3, 36
	mov	r0, t2
	call	__bit_shl
	mov	x1, rax
	mov	r0, r5
	call	__bit_shl
	mov	t5, rax
	add	t5, x1
	sub	t5, t3
	add	t5, -4
	mov	x2, t4
	mov	r1, 4
	mul	x2, 144
	mov	r0, r2
	call	__bit_shl
	mov	r0, [rsp-23]
	mov	r1, rsp
	mov	r2, rsp
	mov	t0, rsp
	mov	t3, rsp
	mov	t7, rsp
	sub	x2, rax
	add	x2, 16
	add	r3, 18
	mov	x15, 0
	sub	x15, t2
	add	r1, 1
	mov	[rsp-24], r1
	add	r2, 32
	mov	[rsp-25], r2
	add	t0, 33
	mov	[rsp-26], t0
	add	t3, 64
	mov	[rsp-27], t3
	add	t7, 65
	mov	[rsp-28], t7
	mov	t3, mcasm_static_de0ca07a3ba831a25dedc7210c66af9c
	jmp	.LBB25_110
.LBB25_94:                              // %.loopexit83.loopexit
	mov	t2, 0
	sub	t2, x15
.LBB25_95:                              // %.loopexit83
	mul	t6, -9
	add	r4, t2
	mov	r1, 3
	add	t6, r5
	mov	r0, r4
	call	__bit_and
	jz	rax, .LBB25_99
	jmp	.LBB25_96
.LBB25_96:
	jz	t6, .LBB25_109
	jmp	.LBB25_97
.LBB25_97:                              // %.preheader5.i55.preheader
	mov	r0, t6
.LBB25_98:                              // %.preheader5.i55
                                        // =>This Inner Loop Header: Depth=1
	add	r0, -1
	mov	[r4], 48
	add	r4, 1
	jz	r0, .LBB25_109
	jmp	.LBB25_98
.LBB25_99:
	mov	r1, -2147483648
	mov	r0, t6
	call	__bit_xor
	mov	r1, -2147483644
	jl	rax, r1, .LBB25_106
	jmp	.LBB25_100
.LBB25_100:
	mov	r1, -2147483648
	mov	r0, t6
	call	__bit_xor
	mov	r1, -2147483632
	jl	rax, r1, .LBB25_102
	jmp	.LBB25_101
.LBB25_101:                             // %.preheader.i57.preheader
	mov	r2, -2147483633
	mov	r3, r4
	mov	r0, t6
	jmp	.LBB25_104
.LBB25_102:                             // %.preheader366
	mov	r2, -2147483645
	mov	r1, -2147483648
	jmp	.LBB25_105
.LBB25_103:
	mov	r1, 3
	jg	r0, r1, .LBB25_102
	jmp	.LBB25_106
.LBB25_104:                             // %.preheader.i57
                                        // =>This Inner Loop Header: Depth=1
	mov	[r3], 808464432
	mov	r4, r3
	add	r4, 16
	mov	[r4], 808464432
	mov	r1, r3
	add	r1, 32
	mov	[r1], 808464432
	mov	r1, r3
	add	r1, 48
	mov	[r1], 808464432
	add	r0, -16
	mov	r1, -2147483648
	add	r3, 64
	call	__bit_xor
	jg	rax, r2, .LBB25_104
	jmp	.LBB25_103
.LBB25_105:                             // =>This Inner Loop Header: Depth=1
	mov	[r4], 808464432
	add	r0, -4
	add	r4, 4
	call	__bit_xor
	jg	rax, r2, .LBB25_105
	jmp	.LBB25_106
.LBB25_106:                             // %.loopexit4.i56
	jz	r0, .LBB25_109
	jmp	.LBB25_107
.LBB25_107:                             // %.preheader77.preheader
.LBB25_108:                             // %.preheader77
                                        // =>This Inner Loop Header: Depth=1
	add	r0, -1
	mov	[r4], 48
	add	r4, 1
	jnz	r0, .LBB25_108
	jmp	.LBB25_109
.LBB25_109:                             // %memset.exit58
	add	t2, t6
	jmp	.LBB25_168
.LBB25_110:                             // =>This Inner Loop Header: Depth=1
	mov	t7, t6
	add	t6, 1
	mov	x0, r3
	mov	r1, t6
	mov	r2, rsp
	call	ryu_fill_pow10_split_2_exp
	mov	r0, [rsp-24]
	mov	t2, [r0]
	mov	x4, [rsp]
	mov	r1, 0
	mov	r3, 0
	mov	r0, t2
	mov	r2, r6
	call	__muldi3
	mov	x5, rax
	mov	x6, t0
	mov	r0, x4
	call	__muldi3
	mov	r1, 31
	mov	r2, t0
	mov	r0, r2
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r0, rax
	call	__bit_and
	mov	x3, rax
	add	x5, r2
	mov	r1, 31
	add	x3, x6
	mov	r0, x5
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r0, rax
	call	__bit_and
	mov	r1, 0
	mov	x5, rax
	mov	r0, x4
	mov	r2, r7
	call	__muldi3
	add	x5, t0
	add	x3, x5
	mov	r1, 31
	mov	r0, x3
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r0, rax
	call	__bit_and
	mov	r1, 0
	mov	x4, rax
	mov	r0, t2
	call	__muldi3
	mov	x6, rax
	mov	r2, t0
	mov	r1, 31
	add	x6, x3
	mov	r0, x5
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r0, rax
	call	__bit_and
	mov	x7, rax
	add	x7, r2
	mov	r0, [rsp-25]
	mov	r0, [r0]
	mov	r1, [rsp-26]
	mov	t2, [r1]
	mov	r1, 0
	add	x7, x4
	mov	r2, r6
	call	__muldi3
	mov	x8, rax
	mov	x3, t0
	mov	r2, r7
	call	__muldi3
	mov	x9, rax
	mov	x10, t0
	mov	r0, t2
	mov	r2, r6
	call	__muldi3
	mov	x11, rax
	mov	x12, t0
	mov	r2, r7
	call	__muldi3
	mov	x4, rax
	mov	x5, t0
	mov	r0, x3
	mov	r2, x11
	mov	r3, x12
	call	__adddi3
	mov	x3, t0
	mov	r0, rax
	mov	r2, x9
	mov	r3, x10
	call	__adddi3
	mov	x9, rax
	mov	t2, t0
	mov	r0, x8
	mov	r2, x6
	mov	r3, x7
	call	__adddi3
	mov	r2, 0
	mov	r1, t0
	mov	r0, rax
	mov	r3, x9
	call	__adddi3
	mov	r2, rax
	mov	r3, t0
	mov	r0, r3
	mov	r1, x7
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	sub	r3, x7
	mov	r1, 31
	mov	x7, rax
	mov	r0, r3
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	r2, x6
	mov	r1, 31
	mov	r3, rax
	mov	r0, r2
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	rax, r3
	add	x7, 1
	mov	r0, x7
	mov	r1, rax
	call	__bit_and
	add	r3, rax
	mov	r1, 1
	mov	r0, r3
	call	__bit_and
	mov	r0, [rsp-27]
	mov	r0, [r0]
	mov	r1, [rsp-28]
	mov	x7, [r1]
	mov	r1, 0
	mov	r3, 0
	mov	x6, rax
	mov	r2, r6
	call	__muldi3
	mov	x8, rax
	mov	x9, t0
	mov	r2, r7
	call	__muldi3
	mov	x10, rax
	mov	x11, t0
	mov	r0, x7
	mov	r2, r6
	call	__muldi3
	mov	x12, rax
	mov	x13, t0
	mov	r2, r7
	call	__muldi3
	mov	x7, rax
	mov	x14, t0
	mov	r0, x9
	mov	r2, x12
	mov	r3, x13
	call	__adddi3
	mov	x9, t0
	mov	r0, rax
	mov	r2, x10
	mov	r3, x11
	call	__adddi3
	mov	x10, rax
	mov	x11, t0
	mov	r0, x8
	mov	r2, x4
	mov	r3, x5
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x3
	call	__adddi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, t2
	call	__adddi3
	mov	r2, 0
	mov	t2, rax
	mov	x3, t0
	mov	r0, t2
	mov	r1, x3
	mov	r3, x10
	call	__adddi3
	mov	r1, 0
	mov	x4, t0
	mov	r0, x9
	mov	r2, x7
	mov	r3, x14
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x11
	call	__adddi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x6
	call	__adddi3
	mov	r1, -512
	mov	x5, rax
	mov	x6, t0
	mov	r0, x5
	call	__bit_and
	mov	r2, 0
	mov	r3, 1000000000
	mov	x7, rax
	mov	r1, x6
	call	__umoddi3
	mov	r1, 1073741823
	mov	r0, t0
	call	__bit_and
	mov	r2, 1000000000
	mov	r3, 0
	mov	r0, x7
	mov	r1, rax
	call	__udivdi3
	mov	r2, -1000000000
	mov	r1, t0
	mov	r0, rax
	call	__muldi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x5
	mov	r3, x6
	call	__adddi3
	mov	r1, -512
	mov	x5, rax
	mov	r0, t2
	call	__bit_and
	mov	r2, 1000000000
	mov	r3, 0
	mov	x6, rax
	mov	r0, x4
	mov	r1, x5
	call	__udivdi3
	mov	r2, -1000000000
	mov	r1, t0
	mov	r0, rax
	call	__muldi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x4
	mov	r3, x5
	call	__adddi3
	mov	r2, 1000000000
	mov	r3, 0
	mov	r0, x6
	mov	r1, rax
	call	__udivdi3
	mov	r2, -1000000000
	mov	r1, t0
	mov	r0, rax
	call	__muldi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, t2
	mov	r3, x3
	call	__adddi3
	je	t4, t7, .LBB25_116
	jmp	.LBB25_111
.LBB25_111:                             //   in Loop: Header=BB25_110 Depth=1
	mov	t7, r4
	add	t7, x1
	jz	rax, .LBB25_113
	jmp	.LBB25_112
.LBB25_112:                             // %memcpy.exit59
                                        //   in Loop: Header=BB25_110 Depth=1
	mov	x4, t7
	mov	r1, 10000
	add	x4, 28
	mov	r0, rax
	mov	r3, rax
	call	__udivsi3
	mov	r2, rax
	mov	r0, r2
	mul	r0, -10000
	add	r0, r3
	mov	r1, 100
	call	__udivsi3
	mov	t2, rax
	mov	t0, t2
	mul	t0, -100
	add	t0, r0
	mov	r1, 1
	mov	r0, t0
	call	__bit_shl
	mov	x3, rax
	add	x3, t3
	mov	r0, [x3]
	mov	r1, 255
	add	x3, 1
	call	__bit_and
	mov	[x4], rax
	mov	r0, [x3]
	mov	x3, t7
	add	x3, 32
	call	__bit_and
	mov	[x3], rax
	mov	x3, t7
	mov	r1, 1
	add	x3, 20
	mov	r0, t2
	call	__bit_shl
	mov	t2, rax
	add	t2, t3
	mov	r0, [t2]
	mov	r1, 255
	add	t2, 1
	call	__bit_and
	mov	[x3], rax
	mov	r0, [t2]
	mov	t2, t7
	add	t2, 24
	call	__bit_and
	mov	r1, 100000000
	mov	[t2], rax
	mov	r0, r3
	call	__udivsi3
	mov	r3, rax
	mov	r0, r3
	mul	r0, -10000
	add	r0, r2
	mov	r1, 100
	call	__udivsi3
	mov	r2, rax
	mov	t0, r2
	mul	t0, -100
	add	t0, r0
	mov	r1, 1
	mov	r0, t0
	call	__bit_shl
	mov	t2, rax
	add	t2, t3
	mov	r0, [t2]
	mov	x3, t7
	add	x3, 12
	mov	r1, 255
	add	t2, 1
	call	__bit_and
	mov	[x3], rax
	mov	r0, [t2]
	mov	t2, t7
	add	t2, 16
	call	__bit_and
	mov	r1, 1
	mov	[t2], rax
	mov	r0, r2
	call	__bit_shl
	mov	r2, rax
	add	r2, t3
	mov	r0, [r2]
	mov	t2, t7
	add	t2, 4
	mov	r1, 255
	add	r2, 1
	call	__bit_and
	mov	[t2], rax
	mov	r0, [r2]
	mov	r2, t7
	add	r2, 8
	call	__bit_and
	mov	[r2], rax
	add	r3, 48
	mov	[t7], r3
	mov	r0, [rsp-23]
	jmp	.LBB25_134
.LBB25_113:                             //   in Loop: Header=BB25_110 Depth=1
	mov	r0, [rsp-29]
	jz	r0, .LBB25_115
	jmp	.LBB25_114
.LBB25_114:                             // %.preheader5.i63.preheader
                                        //   in Loop: Header=BB25_110 Depth=1
	mov	r0, t7
	add	r0, 4
	mov	[t7], 48
	mov	r1, t7
	add	r1, 8
	mov	[r0], 48
	mov	r0, t7
	add	r0, 12
	mov	[r1], 48
	mov	r1, t7
	add	r1, 16
	mov	[r0], 48
	mov	r0, t7
	add	r0, 20
	mov	[r1], 48
	mov	r1, t7
	add	r1, 24
	mov	[r0], 48
	mov	r0, t7
	add	r0, 28
	mov	[r1], 48
	add	t7, 32
	mov	[r0], 48
	mov	[t7], 48
	mov	r0, [rsp-23]
	jmp	.LBB25_134
.LBB25_115:                             // %.preheader80.preheader
                                        //   in Loop: Header=BB25_110 Depth=1
	mov	r0, t7
	add	r0, 16
	mov	[t7], 808464432
	mov	[r0], 808464432
	add	t7, 32
	mov	[t7], 48
	mov	r0, [rsp-23]
	jmp	.LBB25_134
.LBB25_116:
	mov	t7, rax
	mul	t4, -9
	mov	r1, 2
	add	t4, r5
	mov	r0, x2
	call	__bit_shl
	mov	r3, rax
	mov	t2, 0
	mov	r1, 9
	mov	r0, 0
	je	t4, r1, .LBB25_120
	jmp	.LBB25_117
.LBB25_117:
	mov	r0, 1
	mov	r2, [rsp-30]
	sub	r0, r2
	mov	r1, 31
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	add	r2, -1
	mov	r0, rax
	mov	r1, r2
	call	__bit_and
	mov	r2, rax
	add	r2, 1
	mov	rax, t7
	mov	r1, 10
	jmp	.LBB25_119
.LBB25_118:
	mov	t7, rax
	mov	r0, rax
	mul	r0, -10
	add	r0, t3
	mov	r1, 5
	je	r0, r1, .LBB25_121
	jmp	.LBB25_120
.LBB25_119:                             // =>This Inner Loop Header: Depth=1
	mov	t3, rax
	mov	r0, t3
	call	__udivsi3
	add	r2, -1
	jz	r2, .LBB25_118
	jmp	.LBB25_119
.LBB25_120:
	mov	r1, -2147483648
	call	__bit_xor
	mov	r0, -2147483643
	sub	r0, rax
	mov	r1, 31
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_and
	mov	r2, rax
	jmp	.LBB25_127
.LBB25_121:
	mov	r0, r5
	call	__bit_not
	mov	r5, rax
	sub	r5, t1
	mov	r0, 1
	mov	r2, 2
	jl	r5, r0, .LBB25_127
	jmp	.LBB25_122
.LBB25_122:
	mov	r0, 59
	mov	r2, 1
	jg	r5, r0, .LBB25_127
	jmp	.LBB25_123
.LBB25_123:
	mov	r0, r6
	mov	r1, r7
	call	__bit_or
	jnz	rax, .LBB25_125
	jmp	.LBB25_124
.LBB25_124:
	call	abort
.LBB25_125:
	mov	r1, 31
	mov	r0, r5
	call	__bit_and
	mov	r2, rax
	mov	r1, 0
	sub	r1, r2
	mov	t1, 0
	mov	r0, r2
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	add	r5, -32
	mov	t3, rax
	mov	r0, r5
	call	__bit_shr
	mov	r0, -1
	mov	r5, rax
	mov	r1, r2
	call	__bit_shl
	mov	t6, 0
	sub	t6, r5
	mov	r5, rax
	mov	r0, t6
	call	__bit_not
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r0, 32
	sub	r0, r2
	mov	r1, 31
	mov	r2, rax
	call	__bit_and
	mov	r0, -1
	mov	r1, rax
	call	__bit_shr
	sub	t1, t3
	mov	r0, rax
	mov	r1, t1
	call	__bit_and
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, t6
	call	__bit_and
	mov	r0, rax
	mov	r1, r2
	call	__bit_or
	mov	r2, rax
	mov	r0, r5
	mov	r1, t6
	call	__bit_and
	mov	r1, rax
	mov	r0, r2
	call	__bit_not
	mov	r2, rax
	mov	r0, r1
	call	__bit_not
	mov	r5, rax
	mov	r0, r7
	mov	r1, r2
	call	__bit_and
	mov	r2, rax
	mov	r0, r6
	mov	r1, r5
	call	__bit_and
	mov	r0, rax
	mov	r1, r2
	call	__bit_or
	mov	r2, 2
	jz	rax, .LBB25_127
	jmp	.LBB25_126
.LBB25_126:
	mov	r2, 1
.LBB25_127:
	mov	t1, 0
	sub	t1, r3
	div	t1, 4
	add	t1, r4
	sub	t2, x15
	jz	t4, .LBB25_136
	jmp	.LBB25_128
.LBB25_128:
	mov	r5, t4
	add	r5, -1
	mov	r3, 0
	mov	r6, t7
	jz	r5, .LBB25_131
	jmp	.LBB25_129
.LBB25_129:
	mov	t2, mcasm_static_de0ca07a3ba831a25dedc7210c66af9c
	mov	t3, t1
	mov	r0, r6
.LBB25_130:                             // %memcpy.exit66
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 100
	call	__udivsi3
	mov	r6, rax
	mov	r1, r6
	mul	r1, -100
	add	r0, r1
	mov	r1, 1
	call	__bit_shl
	mov	r7, rax
	add	r7, t2
	mov	r0, [r7]
	mov	t6, t3
	add	t6, -4
	mov	r1, 255
	add	r7, 1
	call	__bit_and
	mov	[t6], rax
	mov	r0, [r7]
	call	__bit_and
	mov	[t3], rax
	add	r3, 2
	mov	r1, -2147483648
	add	t3, -8
	mov	r0, r5
	call	__bit_xor
	mov	r7, rax
	mov	r0, r3
	call	__bit_xor
	mov	r0, r6
	jl	rax, r7, .LBB25_130
	jmp	.LBB25_131
.LBB25_131:                             // %.loopexit
	mov	r5, r6
	mov	r1, -2147483648
	mov	r0, t4
	call	__bit_xor
	mov	r6, rax
	mov	r0, r3
	call	__bit_xor
	jge	rax, r6, .LBB25_133
	jmp	.LBB25_132
.LBB25_132:
	mov	r1, 10
	mov	r0, r5
	call	__umodsi3
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	r1, 4
	mov	r5, rax
	mov	r0, r3
	call	__bit_shl
	mov	r0, 0
	sub	r0, rax
	div	r0, 4
	add	r0, r4
	add	r0, t5
	mov	[r0], r5
.LBB25_133:
	sub	t4, x15
	mov	t2, t4
	jmp	.LBB25_136
.LBB25_134:                             // %memset.exit65
                                        //   in Loop: Header=BB25_110 Depth=1
	add	x2, -144
	mov	r3, x0
	add	r3, 9
	add	x15, -9
	add	t5, 36
	add	x1, 36
	jge	t6, t4, .LBB25_110
	jmp	.LBB25_135
.LBB25_135:                             // %memset.exit65
                                        //   in Loop: Header=BB25_110 Depth=1
	jg	x0, r0, .LBB25_94
	jmp	.LBB25_110
.LBB25_136:
	jz	r2, .LBB25_168
	jmp	.LBB25_137
.LBB25_137:
	jz	t2, .LBB25_139
	jmp	.LBB25_138
.LBB25_138:                             // %.preheader79.preheader
	mov	r5, 0
	mov	r6, 46
	mov	r7, 57
	mov	t4, t2
	mov	t3, t4
	mov	r1, 255
	jmp	.LBB25_140
.LBB25_139:
	mov	[r4], 49
	jmp	.LBB25_147
.LBB25_140:                             // %.preheader79
                                        // =>This Inner Loop Header: Depth=1
	mov	r3, [t1]
	add	t3, -1
	mov	r0, r3
	call	__bit_and
	je	rax, r6, .LBB25_143
	jmp	.LBB25_141
.LBB25_141:                             // %.preheader79
                                        //   in Loop: Header=BB25_140 Depth=1
	je	rax, r7, .LBB25_148
	jmp	.LBB25_142
.LBB25_142:                             // %.preheader79
	mov	r0, 45
	je	rax, r0, .LBB25_144
	jmp	.LBB25_149
.LBB25_143:                             // %.preheader79._crit_edge28
                                        //   in Loop: Header=BB25_140 Depth=1
	mov	r5, t3
	jmp	.LBB25_152
.LBB25_144:                             // %.preheader79._crit_edge
	mov	r0, t4
.LBB25_145:
	add	r0, r4
	mov	r1, 1
	mov	[r0], 49
	jl	r5, r1, .LBB25_147
	jmp	.LBB25_146
.LBB25_146:
	add	r5, r4
	mov	[r5], 48
	add	r5, 1
	mov	[r5], 46
.LBB25_147:
	add	r4, t2
	add	t2, 1
	mov	[r4], 48
	jmp	.LBB25_168
.LBB25_148:                             //   in Loop: Header=BB25_140 Depth=1
	mov	[t1], 48
	mov	r2, 1
	jmp	.LBB25_152
.LBB25_149:
	mov	r1, 1
	mov	r0, r3
	call	__bit_and
	mov	r0, 2
	jne	r2, r0, .LBB25_151
	jmp	.LBB25_150
.LBB25_150:
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB25_168
	jmp	.LBB25_151
.LBB25_151:
	add	r3, 1
	mov	r1, 255
	mov	r0, r3
	call	__bit_and
	mov	[t1], rax
	jmp	.LBB25_168
.LBB25_152:                             //   in Loop: Header=BB25_140 Depth=1
	add	t1, -4
	mov	r0, 0
	mov	t4, t3
	jz	t3, .LBB25_145
	jmp	.LBB25_140
.LBB25_153:
	add	r4, t2
	mov	r1, 3
	mov	r0, r4
	call	__bit_and
	jz	rax, .LBB25_157
	jmp	.LBB25_154
.LBB25_154:
	jz	r5, .LBB25_167
	jmp	.LBB25_155
.LBB25_155:                             // %.preheader5.i67.preheader
	mov	r0, r5
.LBB25_156:                             // %.preheader5.i67
                                        // =>This Inner Loop Header: Depth=1
	add	r0, -1
	mov	[r4], 48
	add	r4, 1
	jz	r0, .LBB25_167
	jmp	.LBB25_156
.LBB25_157:
	mov	r1, -2147483648
	mov	r0, r5
	call	__bit_xor
	mov	r1, -2147483644
	jl	rax, r1, .LBB25_164
	jmp	.LBB25_158
.LBB25_158:
	mov	r1, -2147483648
	mov	r0, r5
	call	__bit_xor
	mov	r1, -2147483632
	jl	rax, r1, .LBB25_160
	jmp	.LBB25_159
.LBB25_159:                             // %.preheader.i69.preheader
	mov	r2, -2147483633
	mov	r3, r4
	mov	r0, r5
	jmp	.LBB25_162
.LBB25_160:                             // %.preheader391
	mov	r2, -2147483645
	mov	r1, -2147483648
	jmp	.LBB25_163
.LBB25_161:
	mov	r1, 3
	jg	r0, r1, .LBB25_160
	jmp	.LBB25_164
.LBB25_162:                             // %.preheader.i69
                                        // =>This Inner Loop Header: Depth=1
	mov	[r3], 808464432
	mov	r4, r3
	add	r4, 16
	mov	[r4], 808464432
	mov	r1, r3
	add	r1, 32
	mov	[r1], 808464432
	mov	r1, r3
	add	r1, 48
	mov	[r1], 808464432
	add	r0, -16
	mov	r1, -2147483648
	add	r3, 64
	call	__bit_xor
	jg	rax, r2, .LBB25_162
	jmp	.LBB25_161
.LBB25_163:                             // =>This Inner Loop Header: Depth=1
	mov	[r4], 808464432
	add	r0, -4
	add	r4, 4
	call	__bit_xor
	jg	rax, r2, .LBB25_163
	jmp	.LBB25_164
.LBB25_164:                             // %.loopexit4.i68
	jz	r0, .LBB25_167
	jmp	.LBB25_165
.LBB25_165:                             // %.preheader84.preheader
.LBB25_166:                             // %.preheader84
                                        // =>This Inner Loop Header: Depth=1
	add	r0, -1
	mov	[r4], 48
	add	r4, 1
	jnz	r0, .LBB25_166
	jmp	.LBB25_167
.LBB25_167:                             // %memset.exit70
	add	t2, r5
.LBB25_168:                             // %memcpy.exit38
	mov	rax, t2
	mov	x15, [rsp-16]
	mov	x14, [rsp-15]
	mov	x13, [rsp-14]
	mov	x12, [rsp-13]
	mov	x11, [rsp-12]
	mov	x10, [rsp-11]
	mov	x9, [rsp-10]
	mov	x8, [rsp-9]
	mov	x7, [rsp-8]
	mov	x6, [rsp-7]
	mov	x5, [rsp-6]
	mov	x4, [rsp-5]
	mov	x3, [rsp-4]
	mov	x2, [rsp-3]
	mov	x1, [rsp-2]
	mov	x0, [rsp-1]
	ret
// -- End function
// -- Begin function ryu_fill_pow10_split_exp
ryu_fill_pow10_split_exp:               // @ryu_fill_pow10_split_exp
// %bb.0:
	mov	r3, r1
	mov	r5, r3
	mul	r5, -9
	add	r5, r0
	add	r5, 128
	mov	r0, -1
	mov	r4, r2
	jg	r5, r0, .LBB26_2
	jmp	.LBB26_1
.LBB26_1:
	mov	[r4], 1
	mov	r0, r4
	add	r0, 1
	mov	[r0], 0
	mov	r0, r4
	add	r0, 8
	mov	r1, r4
	add	r1, 9
	mov	[r1], 0
	mov	[r0], 0
	mov	r0, r4
	add	r0, 16
	add	r4, 17
	mov	[r4], 0
	mov	[r0], 0
	jmp	.LBB26_19
.LBB26_2:
	mov	r6, rsp
	mov	r7, rsp
	mov	r0, rsp
	mov	r2, rsp
	mov	r1, rsp
	mov	t7, rsp
	mov	t0, rsp
	mov	rax, rsp
	add	r6, 4
	add	r7, 5
	mov	[r7], 0
	mov	[r6], 0
	add	r0, 12
	add	r2, 13
	mov	[r2], 0
	mov	[r0], 0
	add	r1, 20
	add	t7, 21
	mov	[t7], 0
	mov	[r1], 0
	add	t0, 28
	add	rax, 29
	mov	[rax], 0
	mov	[t0], 0
	mov	t4, -255
	jz	r3, .LBB26_9
	jmp	.LBB26_3
.LBB26_3:
	mov	t1, rsp
	mov	t2, rsp
	mov	t3, rsp
	mov	t4, rsp
	mov	t5, rsp
	mov	t6, rsp
	mov	[rsp], -255
	mov	[r7], 0
	mov	[r6], 0
	mov	[r2], 0
	mov	[rsp], -276
	mov	[r7], -209245859
	mov	[r6], 606470823
	mov	[r2], -36215714
	mov	[r0], 0
	mov	[r0], 18528969
	mov	[t7], 0
	mov	[t7], 828902024
	mov	[r1], 0
	mov	[r1], -124440528
	mov	[rax], 0
	mov	[rax], -1989124287
	mov	[t0], 0
	mov	[t0], 917808535
	add	t1, 8
	add	t2, 7
	add	t3, 6
	add	t4, 3
	add	t5, 2
	add	t6, 1
.LBB26_4:                               // =>This Inner Loop Header: Depth=1
	mov	r1, 1
	mov	r0, r3
	call	__bit_and
	jz	rax, .LBB26_6
	jmp	.LBB26_5
.LBB26_5:                               //   in Loop: Header=BB26_4 Depth=1
	mov	r0, rsp
	mov	r1, rsp
	mov	r2, rsp
	call	ryu_dyadic256_quick_mul
	mov	r0, [t1]
	mov	[t1], r0
	mov	r0, [t2]
	mov	r1, [t3]
	mov	r2, [r7]
	mov	t0, [r6]
	mov	[t2], r0
	mov	[t3], r1
	mov	[r7], r2
	mov	[r6], t0
	mov	r0, [t4]
	mov	r1, [t5]
	mov	r2, [t6]
	mov	t0, [rsp]
	mov	[t4], r0
	mov	[t5], r1
	mov	[t6], r2
	mov	[rsp], t0
.LBB26_6:                               //   in Loop: Header=BB26_4 Depth=1
	mov	r1, 1
	mov	r0, r3
	call	__bit_shr
	mov	r3, rax
	jz	r3, .LBB26_8
	jmp	.LBB26_7
.LBB26_7:                               //   in Loop: Header=BB26_4 Depth=1
	mov	r0, rsp
	mov	r1, rsp
	mov	r2, rsp
	call	ryu_dyadic256_quick_mul
	mov	r0, [t1]
	mov	[t1], r0
	mov	r0, [t2]
	mov	r1, [t3]
	mov	r2, [r7]
	mov	t0, [r6]
	mov	[t2], r0
	mov	[t3], r1
	mov	[r7], r2
	mov	[r6], t0
	mov	r0, [t4]
	mov	r1, [t5]
	mov	r2, [t6]
	mov	t0, [rsp]
	mov	[t4], r0
	mov	[t5], r1
	mov	[t6], r2
	mov	[rsp], t0
	jmp	.LBB26_4
.LBB26_8:
	mov	r0, [t6]
	mov	[t6], r0
	mov	r0, [t5]
	mov	r1, [t4]
	mov	r2, [r6]
	mov	r3, [r7]
	mov	[t5], r0
	mov	[t4], r1
	mov	[r6], r2
	mov	[r7], r3
	mov	r0, [rsp]
	mov	r1, [t3]
	mov	r2, [t2]
	mov	r3, [t1]
	mov	[rsp], r0
	mov	t4, [rsp]
	mov	[t3], r1
	mov	[t2], r2
	mov	[t1], r3
.LBB26_9:
	add	t4, r5
	mov	[rsp], t4
	mov	r0, rsp
	mov	r1, rsp
	call	ryu_dyadic256_as_mantissa_type
	add	r0, 1
	mov	r1, [r0]
	mov	r0, [rsp]
	mov	r2, 1
	mov	r3, 0
	call	__adddi3
	mov	r6, rax
	mov	r5, t0
	call	__bit_and
	mov	r0, rsp
	mov	r1, rsp
	add	r0, 8
	add	r1, 9
	mov	t1, [r1]
	mov	r7, [r0]
	mov	r0, -1
	jne	rax, r0, .LBB26_13
	jmp	.LBB26_10
.LBB26_10:
	mov	r0, r7
	mov	r1, t1
	call	__adddi3
	mov	r7, rax
	mov	t1, t0
	mov	r0, r7
	mov	r1, t1
	call	__bit_or
	jnz	rax, .LBB26_13
	jmp	.LBB26_11
.LBB26_11:
	mov	r7, rsp
	mov	t1, rsp
	add	r7, 16
	add	t1, 17
	mov	r1, [t1]
	mov	r0, [r7]
	call	__adddi3
	mov	r1, t0
	mov	[t1], r1
	mov	[r7], rax
	mov	r0, rax
	call	__bit_or
	mov	r7, 0
	mov	t1, 0
	jnz	rax, .LBB26_13
	jmp	.LBB26_12
.LBB26_12:
	mov	t1, rsp
	mov	t2, rsp
	add	t1, 24
	add	t2, 25
	mov	r1, [t2]
	mov	r0, [t1]
	call	__adddi3
	mov	[t2], t0
	mov	[t1], rax
	mov	t1, 0
.LBB26_13:
	mov	r0, rsp
	mov	r1, rsp
	mov	r2, rsp
	mov	r3, rsp
	add	r0, 16
	add	r1, 17
	mov	t2, [r1]
	add	r2, 24
	add	r3, 25
	mov	t4, [r3]
	mov	t5, [r2]
	mov	t3, [r0]
	mov	r0, t5
	mov	r1, t4
	call	__bit_or
	jnz	rax, .LBB26_17
	jmp	.LBB26_14
.LBB26_14:
	mov	r1, 1000000000
	mov	r0, t3
	call	__bit_xor
	mov	r0, rax
	mov	r1, t2
	call	__bit_or
	jnz	rax, .LBB26_16
	jmp	.LBB26_15
.LBB26_15:
	mov	r0, r7
	mov	r1, r6
	call	__bit_or
	mov	r2, rax
	mov	r0, t1
	mov	r1, r5
	call	__bit_or
	mov	r0, r2
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	t2, 0
	mov	t3, 1000000000
	mov	rax, 1000000000
	jz	r0, .LBB26_18
	jmp	.LBB26_17
.LBB26_16:
	mov	r0, t2
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	mov	r0, t3
	add	r0, -1000000001
	mov	r1, 31
	mov	r2, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	add	r2, 1
	mov	r0, r2
	mov	r1, rax
	call	__bit_and
	mov	r0, rax
	mov	rax, t3
	jnz	r0, .LBB26_18
	jmp	.LBB26_17
.LBB26_17:
	mov	r2, 1000000000
	mov	r3, 0
	mov	r0, t5
	mov	r1, t4
	call	__udivdi3
	mov	r2, -1000000000
	mov	r1, t0
	mov	r0, rax
	call	__muldi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, t5
	mov	r3, t4
	call	__adddi3
	mov	r2, 1000000000
	mov	r3, 0
	mov	t4, rax
	mov	r0, t2
	mov	r1, t4
	call	__udivdi3
	mov	r2, -1000000000
	mov	r1, t0
	mov	r0, rax
	call	__muldi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, t2
	mov	r3, t4
	call	__adddi3
	mov	r1, -512
	mov	t4, rax
	mov	r0, t3
	call	__bit_and
	mov	r2, 1000000000
	mov	r3, 0
	mov	r0, rax
	mov	r1, t4
	call	__udivdi3
	mov	r2, -1000000000
	mov	r1, t0
	mov	r0, rax
	call	__muldi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, t3
	mov	r3, t2
	call	__adddi3
	mov	t2, 0
.LBB26_18:
	mov	[r4], r6
	mov	r0, r4
	add	r0, 1
	mov	[r0], r5
	mov	r0, r4
	add	r0, 8
	mov	r1, r4
	add	r1, 9
	mov	[r1], t1
	mov	[r0], r7
	mov	r0, r4
	add	r0, 16
	add	r4, 17
	mov	[r4], t2
	mov	[r0], rax
.LBB26_19:
	ret
// -- End function
// -- Begin function ryu_mul_shift_mod1e9_exact
ryu_mul_shift_mod1e9_exact:             // @ryu_mul_shift_mod1e9_exact
// %bb.0:
	mov	[rsp-1], x0
	mov	[rsp-2], x1
	mov	[rsp-3], x2
	mov	[rsp-4], x3
	mov	[rsp-5], x4
	mov	[rsp-6], x5
	mov	[rsp-7], x6
	mov	[rsp-8], x7
	mov	[rsp-9], x8
	mov	t1, r3
	mov	t4, r2
	mov	t2, r1
	mov	t3, r0
	mov	x7, rsp
	mov	x8, rsp
	mov	x6, rsp
	add	x7, 24
	add	x8, 16
	mov	r1, t4
	add	r1, 1
	mov	r0, [t4]
	mov	r5, [r1]
	mov	r1, 0
	mov	r3, 0
	add	x6, 8
	mov	r2, t3
	call	__muldi3
	mov	r4, rax
	mov	r6, t0
	mov	r2, t2
	call	__muldi3
	mov	r7, rax
	mov	t5, t0
	mov	r0, r5
	mov	r2, t3
	call	__muldi3
	mov	t6, rax
	mov	t7, t0
	mov	r2, t2
	call	__muldi3
	mov	x0, rax
	mov	x1, t0
	mov	r0, r6
	mov	r2, t6
	mov	r3, t7
	call	__adddi3
	mov	r6, t0
	mov	r0, rax
	mov	r2, r7
	mov	r3, t5
	call	__adddi3
	mov	r5, rax
	mov	r7, t0
	mov	r0, rsp
	add	r0, 1
	mov	[r0], r5
	mov	[rsp], r4
	mov	r0, r6
	mov	r2, x0
	mov	r3, x1
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, r7
	call	__adddi3
	mov	r0, t4
	add	r0, 8
	mov	r1, t4
	add	r1, 9
	mov	r0, [r0]
	mov	r6, [r1]
	mov	r1, 0
	mov	t6, rax
	mov	t7, t0
	mov	r2, t3
	call	__muldi3
	mov	r7, rax
	mov	t5, t0
	mov	r2, t2
	call	__muldi3
	mov	x3, rax
	mov	x4, t0
	mov	r0, r6
	mov	r2, t3
	call	__muldi3
	mov	x2, rax
	mov	x5, t0
	mov	r2, t2
	call	__muldi3
	mov	x0, rax
	mov	x1, t0
	mov	r0, t5
	mov	r2, x2
	mov	r3, x5
	call	__adddi3
	mov	x2, t0
	mov	r0, rax
	mov	r2, x3
	mov	r3, x4
	call	__adddi3
	mov	r3, 0
	mov	r6, rax
	mov	t5, t0
	mov	r0, t6
	mov	r1, t7
	mov	r2, r7
	call	__adddi3
	mov	r2, 0
	mov	r1, t0
	mov	r0, rax
	mov	r3, r6
	call	__adddi3
	mov	r7, rax
	mov	r6, t0
	mov	r0, rsp
	add	r0, 9
	mov	[r0], r6
	mov	[x6], r7
	mov	r0, r6
	mov	r1, t7
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	mov	r0, r6
	sub	r0, t7
	mov	r1, 31
	mov	r2, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, r7
	sub	r0, t6
	mov	r1, 31
	mov	x3, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	rax, x3
	add	r2, 1
	mov	r0, r2
	mov	r1, rax
	call	__bit_and
	mov	r1, 0
	add	x3, rax
	mov	r0, x2
	mov	r2, x0
	mov	r3, x1
	call	__adddi3
	mov	r1, 1
	mov	t6, rax
	mov	t7, t0
	mov	r0, x3
	call	__bit_and
	mov	r0, t4
	add	r0, 16
	add	t4, 17
	mov	r0, [r0]
	mov	x0, [t4]
	mov	r1, 0
	mov	r3, 0
	mov	t4, rax
	mov	r2, t3
	call	__muldi3
	mov	x1, rax
	mov	x2, t0
	mov	r2, t2
	call	__muldi3
	mov	x3, rax
	mov	x4, t0
	mov	r0, x0
	mov	r2, t3
	call	__muldi3
	mov	t3, rax
	mov	x5, t0
	mov	r2, t2
	call	__muldi3
	mov	t2, rax
	mov	x6, t0
	mov	r0, x2
	mov	r2, t3
	mov	r3, x5
	call	__adddi3
	mov	t3, t0
	mov	r0, rax
	mov	r2, x3
	mov	r3, x4
	call	__adddi3
	mov	r3, 0
	mov	x0, rax
	mov	x2, t0
	mov	r0, t6
	mov	r1, t7
	mov	r2, x1
	call	__adddi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, t5
	call	__adddi3
	mov	r2, 0
	mov	r1, t0
	mov	r0, rax
	mov	r3, x0
	call	__adddi3
	mov	x0, rax
	mov	t7, t0
	mov	r0, rsp
	add	r0, 17
	mov	[r0], t7
	mov	r1, 0
	mov	[x8], x0
	mov	r0, t3
	mov	r2, t2
	mov	r3, x6
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x2
	call	__adddi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, t4
	call	__adddi3
	mov	t2, rax
	mov	r2, t0
	mov	r0, rsp
	add	r0, 25
	mov	[r0], r2
	mov	[x7], t2
	mov	x1, t2
	mov	x2, r2
	jz	t1, .LBB27_17
	jmp	.LBB27_1
.LBB27_1:
	mov	r1, -2147483648
	mov	r0, t1
	call	__bit_xor
	mov	r0, -2147483393
	mov	x1, 0
	mov	x2, 0
	mov	x0, 0
	mov	t7, 0
	mov	r7, 0
	mov	r6, 0
	mov	r4, 0
	mov	r5, 0
	jg	rax, r0, .LBB27_17
	jmp	.LBB27_2
.LBB27_2:
	mov	r1, 6
	mov	r0, t1
	call	__bit_shr
	mov	r1, 63
	mov	r3, rax
	call	__bit_and
	mov	t3, rax
	mov	r1, 3
	mov	x3, 3
	mov	r0, r3
	call	__bit_shl
	mov	t5, rax
	div	t5, 4
	add	t5, rsp
	mov	r4, [t5]
	mov	r0, t5
	add	r0, 1
	mov	r5, [r0]
	jnz	t3, .LBB27_6
	jmp	.LBB27_3
.LBB27_3:
	mov	r0, 191
	jg	t1, r0, .LBB27_17
	jmp	.LBB27_4
.LBB27_4:
	mov	r0, t5
	add	r0, 8
	mov	r1, t5
	add	r1, 9
	mov	r6, [r1]
	mov	r7, [r0]
	mov	r0, 127
	jg	t1, r0, .LBB27_17
	jmp	.LBB27_5
.LBB27_5:
	mov	r0, t5
	add	r0, 16
	add	t5, 17
	mov	t7, [t5]
	mov	x0, [r0]
	jmp	.LBB27_17
.LBB27_6:
	mov	t6, 64
	mov	r1, 31
	sub	t6, t3
	mov	r0, t3
	call	__bit_and
	mov	r7, rax
	mov	r1, 0
	sub	r1, r7
	mov	r0, r7
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	t4, t3
	add	t4, -32
	mov	t7, rax
	mov	r0, t4
	call	__bit_shr
	mov	x0, rax
	mov	r0, r5
	mov	r1, r7
	call	__bit_shr
	sub	x1, x0
	mov	x0, rax
	mov	r0, x1
	call	__bit_not
	mov	r0, x0
	mov	r1, rax
	call	__bit_and
	mov	x2, rax
	mov	r0, r4
	mov	r1, r7
	call	__bit_shr
	mov	r4, rax
	mov	r0, 32
	sub	r0, r7
	mov	r1, 31
	mov	r7, 32
	call	__bit_and
	mov	r0, r5
	mov	r1, rax
	call	__bit_shl
	mov	r1, 0
	sub	r1, t7
	mov	r0, rax
	call	__bit_and
	mov	r0, r4
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x1
	call	__bit_and
	mov	r0, rax
	mov	r1, x2
	call	__bit_or
	mov	r4, rax
	mov	r0, x0
	mov	r1, x1
	call	__bit_and
	mov	r5, rax
	je	r3, x3, .LBB27_8
	jmp	.LBB27_7
.LBB27_7:
	mov	r0, t5
	add	r0, 8
	mov	r1, t5
	add	r1, 9
	mov	t7, [r1]
	mov	x0, [r0]
	mov	r1, 31
	mov	r0, t6
	call	__bit_and
	mov	x1, rax
	mov	r1, 0
	sub	r1, x1
	mov	r0, x1
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r0, t6
	add	r0, -32
	mov	x2, rax
	call	__bit_shr
	mov	x3, rax
	mov	r0, x0
	mov	r1, x1
	call	__bit_shl
	mov	x4, 0
	sub	x4, x3
	mov	x3, rax
	mov	r0, x4
	call	__bit_not
	mov	r0, x3
	mov	r1, rax
	call	__bit_and
	mov	x5, rax
	mov	r0, t7
	mov	r1, x1
	call	__bit_shl
	sub	r7, x1
	mov	r1, 31
	mov	t7, rax
	mov	r0, r7
	call	__bit_and
	mov	r0, x0
	mov	r1, rax
	call	__bit_shr
	mov	r1, 0
	sub	r1, x2
	mov	r0, rax
	call	__bit_and
	mov	r0, t7
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x4
	call	__bit_and
	mov	r0, rax
	mov	r1, x5
	call	__bit_or
	mov	r7, rax
	mov	r0, x3
	mov	r1, x4
	call	__bit_and
	mov	t7, rax
	mov	r0, r7
	mov	r1, r5
	call	__bit_or
	mov	r5, rax
	mov	r0, t7
	mov	r1, r4
	call	__bit_or
	mov	r4, rax
.LBB27_8:
	mov	r0, 191
	mov	r7, 0
	mov	x0, 0
	mov	t7, 0
	jg	t1, r0, .LBB27_15
	jmp	.LBB27_9
.LBB27_9:
	mov	x1, r3
	add	x1, 1
	mov	r1, 3
	mov	x6, 3
	mov	r0, x1
	call	__bit_shl
	mov	x2, rax
	div	x2, 4
	add	x2, rsp
	mov	r6, [x2]
	mov	r0, x2
	add	r0, 1
	mov	r7, [r0]
	mov	r1, 31
	mov	r0, t3
	call	__bit_and
	mov	x3, rax
	mov	r1, 0
	sub	r1, x3
	mov	r0, x3
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	x4, rax
	mov	r0, t4
	call	__bit_shr
	mov	x5, rax
	mov	r0, 32
	sub	r0, x3
	mov	x0, 32
	call	__bit_and
	mov	r0, r7
	mov	r1, rax
	call	__bit_shl
	mov	r1, 0
	sub	r1, x4
	mov	r0, rax
	call	__bit_and
	mov	x4, rax
	mov	r0, r6
	mov	r1, x3
	call	__bit_shr
	mov	r0, rax
	mov	r1, x4
	call	__bit_or
	mov	r6, 0
	sub	r6, x5
	mov	r0, rax
	mov	r1, r6
	call	__bit_and
	mov	x4, rax
	mov	r0, r7
	mov	r1, x3
	call	__bit_shr
	mov	x3, rax
	mov	r0, r6
	call	__bit_not
	mov	r0, x3
	mov	r1, rax
	call	__bit_and
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	r7, rax
	mov	r0, x3
	mov	r1, r6
	call	__bit_and
	mov	r6, rax
	je	x1, x6, .LBB27_11
	jmp	.LBB27_10
.LBB27_10:
	mov	r0, x2
	add	r0, 8
	add	x2, 9
	mov	x1, [x2]
	mov	x2, [r0]
	mov	r1, 31
	mov	r0, t6
	call	__bit_and
	mov	x3, rax
	mov	r1, 0
	sub	r1, x3
	mov	r0, x3
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r0, t6
	add	r0, -32
	mov	x4, rax
	call	__bit_shr
	mov	x5, rax
	mov	r0, x2
	mov	r1, x3
	call	__bit_shl
	mov	x6, 0
	sub	x6, x5
	mov	x5, rax
	mov	r0, x6
	call	__bit_not
	mov	r0, x5
	mov	r1, rax
	call	__bit_and
	mov	x7, rax
	mov	r0, x1
	mov	r1, x3
	call	__bit_shl
	sub	x0, x3
	mov	r1, 31
	mov	x1, rax
	mov	r0, x0
	call	__bit_and
	mov	r0, x2
	mov	r1, rax
	call	__bit_shr
	mov	r1, 0
	sub	r1, x4
	mov	r0, rax
	call	__bit_and
	mov	r0, x1
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
	mov	x1, rax
	mov	r0, x0
	mov	r1, r6
	call	__bit_or
	mov	r6, rax
	mov	r0, x1
	mov	r1, r7
	call	__bit_or
	mov	r7, rax
	mov	r0, 127
	mov	x0, 0
	jg	t1, r0, .LBB27_15
	jmp	.LBB27_13
.LBB27_11:
	mov	x1, 0
	mov	r0, 127
	mov	x2, 0
	mov	x0, 0
	jg	t1, r0, .LBB27_17
	jmp	.LBB27_12
.LBB27_12:
	mov	r0, t5
	add	r0, 16
	mov	t1, [r0]
	mov	r0, t5
	add	r0, 17
	mov	t7, [r0]
	mov	r1, 31
	mov	r0, t3
	call	__bit_and
	mov	x0, rax
	mov	r1, 0
	sub	r1, x0
	mov	r0, x0
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	x2, rax
	mov	r0, t4
	call	__bit_shr
	mov	x3, rax
	mov	r0, t7
	mov	r1, x0
	call	__bit_shr
	mov	x4, 0
	sub	x4, x3
	mov	x3, rax
	mov	r0, x4
	call	__bit_not
	mov	r0, x3
	mov	r1, rax
	call	__bit_and
	mov	x5, rax
	mov	r0, t1
	mov	r1, x0
	call	__bit_shr
	mov	r0, 32
	sub	r0, x0
	mov	r1, 31
	mov	t1, rax
	call	__bit_and
	mov	r0, t7
	mov	r1, rax
	call	__bit_shl
	sub	x1, x2
	mov	r0, rax
	mov	r1, x1
	call	__bit_and
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x4
	call	__bit_and
	mov	r0, rax
	mov	r1, x5
	call	__bit_or
	mov	x0, rax
	mov	r0, x3
	mov	r1, x4
	call	__bit_and
	mov	t7, rax
	jmp	.LBB27_14
.LBB27_13:
	mov	r0, t5
	add	r0, 16
	mov	t1, [r0]
	mov	r0, t5
	add	r0, 17
	mov	t7, [r0]
	mov	r1, 31
	mov	r0, t3
	call	__bit_and
	mov	x0, rax
	mov	r1, 0
	sub	r1, x0
	mov	x1, 0
	mov	r0, x0
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	x2, rax
	mov	r0, t4
	call	__bit_shr
	mov	x3, rax
	mov	r0, t7
	mov	r1, x0
	call	__bit_shr
	mov	x4, 0
	sub	x4, x3
	mov	x3, rax
	mov	r0, x4
	call	__bit_not
	mov	r0, x3
	mov	r1, rax
	call	__bit_and
	mov	x5, rax
	mov	r0, t1
	mov	r1, x0
	call	__bit_shr
	mov	r0, 32
	sub	r0, x0
	mov	r1, 31
	mov	t1, rax
	call	__bit_and
	mov	r0, t7
	mov	r1, rax
	call	__bit_shl
	mov	r1, 0
	sub	r1, x2
	mov	r0, rax
	call	__bit_and
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x4
	call	__bit_and
	mov	r0, rax
	mov	r1, x5
	call	__bit_or
	mov	x0, rax
	mov	r0, x3
	mov	r1, x4
	call	__bit_and
	mov	t7, rax
	mov	r0, 1
	mov	x2, 0
	je	r3, r0, .LBB27_17
	jmp	.LBB27_14
.LBB27_14:
	mov	r0, t5
	add	r0, 24
	add	t5, 25
	mov	t1, [t5]
	mov	t5, [r0]
	mov	r1, 31
	mov	r0, t6
	call	__bit_and
	mov	x1, rax
	mov	r1, 0
	sub	r1, x1
	mov	x2, 0
	mov	r0, x1
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	add	t6, -32
	mov	x3, rax
	mov	r0, t6
	call	__bit_shr
	mov	t6, rax
	mov	r0, t5
	mov	r1, x1
	call	__bit_shl
	mov	x4, 0
	sub	x4, t6
	mov	t6, rax
	mov	r0, x4
	call	__bit_not
	mov	r0, t6
	mov	r1, rax
	call	__bit_and
	mov	x5, rax
	mov	r0, t1
	mov	r1, x1
	call	__bit_shl
	mov	r0, 32
	sub	r0, x1
	mov	r1, 31
	mov	t1, rax
	call	__bit_and
	mov	r0, t5
	mov	r1, rax
	call	__bit_shr
	sub	x2, x3
	mov	r0, rax
	mov	r1, x2
	call	__bit_and
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x4
	call	__bit_and
	mov	r0, rax
	mov	r1, x5
	call	__bit_or
	mov	t1, rax
	mov	r0, t6
	mov	r1, x4
	call	__bit_and
	mov	t5, rax
	mov	r0, t1
	mov	r1, t7
	call	__bit_or
	mov	t7, rax
	mov	r0, t5
	mov	r1, x0
	call	__bit_or
	mov	x0, rax
.LBB27_15:
	mov	r1, 31
	mov	r0, t3
	call	__bit_and
	mov	t1, rax
	mov	r1, 0
	sub	r1, t1
	mov	r0, t1
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	t3, rax
	mov	r0, t4
	call	__bit_shr
	mov	t4, rax
	mov	r0, r2
	mov	r1, t1
	call	__bit_shr
	mov	t5, 0
	sub	t5, t4
	mov	t4, rax
	mov	r0, t5
	call	__bit_not
	mov	r0, t4
	mov	r1, rax
	call	__bit_and
	mov	t6, rax
	mov	r0, t2
	mov	r1, t1
	call	__bit_shr
	mov	r0, 32
	sub	r0, t1
	mov	r1, 31
	mov	t1, rax
	call	__bit_and
	mov	r0, r2
	mov	r1, rax
	call	__bit_shl
	mov	r1, 0
	sub	r1, t3
	mov	r0, rax
	call	__bit_and
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, t5
	call	__bit_and
	mov	r0, rax
	mov	r1, t6
	call	__bit_or
	mov	x1, rax
	mov	r0, t4
	mov	r1, t5
	call	__bit_and
	mov	x2, rax
	jz	r3, .LBB27_17
	jmp	.LBB27_16
.LBB27_16:
	mov	x1, 0
	mov	x2, 0
.LBB27_17:
	mov	r1, -512
	mov	r0, x1
	call	__bit_and
	mov	r2, 0
	mov	r3, 1000000000
	mov	t1, rax
	mov	r1, x2
	call	__umoddi3
	mov	r1, 1073741823
	mov	r0, t0
	call	__bit_and
	mov	r2, 1000000000
	mov	r3, 0
	mov	r0, t1
	mov	r1, rax
	call	__udivdi3
	mov	r2, -1000000000
	mov	r1, t0
	mov	r0, rax
	call	__muldi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x1
	mov	r3, x2
	call	__adddi3
	mov	r1, -512
	mov	t1, rax
	mov	r0, x0
	call	__bit_and
	mov	r2, 1000000000
	mov	r3, 0
	mov	t2, rax
	mov	r0, t7
	mov	r1, t1
	call	__udivdi3
	mov	r2, -1000000000
	mov	r1, t0
	mov	r0, rax
	call	__muldi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, t7
	mov	r3, t1
	call	__adddi3
	mov	r2, 1000000000
	mov	r3, 0
	mov	r0, t2
	mov	r1, rax
	call	__udivdi3
	mov	r2, -1000000000
	mov	r1, t0
	mov	r0, rax
	call	__muldi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x0
	mov	r3, t7
	call	__adddi3
	mov	r1, -512
	mov	t1, rax
	mov	r0, r7
	call	__bit_and
	mov	r2, 1000000000
	mov	r3, 0
	mov	t2, rax
	mov	r0, r6
	mov	r1, t1
	call	__udivdi3
	mov	r2, -1000000000
	mov	r1, t0
	mov	r0, rax
	call	__muldi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, r6
	mov	r3, t1
	call	__adddi3
	mov	r2, 1000000000
	mov	r3, 0
	mov	r0, t2
	mov	r1, rax
	call	__udivdi3
	mov	r2, -1000000000
	mov	r1, t0
	mov	r0, rax
	call	__muldi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, r7
	mov	r3, r6
	call	__adddi3
	mov	r1, -512
	mov	r6, rax
	mov	r0, r4
	call	__bit_and
	mov	r2, 1000000000
	mov	r3, 0
	mov	r7, rax
	mov	r0, r5
	mov	r1, r6
	call	__udivdi3
	mov	r2, -1000000000
	mov	r1, t0
	mov	r0, rax
	call	__muldi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, r5
	mov	r3, r6
	call	__adddi3
	mov	r2, 1000000000
	mov	r3, 0
	mov	r0, r7
	mov	r1, rax
	call	__udivdi3
	mov	r2, -1000000000
	mov	r1, t0
	mov	r0, rax
	call	__muldi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, r4
	mov	r3, r5
	call	__adddi3
	mov	x8, [rsp-9]
	mov	x7, [rsp-8]
	mov	x6, [rsp-7]
	mov	x5, [rsp-6]
	mov	x4, [rsp-5]
	mov	x3, [rsp-4]
	mov	x2, [rsp-3]
	mov	x1, [rsp-2]
	mov	x0, [rsp-1]
	ret
// -- End function
// -- Begin function ryu_fill_pow10_split_2_exp
ryu_fill_pow10_split_2_exp:             // @ryu_fill_pow10_split_2_exp
// %bb.0:
	mov	r4, r2
	mov	r5, r1
	mov	r3, r0
	mov	r6, rsp
	mov	t1, rsp
	mov	r0, rsp
	mov	r1, rsp
	mov	r2, rsp
	mov	t0, rsp
	mov	t7, rsp
	mov	rax, rsp
	mov	t2, rsp
	mov	t3, rsp
	mov	t4, rsp
	mov	t5, rsp
	mov	t6, rsp
	mov	r7, rsp
	mov	[rsp], -255
	add	r6, 5
	mov	[r6], 0
	add	t1, 4
	mov	[t1], 0
	add	r0, 13
	mov	[r0], 0
	add	r1, 21
	mov	[r1], 0
	add	r2, 29
	mov	[r2], 0
	add	t0, 12
	mov	[t0], 0
	add	t7, 20
	mov	[t7], 0
	add	rax, 28
	mov	[rax], 0
	mov	[rsp], -255
	mov	[r6], 0
	mov	[t1], 0
	mov	[rsp], -226
	mov	[r6], 0
	mov	[t1], 0
	add	t2, 8
	add	t3, 7
	add	t4, 6
	add	t5, 3
	add	t6, 2
	add	r7, 1
.LBB28_1:                               // =>This Inner Loop Header: Depth=1
	mov	r1, 1
	mov	r0, r5
	call	__bit_and
	jz	rax, .LBB28_3
	jmp	.LBB28_2
.LBB28_2:                               //   in Loop: Header=BB28_1 Depth=1
	mov	r0, rsp
	mov	r1, rsp
	mov	r2, rsp
	call	ryu_dyadic256_quick_mul
	mov	r0, [t2]
	mov	[t2], r0
	mov	r0, [t3]
	mov	r1, [t4]
	mov	r2, [r6]
	mov	t0, [t1]
	mov	[t3], r0
	mov	[t4], r1
	mov	[r6], r2
	mov	[t1], t0
	mov	r0, [t5]
	mov	r1, [t6]
	mov	r2, [r7]
	mov	t0, [rsp]
	mov	[t5], r0
	mov	[t6], r1
	mov	[r7], r2
	mov	[rsp], t0
.LBB28_3:                               //   in Loop: Header=BB28_1 Depth=1
	mov	r1, 1
	mov	r0, r5
	call	__bit_shr
	mov	r5, rax
	jz	r5, .LBB28_5
	jmp	.LBB28_4
.LBB28_4:                               //   in Loop: Header=BB28_1 Depth=1
	mov	r0, rsp
	mov	r1, rsp
	mov	r2, rsp
	call	ryu_dyadic256_quick_mul
	mov	r0, [t2]
	mov	[t2], r0
	mov	r0, [t3]
	mov	r1, [t4]
	mov	r2, [r6]
	mov	t0, [t1]
	mov	[t3], r0
	mov	[t4], r1
	mov	[r6], r2
	mov	[t1], t0
	mov	r0, [t5]
	mov	r1, [t6]
	mov	r2, [r7]
	mov	t0, [rsp]
	mov	[t5], r0
	mov	[t6], r1
	mov	[r7], r2
	mov	[rsp], t0
	jmp	.LBB28_1
.LBB28_5:
	mov	r0, [t6]
	mov	r1, [r7]
	mov	r2, [t5]
	mov	[t6], r0
	mov	r0, [t1]
	mov	r5, [r6]
	mov	[t5], r2
	mov	[r7], r1
	mov	[t1], r0
	mov	[r6], r5
	mov	r0, [rsp]
	mov	r1, [t4]
	mov	r2, [t3]
	mov	r5, [t2]
	mov	[rsp], r0
	mov	r0, [rsp]
	mov	[t4], r1
	mov	[t3], r2
	mov	[t2], r5
	sub	r0, r3
	add	r0, 128
	mov	[rsp], r0
	mov	r0, rsp
	mov	r1, rsp
	call	ryu_dyadic256_as_mantissa_type
	mov	r2, rsp
	mov	r3, rsp
	mov	t0, rsp
	mov	r7, [r7]
	mov	t1, [rsp]
	add	r0, 9
	mov	r6, [r0]
	mov	r5, [t2]
	add	r1, 16
	add	r2, 17
	mov	t2, [r2]
	add	r3, 24
	add	t0, 25
	mov	t4, [t0]
	mov	t5, [r3]
	mov	t3, [r1]
	mov	r0, t5
	mov	r1, t4
	call	__bit_or
	jnz	rax, .LBB28_9
	jmp	.LBB28_6
.LBB28_6:
	mov	r1, 1000000000
	mov	r0, t3
	call	__bit_xor
	mov	r0, rax
	mov	r1, t2
	call	__bit_or
	jnz	rax, .LBB28_8
	jmp	.LBB28_7
.LBB28_7:
	mov	r0, r5
	mov	r1, t1
	call	__bit_or
	mov	r2, rax
	mov	r0, r6
	mov	r1, r7
	call	__bit_or
	mov	r0, r2
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	t2, 0
	mov	t3, 1000000000
	mov	rax, 1000000000
	jz	r0, .LBB28_10
	jmp	.LBB28_9
.LBB28_8:
	mov	r0, t2
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	mov	r0, t3
	add	r0, -1000000001
	mov	r1, 31
	mov	r2, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	add	r2, 1
	mov	r0, r2
	mov	r1, rax
	call	__bit_and
	mov	r0, rax
	mov	rax, t3
	jnz	r0, .LBB28_10
	jmp	.LBB28_9
.LBB28_9:
	mov	r2, 1000000000
	mov	r3, 0
	mov	r0, t5
	mov	r1, t4
	call	__udivdi3
	mov	r2, -1000000000
	mov	r1, t0
	mov	r0, rax
	call	__muldi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, t5
	mov	r3, t4
	call	__adddi3
	mov	r2, 1000000000
	mov	r3, 0
	mov	t4, rax
	mov	r0, t2
	mov	r1, t4
	call	__udivdi3
	mov	r2, -1000000000
	mov	r1, t0
	mov	r0, rax
	call	__muldi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, t2
	mov	r3, t4
	call	__adddi3
	mov	r1, -512
	mov	t4, rax
	mov	r0, t3
	call	__bit_and
	mov	r2, 1000000000
	mov	r3, 0
	mov	r0, rax
	mov	r1, t4
	call	__udivdi3
	mov	r2, -1000000000
	mov	r1, t0
	mov	r0, rax
	call	__muldi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, t3
	mov	r3, t2
	call	__adddi3
	mov	t2, 0
.LBB28_10:
	mov	[r4], t1
	mov	r0, r4
	add	r0, 1
	mov	[r0], r7
	mov	r0, r4
	add	r0, 8
	mov	r1, r4
	add	r1, 9
	mov	[r1], r6
	mov	[r0], r5
	mov	r0, r4
	add	r0, 16
	add	r4, 17
	mov	[r4], t2
	mov	[r0], rax
	ret
// -- End function
// -- Begin function ryu_dyadic256_quick_mul
ryu_dyadic256_quick_mul:                // @ryu_dyadic256_quick_mul
// %bb.0:
	mov	[rsp-1], x0
	mov	[rsp-2], x1
	mov	[rsp-3], x2
	mov	[rsp-4], x3
	mov	[rsp-5], x4
	mov	[rsp-6], x5
	mov	[rsp-7], x6
	mov	[rsp-8], x7
	mov	[rsp-9], x8
	mov	[rsp-10], x9
	mov	[rsp-11], x10
	mov	[rsp-12], x11
	mov	[rsp-13], x12
	mov	[rsp-14], x13
	mov	[rsp-15], x14
	mov	[rsp-16], x15
	mov	r3, [r2]
	add	r3, [r1]
	mov	r4, r0
	mov	[rsp-29], r3
	mov	r0, r3
	add	r0, 256
	mov	[r4], r0
	mov	r0, r4
	add	r0, 4
	mov	[rsp-19], r0
	mov	r0, r1
	add	r0, 4
	mov	r3, r2
	add	r3, 4
	mov	x3, [r3]
	mov	r3, r2
	add	r3, 5
	mov	x2, [r3]
	mov	r3, r2
	add	r3, 12
	mov	t7, [r3]
	mov	r3, r2
	add	r3, 13
	mov	t6, [r3]
	mov	r3, r2
	add	r3, 20
	mov	t4, [r3]
	mov	r3, r2
	add	r3, 21
	mov	r6, [r3]
	mov	r3, r2
	add	r3, 28
	mov	r7, [r3]
	add	r2, 29
	mov	t1, [r2]
	mov	r5, [r0]
	mov	r0, r1
	add	r0, 5
	mov	x6, [r0]
	mov	r0, r1
	add	r0, 12
	mov	x1, [r0]
	mov	r0, r1
	add	r0, 13
	mov	x0, [r0]
	mov	r0, r1
	add	r0, 20
	mov	t5, [r0]
	mov	r0, r1
	add	r0, 21
	mov	t3, [r0]
	mov	r0, r1
	add	r0, 28
	mov	x15, [r0]
	add	r1, 29
	mov	x14, [r1]
	mov	r1, 0
	mov	r3, 0
	mov	r0, x0
	mov	r2, r6
	call	__muldi3
	mov	t2, rax
	mov	x5, t0
	mov	r0, x6
	mov	r2, t1
	call	__muldi3
	mov	x7, rax
	mov	x8, t0
	mov	r0, r5
	mov	r2, r7
	call	__muldi3
	mov	x4, rax
	mov	x9, t0
	mov	r0, x6
	call	__muldi3
	mov	r3, t0
	mov	r0, x9
	mov	r2, rax
	call	__adddi3
	mov	x6, rax
	mov	r0, t0
	mov	r2, x7
	mov	r3, x8
	call	__adddi3
	mov	r3, 0
	mov	x7, rax
	mov	x8, t0
	mov	r0, r5
	mov	r2, t1
	call	__muldi3
	mov	r3, t0
	mov	r0, x6
	mov	r2, rax
	call	__adddi3
	mov	r3, 0
	mov	x6, rax
	mov	r2, t0
	mov	r0, x7
	mov	r1, x8
	call	__adddi3
	mov	r1, 0
	mov	x8, rax
	mov	x9, t0
	mov	r0, x1
	mov	r2, t4
	call	__muldi3
	mov	r5, rax
	mov	x7, t0
	mov	r0, x0
	call	__muldi3
	mov	r3, t0
	mov	r0, x7
	mov	r2, rax
	call	__adddi3
	mov	r3, 0
	mov	x7, rax
	mov	x11, t0
	mov	r0, x1
	mov	r2, r6
	call	__muldi3
	mov	r3, t0
	mov	r0, x7
	mov	r2, rax
	call	__adddi3
	mov	x10, rax
	mov	x7, t0
	mov	r0, x11
	mov	r2, t2
	mov	r3, x5
	call	__adddi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x8
	mov	r3, x9
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x7
	call	__adddi3
	mov	x5, rax
	mov	x7, t0
	mov	r0, x7
	mov	r1, x9
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	mov	r0, x7
	sub	r0, x9
	mov	r1, 31
	mov	r2, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, x5
	sub	r0, x8
	mov	r1, 31
	mov	r3, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	rax, r3
	add	r2, 1
	mov	r0, r2
	mov	r1, rax
	call	__bit_and
	add	r3, rax
	mov	r1, 1
	mov	r0, r3
	call	__bit_and
	mov	r3, 0
	mov	x9, rax
	mov	r0, x4
	mov	r1, x6
	mov	r2, r5
	call	__adddi3
	mov	r2, 0
	mov	r1, t0
	mov	r0, rax
	mov	r3, x10
	call	__adddi3
	mov	r5, rax
	mov	t2, t0
	mov	r0, t2
	mov	r1, x6
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	mov	r0, t2
	sub	r0, x6
	mov	r1, 31
	mov	r2, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, r5
	sub	r0, x4
	mov	r1, 31
	mov	r3, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	rax, r3
	add	r2, 1
	mov	r0, r2
	mov	r1, rax
	call	__bit_and
	add	r3, rax
	mov	r1, 1
	mov	r0, r3
	call	__bit_and
	mov	r3, 0
	mov	r0, x5
	mov	r1, x7
	mov	r2, rax
	call	__adddi3
	mov	x4, rax
	mov	x8, t0
	mov	r0, x8
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	mov	r0, x8
	sub	r0, x7
	mov	r1, 31
	mov	r2, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, x4
	sub	r0, x5
	mov	r1, 31
	mov	r3, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	rax, r3
	add	r2, 1
	mov	r0, r2
	mov	r1, rax
	call	__bit_and
	add	r3, rax
	mov	r1, 1
	mov	r0, r3
	call	__bit_and
	mov	r1, 0
	mov	r3, 0
	mov	r0, rax
	mov	r2, x9
	call	__adddi3
	mov	x5, rax
	mov	x7, t0
	mov	r0, t3
	mov	r2, t6
	call	__muldi3
	mov	x6, rax
	mov	x9, t0
	mov	r0, t5
	mov	r2, t7
	call	__muldi3
	mov	x11, rax
	mov	x10, t0
	mov	r0, t3
	call	__muldi3
	mov	r3, t0
	mov	r0, x10
	mov	r2, rax
	call	__adddi3
	mov	r3, 0
	mov	x10, rax
	mov	x13, t0
	mov	r0, t5
	mov	r2, t6
	call	__muldi3
	mov	r3, t0
	mov	r0, x10
	mov	r2, rax
	call	__adddi3
	mov	x12, rax
	mov	x10, t0
	mov	r0, x13
	mov	r2, x6
	mov	r3, x9
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x10
	call	__adddi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x4
	mov	r3, x8
	call	__adddi3
	mov	x6, rax
	mov	x9, t0
	mov	r0, x9
	mov	r1, x8
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	mov	r0, x9
	sub	r0, x8
	mov	r1, 31
	mov	r2, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, x6
	sub	r0, x4
	mov	r1, 31
	mov	r3, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	rax, r3
	add	r2, 1
	mov	r0, r2
	mov	r1, rax
	call	__bit_and
	add	r3, rax
	mov	r1, 1
	mov	r0, r3
	call	__bit_and
	mov	r3, 0
	mov	r0, x5
	mov	r1, x7
	mov	r2, rax
	call	__adddi3
	mov	x8, rax
	mov	x10, t0
	mov	r0, x11
	mov	r1, x12
	mov	r2, r5
	mov	r3, t2
	call	__adddi3
	mov	x5, rax
	mov	x4, t0
	mov	r0, x4
	mov	r1, t2
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	mov	r0, x4
	sub	r0, t2
	mov	r1, 31
	mov	r2, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, x5
	sub	r0, r5
	mov	r1, 31
	mov	r3, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	rax, r3
	add	r2, 1
	mov	r0, r2
	mov	r1, rax
	call	__bit_and
	add	r3, rax
	mov	r1, 1
	mov	r0, r3
	call	__bit_and
	mov	r3, 0
	mov	r0, x6
	mov	r1, x9
	mov	r2, rax
	call	__adddi3
	mov	r5, rax
	mov	x7, t0
	mov	r0, x7
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	mov	r0, x7
	sub	r0, x9
	mov	r1, 31
	mov	r2, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, r5
	sub	r0, x6
	mov	r1, 31
	mov	r3, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	rax, r3
	add	r2, 1
	mov	r0, r2
	mov	r1, rax
	call	__bit_and
	add	r3, rax
	mov	r1, 1
	mov	r0, r3
	call	__bit_and
	mov	r3, 0
	mov	r0, x8
	mov	r1, x10
	mov	r2, rax
	call	__adddi3
	mov	r1, 0
	mov	x8, rax
	mov	x9, t0
	mov	[rsp-26], x14
	mov	r0, x14
	mov	r2, x2
	call	__muldi3
	mov	t2, rax
	mov	x10, t0
	mov	[rsp-17], x15
	mov	r0, x15
	mov	r2, x3
	call	__muldi3
	mov	x6, rax
	mov	x11, t0
	mov	r0, x14
	call	__muldi3
	mov	r3, t0
	mov	r0, x11
	mov	r2, rax
	call	__adddi3
	mov	r3, 0
	mov	x3, rax
	mov	x11, t0
	mov	r0, x15
	mov	r2, x2
	call	__muldi3
	mov	r3, t0
	mov	r0, x3
	mov	r2, rax
	call	__adddi3
	mov	x3, rax
	mov	x2, t0
	mov	r0, x11
	mov	r2, t2
	mov	r3, x10
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x2
	call	__adddi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, r5
	mov	r3, x7
	call	__adddi3
	mov	t2, rax
	mov	x2, t0
	mov	r0, x2
	mov	r1, x7
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	mov	r0, x2
	sub	r0, x7
	mov	r1, 31
	mov	r2, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, t2
	sub	r0, r5
	mov	r1, 31
	mov	r3, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	rax, r3
	add	r2, 1
	mov	r0, r2
	mov	r1, rax
	call	__bit_and
	add	r3, rax
	mov	r1, 1
	mov	r0, r3
	call	__bit_and
	mov	r3, 0
	mov	r0, x8
	mov	r1, x9
	mov	r2, rax
	call	__adddi3
	mov	r5, rax
	mov	x7, t0
	mov	r0, x5
	call	__bit_not
	mov	r2, rax
	mov	r0, x4
	call	__bit_not
	mov	r3, rax
	mov	r0, x3
	mov	r1, r3
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	sub	r3, x3
	mov	r1, 31
	mov	x3, rax
	mov	r0, r3
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	r2, x6
	mov	r1, 31
	mov	r3, rax
	mov	r0, r2
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	rax, r3
	add	x3, 1
	mov	r0, x3
	mov	r1, rax
	call	__bit_and
	add	r3, rax
	mov	r1, 1
	mov	r0, r3
	call	__bit_and
	mov	r3, 0
	mov	r0, t2
	mov	r1, x2
	mov	r2, rax
	call	__adddi3
	mov	x3, rax
	mov	x4, t0
	mov	r0, x4
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	mov	r0, x4
	sub	r0, x2
	mov	r1, 31
	mov	r2, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, x3
	sub	r0, t2
	mov	r1, 31
	mov	r3, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	rax, r3
	add	r2, 1
	mov	r0, r2
	mov	r1, rax
	call	__bit_and
	add	r3, rax
	mov	r1, 1
	mov	r0, r3
	call	__bit_and
	mov	r3, 0
	mov	r0, r5
	mov	r1, x7
	mov	r2, rax
	call	__adddi3
	mov	r1, 0
	mov	x8, rax
	mov	[rsp-28], x8
	mov	x9, t0
	mov	r0, x1
	mov	r2, r7
	call	__muldi3
	mov	r5, rax
	mov	x2, t0
	mov	[rsp-18], t1
	mov	r2, t1
	call	__muldi3
	mov	x6, rax
	mov	x7, t0
	mov	r0, x0
	mov	r2, r7
	call	__muldi3
	mov	x5, rax
	mov	x10, t0
	mov	r2, t1
	call	__muldi3
	mov	t2, rax
	mov	x1, t0
	mov	r0, x2
	mov	r2, x5
	mov	r3, x10
	call	__adddi3
	mov	x5, t0
	mov	r0, rax
	mov	r2, x6
	mov	r3, x7
	call	__adddi3
	mov	x2, t0
	mov	r0, r5
	mov	r1, rax
	mov	r2, x3
	mov	r3, x4
	call	__adddi3
	mov	r5, rax
	mov	x0, t0
	mov	r0, x0
	mov	r1, x4
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	mov	r0, x0
	sub	r0, x4
	mov	r1, 31
	mov	r2, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, r5
	sub	r0, x3
	mov	r1, 31
	mov	r3, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	rax, r3
	add	r2, 1
	mov	r0, r2
	mov	r1, rax
	call	__bit_and
	add	r3, rax
	mov	r1, 1
	mov	r0, r3
	call	__bit_and
	mov	r1, 0
	mov	x3, rax
	mov	r0, x5
	mov	r2, t2
	mov	r3, x1
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x2
	call	__adddi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x8
	mov	r3, x9
	call	__adddi3
	mov	r3, 0
	mov	x14, rax
	mov	x15, t0
	mov	r0, x14
	mov	r1, x15
	mov	r2, x3
	call	__adddi3
	mov	r1, 0
	mov	x10, rax
	mov	x11, t0
	mov	r0, t5
	mov	r2, t4
	call	__muldi3
	mov	t2, rax
	mov	x2, t0
	mov	r2, r6
	call	__muldi3
	mov	x4, rax
	mov	x6, t0
	mov	r0, t3
	mov	r2, t4
	mov	t3, t4
	call	__muldi3
	mov	x5, rax
	mov	x7, t0
	mov	x8, r0
	mov	r2, r6
	mov	t4, r6
	mov	[rsp-24], t4
	call	__muldi3
	mov	x1, rax
	mov	x3, t0
	mov	r0, x2
	mov	r2, x5
	mov	r3, x7
	call	__adddi3
	mov	x5, t0
	mov	r0, rax
	mov	r2, x4
	mov	r3, x6
	call	__adddi3
	mov	x4, t0
	mov	r0, t2
	mov	r1, rax
	mov	r2, r5
	mov	r3, x0
	call	__adddi3
	mov	t2, rax
	mov	x2, t0
	mov	r0, x2
	mov	r1, x0
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	mov	r0, x2
	sub	r0, x0
	mov	r1, 31
	mov	r2, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, t2
	sub	r0, r5
	mov	r1, 31
	mov	r3, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	rax, r3
	add	r2, 1
	mov	r0, r2
	mov	r1, rax
	call	__bit_and
	add	r3, rax
	mov	r1, 1
	mov	r0, r3
	call	__bit_and
	mov	r1, 0
	mov	r5, rax
	mov	r0, x5
	mov	r2, x1
	mov	r3, x3
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x4
	call	__adddi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x10
	mov	r3, x11
	call	__adddi3
	mov	r3, 0
	mov	x0, rax
	mov	x1, t0
	mov	r0, x0
	mov	r1, x1
	mov	r2, r5
	call	__adddi3
	mov	r1, 0
	mov	x12, rax
	mov	x13, t0
	mov	r0, [rsp-17]
	mov	r2, t7
	call	__muldi3
	mov	x5, rax
	mov	x3, t0
	mov	r6, r0
	mov	r2, t6
	call	__muldi3
	mov	x6, rax
	mov	x7, t0
	mov	r0, [rsp-26]
	mov	r2, t7
	call	__muldi3
	mov	t7, rax
	mov	x4, t0
	mov	t1, r0
	mov	r2, t6
	call	__muldi3
	mov	r5, rax
	mov	t6, t0
	mov	r0, x3
	mov	r2, t7
	mov	r3, x4
	call	__adddi3
	mov	x4, t0
	mov	r0, rax
	mov	r2, x6
	mov	r3, x7
	call	__adddi3
	mov	x3, t0
	mov	r0, x5
	mov	r1, rax
	mov	r2, t2
	mov	r3, x2
	call	__adddi3
	mov	r3, rax
	mov	[rsp-20], r3
	mov	t7, t0
	mov	r0, t7
	mov	r1, x2
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	mov	r0, t7
	sub	r0, x2
	mov	r1, 31
	mov	r2, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, r3
	sub	r0, t2
	mov	r1, 31
	mov	r3, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	rax, r3
	add	r2, 1
	mov	r0, r2
	mov	r1, rax
	call	__bit_and
	add	r3, rax
	mov	r1, 1
	mov	r0, r3
	call	__bit_and
	mov	r1, 0
	mov	t2, rax
	mov	r0, x4
	mov	r2, r5
	mov	r3, t6
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x3
	call	__adddi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x12
	mov	r3, x13
	call	__adddi3
	mov	r3, 0
	mov	x4, rax
	mov	t6, t0
	mov	r0, x4
	mov	r1, t6
	mov	r2, t2
	call	__adddi3
	mov	r1, 0
	mov	x6, rax
	mov	x7, t0
	mov	r0, t5
	mov	[rsp-23], r7
	mov	r2, r7
	call	__muldi3
	mov	r5, rax
	mov	t2, t0
	mov	x5, [rsp-18]
	mov	r2, x5
	call	__muldi3
	mov	t5, rax
	mov	x2, t0
	mov	r0, x8
	mov	r2, r7
	call	__muldi3
	mov	r3, t0
	mov	r0, t2
	mov	r2, rax
	call	__adddi3
	mov	t2, t0
	mov	r0, rax
	mov	r2, t5
	mov	r3, x2
	call	__adddi3
	mov	[rsp-27], t0
	mov	r0, r5
	mov	r1, rax
	mov	r2, x6
	mov	r3, x7
	call	__adddi3
	mov	r1, 0
	mov	r3, 0
	mov	x2, rax
	mov	x3, t0
	mov	r0, r6
	mov	r2, t3
	call	__muldi3
	mov	r5, rax
	mov	t5, t0
	mov	r2, t4
	call	__muldi3
	mov	r6, rax
	mov	r7, t0
	mov	r0, t1
	mov	r2, t3
	call	__muldi3
	mov	r3, t0
	mov	r0, t5
	mov	r2, rax
	call	__adddi3
	mov	[rsp-25], t0
	mov	r0, rax
	mov	r2, r6
	mov	r3, r7
	call	__adddi3
	mov	r7, t0
	mov	r0, r5
	mov	r1, rax
	mov	r2, x2
	mov	r3, x3
	call	__adddi3
	mov	r1, 0
	mov	r3, 0
	mov	t5, rax
	mov	t4, t0
	mov	r0, t1
	mov	r2, x5
	call	__muldi3
	mov	[rsp-21], rax
	mov	[rsp-22], t0
	mov	r0, x8
	call	__muldi3
	mov	t3, rax
	mov	r5, t0
	mov	r0, x15
	mov	r1, x9
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	mov	r0, x15
	sub	r0, x9
	mov	r1, 31
	mov	r2, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, x14
	mov	r1, [rsp-28]
	sub	r0, r1
	mov	r1, 31
	mov	r3, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	rax, r3
	add	r2, 1
	mov	r0, r2
	mov	r1, rax
	call	__bit_and
	add	r3, rax
	mov	r1, 1
	mov	r0, r3
	call	__bit_and
	mov	r2, rax
	mov	r0, x11
	mov	r1, x15
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	mov	r0, x11
	sub	r0, x15
	mov	r1, 31
	mov	r3, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, x10
	sub	r0, x14
	mov	r1, 31
	mov	r6, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	rax, r6
	add	r3, 1
	mov	r0, r3
	mov	r1, rax
	call	__bit_and
	add	r6, rax
	mov	r1, 1
	mov	r0, r6
	call	__bit_and
	mov	r1, 0
	mov	r3, 0
	mov	r0, rax
	call	__adddi3
	mov	r2, rax
	mov	x8, t0
	mov	r0, x1
	mov	r1, x11
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	mov	r0, x1
	sub	r0, x11
	mov	r1, 31
	mov	r3, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, x0
	sub	r0, x10
	mov	r1, 31
	mov	r6, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	rax, r6
	add	r3, 1
	mov	r0, r3
	mov	r1, rax
	call	__bit_and
	add	r6, rax
	mov	r1, 1
	mov	r0, r6
	call	__bit_and
	mov	r3, 0
	mov	r0, r2
	mov	r1, x8
	mov	r2, rax
	call	__adddi3
	mov	r2, rax
	mov	x8, t0
	mov	r0, x13
	mov	r1, x1
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	mov	r0, x13
	sub	r0, x1
	mov	r1, 31
	mov	r3, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, x12
	sub	r0, x0
	mov	r1, 31
	mov	r6, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	rax, r6
	add	r3, 1
	mov	r0, r3
	mov	r1, rax
	call	__bit_and
	add	r6, rax
	mov	r1, 1
	mov	r0, r6
	call	__bit_and
	mov	r3, 0
	mov	r0, r2
	mov	r1, x8
	mov	r2, rax
	call	__adddi3
	mov	r2, rax
	mov	x0, t0
	mov	r0, t6
	mov	r1, x13
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	mov	r0, t6
	sub	r0, x13
	mov	r1, 31
	mov	r3, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, x4
	sub	r0, x12
	mov	r1, 31
	mov	r6, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	rax, r6
	add	r3, 1
	mov	r0, r3
	mov	r1, rax
	call	__bit_and
	add	r6, rax
	mov	r1, 1
	mov	r0, r6
	call	__bit_and
	mov	r3, 0
	mov	r0, r2
	mov	r1, x0
	mov	r2, rax
	call	__adddi3
	mov	r2, rax
	mov	x0, t0
	mov	r0, x7
	mov	r1, t6
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	mov	r0, x7
	sub	r0, t6
	mov	r1, 31
	mov	r3, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, x6
	sub	r0, x4
	mov	r1, 31
	mov	r6, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	rax, r6
	add	r3, 1
	mov	r0, r3
	mov	r1, rax
	call	__bit_and
	add	r6, rax
	mov	r1, 1
	mov	r0, r6
	call	__bit_and
	mov	r3, 0
	mov	r0, r2
	mov	r1, x0
	mov	r2, rax
	call	__adddi3
	mov	r1, 0
	mov	t6, rax
	mov	r6, t0
	mov	r0, t2
	mov	r2, t3
	mov	r3, r5
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, [rsp-27]
	call	__adddi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, t6
	mov	r3, r6
	call	__adddi3
	mov	r5, rax
	mov	t3, t0
	mov	r0, t3
	mov	r1, r6
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	mov	r0, t3
	sub	r0, r6
	mov	r1, 31
	mov	r2, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, r5
	sub	r0, t6
	mov	r1, 31
	mov	r3, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	rax, r3
	add	r2, 1
	mov	r0, r2
	mov	r1, rax
	call	__bit_and
	add	r3, rax
	mov	r1, 1
	mov	r0, r3
	call	__bit_and
	mov	t2, rax
	mov	r0, x3
	mov	r1, x7
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	mov	r0, x3
	sub	r0, x7
	mov	r1, 31
	mov	r2, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, x2
	sub	r0, x6
	mov	r1, 31
	mov	r3, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	rax, r3
	add	r2, 1
	mov	r0, r2
	mov	r1, rax
	call	__bit_and
	add	r3, rax
	mov	r1, 1
	mov	r0, r3
	call	__bit_and
	mov	r3, 0
	mov	r0, r5
	mov	r1, t3
	mov	r2, rax
	call	__adddi3
	mov	x1, rax
	mov	x4, t0
	mov	r0, x4
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	mov	r0, x4
	sub	r0, t3
	mov	r1, 31
	mov	r2, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, x1
	sub	r0, r5
	mov	r1, 31
	mov	r3, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	rax, r3
	add	r2, 1
	mov	r0, r2
	mov	r1, rax
	call	__bit_and
	add	r3, rax
	mov	r1, 1
	mov	r0, r3
	call	__bit_and
	mov	r1, 0
	mov	r3, 0
	mov	r5, rax
	mov	r0, t1
	mov	r2, [rsp-24]
	call	__muldi3
	mov	r3, t0
	mov	r0, [rsp-25]
	mov	r2, rax
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, r7
	call	__adddi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x1
	mov	r3, x4
	call	__adddi3
	mov	t6, rax
	mov	x0, t0
	mov	r0, x0
	mov	r1, x4
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	mov	r0, x0
	sub	r0, x4
	mov	r1, 31
	mov	r2, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, t6
	sub	r0, x1
	mov	r1, 31
	mov	r3, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	rax, r3
	add	r2, 1
	mov	r0, r2
	mov	r1, rax
	call	__bit_and
	add	r3, rax
	mov	r1, 1
	mov	r0, r3
	call	__bit_and
	mov	t3, rax
	mov	r0, t4
	mov	r1, x3
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	mov	r0, t4
	sub	r0, x3
	mov	r1, 31
	mov	r2, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, t5
	sub	r0, x2
	mov	r1, 31
	mov	r3, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	rax, r3
	add	r2, 1
	mov	r0, r2
	mov	r1, rax
	call	__bit_and
	add	r3, rax
	mov	r1, 1
	mov	r0, r3
	call	__bit_and
	mov	r3, 0
	mov	r0, t6
	mov	r1, x0
	mov	r2, rax
	call	__adddi3
	mov	x1, rax
	mov	x2, t0
	mov	r0, x2
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	mov	r0, x2
	sub	r0, x0
	mov	r1, 31
	mov	r2, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, x1
	sub	r0, t6
	mov	r1, 31
	mov	r3, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	rax, r3
	add	r2, 1
	mov	r0, r2
	mov	r1, rax
	call	__bit_and
	add	r3, rax
	mov	r1, 1
	mov	r0, r3
	call	__bit_and
	mov	r1, 0
	mov	r3, 0
	mov	t6, rax
	mov	x0, [rsp-17]
	mov	r0, x0
	mov	r2, [rsp-23]
	call	__muldi3
	mov	r6, rax
	mov	r7, t0
	mov	r0, t1
	call	__muldi3
	mov	r3, t0
	mov	r0, r7
	mov	r2, rax
	call	__adddi3
	mov	r3, 0
	mov	r7, rax
	mov	t1, t0
	mov	r0, x0
	mov	r2, [rsp-18]
	call	__muldi3
	mov	r3, t0
	mov	r0, r7
	mov	r2, rax
	call	__adddi3
	mov	x0, t0
	mov	r0, r6
	mov	r1, rax
	mov	r2, x1
	mov	r3, x2
	call	__adddi3
	mov	r7, rax
	mov	r6, t0
	mov	r0, r6
	mov	r1, x2
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	mov	r0, r6
	sub	r0, x2
	mov	r1, 31
	mov	r2, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, r7
	sub	r0, x1
	mov	r1, 31
	mov	r3, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	rax, r3
	add	r2, 1
	mov	r0, r2
	mov	r1, rax
	call	__bit_and
	add	r3, rax
	mov	r1, 1
	mov	r0, r3
	call	__bit_and
	mov	r1, 0
	mov	x1, rax
	mov	r0, t1
	mov	r2, [rsp-21]
	mov	r3, [rsp-22]
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x0
	call	__adddi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, t2
	call	__adddi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, r5
	call	__adddi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, t3
	mov	t3, [rsp-20]
	call	__adddi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, t6
	call	__adddi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x1
	call	__adddi3
	mov	r5, rax
	mov	r3, t0
	mov	r0, r4
	add	r0, 5
	mov	[r0], t7
	mov	r0, [rsp-19]
	mov	[r0], t3
	mov	r0, r4
	add	r0, 12
	mov	r1, r4
	add	r1, 13
	mov	[r1], t4
	mov	[r0], t5
	mov	r0, r4
	add	r0, 20
	mov	r1, r4
	add	r1, 21
	mov	[r1], r6
	mov	[r0], r7
	mov	r0, r4
	add	r0, 28
	mov	r1, r4
	add	r1, 29
	mov	[r1], r3
	mov	[r0], r5
	mov	r0, t4
	mov	r1, t7
	call	__bit_or
	mov	r2, rax
	mov	r0, t5
	mov	r1, t3
	call	__bit_or
	mov	r0, rax
	mov	r1, r7
	call	__bit_or
	mov	t1, rax
	mov	r0, r2
	mov	r1, r6
	call	__bit_or
	mov	r0, rax
	mov	r1, r3
	call	__bit_or
	mov	r2, rax
	mov	r0, t1
	mov	r1, r5
	call	__bit_or
	mov	r0, 0
	jl	r3, r0, .LBB29_3
	jmp	.LBB29_1
.LBB29_1:
	mov	r0, rax
	mov	r1, r2
	call	__bit_or
	jz	rax, .LBB29_3
	jmp	.LBB29_2
.LBB29_2:
	mov	r0, [rsp-29]
	add	r0, 255
	mov	r1, 1
	mov	[r4], r0
	mov	r0, r5
	call	__bit_shl
	mov	r1, 31
	mov	r2, rax
	mov	r0, r6
	call	__bit_shr
	mov	r0, r2
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r2, rax
	mov	r0, r5
	call	__bit_shr
	mov	r1, 1
	mov	r5, rax
	mov	r0, r3
	call	__bit_shl
	mov	r0, rax
	mov	r1, r5
	call	__bit_or
	mov	r1, 1
	mov	r3, rax
	mov	r0, r7
	call	__bit_shl
	mov	r1, 31
	mov	r5, rax
	mov	r0, t4
	call	__bit_shr
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r5, rax
	mov	r0, r7
	call	__bit_shr
	mov	r1, 1
	mov	r7, rax
	mov	r0, r6
	call	__bit_shl
	mov	r0, rax
	mov	r1, r7
	call	__bit_or
	mov	r1, 1
	mov	r6, rax
	mov	r0, t5
	call	__bit_shl
	mov	r1, 31
	mov	r7, rax
	mov	r0, t7
	call	__bit_shr
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r7, rax
	mov	r0, t5
	call	__bit_shr
	mov	r1, 1
	mov	t1, rax
	mov	r0, t4
	call	__bit_shl
	mov	r0, rax
	mov	r1, t1
	call	__bit_or
	mov	r1, 31
	mov	t1, rax
	mov	r0, t3
	call	__bit_shr
	mov	r1, 1
	mov	t2, rax
	mov	r0, t7
	call	__bit_shl
	mov	r0, rax
	mov	r1, t2
	call	__bit_or
	mov	r1, 1
	mov	t2, rax
	mov	r0, t3
	call	__bit_shl
	mov	r0, r4
	add	r0, 16
	mov	[r0], rax
	mov	r0, r4
	add	r0, 17
	mov	[r0], t2
	mov	r0, r4
	add	r0, 48
	mov	r1, r4
	add	r1, 49
	mov	[r1], t1
	mov	[r0], r7
	mov	r0, r4
	add	r0, 80
	mov	r1, r4
	add	r1, 81
	mov	[r1], r6
	mov	[r0], r5
	mov	r0, r4
	add	r0, 112
	add	r4, 113
	mov	[r4], r3
	mov	[r0], r2
.LBB29_3:
	mov	x15, [rsp-16]
	mov	x14, [rsp-15]
	mov	x13, [rsp-14]
	mov	x12, [rsp-13]
	mov	x11, [rsp-12]
	mov	x10, [rsp-11]
	mov	x9, [rsp-10]
	mov	x8, [rsp-9]
	mov	x7, [rsp-8]
	mov	x6, [rsp-7]
	mov	x5, [rsp-6]
	mov	x4, [rsp-5]
	mov	x3, [rsp-4]
	mov	x2, [rsp-3]
	mov	x1, [rsp-2]
	mov	x0, [rsp-1]
	ret
// -- End function
// -- Begin function ryu_dyadic256_as_mantissa_type
ryu_dyadic256_as_mantissa_type:         // @ryu_dyadic256_as_mantissa_type
// %bb.0:
	mov	[rsp-1], x0
	mov	[rsp-2], x1
	mov	[rsp-3], x2
	mov	[rsp-4], x3
	mov	[rsp-5], x4
	mov	[rsp-6], x5
	mov	r3, r1
	mov	r7, r3
	add	r7, 4
	add	r1, 5
	mov	r4, [r1]
	mov	r1, [r7]
	mov	r2, r3
	add	r2, 12
	mov	r6, r3
	add	r6, 13
	mov	r5, [r2]
	mov	r6, [r6]
	mov	r2, r0
	mov	r0, r5
	call	__bit_or
	mov	r5, rax
	mov	r0, r6
	mov	r1, r4
	call	__bit_or
	mov	r0, r3
	add	r0, 20
	mov	r1, r3
	add	r1, 21
	mov	r1, [r1]
	mov	r4, [r0]
	mov	r0, rax
	call	__bit_or
	mov	r6, rax
	mov	r0, r5
	mov	r1, r4
	call	__bit_or
	mov	r0, r3
	add	r0, 28
	mov	r4, r3
	add	r4, 29
	mov	r1, [r0]
	mov	r4, [r4]
	mov	r0, rax
	call	__bit_or
	mov	r5, rax
	mov	r0, r6
	mov	r1, r4
	call	__bit_or
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	jnz	rax, .LBB30_2
	jmp	.LBB30_1
.LBB30_1:
	mov	[r2], 0
	mov	r0, r2
	add	r0, 7
	mov	[r0], 0
	mov	r0, r2
	add	r0, 6
	mov	[r0], 0
	mov	r0, r2
	add	r0, 5
	mov	[r0], 0
	mov	r0, r2
	add	r0, 4
	mov	[r0], 0
	mov	r0, r2
	add	r0, 3
	mov	[r0], 0
	mov	r0, r2
	add	r0, 2
	mov	[r0], 0
	add	r2, 1
	mov	[r2], 0
	jmp	.LBB30_39
.LBB30_2:
	mov	r4, [r3]
	mov	r0, 1
	jl	r4, r0, .LBB30_20
	jmp	.LBB30_3
.LBB30_3:
	mov	r0, r7
	add	r0, 7
	mov	r0, [r0]
	mov	r1, rsp
	mov	r3, rsp
	mov	r5, rsp
	mov	r6, rsp
	mov	t0, rsp
	mov	t1, rsp
	mov	x5, rsp
	add	r1, 7
	mov	[r1], r0
	mov	r0, r7
	add	r0, 6
	mov	r0, [r0]
	mov	r1, r7
	add	r1, 5
	mov	r1, [r1]
	add	r3, 6
	mov	[r3], r0
	add	r5, 5
	mov	[r5], r1
	mov	r0, r7
	add	r0, 4
	mov	r0, [r0]
	mov	r1, r7
	add	r1, 3
	mov	r1, [r1]
	add	r6, 4
	mov	[r6], r0
	add	t0, 3
	mov	[t0], r1
	mov	r0, r7
	add	r0, 2
	mov	r0, [r0]
	add	t1, 2
	mov	r1, r7
	add	r1, 1
	mov	r1, [r1]
	mov	r3, [r7]
	mov	[t1], r0
	add	x5, 1
	mov	[x5], r1
	mov	[rsp], r3
	mov	r0, r2
	add	r0, 7
	mov	[r0], 0
	mov	r0, r2
	add	r0, 6
	mov	[r0], 0
	mov	r0, r2
	add	r0, 5
	mov	[r0], 0
	mov	r0, r2
	add	r0, 4
	mov	[r0], 0
	mov	r0, r2
	add	r0, 3
	mov	[r0], 0
	mov	r0, r2
	add	r0, 2
	mov	[r0], 0
	mov	x4, r2
	add	x4, 1
	mov	[x4], 0
	mov	r0, 255
	mov	[r2], 0
	jg	r4, r0, .LBB30_19
	jmp	.LBB30_4
.LBB30_4:
	mov	r1, 6
	mov	r0, r4
	call	__bit_shr
	mov	r1, 63
	mov	r3, rax
	call	__bit_and
	mov	r5, rax
	mov	r0, 3
	sub	r0, r3
	mov	r1, 3
	mov	x2, 3
	call	__bit_shl
	mov	t4, rax
	div	t4, 4
	add	t4, rsp
	mov	t2, [t4]
	mov	r0, t4
	add	r0, 1
	mov	t3, [r0]
	jnz	r5, .LBB30_8
	jmp	.LBB30_5
.LBB30_5:
	mov	r0, r2
	add	r0, 24
	mov	r1, r2
	add	r1, 25
	mov	[r1], t3
	mov	r1, 191
	mov	[r0], t2
	jg	r4, r1, .LBB30_19
	jmp	.LBB30_6
.LBB30_6:
	mov	r0, 2
	sub	r0, r3
	mov	r1, 3
	call	__bit_shl
	div	rax, 4
	add	rax, rsp
	mov	r0, [rax]
	add	rax, 1
	mov	r1, [rax]
	mov	r5, r2
	add	r5, 16
	mov	r6, r2
	add	r6, 17
	mov	[r6], r1
	mov	r1, 127
	mov	[r5], r0
	jg	r4, r1, .LBB30_19
	jmp	.LBB30_7
.LBB30_7:
	mov	r0, 1
	sub	r0, r3
	mov	r1, 3
	call	__bit_shl
	div	rax, 4
	add	rax, rsp
	mov	r0, [rax]
	add	rax, 1
	mov	r1, [rax]
	mov	r3, r2
	add	r3, 8
	add	r2, 9
	mov	[r2], r1
	mov	[r3], r0
	jmp	.LBB30_19
.LBB30_8:
	mov	r7, 64
	mov	r1, 31
	sub	r7, r5
	mov	r0, r5
	call	__bit_and
	mov	t5, rax
	mov	r1, 0
	sub	r1, t5
	mov	t1, 0
	mov	r0, t5
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r6, r5
	add	r6, -32
	mov	t6, rax
	mov	r0, r6
	call	__bit_shr
	mov	t7, rax
	mov	r0, t2
	mov	r1, t5
	call	__bit_shl
	mov	x0, 0
	sub	x0, t7
	mov	t7, rax
	mov	r0, x0
	call	__bit_not
	mov	r0, t7
	mov	r1, rax
	call	__bit_and
	mov	x1, rax
	mov	r0, t3
	mov	r1, t5
	call	__bit_shl
	mov	t3, rax
	mov	r0, 32
	sub	r0, t5
	mov	r1, 31
	mov	t5, 32
	call	__bit_and
	mov	r0, t2
	mov	r1, rax
	call	__bit_shr
	mov	r1, 0
	sub	r1, t6
	mov	r0, rax
	call	__bit_and
	mov	r0, t3
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x0
	call	__bit_and
	mov	r0, rax
	mov	r1, x1
	call	__bit_or
	mov	t2, rax
	mov	r0, t7
	mov	r1, x0
	call	__bit_and
	mov	t3, rax
	je	r3, x2, .LBB30_10
	jmp	.LBB30_9
.LBB30_9:
	mov	r0, t4
	add	r0, -8
	mov	t6, [r0]
	add	t4, -7
	mov	t4, [t4]
	mov	r1, 31
	mov	r0, r7
	call	__bit_and
	mov	t7, rax
	mov	r1, 0
	sub	r1, t7
	mov	r0, t7
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r0, r7
	add	r0, -32
	mov	x0, rax
	call	__bit_shr
	mov	x1, rax
	mov	r0, t4
	mov	r1, t7
	call	__bit_shr
	mov	x2, 0
	sub	x2, x1
	mov	x1, rax
	mov	r0, x2
	call	__bit_not
	mov	r0, x1
	mov	r1, rax
	call	__bit_and
	mov	x3, rax
	mov	r0, t6
	mov	r1, t7
	call	__bit_shr
	sub	t5, t7
	mov	r1, 31
	mov	t6, rax
	mov	r0, t5
	call	__bit_and
	mov	r0, t4
	mov	r1, rax
	call	__bit_shl
	sub	t1, x0
	mov	r0, rax
	mov	r1, t1
	call	__bit_and
	mov	r0, t6
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x2
	call	__bit_and
	mov	r0, rax
	mov	r1, x3
	call	__bit_or
	mov	t1, rax
	mov	r0, x1
	mov	r1, x2
	call	__bit_and
	mov	t4, rax
	mov	r0, t1
	mov	r1, t3
	call	__bit_or
	mov	t3, rax
	mov	r0, t4
	mov	r1, t2
	call	__bit_or
	mov	t2, rax
.LBB30_10:
	mov	r0, r2
	add	r0, 24
	mov	r1, r2
	add	r1, 25
	mov	[r1], t2
	mov	r1, 191
	mov	[r0], t3
	jg	r4, r1, .LBB30_17
	jmp	.LBB30_11
.LBB30_11:
	mov	r0, 2
	sub	r0, r3
	mov	r1, 3
	mov	x1, 2
	call	__bit_shl
	mov	t5, rax
	div	t5, 4
	add	t5, rsp
	mov	r0, t5
	add	r0, 1
	mov	t2, [r0]
	mov	t3, [t5]
	mov	r1, 31
	mov	r0, r5
	call	__bit_and
	mov	t6, rax
	mov	r1, 0
	sub	r1, t6
	mov	t1, 0
	mov	r0, t6
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	t7, rax
	mov	r0, r6
	call	__bit_shr
	mov	x0, rax
	mov	r0, 32
	sub	r0, t6
	mov	t4, 32
	call	__bit_and
	mov	r0, t3
	mov	r1, rax
	call	__bit_shr
	mov	r1, 0
	sub	r1, t7
	mov	r0, rax
	call	__bit_and
	mov	t7, rax
	mov	r0, t2
	mov	r1, t6
	call	__bit_shl
	mov	r0, rax
	mov	r1, t7
	call	__bit_or
	mov	t7, 0
	sub	t7, x0
	mov	r0, rax
	mov	r1, t7
	call	__bit_and
	mov	t2, rax
	mov	r0, t3
	mov	r1, t6
	call	__bit_shl
	mov	t3, rax
	mov	r0, t7
	call	__bit_not
	mov	r0, t3
	mov	r1, rax
	call	__bit_and
	mov	r0, t2
	mov	r1, rax
	call	__bit_or
	mov	t2, rax
	mov	r0, t3
	mov	r1, t7
	call	__bit_and
	mov	t3, rax
	je	r3, x1, .LBB30_13
	jmp	.LBB30_12
.LBB30_12:
	mov	r0, t5
	add	r0, -8
	mov	t6, [r0]
	add	t5, -7
	mov	t5, [t5]
	mov	r1, 31
	mov	r0, r7
	call	__bit_and
	mov	t7, rax
	mov	r1, 0
	sub	r1, t7
	mov	r0, t7
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r0, r7
	add	r0, -32
	mov	x0, rax
	call	__bit_shr
	mov	x1, rax
	mov	r0, t5
	mov	r1, t7
	call	__bit_shr
	mov	x2, 0
	sub	x2, x1
	mov	x1, rax
	mov	r0, x2
	call	__bit_not
	mov	r0, x1
	mov	r1, rax
	call	__bit_and
	mov	x3, rax
	mov	r0, t6
	mov	r1, t7
	call	__bit_shr
	sub	t4, t7
	mov	r1, 31
	mov	t6, rax
	mov	r0, t4
	call	__bit_and
	mov	r0, t5
	mov	r1, rax
	call	__bit_shl
	sub	t1, x0
	mov	r0, rax
	mov	r1, t1
	call	__bit_and
	mov	r0, t6
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x2
	call	__bit_and
	mov	r0, rax
	mov	r1, x3
	call	__bit_or
	mov	t1, rax
	mov	r0, x1
	mov	r1, x2
	call	__bit_and
	mov	t4, rax
	mov	r0, t1
	mov	r1, t3
	call	__bit_or
	mov	t3, rax
	mov	r0, t4
	mov	r1, t2
	call	__bit_or
	mov	t2, rax
.LBB30_13:
	mov	r0, r2
	add	r0, 16
	mov	r1, r2
	add	r1, 17
	mov	[r1], t2
	mov	r1, 127
	mov	[r0], t3
	jg	r4, r1, .LBB30_17
	jmp	.LBB30_14
.LBB30_14:
	mov	r0, 1
	sub	r0, r3
	mov	r1, 3
	mov	x0, 1
	call	__bit_shl
	mov	t4, rax
	div	t4, 4
	add	t4, rsp
	mov	r0, t4
	add	r0, 1
	mov	t1, [r0]
	mov	t3, [t4]
	mov	r1, 31
	mov	r0, r5
	call	__bit_and
	mov	t5, rax
	mov	r1, 0
	sub	r1, t5
	mov	r4, 0
	mov	r0, t5
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	t6, rax
	mov	r0, r6
	call	__bit_shr
	mov	t7, rax
	mov	r0, 32
	sub	r0, t5
	mov	t2, 32
	call	__bit_and
	mov	r0, t3
	mov	r1, rax
	call	__bit_shr
	mov	r1, 0
	sub	r1, t6
	mov	r0, rax
	call	__bit_and
	mov	t6, rax
	mov	r0, t1
	mov	r1, t5
	call	__bit_shl
	mov	r0, rax
	mov	r1, t6
	call	__bit_or
	mov	t6, 0
	sub	t6, t7
	mov	r0, rax
	mov	r1, t6
	call	__bit_and
	mov	t1, rax
	mov	r0, t3
	mov	r1, t5
	call	__bit_shl
	mov	t3, rax
	mov	r0, t6
	call	__bit_not
	mov	r0, t3
	mov	r1, rax
	call	__bit_and
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	t1, rax
	mov	r0, t3
	mov	r1, t6
	call	__bit_and
	mov	t3, rax
	je	r3, x0, .LBB30_16
	jmp	.LBB30_15
.LBB30_15:
	mov	r0, t4
	add	r0, -8
	mov	t5, [r0]
	add	t4, -7
	mov	t4, [t4]
	mov	r1, 31
	mov	r0, r7
	call	__bit_and
	mov	t6, rax
	mov	r1, 0
	sub	r1, t6
	mov	r0, t6
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	add	r7, -32
	mov	t7, rax
	mov	r0, r7
	call	__bit_shr
	mov	r7, rax
	mov	r0, t4
	mov	r1, t6
	call	__bit_shr
	mov	x0, 0
	sub	x0, r7
	mov	r7, rax
	mov	r0, x0
	call	__bit_not
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	x1, rax
	mov	r0, t5
	mov	r1, t6
	call	__bit_shr
	sub	t2, t6
	mov	r1, 31
	mov	t5, rax
	mov	r0, t2
	call	__bit_and
	mov	r0, t4
	mov	r1, rax
	call	__bit_shl
	sub	r4, t7
	mov	r0, rax
	mov	r1, r4
	call	__bit_and
	mov	r0, t5
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x0
	call	__bit_and
	mov	r0, rax
	mov	r1, x1
	call	__bit_or
	mov	r4, rax
	mov	r0, r7
	mov	r1, x0
	call	__bit_and
	mov	r7, rax
	mov	r0, r4
	mov	r1, t3
	call	__bit_or
	mov	t3, rax
	mov	r0, r7
	mov	r1, t1
	call	__bit_or
	mov	t1, rax
.LBB30_16:
	mov	r0, r2
	add	r0, 8
	mov	r1, r2
	add	r1, 9
	mov	[r1], t1
	mov	[r0], t3
.LBB30_17:
	jnz	r3, .LBB30_19
	jmp	.LBB30_18
.LBB30_18:
	mov	r3, [x5]
	mov	r4, [rsp]
	mov	r1, 31
	mov	r0, r5
	call	__bit_and
	mov	r5, rax
	mov	r1, 0
	sub	r1, r5
	mov	r7, 0
	mov	r0, r5
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	t1, rax
	mov	r0, r6
	call	__bit_shr
	mov	r6, rax
	mov	r0, r4
	mov	r1, r5
	call	__bit_shl
	mov	t2, 0
	sub	t2, r6
	mov	r6, rax
	mov	r0, t2
	call	__bit_not
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	t3, rax
	mov	r0, r3
	mov	r1, r5
	call	__bit_shl
	mov	r0, 32
	sub	r0, r5
	mov	r1, 31
	mov	r3, rax
	call	__bit_and
	mov	r0, r4
	mov	r1, rax
	call	__bit_shr
	sub	r7, t1
	mov	r0, rax
	mov	r1, r7
	call	__bit_and
	mov	r0, r3
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, t2
	call	__bit_and
	mov	r0, rax
	mov	r1, t3
	call	__bit_or
	mov	r3, rax
	mov	r0, r6
	mov	r1, t2
	call	__bit_and
	mov	[r2], rax
	mov	[x4], r3
.LBB30_19:
	jmp	.LBB30_39
.LBB30_20:
	mov	r0, rsp
	mov	r1, rsp
	mov	r3, rsp
	mov	r5, rsp
	mov	r6, rsp
	mov	t0, rsp
	mov	t1, rsp
	mov	t2, r7
	add	t2, 7
	mov	t2, [t2]
	mov	t3, r7
	add	t3, 6
	mov	t3, [t3]
	add	r0, 7
	mov	[r0], t2
	add	r1, 6
	mov	[r1], t3
	mov	r0, r7
	add	r0, 5
	mov	r0, [r0]
	mov	r1, r7
	add	r1, 4
	mov	r1, [r1]
	add	r3, 5
	mov	[r3], r0
	add	r5, 4
	mov	[r5], r1
	mov	r0, r7
	add	r0, 3
	mov	r0, [r0]
	mov	r1, r7
	add	r1, 2
	mov	r1, [r1]
	add	r6, 3
	mov	[r6], r0
	add	t0, 2
	mov	[t0], r1
	mov	r6, 0
	mov	r0, r7
	add	r0, 1
	mov	r0, [r0]
	mov	r1, [r7]
	sub	r6, r4
	add	t1, 1
	mov	[t1], r0
	mov	[rsp], r1
	mov	r0, r2
	add	r0, 7
	mov	[r0], 0
	mov	r0, r2
	add	r0, 6
	mov	[r0], 0
	mov	r0, r2
	add	r0, 5
	mov	[r0], 0
	mov	r0, r2
	add	r0, 4
	mov	[r0], 0
	mov	r0, r2
	add	r0, 3
	mov	[r0], 0
	mov	r0, r2
	add	r0, 2
	mov	[r0], 0
	mov	x5, r2
	add	x5, 1
	mov	[x5], 0
	mov	r0, 255
	mov	[r2], 0
	jg	r6, r0, .LBB30_38
	jmp	.LBB30_21
.LBB30_21:
	mov	r1, 6
	mov	r0, r6
	call	__bit_shr
	mov	r1, 63
	mov	r3, rax
	call	__bit_and
	mov	r7, rax
	mov	r1, 3
	mov	x2, 3
	mov	r0, r3
	call	__bit_shl
	mov	r4, rax
	div	r4, 4
	add	r4, rsp
	mov	t4, [r4]
	mov	r0, r4
	add	r0, 1
	mov	t3, [r0]
	jnz	r7, .LBB30_26
	jmp	.LBB30_22
.LBB30_22:
	mov	[r2], t4
	mov	r0, 191
	mov	[x5], t3
	jg	r6, r0, .LBB30_25
	jmp	.LBB30_23
.LBB30_23:
	mov	r0, r4
	add	r0, 8
	mov	r1, r4
	add	r1, 9
	mov	r1, [r1]
	mov	r0, [r0]
	mov	r5, r2
	add	r5, 8
	mov	r7, r2
	add	r7, 9
	mov	[r7], r1
	mov	r1, 127
	mov	[r5], r0
	jg	r6, r1, .LBB30_25
	jmp	.LBB30_24
.LBB30_24:
	mov	r0, r4
	add	r0, 16
	add	r4, 17
	mov	r1, [r4]
	mov	r0, [r0]
	mov	r4, r2
	add	r4, 16
	mov	r5, r2
	add	r5, 17
	mov	[r5], r1
	mov	[r4], r0
.LBB30_25:
	jz	r3, .LBB30_37
	jmp	.LBB30_38
.LBB30_26:
	mov	r5, 64
	mov	r1, 31
	sub	r5, r7
	mov	r0, r7
	call	__bit_and
	mov	t5, rax
	mov	r1, 0
	sub	r1, t5
	mov	t2, 0
	mov	r0, t5
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	t1, r7
	add	t1, -32
	mov	t6, rax
	mov	r0, t1
	call	__bit_shr
	mov	t7, rax
	mov	r0, t3
	mov	r1, t5
	call	__bit_shr
	mov	x0, 0
	sub	x0, t7
	mov	t7, rax
	mov	r0, x0
	call	__bit_not
	mov	r0, t7
	mov	r1, rax
	call	__bit_and
	mov	x1, rax
	mov	r0, t4
	mov	r1, t5
	call	__bit_shr
	mov	t4, rax
	mov	r0, 32
	sub	r0, t5
	mov	r1, 31
	mov	t5, 32
	call	__bit_and
	mov	r0, t3
	mov	r1, rax
	call	__bit_shl
	mov	r1, 0
	sub	r1, t6
	mov	r0, rax
	call	__bit_and
	mov	r0, t4
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x0
	call	__bit_and
	mov	r0, rax
	mov	r1, x1
	call	__bit_or
	mov	t3, rax
	mov	r0, t7
	mov	r1, x0
	call	__bit_and
	mov	t4, rax
	je	r3, x2, .LBB30_28
	jmp	.LBB30_27
.LBB30_27:
	mov	r0, r4
	add	r0, 8
	mov	r1, r4
	add	r1, 9
	mov	t6, [r1]
	mov	t7, [r0]
	mov	r1, 31
	mov	r0, r5
	call	__bit_and
	mov	x0, rax
	mov	r1, 0
	sub	r1, x0
	mov	r0, x0
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r0, r5
	add	r0, -32
	mov	x1, rax
	call	__bit_shr
	mov	x2, rax
	mov	r0, t7
	mov	r1, x0
	call	__bit_shl
	mov	x3, 0
	sub	x3, x2
	mov	x2, rax
	mov	r0, x3
	call	__bit_not
	mov	r0, x2
	mov	r1, rax
	call	__bit_and
	mov	x4, rax
	mov	r0, t6
	mov	r1, x0
	call	__bit_shl
	sub	t5, x0
	mov	r1, 31
	mov	t6, rax
	mov	r0, t5
	call	__bit_and
	mov	r0, t7
	mov	r1, rax
	call	__bit_shr
	sub	t2, x1
	mov	r0, rax
	mov	r1, t2
	call	__bit_and
	mov	r0, t6
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x3
	call	__bit_and
	mov	r0, rax
	mov	r1, x4
	call	__bit_or
	mov	t2, rax
	mov	r0, x2
	mov	r1, x3
	call	__bit_and
	mov	t5, rax
	mov	r0, t2
	mov	r1, t4
	call	__bit_or
	mov	t4, rax
	mov	r0, t5
	mov	r1, t3
	call	__bit_or
	mov	t3, rax
.LBB30_28:
	mov	[r2], t3
	mov	r0, 191
	mov	[x5], t4
	jg	r6, r0, .LBB30_36
	jmp	.LBB30_29
.LBB30_29:
	mov	t5, r3
	add	t5, 1
	mov	r1, 3
	mov	x3, 3
	mov	r0, t5
	call	__bit_shl
	mov	t6, rax
	div	t6, 4
	add	t6, rsp
	mov	t4, [t6]
	mov	r0, t6
	add	r0, 1
	mov	t7, [r0]
	mov	r1, 31
	mov	r0, r7
	call	__bit_and
	mov	x0, rax
	mov	r1, 0
	sub	r1, x0
	mov	t2, 0
	mov	r0, x0
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	x1, rax
	mov	r0, t1
	call	__bit_shr
	mov	x2, rax
	mov	r0, 32
	sub	r0, x0
	mov	t3, 32
	call	__bit_and
	mov	r0, t7
	mov	r1, rax
	call	__bit_shl
	mov	r1, 0
	sub	r1, x1
	mov	r0, rax
	call	__bit_and
	mov	x1, rax
	mov	r0, t4
	mov	r1, x0
	call	__bit_shr
	mov	r0, rax
	mov	r1, x1
	call	__bit_or
	mov	x1, 0
	sub	x1, x2
	mov	r0, rax
	mov	r1, x1
	call	__bit_and
	mov	t4, rax
	mov	r0, t7
	mov	r1, x0
	call	__bit_shr
	mov	t7, rax
	mov	r0, x1
	call	__bit_not
	mov	r0, t7
	mov	r1, rax
	call	__bit_and
	mov	r0, t4
	mov	r1, rax
	call	__bit_or
	mov	t4, rax
	mov	r0, t7
	mov	r1, x1
	call	__bit_and
	mov	t7, rax
	je	t5, x3, .LBB30_31
	jmp	.LBB30_30
.LBB30_30:
	mov	r0, t6
	add	r0, 8
	add	t6, 9
	mov	t5, [t6]
	mov	t6, [r0]
	mov	r1, 31
	mov	r0, r5
	call	__bit_and
	mov	x0, rax
	mov	r1, 0
	sub	r1, x0
	mov	r0, x0
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r0, r5
	add	r0, -32
	mov	x1, rax
	call	__bit_shr
	mov	x2, rax
	mov	r0, t6
	mov	r1, x0
	call	__bit_shl
	mov	x3, 0
	sub	x3, x2
	mov	x2, rax
	mov	r0, x3
	call	__bit_not
	mov	r0, x2
	mov	r1, rax
	call	__bit_and
	mov	x4, rax
	mov	r0, t5
	mov	r1, x0
	call	__bit_shl
	sub	t3, x0
	mov	r1, 31
	mov	t5, rax
	mov	r0, t3
	call	__bit_and
	mov	r0, t6
	mov	r1, rax
	call	__bit_shr
	sub	t2, x1
	mov	r0, rax
	mov	r1, t2
	call	__bit_and
	mov	r0, t5
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x3
	call	__bit_and
	mov	r0, rax
	mov	r1, x4
	call	__bit_or
	mov	t2, rax
	mov	r0, x2
	mov	r1, x3
	call	__bit_and
	mov	t3, rax
	mov	r0, t2
	mov	r1, t7
	call	__bit_or
	mov	t2, rax
	mov	r0, t3
	mov	r1, t4
	call	__bit_or
	mov	r0, r2
	add	r0, 8
	mov	[r0], rax
	mov	r0, r2
	add	r0, 9
	mov	r1, 127
	mov	[r0], t2
	jg	r6, r1, .LBB30_36
	jmp	.LBB30_33
.LBB30_31:
	mov	r0, r2
	add	r0, 8
	mov	r1, r2
	add	r1, 9
	mov	[r1], t7
	mov	r1, 127
	mov	[r0], t4
	jg	r6, r1, .LBB30_38
	jmp	.LBB30_32
.LBB30_32:
	mov	r0, r4
	add	r0, 16
	mov	r6, [r0]
	mov	r0, r4
	add	r0, 17
	mov	t2, [r0]
	mov	r1, 31
	mov	r0, r7
	call	__bit_and
	mov	r7, rax
	mov	r1, 0
	sub	r1, r7
	mov	t3, 0
	mov	r0, r7
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	t4, rax
	mov	r0, t1
	call	__bit_shr
	mov	t1, rax
	mov	r0, t2
	mov	r1, r7
	call	__bit_shr
	mov	t5, 0
	sub	t5, t1
	mov	t1, rax
	mov	r0, t5
	call	__bit_not
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	t6, rax
	mov	r0, r6
	mov	r1, r7
	call	__bit_shr
	mov	r0, 32
	sub	r0, r7
	mov	r1, 31
	mov	r6, rax
	call	__bit_and
	mov	r0, t2
	mov	r1, rax
	call	__bit_shl
	sub	t3, t4
	mov	r0, rax
	mov	r1, t3
	call	__bit_and
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, t5
	call	__bit_and
	mov	r0, rax
	mov	r1, t6
	call	__bit_or
	mov	r6, rax
	mov	r0, t1
	mov	r1, t5
	call	__bit_and
	mov	r7, rax
	jmp	.LBB30_34
.LBB30_33:
	mov	r0, r4
	add	r0, 16
	mov	r6, [r0]
	mov	r0, r4
	add	r0, 17
	mov	t2, [r0]
	mov	r1, 31
	mov	r0, r7
	call	__bit_and
	mov	r7, rax
	mov	r1, 0
	sub	r1, r7
	mov	t3, 0
	mov	r0, r7
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	t4, rax
	mov	r0, t1
	call	__bit_shr
	mov	t1, rax
	mov	r0, t2
	mov	r1, r7
	call	__bit_shr
	mov	t5, 0
	sub	t5, t1
	mov	t1, rax
	mov	r0, t5
	call	__bit_not
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	t6, rax
	mov	r0, r6
	mov	r1, r7
	call	__bit_shr
	mov	r0, 32
	sub	r0, r7
	mov	r1, 31
	mov	r6, rax
	call	__bit_and
	mov	r0, t2
	mov	r1, rax
	call	__bit_shl
	sub	t3, t4
	mov	r0, rax
	mov	r1, t3
	call	__bit_and
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, t5
	call	__bit_and
	mov	r0, rax
	mov	r1, t6
	call	__bit_or
	mov	r6, rax
	mov	r0, t1
	mov	r1, t5
	call	__bit_and
	mov	r0, 1
	mov	r7, rax
	je	r3, r0, .LBB30_35
	jmp	.LBB30_34
.LBB30_34:
	mov	r0, r4
	add	r0, 24
	add	r4, 25
	mov	r4, [r4]
	mov	t1, [r0]
	mov	r1, 31
	mov	r0, r5
	call	__bit_and
	mov	t2, rax
	mov	r1, 0
	sub	r1, t2
	mov	t3, 0
	mov	r0, t2
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	add	r5, -32
	mov	t4, rax
	mov	r0, r5
	call	__bit_shr
	mov	r5, rax
	mov	r0, t1
	mov	r1, t2
	call	__bit_shl
	mov	t5, 0
	sub	t5, r5
	mov	r5, rax
	mov	r0, t5
	call	__bit_not
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	t6, rax
	mov	r0, r4
	mov	r1, t2
	call	__bit_shl
	mov	r0, 32
	sub	r0, t2
	mov	r1, 31
	mov	r4, rax
	call	__bit_and
	mov	r0, t1
	mov	r1, rax
	call	__bit_shr
	sub	t3, t4
	mov	r0, rax
	mov	r1, t3
	call	__bit_and
	mov	r0, r4
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, t5
	call	__bit_and
	mov	r0, rax
	mov	r1, t6
	call	__bit_or
	mov	r4, rax
	mov	r0, r5
	mov	r1, t5
	call	__bit_and
	mov	r5, rax
	mov	r0, r4
	mov	r1, r7
	call	__bit_or
	mov	r7, rax
	mov	r0, r5
	mov	r1, r6
	call	__bit_or
	mov	r6, rax
.LBB30_35:
	mov	r0, r2
	add	r0, 16
	mov	r1, r2
	add	r1, 17
	mov	[r1], r7
	mov	[r0], r6
.LBB30_36:
	jnz	r3, .LBB30_38
	jmp	.LBB30_37
.LBB30_37:
	mov	r0, r2
	add	r0, 24
	add	r2, 25
	mov	[r2], 0
	mov	[r0], 0
.LBB30_38:
.LBB30_39:
	mov	x5, [rsp-6]
	mov	x4, [rsp-5]
	mov	x3, [rsp-4]
	mov	x2, [rsp-3]
	mov	x1, [rsp-2]
	mov	x0, [rsp-1]
	ret
// -- End function
// -- Begin function d2fixed_buffered
d2fixed_buffered:                       // @d2fixed_buffered
// %bb.0:
	call	d2fixed_buffered_n
	add	rax, r3
	mov	[rax], 0
	ret
// -- End function
// -- Begin function d2fixed
d2fixed:                                // @d2fixed
// %bb.0:
	mov	r3, r0
	mov	r0, 2000
	call	malloc
	mov	r4, rax
	mov	r0, r3
	mov	r3, r4
	call	d2fixed_buffered_n
	add	rax, r4
	mov	[rax], 0
	mov	rax, r4
	ret
// -- End function
// -- Begin function d2exp_buffered_n
d2exp_buffered_n:                       // @d2exp_buffered_n
// %bb.0:                               // %memcpy.exit
	mov	[rsp-1], x0
	mov	[rsp-2], x1
	mov	[rsp-3], x2
	mov	[rsp-4], x3
	mov	[rsp-5], x4
	mov	[rsp-6], x5
	mov	[rsp-7], x6
	mov	[rsp-8], x7
	mov	[rsp-9], x8
	mov	[rsp-10], x9
	mov	[rsp-11], x10
	mov	[rsp-12], x11
	mov	[rsp-13], x12
	mov	[rsp-14], x13
	mov	[rsp-15], x14
	mov	[rsp-16], x15
	mov	r6, r1
	mov	r1, 1048575
	mov	r4, r3
	mov	t1, r0
	mov	r0, r6
	call	__bit_and
	mov	r1, 20
	mov	t2, rax
	call	__bit_shr
	mov	r1, 2047
	mov	r3, 2047
	mov	r0, rax
	call	__bit_and
	mov	r5, rax
	jne	r5, r3, .LBB33_6
	jmp	.LBB33_1
.LBB33_1:
	mov	r0, t1
	mov	r1, t2
	call	__bit_or
	jz	rax, .LBB33_3
	jmp	.LBB33_2
.LBB33_2:                               // %memcpy.exit63.loopexit162
	mov	r0, r4
	add	r0, 1
	mov	[r4], 110
	add	r4, 2
	mov	[r0], 0
	mov	[r4], 0
	mov	r3, 3
	jmp	.LBB33_182
.LBB33_3:
	mov	r0, -1
	mov	r3, 8
	jg	r6, r0, .LBB33_5
	jmp	.LBB33_4
.LBB33_4:
	mov	[r4], 45
	mov	r3, 9
.LBB33_5:                               // %memcpy.exit63.loopexit
	mov	r1, 29
	mov	r0, r6
	call	__bit_shr
	mov	r1, 4
	mov	r0, rax
	call	__bit_and
	div	rax, 4
	add	r4, rax
	mov	r0, r4
	add	r0, 1
	mov	[r4], 73
	mov	r1, r4
	add	r1, 2
	mov	[r0], 0
	mov	r0, r4
	add	r0, 3
	mov	[r1], 0
	mov	r1, r4
	add	r1, 4
	mov	[r0], 0
	mov	r0, r4
	add	r0, 5
	mov	[r1], 110
	mov	r1, r4
	add	r1, 6
	mov	[r0], 0
	add	r4, 7
	mov	[r1], 0
	mov	[r4], 0
	jmp	.LBB33_182
.LBB33_6:
	mov	r0, t1
	mov	r1, t2
	call	__bit_or
	jnz	rax, .LBB33_26
	jmp	.LBB33_7
.LBB33_7:
	jnz	r5, .LBB33_26
	jmp	.LBB33_8
.LBB33_8:
	mov	r1, -1
	mov	r0, 0
	jg	r6, r1, .LBB33_10
	jmp	.LBB33_9
.LBB33_9:
	mov	[r4], 45
	mov	r0, 1
.LBB33_10:
	mov	r3, r0
	add	r3, 1
	mov	r1, r4
	add	r1, r0
	mov	[r1], 48
	jz	r2, .LBB33_25
	jmp	.LBB33_11
.LBB33_11:
	mov	r1, 2
	call	__bit_or
	mov	r7, rax
	add	r3, r4
	mov	r5, r4
	add	r5, r7
	mov	r1, 3
	mov	[r3], 46
	mov	r0, r5
	call	__bit_and
	jz	rax, .LBB33_14
	jmp	.LBB33_12
.LBB33_12:                              // %.preheader5.i.preheader
	mov	r0, r2
.LBB33_13:                              // %.preheader5.i
                                        // =>This Inner Loop Header: Depth=1
	add	r0, -1
	mov	[r5], 48
	add	r5, 1
	jz	r0, .LBB33_24
	jmp	.LBB33_13
.LBB33_14:
	mov	r1, -2147483648
	mov	r0, r2
	call	__bit_xor
	mov	r1, -2147483644
	jl	rax, r1, .LBB33_22
	jmp	.LBB33_15
.LBB33_15:
	mov	r1, -2147483648
	mov	r0, r2
	call	__bit_xor
	mov	r1, -2147483632
	jl	rax, r1, .LBB33_17
	jmp	.LBB33_16
.LBB33_16:                              // %.preheader.i.preheader
	mov	r3, -2147483633
	mov	r6, r5
	mov	r0, r2
	jmp	.LBB33_19
.LBB33_17:                              // %.preheader359
	mov	r3, -2147483645
	mov	r1, -2147483648
	jmp	.LBB33_20
.LBB33_18:
	mov	r1, 3
	jg	r0, r1, .LBB33_17
	jmp	.LBB33_21
.LBB33_19:                              // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	[r6], 808464432
	mov	r5, r6
	add	r5, 16
	mov	[r5], 808464432
	mov	r1, r6
	add	r1, 32
	mov	[r1], 808464432
	mov	r1, r6
	add	r1, 48
	mov	[r1], 808464432
	add	r0, -16
	mov	r1, -2147483648
	add	r6, 64
	call	__bit_xor
	jg	rax, r3, .LBB33_19
	jmp	.LBB33_18
.LBB33_20:                              // =>This Inner Loop Header: Depth=1
	mov	[r5], 808464432
	add	r0, -4
	add	r5, 4
	call	__bit_xor
	jg	rax, r3, .LBB33_20
	jmp	.LBB33_21
.LBB33_21:                              // %.loopexit4.i
	jz	r0, .LBB33_24
	jmp	.LBB33_22
.LBB33_22:                              // %.loopexit4.i.thread.preheader
.LBB33_23:                              // %.loopexit4.i.thread
                                        // =>This Inner Loop Header: Depth=1
	add	r0, -1
	mov	[r5], 48
	add	r5, 1
	jnz	r0, .LBB33_23
	jmp	.LBB33_24
.LBB33_24:                              // %memset.exit
	add	r7, r2
	mov	r3, r7
.LBB33_25:                              // %memcpy.exit65
	add	r4, r3
	mov	r0, r4
	add	r0, 1
	mov	[r4], 101
	mov	r1, r4
	add	r1, 2
	mov	[r0], 0
	add	r4, 3
	mov	[r1], 0
	mov	[r4], 0
	add	r3, 4
	jmp	.LBB33_182
.LBB33_26:
	mov	r1, 1048576
	mov	r0, t2
	call	__bit_or
	jz	r5, .LBB33_28
	jmp	.LBB33_27
.LBB33_27:
	mov	t2, rax
.LBB33_28:
	mov	t3, -1074
	jz	r5, .LBB33_30
	jmp	.LBB33_29
.LBB33_29:
	add	r5, -1075
	mov	t3, r5
.LBB33_30:
	mov	x4, 0
	mov	r0, -1
	mov	r5, 0
	jg	r6, r0, .LBB33_32
	jmp	.LBB33_31
.LBB33_31:
	mov	[r4], 45
	mov	r5, 1
.LBB33_32:
	mov	[rsp-25], r2
	add	r2, 1
	mov	[rsp-23], r2
	mov	r0, -52
	mov	r1, r4
	add	r1, -4
	mov	[rsp-26], r1
	mov	[rsp-27], t3
	jl	t3, r0, .LBB33_70
	jmp	.LBB33_33
.LBB33_33:
	mov	r1, -2147483648
	mov	r2, -2147483648
	mov	r0, t3
	call	__bit_xor
	sub	r2, rax
	mov	r1, 31
	mov	r0, r2
	call	__bit_shr
	mov	r1, 1
	mov	r7, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r0, rax
	mov	r1, t3
	call	__bit_and
	mov	t7, rax
	mov	r0, t7
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
	mov	x0, rax
	mov	r3, t7
	sub	r3, t3
	add	r3, 128
	mov	r2, 0
	mov	t3, -1147483648
	mov	t4, 99999999
	mov	t5, 10000
	mov	x5, 100
	mov	x6, mcasm_static_de0ca07a3ba831a25dedc7210c66af9c
	mov	x7, 10
	mov	x8, 9999999
	mov	x9, 999999
	mov	x10, 99999
	mov	x11, 9999
	mov	x12, 999
	mov	x13, 99
	mov	r6, 0
.LBB33_34:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB33_58 Depth 2
	mov	x15, x0
	add	x0, -1
	mov	x14, r2
	mov	r0, t7
	mov	r1, x0
	mov	r2, rsp
	call	ryu_fill_pow10_split_exp
	mov	r0, t1
	mov	r1, t2
	call	ryu_mul_shift_mod1e9_exact
	mov	t6, rax
	jz	x14, .LBB33_42
	jmp	.LBB33_35
.LBB33_35:                              //   in Loop: Header=BB33_34 Depth=1
	mov	r2, x14
	add	r2, 9
	mov	r1, -2147483648
	mov	x1, 9
	mov	r0, [rsp-23]
	call	__bit_xor
	mov	x2, rax
	mov	r0, r2
	call	__bit_xor
	jg	rax, x2, .LBB33_67
	jmp	.LBB33_36
.LBB33_36:                              //   in Loop: Header=BB33_34 Depth=1
	mov	x1, r4
	add	x1, r5
	jz	t6, .LBB33_38
	jmp	.LBB33_37
.LBB33_37:                              // %memcpy.exit66
                                        //   in Loop: Header=BB33_34 Depth=1
	mov	x14, x1
	mov	r1, 10000
	add	x14, 7
	mov	r0, t6
	call	__udivsi3
	mov	x2, rax
	mov	r0, x2
	mul	r0, -10000
	add	r0, t6
	mov	r1, 100
	call	__udivsi3
	mov	x3, rax
	mov	t0, x3
	mul	t0, -100
	add	t0, r0
	mov	r1, 1
	mov	r0, t0
	call	__bit_shl
	mov	x4, rax
	add	x4, x6
	mov	r0, [x4]
	mov	r1, 255
	add	x4, 1
	call	__bit_and
	mov	[x14], rax
	mov	r0, [x4]
	mov	x4, x1
	add	x4, 8
	call	__bit_and
	mov	[x4], rax
	mov	x4, x1
	mov	r1, 1
	add	x4, 5
	mov	r0, x3
	call	__bit_shl
	mov	x3, rax
	add	x3, x6
	mov	r0, [x3]
	mov	r1, 255
	add	x3, 1
	call	__bit_and
	mov	[x4], rax
	mov	r0, [x3]
	mov	x3, x1
	add	x3, 6
	call	__bit_and
	mov	r1, 100000000
	mov	[x3], rax
	mov	r0, t6
	call	__udivsi3
	mov	t6, rax
	mov	r0, t6
	mul	r0, -10000
	add	r0, x2
	mov	r1, 100
	call	__udivsi3
	mov	x2, rax
	mov	t0, x2
	mul	t0, -100
	add	t0, r0
	mov	r1, 1
	mov	r0, t0
	call	__bit_shl
	mov	x3, rax
	add	x3, x6
	mov	r0, [x3]
	mov	x4, x1
	add	x4, 3
	mov	r1, 255
	add	x3, 1
	call	__bit_and
	mov	[x4], rax
	mov	r0, [x3]
	mov	x3, x1
	add	x3, 4
	call	__bit_and
	mov	r1, 1
	mov	[x3], rax
	mov	r0, x2
	call	__bit_shl
	mov	x2, rax
	add	x2, x6
	mov	r0, [x2]
	mov	x3, x1
	add	x3, 1
	mov	r1, 255
	add	x2, 1
	call	__bit_and
	mov	[x3], rax
	mov	r0, [x2]
	mov	x2, x1
	add	x2, 2
	call	__bit_and
	mov	[x2], rax
	add	t6, 48
	mov	[x1], t6
	jmp	.LBB33_41
.LBB33_38:                              //   in Loop: Header=BB33_34 Depth=1
	mov	r1, 3
	mov	r0, x1
	call	__bit_and
	jz	rax, .LBB33_40
	jmp	.LBB33_39
.LBB33_39:                              // %.preheader5.i70.preheader
                                        //   in Loop: Header=BB33_34 Depth=1
	mov	r0, x1
	add	r0, 1
	mov	[x1], 48
	mov	r1, x1
	add	r1, 2
	mov	[r0], 48
	mov	r0, x1
	add	r0, 3
	mov	[r1], 48
	mov	r1, x1
	add	r1, 4
	mov	[r0], 48
	mov	r0, x1
	add	r0, 5
	mov	[r1], 48
	mov	r1, x1
	add	r1, 6
	mov	[r0], 48
	mov	r0, x1
	add	r0, 7
	mov	[r1], 48
	add	x1, 8
	mov	[r0], 48
	mov	[x1], 48
	jmp	.LBB33_41
.LBB33_40:                              // %.preheader110.preheader
                                        //   in Loop: Header=BB33_34 Depth=1
	mov	r0, x1
	add	r0, 4
	mov	[x1], 808464432
	mov	[r0], 808464432
	add	x1, 8
	mov	[x1], 48
.LBB33_41:                              // %memset.exit72
                                        //   in Loop: Header=BB33_34 Depth=1
	add	r5, 9
	jmp	.LBB33_68
.LBB33_42:                              //   in Loop: Header=BB33_34 Depth=1
	mov	r2, 0
	jz	t6, .LBB33_68
	jmp	.LBB33_43
.LBB33_43:                              //   in Loop: Header=BB33_34 Depth=1
	mov	r1, -2147483648
	mov	r0, t6
	call	__bit_xor
	jl	rax, t3, .LBB33_45
	jmp	.LBB33_44
.LBB33_44:
	call	abort
.LBB33_45:                              //   in Loop: Header=BB33_34 Depth=1
	mov	x1, 9
	jg	t6, t4, .LBB33_54
	jmp	.LBB33_46
.LBB33_46:                              //   in Loop: Header=BB33_34 Depth=1
	mov	x1, 8
	jg	t6, x8, .LBB33_54
	jmp	.LBB33_47
.LBB33_47:                              //   in Loop: Header=BB33_34 Depth=1
	mov	x1, 7
	jg	t6, x9, .LBB33_54
	jmp	.LBB33_48
.LBB33_48:                              //   in Loop: Header=BB33_34 Depth=1
	mov	x1, 6
	jg	t6, x10, .LBB33_54
	jmp	.LBB33_49
.LBB33_49:                              //   in Loop: Header=BB33_34 Depth=1
	mov	x1, 5
	jg	t6, x11, .LBB33_54
	jmp	.LBB33_50
.LBB33_50:                              //   in Loop: Header=BB33_34 Depth=1
	mov	x1, 4
	jg	t6, x12, .LBB33_54
	jmp	.LBB33_51
.LBB33_51:                              //   in Loop: Header=BB33_34 Depth=1
	mov	x1, 3
	jg	t6, x13, .LBB33_54
	jmp	.LBB33_52
.LBB33_52:                              //   in Loop: Header=BB33_34 Depth=1
	mov	x1, 2
	mov	r0, 9
	jg	t6, r0, .LBB33_54
	jmp	.LBB33_53
.LBB33_53:                              //   in Loop: Header=BB33_34 Depth=1
	mov	x1, 1
.LBB33_54:                              //   in Loop: Header=BB33_34 Depth=1
	mov	r6, x0
	mul	r6, 9
	add	r6, x1
	add	r6, -1
	mov	r0, [rsp-23]
	call	__bit_xor
	mov	r2, rax
	mov	r0, x1
	call	__bit_xor
	jg	rax, r2, .LBB33_67
	jmp	.LBB33_55
.LBB33_55:                              //   in Loop: Header=BB33_34 Depth=1
	mov	r0, [rsp-25]
	jz	r0, .LBB33_65
	jmp	.LBB33_56
.LBB33_56:                              //   in Loop: Header=BB33_34 Depth=1
	mov	x14, 0
	jl	t6, t5, .LBB33_59
	jmp	.LBB33_57
.LBB33_57:                              //   in Loop: Header=BB33_34 Depth=1
	mov	r1, 2
	mov	r0, x1
	call	__bit_shl
	mov	x2, rax
	mov	r0, r5
	call	__bit_shl
	mov	r2, rax
	add	r2, x2
	mov	r0, [rsp-26]
	add	r2, r0
.LBB33_58:                              // %memcpy.exit73
                                        //   Parent Loop BB33_34 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 10000
	mov	x2, t6
	mov	r0, x2
	call	__udivsi3
	mov	t6, rax
	mov	r0, t6
	mul	r0, -10000
	add	r0, x2
	mov	r1, 100
	call	__udivsi3
	mov	x3, rax
	mov	t0, x3
	mul	t0, -100
	add	t0, r0
	mov	r1, 1
	mov	r0, t0
	call	__bit_shl
	mov	x4, rax
	add	x4, x6
	mov	r0, [x4]
	mov	r1, 255
	add	x4, 1
	call	__bit_and
	mov	[r2], rax
	mov	r0, [x4]
	mov	x4, r2
	add	x4, 4
	call	__bit_and
	mov	r1, 1
	mov	[x4], rax
	mov	r0, x3
	call	__bit_shl
	mov	x3, rax
	add	x3, x6
	mov	r0, [x3]
	mov	x4, r2
	add	x4, -8
	mov	r1, 255
	add	x3, 1
	call	__bit_and
	mov	[x4], rax
	mov	r0, [x3]
	mov	x3, r2
	add	x3, -4
	call	__bit_and
	mov	[x3], rax
	add	x14, 4
	add	r2, -16
	jg	x2, t4, .LBB33_58
	jmp	.LBB33_59
.LBB33_59:                              // %.loopexit109
                                        //   in Loop: Header=BB33_34 Depth=1
	mov	x2, r4
	add	x2, r5
	jl	t6, x5, .LBB33_61
	jmp	.LBB33_60
.LBB33_60:                              // %memcpy.exit75.loopexit
                                        //   in Loop: Header=BB33_34 Depth=1
	mov	r1, 65532
	mov	r0, t6
	call	__bit_and
	mov	r1, 2
	mov	r0, rax
	call	__bit_shr
	mul	rax, 5243
	mov	r1, 17
	mov	r0, rax
	call	__bit_shr
	mov	r2, rax
	mov	r0, r2
	mul	r0, -100
	mov	x3, x2
	add	x3, x1
	sub	x3, x14
	add	r0, t6
	mov	x4, x3
	mov	r1, 3
	add	x4, -1
	call	__bit_shl
	mov	r1, 262136
	mov	r0, rax
	call	__bit_and
	mov	t6, rax
	div	t6, 4
	add	t6, x6
	mov	r0, [t6]
	mov	r1, 255
	add	t6, 1
	call	__bit_and
	mov	[x4], rax
	mov	r0, [t6]
	call	__bit_and
	mov	[x3], rax
	mov	t6, r2
.LBB33_61:                              // %memcpy.exit75
                                        //   in Loop: Header=BB33_34 Depth=1
	mov	x3, x2
	add	x3, 1
	jl	t6, x7, .LBB33_63
	jmp	.LBB33_62
.LBB33_62:                              //   in Loop: Header=BB33_34 Depth=1
	mov	r1, 1
	mov	r0, t6
	call	__bit_shl
	mov	r2, rax
	add	r2, x6
	mov	r0, r2
	add	r0, 1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r0, x2
	add	r0, 2
	mov	[r0], rax
	mov	[x3], 46
	mov	r0, [r2]
	jmp	.LBB33_64
.LBB33_63:                              //   in Loop: Header=BB33_34 Depth=1
	mov	r1, 48
	mov	[x3], 46
	mov	r0, t6
	call	__bit_or
	mov	r0, rax
.LBB33_64:                              //   in Loop: Header=BB33_34 Depth=1
	mov	r1, 255
	call	__bit_and
	mov	[x2], rax
	mov	r0, x1
	add	r0, 1
	jmp	.LBB33_66
.LBB33_65:                              //   in Loop: Header=BB33_34 Depth=1
	add	t6, 48
	mov	r2, r4
	mov	r1, 255
	add	r2, r5
	mov	r0, t6
	call	__bit_and
	mov	[r2], rax
	mov	r0, 1
.LBB33_66:                              //   in Loop: Header=BB33_34 Depth=1
	add	r5, r0
	mov	r2, x1
	jmp	.LBB33_68
.LBB33_67:
	mov	r2, x1
	jmp	.LBB33_113
.LBB33_68:                              //   in Loop: Header=BB33_34 Depth=1
	jg	x15, r7, .LBB33_34
	jmp	.LBB33_69
.LBB33_69:
	mov	t7, 0
	mov	r0, [rsp-27]
	mov	x4, 0
	jl	r0, t7, .LBB33_71
	jmp	.LBB33_112
.LBB33_70:
	mov	r0, t3
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
	mov	r2, rax
	mov	r0, 1
	sub	r0, r2
	mov	r1, 31
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	add	r2, -1
	add	rax, 1
	mov	r0, rax
	mov	r1, r2
	call	__bit_and
	mov	t7, rax
	mov	r6, 0
	mov	r2, 0
.LBB33_71:
	mov	x13, rsp
	mov	x6, rsp
	mov	t4, rsp
	mov	r7, rsp
	mov	t5, rsp
	mov	r1, rsp
	mov	r0, [rsp-27]
	sub	x4, r0
	add	x13, 5
	add	x6, 4
	add	t4, 3
	add	r7, 2
	add	t5, 1
	mov	t3, 200
	add	r1, 32
	mov	[rsp-24], r1
	mov	x14, r2
.LBB33_72:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB33_101 Depth 2
	mov	x0, t7
	mov	[x13], 0
	mov	[x6], 0
	mov	[t4], 0
	mov	[r7], 0
	mov	[t5], 0
	mov	[rsp], 0
	add	t7, 1
	jz	x0, .LBB33_74
	jmp	.LBB33_73
.LBB33_73:                              //   in Loop: Header=BB33_72 Depth=1
	mov	r0, x0
	mul	r0, 9
	jg	r0, x4, .LBB33_75
	jmp	.LBB33_74
.LBB33_74:                              //   in Loop: Header=BB33_72 Depth=1
	mov	t3, r7
	mov	r7, t4
	mov	t4, x6
	mov	x15, x4
	mov	r0, x4
	mov	r1, t7
	mov	r2, rsp
	call	ryu_fill_pow10_split_2_exp
	mov	t6, [t5]
	mov	x2, [rsp]
	mov	r1, 0
	mov	r3, 0
	mov	r0, t6
	mov	r2, t1
	call	__muldi3
	mov	x3, rax
	mov	x4, t0
	mov	r0, x2
	call	__muldi3
	mov	r1, 31
	mov	r2, t0
	mov	r0, r2
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r0, rax
	call	__bit_and
	mov	x1, rax
	add	x3, r2
	mov	r1, 31
	add	x1, x4
	mov	r0, x3
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r0, rax
	call	__bit_and
	mov	r1, 0
	mov	x3, rax
	mov	r0, x2
	mov	r2, t2
	call	__muldi3
	add	x3, t0
	add	x1, x3
	mov	r1, 31
	mov	r0, x1
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r0, rax
	call	__bit_and
	mov	r1, 0
	mov	x2, rax
	mov	r0, t6
	call	__muldi3
	mov	x4, rax
	mov	r2, t0
	mov	r1, 31
	add	x4, x1
	mov	r0, x3
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r0, rax
	call	__bit_and
	mov	x5, rax
	mov	r1, rsp
	add	x5, r2
	add	r1, 33
	mov	r0, [rsp-24]
	mov	r0, [r0]
	mov	t6, [r1]
	mov	r1, 0
	add	x5, x2
	mov	r2, t1
	call	__muldi3
	mov	x6, rax
	mov	x1, t0
	mov	r2, t2
	call	__muldi3
	mov	x7, rax
	mov	x8, t0
	mov	r0, t6
	mov	r2, t1
	call	__muldi3
	mov	x9, rax
	mov	x10, t0
	mov	r2, t2
	call	__muldi3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x1
	mov	r2, x9
	mov	r3, x10
	call	__adddi3
	mov	x1, t0
	mov	r0, rax
	mov	r2, x7
	mov	r3, x8
	call	__adddi3
	mov	x7, rax
	mov	t6, t0
	mov	r0, x6
	mov	r2, x4
	mov	r3, x5
	call	__adddi3
	mov	r2, 0
	mov	r1, t0
	mov	r0, rax
	mov	r3, x7
	call	__adddi3
	mov	r2, rax
	mov	r3, t0
	mov	r0, r3
	mov	r1, x5
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	sub	r3, x5
	mov	r1, 31
	mov	x5, rax
	mov	r0, r3
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	r2, x4
	mov	r1, 31
	mov	r3, rax
	mov	r0, r2
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	rax, r3
	add	x5, 1
	mov	r0, x5
	mov	r1, rax
	call	__bit_and
	add	r3, rax
	mov	r1, 1
	mov	r0, r3
	call	__bit_and
	mov	r0, rsp
	mov	r1, rsp
	add	r0, 64
	add	r1, 65
	mov	r0, [r0]
	mov	x5, [r1]
	mov	r1, 0
	mov	r3, 0
	mov	x4, rax
	mov	r2, t1
	call	__muldi3
	mov	x6, rax
	mov	x7, t0
	mov	r2, t2
	call	__muldi3
	mov	x8, rax
	mov	x9, t0
	mov	r0, x5
	mov	r2, t1
	call	__muldi3
	mov	x10, rax
	mov	x11, t0
	mov	r2, t2
	call	__muldi3
	mov	x5, rax
	mov	x12, t0
	mov	r0, x7
	mov	r2, x10
	mov	r3, x11
	call	__adddi3
	mov	x7, t0
	mov	r0, rax
	mov	r2, x8
	mov	r3, x9
	call	__adddi3
	mov	x8, rax
	mov	x9, t0
	mov	r0, x6
	mov	r2, x2
	mov	r3, x3
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x1
	call	__adddi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, t6
	call	__adddi3
	mov	r2, 0
	mov	x1, rax
	mov	t6, t0
	mov	r0, x1
	mov	r1, t6
	mov	r3, x8
	call	__adddi3
	mov	r1, 0
	mov	x2, t0
	mov	r0, x7
	mov	r2, x5
	mov	r3, x12
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x9
	call	__adddi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x4
	call	__adddi3
	mov	r1, -512
	mov	x3, rax
	mov	x4, t0
	mov	r0, x3
	call	__bit_and
	mov	r2, 0
	mov	r3, 1000000000
	mov	x5, rax
	mov	r1, x4
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
	mov	r1, t0
	mov	r0, rax
	call	__muldi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x3
	mov	r3, x4
	call	__adddi3
	mov	r1, -512
	mov	x3, rax
	mov	r0, x1
	call	__bit_and
	mov	r2, 1000000000
	mov	r3, 0
	mov	x4, rax
	mov	r0, x2
	mov	r1, x3
	call	__udivdi3
	mov	r2, -1000000000
	mov	r1, t0
	mov	r0, rax
	call	__muldi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x2
	mov	r3, x3
	call	__adddi3
	mov	r2, 1000000000
	mov	r3, 0
	mov	r0, x4
	mov	r1, rax
	call	__udivdi3
	mov	r2, -1000000000
	mov	r1, t0
	mov	r0, rax
	call	__muldi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x1
	mov	r3, t6
	call	__adddi3
	mov	t6, rax
	jz	x14, .LBB33_85
	jmp	.LBB33_76
.LBB33_75:                              //   in Loop: Header=BB33_72 Depth=1
	mov	r2, 0
	jz	x14, .LBB33_111
	jmp	.LBB33_77
.LBB33_76:                              //   in Loop: Header=BB33_72 Depth=1
	mov	r3, x14
	add	r3, 9
	mov	r1, -2147483648
	mov	r2, 9
	mov	r0, [rsp-23]
	call	__bit_xor
	mov	x0, rax
	mov	r0, r3
	call	__bit_xor
	mov	x4, x15
	mov	x6, t4
	mov	t4, r7
	mov	r7, t3
	mov	t3, 200
	jg	rax, x0, .LBB33_110
	jmp	.LBB33_79
.LBB33_77:                              //   in Loop: Header=BB33_72 Depth=1
	mov	r3, x14
	add	r3, 9
	mov	r2, 9
	mov	r1, -2147483648
	mov	t6, 0
	mov	r0, [rsp-23]
	call	__bit_xor
	mov	x0, rax
	mov	r0, r3
	call	__bit_xor
	jg	rax, x0, .LBB33_110
	jmp	.LBB33_78
.LBB33_78:                              //   in Loop: Header=BB33_72 Depth=1
	mov	r2, r4
	add	r2, r5
	jmp	.LBB33_81
.LBB33_79:                              //   in Loop: Header=BB33_72 Depth=1
	mov	r2, r4
	add	r2, r5
	jz	t6, .LBB33_81
	jmp	.LBB33_80
.LBB33_80:                              // %memcpy.exit76
                                        //   in Loop: Header=BB33_72 Depth=1
	mov	x3, r2
	mov	r1, 10000
	add	x3, 7
	mov	r0, t6
	call	__udivsi3
	mov	x0, rax
	mov	r0, x0
	mul	r0, -10000
	add	r0, t6
	mov	r1, 100
	call	__udivsi3
	mov	x1, rax
	mov	t0, x1
	mul	t0, -100
	add	t0, r0
	mov	r1, 1
	mov	r0, t0
	call	__bit_shl
	mov	x2, rax
	mov	x7, mcasm_static_de0ca07a3ba831a25dedc7210c66af9c
	add	x2, x7
	mov	r0, [x2]
	mov	r1, 255
	add	x2, 1
	call	__bit_and
	mov	[x3], rax
	mov	r0, [x2]
	mov	x2, r2
	add	x2, 8
	call	__bit_and
	mov	[x2], rax
	mov	x2, r2
	mov	r1, 1
	add	x2, 5
	mov	r0, x1
	call	__bit_shl
	mov	x1, rax
	add	x1, x7
	mov	r0, [x1]
	mov	r1, 255
	add	x1, 1
	call	__bit_and
	mov	[x2], rax
	mov	r0, [x1]
	mov	x1, r2
	add	x1, 6
	call	__bit_and
	mov	r1, 100000000
	mov	[x1], rax
	mov	r0, t6
	call	__udivsi3
	mov	t6, rax
	mov	r0, t6
	mul	r0, -10000
	add	r0, x0
	mov	r1, 100
	call	__udivsi3
	mov	x0, rax
	mov	t0, x0
	mul	t0, -100
	add	t0, r0
	mov	r1, 1
	mov	r0, t0
	call	__bit_shl
	mov	x1, rax
	add	x1, x7
	mov	r0, [x1]
	mov	x2, r2
	add	x2, 3
	mov	r1, 255
	add	x1, 1
	call	__bit_and
	mov	[x2], rax
	mov	r0, [x1]
	mov	x1, r2
	add	x1, 4
	call	__bit_and
	mov	r1, 1
	mov	[x1], rax
	mov	r0, x0
	call	__bit_shl
	mov	x0, rax
	add	x0, x7
	mov	r0, [x0]
	mov	x1, r2
	add	x1, 1
	mov	r1, 255
	add	x0, 1
	call	__bit_and
	mov	[x1], rax
	mov	r0, [x0]
	mov	x0, r2
	add	x0, 2
	call	__bit_and
	mov	[x0], rax
	add	t6, 48
	mov	[r2], t6
	jmp	.LBB33_84
.LBB33_81:                              //   in Loop: Header=BB33_72 Depth=1
	mov	r1, 3
	mov	r0, r2
	call	__bit_and
	mov	r0, r4
	add	r0, r5
	mov	t0, r0
	add	t0, 4
	mov	r1, r0
	add	r1, 8
	jz	rax, .LBB33_83
	jmp	.LBB33_82
.LBB33_82:                              // %.preheader5.i80.preheader
                                        //   in Loop: Header=BB33_72 Depth=1
	mov	t6, r0
	add	t6, 1
	mov	[r2], 48
	mov	r2, r0
	add	r2, 2
	mov	[t6], 48
	mov	t6, r0
	add	t6, 3
	mov	[r2], 48
	mov	[t6], 48
	mov	r2, r0
	add	r2, 5
	mov	[t0], 48
	mov	t0, r0
	add	t0, 6
	mov	[r2], 48
	add	r0, 7
	mov	[t0], 48
	mov	[r0], 48
	mov	[r1], 48
	jmp	.LBB33_84
.LBB33_83:                              // %.preheader104.preheader
                                        //   in Loop: Header=BB33_72 Depth=1
	mov	[r2], 808464432
	mov	[t0], 808464432
	mov	[r1], 48
.LBB33_84:                              // %memset.exit82
                                        //   in Loop: Header=BB33_72 Depth=1
	add	r5, 9
	mov	r2, r3
	jmp	.LBB33_111
.LBB33_85:                              //   in Loop: Header=BB33_72 Depth=1
	mov	r2, 0
	mov	x4, x15
	mov	x6, t4
	mov	t4, r7
	mov	r7, t3
	mov	t3, 200
	jz	t6, .LBB33_111
	jmp	.LBB33_86
.LBB33_86:                              //   in Loop: Header=BB33_72 Depth=1
	mov	r1, -2147483648
	mov	r0, t6
	call	__bit_xor
	mov	r0, -1147483648
	jl	rax, r0, .LBB33_88
	jmp	.LBB33_87
.LBB33_87:
	call	abort
.LBB33_88:                              //   in Loop: Header=BB33_72 Depth=1
	mov	r2, 9
	mov	r0, 99999999
	jg	t6, r0, .LBB33_97
	jmp	.LBB33_89
.LBB33_89:                              //   in Loop: Header=BB33_72 Depth=1
	mov	r2, 8
	mov	r0, 9999999
	jg	t6, r0, .LBB33_97
	jmp	.LBB33_90
.LBB33_90:                              //   in Loop: Header=BB33_72 Depth=1
	mov	r2, 7
	mov	r0, 999999
	jg	t6, r0, .LBB33_97
	jmp	.LBB33_91
.LBB33_91:                              //   in Loop: Header=BB33_72 Depth=1
	mov	r2, 6
	mov	r0, 99999
	jg	t6, r0, .LBB33_97
	jmp	.LBB33_92
.LBB33_92:                              //   in Loop: Header=BB33_72 Depth=1
	mov	r2, 5
	mov	r0, 9999
	jg	t6, r0, .LBB33_97
	jmp	.LBB33_93
.LBB33_93:                              //   in Loop: Header=BB33_72 Depth=1
	mov	r2, 4
	mov	r0, 999
	jg	t6, r0, .LBB33_97
	jmp	.LBB33_94
.LBB33_94:                              //   in Loop: Header=BB33_72 Depth=1
	mov	r2, 3
	mov	r0, 99
	jg	t6, r0, .LBB33_97
	jmp	.LBB33_95
.LBB33_95:                              //   in Loop: Header=BB33_72 Depth=1
	mov	r2, 2
	mov	r0, 9
	jg	t6, r0, .LBB33_97
	jmp	.LBB33_96
.LBB33_96:                              //   in Loop: Header=BB33_72 Depth=1
	mov	r2, 1
.LBB33_97:                              //   in Loop: Header=BB33_72 Depth=1
	mov	r0, x0
	call	__bit_not
	mov	r6, rax
	mul	r6, 9
	add	r6, r2
	add	r6, -1
	mov	r0, [rsp-23]
	call	__bit_xor
	mov	r3, rax
	mov	r0, r2
	call	__bit_xor
	jg	rax, r3, .LBB33_110
	jmp	.LBB33_98
.LBB33_98:                              //   in Loop: Header=BB33_72 Depth=1
	mov	r0, [rsp-25]
	jz	r0, .LBB33_108
	jmp	.LBB33_99
.LBB33_99:                              //   in Loop: Header=BB33_72 Depth=1
	mov	x3, 0
	mov	x7, 99999999
	mov	r0, 10000
	mov	x8, mcasm_static_de0ca07a3ba831a25dedc7210c66af9c
	jl	t6, r0, .LBB33_102
	jmp	.LBB33_100
.LBB33_100:                             //   in Loop: Header=BB33_72 Depth=1
	mov	r1, 2
	mov	r0, r2
	call	__bit_shl
	mov	x0, rax
	mov	r0, r5
	call	__bit_shl
	mov	r3, rax
	add	r3, x0
	mov	r0, [rsp-26]
	add	r3, r0
.LBB33_101:                             // %memcpy.exit83
                                        //   Parent Loop BB33_72 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 10000
	mov	x0, t6
	mov	r0, x0
	call	__udivsi3
	mov	t6, rax
	mov	r0, t6
	mul	r0, -10000
	add	r0, x0
	mov	r1, 100
	call	__udivsi3
	mov	x1, rax
	mov	t0, x1
	mul	t0, -100
	add	t0, r0
	mov	r1, 1
	mov	r0, t0
	call	__bit_shl
	mov	x2, rax
	add	x2, x8
	mov	r0, [x2]
	mov	r1, 255
	add	x2, 1
	call	__bit_and
	mov	[r3], rax
	mov	r0, [x2]
	mov	x2, r3
	add	x2, 4
	call	__bit_and
	mov	r1, 1
	mov	[x2], rax
	mov	r0, x1
	call	__bit_shl
	mov	x1, rax
	add	x1, x8
	mov	r0, [x1]
	mov	x2, r3
	add	x2, -8
	mov	r1, 255
	add	x1, 1
	call	__bit_and
	mov	[x2], rax
	mov	r0, [x1]
	mov	x1, r3
	add	x1, -4
	call	__bit_and
	mov	[x1], rax
	add	x3, 4
	add	r3, -16
	jg	x0, x7, .LBB33_101
	jmp	.LBB33_102
.LBB33_102:                             // %.loopexit107
                                        //   in Loop: Header=BB33_72 Depth=1
	mov	x0, r4
	add	x0, r5
	mov	r0, 100
	jl	t6, r0, .LBB33_104
	jmp	.LBB33_103
.LBB33_103:                             // %memcpy.exit85.loopexit
                                        //   in Loop: Header=BB33_72 Depth=1
	mov	r1, 65532
	mov	r0, t6
	call	__bit_and
	mov	r1, 2
	mov	r0, rax
	call	__bit_shr
	mul	rax, 5243
	mov	r1, 17
	mov	r0, rax
	call	__bit_shr
	mov	r3, rax
	mov	r0, r3
	mul	r0, -100
	mov	x1, x0
	add	x1, r2
	sub	x1, x3
	add	r0, t6
	mov	x2, x1
	mov	r1, 3
	add	x2, -1
	call	__bit_shl
	mov	r1, 262136
	mov	r0, rax
	call	__bit_and
	mov	t6, rax
	div	t6, 4
	add	t6, x8
	mov	r0, [t6]
	mov	r1, 255
	add	t6, 1
	call	__bit_and
	mov	[x2], rax
	mov	r0, [t6]
	call	__bit_and
	mov	[x1], rax
	mov	t6, r3
.LBB33_104:                             // %memcpy.exit85
                                        //   in Loop: Header=BB33_72 Depth=1
	mov	x1, x0
	add	x1, 1
	mov	r0, 10
	jl	t6, r0, .LBB33_106
	jmp	.LBB33_105
.LBB33_105:                             //   in Loop: Header=BB33_72 Depth=1
	mov	r1, 1
	mov	r0, t6
	call	__bit_shl
	mov	r3, rax
	add	r3, x8
	mov	r0, r3
	add	r0, 1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r0, x0
	add	r0, 2
	mov	[r0], rax
	mov	[x1], 46
	mov	r0, [r3]
	jmp	.LBB33_107
.LBB33_106:                             //   in Loop: Header=BB33_72 Depth=1
	mov	r1, 48
	mov	[x1], 46
	mov	r0, t6
	call	__bit_or
	mov	r0, rax
.LBB33_107:                             //   in Loop: Header=BB33_72 Depth=1
	mov	r1, 255
	call	__bit_and
	mov	[x0], rax
	mov	r0, r2
	add	r0, 1
	jmp	.LBB33_109
.LBB33_108:                             //   in Loop: Header=BB33_72 Depth=1
	add	x1, 48
	mov	r3, r4
	mov	r1, 255
	add	r3, r5
	mov	r0, x1
	call	__bit_and
	mov	[r3], rax
	mov	r0, 1
.LBB33_109:                             //   in Loop: Header=BB33_72 Depth=1
	add	r5, r0
	jmp	.LBB33_111
.LBB33_110:
	jmp	.LBB33_113
.LBB33_111:                             //   in Loop: Header=BB33_72 Depth=1
	mov	x14, r2
	jne	t7, t3, .LBB33_72
	jmp	.LBB33_112
.LBB33_112:                             // %.loopexit108
	mov	t5, [rsp-23]
	sub	t5, r2
	mov	r3, 0
	mov	x14, r2
	mov	t6, 0
	jmp	.LBB33_117
.LBB33_113:
	mov	t5, [rsp-23]
	sub	t5, x14
	mov	r3, 0
	mov	r0, t5
	call	__bit_xor
	mov	t7, rax
	mov	r0, r2
	call	__bit_xor
	jle	rax, t7, .LBB33_117
	jmp	.LBB33_114
.LBB33_114:
	mov	r3, [rsp-25]
	sub	r3, r2
	add	r3, 1
	mov	r1, 10
.LBB33_115:                             // =>This Inner Loop Header: Depth=1
	mov	r0, t6
	call	__udivsi3
	add	r3, 1
	mov	t6, rax
	jne	x14, r3, .LBB33_115
	jmp	.LBB33_116
.LBB33_116:
	mov	r3, t6
	mul	r3, -10
	add	r3, r0
	mov	r0, 5
	je	r3, r0, .LBB33_118
	jmp	.LBB33_117
.LBB33_117:
	mov	r1, -2147483648
	mov	r0, r3
	call	__bit_xor
	mov	r0, -2147483643
	sub	r0, rax
	mov	r1, 31
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_and
	mov	r2, rax
	jmp	.LBB33_132
.LBB33_118:
	mov	r0, [rsp-23]
	sub	r0, r6
	mov	r7, r0
	mov	r1, [rsp-27]
	add	r1, r0
	mov	r3, 0
	sub	r3, r1
	mov	t4, 1
	jl	r3, t4, .LBB33_123
	jmp	.LBB33_119
.LBB33_119:
	mov	r0, 59
	mov	r2, 1
	jg	r3, r0, .LBB33_132
	jmp	.LBB33_120
.LBB33_120:
	mov	r0, t1
	mov	r1, t2
	call	__bit_or
	jnz	rax, .LBB33_122
	jmp	.LBB33_121
.LBB33_121:
	call	abort
.LBB33_122:
	mov	r1, 31
	mov	r0, r3
	call	__bit_and
	mov	r2, rax
	mov	r1, 0
	sub	r1, r2
	mov	t4, 0
	mov	r0, r2
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	add	r3, -32
	mov	t7, rax
	mov	r0, r3
	call	__bit_shr
	mov	r0, -1
	mov	r3, rax
	mov	r1, r2
	call	__bit_shl
	mov	x0, 0
	sub	x0, r3
	mov	r3, rax
	mov	r0, x0
	call	__bit_not
	mov	r0, r3
	mov	r1, rax
	call	__bit_and
	mov	r0, 32
	sub	r0, r2
	mov	r1, 31
	mov	r2, rax
	call	__bit_and
	mov	r0, -1
	mov	r1, rax
	call	__bit_shr
	sub	t4, t7
	mov	r0, rax
	mov	r1, t4
	call	__bit_and
	mov	r0, r3
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x0
	call	__bit_and
	mov	r0, rax
	mov	r1, r2
	call	__bit_or
	mov	r2, rax
	mov	r0, r3
	mov	r1, x0
	call	__bit_and
	mov	r1, rax
	mov	r0, r2
	call	__bit_not
	mov	r2, rax
	mov	r0, r1
	call	__bit_not
	mov	r3, rax
	mov	r0, t2
	mov	r1, r2
	call	__bit_and
	mov	r2, rax
	mov	r0, t1
	mov	r1, r3
	call	__bit_and
	mov	r0, rax
	mov	r1, r2
	call	__bit_or
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	t4, rax
.LBB33_123:
	mov	r0, -1
	jg	r7, r0, .LBB33_130
	jmp	.LBB33_124
.LBB33_124:
	mov	r1, 1
	mov	r0, t4
	call	__bit_and
	jz	rax, .LBB33_130
	jmp	.LBB33_125
.LBB33_125:
	mov	r0, t1
	mov	r1, t2
	call	__bit_or
	jz	rax, .LBB33_127
	jmp	.LBB33_126
.LBB33_126:                             // %.preheader103.preheader
	mov	t4, 0
	sub	t4, r7
	mov	t3, -1
	jmp	.LBB33_128
.LBB33_127:
	call	abort
.LBB33_128:                             // %.preheader103
                                        // =>This Inner Loop Header: Depth=1
	mov	r2, -858993459
	mov	r3, -858993460
	mov	r0, t1
	mov	r1, t2
	call	__muldi3
	mov	r1, 858993459
	mov	t1, rax
	mov	t2, t0
	mov	r0, t2
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	mov	r0, t2
	add	r0, -858993459
	mov	r1, 31
	mov	r2, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, t1
	add	r0, -858993460
	mov	r1, 31
	mov	r3, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	rax, r3
	add	r2, 1
	mov	r0, r2
	mov	r1, rax
	call	__bit_and
	add	rax, r3
	add	t3, 1
	jnz	rax, .LBB33_128
	jmp	.LBB33_129
.LBB33_129:
	mov	r1, -2147483648
	mov	r2, 1
	mov	r0, t4
	call	__bit_xor
	mov	r3, rax
	mov	r0, t3
	call	__bit_xor
	jge	rax, r3, .LBB33_131
	jmp	.LBB33_132
.LBB33_130:
	mov	r1, -2147483648
	mov	r0, r7
	call	__bit_xor
	mov	r1, 2147483647
	mov	r0, rax
	call	__bit_xor
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r2, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	mov	r1, t4
	call	__bit_and
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB33_132
	jmp	.LBB33_131
.LBB33_131:
	mov	r2, 2
.LBB33_132:
	jz	x14, .LBB33_153
	jmp	.LBB33_133
.LBB33_133:
	mov	r7, r4
	add	r7, r5
	jnz	t6, .LBB33_148
	jmp	.LBB33_134
.LBB33_134:
	mov	r1, 3
	mov	r0, r7
	call	__bit_and
	jz	rax, .LBB33_138
	jmp	.LBB33_135
.LBB33_135:
	mov	r3, 0
	jz	t5, .LBB33_164
	jmp	.LBB33_136
.LBB33_136:                             // %.preheader5.i86.preheader
	mov	r0, t5
.LBB33_137:                             // %.preheader5.i86
                                        // =>This Inner Loop Header: Depth=1
	add	r0, -1
	mov	[r7], 48
	add	r7, 1
	mov	r3, t5
	jz	r0, .LBB33_164
	jmp	.LBB33_137
.LBB33_138:
	mov	r1, -2147483648
	mov	r0, t5
	call	__bit_xor
	mov	r1, -2147483644
	jl	rax, r1, .LBB33_145
	jmp	.LBB33_139
.LBB33_139:
	mov	r1, -2147483648
	mov	r0, t5
	call	__bit_xor
	mov	r1, -2147483632
	jl	rax, r1, .LBB33_141
	jmp	.LBB33_140
.LBB33_140:                             // %.preheader.i88.preheader
	mov	r3, -2147483633
	mov	t1, r7
	mov	r0, t5
	jmp	.LBB33_143
.LBB33_141:                             // %.preheader375
	mov	r3, -2147483645
	mov	r1, -2147483648
	jmp	.LBB33_144
.LBB33_142:
	mov	r1, 3
	jg	r0, r1, .LBB33_141
	jmp	.LBB33_145
.LBB33_143:                             // %.preheader.i88
                                        // =>This Inner Loop Header: Depth=1
	mov	[t1], 808464432
	mov	r7, t1
	add	r7, 16
	mov	[r7], 808464432
	mov	r1, t1
	add	r1, 32
	mov	[r1], 808464432
	mov	r1, t1
	add	r1, 48
	mov	[r1], 808464432
	add	r0, -16
	mov	r1, -2147483648
	add	t1, 64
	call	__bit_xor
	jg	rax, r3, .LBB33_143
	jmp	.LBB33_142
.LBB33_144:                             // =>This Inner Loop Header: Depth=1
	mov	[r7], 808464432
	add	r0, -4
	add	r7, 4
	call	__bit_xor
	jg	rax, r3, .LBB33_144
	jmp	.LBB33_145
.LBB33_145:                             // %.loopexit4.i87
	mov	r3, t5
	jz	r0, .LBB33_164
	jmp	.LBB33_146
.LBB33_146:                             // %.preheader100.preheader
.LBB33_147:                             // %.preheader100
                                        // =>This Inner Loop Header: Depth=1
	add	r0, -1
	mov	[r7], 48
	add	r7, 1
	mov	r3, t5
	jz	r0, .LBB33_164
	jmp	.LBB33_147
.LBB33_148:
	mov	r3, t5
	add	r3, -1
	mov	t1, 0
	jz	r3, .LBB33_151
	jmp	.LBB33_149
.LBB33_149:
	mov	r1, 2
	mov	r0, t5
	call	__bit_shl
	mov	t1, rax
	mov	r0, r5
	call	__bit_shl
	add	t1, rax
	mov	r0, t1
	call	__bit_shl
	mov	t2, rax
	add	t2, -16
	div	t2, 4
	add	t2, r4
	mov	t1, 0
	mov	t4, mcasm_static_de0ca07a3ba831a25dedc7210c66af9c
	mov	r0, t6
.LBB33_150:                             // %memcpy.exit90
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 100
	call	__udivsi3
	mov	t6, rax
	mov	r1, t6
	mul	r1, -100
	add	r0, r1
	mov	r1, 1
	call	__bit_shl
	mov	t3, rax
	add	t3, t4
	mov	r0, [t3]
	mov	t7, t2
	add	t7, -4
	mov	r1, 255
	add	t3, 1
	call	__bit_and
	mov	[t7], rax
	mov	r0, [t3]
	call	__bit_and
	mov	[t2], rax
	add	t1, 2
	mov	r1, -2147483648
	add	t2, -8
	mov	r0, r3
	call	__bit_xor
	mov	t3, rax
	mov	r0, t1
	call	__bit_xor
	mov	r0, t6
	jl	rax, t3, .LBB33_150
	jmp	.LBB33_151
.LBB33_151:                             // %.loopexit102
	mov	r1, -2147483648
	mov	r0, t5
	call	__bit_xor
	mov	t2, rax
	mov	r0, t1
	call	__bit_xor
	mov	r3, t5
	jge	rax, t2, .LBB33_164
	jmp	.LBB33_152
.LBB33_152:
	mov	r1, 10
	mov	r0, t6
	call	__umodsi3
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	r1, rax
	mov	r0, t1
	call	__bit_not
	add	r7, t5
	add	r7, rax
	mov	[r7], r1
	mov	r3, t5
	jmp	.LBB33_164
.LBB33_153:
	mov	r0, [rsp-25]
	jz	r0, .LBB33_163
	jmp	.LBB33_154
.LBB33_154:
	mov	r1, -2147483648
	mov	t3, 0
	mov	r0, t6
	call	__bit_xor
	mov	r0, -2147473648
	jl	rax, r0, .LBB33_157
	jmp	.LBB33_155
.LBB33_155:
	mov	r1, 2
	mov	r0, t5
	call	__bit_shl
	mov	r3, rax
	mov	r0, r5
	call	__bit_shl
	add	r3, rax
	mov	r0, r3
	call	__bit_shl
	mov	r3, rax
	add	r3, -16
	div	r3, 4
	add	r3, r4
	mov	t4, mcasm_static_de0ca07a3ba831a25dedc7210c66af9c
	mov	t7, -2047483649
	mov	r7, t6
.LBB33_156:                             // %memcpy.exit91
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 10000
	mov	r0, r7
	call	__udivsi3
	mov	t6, rax
	mov	r0, t6
	mul	r0, -10000
	add	r0, r7
	mov	r1, 100
	call	__udivsi3
	mov	t1, rax
	mov	t0, t1
	mul	t0, -100
	add	t0, r0
	mov	r1, 1
	mov	r0, t0
	call	__bit_shl
	mov	t2, rax
	add	t2, t4
	mov	r0, [t2]
	mov	r1, 255
	add	t2, 1
	call	__bit_and
	mov	[r3], rax
	mov	r0, [t2]
	mov	t2, r3
	add	t2, 4
	call	__bit_and
	mov	r1, 1
	mov	[t2], rax
	mov	r0, t1
	call	__bit_shl
	mov	t1, rax
	add	t1, t4
	mov	r0, [t1]
	mov	t2, r3
	add	t2, -8
	mov	r1, 255
	add	t1, 1
	call	__bit_and
	mov	[t2], rax
	mov	r0, [t1]
	mov	t1, r3
	add	t1, -4
	call	__bit_and
	mov	[t1], rax
	add	t3, 4
	mov	r1, -2147483648
	add	r3, -16
	mov	r0, r7
	call	__bit_xor
	mov	r7, t6
	jg	rax, t7, .LBB33_156
	jmp	.LBB33_157
.LBB33_157:                             // %.loopexit99
	mov	r7, r4
	mov	r0, 100
	add	r7, r5
	jl	t6, r0, .LBB33_159
	jmp	.LBB33_158
.LBB33_158:                             // %memcpy.exit93.loopexit
	mov	r1, 65532
	mov	r0, t6
	call	__bit_and
	mov	r1, 2
	mov	r0, rax
	call	__bit_shr
	mul	rax, 5243
	mov	r1, 17
	mov	r0, rax
	call	__bit_shr
	mov	r3, rax
	mov	r0, r3
	mul	r0, -100
	mov	t1, r7
	add	t1, t5
	sub	t1, t3
	add	r0, t6
	mov	t2, t1
	mov	r1, 3
	add	t2, -1
	call	__bit_shl
	mov	r1, 262136
	mov	r0, rax
	call	__bit_and
	div	rax, 4
	mov	t3, mcasm_static_de0ca07a3ba831a25dedc7210c66af9c
	add	t3, rax
	mov	r0, [t3]
	mov	r1, 255
	add	t3, 1
	call	__bit_and
	mov	[t2], rax
	mov	r0, [t3]
	call	__bit_and
	mov	[t1], rax
	mov	t6, r3
.LBB33_159:                             // %memcpy.exit93
	mov	r0, 10
	jl	t6, r0, .LBB33_161
	jmp	.LBB33_160
.LBB33_160:
	mov	r1, 1
	mov	r0, t6
	call	__bit_shl
	mov	r3, mcasm_static_de0ca07a3ba831a25dedc7210c66af9c
	add	r3, rax
	mov	r0, r3
	add	r0, 1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r0, r7
	add	r0, 2
	mov	[r0], rax
	mov	r0, r7
	add	r0, 1
	mov	[r0], 46
	mov	r0, [r3]
	jmp	.LBB33_162
.LBB33_161:
	mov	r0, r7
	add	r0, 1
	mov	r1, 48
	mov	[r0], 46
	mov	r0, t6
	call	__bit_or
	mov	r0, rax
.LBB33_162:
	mov	r1, 255
	call	__bit_and
	add	t5, 1
	mov	[r7], rax
	mov	r3, t5
	jmp	.LBB33_164
.LBB33_163:
	add	t6, 48
	mov	r3, r4
	mov	r1, 255
	add	r3, r5
	mov	r0, t6
	call	__bit_and
	mov	[r3], rax
	mov	r3, 1
.LBB33_164:                             // %memset.exit89
	add	r3, r5
	jz	r2, .LBB33_177
	jmp	.LBB33_165
.LBB33_165:
	mov	t1, 0
	jz	r3, .LBB33_171
	jmp	.LBB33_166
.LBB33_166:                             // %.preheader.preheader
	mov	r1, 2
	mov	r0, r3
	call	__bit_shl
	mov	r0, rax
	call	__bit_shl
	mov	r5, rax
	add	r5, -16
	div	r5, 4
	add	r5, r4
	mov	t3, 46
	mov	t4, 57
	mov	t2, r3
	mov	r1, 255
.LBB33_167:                             // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r7, [r5]
	mov	r0, r7
	call	__bit_and
	je	rax, t3, .LBB33_176
	jmp	.LBB33_168
.LBB33_168:                             // %.preheader
                                        //   in Loop: Header=BB33_167 Depth=1
	je	rax, t4, .LBB33_172
	jmp	.LBB33_169
.LBB33_169:                             // %.preheader
	mov	r0, 45
	jne	rax, r0, .LBB33_173
	jmp	.LBB33_170
.LBB33_170:                             // %.preheader..loopexit.loopexit_crit_edge
	mov	t1, t2
.LBB33_171:                             // %.loopexit
	add	t1, r4
	mov	[t1], 49
	add	r6, 1
	jmp	.LBB33_177
.LBB33_172:                             //   in Loop: Header=BB33_167 Depth=1
	mov	[r5], 48
	mov	r2, 1
	jmp	.LBB33_176
.LBB33_173:
	mov	r1, 1
	mov	r0, r7
	call	__bit_and
	mov	r0, 2
	jne	r2, r0, .LBB33_175
	jmp	.LBB33_174
.LBB33_174:
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB33_177
	jmp	.LBB33_175
.LBB33_175:
	add	r7, 1
	mov	r1, 255
	mov	r0, r7
	call	__bit_and
	mov	[r5], rax
	jmp	.LBB33_177
.LBB33_176:                             //   in Loop: Header=BB33_167 Depth=1
	add	t2, -1
	add	r5, -4
	jz	t2, .LBB33_171
	jmp	.LBB33_167
.LBB33_177:
	mov	r5, r4
	add	r5, r3
	mov	r1, -2147483648
	mov	[r5], 101
	mov	r0, r6
	call	__bit_xor
	add	rax, -2147483648
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
	mov	r0, -1
	add	rax, 43
	jg	r6, r0, .LBB33_179
	jmp	.LBB33_178
.LBB33_178:
	mov	r0, 0
	sub	r0, r6
	mov	r6, r0
.LBB33_179:
	mov	r2, r5
	mov	r1, 255
	add	r2, 1
	mov	r0, rax
	call	__bit_and
	mov	[r2], rax
	mov	r7, r3
	mov	r0, 100
	add	r7, 2
	jl	r6, r0, .LBB33_181
	jmp	.LBB33_180
.LBB33_180:                             // %memcpy.exit94
	mov	r1, 10
	mov	r0, r6
	call	__udivsi3
	mov	r2, rax
	mov	r1, 1
	add	r4, r7
	mov	r0, r2
	call	__bit_shl
	mov	r7, mcasm_static_de0ca07a3ba831a25dedc7210c66af9c
	add	r7, rax
	mov	r0, [r7]
	mov	r1, 255
	add	r7, 1
	call	__bit_and
	mov	[r4], rax
	mov	r0, [r7]
	add	r4, 1
	call	__bit_and
	mul	r2, 246
	add	r2, r6
	mov	r1, 48
	mov	[r4], rax
	mov	r0, r2
	call	__bit_or
	mov	r1, 255
	add	r5, 4
	mov	r0, rax
	call	__bit_and
	mov	[r5], rax
	add	r3, 5
	jmp	.LBB33_182
.LBB33_181:                             // %memcpy.exit95
	mov	r1, 1
	add	r4, r7
	mov	r0, r6
	call	__bit_shl
	mov	r2, mcasm_static_de0ca07a3ba831a25dedc7210c66af9c
	add	r2, rax
	mov	r0, [r2]
	mov	r1, 255
	add	r2, 1
	call	__bit_and
	mov	[r4], rax
	mov	r0, [r2]
	add	r4, 1
	call	__bit_and
	mov	[r4], rax
	add	r3, 4
.LBB33_182:                             // %memcpy.exit63
	mov	rax, r3
	mov	x15, [rsp-16]
	mov	x14, [rsp-15]
	mov	x13, [rsp-14]
	mov	x12, [rsp-13]
	mov	x11, [rsp-12]
	mov	x10, [rsp-11]
	mov	x9, [rsp-10]
	mov	x8, [rsp-9]
	mov	x7, [rsp-8]
	mov	x6, [rsp-7]
	mov	x5, [rsp-6]
	mov	x4, [rsp-5]
	mov	x3, [rsp-4]
	mov	x2, [rsp-3]
	mov	x1, [rsp-2]
	mov	x0, [rsp-1]
	ret
// -- End function
// -- Begin function d2exp_buffered
d2exp_buffered:                         // @d2exp_buffered
// %bb.0:
	call	d2exp_buffered_n
	add	rax, r3
	mov	[rax], 0
	ret
// -- End function
// -- Begin function d2exp
d2exp:                                  // @d2exp
// %bb.0:
	mov	r3, r0
	mov	r0, 2000
	call	malloc
	mov	r4, rax
	mov	r0, r3
	mov	r3, r4
	call	d2exp_buffered_n
	add	rax, r4
	mov	[rax], 0
	mov	rax, r4
	ret
// -- End function
// -- Begin function strtol
strtol:                                 // @strtol
// %bb.0:
	mov	r3, r1
	mov	r1, -2147483648
	mov	r5, r2
	mov	r2, r0
	mov	r0, r5
	call	__bit_xor
	mov	r0, -2147483612
	jg	rax, r0, .LBB36_3
	jmp	.LBB36_1
.LBB36_1:
	mov	r0, 1
	je	r5, r0, .LBB36_3
	jmp	.LBB36_2
.LBB36_2:                               // %.preheader6.preheader
	mov	t1, r2
	add	t1, 4
	mov	r6, -2147483643
	mov	t2, 32
	jmp	.LBB36_5
.LBB36_3:
	mov	r0, mcasm_static_5c63489e54ec887af4b4f111740ffb34
	mov	[r0], 22
	mov	r7, 0
	jz	r3, .LBB36_40
	jmp	.LBB36_4
.LBB36_4:
	mov	[r3], r2
	jmp	.LBB36_40
.LBB36_5:                               // %.preheader6
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, t1
	add	r0, -4
	mov	r7, [r0]
	mov	r1, 255
	mov	r0, r7
	call	__bit_and
	mov	r4, rax
	mov	r0, r4
	add	r0, -9
	mov	r1, -2147483648
	call	__bit_xor
	jl	rax, r6, .LBB36_9
	jmp	.LBB36_6
.LBB36_6:                               // %.preheader6
                                        //   in Loop: Header=BB36_5 Depth=1
	je	r4, t2, .LBB36_9
	jmp	.LBB36_7
.LBB36_7:                               // %.preheader6
	mov	r0, 43
	je	r4, r0, .LBB36_11
	jmp	.LBB36_8
.LBB36_8:                               // %.preheader6
	mov	r0, 45
	je	r4, r0, .LBB36_10
	jmp	.LBB36_13
.LBB36_9:                               // %.preheader6.backedge
                                        //   in Loop: Header=BB36_5 Depth=1
	add	t1, 4
	jmp	.LBB36_5
.LBB36_10:                              // %.loopexit8.loopexit
	mov	r4, 1
	jmp	.LBB36_12
.LBB36_11:                              // %.loopexit8.loopexit1
	mov	r4, 0
.LBB36_12:                              // %.loopexit8
	mov	r7, [t1]
	add	t1, 4
	jmp	.LBB36_14
.LBB36_13:                              // %.loopexit7.loopexit
	mov	r4, 0
.LBB36_14:                              // %.loopexit7
	mov	r1, 255
	mov	r0, r7
	call	__bit_and
	mov	r0, 48
	jne	rax, r0, .LBB36_20
	jmp	.LBB36_15
.LBB36_15:
	mov	r6, [t1]
	mov	r1, 47
	mov	r0, r5
	call	__bit_and
	mov	r1, 223
	mov	r7, rax
	mov	r0, r6
	call	__bit_and
	jnz	r7, .LBB36_18
	jmp	.LBB36_16
.LBB36_16:
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r0, 88
	jne	rax, r0, .LBB36_18
	jmp	.LBB36_17
.LBB36_17:
	mov	r0, t1
	add	r0, 1
	mov	r7, [r0]
	mov	t4, t1
	add	t4, 2
	mov	r6, 16
	mov	r2, t1
	jmp	.LBB36_22
.LBB36_18:
	mov	r6, 8
	mov	r7, 48
	mov	t4, t1
	jz	r5, .LBB36_22
	jmp	.LBB36_19
.LBB36_19:
	mov	t4, t1
	mov	r6, r5
	jmp	.LBB36_22
.LBB36_20:
	mov	r6, 10
	mov	t4, t1
	jz	r5, .LBB36_22
	jmp	.LBB36_21
.LBB36_21:
	mov	t4, t1
	mov	r6, r5
.LBB36_22:
	mov	r5, r4
	add	r5, 2147483647
	mov	r0, r5
	mov	r1, r6
	call	__udivsi3
	mov	r1, 255
	mov	t1, rax
	mov	r0, r7
	call	__bit_and
	mov	r7, rax
	mov	r0, r7
	add	r0, -1
	mov	r1, 32
	call	__bit_or
	mov	t2, rax
	mov	r1, -2147483648
	add	t2, -38
	mov	r0, r7
	call	__bit_xor
	mov	r0, -2147483591
	jg	rax, r0, .LBB36_24
	jmp	.LBB36_23
.LBB36_23:
	mov	t2, r7
.LBB36_24:
	add	t2, -48
	mov	r7, 0
	mov	r0, r6
	call	__bit_xor
	mov	t3, rax
	mov	r0, t2
	call	__bit_xor
	jge	rax, t3, .LBB36_34
	jmp	.LBB36_25
.LBB36_25:                              // %.preheader.preheader
	mov	r0, t1
	mul	r0, r6
	mov	t3, r5
	sub	t3, r0
	add	t4, -4
	mov	t5, -2147483591
	mov	r2, t4
.LBB36_26:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, -2147483648
	mov	r0, t1
	call	__bit_xor
	mov	t4, rax
	mov	r0, r7
	call	__bit_xor
	jg	rax, t4, .LBB36_29
	jmp	.LBB36_27
.LBB36_27:                              //   in Loop: Header=BB36_26 Depth=1
	mov	r0, t3
	call	__bit_xor
	mov	t4, rax
	mov	r0, t2
	call	__bit_xor
	jle	rax, t4, .LBB36_30
	jmp	.LBB36_28
.LBB36_28:                              //   in Loop: Header=BB36_26 Depth=1
	jne	r7, t1, .LBB36_30
	jmp	.LBB36_29
.LBB36_29:                              //   in Loop: Header=BB36_26 Depth=1
	mov	r1, 2
	mov	r0, r4
	call	__bit_or
	mov	r4, rax
	jmp	.LBB36_31
.LBB36_30:                              //   in Loop: Header=BB36_26 Depth=1
	mul	r7, r6
	add	r7, t2
.LBB36_31:                              //   in Loop: Header=BB36_26 Depth=1
	mov	r0, r2
	add	r0, 16
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	t4, rax
	mov	r0, t4
	add	r0, -1
	mov	r1, 32
	call	__bit_or
	mov	t2, rax
	mov	r1, -2147483648
	add	t2, -38
	mov	r0, t4
	call	__bit_xor
	jg	rax, t5, .LBB36_33
	jmp	.LBB36_32
.LBB36_32:                              //   in Loop: Header=BB36_26 Depth=1
	mov	t2, t4
.LBB36_33:                              //   in Loop: Header=BB36_26 Depth=1
	add	t2, -48
	add	r2, 4
	mov	r0, r6
	call	__bit_xor
	mov	t4, rax
	mov	r0, t2
	call	__bit_xor
	jl	rax, t4, .LBB36_26
	jmp	.LBB36_34
.LBB36_34:                              // %.loopexit
	jz	r3, .LBB36_36
	jmp	.LBB36_35
.LBB36_35:
	mov	[r3], r2
.LBB36_36:
	mov	r1, 255
	mov	r0, r4
	call	__bit_and
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB36_38
	jmp	.LBB36_37
.LBB36_37:
	mov	r1, 0
	sub	r1, r7
	mov	r7, r1
.LBB36_38:
	mov	r1, 2
	call	__bit_and
	jz	rax, .LBB36_40
	jmp	.LBB36_39
.LBB36_39:
	mov	r0, mcasm_static_5c63489e54ec887af4b4f111740ffb34
	mov	[r0], 34
	mov	r7, r5
.LBB36_40:
	mov	rax, r7
	ret
// -- End function
// -- Begin function strtoul
strtoul:                                // @strtoul
// %bb.0:
	mov	r3, r1
	mov	r1, -2147483648
	mov	r6, r2
	mov	r2, r0
	mov	r0, r6
	call	__bit_xor
	mov	r0, -2147483612
	jg	rax, r0, .LBB37_3
	jmp	.LBB37_1
.LBB37_1:
	mov	r0, 1
	je	r6, r0, .LBB37_3
	jmp	.LBB37_2
.LBB37_2:                               // %.preheader6.preheader
	mov	t1, r2
	add	t1, 4
	mov	r5, -2147483643
	mov	r7, 32
	jmp	.LBB37_5
.LBB37_3:
	mov	r0, mcasm_static_5c63489e54ec887af4b4f111740ffb34
	mov	[r0], 22
	mov	r6, 0
	jz	r3, .LBB37_40
	jmp	.LBB37_4
.LBB37_4:
	mov	[r3], r2
	jmp	.LBB37_40
.LBB37_5:                               // %.preheader6
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, t1
	add	r0, -4
	mov	t2, [r0]
	mov	r1, 255
	mov	r0, t2
	call	__bit_and
	mov	r4, rax
	mov	r0, r4
	add	r0, -9
	mov	r1, -2147483648
	call	__bit_xor
	jl	rax, r5, .LBB37_9
	jmp	.LBB37_6
.LBB37_6:                               // %.preheader6
                                        //   in Loop: Header=BB37_5 Depth=1
	je	r4, r7, .LBB37_9
	jmp	.LBB37_7
.LBB37_7:                               // %.preheader6
	mov	r0, 43
	je	r4, r0, .LBB37_11
	jmp	.LBB37_8
.LBB37_8:                               // %.preheader6
	mov	r0, 45
	je	r4, r0, .LBB37_10
	jmp	.LBB37_13
.LBB37_9:                               // %.preheader6.backedge
                                        //   in Loop: Header=BB37_5 Depth=1
	add	t1, 4
	jmp	.LBB37_5
.LBB37_10:                              // %.loopexit8.loopexit
	mov	r4, 1
	jmp	.LBB37_12
.LBB37_11:                              // %.loopexit8.loopexit1
	mov	r4, 0
.LBB37_12:                              // %.loopexit8
	mov	t2, [t1]
	add	t1, 4
	jmp	.LBB37_14
.LBB37_13:                              // %.loopexit7.loopexit
	mov	r4, 0
.LBB37_14:                              // %.loopexit7
	mov	r1, 255
	mov	r0, t2
	call	__bit_and
	mov	r0, 48
	jne	rax, r0, .LBB37_20
	jmp	.LBB37_15
.LBB37_15:
	mov	r5, [t1]
	mov	r1, 47
	mov	r0, r6
	call	__bit_and
	mov	r1, 223
	mov	r7, rax
	mov	r0, r5
	call	__bit_and
	jnz	r7, .LBB37_18
	jmp	.LBB37_16
.LBB37_16:
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r0, 88
	jne	rax, r0, .LBB37_18
	jmp	.LBB37_17
.LBB37_17:
	mov	r0, t1
	add	r0, 1
	mov	t2, [r0]
	mov	t5, t1
	add	t5, 2
	mov	r5, 16
	mov	r2, t1
	jmp	.LBB37_22
.LBB37_18:
	mov	t2, 48
	mov	r5, 8
	mov	t5, t1
	jz	r6, .LBB37_22
	jmp	.LBB37_19
.LBB37_19:
	mov	t5, t1
	mov	r5, r6
	jmp	.LBB37_22
.LBB37_20:
	mov	r5, 10
	mov	t5, t1
	jz	r6, .LBB37_22
	jmp	.LBB37_21
.LBB37_21:
	mov	t5, t1
	mov	r5, r6
.LBB37_22:
	mov	r0, -1
	mov	r1, r5
	call	__udivsi3
	mov	r7, rax
	mov	r0, r7
	mul	r0, r5
	call	__bit_not
	mov	r1, 255
	mov	t1, rax
	mov	r0, t2
	call	__bit_and
	mov	r6, rax
	mov	r0, r6
	add	r0, -1
	mov	r1, 32
	call	__bit_or
	mov	t2, rax
	mov	r1, -2147483648
	add	t2, -38
	mov	r0, r6
	call	__bit_xor
	mov	r0, -2147483591
	jg	rax, r0, .LBB37_24
	jmp	.LBB37_23
.LBB37_23:
	mov	t2, r6
.LBB37_24:
	add	t2, -48
	mov	r6, 0
	mov	r0, r5
	call	__bit_xor
	mov	t3, rax
	mov	r0, t2
	call	__bit_xor
	jge	rax, t3, .LBB37_34
	jmp	.LBB37_25
.LBB37_25:                              // %.preheader.preheader
	add	t5, -4
	mov	t4, -2147483591
	mov	r2, t5
.LBB37_26:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, -2147483648
	mov	r0, r7
	call	__bit_xor
	mov	t3, rax
	mov	r0, r6
	call	__bit_xor
	jg	rax, t3, .LBB37_29
	jmp	.LBB37_27
.LBB37_27:                              //   in Loop: Header=BB37_26 Depth=1
	mov	r0, t1
	call	__bit_xor
	mov	t3, rax
	mov	r0, t2
	call	__bit_xor
	jle	rax, t3, .LBB37_30
	jmp	.LBB37_28
.LBB37_28:                              //   in Loop: Header=BB37_26 Depth=1
	jne	r6, r7, .LBB37_30
	jmp	.LBB37_29
.LBB37_29:                              //   in Loop: Header=BB37_26 Depth=1
	mov	r1, 2
	mov	r0, r4
	call	__bit_or
	mov	r4, rax
	jmp	.LBB37_31
.LBB37_30:                              //   in Loop: Header=BB37_26 Depth=1
	mul	r6, r5
	add	r6, t2
.LBB37_31:                              //   in Loop: Header=BB37_26 Depth=1
	mov	r0, r2
	add	r0, 16
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	t3, rax
	mov	r0, t3
	add	r0, -1
	mov	r1, 32
	call	__bit_or
	mov	t2, rax
	mov	r1, -2147483648
	add	t2, -38
	mov	r0, t3
	call	__bit_xor
	jg	rax, t4, .LBB37_33
	jmp	.LBB37_32
.LBB37_32:                              //   in Loop: Header=BB37_26 Depth=1
	mov	t2, t3
.LBB37_33:                              //   in Loop: Header=BB37_26 Depth=1
	add	t2, -48
	add	r2, 4
	mov	r0, r5
	call	__bit_xor
	mov	t3, rax
	mov	r0, t2
	call	__bit_xor
	jl	rax, t3, .LBB37_26
	jmp	.LBB37_34
.LBB37_34:                              // %.loopexit
	jz	r3, .LBB37_36
	jmp	.LBB37_35
.LBB37_35:
	mov	[r3], r2
.LBB37_36:
	mov	r1, 255
	mov	r0, r4
	call	__bit_and
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB37_38
	jmp	.LBB37_37
.LBB37_37:
	mov	r1, 0
	sub	r1, r6
	mov	r6, r1
.LBB37_38:
	mov	r1, 2
	call	__bit_and
	jz	rax, .LBB37_40
	jmp	.LBB37_39
.LBB37_39:
	mov	r0, mcasm_static_5c63489e54ec887af4b4f111740ffb34
	mov	[r0], 34
	mov	r6, -1
.LBB37_40:
	mov	rax, r6
	ret
// -- End function
// -- Begin function bcmp
bcmp:                                   // @bcmp
// %bb.0:
	mov	r3, r1
	mov	r1, -2147483648
	mov	r4, r0
	mov	r0, r2
	call	__bit_xor
	mov	r0, -2147483644
	jl	rax, r0, .LBB38_5
	jmp	.LBB38_1
.LBB38_1:
	mov	r0, r3
	mov	r1, r4
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB38_6
	jmp	.LBB38_2
.LBB38_2:                               // %.preheader.i.preheader
	mov	r5, -2147483645
.LBB38_3:                               // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [r4]
	mov	r1, [r3]
	jne	r0, r1, .LBB38_6
	jmp	.LBB38_4
.LBB38_4:                               //   in Loop: Header=BB38_3 Depth=1
	add	r4, 4
	add	r2, -4
	mov	r1, -2147483648
	add	r3, 4
	mov	r0, r2
	call	__bit_xor
	jg	rax, r5, .LBB38_3
	jmp	.LBB38_5
.LBB38_5:                               // %.loopexit8.i
	mov	rax, 0
	jz	r2, .LBB38_10
	jmp	.LBB38_6
.LBB38_6:                               // %.loopexit7.i.preheader
.LBB38_7:                               // %.loopexit7.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r5, [r4]
	mov	r1, 255
	mov	r0, r5
	call	__bit_and
	mov	r0, [r3]
	mov	r6, rax
	call	__bit_and
	je	r6, rax, .LBB38_9
	jmp	.LBB38_8
.LBB38_8:
	call	__bit_and
	mov	r2, rax
	mov	r0, r5
	call	__bit_and
	sub	rax, r2
	jmp	.LBB38_10
.LBB38_9:                               //   in Loop: Header=BB38_7 Depth=1
	add	r2, -1
	add	r4, 1
	add	r3, 1
	mov	rax, 0
	jnz	r2, .LBB38_7
	jmp	.LBB38_10
.LBB38_10:                              // %memcmp.exit
	ret
// -- End function
// -- Begin function bcopy
bcopy:                                  // @bcopy
// %bb.0:
	mov	r3, r1
	mov	r1, -2147483648
	mov	r4, r0
	mov	r0, r3
	call	__bit_xor
	mov	r5, rax
	mov	r0, r4
	call	__bit_xor
	jge	rax, r5, .LBB39_9
	jmp	.LBB39_1
.LBB39_1:
	mov	r5, r4
	add	r5, r2
	mov	r0, r5
	call	__bit_xor
	mov	r6, rax
	mov	r0, r3
	call	__bit_xor
	jge	rax, r6, .LBB39_9
	jmp	.LBB39_2
.LBB39_2:
	add	r3, r2
	mov	r0, r2
	call	__bit_xor
	mov	r0, -2147483644
	jl	rax, r0, .LBB39_6
	jmp	.LBB39_3
.LBB39_3:
	mov	r0, r5
	mov	r1, r3
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB39_7
	jmp	.LBB39_4
.LBB39_4:                               // %.preheader.i.preheader
	mov	r4, -2147483645
	mov	r1, r5
	mov	r0, r3
.LBB39_5:                               // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	add	r5, -4
	add	r1, -16
	mov	r6, [r1]
	add	r3, -4
	add	r0, -16
	add	r2, -4
	mov	r1, -2147483648
	mov	[r0], r6
	mov	r0, r2
	call	__bit_xor
	mov	r1, r5
	mov	r0, r3
	jg	rax, r4, .LBB39_5
	jmp	.LBB39_6
.LBB39_6:                               // %.loopexit9.i
	jz	r2, .LBB39_20
	jmp	.LBB39_7
.LBB39_7:                               // %.preheader
	add	r5, -4
	add	r3, -4
	mov	r1, 255
.LBB39_8:                               // =>This Inner Loop Header: Depth=1
	mov	r0, [r5]
	add	r2, -1
	call	__bit_and
	mov	[r3], rax
	add	r5, -4
	add	r3, -4
	jz	r2, .LBB39_20
	jmp	.LBB39_8
.LBB39_9:
	mov	r0, r2
	call	__bit_xor
	mov	r0, -2147483644
	jl	rax, r0, .LBB39_17
	jmp	.LBB39_10
.LBB39_10:
	mov	r0, r3
	mov	r1, r4
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB39_18
	jmp	.LBB39_11
.LBB39_11:
	mov	r1, -2147483648
	mov	r0, r2
	call	__bit_xor
	mov	r0, -2147483632
	jl	rax, r0, .LBB39_13
	jmp	.LBB39_12
.LBB39_12:                              // %.preheader12.i.preheader
	mov	r5, -2147483633
	mov	r6, r4
	mov	r7, r3
	jmp	.LBB39_15
.LBB39_13:                              // %.preheader54
	mov	r5, -2147483645
	jmp	.LBB39_16
.LBB39_14:
	mov	r0, 3
	jg	r2, r0, .LBB39_13
	jmp	.LBB39_17
.LBB39_15:                              // %.preheader12.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [r6]
	mov	[r7], r0
	mov	r4, r6
	add	r4, 16
	mov	r0, [r4]
	mov	r3, r7
	add	r3, 16
	mov	[r3], r0
	mov	r0, r6
	add	r0, 32
	mov	r0, [r0]
	mov	r1, r7
	add	r1, 32
	mov	[r1], r0
	mov	r0, r6
	add	r0, 48
	mov	r0, [r0]
	mov	r1, r7
	add	r1, 48
	mov	[r1], r0
	add	r2, -16
	add	r6, 64
	mov	r1, -2147483648
	add	r7, 64
	mov	r0, r2
	call	__bit_xor
	jg	rax, r5, .LBB39_15
	jmp	.LBB39_14
.LBB39_16:                              // =>This Inner Loop Header: Depth=1
	mov	r0, [r4]
	add	r4, 4
	mov	[r3], r0
	add	r2, -4
	add	r3, 4
	mov	r0, r2
	call	__bit_xor
	jg	rax, r5, .LBB39_16
	jmp	.LBB39_17
.LBB39_17:                              // %.loopexit11.i
	jz	r2, .LBB39_20
	jmp	.LBB39_18
.LBB39_18:                              // %.preheader49
	mov	r1, 255
.LBB39_19:                              // =>This Inner Loop Header: Depth=1
	mov	r0, [r4]
	add	r2, -1
	add	r4, 1
	call	__bit_and
	mov	[r3], rax
	add	r3, 1
	jnz	r2, .LBB39_19
	jmp	.LBB39_20
.LBB39_20:                              // %memmove.exit
	ret
// -- End function
// -- Begin function bzero
bzero:                                  // @bzero
// %bb.0:
	mov	r2, r1
	mov	r1, 3
	mov	r3, r0
	call	__bit_and
	jz	rax, .LBB40_4
	jmp	.LBB40_1
.LBB40_1:
	jz	r2, .LBB40_14
	jmp	.LBB40_2
.LBB40_2:                               // %.preheader5.i.preheader
.LBB40_3:                               // %.preheader5.i
                                        // =>This Inner Loop Header: Depth=1
	add	r2, -1
	mov	[r3], 0
	add	r3, 1
	jz	r2, .LBB40_14
	jmp	.LBB40_3
.LBB40_4:
	mov	r1, -2147483648
	mov	r0, r2
	call	__bit_xor
	mov	r0, -2147483644
	jl	rax, r0, .LBB40_11
	jmp	.LBB40_5
.LBB40_5:
	mov	r0, r2
	call	__bit_xor
	mov	r0, -2147483632
	jl	rax, r0, .LBB40_7
	jmp	.LBB40_6
.LBB40_6:                               // %.preheader.i.preheader
	mov	r4, -2147483633
	mov	r5, r3
	jmp	.LBB40_9
.LBB40_7:                               // %.preheader20
	mov	r4, -2147483645
	mov	r1, -2147483648
	jmp	.LBB40_10
.LBB40_8:
	mov	r0, 3
	jg	r2, r0, .LBB40_7
	jmp	.LBB40_11
.LBB40_9:                               // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	[r5], 0
	mov	r3, r5
	add	r3, 16
	mov	[r3], 0
	mov	r0, r5
	add	r0, 32
	mov	[r0], 0
	mov	r0, r5
	add	r0, 48
	mov	[r0], 0
	add	r2, -16
	add	r5, 64
	mov	r0, r2
	call	__bit_xor
	jg	rax, r4, .LBB40_9
	jmp	.LBB40_8
.LBB40_10:                              // =>This Inner Loop Header: Depth=1
	mov	[r3], 0
	add	r2, -4
	add	r3, 4
	mov	r0, r2
	call	__bit_xor
	jg	rax, r4, .LBB40_10
	jmp	.LBB40_11
.LBB40_11:                              // %.loopexit4.i
	jz	r2, .LBB40_14
	jmp	.LBB40_12
.LBB40_12:                              // %.preheader.preheader
.LBB40_13:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	add	r2, -1
	mov	[r3], 0
	add	r3, 1
	jnz	r2, .LBB40_13
	jmp	.LBB40_14
.LBB40_14:                              // %memset.exit
	ret
// -- End function
// -- Begin function index
index:                                  // @index
// %bb.0:
	mov	r3, r1
	mov	r1, 255
	mov	r2, r0
	mov	r0, r3
	call	__bit_and
	mov	r1, 3
	mov	r4, rax
	mov	r0, r2
	call	__bit_and
	jz	r4, .LBB41_4
	jmp	.LBB41_1
.LBB41_1:
	jz	rax, .LBB41_11
	jmp	.LBB41_2
.LBB41_2:
	mov	r5, [r2]
	mov	r1, 255
	mov	r0, r5
	call	__bit_and
	mov	r4, 0
	jz	rax, .LBB41_21
	jmp	.LBB41_3
.LBB41_3:                               // %.lr.ph.i.preheader
	jmp	.LBB41_13
.LBB41_4:
	jz	rax, .LBB41_6
	jmp	.LBB41_5
.LBB41_5:                               // %.preheader3.i.preheader
	add	r2, -4
	mov	r4, r2
	mov	r1, 255
	jmp	.LBB41_7
.LBB41_6:                               // %.preheader2.i.preheader
	mov	r4, r2
	add	r4, -80
	mov	r3, -2139062144
	jmp	.LBB41_8
.LBB41_7:                               // %.preheader3.i
                                        // =>This Inner Loop Header: Depth=1
	add	r4, 4
	mov	r0, [r4]
	call	__bit_and
	jz	rax, .LBB41_21
	jmp	.LBB41_7
.LBB41_8:                               // %.preheader2.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, [r2]
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	add	r2, 4
	add	r4, 64
	je	rax, r3, .LBB41_8
	jmp	.LBB41_9
.LBB41_9:                               // %.preheader.i.preheader
	mov	r1, 255
.LBB41_10:                              // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	add	r4, 4
	mov	r0, [r4]
	call	__bit_and
	jz	rax, .LBB41_21
	jmp	.LBB41_10
.LBB41_11:
	mov	r5, [r2]
	mov	r0, 16843008
	sub	r0, r5
	mov	r1, r5
	call	__bit_or
	mov	r1, -2139062144
	mov	r6, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, r6, .LBB41_17
	jmp	.LBB41_12
.LBB41_12:                              // %.preheader5.i.preheader
	mul	r4, 16843009
	jmp	.LBB41_15
.LBB41_13:                              // %.lr.ph.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 255
	mov	r0, r3
	call	__bit_and
	mov	r6, rax
	mov	r0, r5
	call	__bit_and
	mov	r4, r2
	je	rax, r6, .LBB41_21
	jmp	.LBB41_14
.LBB41_14:                              //   in Loop: Header=BB41_13 Depth=1
	mov	r4, r2
	add	r2, 4
	mov	r5, [r2]
	add	r4, 1
	mov	r0, r5
	call	__bit_and
	mov	r2, r4
	mov	r4, 0
	jz	rax, .LBB41_21
	jmp	.LBB41_13
.LBB41_15:                              // %.preheader5.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r5
	mov	r1, r4
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, rax
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, r6, .LBB41_17
	jmp	.LBB41_16
.LBB41_16:                              //   in Loop: Header=BB41_15 Depth=1
	mov	r7, r2
	add	r2, 16
	mov	r5, [r2]
	mov	r0, 16843008
	sub	r0, r5
	add	r7, 4
	mov	r1, r5
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	mov	r2, r7
	je	rax, r6, .LBB41_15
	jmp	.LBB41_17
.LBB41_17:                              // %.loopexit6.i
	add	r2, -4
.LBB41_18:                              // =>This Inner Loop Header: Depth=1
	add	r2, 4
	mov	r4, [r2]
	mov	r1, 255
	mov	r0, r4
	call	__bit_and
	jz	rax, .LBB41_20
	jmp	.LBB41_19
.LBB41_19:                              //   in Loop: Header=BB41_18 Depth=1
	mov	r0, r3
	call	__bit_and
	mov	r5, rax
	mov	r0, r4
	call	__bit_and
	jne	rax, r5, .LBB41_18
	jmp	.LBB41_20
.LBB41_20:
	mov	r0, r4
	call	__bit_and
	mov	r4, rax
	mov	r0, r3
	call	__bit_and
	mov	r0, r4
	mov	r1, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r0, rax
	mov	r1, r2
	call	__bit_and
	mov	r4, rax
.LBB41_21:                              // %strchr.exit
	mov	rax, r4
	ret
// -- End function
// -- Begin function memccpy
memccpy:                                // @memccpy
// %bb.0:
	mov	r4, r1
	mov	r1, -2147483648
	mov	r5, r0
	mov	r0, r3
	call	__bit_xor
	mov	r0, -2147483644
	jl	rax, r0, .LBB42_5
	jmp	.LBB42_1
.LBB42_1:
	mov	r0, r4
	mov	r1, r5
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB42_5
	jmp	.LBB42_2
.LBB42_2:
	mov	r1, 255
	mov	r0, r2
	call	__bit_and
	mov	r6, rax
	mul	r6, 16843009
	mov	t1, -2139062144
	mov	t2, -2147483645
.LBB42_3:                               // =>This Inner Loop Header: Depth=1
	mov	r7, [r4]
	mov	r0, r7
	mov	r1, r6
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, rax
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, t1, .LBB42_5
	jmp	.LBB42_4
.LBB42_4:                               //   in Loop: Header=BB42_3 Depth=1
	add	r4, 4
	mov	[r5], r7
	add	r3, -4
	mov	r1, -2147483648
	add	r5, 4
	mov	r0, r3
	call	__bit_xor
	jg	rax, t2, .LBB42_3
	jmp	.LBB42_5
.LBB42_5:                               // %.loopexit
	add	r3, 1
.LBB42_6:                               // =>This Inner Loop Header: Depth=1
	add	r3, -1
	mov	rax, 0
	jz	r3, .LBB42_8
	jmp	.LBB42_7
.LBB42_7:                               //   in Loop: Header=BB42_6 Depth=1
	mov	r1, 255
	mov	r0, r2
	call	__bit_and
	mov	r0, [r4]
	mov	r6, rax
	add	r4, 1
	call	__bit_and
	mov	r0, rax
	mov	[r5], r0
	add	r5, 1
	mov	rax, r5
	jne	r0, r6, .LBB42_6
	jmp	.LBB42_8
.LBB42_8:
	ret
// -- End function
// -- Begin function memchr
memchr:                                 // @memchr
// %bb.0:
	mov	r3, r1
	mov	r1, 3
	mov	r4, r0
	call	__bit_and
	jz	rax, .LBB43_5
	jmp	.LBB43_1
.LBB43_1:
	mov	rax, 0
	jz	r2, .LBB43_13
	jmp	.LBB43_2
.LBB43_2:                               // %.preheader.preheader
.LBB43_3:                               // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 255
	mov	r0, r3
	call	__bit_and
	mov	r0, [r4]
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	mov	rax, r4
	je	r0, r5, .LBB43_13
	jmp	.LBB43_4
.LBB43_4:                               //   in Loop: Header=BB43_3 Depth=1
	add	r2, -1
	add	r4, 1
	mov	rax, 0
	jz	r2, .LBB43_13
	jmp	.LBB43_3
.LBB43_5:
	mov	r1, -2147483648
	mov	r0, r2
	call	__bit_xor
	mov	r0, -2147483644
	jl	rax, r0, .LBB43_9
	jmp	.LBB43_6
.LBB43_6:
	mov	r1, 255
	mov	r0, r3
	call	__bit_and
	mov	r5, rax
	mul	r5, 16843009
	mov	r6, -2139062144
	mov	r7, -2147483645
.LBB43_7:                               // =>This Inner Loop Header: Depth=1
	mov	r0, [r4]
	mov	r1, r5
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, rax
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, r6, .LBB43_10
	jmp	.LBB43_8
.LBB43_8:                               //   in Loop: Header=BB43_7 Depth=1
	add	r2, -4
	mov	r1, -2147483648
	add	r4, 4
	mov	r0, r2
	call	__bit_xor
	jg	rax, r7, .LBB43_7
	jmp	.LBB43_9
.LBB43_9:                               // %.loopexit7
	mov	rax, 0
	jz	r2, .LBB43_13
	jmp	.LBB43_10
.LBB43_10:                              // %.loopexit6
.LBB43_11:                              // =>This Inner Loop Header: Depth=1
	mov	r1, 255
	mov	r0, r3
	call	__bit_and
	mov	r0, [r4]
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	mov	rax, r4
	je	r0, r5, .LBB43_13
	jmp	.LBB43_12
.LBB43_12:                              //   in Loop: Header=BB43_11 Depth=1
	add	r2, -1
	add	r4, 1
	mov	rax, 0
	jnz	r2, .LBB43_11
	jmp	.LBB43_13
.LBB43_13:                              // %.loopexit
	ret
// -- End function
// -- Begin function memcmp
memcmp:                                 // @memcmp
// %bb.0:
	mov	r3, r1
	mov	r1, -2147483648
	mov	r4, r0
	mov	r0, r2
	call	__bit_xor
	mov	r0, -2147483644
	jl	rax, r0, .LBB44_5
	jmp	.LBB44_1
.LBB44_1:
	mov	r0, r3
	mov	r1, r4
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB44_6
	jmp	.LBB44_2
.LBB44_2:                               // %.preheader.preheader
	mov	r5, -2147483645
.LBB44_3:                               // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [r4]
	mov	r1, [r3]
	jne	r0, r1, .LBB44_6
	jmp	.LBB44_4
.LBB44_4:                               //   in Loop: Header=BB44_3 Depth=1
	add	r4, 4
	add	r2, -4
	mov	r1, -2147483648
	add	r3, 4
	mov	r0, r2
	call	__bit_xor
	jg	rax, r5, .LBB44_3
	jmp	.LBB44_5
.LBB44_5:                               // %.loopexit8
	mov	rax, 0
	jz	r2, .LBB44_10
	jmp	.LBB44_6
.LBB44_6:                               // %.loopexit7.preheader
.LBB44_7:                               // %.loopexit7
                                        // =>This Inner Loop Header: Depth=1
	mov	r5, [r4]
	mov	r1, 255
	mov	r0, r5
	call	__bit_and
	mov	r0, [r3]
	mov	r6, rax
	call	__bit_and
	je	r6, rax, .LBB44_9
	jmp	.LBB44_8
.LBB44_8:
	call	__bit_and
	mov	r2, rax
	mov	r0, r5
	call	__bit_and
	sub	rax, r2
	jmp	.LBB44_10
.LBB44_9:                               //   in Loop: Header=BB44_7 Depth=1
	add	r2, -1
	add	r4, 1
	add	r3, 1
	mov	rax, 0
	jnz	r2, .LBB44_7
	jmp	.LBB44_10
.LBB44_10:                              // %.loopexit
	ret
// -- End function
// -- Begin function memcpy
memcpy:                                 // @memcpy
// %bb.0:
	mov	r3, r1
	mov	r1, -2147483648
	mov	r5, r2
	mov	r2, r0
	mov	r0, r5
	call	__bit_xor
	mov	r0, -2147483632
	mov	t4, r2
	mov	r4, r5
	jl	rax, r0, .LBB45_13
	jmp	.LBB45_1
.LBB45_1:
	mov	r1, 3
	mov	r0, r2
	call	__bit_and
	mov	r4, rax
	mov	r6, 8
	sub	r6, r4
	mov	t4, r2
	mov	r1, 255
.LBB45_2:                               // =>This Inner Loop Header: Depth=1
	mov	r0, [r3]
	add	r6, -1
	add	r3, 1
	call	__bit_and
	mov	[t4], rax
	add	t4, 1
	jnz	r6, .LBB45_2
	jmp	.LBB45_3
.LBB45_3:
	mov	r1, -8
	mov	r0, r4
	call	__bit_or
	mov	r4, rax
	mov	r1, 3
	add	r4, r5
	mov	r0, r3
	call	__bit_and
	mov	r5, rax
	jnz	r5, .LBB45_10
	jmp	.LBB45_4
.LBB45_4:
	mov	r1, -2147483648
	mov	r0, r4
	call	__bit_xor
	mov	r0, -2147483632
	jl	rax, r0, .LBB45_6
	jmp	.LBB45_5
.LBB45_5:                               // %.preheader.preheader
	mov	r5, 0
	mov	r6, -2147483633
	mov	r7, t4
	mov	t1, r3
	jmp	.LBB45_8
.LBB45_6:                               // %.preheader59
	mov	r5, -2147483645
	jmp	.LBB45_9
.LBB45_7:
	add	t4, r5
	mov	r0, 3
	add	r3, r5
	jg	r4, r0, .LBB45_6
	jmp	.LBB45_13
.LBB45_8:                               // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r3
	add	r0, r5
	mov	r1, t4
	add	r1, r5
	mov	t0, t1
	mov	r0, [r0]
	add	t0, 4
	mov	t2, r7
	add	t2, 4
	mov	t0, [t0]
	mov	[r1], r0
	mov	r0, t1
	add	r0, 8
	mov	r1, r7
	add	r1, 8
	mov	[t2], t0
	mov	t0, t1
	mov	r0, [r0]
	add	t0, 12
	mov	t2, r7
	add	t2, 12
	mov	t0, [t0]
	mov	[r1], r0
	add	t1, 16
	add	r7, 16
	mov	[t2], t0
	add	r4, -16
	mov	r1, -2147483648
	add	r5, 64
	mov	r0, r4
	call	__bit_xor
	jg	rax, r6, .LBB45_8
	jmp	.LBB45_7
.LBB45_9:                               // =>This Inner Loop Header: Depth=1
	mov	r0, [r3]
	add	r3, 4
	mov	[t4], r0
	add	r4, -4
	add	t4, 4
	mov	r0, r4
	call	__bit_xor
	jg	rax, r5, .LBB45_9
	jmp	.LBB45_13
.LBB45_10:
	mov	r0, r5
	call	__bit_shl
	mov	r6, rax
	mov	r0, r3
	sub	r0, r5
	mov	t1, [r0]
	mov	r7, 8
	mov	r1, 4
	sub	r7, r5
	mov	r0, r5
	call	__bit_shl
	mov	t5, 0
	mov	t6, 0
	sub	t6, rax
	div	t6, 4
	add	t6, r3
.LBB45_11:                              // =>This Inner Loop Header: Depth=1
	mov	r0, t6
	add	r0, t5
	add	r0, 16
	mov	t2, [r0]
	mov	t7, t4
	mov	r1, 31
	add	t7, t5
	mov	r0, r6
	call	__bit_and
	mov	r0, t1
	mov	r1, rax
	call	__bit_shl
	mov	t1, rax
	mov	r0, r6
	call	__bit_not
	mov	r1, 31
	mov	r0, rax
	call	__bit_and
	mov	r1, 1
	mov	t3, rax
	mov	r0, t2
	call	__bit_shr
	mov	r0, rax
	mov	r1, t3
	call	__bit_shr
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	[t7], rax
	add	r4, -4
	mov	r1, -2147483648
	add	t5, 16
	mov	r0, r7
	call	__bit_xor
	mov	t3, rax
	mov	r0, r4
	call	__bit_xor
	mov	t1, t2
	jge	rax, t3, .LBB45_11
	jmp	.LBB45_12
.LBB45_12:
	mov	r1, -4
	mov	r0, r3
	call	__bit_or
	mov	r1, 2
	mov	r0, rax
	call	__bit_shl
	mov	r6, rax
	mov	r0, r5
	call	__bit_shl
	sub	r6, rax
	add	r6, r3
	add	r6, t5
	add	r6, 16
	add	t4, t5
	mov	r3, r6
	jmp	.LBB45_14
.LBB45_13:                              // %.loopexit8
	jz	r4, .LBB45_16
	jmp	.LBB45_14
.LBB45_14:                              // %.preheader56
	mov	r1, 255
.LBB45_15:                              // =>This Inner Loop Header: Depth=1
	mov	r0, [r3]
	add	r4, -1
	add	r3, 1
	call	__bit_and
	mov	[t4], rax
	add	t4, 1
	jnz	r4, .LBB45_15
	jmp	.LBB45_16
.LBB45_16:                              // %.loopexit
	mov	rax, r2
	ret
// -- End function
// -- Begin function two_way_long_needle
two_way_long_needle:                    // @two_way_long_needle
// %bb.0:
	mov	[rsp-1], x0
	mov	[rsp-2], x1
	mov	[rsp-3], x2
	mov	[rsp-4], x3
	mov	[rsp-5], x4
	mov	[rsp-6], x5
	mov	[rsp-7], x6
	mov	[rsp-8], x7
	mov	r5, r1
	mov	r4, r0
	mov	t7, 0
	mov	r1, -2147483648
	mov	r6, 1
	mov	r0, r3
	call	__bit_xor
	mov	r0, -2147483646
	mov	r7, 0
	jl	rax, r0, .LBB46_22
	jmp	.LBB46_1
.LBB46_1:                               // %.preheader30.preheader
	mov	x0, 0
	mov	t1, -1
	mov	r7, 1
	mov	t6, 1
.LBB46_2:                               // %.preheader30
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r2
	add	r0, r7
	mov	t2, [r0]
	mov	r1, 255
	mov	r0, t2
	call	__bit_and
	mov	r0, r2
	add	r0, t1
	add	r0, t6
	mov	t3, [r0]
	mov	t4, rax
	mov	r0, t3
	call	__bit_and
	mov	r1, -2147483648
	mov	r0, rax
	call	__bit_xor
	mov	t5, rax
	mov	r0, t4
	call	__bit_xor
	jge	rax, t5, .LBB46_4
	jmp	.LBB46_3
.LBB46_3:                               //   in Loop: Header=BB46_2 Depth=1
	mov	r6, r7
	sub	r6, t1
	mov	t6, 1
	jmp	.LBB46_9
.LBB46_4:                               //   in Loop: Header=BB46_2 Depth=1
	mov	r1, 255
	mov	r0, t3
	call	__bit_and
	mov	r7, rax
	mov	r0, t2
	call	__bit_and
	jne	rax, r7, .LBB46_8
	jmp	.LBB46_5
.LBB46_5:                               //   in Loop: Header=BB46_2 Depth=1
	je	t6, r6, .LBB46_7
	jmp	.LBB46_6
.LBB46_6:                               //   in Loop: Header=BB46_2 Depth=1
	add	t6, 1
	mov	r7, x0
	jmp	.LBB46_9
.LBB46_7:                               //   in Loop: Header=BB46_2 Depth=1
	add	x0, r6
	mov	t6, 1
	mov	r7, x0
	jmp	.LBB46_9
.LBB46_8:                               //   in Loop: Header=BB46_2 Depth=1
	mov	r7, x0
	add	r7, 1
	mov	t6, 1
	mov	r6, 1
	mov	t1, x0
.LBB46_9:                               //   in Loop: Header=BB46_2 Depth=1
	mov	x0, r7
	mov	r7, t6
	mov	r1, -2147483648
	add	r7, x0
	mov	r0, r3
	call	__bit_xor
	mov	t2, rax
	mov	r0, r7
	call	__bit_xor
	jl	rax, t2, .LBB46_2
	jmp	.LBB46_10
.LBB46_10:                              // %.preheader29.preheader
	mov	r7, -1
	mov	x2, 0
	mov	t2, 1
	mov	x0, 1
	mov	x1, 1
.LBB46_11:                              // %.preheader29
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r2
	add	r0, t2
	mov	t3, [r0]
	mov	r1, 255
	mov	r0, t3
	call	__bit_and
	mov	r0, r2
	add	r0, r7
	add	r0, x1
	mov	t4, [r0]
	mov	t5, rax
	mov	r0, t4
	call	__bit_and
	mov	r1, -2147483648
	mov	t6, rax
	mov	r0, t5
	call	__bit_xor
	mov	t5, rax
	mov	r0, t6
	call	__bit_xor
	jge	rax, t5, .LBB46_13
	jmp	.LBB46_12
.LBB46_12:                              //   in Loop: Header=BB46_11 Depth=1
	mov	x0, t2
	sub	x0, r7
	mov	x1, 1
	jmp	.LBB46_18
.LBB46_13:                              //   in Loop: Header=BB46_11 Depth=1
	mov	r1, 255
	mov	r0, t4
	call	__bit_and
	mov	t2, rax
	mov	r0, t3
	call	__bit_and
	jne	rax, t2, .LBB46_17
	jmp	.LBB46_14
.LBB46_14:                              //   in Loop: Header=BB46_11 Depth=1
	je	x1, x0, .LBB46_16
	jmp	.LBB46_15
.LBB46_15:                              //   in Loop: Header=BB46_11 Depth=1
	add	x1, 1
	mov	t2, x2
	jmp	.LBB46_18
.LBB46_16:                              //   in Loop: Header=BB46_11 Depth=1
	add	x2, x0
	mov	x1, 1
	mov	t2, x2
	jmp	.LBB46_18
.LBB46_17:                              //   in Loop: Header=BB46_11 Depth=1
	mov	t2, x2
	add	t2, 1
	mov	x1, 1
	mov	r7, x2
	mov	x0, 1
.LBB46_18:                              //   in Loop: Header=BB46_11 Depth=1
	mov	x2, t2
	mov	t2, x1
	mov	r1, -2147483648
	add	t2, x2
	mov	r0, r3
	call	__bit_xor
	mov	t3, rax
	mov	r0, t2
	call	__bit_xor
	jl	rax, t3, .LBB46_11
	jmp	.LBB46_19
.LBB46_19:
	add	t1, 1
	add	r7, 1
	mov	r0, t1
	call	__bit_xor
	mov	t2, rax
	mov	r0, r7
	call	__bit_xor
	jl	rax, t2, .LBB46_21
	jmp	.LBB46_20
.LBB46_20:
	mov	r6, x0
.LBB46_21:
	mov	r0, t1
	sub	r0, r7
	mov	r1, 31
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	sub	r7, t1
	add	rax, 1
	mov	r0, rax
	mov	r1, r7
	call	__bit_and
	mov	r7, rax
	add	r7, t1
.LBB46_22:
	mov	r0, 1024
	jmp	.LBB46_25
.LBB46_23:
	jz	r3, .LBB46_27
	jmp	.LBB46_24
.LBB46_24:                              // %.preheader27.preheader
	mov	t1, r3
	add	t1, -1
	mov	t2, -1
	mov	t3, r2
	mov	r1, 255
	jmp	.LBB46_26
.LBB46_25:                              // =>This Inner Loop Header: Depth=1
	mov	r1, rsp
	add	r1, t7
	add	t7, 4
	mov	[r1], r3
	je	t7, r0, .LBB46_23
	jmp	.LBB46_25
.LBB46_26:                              // %.preheader27
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [t3]
	call	__bit_and
	add	rax, rsp
	mov	[rax], t1
	add	t1, -1
	add	t3, 4
	jne	t1, t2, .LBB46_26
	jmp	.LBB46_27
.LBB46_27:                              // %.loopexit28
	mov	t2, r2
	mov	r1, -2147483648
	add	t2, r6
	mov	r0, r7
	call	__bit_xor
	mov	r0, -2147483644
	mov	t1, r7
	mov	t4, r2
	jl	rax, r0, .LBB46_33
	jmp	.LBB46_28
.LBB46_28:
	mov	r0, t2
	mov	r1, r2
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	mov	t1, r7
	mov	t4, r2
	jnz	rax, .LBB46_35
	jmp	.LBB46_29
.LBB46_29:                              // %.preheader.i.preheader
	mov	r1, 2
	mov	r0, r6
	call	__bit_shl
	mov	t2, rax
	mov	t3, -2147483645
	mov	t4, r2
	mov	t1, r7
.LBB46_30:                              // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, t4
	add	r0, t2
	mov	r1, [t4]
	mov	r0, [r0]
	jne	r1, r0, .LBB46_34
	jmp	.LBB46_31
.LBB46_31:                              //   in Loop: Header=BB46_30 Depth=1
	add	t1, -4
	mov	r1, -2147483648
	add	t4, 4
	mov	r0, t1
	call	__bit_xor
	jg	rax, t3, .LBB46_30
	jmp	.LBB46_32
.LBB46_32:                              // %.loopexit8.i.loopexit
	mov	r1, 2
	mov	r0, r6
	call	__bit_shl
	mov	t2, rax
	add	t2, t4
.LBB46_33:                              // %.loopexit8.i
	jz	t1, .LBB46_38
	jmp	.LBB46_35
.LBB46_34:                              // %.loopexit7.i.preheader.loopexit
	mov	r1, 2
	mov	r0, r6
	call	__bit_shl
	mov	t2, rax
	add	t2, t4
.LBB46_35:                              // %.loopexit7.i.preheader
.LBB46_36:                              // %.loopexit7.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [t4]
	mov	r1, 255
	call	__bit_and
	mov	r0, [t2]
	mov	t3, rax
	call	__bit_and
	jne	t3, rax, .LBB46_53
	jmp	.LBB46_37
.LBB46_37:                              //   in Loop: Header=BB46_36 Depth=1
	add	t1, -1
	add	t4, 1
	add	t2, 1
	jnz	t1, .LBB46_36
	jmp	.LBB46_38
.LBB46_38:                              // %memcmp.exit.thread
	sub	r5, r3
	mov	x3, r3
	sub	x3, r6
	mov	t2, r3
	add	t2, -1
	mov	x4, 1
	mov	r1, 2
	sub	x4, r7
	mov	r0, r7
	call	__bit_shl
	mov	r0, rax
	call	__bit_shl
	mov	t3, rax
	add	t3, -16
	div	t3, 4
	mov	x5, r4
	add	x5, t3
	add	t3, r2
	mov	t5, 0
	mov	t4, 0
.LBB46_39:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB46_47 Depth 2
                                        //     Child Loop BB46_49 Depth 2
	mov	t1, r4
	add	t1, t4
	mov	r0, t1
	add	r0, r3
	add	r0, -1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	add	rax, rsp
	mov	t7, [rax]
	jz	t7, .LBB46_44
	jmp	.LBB46_40
.LBB46_40:                              //   in Loop: Header=BB46_39 Depth=1
	mov	x7, 0
	jz	t5, .LBB46_43
	jmp	.LBB46_41
.LBB46_41:                              //   in Loop: Header=BB46_39 Depth=1
	mov	r1, -2147483648
	mov	r0, r6
	call	__bit_xor
	mov	t1, rax
	mov	r0, t7
	call	__bit_xor
	jge	rax, t1, .LBB46_43
	jmp	.LBB46_42
.LBB46_42:                              //   in Loop: Header=BB46_39 Depth=1
	mov	t7, x3
.LBB46_43:                              //   in Loop: Header=BB46_39 Depth=1
	add	t4, t7
	mov	r1, -2147483648
	mov	t1, 0
	mov	r0, r5
	call	__bit_xor
	mov	t6, rax
	mov	r0, t4
	call	__bit_xor
	mov	t5, x7
	jg	rax, t6, .LBB46_65
	jmp	.LBB46_39
.LBB46_44:                              //   in Loop: Header=BB46_39 Depth=1
	mov	t6, t5
	sub	t6, r7
	mov	r1, 31
	mov	r0, t6
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	mov	r1, r7
	sub	r1, t5
	add	rax, 1
	mov	r0, rax
	call	__bit_and
	mov	x1, rax
	add	x1, t5
	mov	r1, -2147483648
	mov	r0, x1
	call	__bit_xor
	mov	t7, rax
	mov	r0, t2
	call	__bit_xor
	jge	t7, rax, .LBB46_46
	jmp	.LBB46_45
.LBB46_45:                              // %.preheader.preheader
                                        //   in Loop: Header=BB46_39 Depth=1
	mov	t7, x4
	add	t7, x1
	mov	x6, t2
	mov	r1, 2
	sub	x6, x1
	mov	r0, t4
	call	__bit_shl
	mov	x0, rax
	mov	r0, x1
	call	__bit_shl
	mov	x1, rax
	add	x0, x1
	add	x0, r4
	add	x1, r2
	jmp	.LBB46_47
.LBB46_46:                              // %.loopexit
                                        //   in Loop: Header=BB46_39 Depth=1
	mov	r1, 31
	mov	r0, t6
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r0, rax
	mov	r1, t6
	call	__bit_and
	mov	t6, rax
	mov	r1, 2
	add	t6, r7
	mov	r0, t4
	call	__bit_shl
	mov	t7, rax
	add	t7, x5
	mov	x2, t3
	mov	x0, r7
	jmp	.LBB46_49
.LBB46_47:                              // %.preheader
                                        //   Parent Loop BB46_39 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, [x1]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x0]
	mov	x2, rax
	call	__bit_and
	mov	x7, 0
	jne	x2, rax, .LBB46_43
	jmp	.LBB46_48
.LBB46_48:                              //   in Loop: Header=BB46_47 Depth=2
	add	t7, 1
	add	x6, -1
	add	x0, 4
	add	x1, 4
	jz	x6, .LBB46_46
	jmp	.LBB46_47
.LBB46_49:                              //   Parent Loop BB46_39 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, -2147483648
	mov	r0, x0
	call	__bit_xor
	mov	x1, rax
	mov	r0, t5
	call	__bit_xor
	jge	rax, x1, .LBB46_52
	jmp	.LBB46_50
.LBB46_50:                              //   in Loop: Header=BB46_49 Depth=2
	mov	r0, [x2]
	mov	r1, 255
	add	x0, -1
	call	__bit_and
	mov	r0, [t7]
	mov	x1, rax
	call	__bit_and
	add	t7, -4
	add	x2, -4
	je	x1, rax, .LBB46_49
	jmp	.LBB46_51
.LBB46_51:                              // %._crit_edge
                                        //   in Loop: Header=BB46_39 Depth=1
	add	x0, 1
	mov	t6, x0
.LBB46_52:                              //   in Loop: Header=BB46_39 Depth=1
	add	t5, 1
	mov	r1, -2147483648
	mov	r0, t5
	call	__bit_xor
	mov	t5, rax
	mov	r0, t6
	call	__bit_xor
	mov	t7, r6
	mov	x7, x3
	jl	rax, t5, .LBB46_65
	jmp	.LBB46_43
.LBB46_53:                              // %memcmp.exit
	mov	t1, r3
	sub	t1, r7
	mov	r0, t1
	sub	r0, r7
	mov	r1, 31
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	mov	r1, r7
	sub	r1, t1
	add	rax, 1
	mov	r0, rax
	call	__bit_and
	mov	r6, rax
	add	r6, t1
	mov	t2, r3
	add	t2, -1
	sub	r5, r3
	mov	t7, t2
	mov	r1, 2
	sub	t7, r7
	mov	r0, r7
	call	__bit_shl
	mov	t3, rax
	mov	x0, r4
	add	x0, t3
	mov	r0, t3
	call	__bit_shl
	mov	t4, rax
	add	t3, r2
	add	t4, -16
	div	t4, 4
	mov	x1, r4
	add	x1, t4
	add	t4, r2
	mov	x2, r7
	add	x2, 1
	mov	r2, 0
.LBB46_54:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB46_59 Depth 2
                                        //     Child Loop BB46_62 Depth 2
	mov	t1, r4
	add	t1, r2
	mov	r0, t1
	add	r0, r3
	add	r0, -1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	add	rax, rsp
	mov	r0, [rax]
	jnz	r0, .LBB46_57
	jmp	.LBB46_55
.LBB46_55:                              //   in Loop: Header=BB46_54 Depth=1
	mov	r1, -2147483648
	mov	r0, r7
	call	__bit_xor
	mov	t5, rax
	mov	r0, t2
	call	__bit_xor
	jle	rax, t5, .LBB46_61
	jmp	.LBB46_56
.LBB46_56:                              // %.preheader24.preheader
                                        //   in Loop: Header=BB46_54 Depth=1
	mov	r1, 2
	mov	r0, r2
	call	__bit_shl
	mov	t5, rax
	add	t5, x0
	mov	x3, 0
	mov	x4, t3
	jmp	.LBB46_59
.LBB46_57:                              //   in Loop: Header=BB46_54 Depth=1
	add	r2, r0
.LBB46_58:                              //   in Loop: Header=BB46_54 Depth=1
	mov	r1, -2147483648
	mov	t1, 0
	mov	r0, r5
	call	__bit_xor
	mov	t5, rax
	mov	r0, r2
	call	__bit_xor
	jg	rax, t5, .LBB46_65
	jmp	.LBB46_54
.LBB46_59:                              // %.preheader24
                                        //   Parent Loop BB46_54 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, [x4]
	mov	r1, 255
	call	__bit_and
	mov	r0, [t5]
	mov	t6, rax
	call	__bit_and
	jne	t6, rax, .LBB46_64
	jmp	.LBB46_60
.LBB46_60:                              //   in Loop: Header=BB46_59 Depth=2
	add	x3, 1
	add	t5, 4
	add	x4, 4
	jne	t7, x3, .LBB46_59
	jmp	.LBB46_61
.LBB46_61:                              // %.loopexit25.preheader
                                        //   in Loop: Header=BB46_54 Depth=1
	mov	r1, 2
	mov	r0, r2
	call	__bit_shl
	mov	t5, rax
	add	t5, x1
	mov	x4, x2
	mov	x5, t4
.LBB46_62:                              // %.loopexit25
                                        //   Parent Loop BB46_54 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	x4, -1
	jz	x4, .LBB46_65
	jmp	.LBB46_63
.LBB46_63:                              //   in Loop: Header=BB46_62 Depth=2
	mov	r0, [x5]
	mov	x3, t5
	add	x3, -4
	mov	r1, 255
	add	x5, -4
	call	__bit_and
	mov	r0, [t5]
	mov	t6, rax
	call	__bit_and
	mov	t5, x3
	mov	x3, r6
	je	t6, rax, .LBB46_62
	jmp	.LBB46_64
.LBB46_64:                              // %.loopexit23
                                        //   in Loop: Header=BB46_54 Depth=1
	add	r2, x3
	add	r2, 1
	jmp	.LBB46_58
.LBB46_65:                              // %.loopexit21
	mov	rax, t1
	mov	x7, [rsp-8]
	mov	x6, [rsp-7]
	mov	x5, [rsp-6]
	mov	x4, [rsp-5]
	mov	x3, [rsp-4]
	mov	x2, [rsp-3]
	mov	x1, [rsp-2]
	mov	x0, [rsp-1]
	ret
// -- End function
// -- Begin function memmem
memmem:                                 // @memmem
// %bb.0:
	mov	[rsp-1], x0
	mov	[rsp-2], x1
	mov	[rsp-3], x2
	mov	[rsp-4], x3
	mov	[rsp-5], x4
	mov	[rsp-6], x5
	mov	[rsp-7], x6
	mov	[rsp-8], x7
	mov	[rsp-9], x8
	mov	[rsp-10], x9
	mov	[rsp-11], x10
	mov	[rsp-12], x11
	mov	[rsp-13], x12
	mov	[rsp-14], x13
	mov	[rsp-15], x14
	mov	[rsp-16], x15
	mov	r5, r1
	mov	r4, r0
	mov	t2, r4
	jz	r3, .LBB47_69
	jmp	.LBB47_1
.LBB47_1:
	mov	r0, 1
	jne	r3, r0, .LBB47_15
	jmp	.LBB47_2
.LBB47_2:
	mov	r2, [r2]
	mov	r1, 255
	mov	r0, r2
	call	__bit_and
	mov	r1, 3
	mov	r3, rax
	mov	r0, r4
	call	__bit_and
	jz	rax, .LBB47_7
	jmp	.LBB47_3
.LBB47_3:
	mov	t2, 0
	jz	r5, .LBB47_69
	jmp	.LBB47_4
.LBB47_4:                               // %.preheader.i.preheader
.LBB47_5:                               // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 255
	mov	r0, r2
	call	__bit_and
	mov	r0, [r4]
	mov	r3, rax
	call	__bit_and
	mov	t2, r4
	je	rax, r3, .LBB47_69
	jmp	.LBB47_6
.LBB47_6:                               //   in Loop: Header=BB47_5 Depth=1
	add	r5, -1
	add	r4, 1
	mov	t2, 0
	jz	r5, .LBB47_69
	jmp	.LBB47_5
.LBB47_7:
	mov	r1, -2147483648
	mov	r0, r5
	call	__bit_xor
	mov	r0, -2147483644
	jl	rax, r0, .LBB47_11
	jmp	.LBB47_8
.LBB47_8:
	mul	r3, 16843009
	mov	r6, -2139062144
	mov	r7, -2147483645
.LBB47_9:                               // =>This Inner Loop Header: Depth=1
	mov	r0, [r4]
	mov	r1, r3
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, rax
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, r6, .LBB47_12
	jmp	.LBB47_10
.LBB47_10:                              //   in Loop: Header=BB47_9 Depth=1
	add	r5, -4
	mov	r1, -2147483648
	add	r4, 4
	mov	r0, r5
	call	__bit_xor
	jg	rax, r7, .LBB47_9
	jmp	.LBB47_11
.LBB47_11:                              // %.loopexit7.i
	mov	t2, 0
	jz	r5, .LBB47_69
	jmp	.LBB47_12
.LBB47_12:                              // %.loopexit6.i.preheader
.LBB47_13:                              // %.loopexit6.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 255
	mov	r0, r2
	call	__bit_and
	mov	r0, [r4]
	mov	r3, rax
	call	__bit_and
	mov	t2, r4
	je	rax, r3, .LBB47_69
	jmp	.LBB47_14
.LBB47_14:                              //   in Loop: Header=BB47_13 Depth=1
	add	r5, -1
	add	r4, 1
	mov	t2, 0
	jz	r5, .LBB47_69
	jmp	.LBB47_13
.LBB47_15:
	mov	r1, -2147483648
	mov	t2, 0
	mov	r0, r3
	call	__bit_xor
	mov	r6, rax
	mov	r0, r5
	call	__bit_xor
	jl	rax, r6, .LBB47_69
	jmp	.LBB47_16
.LBB47_16:
	mov	r0, r5
	sub	r0, r3
	mov	r1, 4
	mov	t1, 4
	call	__bit_shl
	mov	r6, r4
	mov	r1, 2
	add	r6, rax
	jne	r3, r1, .LBB47_24
	jmp	.LBB47_17
.LBB47_17:
	call	__bit_shl
	mov	r0, [r2]
	mov	r1, 255
	mov	r7, rax
	call	__bit_and
	mov	r1, 16
	mov	r0, rax
	call	__bit_shl
	add	r2, 1
	mov	r0, [r2]
	mov	r1, 255
	mov	r2, rax
	call	__bit_and
	mov	r0, r2
	mov	r1, rax
	call	__bit_or
	mov	r0, [r4]
	mov	r1, 255
	mov	r3, rax
	call	__bit_and
	mov	r1, 16
	mov	r0, rax
	call	__bit_shl
	mov	r2, r4
	add	r2, 4
	mov	r0, [r2]
	mov	r1, 255
	mov	r5, rax
	call	__bit_and
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	r5, rax
	jl	r7, t1, .LBB47_23
	jmp	.LBB47_18
.LBB47_18:
	je	r5, r3, .LBB47_23
	jmp	.LBB47_19
.LBB47_19:                              // %.preheader.preheader
	add	r4, 20
	mov	r2, r4
.LBB47_20:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 16
	mov	r4, r2
	mov	r0, r5
	call	__bit_shl
	mov	r0, [r4]
	mov	r1, 255
	mov	r5, rax
	call	__bit_and
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	r5, rax
	mov	r1, -2147483648
	add	r2, 4
	mov	r0, r6
	call	__bit_xor
	mov	r7, rax
	mov	r0, r4
	call	__bit_xor
	jg	rax, r7, .LBB47_22
	jmp	.LBB47_21
.LBB47_21:                              // %.preheader
                                        //   in Loop: Header=BB47_20 Depth=1
	jne	r5, r3, .LBB47_20
	jmp	.LBB47_22
.LBB47_22:                              // %.loopexit.loopexit
	add	r2, -4
.LBB47_23:                              // %.loopexit
	mov	r0, r5
	mov	r1, r3
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	add	r2, -1
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r0, rax
	mov	r1, r2
	call	__bit_and
	mov	t2, rax
	jmp	.LBB47_69
.LBB47_24:
	mov	[rsp-273], rax
	mov	r1, -2147483648
	mov	r0, r3
	call	__bit_xor
	mov	r0, -2147483391
	jl	rax, r0, .LBB47_26
	jmp	.LBB47_25
.LBB47_25:
	mov	r0, r4
	mov	r1, r5
	call	two_way_long_needle
	mov	t2, rax
	jmp	.LBB47_69
.LBB47_26:
	mov	r1, 3
	mov	r0, rsp
	call	__bit_and
	jz	rax, .LBB47_28
	jmp	.LBB47_27
.LBB47_27:                              // %.preheader5.i.preheader
	mov	r0, 0
	mov	r1, 1024
	jmp	.LBB47_29
.LBB47_28:                              // %.preheader.i6.preheader
	mov	[rsp-274], rsp
	mov	[rsp-275], rsp
	mov	[rsp-276], rsp
	mov	[rsp-277], rsp
	mov	[rsp-278], rsp
	mov	[rsp-279], rsp
	mov	[rsp-280], rsp
	mov	[rsp-281], rsp
	mov	[rsp-282], rsp
	mov	[rsp-283], rsp
	mov	[rsp-284], rsp
	mov	[rsp-285], rsp
	mov	[rsp-286], rsp
	mov	[rsp-287], rsp
	mov	[rsp-288], rsp
	mov	[rsp-289], rsp
	mov	[rsp-290], rsp
	mov	[rsp-291], rsp
	mov	[rsp-292], rsp
	mov	[rsp-293], rsp
	mov	[rsp-294], rsp
	mov	[rsp-295], rsp
	mov	[rsp-296], rsp
	mov	[rsp-297], rsp
	mov	[rsp-298], rsp
	mov	[rsp-299], rsp
	mov	[rsp-300], rsp
	mov	[rsp-301], rsp
	mov	[rsp-302], rsp
	mov	[rsp-303], rsp
	mov	[rsp-304], rsp
	mov	[rsp-305], rsp
	mov	[rsp-306], rsp
	mov	[rsp-307], rsp
	mov	x15, rsp
	mov	x14, rsp
	mov	x13, rsp
	mov	x12, rsp
	mov	x11, rsp
	mov	x10, rsp
	mov	x9, rsp
	mov	x8, rsp
	mov	x7, rsp
	mov	x6, rsp
	mov	x5, rsp
	mov	x4, rsp
	mov	x3, rsp
	mov	x2, rsp
	mov	x1, rsp
	mov	x0, rsp
	mov	rax, rsp
	mov	t7, rsp
	mov	t6, rsp
	mov	t5, rsp
	mov	t4, rsp
	mov	t3, rsp
	mov	t2, rsp
	mov	t1, rsp
	mov	t0, rsp
	mov	r5, rsp
	mov	r7, rsp
	mov	r1, rsp
	add	r0, 4
	mov	[rsp], 0
	mov	[r0], 0
	mov	r0, [rsp-274]
	add	r0, 8
	mov	[r0], 0
	mov	r0, [rsp-275]
	add	r0, 12
	mov	[r0], 0
	mov	r0, [rsp-276]
	add	r0, 16
	mov	[r0], 0
	mov	r0, [rsp-277]
	add	r0, 20
	mov	[r0], 0
	mov	r0, [rsp-278]
	add	r0, 24
	mov	[r0], 0
	mov	r0, [rsp-279]
	add	r0, 28
	mov	[r0], 0
	mov	r0, [rsp-280]
	add	r0, 32
	mov	[r0], 0
	mov	r0, [rsp-281]
	add	r0, 36
	mov	[r0], 0
	mov	r0, [rsp-282]
	add	r0, 40
	mov	[r0], 0
	mov	r0, [rsp-283]
	add	r0, 44
	mov	[r0], 0
	mov	r0, [rsp-284]
	add	r0, 48
	mov	[r0], 0
	mov	r0, [rsp-285]
	add	r0, 52
	mov	[r0], 0
	mov	r0, [rsp-286]
	add	r0, 56
	mov	[r0], 0
	mov	r0, [rsp-287]
	add	r0, 60
	mov	[r0], 0
	mov	r0, [rsp-288]
	add	r0, 64
	mov	[r0], 0
	mov	r0, [rsp-289]
	add	r0, 68
	mov	[r0], 0
	mov	r0, [rsp-290]
	add	r0, 72
	mov	[r0], 0
	mov	r0, [rsp-291]
	add	r0, 76
	mov	[r0], 0
	mov	r0, [rsp-292]
	add	r0, 80
	mov	[r0], 0
	mov	r0, [rsp-293]
	add	r0, 84
	mov	[r0], 0
	mov	r0, [rsp-294]
	add	r0, 88
	mov	[r0], 0
	mov	r0, [rsp-295]
	add	r0, 92
	mov	[r0], 0
	mov	r0, [rsp-296]
	add	r0, 96
	mov	[r0], 0
	mov	r0, [rsp-297]
	add	r0, 100
	mov	[r0], 0
	mov	r0, [rsp-298]
	add	r0, 104
	mov	[r0], 0
	mov	r0, [rsp-299]
	add	r0, 108
	mov	[r0], 0
	mov	r0, [rsp-300]
	add	r0, 112
	mov	[r0], 0
	mov	r0, [rsp-301]
	add	r0, 116
	mov	[r0], 0
	mov	r0, [rsp-302]
	add	r0, 120
	mov	[r0], 0
	mov	r0, [rsp-303]
	add	r0, 124
	mov	[r0], 0
	mov	r0, [rsp-304]
	add	r0, 128
	mov	[r0], 0
	mov	r0, [rsp-305]
	add	r0, 132
	mov	[r0], 0
	mov	r0, [rsp-306]
	add	r0, 136
	mov	[r0], 0
	mov	r0, [rsp-307]
	add	r0, 140
	mov	[r0], 0
	add	x15, 144
	mov	[x15], 0
	add	x14, 148
	mov	[x14], 0
	add	x13, 152
	mov	[x13], 0
	add	x12, 156
	mov	[x12], 0
	add	x11, 160
	mov	[x11], 0
	add	x10, 164
	mov	[x10], 0
	add	x9, 168
	mov	[x9], 0
	add	x8, 172
	mov	[x8], 0
	add	x7, 176
	mov	[x7], 0
	add	x6, 180
	mov	[x6], 0
	add	x5, 184
	mov	[x5], 0
	add	x4, 188
	mov	[x4], 0
	add	x3, 192
	mov	[x3], 0
	add	x2, 196
	mov	[x2], 0
	add	x1, 200
	mov	[x1], 0
	add	x0, 204
	mov	[x0], 0
	add	rax, 208
	mov	[rax], 0
	add	t7, 212
	mov	[t7], 0
	add	t6, 216
	mov	[t6], 0
	add	t5, 220
	mov	[t5], 0
	add	t4, 224
	mov	[t4], 0
	add	t3, 228
	mov	[t3], 0
	add	t2, 232
	mov	[t2], 0
	add	t1, 236
	mov	[t1], 0
	add	t0, 240
	mov	[t0], 0
	add	r5, 244
	mov	[r5], 0
	add	r7, 248
	add	r1, 252
	mov	[r7], 0
	mov	[r1], 0
	jmp	.LBB47_30
.LBB47_29:                              // %.preheader5.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r5, rsp
	add	r5, r0
	add	r0, 4
	mov	[r5], 0
	jne	r0, r1, .LBB47_29
	jmp	.LBB47_30
.LBB47_30:                              // %memset.exit.preheader
	mov	r5, r3
	add	r5, -1
	mov	t1, r2
	add	t1, 4
	mov	t2, 2
.LBB47_31:                              // %memset.exit
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [t1]
	mov	t3, t2
	mov	r1, 255
	add	t3, -1
	call	__bit_and
	mov	r0, t1
	add	r0, -4
	mov	r0, [r0]
	mov	r7, rax
	call	__bit_and
	mov	r1, 3
	mov	r0, rax
	call	__bit_shl
	sub	r7, rax
	mov	r1, 255
	mov	r0, r7
	call	__bit_and
	add	rax, rsp
	mov	[rax], t3
	add	t2, 1
	add	t1, 4
	jne	r3, t2, .LBB47_31
	jmp	.LBB47_32
.LBB47_32:
	mov	r7, r2
	add	r7, r5
	mov	r0, [r7]
	call	__bit_and
	add	r7, -1
	mov	r0, [r7]
	mov	r7, rax
	call	__bit_and
	mov	r1, 3
	mov	r0, rax
	call	__bit_shl
	sub	r7, rax
	mov	r1, 255
	mov	r0, r7
	call	__bit_and
	mov	t1, rax
	add	t1, rsp
	mov	r0, [t1]
	call	__bit_and
	mov	r7, rax
	mov	r0, 17
	mov	[t1], r5
	jl	r3, r0, .LBB47_34
	jmp	.LBB47_33
.LBB47_33:                              // %.preheader20.preheader
	mov	r1, 2
	mov	r0, r3
	call	__bit_shl
	mov	r3, rax
	add	r3, -4
	mov	r0, r7
	call	__bit_shl
	mov	t6, r3
	sub	t6, rax
	mov	t1, 0
	mov	t7, -2147483645
	jmp	.LBB47_50
.LBB47_34:                              // %.preheader15
	mov	t2, 0
	mov	r0, [rsp-273]
	jl	r0, t2, .LBB47_68
	jmp	.LBB47_35
.LBB47_35:                              // %.preheader14.lr.ph
	mov	t1, r5
	sub	t1, r7
	mov	t3, -2147483643
	mov	t4, -2147483645
.LBB47_36:                              // %.preheader14
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB47_43 Depth 2
                                        //     Child Loop BB47_47 Depth 2
	mov	t2, r4
	add	t2, r5
	mov	r0, [t2]
	mov	r1, 255
	call	__bit_and
	mov	r0, t2
	add	r0, -1
	mov	r0, [r0]
	mov	r4, rax
	call	__bit_and
	mov	r1, 3
	mov	r0, rax
	call	__bit_shl
	sub	r4, rax
	mov	r1, 255
	mov	r0, r4
	call	__bit_and
	add	rax, rsp
	mov	r7, [rax]
	mov	r1, -2147483648
	mov	r0, r6
	call	__bit_xor
	mov	r4, rax
	mov	r0, t2
	call	__bit_xor
	jg	rax, r4, .LBB47_38
	jmp	.LBB47_37
.LBB47_37:                              // %.preheader14
                                        //   in Loop: Header=BB47_36 Depth=1
	mov	r1, 255
	mov	r0, r7
	call	__bit_and
	mov	r4, t2
	jz	rax, .LBB47_36
	jmp	.LBB47_38
.LBB47_38:                              //   in Loop: Header=BB47_36 Depth=1
	mov	r1, 255
	mov	r0, r7
	call	__bit_and
	mov	r1, -2147483648
	sub	t2, rax
	mov	r0, rax
	call	__bit_xor
	mov	r4, rax
	mov	r0, r5
	call	__bit_xor
	jle	rax, r4, .LBB47_40
	jmp	.LBB47_39
.LBB47_39:                              //   in Loop: Header=BB47_36 Depth=1
	mov	r1, -2147483648
	mov	r0, r6
	call	__bit_xor
	mov	r7, rax
	mov	r0, t2
	call	__bit_xor
	mov	r4, t2
	mov	t2, 0
	jg	rax, r7, .LBB47_68
	jmp	.LBB47_36
.LBB47_40:                              //   in Loop: Header=BB47_36 Depth=1
	mov	r0, r3
	call	__bit_xor
	mov	r4, r5
	mov	t6, t2
	mov	t5, r2
	jl	rax, t3, .LBB47_45
	jmp	.LBB47_41
.LBB47_41:                              //   in Loop: Header=BB47_36 Depth=1
	mov	r0, t2
	mov	r1, r2
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	mov	r4, r5
	mov	t5, r2
	mov	t6, t2
	jnz	rax, .LBB47_46
	jmp	.LBB47_42
.LBB47_42:                              // %.preheader.i8.preheader
                                        //   in Loop: Header=BB47_36 Depth=1
	mov	t5, r2
	mov	t6, t2
	mov	r4, r5
.LBB47_43:                              // %.preheader.i8
                                        //   Parent Loop BB47_36 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, [t6]
	mov	r1, [t5]
	jne	r0, r1, .LBB47_46
	jmp	.LBB47_44
.LBB47_44:                              //   in Loop: Header=BB47_43 Depth=2
	add	t6, 4
	add	r4, -4
	mov	r1, -2147483648
	add	t5, 4
	mov	r0, r4
	call	__bit_xor
	jg	rax, t4, .LBB47_43
	jmp	.LBB47_45
.LBB47_45:                              // %.loopexit8.i
                                        //   in Loop: Header=BB47_36 Depth=1
	jz	r4, .LBB47_68
	jmp	.LBB47_46
.LBB47_46:                              // %.loopexit7.i7.preheader
                                        //   in Loop: Header=BB47_36 Depth=1
.LBB47_47:                              // %.loopexit7.i7
                                        //   Parent Loop BB47_36 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, [t6]
	mov	r1, 255
	call	__bit_and
	mov	r0, [t5]
	mov	r7, rax
	call	__bit_and
	jne	r7, rax, .LBB47_49
	jmp	.LBB47_48
.LBB47_48:                              //   in Loop: Header=BB47_47 Depth=2
	add	r4, -1
	add	t6, 1
	add	t5, 1
	jz	r4, .LBB47_68
	jmp	.LBB47_47
.LBB47_49:                              // %memcmp.exit
                                        //   in Loop: Header=BB47_36 Depth=1
	add	t2, t1
	jmp	.LBB47_39
.LBB47_50:                              // %.preheader20
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB47_51 Depth 2
                                        //       Child Loop BB47_53 Depth 3
.LBB47_51:                              //   Parent Loop BB47_50 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB47_53 Depth 3
	mov	r7, r4
	mov	r1, -2147483648
	mov	t2, 0
	mov	r0, r6
	call	__bit_xor
	mov	r4, rax
	mov	r0, r7
	call	__bit_xor
	jg	rax, r4, .LBB47_68
	jmp	.LBB47_52
.LBB47_52:                              // %.preheader17.preheader
                                        //   in Loop: Header=BB47_51 Depth=2
	mov	t4, r7
	add	t4, r3
	mov	x0, 0
.LBB47_53:                              // %.preheader17
                                        //   Parent Loop BB47_50 Depth=1
                                        //     Parent Loop BB47_51 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	mov	r4, t4
	add	r4, x0
	mov	r0, [r4]
	mov	r1, 255
	call	__bit_and
	mov	r0, r4
	add	r0, -4
	mov	r0, [r0]
	mov	t2, rax
	call	__bit_and
	mov	r1, 3
	mov	r0, rax
	call	__bit_shl
	sub	t2, rax
	mov	r1, 255
	mov	r0, t2
	call	__bit_and
	add	rax, rsp
	mov	t2, [rax]
	mov	r1, -2147483648
	add	x0, r3
	mov	r0, r6
	call	__bit_xor
	mov	t3, rax
	mov	r0, r4
	call	__bit_xor
	jg	rax, t3, .LBB47_55
	jmp	.LBB47_54
.LBB47_54:                              // %.preheader17
                                        //   in Loop: Header=BB47_53 Depth=3
	mov	r1, 255
	mov	r0, t2
	call	__bit_and
	jz	rax, .LBB47_53
	jmp	.LBB47_55
.LBB47_55:                              //   in Loop: Header=BB47_51 Depth=2
	mov	r1, 255
	mov	r0, t2
	call	__bit_and
	mov	r1, 4
	mov	r0, rax
	call	__bit_shl
	mov	r4, 0
	sub	r4, rax
	div	r4, 4
	add	r4, r7
	mov	r1, -2147483648
	add	r4, x0
	call	__bit_xor
	mov	t3, rax
	mov	r0, r5
	call	__bit_xor
	jg	rax, t3, .LBB47_51
	jmp	.LBB47_56
.LBB47_56:                              //   in Loop: Header=BB47_50 Depth=1
	mov	r1, 2
	mov	r0, t2
	call	__bit_shl
	mov	r1, 1020
	mov	r0, rax
	call	__bit_and
	mov	r1, 2
	mov	r4, rax
	mov	r0, t1
	call	__bit_shl
	mov	t5, rax
	call	__bit_shl
	mov	t4, rax
	mov	t3, r2
	add	t3, t1
	call	__bit_shl
	add	rax, r7
	sub	rax, r4
	add	rax, x0
	mov	r0, rax
	mov	r1, t3
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB47_58
	jmp	.LBB47_57
.LBB47_57:                              // %.preheader.i10.preheader
                                        //   in Loop: Header=BB47_50 Depth=1
	add	t5, r7
	sub	t5, r4
	add	t5, x0
	mov	r0, [t5]
	mov	r1, [t3]
	je	r0, r1, .LBB47_62
	jmp	.LBB47_58
.LBB47_58:                              // %.loopexit7.i9
                                        //   in Loop: Header=BB47_50 Depth=1
	add	t4, r7
	sub	t4, r4
	add	t4, x0
	mov	r0, [t4]
	mov	r1, 255
	call	__bit_and
	mov	r0, [t3]
	mov	t4, rax
	call	__bit_and
	jne	t4, rax, .LBB47_66
	jmp	.LBB47_59
.LBB47_59:                              // %.loopexit7.i9.1
                                        //   in Loop: Header=BB47_50 Depth=1
	mov	r0, t2
	call	__bit_and
	mov	r1, 2
	mov	t4, rax
	mov	r0, t1
	call	__bit_shl
	mov	t5, rax
	mov	r1, 4
	add	t5, r7
	mov	r0, t4
	call	__bit_shl
	mov	r0, 0
	sub	r0, rax
	div	r0, 4
	add	r0, t5
	add	r0, x0
	add	r0, 4
	mov	r0, [r0]
	mov	t4, t3
	mov	r1, 255
	add	t4, 1
	call	__bit_and
	mov	r0, [t4]
	mov	t4, rax
	call	__bit_and
	jne	t4, rax, .LBB47_66
	jmp	.LBB47_60
.LBB47_60:                              // %.loopexit7.i9.2
                                        //   in Loop: Header=BB47_50 Depth=1
	mov	r0, t2
	call	__bit_and
	mov	r1, 2
	mov	t4, rax
	mov	r0, t1
	call	__bit_shl
	mov	t5, rax
	mov	r1, 4
	add	t5, r7
	mov	r0, t4
	call	__bit_shl
	mov	r0, 0
	sub	r0, rax
	div	r0, 4
	add	r0, t5
	add	r0, x0
	add	r0, 8
	mov	r0, [r0]
	mov	t4, t3
	mov	r1, 255
	add	t4, 2
	call	__bit_and
	mov	r0, [t4]
	mov	t4, rax
	call	__bit_and
	jne	t4, rax, .LBB47_66
	jmp	.LBB47_61
.LBB47_61:                              // %.loopexit7.i9.3
                                        //   in Loop: Header=BB47_50 Depth=1
	mov	r0, t2
	call	__bit_and
	mov	r1, 2
	mov	t4, rax
	mov	r0, t1
	call	__bit_shl
	mov	t5, rax
	mov	r1, 4
	add	t5, r7
	mov	r0, t4
	call	__bit_shl
	mov	r0, 0
	sub	r0, rax
	div	r0, 4
	add	r0, t5
	add	r0, x0
	add	r0, 12
	mov	r0, [r0]
	mov	r1, 255
	add	t3, 3
	call	__bit_and
	mov	r0, [t3]
	mov	t3, rax
	call	__bit_and
	jne	t3, rax, .LBB47_66
	jmp	.LBB47_62
.LBB47_62:                              // %memcmp.exit12.thread
                                        //   in Loop: Header=BB47_50 Depth=1
	mov	r0, r7
	sub	r0, r4
	add	r0, x0
	mov	r4, r2
	mov	r1, r2
	mov	r2, r5
	call	memcmp
	jz	rax, .LBB47_67
	jmp	.LBB47_63
.LBB47_63:                              //   in Loop: Header=BB47_50 Depth=1
	mov	r1, -2147483648
	mov	r0, t1
	call	__bit_xor
	jg	rax, t7, .LBB47_65
	jmp	.LBB47_64
.LBB47_64:                              //   in Loop: Header=BB47_50 Depth=1
	mov	t1, r5
.LBB47_65:                              //   in Loop: Header=BB47_50 Depth=1
	add	t1, -4
	mov	r2, r4
.LBB47_66:                              // %memcmp.exit12
                                        //   in Loop: Header=BB47_50 Depth=1
	mov	r1, 255
	mov	r0, t2
	call	__bit_and
	mov	r1, 4
	add	r7, t6
	mov	r0, rax
	call	__bit_shl
	mov	r4, 0
	sub	r4, rax
	div	r4, 4
	add	r4, r7
	add	r4, x0
	jmp	.LBB47_50
.LBB47_67:                              // %memcmp.exit.thread.loopexit4
	mov	r1, 255
	mov	r0, t2
	call	__bit_and
	mov	r1, 4
	mov	r0, rax
	call	__bit_shl
	mov	r0, 0
	sub	r0, rax
	div	r0, 4
	add	r7, r0
	add	r7, x0
	mov	t2, r7
.LBB47_68:                              // %memcmp.exit.thread
.LBB47_69:                              // %memchr.exit
	mov	rax, t2
	mov	x15, [rsp-16]
	mov	x14, [rsp-15]
	mov	x13, [rsp-14]
	mov	x12, [rsp-13]
	mov	x11, [rsp-12]
	mov	x10, [rsp-11]
	mov	x9, [rsp-10]
	mov	x8, [rsp-9]
	mov	x7, [rsp-8]
	mov	x6, [rsp-7]
	mov	x5, [rsp-6]
	mov	x4, [rsp-5]
	mov	x3, [rsp-4]
	mov	x2, [rsp-3]
	mov	x1, [rsp-2]
	mov	x0, [rsp-1]
	ret
// -- End function
// -- Begin function memmove
memmove:                                // @memmove
// %bb.0:
	mov	r4, r1
	mov	r1, -2147483648
	mov	r3, r2
	mov	r2, r0
	call	__bit_xor
	mov	r5, rax
	mov	r0, r4
	call	__bit_xor
	jge	rax, r5, .LBB48_9
	jmp	.LBB48_1
.LBB48_1:
	mov	r5, r4
	add	r5, r3
	mov	r0, r5
	call	__bit_xor
	mov	r6, rax
	mov	r0, r2
	call	__bit_xor
	jge	rax, r6, .LBB48_9
	jmp	.LBB48_2
.LBB48_2:
	mov	r4, r2
	add	r4, r3
	mov	r0, r3
	call	__bit_xor
	mov	r0, -2147483644
	jl	rax, r0, .LBB48_6
	jmp	.LBB48_3
.LBB48_3:
	mov	r0, r5
	mov	r1, r4
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB48_7
	jmp	.LBB48_4
.LBB48_4:                               // %.preheader.preheader
	mov	r6, -2147483645
	mov	r1, r5
	mov	r0, r4
.LBB48_5:                               // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	add	r5, -4
	add	r1, -16
	mov	r7, [r1]
	add	r4, -4
	add	r0, -16
	add	r3, -4
	mov	r1, -2147483648
	mov	[r0], r7
	mov	r0, r3
	call	__bit_xor
	mov	r1, r5
	mov	r0, r4
	jg	rax, r6, .LBB48_5
	jmp	.LBB48_6
.LBB48_6:                               // %.loopexit9
	jz	r3, .LBB48_20
	jmp	.LBB48_7
.LBB48_7:                               // %.preheader56
	add	r5, -4
	add	r4, -4
	mov	r1, 255
.LBB48_8:                               // =>This Inner Loop Header: Depth=1
	mov	r0, [r5]
	add	r3, -1
	call	__bit_and
	mov	[r4], rax
	add	r5, -4
	add	r4, -4
	jz	r3, .LBB48_20
	jmp	.LBB48_8
.LBB48_9:
	mov	r0, r3
	call	__bit_xor
	mov	r0, -2147483644
	mov	r5, r2
	jl	rax, r0, .LBB48_17
	jmp	.LBB48_10
.LBB48_10:
	mov	r0, r4
	mov	r1, r2
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	mov	r5, r2
	jnz	rax, .LBB48_18
	jmp	.LBB48_11
.LBB48_11:
	mov	r1, -2147483648
	mov	r0, r3
	call	__bit_xor
	mov	r0, -2147483632
	mov	r5, r2
	jl	rax, r0, .LBB48_13
	jmp	.LBB48_12
.LBB48_12:                              // %.preheader12.preheader
	mov	r6, -2147483633
	mov	r7, r4
	mov	t1, r2
	jmp	.LBB48_15
.LBB48_13:                              // %.preheader66
	mov	r6, -2147483645
	jmp	.LBB48_16
.LBB48_14:
	mov	r0, 3
	jg	r3, r0, .LBB48_13
	jmp	.LBB48_17
.LBB48_15:                              // %.preheader12
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [r7]
	mov	[t1], r0
	mov	r4, r7
	add	r4, 16
	mov	r0, [r4]
	mov	r5, t1
	add	r5, 16
	mov	[r5], r0
	mov	r0, r7
	add	r0, 32
	mov	r0, [r0]
	mov	r1, t1
	add	r1, 32
	mov	[r1], r0
	mov	r0, r7
	add	r0, 48
	mov	r0, [r0]
	mov	r1, t1
	add	r1, 48
	mov	[r1], r0
	add	r3, -16
	add	r7, 64
	mov	r1, -2147483648
	add	t1, 64
	mov	r0, r3
	call	__bit_xor
	jg	rax, r6, .LBB48_15
	jmp	.LBB48_14
.LBB48_16:                              // =>This Inner Loop Header: Depth=1
	mov	r0, [r4]
	add	r4, 4
	mov	[r5], r0
	add	r3, -4
	add	r5, 4
	mov	r0, r3
	call	__bit_xor
	jg	rax, r6, .LBB48_16
	jmp	.LBB48_17
.LBB48_17:                              // %.loopexit11
	jz	r3, .LBB48_20
	jmp	.LBB48_18
.LBB48_18:                              // %.preheader61
	mov	r1, 255
.LBB48_19:                              // =>This Inner Loop Header: Depth=1
	mov	r0, [r4]
	add	r3, -1
	add	r4, 1
	call	__bit_and
	mov	[r5], rax
	add	r5, 1
	jnz	r3, .LBB48_19
	jmp	.LBB48_20
.LBB48_20:                              // %.loopexit
	mov	rax, r2
	ret
// -- End function
// -- Begin function mempcpy
mempcpy:                                // @mempcpy
// %bb.0:
	mov	r3, r1
	mov	r1, -2147483648
	mov	r4, r0
	mov	r0, r2
	call	__bit_xor
	mov	r0, -2147483644
	jl	rax, r0, .LBB49_8
	jmp	.LBB49_1
.LBB49_1:
	mov	r0, r3
	mov	r1, r4
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB49_9
	jmp	.LBB49_2
.LBB49_2:
	mov	r1, -2147483648
	mov	r0, r2
	call	__bit_xor
	mov	r0, -2147483632
	jl	rax, r0, .LBB49_4
	jmp	.LBB49_3
.LBB49_3:                               // %.preheader.preheader
	mov	r5, -2147483633
	mov	r6, r3
	mov	r7, r4
	jmp	.LBB49_6
.LBB49_4:                               // %.preheader35
	mov	r5, -2147483645
	jmp	.LBB49_7
.LBB49_5:
	mov	r0, 3
	jg	r2, r0, .LBB49_4
	jmp	.LBB49_8
.LBB49_6:                               // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [r6]
	mov	[r7], r0
	mov	r3, r6
	add	r3, 16
	mov	r0, [r3]
	mov	r4, r7
	add	r4, 16
	mov	[r4], r0
	mov	r0, r6
	add	r0, 32
	mov	r0, [r0]
	mov	r1, r7
	add	r1, 32
	mov	[r1], r0
	mov	r0, r6
	add	r0, 48
	mov	r0, [r0]
	mov	r1, r7
	add	r1, 48
	mov	[r1], r0
	add	r2, -16
	add	r6, 64
	mov	r1, -2147483648
	add	r7, 64
	mov	r0, r2
	call	__bit_xor
	jg	rax, r5, .LBB49_6
	jmp	.LBB49_5
.LBB49_7:                               // =>This Inner Loop Header: Depth=1
	mov	r0, [r3]
	add	r3, 4
	mov	[r4], r0
	add	r2, -4
	add	r4, 4
	mov	r0, r2
	call	__bit_xor
	jg	rax, r5, .LBB49_7
	jmp	.LBB49_8
.LBB49_8:                               // %.loopexit4
	jz	r2, .LBB49_11
	jmp	.LBB49_9
.LBB49_9:                               // %.preheader32
	mov	r1, 255
.LBB49_10:                              // =>This Inner Loop Header: Depth=1
	mov	r0, [r3]
	add	r2, -1
	add	r3, 1
	call	__bit_and
	mov	[r4], rax
	add	r4, 1
	jnz	r2, .LBB49_10
	jmp	.LBB49_11
.LBB49_11:                              // %.loopexit
	mov	rax, r4
	ret
// -- End function
// -- Begin function memrchr
memrchr:                                // @memrchr
// %bb.0:
	mov	r3, r1
	mov	r6, r0
	mov	r1, 3
	add	r6, r2
	call	__bit_and
	jz	rax, .LBB50_2
	jmp	.LBB50_1
.LBB50_1:                               // %.split.preheader
	add	r2, 1
	jmp	.LBB50_3
.LBB50_2:                               // %.split.us
	mov	r1, -2147483648
	mov	r0, r2
	call	__bit_xor
	mov	r0, -2147483644
	jl	rax, r0, .LBB50_8
	jmp	.LBB50_5
.LBB50_3:                               // %.split
                                        // =>This Inner Loop Header: Depth=1
	add	r2, -1
	mov	r4, 0
	jz	r2, .LBB50_12
	jmp	.LBB50_4
.LBB50_4:                               //   in Loop: Header=BB50_3 Depth=1
	mov	r1, 255
	mov	r0, r3
	call	__bit_and
	mov	r4, r6
	add	r6, -4
	mov	r0, [r6]
	mov	r5, rax
	add	r4, -1
	call	__bit_and
	mov	r6, r4
	je	rax, r5, .LBB50_12
	jmp	.LBB50_3
.LBB50_5:
	mov	r1, 255
	mov	r0, r3
	call	__bit_and
	mov	r4, rax
	mul	r4, 16843009
	mov	r5, -2139062144
	mov	r7, -2147483645
.LBB50_6:                               // =>This Inner Loop Header: Depth=1
	mov	r0, r6
	add	r0, -16
	mov	r0, [r0]
	mov	r1, r4
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, rax
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, r5, .LBB50_9
	jmp	.LBB50_7
.LBB50_7:                               //   in Loop: Header=BB50_6 Depth=1
	add	r2, -4
	mov	r1, -2147483648
	add	r6, -4
	mov	r0, r2
	call	__bit_xor
	jg	rax, r7, .LBB50_6
	jmp	.LBB50_8
.LBB50_8:                               // %.loopexit26
	mov	r4, 0
	jz	r2, .LBB50_12
	jmp	.LBB50_9
.LBB50_9:                               // %.preheader.preheader
	add	r6, -4
.LBB50_10:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 255
	mov	r0, r3
	call	__bit_and
	mov	r0, [r6]
	mov	r5, rax
	call	__bit_and
	mov	r4, r6
	je	rax, r5, .LBB50_12
	jmp	.LBB50_11
.LBB50_11:                              //   in Loop: Header=BB50_10 Depth=1
	add	r2, -1
	add	r6, -4
	mov	r4, 0
	jnz	r2, .LBB50_10
	jmp	.LBB50_12
.LBB50_12:                              // %.loopexit
	mov	rax, r4
	ret
// -- End function
// -- Begin function memset
memset:                                 // @memset
// %bb.0:
	mov	r3, r1
	mov	r1, 255
	mov	r4, r2
	mov	r2, r0
	mov	r0, r3
	call	__bit_and
	mov	r1, 3
	mov	r5, rax
	mov	r0, r2
	call	__bit_and
	jz	rax, .LBB51_4
	jmp	.LBB51_1
.LBB51_1:
	jz	r4, .LBB51_14
	jmp	.LBB51_2
.LBB51_2:                               // %.preheader5.preheader
	mov	r6, r2
	mov	r5, r6
	mov	r1, 255
.LBB51_3:                               // %.preheader5
                                        // =>This Inner Loop Header: Depth=1
	add	r4, -1
	add	r5, 1
	mov	r0, r3
	call	__bit_and
	mov	[r6], rax
	mov	r6, r5
	jz	r4, .LBB51_14
	jmp	.LBB51_3
.LBB51_4:
	mov	r1, -2147483648
	mov	r0, r4
	call	__bit_xor
	mov	r0, -2147483644
	mov	r6, r2
	jl	rax, r0, .LBB51_11
	jmp	.LBB51_5
.LBB51_5:
	mul	r5, 16843009
	mov	r0, r4
	call	__bit_xor
	mov	r0, -2147483632
	mov	r6, r2
	jl	rax, r0, .LBB51_7
	jmp	.LBB51_6
.LBB51_6:                               // %.preheader.preheader
	mov	r7, -2147483633
	mov	t1, r2
	jmp	.LBB51_9
.LBB51_7:                               // %.preheader25
	mov	r7, -2147483645
	mov	r1, -2147483648
	jmp	.LBB51_10
.LBB51_8:
	mov	r0, 3
	jg	r4, r0, .LBB51_7
	jmp	.LBB51_11
.LBB51_9:                               // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	[t1], r5
	mov	r6, t1
	add	r6, 16
	mov	[r6], r5
	mov	r0, t1
	add	r0, 32
	mov	[r0], r5
	mov	r0, t1
	add	r0, 48
	mov	[r0], r5
	add	r4, -16
	add	t1, 64
	mov	r0, r4
	call	__bit_xor
	jg	rax, r7, .LBB51_9
	jmp	.LBB51_8
.LBB51_10:                              // =>This Inner Loop Header: Depth=1
	mov	[r6], r5
	add	r4, -4
	add	r6, 4
	mov	r0, r4
	call	__bit_xor
	jg	rax, r7, .LBB51_10
	jmp	.LBB51_11
.LBB51_11:                              // %.loopexit4
	jz	r4, .LBB51_14
	jmp	.LBB51_12
.LBB51_12:
	mov	r5, r6
	mov	r1, 255
.LBB51_13:                              // =>This Inner Loop Header: Depth=1
	add	r4, -1
	add	r5, 1
	mov	r0, r3
	call	__bit_and
	mov	[r6], rax
	mov	r6, r5
	jnz	r4, .LBB51_13
	jmp	.LBB51_14
.LBB51_14:                              // %.loopexit
	mov	rax, r2
	ret
// -- End function
// -- Begin function rawmemchr
rawmemchr:                              // @rawmemchr
// %bb.0:
	mov	r2, r1
	mov	r1, 3
	mov	r4, r0
	call	__bit_and
	jz	rax, .LBB52_3
	jmp	.LBB52_1
.LBB52_1:
	add	r4, -4
	mov	r3, r4
.LBB52_2:                               // =>This Inner Loop Header: Depth=1
	mov	r1, 255
	mov	r0, r2
	call	__bit_and
	add	r3, 4
	mov	r0, [r3]
	mov	r4, rax
	call	__bit_and
	je	rax, r4, .LBB52_7
	jmp	.LBB52_2
.LBB52_3:
	mov	r1, 255
	mov	r0, r2
	call	__bit_and
	mov	r5, rax
	mul	r5, 16843009
	mov	r3, r4
	add	r3, -80
	mov	r6, -2139062144
.LBB52_4:                               // =>This Inner Loop Header: Depth=1
	mov	r0, [r4]
	mov	r1, r5
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, rax
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	add	r4, 4
	add	r3, 64
	je	rax, r6, .LBB52_4
	jmp	.LBB52_5
.LBB52_5:
.LBB52_6:                               // =>This Inner Loop Header: Depth=1
	mov	r1, 255
	mov	r0, r2
	call	__bit_and
	add	r3, 4
	mov	r0, [r3]
	mov	r4, rax
	call	__bit_and
	jne	rax, r4, .LBB52_6
	jmp	.LBB52_7
.LBB52_7:                               // %.loopexit
	mov	rax, r3
	ret
// -- End function
// -- Begin function rindex
rindex:                                 // @rindex
// %bb.0:
	mov	r4, r1
	mov	r1, 255
	mov	r3, r0
	mov	r0, r4
	call	__bit_and
	mov	r5, rax
	jz	r5, .LBB53_16
	jmp	.LBB53_1
.LBB53_1:                               // %.preheader.split.preheader.i
	mul	r5, 16843009
	mov	r2, 0
	mov	t1, -2139062144
.LBB53_2:                               // %.preheader.split.i
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB53_7 Depth 2
                                        //     Child Loop BB53_9 Depth 2
                                        //     Child Loop BB53_12 Depth 2
	mov	r1, 3
	mov	r0, r3
	call	__bit_and
	jz	rax, .LBB53_5
	jmp	.LBB53_3
.LBB53_3:                               //   in Loop: Header=BB53_2 Depth=1
	mov	r6, [r3]
	mov	r1, 255
	mov	r0, r6
	call	__bit_and
	jz	rax, .LBB53_23
	jmp	.LBB53_4
.LBB53_4:                               // %.lr.ph.i.i.preheader
                                        //   in Loop: Header=BB53_2 Depth=1
	jmp	.LBB53_7
.LBB53_5:                               //   in Loop: Header=BB53_2 Depth=1
	mov	r6, [r3]
	mov	r0, 16843008
	sub	r0, r6
	mov	r1, r6
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, t1, .LBB53_11
	jmp	.LBB53_6
.LBB53_6:                               // %.preheader5.i.i.preheader
                                        //   in Loop: Header=BB53_2 Depth=1
	jmp	.LBB53_9
.LBB53_7:                               // %.lr.ph.i.i
                                        //   Parent Loop BB53_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 255
	mov	r0, r4
	call	__bit_and
	mov	r7, rax
	mov	r0, r6
	call	__bit_and
	je	rax, r7, .LBB53_15
	jmp	.LBB53_8
.LBB53_8:                               //   in Loop: Header=BB53_7 Depth=2
	mov	r7, r3
	add	r3, 4
	mov	r6, [r3]
	add	r7, 1
	mov	r0, r6
	call	__bit_and
	mov	r3, r7
	jz	rax, .LBB53_23
	jmp	.LBB53_7
.LBB53_9:                               // %.preheader5.i.i
                                        //   Parent Loop BB53_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, r6
	mov	r1, r5
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, rax
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, t1, .LBB53_11
	jmp	.LBB53_10
.LBB53_10:                              //   in Loop: Header=BB53_9 Depth=2
	mov	r7, r3
	add	r3, 16
	mov	r6, [r3]
	mov	r0, 16843008
	sub	r0, r6
	add	r7, 4
	mov	r1, r6
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	mov	r3, r7
	je	rax, t1, .LBB53_9
	jmp	.LBB53_11
.LBB53_11:                              // %.loopexit6.i.i.preheader
                                        //   in Loop: Header=BB53_2 Depth=1
	add	r3, -4
.LBB53_12:                              // %.loopexit6.i.i
                                        //   Parent Loop BB53_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	r3, 4
	mov	r6, [r3]
	mov	r1, 255
	mov	r0, r6
	call	__bit_and
	jz	rax, .LBB53_14
	jmp	.LBB53_13
.LBB53_13:                              // %.loopexit6.i.i
                                        //   in Loop: Header=BB53_12 Depth=2
	mov	r0, r4
	call	__bit_and
	mov	r7, rax
	mov	r0, r6
	call	__bit_and
	jne	rax, r7, .LBB53_12
	jmp	.LBB53_14
.LBB53_14:                              //   in Loop: Header=BB53_2 Depth=1
	mov	r0, r6
	call	__bit_and
	mov	r6, rax
	mov	r0, r4
	call	__bit_and
	jne	r6, rax, .LBB53_23
	jmp	.LBB53_15
.LBB53_15:                              // %strchr.exit.i
                                        //   in Loop: Header=BB53_2 Depth=1
	mov	r0, r3
	add	r0, 1
	mov	r2, r3
	mov	r3, r0
	jmp	.LBB53_2
.LBB53_16:
	mov	r1, 3
	mov	r0, r3
	call	__bit_and
	jz	rax, .LBB53_18
	jmp	.LBB53_17
.LBB53_17:                              // %.preheader3.i1.i.preheader
	add	r3, -4
	mov	r2, r3
	mov	r1, 255
	jmp	.LBB53_19
.LBB53_18:                              // %.preheader2.i2.i.preheader
	mov	r2, r3
	add	r2, -80
	mov	r4, -2139062144
	jmp	.LBB53_20
.LBB53_19:                              // %.preheader3.i1.i
                                        // =>This Inner Loop Header: Depth=1
	add	r2, 4
	mov	r0, [r2]
	call	__bit_and
	jz	rax, .LBB53_23
	jmp	.LBB53_19
.LBB53_20:                              // %.preheader2.i2.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, [r3]
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	add	r3, 4
	add	r2, 64
	je	rax, r4, .LBB53_20
	jmp	.LBB53_21
.LBB53_21:                              // %.preheader.i3.i.preheader
	mov	r1, 255
.LBB53_22:                              // %.preheader.i3.i
                                        // =>This Inner Loop Header: Depth=1
	add	r2, 4
	mov	r0, [r2]
	call	__bit_and
	jnz	rax, .LBB53_22
	jmp	.LBB53_23
.LBB53_23:                              // %strrchr.exit
	mov	rax, r2
	ret
// -- End function
// -- Begin function stpcpy
stpcpy:                                 // @stpcpy
// %bb.0:
	mov	r3, r1
	mov	r2, r0
	mov	r0, r3
	mov	r1, r2
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB54_4
	jmp	.LBB54_1
.LBB54_1:
	mov	r4, [r3]
	mov	r0, 16843008
	sub	r0, r4
	mov	r1, r4
	call	__bit_or
	mov	r1, -2139062144
	mov	r5, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, r5, .LBB54_4
	jmp	.LBB54_2
.LBB54_2:                               // %.preheader.preheader
	mov	r0, r3
.LBB54_3:                               // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	add	r0, 16
	mov	[r2], r4
	mov	r4, [r0]
	add	r3, 4
	mov	r0, 16843008
	sub	r0, r4
	add	r2, 4
	mov	r1, r4
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	mov	r0, r3
	je	rax, r5, .LBB54_3
	jmp	.LBB54_4
.LBB54_4:                               // %.loopexit.preheader
	add	r2, -4
	mov	r1, 255
.LBB54_5:                               // %.loopexit
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [r3]
	add	r2, 4
	add	r3, 1
	call	__bit_and
	mov	[r2], rax
	jnz	rax, .LBB54_5
	jmp	.LBB54_6
.LBB54_6:
	mov	rax, r2
	ret
// -- End function
// -- Begin function stpncpy
stpncpy:                                // @stpncpy
// %bb.0:
	mov	r3, r2
	mov	r4, r1
	mov	r2, r0
	mov	r0, r4
	mov	r1, r2
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	mov	r1, -2147483648
	mov	r5, rax
	mov	r0, r3
	call	__bit_xor
	mov	r0, -2147483644
	jl	rax, r0, .LBB55_5
	jmp	.LBB55_1
.LBB55_1:
	jnz	r5, .LBB55_5
	jmp	.LBB55_2
.LBB55_2:                               // %.preheader5.preheader
	mov	r6, -2139062144
	mov	r7, -2147483645
.LBB55_3:                               // %.preheader5
                                        // =>This Inner Loop Header: Depth=1
	mov	r5, [r4]
	mov	r0, 16843008
	sub	r0, r5
	mov	r1, r5
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, r6, .LBB55_5
	jmp	.LBB55_4
.LBB55_4:                               //   in Loop: Header=BB55_3 Depth=1
	add	r3, -4
	add	r4, 4
	mov	[r2], r5
	mov	r1, -2147483648
	add	r2, 4
	mov	r0, r3
	call	__bit_xor
	jg	rax, r7, .LBB55_3
	jmp	.LBB55_5
.LBB55_5:                               // %.loopexit6.preheader
	mov	r5, 0
	mov	r1, 255
.LBB55_6:                               // %.loopexit6
                                        // =>This Inner Loop Header: Depth=1
	jz	r3, .LBB55_11
	jmp	.LBB55_7
.LBB55_7:                               //   in Loop: Header=BB55_6 Depth=1
	mov	r0, [r4]
	add	r3, -1
	add	r4, 1
	call	__bit_and
	mov	[r2], rax
	add	r2, 1
	jnz	rax, .LBB55_6
	jmp	.LBB55_8
.LBB55_8:
	mov	r5, r2
	add	r5, -4
	jz	r3, .LBB55_11
	jmp	.LBB55_9
.LBB55_9:                               // %.preheader.preheader
	mov	r0, 0
.LBB55_10:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	[r2], 0
	add	r0, 1
	add	r2, 1
	jne	r3, r0, .LBB55_10
	jmp	.LBB55_11
.LBB55_11:                              // %.loopexit
	mov	r0, r5
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	sub	r2, r5
	add	rax, 1
	mov	r0, rax
	mov	r1, r2
	call	__bit_and
	add	rax, r5
	ret
// -- End function
// -- Begin function strcat
strcat:                                 // @strcat
// %bb.0:
	mov	r2, r1
	mov	r1, 3
	mov	r3, r0
	call	__bit_and
	jz	rax, .LBB56_3
	jmp	.LBB56_1
.LBB56_1:                               // %.preheader2.preheader
	mov	r4, r3
	add	r4, -4
	mov	r1, 255
.LBB56_2:                               // %.preheader2
                                        // =>This Inner Loop Header: Depth=1
	add	r4, 4
	mov	r0, [r4]
	call	__bit_and
	jz	rax, .LBB56_8
	jmp	.LBB56_2
.LBB56_3:
	mov	r0, [r3]
	mov	r1, 255
	call	__bit_and
	mov	r4, r3
	jz	rax, .LBB56_8
	jmp	.LBB56_4
.LBB56_4:                               // %.preheader1.preheader
	mov	r4, r3
	add	r4, -80
	mov	r5, -2139062144
	mov	r6, r3
.LBB56_5:                               // %.preheader1
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, [r6]
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	add	r6, 4
	add	r4, 64
	je	rax, r5, .LBB56_5
	jmp	.LBB56_6
.LBB56_6:                               // %.preheader.preheader
	mov	r1, 255
.LBB56_7:                               // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	add	r4, 4
	mov	r0, [r4]
	call	__bit_and
	jnz	rax, .LBB56_7
	jmp	.LBB56_8
.LBB56_8:                               // %.loopexit
	mov	r0, r4
	mov	r1, r2
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB56_12
	jmp	.LBB56_9
.LBB56_9:
	mov	r5, [r2]
	mov	r0, 16843008
	sub	r0, r5
	mov	r1, r5
	call	__bit_or
	mov	r1, -2139062144
	mov	r6, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, r6, .LBB56_12
	jmp	.LBB56_10
.LBB56_10:                              // %.preheader.i.preheader
	mov	r0, r2
.LBB56_11:                              // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	add	r0, 16
	mov	[r4], r5
	mov	r5, [r0]
	add	r2, 4
	mov	r0, 16843008
	sub	r0, r5
	add	r4, 4
	mov	r1, r5
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	mov	r0, r2
	je	rax, r6, .LBB56_11
	jmp	.LBB56_12
.LBB56_12:                              // %.loopexit.i.preheader
	mov	r1, 255
.LBB56_13:                              // %.loopexit.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [r2]
	add	r2, 1
	call	__bit_and
	mov	[r4], rax
	add	r4, 1
	jnz	rax, .LBB56_13
	jmp	.LBB56_14
.LBB56_14:                              // %strcpy.exit
	mov	rax, r3
	ret
// -- End function
// -- Begin function strchr
strchr:                                 // @strchr
// %bb.0:
	mov	r3, r1
	mov	r1, 255
	mov	r2, r0
	mov	r0, r3
	call	__bit_and
	mov	r1, 3
	mov	r4, rax
	mov	r0, r2
	call	__bit_and
	jz	r4, .LBB57_4
	jmp	.LBB57_1
.LBB57_1:
	jz	rax, .LBB57_11
	jmp	.LBB57_2
.LBB57_2:
	mov	r5, [r2]
	mov	r1, 255
	mov	r0, r5
	call	__bit_and
	mov	r4, 0
	jz	rax, .LBB57_21
	jmp	.LBB57_3
.LBB57_3:                               // %.lr.ph.preheader
	jmp	.LBB57_13
.LBB57_4:
	jz	rax, .LBB57_6
	jmp	.LBB57_5
.LBB57_5:                               // %.preheader3.preheader
	add	r2, -4
	mov	r4, r2
	mov	r1, 255
	jmp	.LBB57_7
.LBB57_6:                               // %.preheader2.preheader
	mov	r4, r2
	add	r4, -80
	mov	r3, -2139062144
	jmp	.LBB57_8
.LBB57_7:                               // %.preheader3
                                        // =>This Inner Loop Header: Depth=1
	add	r4, 4
	mov	r0, [r4]
	call	__bit_and
	jz	rax, .LBB57_21
	jmp	.LBB57_7
.LBB57_8:                               // %.preheader2
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, [r2]
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	add	r2, 4
	add	r4, 64
	je	rax, r3, .LBB57_8
	jmp	.LBB57_9
.LBB57_9:                               // %.preheader.preheader
	mov	r1, 255
.LBB57_10:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	add	r4, 4
	mov	r0, [r4]
	call	__bit_and
	jz	rax, .LBB57_21
	jmp	.LBB57_10
.LBB57_11:
	mov	r5, [r2]
	mov	r0, 16843008
	sub	r0, r5
	mov	r1, r5
	call	__bit_or
	mov	r1, -2139062144
	mov	r6, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, r6, .LBB57_17
	jmp	.LBB57_12
.LBB57_12:                              // %.preheader5.preheader
	mul	r4, 16843009
	jmp	.LBB57_15
.LBB57_13:                              // %.lr.ph
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 255
	mov	r0, r3
	call	__bit_and
	mov	r6, rax
	mov	r0, r5
	call	__bit_and
	mov	r4, r2
	je	rax, r6, .LBB57_21
	jmp	.LBB57_14
.LBB57_14:                              //   in Loop: Header=BB57_13 Depth=1
	mov	r4, r2
	add	r2, 4
	mov	r5, [r2]
	add	r4, 1
	mov	r0, r5
	call	__bit_and
	mov	r2, r4
	mov	r4, 0
	jz	rax, .LBB57_21
	jmp	.LBB57_13
.LBB57_15:                              // %.preheader5
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r5
	mov	r1, r4
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, rax
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, r6, .LBB57_17
	jmp	.LBB57_16
.LBB57_16:                              //   in Loop: Header=BB57_15 Depth=1
	mov	r7, r2
	add	r2, 16
	mov	r5, [r2]
	mov	r0, 16843008
	sub	r0, r5
	add	r7, 4
	mov	r1, r5
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	mov	r2, r7
	je	rax, r6, .LBB57_15
	jmp	.LBB57_17
.LBB57_17:                              // %.loopexit6
	add	r2, -4
.LBB57_18:                              // =>This Inner Loop Header: Depth=1
	add	r2, 4
	mov	r4, [r2]
	mov	r1, 255
	mov	r0, r4
	call	__bit_and
	jz	rax, .LBB57_20
	jmp	.LBB57_19
.LBB57_19:                              //   in Loop: Header=BB57_18 Depth=1
	mov	r0, r3
	call	__bit_and
	mov	r5, rax
	mov	r0, r4
	call	__bit_and
	jne	rax, r5, .LBB57_18
	jmp	.LBB57_20
.LBB57_20:
	mov	r0, r4
	call	__bit_and
	mov	r4, rax
	mov	r0, r3
	call	__bit_and
	mov	r0, r4
	mov	r1, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r0, rax
	mov	r1, r2
	call	__bit_and
	mov	r4, rax
.LBB57_21:                              // %.loopexit
	mov	rax, r4
	ret
// -- End function
// -- Begin function strchrnul
strchrnul:                              // @strchrnul
// %bb.0:
	mov	r4, r1
	mov	r1, 255
	mov	r2, r0
	mov	r0, r4
	call	__bit_and
	mov	r1, 3
	mov	r5, rax
	mov	r0, r2
	call	__bit_and
	jz	r5, .LBB58_4
	jmp	.LBB58_1
.LBB58_1:
	jz	rax, .LBB58_11
	jmp	.LBB58_2
.LBB58_2:
	mov	r5, [r2]
	mov	r1, 255
	mov	r0, r5
	call	__bit_and
	mov	r3, r2
	jz	rax, .LBB58_27
	jmp	.LBB58_3
.LBB58_3:                               // %.lr.ph.i.preheader
	mov	r3, r2
	jmp	.LBB58_13
.LBB58_4:
	jz	rax, .LBB58_6
	jmp	.LBB58_5
.LBB58_5:                               // %.preheader3.i.preheader
	add	r2, -4
	mov	r3, r2
	mov	r1, 255
	jmp	.LBB58_7
.LBB58_6:                               // %.preheader2.i.preheader
	mov	r3, r2
	add	r3, -80
	mov	r4, -2139062144
	jmp	.LBB58_8
.LBB58_7:                               // %.preheader3.i
                                        // =>This Inner Loop Header: Depth=1
	add	r3, 4
	mov	r0, [r3]
	call	__bit_and
	jz	rax, .LBB58_28
	jmp	.LBB58_7
.LBB58_8:                               // %.preheader2.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, [r2]
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	add	r2, 4
	add	r3, 64
	je	rax, r4, .LBB58_8
	jmp	.LBB58_9
.LBB58_9:                               // %.preheader.i.preheader
	mov	r1, 255
.LBB58_10:                              // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	add	r3, 4
	mov	r0, [r3]
	call	__bit_and
	jz	rax, .LBB58_28
	jmp	.LBB58_10
.LBB58_11:
	mov	r6, [r2]
	mov	r0, 16843008
	sub	r0, r6
	mov	r1, r6
	call	__bit_or
	mov	r1, -2139062144
	mov	r7, -2139062144
	mov	r0, rax
	call	__bit_and
	mov	r3, r2
	jne	rax, r7, .LBB58_18
	jmp	.LBB58_12
.LBB58_12:                              // %.preheader5.i.preheader
	mul	r5, 16843009
	mov	r3, r2
	jmp	.LBB58_16
.LBB58_13:                              // %.lr.ph.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 255
	mov	r0, r4
	call	__bit_and
	mov	r6, rax
	mov	r0, r5
	call	__bit_and
	je	rax, r6, .LBB58_28
	jmp	.LBB58_14
.LBB58_14:                              //   in Loop: Header=BB58_13 Depth=1
	mov	r6, r3
	add	r3, 4
	mov	r5, [r3]
	add	r6, 1
	mov	r0, r5
	call	__bit_and
	mov	r3, r6
	jnz	rax, .LBB58_13
	jmp	.LBB58_15
.LBB58_15:                              // %.preheader2.i1.preheader
	mov	r4, r2
	add	r4, 4
	mov	r3, r2
	jmp	.LBB58_23
.LBB58_16:                              // %.preheader5.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r6
	mov	r1, r5
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, rax
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, r7, .LBB58_18
	jmp	.LBB58_17
.LBB58_17:                              //   in Loop: Header=BB58_16 Depth=1
	mov	t1, r3
	add	r3, 16
	mov	r6, [r3]
	mov	r0, 16843008
	sub	r0, r6
	add	t1, 4
	mov	r1, r6
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	mov	r3, t1
	je	rax, r7, .LBB58_16
	jmp	.LBB58_18
.LBB58_18:                              // %.loopexit6.i
	add	r3, -4
.LBB58_19:                              // =>This Inner Loop Header: Depth=1
	add	r3, 4
	mov	r5, [r3]
	mov	r1, 255
	mov	r0, r5
	call	__bit_and
	jz	rax, .LBB58_21
	jmp	.LBB58_20
.LBB58_20:                              //   in Loop: Header=BB58_19 Depth=1
	mov	r0, r4
	call	__bit_and
	mov	r6, rax
	mov	r0, r5
	call	__bit_and
	jne	rax, r6, .LBB58_19
	jmp	.LBB58_21
.LBB58_21:
	mov	r0, r5
	call	__bit_and
	mov	r5, rax
	mov	r0, r4
	call	__bit_and
	je	r5, rax, .LBB58_28
	jmp	.LBB58_22
.LBB58_22:                              // %.preheader1.i.preheader
	mov	r4, r2
	add	r4, -4
	mov	r5, -2139062144
	jmp	.LBB58_24
.LBB58_23:                              // %.preheader2.i1
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [r4]
	call	__bit_and
	add	r3, 4
	add	r4, 4
	jz	rax, .LBB58_27
	jmp	.LBB58_23
.LBB58_24:                              // %.preheader1.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, [r2]
	mov	r0, 16843008
	sub	r0, r1
	mov	r3, r4
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	add	r2, 4
	add	r4, 16
	je	rax, r5, .LBB58_24
	jmp	.LBB58_25
.LBB58_25:                              // %.preheader.i2.preheader
	mov	r4, -16
	mov	r1, 255
.LBB58_26:                              // %.preheader.i2
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r2
	add	r0, r4
	mov	r0, [r0]
	call	__bit_and
	add	r3, 4
	add	r4, 4
	jnz	rax, .LBB58_26
	jmp	.LBB58_27
.LBB58_27:                              // %strlen.exit
.LBB58_28:                              // %strchr.exit.thread
	mov	rax, r3
	ret
// -- End function
// -- Begin function strcmp
strcmp:                                 // @strcmp
// %bb.0:
	mov	r2, r1
	mov	r3, r0
	mov	r0, r2
	mov	r1, r3
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB59_2
	jmp	.LBB59_1
.LBB59_1:
	mov	r4, [r3]
	jmp	.LBB59_7
.LBB59_2:
	mov	r4, [r3]
	mov	r0, [r2]
	jne	r4, r0, .LBB59_7
	jmp	.LBB59_3
.LBB59_3:                               // %.preheader5.preheader
	mov	r6, -2139062144
.LBB59_4:                               // %.preheader5
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, 16843008
	sub	r0, r4
	mov	r1, r4
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	mov	r5, 0
	jne	rax, r6, .LBB59_13
	jmp	.LBB59_5
.LBB59_5:                               //   in Loop: Header=BB59_4 Depth=1
	mov	r0, r3
	mov	r1, r2
	add	r2, 16
	add	r3, 16
	mov	r4, [r3]
	mov	r5, [r2]
	add	r0, 4
	add	r1, 4
	mov	r2, r1
	mov	r3, r0
	je	r4, r5, .LBB59_4
	jmp	.LBB59_6
.LBB59_6:
	mov	r3, r0
	mov	r2, r1
.LBB59_7:
	mov	r1, 255
	mov	r0, r4
	call	__bit_and
	mov	r5, 0
	jz	rax, .LBB59_12
	jmp	.LBB59_8
.LBB59_8:                               // %.preheader.preheader
	add	r3, 4
.LBB59_9:                               // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [r2]
	mov	r1, 255
	call	__bit_and
	mov	r5, rax
	mov	r0, r4
	call	__bit_and
	jne	rax, r5, .LBB59_11
	jmp	.LBB59_10
.LBB59_10:                              //   in Loop: Header=BB59_9 Depth=1
	mov	r4, [r3]
	add	r2, 1
	mov	r0, r4
	call	__bit_and
	add	r3, 4
	mov	r0, 0
	jnz	rax, .LBB59_9
	jmp	.LBB59_11
.LBB59_11:
	call	__bit_and
	mov	r5, rax
.LBB59_12:
	mov	r0, [r2]
	call	__bit_and
	sub	r5, rax
.LBB59_13:                              // %.loopexit
	mov	rax, r5
	ret
// -- End function
// -- Begin function strcpy
strcpy:                                 // @strcpy
// %bb.0:
	mov	r3, r1
	mov	r2, r0
	mov	r0, r3
	mov	r1, r2
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	mov	r5, r2
	jnz	rax, .LBB60_4
	jmp	.LBB60_1
.LBB60_1:
	mov	r4, [r3]
	mov	r0, 16843008
	sub	r0, r4
	mov	r1, r4
	call	__bit_or
	mov	r1, -2139062144
	mov	r6, -2139062144
	mov	r0, rax
	call	__bit_and
	mov	r5, r2
	jne	rax, r6, .LBB60_4
	jmp	.LBB60_2
.LBB60_2:                               // %.preheader.preheader
	mov	r0, r3
	mov	r5, r2
.LBB60_3:                               // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	add	r0, 16
	mov	[r5], r4
	mov	r4, [r0]
	add	r3, 4
	mov	r0, 16843008
	sub	r0, r4
	add	r5, 4
	mov	r1, r4
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	mov	r0, r3
	je	rax, r6, .LBB60_3
	jmp	.LBB60_4
.LBB60_4:                               // %.loopexit.preheader
	mov	r1, 255
.LBB60_5:                               // %.loopexit
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [r3]
	add	r3, 1
	call	__bit_and
	mov	[r5], rax
	add	r5, 1
	jnz	rax, .LBB60_5
	jmp	.LBB60_6
.LBB60_6:
	mov	rax, r2
	ret
// -- End function
// -- Begin function strcspn
strcspn:                                // @strcspn
// %bb.0:
	mov	r2, r0
	mov	r5, [r2]
	mov	r3, r1
	mov	r1, 255
	mov	r0, r5
	call	__bit_and
	mov	r4, r2
	jz	rax, .LBB61_9
	jmp	.LBB61_1
.LBB61_1:
	mov	r6, [r3]
	mov	r0, r6
	call	__bit_and
	jz	rax, .LBB61_3
	jmp	.LBB61_2
.LBB61_2:                               // %.preheader4.preheader
	add	r3, 4
	mov	r4, r2
	jmp	.LBB61_5
.LBB61_3:                               // %.preheader.preheader
	mov	r0, r2
	mov	r4, r0
.LBB61_4:                               // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	add	r0, 4
	mov	r0, [r0]
	add	r4, 1
	call	__bit_and
	mov	r0, r4
	jz	rax, .LBB61_9
	jmp	.LBB61_4
.LBB61_5:                               // %.preheader4
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB61_7 Depth 2
	mov	t1, r3
	mov	r0, r6
	jmp	.LBB61_7
.LBB61_6:                               //   in Loop: Header=BB61_7 Depth=2
	mov	r0, [t1]
	call	__bit_and
	add	t1, 4
	jz	rax, .LBB61_8
	jmp	.LBB61_7
.LBB61_7:                               //   Parent Loop BB61_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 255
	call	__bit_and
	mov	r7, rax
	mov	r0, r5
	call	__bit_and
	je	rax, r7, .LBB61_9
	jmp	.LBB61_6
.LBB61_8:                               //   in Loop: Header=BB61_5 Depth=1
	add	r4, 1
	mov	r5, [r4]
	mov	r0, r5
	call	__bit_and
	jnz	rax, .LBB61_5
	jmp	.LBB61_9
.LBB61_9:                               // %.loopexit
	sub	r4, r2
	mov	rax, r4
	ret
// -- End function
// -- Begin function strdup
strdup:                                 // @strdup
// %bb.0:
	mov	r1, 3
	mov	r2, r0
	call	__bit_and
	jnz	rax, .LBB62_2
	jmp	.LBB62_1
.LBB62_1:                               // %.preheader1.i.preheader
	mov	r4, r2
	add	r4, -4
	mov	r6, -2139062144
	mov	r3, r2
	jmp	.LBB62_5
.LBB62_2:
	mov	r0, [r2]
	mov	r1, 255
	call	__bit_and
	mov	r5, r2
	jz	rax, .LBB62_8
	jmp	.LBB62_3
.LBB62_3:                               // %.preheader2.i.preheader
	mov	r3, r2
	add	r3, 4
	mov	r5, r2
.LBB62_4:                               // %.preheader2.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [r3]
	call	__bit_and
	add	r5, 4
	add	r3, 4
	jz	rax, .LBB62_8
	jmp	.LBB62_4
.LBB62_5:                               // %.preheader1.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, [r3]
	mov	r0, 16843008
	sub	r0, r1
	mov	r5, r4
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	add	r3, 4
	add	r4, 16
	je	rax, r6, .LBB62_5
	jmp	.LBB62_6
.LBB62_6:                               // %.preheader.i.preheader
	mov	r4, -16
	mov	r1, 255
.LBB62_7:                               // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r3
	add	r0, r4
	mov	r0, [r0]
	call	__bit_and
	add	r5, 4
	add	r4, 4
	jnz	rax, .LBB62_7
	jmp	.LBB62_8
.LBB62_8:                               // %strlen.exit
	sub	r5, r2
	add	r5, 1
	mov	r0, r5
	call	malloc
	mov	r3, rax
	jz	r3, .LBB62_25
	jmp	.LBB62_9
.LBB62_9:
	mov	r1, -2147483648
	mov	r0, r5
	call	__bit_xor
	mov	r0, -2147483632
	mov	t4, r3
	jl	rax, r0, .LBB62_22
	jmp	.LBB62_10
.LBB62_10:
	mov	r1, 3
	mov	r0, r3
	call	__bit_and
	mov	r4, rax
	mov	r6, 8
	sub	r6, r4
	mov	t4, r3
	mov	r1, 255
.LBB62_11:                              // =>This Inner Loop Header: Depth=1
	mov	r0, [r2]
	add	r6, -1
	add	r2, 1
	call	__bit_and
	mov	[t4], rax
	add	t4, 1
	jnz	r6, .LBB62_11
	jmp	.LBB62_12
.LBB62_12:
	mov	r1, -8
	mov	r0, r4
	call	__bit_or
	mov	r4, rax
	mov	r1, 3
	add	r4, r5
	mov	r0, r2
	call	__bit_and
	mov	r5, rax
	jnz	r5, .LBB62_19
	jmp	.LBB62_13
.LBB62_13:
	mov	r1, -2147483648
	mov	r0, r4
	call	__bit_xor
	mov	r0, -2147483632
	jl	rax, r0, .LBB62_15
	jmp	.LBB62_14
.LBB62_14:                              // %.preheader.i1.preheader
	mov	r5, 0
	mov	r6, -2147483633
	mov	r7, t4
	mov	t1, r2
	jmp	.LBB62_17
.LBB62_15:                              // %.preheader64
	mov	r6, -2147483645
	mov	r5, r4
	jmp	.LBB62_18
.LBB62_16:
	add	t4, r5
	mov	r0, 3
	add	r2, r5
	mov	r5, r4
	jg	r4, r0, .LBB62_15
	jmp	.LBB62_22
.LBB62_17:                              // %.preheader.i1
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r2
	add	r0, r5
	mov	r0, [r0]
	mov	r1, t4
	add	r1, r5
	mov	t0, t1
	add	t0, 4
	mov	[r1], r0
	mov	r0, [t0]
	mov	r1, r7
	add	r1, 4
	mov	t0, t1
	add	t0, 8
	mov	[r1], r0
	mov	r0, [t0]
	mov	r1, r7
	add	r1, 8
	mov	t0, t1
	add	t0, 12
	mov	t2, r7
	mov	[r1], r0
	mov	r0, [t0]
	add	t2, 12
	add	t1, 16
	add	r7, 16
	mov	[t2], r0
	add	r4, -16
	mov	r1, -2147483648
	add	r5, 64
	mov	r0, r4
	call	__bit_xor
	jg	rax, r6, .LBB62_17
	jmp	.LBB62_16
.LBB62_18:                              // =>This Inner Loop Header: Depth=1
	mov	r0, [r2]
	add	r2, 4
	mov	[t4], r0
	add	r5, -4
	add	t4, 4
	mov	r0, r5
	call	__bit_xor
	jg	rax, r6, .LBB62_18
	jmp	.LBB62_22
.LBB62_19:
	mov	r0, r5
	call	__bit_shl
	mov	r6, rax
	mov	r0, r2
	sub	r0, r5
	mov	t1, [r0]
	mov	r7, 8
	mov	r1, 4
	sub	r7, r5
	mov	r0, r5
	call	__bit_shl
	mov	t5, 0
	mov	t6, 0
	sub	t6, rax
	div	t6, 4
	add	t6, r2
.LBB62_20:                              // =>This Inner Loop Header: Depth=1
	mov	r0, t6
	add	r0, t5
	add	r0, 16
	mov	t2, [r0]
	mov	t7, t4
	mov	r1, 31
	add	t7, t5
	mov	r0, r6
	call	__bit_and
	mov	r0, t1
	mov	r1, rax
	call	__bit_shl
	mov	t1, rax
	mov	r0, r6
	call	__bit_not
	mov	r1, 31
	mov	r0, rax
	call	__bit_and
	mov	r1, 1
	mov	t3, rax
	mov	r0, t2
	call	__bit_shr
	mov	r0, rax
	mov	r1, t3
	call	__bit_shr
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	[t7], rax
	add	r4, -4
	mov	r1, -2147483648
	add	t5, 16
	mov	r0, r7
	call	__bit_xor
	mov	t3, rax
	mov	r0, r4
	call	__bit_xor
	mov	t1, t2
	jge	rax, t3, .LBB62_20
	jmp	.LBB62_21
.LBB62_21:
	mov	r1, -4
	mov	r0, r2
	call	__bit_or
	mov	r1, 2
	mov	r0, rax
	call	__bit_shl
	mov	r6, rax
	mov	r0, r5
	call	__bit_shl
	sub	r6, rax
	add	r6, r2
	add	r6, t5
	add	r6, 16
	add	t4, t5
	mov	r2, r6
	jmp	.LBB62_23
.LBB62_22:                              // %.loopexit8.i
	mov	r4, r5
	jz	r5, .LBB62_25
	jmp	.LBB62_23
.LBB62_23:                              // %.preheader
	mov	r1, 255
.LBB62_24:                              // =>This Inner Loop Header: Depth=1
	mov	r0, [r2]
	add	r4, -1
	add	r2, 1
	call	__bit_and
	mov	[t4], rax
	add	t4, 1
	jnz	r4, .LBB62_24
	jmp	.LBB62_25
.LBB62_25:                              // %memcpy.exit
	mov	rax, r3
	ret
// -- End function
// -- Begin function strlen
strlen:                                 // @strlen
// %bb.0:
	mov	r1, 3
	mov	r2, r0
	call	__bit_and
	jnz	rax, .LBB63_2
	jmp	.LBB63_1
.LBB63_1:                               // %.preheader1.preheader
	mov	r5, r2
	add	r5, -4
	mov	r6, -2139062144
	mov	r4, r2
	jmp	.LBB63_5
.LBB63_2:
	mov	r0, [r2]
	mov	r1, 255
	call	__bit_and
	mov	r3, r2
	jz	rax, .LBB63_8
	jmp	.LBB63_3
.LBB63_3:                               // %.preheader2.preheader
	mov	r4, r2
	add	r4, 4
	mov	r3, r2
.LBB63_4:                               // %.preheader2
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [r4]
	call	__bit_and
	add	r3, 4
	add	r4, 4
	jz	rax, .LBB63_8
	jmp	.LBB63_4
.LBB63_5:                               // %.preheader1
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, [r4]
	mov	r0, 16843008
	sub	r0, r1
	mov	r3, r5
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	add	r4, 4
	add	r5, 16
	je	rax, r6, .LBB63_5
	jmp	.LBB63_6
.LBB63_6:                               // %.preheader.preheader
	mov	r5, -16
	mov	r1, 255
.LBB63_7:                               // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r4
	add	r0, r5
	mov	r0, [r0]
	call	__bit_and
	add	r3, 4
	add	r5, 4
	jnz	rax, .LBB63_7
	jmp	.LBB63_8
.LBB63_8:
	sub	r3, r2
	mov	rax, r3
	ret
// -- End function
// -- Begin function strncat
strncat:                                // @strncat
// %bb.0:
	mov	r3, r1
	mov	r1, 3
	mov	r4, r0
	call	__bit_and
	jz	rax, .LBB64_3
	jmp	.LBB64_1
.LBB64_1:                               // %.preheader5.preheader
	mov	r5, r4
	add	r5, -4
	mov	r1, 255
.LBB64_2:                               // %.preheader5
                                        // =>This Inner Loop Header: Depth=1
	add	r5, 4
	mov	r0, [r5]
	call	__bit_and
	jz	rax, .LBB64_8
	jmp	.LBB64_2
.LBB64_3:
	mov	r0, [r4]
	mov	r1, 255
	call	__bit_and
	mov	r5, r4
	jz	rax, .LBB64_8
	jmp	.LBB64_4
.LBB64_4:                               // %.preheader4.preheader
	mov	r5, r4
	add	r5, -80
	mov	r6, -2139062144
	mov	r7, r4
.LBB64_5:                               // %.preheader4
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, [r7]
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	add	r7, 4
	add	r5, 64
	je	rax, r6, .LBB64_5
	jmp	.LBB64_6
.LBB64_6:                               // %.preheader2.preheader
	mov	r1, 255
.LBB64_7:                               // %.preheader2
                                        // =>This Inner Loop Header: Depth=1
	add	r5, 4
	mov	r0, [r5]
	call	__bit_and
	jnz	rax, .LBB64_7
	jmp	.LBB64_8
.LBB64_8:                               // %.loopexit3
	jz	r2, .LBB64_13
	jmp	.LBB64_9
.LBB64_9:                               // %.preheader.preheader
	mov	r1, 255
.LBB64_10:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [r3]
	call	__bit_and
	mov	[r5], rax
	jz	rax, .LBB64_13
	jmp	.LBB64_11
.LBB64_11:                              //   in Loop: Header=BB64_10 Depth=1
	add	r5, 1
	add	r2, -1
	add	r3, 1
	jnz	r2, .LBB64_10
	jmp	.LBB64_12
.LBB64_12:
	mov	[r5], 0
.LBB64_13:                              // %.loopexit
	mov	rax, r4
	ret
// -- End function
// -- Begin function strncmp
strncmp:                                // @strncmp
// %bb.0:
	mov	r3, r2
	mov	r4, r1
	mov	r5, r0
	mov	r2, 0
	jz	r3, .LBB65_14
	jmp	.LBB65_1
.LBB65_1:
	mov	r0, r4
	mov	r1, r5
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	mov	r1, -2147483648
	mov	r6, rax
	mov	r0, r3
	call	__bit_xor
	mov	r0, -2147483644
	jl	rax, r0, .LBB65_8
	jmp	.LBB65_2
.LBB65_2:
	jnz	r6, .LBB65_8
	jmp	.LBB65_3
.LBB65_3:                               // %.preheader10.preheader
	mov	r6, 4
	mov	r7, -2139062144
	mov	t1, -2147483645
.LBB65_4:                               // %.preheader10
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, [r5]
	mov	r0, [r4]
	jne	r1, r0, .LBB65_8
	jmp	.LBB65_5
.LBB65_5:                               //   in Loop: Header=BB65_4 Depth=1
	je	r3, r6, .LBB65_14
	jmp	.LBB65_6
.LBB65_6:                               //   in Loop: Header=BB65_4 Depth=1
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, r7, .LBB65_14
	jmp	.LBB65_7
.LBB65_7:                               //   in Loop: Header=BB65_4 Depth=1
	add	r3, -4
	add	r5, 4
	mov	r1, -2147483648
	add	r4, 4
	mov	r0, r3
	call	__bit_xor
	jg	rax, t1, .LBB65_4
	jmp	.LBB65_8
.LBB65_8:                               // %.loopexit11
	mov	r6, [r5]
	mov	r1, 255
	mov	r0, r6
	call	__bit_and
	mov	r7, [r4]
	mov	t1, rax
	mov	r0, r7
	call	__bit_and
	jne	t1, rax, .LBB65_13
	jmp	.LBB65_9
.LBB65_9:                               // %.preheader.preheader
	add	r3, -1
	add	r4, 4
	add	r5, 4
.LBB65_10:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 255
	mov	r0, r6
	call	__bit_and
	jz	rax, .LBB65_14
	jmp	.LBB65_11
.LBB65_11:                              // %.preheader
                                        //   in Loop: Header=BB65_10 Depth=1
	jz	r3, .LBB65_14
	jmp	.LBB65_12
.LBB65_12:                              //   in Loop: Header=BB65_10 Depth=1
	mov	r6, [r5]
	mov	r0, r6
	call	__bit_and
	mov	r7, [r4]
	mov	t1, rax
	mov	r0, r7
	call	__bit_and
	add	r3, -1
	add	r4, 4
	add	r5, 4
	je	t1, rax, .LBB65_10
	jmp	.LBB65_13
.LBB65_13:                              // %.loopexit9
	mov	r0, r6
	call	__bit_and
	mov	r2, rax
	mov	r0, r7
	call	__bit_and
	sub	r2, rax
.LBB65_14:                              // %.loopexit
	mov	rax, r2
	ret
// -- End function
// -- Begin function strncpy
strncpy:                                // @strncpy
// %bb.0:
	mov	r4, r1
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	mov	r1, -2147483648
	mov	r5, rax
	mov	r0, r2
	call	__bit_xor
	mov	r0, -2147483644
	mov	r6, r3
	jl	rax, r0, .LBB66_5
	jmp	.LBB66_1
.LBB66_1:
	mov	r6, r3
	jnz	r5, .LBB66_5
	jmp	.LBB66_2
.LBB66_2:                               // %.preheader4.preheader
	mov	r7, -2139062144
	mov	t1, -2147483645
	mov	r6, r3
.LBB66_3:                               // %.preheader4
                                        // =>This Inner Loop Header: Depth=1
	mov	r5, [r4]
	mov	r0, 16843008
	sub	r0, r5
	mov	r1, r5
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, r7, .LBB66_6
	jmp	.LBB66_4
.LBB66_4:                               //   in Loop: Header=BB66_3 Depth=1
	add	r2, -4
	add	r4, 4
	mov	[r6], r5
	mov	r1, -2147483648
	add	r6, 4
	mov	r0, r2
	call	__bit_xor
	jg	rax, t1, .LBB66_3
	jmp	.LBB66_5
.LBB66_5:                               // %.loopexit6
	jz	r2, .LBB66_12
	jmp	.LBB66_6
.LBB66_6:                               // %.loopexit5.preheader
	mov	r5, 1
	mov	r1, 255
.LBB66_7:                               // %.loopexit5
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [r4]
	mov	r7, r2
	add	r2, -1
	call	__bit_and
	mov	[r6], rax
	add	r6, 1
	jz	rax, .LBB66_9
	jmp	.LBB66_8
.LBB66_8:                               // %.loopexit5
                                        //   in Loop: Header=BB66_7 Depth=1
	add	r4, 1
	jne	r7, r5, .LBB66_7
	jmp	.LBB66_9
.LBB66_9:
	jz	r2, .LBB66_12
	jmp	.LBB66_10
.LBB66_10:                              // %.preheader.preheader
	mov	r0, 0
.LBB66_11:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	[r6], 0
	add	r0, 1
	add	r6, 1
	jne	r2, r0, .LBB66_11
	jmp	.LBB66_12
.LBB66_12:                              // %.loopexit
	mov	rax, r3
	ret
// -- End function
// -- Begin function strndup
strndup:                                // @strndup
// %bb.0:
	mov	[rsp-1], x0
	mov	r4, r1
	mov	r2, r0
	mov	r3, r2
	jz	r4, .LBB67_4
	jmp	.LBB67_1
.LBB67_1:
	mov	r1, 2
	mov	r0, r4
	call	__bit_shl
	mov	r5, rax
	add	r5, r2
	mov	r6, r2
	mov	r1, 255
.LBB67_2:                               // =>This Inner Loop Header: Depth=1
	mov	r0, [r6]
	call	__bit_and
	mov	r3, r6
	jz	rax, .LBB67_4
	jmp	.LBB67_3
.LBB67_3:                               //   in Loop: Header=BB67_2 Depth=1
	add	r4, -1
	add	r6, 1
	mov	r3, r5
	jnz	r4, .LBB67_2
	jmp	.LBB67_4
.LBB67_4:                               // %.loopexit
	sub	r3, r2
	mov	r0, r3
	add	r0, 1
	call	malloc
	mov	r4, rax
	jz	r4, .LBB67_22
	jmp	.LBB67_5
.LBB67_5:
	mov	r1, -2147483648
	mov	r0, r3
	call	__bit_xor
	mov	r0, -2147483632
	mov	t5, r4
	mov	r5, r3
	jl	rax, r0, .LBB67_18
	jmp	.LBB67_6
.LBB67_6:
	mov	r1, 3
	mov	r0, r4
	call	__bit_and
	mov	r5, rax
	mov	r6, 8
	sub	r6, r5
	mov	t5, r4
	mov	r1, 255
.LBB67_7:                               // =>This Inner Loop Header: Depth=1
	mov	r0, [r2]
	add	r6, -1
	add	r2, 1
	call	__bit_and
	mov	[t5], rax
	add	t5, 1
	jnz	r6, .LBB67_7
	jmp	.LBB67_8
.LBB67_8:
	mov	r1, -8
	mov	r0, r5
	call	__bit_or
	mov	r5, rax
	mov	r1, 3
	add	r5, r3
	mov	r0, r2
	call	__bit_and
	mov	r6, rax
	jnz	r6, .LBB67_15
	jmp	.LBB67_9
.LBB67_9:
	mov	r1, -2147483648
	mov	r0, r5
	call	__bit_xor
	mov	r0, -2147483632
	jl	rax, r0, .LBB67_11
	jmp	.LBB67_10
.LBB67_10:                              // %.preheader.i.preheader
	mov	r6, 0
	mov	r7, -2147483633
	mov	t1, t5
	mov	t2, r2
	jmp	.LBB67_13
.LBB67_11:                              // %.preheader55
	mov	r6, -2147483645
	jmp	.LBB67_14
.LBB67_12:
	add	t5, r6
	mov	r0, 3
	add	r2, r6
	jg	r5, r0, .LBB67_11
	jmp	.LBB67_18
.LBB67_13:                              // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r2
	add	r0, r6
	mov	r0, [r0]
	mov	r1, t5
	add	r1, r6
	mov	t0, t2
	add	t0, 4
	mov	[r1], r0
	mov	r0, [t0]
	mov	r1, t1
	add	r1, 4
	mov	t0, t2
	add	t0, 8
	mov	[r1], r0
	mov	r0, [t0]
	mov	r1, t1
	add	r1, 8
	mov	t0, t2
	add	t0, 12
	mov	t3, t1
	mov	[r1], r0
	mov	r0, [t0]
	add	t3, 12
	add	t2, 16
	add	t1, 16
	mov	[t3], r0
	add	r5, -16
	mov	r1, -2147483648
	add	r6, 64
	mov	r0, r5
	call	__bit_xor
	jg	rax, r7, .LBB67_13
	jmp	.LBB67_12
.LBB67_14:                              // =>This Inner Loop Header: Depth=1
	mov	r0, [r2]
	add	r2, 4
	mov	[t5], r0
	add	r5, -4
	add	t5, 4
	mov	r0, r5
	call	__bit_xor
	jg	rax, r6, .LBB67_14
	jmp	.LBB67_18
.LBB67_15:
	mov	r0, r6
	call	__bit_shl
	mov	r7, rax
	mov	r0, r2
	sub	r0, r6
	mov	t2, [r0]
	mov	t1, 8
	mov	r1, 4
	sub	t1, r6
	mov	r0, r6
	call	__bit_shl
	mov	t6, 0
	mov	t7, 0
	sub	t7, rax
	div	t7, 4
	add	t7, r2
.LBB67_16:                              // =>This Inner Loop Header: Depth=1
	mov	r0, t7
	add	r0, t6
	add	r0, 16
	mov	t3, [r0]
	mov	x0, t5
	mov	r1, 31
	add	x0, t6
	mov	r0, r7
	call	__bit_and
	mov	r0, t2
	mov	r1, rax
	call	__bit_shl
	mov	t2, rax
	mov	r0, r7
	call	__bit_not
	mov	r1, 31
	mov	r0, rax
	call	__bit_and
	mov	r1, 1
	mov	t4, rax
	mov	r0, t3
	call	__bit_shr
	mov	r0, rax
	mov	r1, t4
	call	__bit_shr
	mov	r0, t2
	mov	r1, rax
	call	__bit_or
	mov	[x0], rax
	add	r5, -4
	mov	r1, -2147483648
	add	t6, 16
	mov	r0, t1
	call	__bit_xor
	mov	t4, rax
	mov	r0, r5
	call	__bit_xor
	mov	t2, t3
	jge	rax, t4, .LBB67_16
	jmp	.LBB67_17
.LBB67_17:
	mov	r1, -4
	mov	r0, r2
	call	__bit_or
	mov	r1, 2
	mov	r0, rax
	call	__bit_shl
	mov	r7, rax
	mov	r0, r6
	call	__bit_shl
	sub	r7, rax
	add	r7, r2
	add	r7, t6
	add	r7, 16
	add	t5, t6
	mov	r2, r7
	jmp	.LBB67_19
.LBB67_18:                              // %.loopexit8.i
	jz	r5, .LBB67_21
	jmp	.LBB67_19
.LBB67_19:                              // %.preheader
	mov	r1, 255
.LBB67_20:                              // =>This Inner Loop Header: Depth=1
	mov	r0, [r2]
	add	r5, -1
	add	r2, 1
	call	__bit_and
	mov	[t5], rax
	add	t5, 1
	jnz	r5, .LBB67_20
	jmp	.LBB67_21
.LBB67_21:                              // %memcpy.exit
	mov	r0, r4
	add	r0, r3
	mov	[r0], 0
.LBB67_22:
	mov	rax, r4
	mov	x0, [rsp-1]
	ret
// -- End function
// -- Begin function strnlen
strnlen:                                // @strnlen
// %bb.0:
	mov	r3, r1
	mov	r2, r0
	mov	rax, r2
	jz	r3, .LBB68_4
	jmp	.LBB68_1
.LBB68_1:
	mov	r1, 2
	mov	r0, r3
	call	__bit_shl
	mov	r4, rax
	add	r4, r2
	mov	r5, r2
	mov	r1, 255
.LBB68_2:                               // =>This Inner Loop Header: Depth=1
	mov	r0, [r5]
	call	__bit_and
	mov	r0, rax
	mov	rax, r5
	jz	r0, .LBB68_4
	jmp	.LBB68_3
.LBB68_3:                               //   in Loop: Header=BB68_2 Depth=1
	add	r3, -1
	add	r5, 1
	mov	rax, r4
	jnz	r3, .LBB68_2
	jmp	.LBB68_4
.LBB68_4:                               // %.loopexit
	sub	rax, r2
	ret
// -- End function
// -- Begin function strnstr
strnstr:                                // @strnstr
// %bb.0:
	mov	r3, r2
	mov	r2, r1
	mov	r4, r0
	mov	r5, r2
	jz	r3, .LBB69_4
	jmp	.LBB69_1
.LBB69_1:
	mov	r1, 2
	mov	r0, r3
	call	__bit_shl
	mov	r6, rax
	add	r6, r2
	mov	r7, r3
	mov	t1, r2
	mov	r1, 255
.LBB69_2:                               // =>This Inner Loop Header: Depth=1
	mov	r0, [t1]
	call	__bit_and
	mov	r5, t1
	jz	rax, .LBB69_4
	jmp	.LBB69_3
.LBB69_3:                               //   in Loop: Header=BB69_2 Depth=1
	add	r7, -1
	add	t1, 1
	mov	r5, r6
	jnz	r7, .LBB69_2
	jmp	.LBB69_4
.LBB69_4:                               // %strnlen.exit
	mov	r1, -2147483648
	sub	r5, r2
	mov	r0, r3
	call	__bit_xor
	mov	r6, rax
	mov	r0, r5
	call	__bit_xor
	jl	rax, r6, .LBB69_6
	jmp	.LBB69_5
.LBB69_5:
	mov	r0, r2
	add	r0, r5
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r0, rax
	mov	rax, 0
	jnz	r0, .LBB69_20
	jmp	.LBB69_6
.LBB69_6:
	mov	r0, r4
	mov	r1, r3
	mov	r3, r5
	call	memmem
	mov	r2, rax
	mov	rax, 0
	jz	r2, .LBB69_20
	jmp	.LBB69_7
.LBB69_7:
	mov	r3, r2
	mov	r1, 3
	sub	r3, r4
	mov	r0, r4
	call	__bit_and
	jz	rax, .LBB69_12
	jmp	.LBB69_8
.LBB69_8:
	mov	rax, r2
	jz	r3, .LBB69_20
	jmp	.LBB69_9
.LBB69_9:                               // %.preheader.i.preheader
	mov	r3, r4
	sub	r3, r2
.LBB69_10:                              // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [r4]
	mov	r1, 255
	call	__bit_and
	mov	r0, rax
	mov	rax, 0
	jz	r0, .LBB69_20
	jmp	.LBB69_11
.LBB69_11:                              //   in Loop: Header=BB69_10 Depth=1
	add	r3, 1
	add	r4, 1
	mov	r0, r3
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	mov	rax, r2
	jnz	r0, .LBB69_20
	jmp	.LBB69_10
.LBB69_12:
	mov	r1, -2147483648
	mov	r0, r3
	call	__bit_xor
	mov	r0, -2147483644
	jl	rax, r0, .LBB69_16
	jmp	.LBB69_13
.LBB69_13:                              // %.preheader.preheader
	mov	r5, -2139062144
	mov	r6, -2147483645
.LBB69_14:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, [r4]
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, r5, .LBB69_17
	jmp	.LBB69_15
.LBB69_15:                              //   in Loop: Header=BB69_14 Depth=1
	add	r3, -4
	mov	r1, -2147483648
	add	r4, 4
	mov	r0, r3
	call	__bit_xor
	jg	rax, r6, .LBB69_14
	jmp	.LBB69_16
.LBB69_16:                              // %.loopexit7.i
	mov	rax, r2
	jz	r3, .LBB69_20
	jmp	.LBB69_17
.LBB69_17:                              // %.loopexit6.i.preheader
	mov	r1, 255
.LBB69_18:                              // %.loopexit6.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [r4]
	call	__bit_and
	mov	r0, rax
	mov	rax, 0
	jz	r0, .LBB69_20
	jmp	.LBB69_19
.LBB69_19:                              //   in Loop: Header=BB69_18 Depth=1
	add	r3, -1
	add	r4, 1
	mov	rax, r2
	jnz	r3, .LBB69_18
	jmp	.LBB69_20
.LBB69_20:                              // %memchr.exit
	ret
// -- End function
// -- Begin function strpbrk
strpbrk:                                // @strpbrk
// %bb.0:
	mov	r6, r0
	mov	r3, [r6]
	mov	r2, r1
	mov	r1, 255
	mov	r0, r3
	call	__bit_and
	mov	r5, 0
	jz	rax, .LBB70_7
	jmp	.LBB70_1
.LBB70_1:
	mov	r4, [r2]
	mov	r0, r4
	call	__bit_and
	jz	rax, .LBB70_7
	jmp	.LBB70_2
.LBB70_2:                               // %.preheader.preheader
	add	r2, 4
.LBB70_3:                               // %.preheader
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB70_5 Depth 2
	mov	r5, r6
	mov	r7, r2
	mov	r0, r4
	jmp	.LBB70_5
.LBB70_4:                               //   in Loop: Header=BB70_5 Depth=2
	mov	r0, [r7]
	call	__bit_and
	add	r7, 4
	jz	rax, .LBB70_6
	jmp	.LBB70_5
.LBB70_5:                               //   Parent Loop BB70_3 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 255
	call	__bit_and
	mov	r6, rax
	mov	r0, r3
	call	__bit_and
	je	rax, r6, .LBB70_7
	jmp	.LBB70_4
.LBB70_6:                               //   in Loop: Header=BB70_3 Depth=1
	add	r5, 1
	mov	r3, [r5]
	mov	r0, r3
	call	__bit_and
	mov	r6, r5
	mov	r5, 0
	jnz	rax, .LBB70_3
	jmp	.LBB70_7
.LBB70_7:                               // %.loopexit
	mov	rax, r5
	ret
// -- End function
// -- Begin function strrchr
strrchr:                                // @strrchr
// %bb.0:
	mov	r4, r1
	mov	r1, 255
	mov	r3, r0
	mov	r0, r4
	call	__bit_and
	mov	r5, rax
	jz	r5, .LBB71_16
	jmp	.LBB71_1
.LBB71_1:                               // %.preheader.split.preheader
	mul	r5, 16843009
	mov	r2, 0
	mov	t1, -2139062144
.LBB71_2:                               // %.preheader.split
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB71_7 Depth 2
                                        //     Child Loop BB71_9 Depth 2
                                        //     Child Loop BB71_12 Depth 2
	mov	r1, 3
	mov	r0, r3
	call	__bit_and
	jz	rax, .LBB71_5
	jmp	.LBB71_3
.LBB71_3:                               //   in Loop: Header=BB71_2 Depth=1
	mov	r6, [r3]
	mov	r1, 255
	mov	r0, r6
	call	__bit_and
	jz	rax, .LBB71_23
	jmp	.LBB71_4
.LBB71_4:                               // %.lr.ph.i.preheader
                                        //   in Loop: Header=BB71_2 Depth=1
	jmp	.LBB71_7
.LBB71_5:                               //   in Loop: Header=BB71_2 Depth=1
	mov	r6, [r3]
	mov	r0, 16843008
	sub	r0, r6
	mov	r1, r6
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, t1, .LBB71_11
	jmp	.LBB71_6
.LBB71_6:                               // %.preheader5.i.preheader
                                        //   in Loop: Header=BB71_2 Depth=1
	jmp	.LBB71_9
.LBB71_7:                               // %.lr.ph.i
                                        //   Parent Loop BB71_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 255
	mov	r0, r4
	call	__bit_and
	mov	r7, rax
	mov	r0, r6
	call	__bit_and
	je	rax, r7, .LBB71_15
	jmp	.LBB71_8
.LBB71_8:                               //   in Loop: Header=BB71_7 Depth=2
	mov	r7, r3
	add	r3, 4
	mov	r6, [r3]
	add	r7, 1
	mov	r0, r6
	call	__bit_and
	mov	r3, r7
	jz	rax, .LBB71_23
	jmp	.LBB71_7
.LBB71_9:                               // %.preheader5.i
                                        //   Parent Loop BB71_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, r6
	mov	r1, r5
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, rax
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, t1, .LBB71_11
	jmp	.LBB71_10
.LBB71_10:                              //   in Loop: Header=BB71_9 Depth=2
	mov	r7, r3
	add	r3, 16
	mov	r6, [r3]
	mov	r0, 16843008
	sub	r0, r6
	add	r7, 4
	mov	r1, r6
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	mov	r3, r7
	je	rax, t1, .LBB71_9
	jmp	.LBB71_11
.LBB71_11:                              // %.loopexit6.i.preheader
                                        //   in Loop: Header=BB71_2 Depth=1
	add	r3, -4
.LBB71_12:                              // %.loopexit6.i
                                        //   Parent Loop BB71_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	r3, 4
	mov	r6, [r3]
	mov	r1, 255
	mov	r0, r6
	call	__bit_and
	jz	rax, .LBB71_14
	jmp	.LBB71_13
.LBB71_13:                              // %.loopexit6.i
                                        //   in Loop: Header=BB71_12 Depth=2
	mov	r0, r4
	call	__bit_and
	mov	r7, rax
	mov	r0, r6
	call	__bit_and
	jne	rax, r7, .LBB71_12
	jmp	.LBB71_14
.LBB71_14:                              //   in Loop: Header=BB71_2 Depth=1
	mov	r0, r6
	call	__bit_and
	mov	r6, rax
	mov	r0, r4
	call	__bit_and
	jne	r6, rax, .LBB71_23
	jmp	.LBB71_15
.LBB71_15:                              // %strchr.exit
                                        //   in Loop: Header=BB71_2 Depth=1
	mov	r0, r3
	add	r0, 1
	mov	r2, r3
	mov	r3, r0
	jmp	.LBB71_2
.LBB71_16:
	mov	r1, 3
	mov	r0, r3
	call	__bit_and
	jz	rax, .LBB71_18
	jmp	.LBB71_17
.LBB71_17:                              // %.preheader3.i1.preheader
	add	r3, -4
	mov	r2, r3
	mov	r1, 255
	jmp	.LBB71_19
.LBB71_18:                              // %.preheader2.i2.preheader
	mov	r2, r3
	add	r2, -80
	mov	r4, -2139062144
	jmp	.LBB71_20
.LBB71_19:                              // %.preheader3.i1
                                        // =>This Inner Loop Header: Depth=1
	add	r2, 4
	mov	r0, [r2]
	call	__bit_and
	jz	rax, .LBB71_23
	jmp	.LBB71_19
.LBB71_20:                              // %.preheader2.i2
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, [r3]
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	add	r3, 4
	add	r2, 64
	je	rax, r4, .LBB71_20
	jmp	.LBB71_21
.LBB71_21:                              // %.preheader.i3.preheader
	mov	r1, 255
.LBB71_22:                              // %.preheader.i3
                                        // =>This Inner Loop Header: Depth=1
	add	r2, 4
	mov	r0, [r2]
	call	__bit_and
	jnz	rax, .LBB71_22
	jmp	.LBB71_23
.LBB71_23:                              // %strchr.exit4
	mov	rax, r2
	ret
// -- End function
// -- Begin function strsep
strsep:                                 // @strsep
// %bb.0:
	mov	r2, r0
	mov	r6, [r2]
	mov	r3, r1
	mov	rax, 0
	jz	r6, .LBB72_14
	jmp	.LBB72_1
.LBB72_1:
	mov	r4, [r6]
	mov	r7, r6
	add	r7, 1
	mov	t1, r3
.LBB72_2:                               // =>This Inner Loop Header: Depth=1
	mov	r0, [t1]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB72_5
	jmp	.LBB72_3
.LBB72_3:                               //   in Loop: Header=BB72_2 Depth=1
	call	__bit_and
	mov	r5, rax
	mov	r0, r4
	call	__bit_and
	add	t1, 1
	jne	rax, r5, .LBB72_2
	jmp	.LBB72_4
.LBB72_4:
	mov	[r2], r7
	mov	[r6], 0
	mov	rax, r6
	jmp	.LBB72_14
.LBB72_5:                               // %.loopexit.i
	mov	r0, r4
	call	__bit_and
	jz	rax, .LBB72_7
	jmp	.LBB72_6
.LBB72_6:                               // %.preheader.i.preheader
	jmp	.LBB72_8
.LBB72_7:
	mov	[r2], 0
	mov	rax, 0
	jmp	.LBB72_14
.LBB72_8:                               // %.preheader.i
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB72_9 Depth 2
	mov	t1, r7
	mov	r4, [t1]
	add	r7, 1
	mov	t2, r3
.LBB72_9:                               //   Parent Loop BB72_8 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 255
	mov	r0, r4
	call	__bit_and
	mov	r0, [t2]
	mov	r5, rax
	call	__bit_and
	jne	rax, r5, .LBB72_13
	jmp	.LBB72_10
.LBB72_10:
	mov	r0, r4
	call	__bit_and
	mov	r0, 0
	jz	rax, .LBB72_12
	jmp	.LBB72_11
.LBB72_11:
	mov	[t1], 0
	mov	r0, r7
.LBB72_12:
	mov	[r2], r0
	mov	rax, r6
	jmp	.LBB72_14
.LBB72_13:                              //   in Loop: Header=BB72_9 Depth=2
	call	__bit_and
	add	t2, 1
	jz	rax, .LBB72_8
	jmp	.LBB72_9
.LBB72_14:                              // %__strtok_r.exit
	ret
// -- End function
// -- Begin function strspn
strspn:                                 // @strspn
// %bb.0:
	mov	r2, r0
	mov	r4, [r2]
	mov	r3, r1
	mov	r1, 255
	mov	r0, r4
	call	__bit_and
	mov	r6, r2
	jz	rax, .LBB73_7
	jmp	.LBB73_1
.LBB73_1:
	mov	r5, [r3]
	mov	r0, r5
	call	__bit_and
	mov	r6, r2
	jz	rax, .LBB73_7
	jmp	.LBB73_2
.LBB73_2:                               // %.preheader.preheader
	add	r3, 4
	mov	r6, r2
.LBB73_3:                               // %.preheader
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB73_5 Depth 2
	mov	t1, r3
	mov	r0, r5
	jmp	.LBB73_5
.LBB73_4:                               //   in Loop: Header=BB73_5 Depth=2
	mov	r0, [t1]
	call	__bit_and
	add	t1, 4
	jz	rax, .LBB73_7
	jmp	.LBB73_5
.LBB73_5:                               //   Parent Loop BB73_3 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 255
	call	__bit_and
	mov	r7, rax
	mov	r0, r4
	call	__bit_and
	jne	rax, r7, .LBB73_4
	jmp	.LBB73_6
.LBB73_6:                               //   in Loop: Header=BB73_3 Depth=1
	add	r6, 1
	mov	r4, [r6]
	mov	r0, r4
	call	__bit_and
	jnz	rax, .LBB73_3
	jmp	.LBB73_7
.LBB73_7:                               // %.loopexit
	sub	r6, r2
	mov	rax, r6
	ret
// -- End function
// -- Begin function two_way_long_needle.48
two_way_long_needle.48:                 // @two_way_long_needle.48
// %bb.0:
	mov	[rsp-1], x0
	mov	[rsp-2], x1
	mov	[rsp-3], x2
	mov	[rsp-4], x3
	mov	[rsp-5], x4
	mov	[rsp-6], x5
	mov	[rsp-7], x6
	mov	[rsp-8], x7
	mov	[rsp-9], x8
	mov	[rsp-10], x9
	mov	r5, r1
	mov	r4, r0
	mov	t7, 0
	mov	r1, -2147483648
	mov	r7, 1
	mov	r0, r3
	call	__bit_xor
	mov	r0, -2147483646
	mov	r6, 0
	jl	rax, r0, .LBB74_22
	jmp	.LBB74_1
.LBB74_1:                               // %.preheader31.preheader
	mov	x0, 0
	mov	t1, -1
	mov	r6, 1
	mov	t6, 1
.LBB74_2:                               // %.preheader31
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r2
	add	r0, r6
	mov	t2, [r0]
	mov	r1, 255
	mov	r0, t2
	call	__bit_and
	mov	r0, r2
	add	r0, t1
	add	r0, t6
	mov	t3, [r0]
	mov	t4, rax
	mov	r0, t3
	call	__bit_and
	mov	r1, -2147483648
	mov	r0, rax
	call	__bit_xor
	mov	t5, rax
	mov	r0, t4
	call	__bit_xor
	jge	rax, t5, .LBB74_4
	jmp	.LBB74_3
.LBB74_3:                               //   in Loop: Header=BB74_2 Depth=1
	mov	r7, r6
	sub	r7, t1
	mov	t6, 1
	jmp	.LBB74_9
.LBB74_4:                               //   in Loop: Header=BB74_2 Depth=1
	mov	r1, 255
	mov	r0, t3
	call	__bit_and
	mov	r6, rax
	mov	r0, t2
	call	__bit_and
	jne	rax, r6, .LBB74_8
	jmp	.LBB74_5
.LBB74_5:                               //   in Loop: Header=BB74_2 Depth=1
	je	t6, r7, .LBB74_7
	jmp	.LBB74_6
.LBB74_6:                               //   in Loop: Header=BB74_2 Depth=1
	add	t6, 1
	mov	r6, x0
	jmp	.LBB74_9
.LBB74_7:                               //   in Loop: Header=BB74_2 Depth=1
	add	x0, r7
	mov	t6, 1
	mov	r6, x0
	jmp	.LBB74_9
.LBB74_8:                               //   in Loop: Header=BB74_2 Depth=1
	mov	r6, x0
	add	r6, 1
	mov	t6, 1
	mov	r7, 1
	mov	t1, x0
.LBB74_9:                               //   in Loop: Header=BB74_2 Depth=1
	mov	x0, r6
	mov	r6, t6
	mov	r1, -2147483648
	add	r6, x0
	mov	r0, r3
	call	__bit_xor
	mov	t2, rax
	mov	r0, r6
	call	__bit_xor
	jl	rax, t2, .LBB74_2
	jmp	.LBB74_10
.LBB74_10:                              // %.preheader30.preheader
	mov	r6, -1
	mov	x2, 0
	mov	t2, 1
	mov	x0, 1
	mov	x1, 1
.LBB74_11:                              // %.preheader30
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r2
	add	r0, t2
	mov	t3, [r0]
	mov	r1, 255
	mov	r0, t3
	call	__bit_and
	mov	r0, r2
	add	r0, r6
	add	r0, x1
	mov	t4, [r0]
	mov	t5, rax
	mov	r0, t4
	call	__bit_and
	mov	r1, -2147483648
	mov	t6, rax
	mov	r0, t5
	call	__bit_xor
	mov	t5, rax
	mov	r0, t6
	call	__bit_xor
	jge	rax, t5, .LBB74_13
	jmp	.LBB74_12
.LBB74_12:                              //   in Loop: Header=BB74_11 Depth=1
	mov	x0, t2
	sub	x0, r6
	mov	x1, 1
	jmp	.LBB74_18
.LBB74_13:                              //   in Loop: Header=BB74_11 Depth=1
	mov	r1, 255
	mov	r0, t4
	call	__bit_and
	mov	t2, rax
	mov	r0, t3
	call	__bit_and
	jne	rax, t2, .LBB74_17
	jmp	.LBB74_14
.LBB74_14:                              //   in Loop: Header=BB74_11 Depth=1
	je	x1, x0, .LBB74_16
	jmp	.LBB74_15
.LBB74_15:                              //   in Loop: Header=BB74_11 Depth=1
	add	x1, 1
	mov	t2, x2
	jmp	.LBB74_18
.LBB74_16:                              //   in Loop: Header=BB74_11 Depth=1
	add	x2, x0
	mov	x1, 1
	mov	t2, x2
	jmp	.LBB74_18
.LBB74_17:                              //   in Loop: Header=BB74_11 Depth=1
	mov	t2, x2
	add	t2, 1
	mov	x1, 1
	mov	r6, x2
	mov	x0, 1
.LBB74_18:                              //   in Loop: Header=BB74_11 Depth=1
	mov	x2, t2
	mov	t2, x1
	mov	r1, -2147483648
	add	t2, x2
	mov	r0, r3
	call	__bit_xor
	mov	t3, rax
	mov	r0, t2
	call	__bit_xor
	jl	rax, t3, .LBB74_11
	jmp	.LBB74_19
.LBB74_19:
	add	t1, 1
	add	r6, 1
	mov	r0, t1
	call	__bit_xor
	mov	t2, rax
	mov	r0, r6
	call	__bit_xor
	jl	rax, t2, .LBB74_21
	jmp	.LBB74_20
.LBB74_20:
	mov	r7, x0
.LBB74_21:
	mov	r0, t1
	sub	r0, r6
	mov	r1, 31
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	sub	r6, t1
	add	rax, 1
	mov	r0, rax
	mov	r1, r6
	call	__bit_and
	mov	r6, rax
	add	r6, t1
.LBB74_22:
	mov	r0, 1024
	jmp	.LBB74_25
.LBB74_23:
	jz	r3, .LBB74_27
	jmp	.LBB74_24
.LBB74_24:                              // %.preheader28.preheader
	mov	t1, r3
	add	t1, -1
	mov	t2, -1
	mov	t3, r2
	mov	r1, 255
	jmp	.LBB74_26
.LBB74_25:                              // =>This Inner Loop Header: Depth=1
	mov	r1, rsp
	add	r1, t7
	add	t7, 4
	mov	[r1], r3
	je	t7, r0, .LBB74_23
	jmp	.LBB74_25
.LBB74_26:                              // %.preheader28
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [t3]
	call	__bit_and
	add	rax, rsp
	mov	[rax], t1
	add	t1, -1
	add	t3, 4
	jne	t1, t2, .LBB74_26
	jmp	.LBB74_27
.LBB74_27:                              // %.loopexit29
	mov	t2, r2
	mov	r1, -2147483648
	add	t2, r7
	mov	r0, r6
	call	__bit_xor
	mov	r0, -2147483644
	mov	t1, r6
	mov	t4, r2
	jl	rax, r0, .LBB74_33
	jmp	.LBB74_28
.LBB74_28:
	mov	r0, t2
	mov	r1, r2
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	mov	t1, r6
	mov	t4, r2
	jnz	rax, .LBB74_35
	jmp	.LBB74_29
.LBB74_29:                              // %.preheader.i.preheader
	mov	r1, 2
	mov	r0, r7
	call	__bit_shl
	mov	t2, rax
	mov	t3, -2147483645
	mov	t4, r2
	mov	t1, r6
.LBB74_30:                              // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, t4
	add	r0, t2
	mov	r1, [t4]
	mov	r0, [r0]
	jne	r1, r0, .LBB74_34
	jmp	.LBB74_31
.LBB74_31:                              //   in Loop: Header=BB74_30 Depth=1
	add	t1, -4
	mov	r1, -2147483648
	add	t4, 4
	mov	r0, t1
	call	__bit_xor
	jg	rax, t3, .LBB74_30
	jmp	.LBB74_32
.LBB74_32:                              // %.loopexit8.i.loopexit
	mov	r1, 2
	mov	r0, r7
	call	__bit_shl
	mov	t2, rax
	add	t2, t4
.LBB74_33:                              // %.loopexit8.i
	jz	t1, .LBB74_38
	jmp	.LBB74_35
.LBB74_34:                              // %.loopexit7.i.preheader.loopexit
	mov	r1, 2
	mov	r0, r7
	call	__bit_shl
	mov	t2, rax
	add	t2, t4
.LBB74_35:                              // %.loopexit7.i.preheader
.LBB74_36:                              // %.loopexit7.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [t4]
	mov	r1, 255
	call	__bit_and
	mov	r0, [t2]
	mov	t3, rax
	call	__bit_and
	jne	t3, rax, .LBB74_58
	jmp	.LBB74_37
.LBB74_37:                              //   in Loop: Header=BB74_36 Depth=1
	add	t1, -1
	add	t4, 1
	add	t2, 1
	jnz	t1, .LBB74_36
	jmp	.LBB74_38
.LBB74_38:                              // %memcmp.exit.thread
	mov	r1, 2048
	mov	r0, r3
	call	__bit_or
	mov	t1, rax
	mov	x5, r3
	sub	x5, r7
	mov	t3, r3
	mov	r1, 2
	add	t3, -1
	mov	r0, t1
	call	__bit_shl
	mov	t4, rax
	mov	x6, 1
	sub	x6, r6
	mov	r0, r6
	call	__bit_shl
	mov	r0, rax
	call	__bit_shl
	mov	t5, rax
	add	t5, -16
	div	t5, 4
	mov	x7, r4
	add	x7, t5
	add	t5, r2
	mov	t6, 0
	mov	t7, 0
.LBB74_39:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB74_41 Depth 2
                                        //     Child Loop BB74_52 Depth 2
                                        //     Child Loop BB74_54 Depth 2
	mov	r0, r5
	sub	r0, r3
	mov	r1, -2147483648
	call	__bit_xor
	mov	t2, rax
	mov	r0, t6
	call	__bit_xor
	jle	rax, t2, .LBB74_44
	jmp	.LBB74_40
.LBB74_40:                              //   in Loop: Header=BB74_39 Depth=1
	mov	t2, r4
	add	t2, r5
	mov	x0, t2
	add	x0, t4
	mov	x1, t1
	mov	x2, t2
.LBB74_41:                              //   Parent Loop BB74_39 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, [x2]
	mov	r1, 255
	call	__bit_and
	mov	r0, x2
	jz	rax, .LBB74_43
	jmp	.LBB74_42
.LBB74_42:                              //   in Loop: Header=BB74_41 Depth=2
	add	x1, -1
	add	x2, 1
	mov	r0, x0
	jnz	x1, .LBB74_41
	jmp	.LBB74_43
.LBB74_43:                              // %strnlen.exit
                                        //   in Loop: Header=BB74_39 Depth=1
	sub	r0, t2
	add	r5, r0
	mov	r0, r5
	sub	r0, r3
	mov	r1, -2147483648
	mov	t2, 0
	call	__bit_xor
	mov	x0, rax
	mov	r0, t6
	call	__bit_xor
	jg	rax, x0, .LBB74_74
	jmp	.LBB74_44
.LBB74_44:                              //   in Loop: Header=BB74_39 Depth=1
	mov	t2, r4
	add	t2, t6
	mov	r0, t2
	add	r0, r3
	add	r0, -1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	add	rax, rsp
	mov	x1, [rax]
	jz	x1, .LBB74_49
	jmp	.LBB74_45
.LBB74_45:                              //   in Loop: Header=BB74_39 Depth=1
	mov	x9, 0
	jz	t7, .LBB74_48
	jmp	.LBB74_46
.LBB74_46:                              //   in Loop: Header=BB74_39 Depth=1
	mov	r1, -2147483648
	mov	r0, r7
	call	__bit_xor
	mov	t2, rax
	mov	r0, x1
	call	__bit_xor
	jge	rax, t2, .LBB74_48
	jmp	.LBB74_47
.LBB74_47:                              //   in Loop: Header=BB74_39 Depth=1
	mov	x1, x5
.LBB74_48:                              //   in Loop: Header=BB74_39 Depth=1
	add	t6, x1
	mov	t7, x9
	jmp	.LBB74_39
.LBB74_49:                              //   in Loop: Header=BB74_39 Depth=1
	mov	x0, t7
	sub	x0, r6
	mov	r1, 31
	mov	r0, x0
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	mov	r1, r6
	sub	r1, t7
	add	rax, 1
	mov	r0, rax
	call	__bit_and
	mov	x3, rax
	add	x3, t7
	mov	r1, -2147483648
	mov	r0, x3
	call	__bit_xor
	mov	x1, rax
	mov	r0, t3
	call	__bit_xor
	jge	x1, rax, .LBB74_51
	jmp	.LBB74_50
.LBB74_50:                              // %.preheader.preheader
                                        //   in Loop: Header=BB74_39 Depth=1
	mov	x1, x6
	add	x1, x3
	mov	x8, t3
	mov	r1, 2
	sub	x8, x3
	mov	r0, t6
	call	__bit_shl
	mov	x2, rax
	mov	r0, x3
	call	__bit_shl
	mov	x3, rax
	add	x2, x3
	add	x2, r4
	add	x3, r2
	jmp	.LBB74_52
.LBB74_51:                              // %.loopexit
                                        //   in Loop: Header=BB74_39 Depth=1
	mov	r1, 31
	mov	r0, x0
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r0, rax
	mov	r1, x0
	call	__bit_and
	mov	x0, rax
	mov	r1, 2
	add	x0, r6
	mov	r0, t6
	call	__bit_shl
	mov	x1, rax
	add	x1, x7
	mov	x4, t5
	mov	x2, r6
	jmp	.LBB74_54
.LBB74_52:                              // %.preheader
                                        //   Parent Loop BB74_39 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, [x3]
	mov	r1, 255
	call	__bit_and
	mov	r0, [x2]
	mov	x4, rax
	call	__bit_and
	mov	x9, 0
	jne	x4, rax, .LBB74_48
	jmp	.LBB74_53
.LBB74_53:                              //   in Loop: Header=BB74_52 Depth=2
	add	x1, 1
	add	x8, -1
	add	x2, 4
	add	x3, 4
	jz	x8, .LBB74_51
	jmp	.LBB74_52
.LBB74_54:                              //   Parent Loop BB74_39 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, -2147483648
	mov	r0, x2
	call	__bit_xor
	mov	x3, rax
	mov	r0, t7
	call	__bit_xor
	jge	rax, x3, .LBB74_57
	jmp	.LBB74_55
.LBB74_55:                              //   in Loop: Header=BB74_54 Depth=2
	mov	r0, [x4]
	mov	r1, 255
	add	x2, -1
	call	__bit_and
	mov	r0, [x1]
	mov	x3, rax
	call	__bit_and
	add	x1, -4
	add	x4, -4
	je	x3, rax, .LBB74_54
	jmp	.LBB74_56
.LBB74_56:                              // %._crit_edge
                                        //   in Loop: Header=BB74_39 Depth=1
	add	x2, 1
	mov	x0, x2
.LBB74_57:                              //   in Loop: Header=BB74_39 Depth=1
	add	t7, 1
	mov	r1, -2147483648
	mov	r0, t7
	call	__bit_xor
	mov	t7, rax
	mov	r0, x0
	call	__bit_xor
	mov	x1, r7
	mov	x9, x5
	jl	rax, t7, .LBB74_74
	jmp	.LBB74_48
.LBB74_58:                              // %memcmp.exit
	mov	t1, r3
	sub	t1, r6
	mov	r0, t1
	sub	r0, r6
	mov	r1, 31
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	mov	r1, r6
	sub	r1, t1
	add	rax, 1
	mov	r0, rax
	call	__bit_and
	mov	r7, rax
	mov	r1, 2048
	add	r7, t1
	mov	r0, r3
	call	__bit_or
	mov	t1, rax
	mov	t3, r3
	mov	r1, 2
	add	t3, -1
	mov	r0, t1
	call	__bit_shl
	mov	t4, rax
	mov	x1, t3
	sub	x1, r6
	mov	r0, r6
	call	__bit_shl
	mov	t5, rax
	mov	x2, r4
	add	x2, t5
	mov	r0, t5
	call	__bit_shl
	mov	t6, rax
	add	t5, r2
	add	t6, -16
	div	t6, 4
	mov	x3, r4
	add	x3, t6
	add	t6, r2
	mov	x4, r6
	add	x4, 1
	mov	r2, 0
.LBB74_59:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB74_61 Depth 2
                                        //     Child Loop BB74_68 Depth 2
                                        //     Child Loop BB74_71 Depth 2
	mov	r0, r5
	sub	r0, r3
	mov	r1, -2147483648
	call	__bit_xor
	mov	t2, rax
	mov	r0, r2
	call	__bit_xor
	jle	rax, t2, .LBB74_64
	jmp	.LBB74_60
.LBB74_60:                              //   in Loop: Header=BB74_59 Depth=1
	mov	t2, r4
	add	t2, r5
	mov	t7, t2
	add	t7, t4
	mov	x0, t1
	mov	x5, t2
.LBB74_61:                              //   Parent Loop BB74_59 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, [x5]
	mov	r1, 255
	call	__bit_and
	mov	r0, x5
	jz	rax, .LBB74_63
	jmp	.LBB74_62
.LBB74_62:                              //   in Loop: Header=BB74_61 Depth=2
	add	x0, -1
	add	x5, 1
	mov	r0, t7
	jnz	x0, .LBB74_61
	jmp	.LBB74_63
.LBB74_63:                              // %strnlen.exit21
                                        //   in Loop: Header=BB74_59 Depth=1
	sub	r0, t2
	add	r5, r0
	mov	r0, r5
	sub	r0, r3
	mov	r1, -2147483648
	mov	t2, 0
	call	__bit_xor
	mov	t7, rax
	mov	r0, r2
	call	__bit_xor
	jg	rax, t7, .LBB74_74
	jmp	.LBB74_64
.LBB74_64:                              //   in Loop: Header=BB74_59 Depth=1
	mov	t2, r4
	add	t2, r2
	mov	r0, t2
	add	r0, r3
	add	r0, -1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	add	rax, rsp
	mov	r0, [rax]
	jnz	r0, .LBB74_67
	jmp	.LBB74_65
.LBB74_65:                              //   in Loop: Header=BB74_59 Depth=1
	mov	r1, -2147483648
	mov	r0, r6
	call	__bit_xor
	mov	t7, rax
	mov	r0, t3
	call	__bit_xor
	jle	rax, t7, .LBB74_70
	jmp	.LBB74_66
.LBB74_66:                              // %.preheader25.preheader
                                        //   in Loop: Header=BB74_59 Depth=1
	mov	r1, 2
	mov	r0, r2
	call	__bit_shl
	mov	t7, rax
	add	t7, x2
	mov	x5, 0
	mov	x6, t5
	jmp	.LBB74_68
.LBB74_67:                              //   in Loop: Header=BB74_59 Depth=1
	add	r2, r0
	jmp	.LBB74_59
.LBB74_68:                              // %.preheader25
                                        //   Parent Loop BB74_59 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, [x6]
	mov	r1, 255
	call	__bit_and
	mov	r0, [t7]
	mov	x0, rax
	call	__bit_and
	jne	x0, rax, .LBB74_73
	jmp	.LBB74_69
.LBB74_69:                              //   in Loop: Header=BB74_68 Depth=2
	add	x5, 1
	add	t7, 4
	add	x6, 4
	jne	x1, x5, .LBB74_68
	jmp	.LBB74_70
.LBB74_70:                              // %.loopexit26.preheader
                                        //   in Loop: Header=BB74_59 Depth=1
	mov	r1, 2
	mov	r0, r2
	call	__bit_shl
	mov	t7, rax
	add	t7, x3
	mov	x6, x4
	mov	x7, t6
.LBB74_71:                              // %.loopexit26
                                        //   Parent Loop BB74_59 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	x6, -1
	jz	x6, .LBB74_74
	jmp	.LBB74_72
.LBB74_72:                              //   in Loop: Header=BB74_71 Depth=2
	mov	r0, [x7]
	mov	x5, t7
	add	x5, -4
	mov	r1, 255
	add	x7, -4
	call	__bit_and
	mov	r0, [t7]
	mov	x0, rax
	call	__bit_and
	mov	t7, x5
	mov	x5, r7
	je	x0, rax, .LBB74_71
	jmp	.LBB74_73
.LBB74_73:                              // %.loopexit24
                                        //   in Loop: Header=BB74_59 Depth=1
	add	r2, x5
	add	r2, 1
	jmp	.LBB74_59
.LBB74_74:                              // %.loopexit22
	mov	rax, t2
	mov	x9, [rsp-10]
	mov	x8, [rsp-9]
	mov	x7, [rsp-8]
	mov	x6, [rsp-7]
	mov	x5, [rsp-6]
	mov	x4, [rsp-5]
	mov	x3, [rsp-4]
	mov	x2, [rsp-3]
	mov	x1, [rsp-2]
	mov	x0, [rsp-1]
	ret
// -- End function
// -- Begin function strstr
strstr:                                 // @strstr
// %bb.0:
	mov	[rsp-1], x0
	mov	[rsp-2], x1
	mov	[rsp-3], x2
	mov	[rsp-4], x3
	mov	r3, r1
	mov	r4, [r3]
	mov	r1, 255
	mov	r2, r0
	mov	r0, r4
	call	__bit_and
	mov	r6, r2
	jz	rax, .LBB75_76
	jmp	.LBB75_1
.LBB75_1:
	mov	r0, r3
	add	r0, 1
	mov	r6, [r0]
	mov	r0, r6
	call	__bit_and
	jnz	rax, .LBB75_15
	jmp	.LBB75_2
.LBB75_2:
	mov	r1, 3
	mov	r0, r2
	call	__bit_and
	jz	rax, .LBB75_5
	jmp	.LBB75_3
.LBB75_3:
	mov	r3, [r2]
	mov	r1, 255
	mov	r0, r3
	call	__bit_and
	mov	r6, 0
	jz	rax, .LBB75_76
	jmp	.LBB75_4
.LBB75_4:                               // %.lr.ph.i.preheader
	jmp	.LBB75_7
.LBB75_5:
	mov	r1, 255
	mov	r0, r4
	call	__bit_and
	mov	r5, [r2]
	mov	r0, 16843008
	sub	r0, r5
	mov	r3, rax
	mov	r1, r5
	call	__bit_or
	mov	r1, -2139062144
	mov	r6, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, r6, .LBB75_11
	jmp	.LBB75_6
.LBB75_6:                               // %.preheader5.i.preheader
	mul	r3, 16843009
	jmp	.LBB75_9
.LBB75_7:                               // %.lr.ph.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 255
	mov	r0, r4
	call	__bit_and
	mov	r5, rax
	mov	r0, r3
	call	__bit_and
	mov	r6, r2
	je	rax, r5, .LBB75_76
	jmp	.LBB75_8
.LBB75_8:                               //   in Loop: Header=BB75_7 Depth=1
	mov	r5, r2
	add	r2, 4
	mov	r3, [r2]
	add	r5, 1
	mov	r0, r3
	call	__bit_and
	mov	r2, r5
	mov	r6, 0
	jz	rax, .LBB75_76
	jmp	.LBB75_7
.LBB75_9:                               // %.preheader5.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r5
	mov	r1, r3
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, rax
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, r6, .LBB75_11
	jmp	.LBB75_10
.LBB75_10:                              //   in Loop: Header=BB75_9 Depth=1
	mov	r7, r2
	add	r2, 16
	mov	r5, [r2]
	mov	r0, 16843008
	sub	r0, r5
	add	r7, 4
	mov	r1, r5
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	mov	r2, r7
	je	rax, r6, .LBB75_9
	jmp	.LBB75_11
.LBB75_11:                              // %.loopexit6.i.preheader
	add	r2, -4
.LBB75_12:                              // %.loopexit6.i
                                        // =>This Inner Loop Header: Depth=1
	add	r2, 4
	mov	r3, [r2]
	mov	r1, 255
	mov	r0, r3
	call	__bit_and
	jz	rax, .LBB75_14
	jmp	.LBB75_13
.LBB75_13:                              // %.loopexit6.i
                                        //   in Loop: Header=BB75_12 Depth=1
	mov	r0, r4
	call	__bit_and
	mov	r5, rax
	mov	r0, r3
	call	__bit_and
	jne	rax, r5, .LBB75_12
	jmp	.LBB75_14
.LBB75_14:
	mov	r0, r3
	call	__bit_and
	mov	r3, rax
	mov	r0, r4
	call	__bit_and
	mov	r0, r3
	mov	r1, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r0, rax
	mov	r1, r2
	call	__bit_and
	mov	r6, rax
	jmp	.LBB75_76
.LBB75_15:
	mov	r0, r3
	add	r0, 2
	mov	r5, [r0]
	mov	r0, r5
	call	__bit_and
	jnz	rax, .LBB75_21
	jmp	.LBB75_16
.LBB75_16:
	mov	r0, r4
	call	__bit_and
	mov	r1, 16
	mov	r0, rax
	call	__bit_shl
	mov	r1, 255
	mov	r3, rax
	mov	r0, r6
	call	__bit_and
	mov	r0, r3
	mov	r1, rax
	call	__bit_or
	mov	r0, [r2]
	mov	r1, 255
	mov	r4, rax
	call	__bit_and
	mov	r6, 0
	jz	rax, .LBB75_76
	jmp	.LBB75_17
.LBB75_17:                              // %.preheader.preheader
	add	r2, -8
	mov	r5, 0
	mov	r3, r2
.LBB75_18:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 255
	call	__bit_and
	mov	r1, 16
	mov	r6, rax
	mov	r0, r5
	call	__bit_shl
	mov	r0, rax
	mov	r1, r6
	call	__bit_or
	mov	r5, rax
	add	r3, 4
	je	r4, r5, .LBB75_20
	jmp	.LBB75_19
.LBB75_19:                              // %.preheader
                                        //   in Loop: Header=BB75_18 Depth=1
	add	r2, 12
	mov	r0, [r2]
	mov	r1, 255
	call	__bit_and
	mov	r2, r3
	jnz	rax, .LBB75_18
	jmp	.LBB75_20
.LBB75_20:
	mov	r0, r4
	mov	r1, r5
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r0, rax
	mov	r1, r3
	call	__bit_and
	mov	r6, rax
	jmp	.LBB75_76
.LBB75_21:
	mov	r0, r3
	add	r0, 3
	mov	r7, [r0]
	mov	r0, r7
	call	__bit_and
	jnz	rax, .LBB75_27
	jmp	.LBB75_22
.LBB75_22:
	mov	r0, r4
	call	__bit_and
	mov	r1, 24
	mov	r0, rax
	call	__bit_shl
	mov	r1, 255
	mov	r3, rax
	mov	r0, r6
	call	__bit_and
	mov	r1, 16
	mov	r0, rax
	call	__bit_shl
	mov	r0, rax
	mov	r1, r3
	call	__bit_or
	mov	r1, 255
	mov	r3, rax
	mov	r0, r5
	call	__bit_and
	mov	r1, 8
	mov	r0, rax
	call	__bit_shl
	mov	r0, r3
	mov	r1, rax
	call	__bit_or
	mov	r0, [r2]
	mov	r1, 255
	mov	r4, rax
	call	__bit_and
	mov	r6, 0
	jz	rax, .LBB75_76
	jmp	.LBB75_23
.LBB75_23:                              // %.preheader21.preheader
	add	r2, -12
	mov	r5, 0
	mov	r3, r2
.LBB75_24:                              // %.preheader21
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 255
	call	__bit_and
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	r1, 8
	mov	r0, rax
	call	__bit_shl
	mov	r5, rax
	add	r3, 4
	je	r4, r5, .LBB75_26
	jmp	.LBB75_25
.LBB75_25:                              // %.preheader21
                                        //   in Loop: Header=BB75_24 Depth=1
	add	r2, 16
	mov	r0, [r2]
	mov	r1, 255
	call	__bit_and
	mov	r2, r3
	jnz	rax, .LBB75_24
	jmp	.LBB75_26
.LBB75_26:
	mov	r0, r4
	mov	r1, r5
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r0, rax
	mov	r1, r3
	call	__bit_and
	mov	r6, rax
	jmp	.LBB75_76
.LBB75_27:
	mov	r0, r3
	add	r0, 4
	mov	r0, [r0]
	call	__bit_and
	jnz	rax, .LBB75_33
	jmp	.LBB75_28
.LBB75_28:
	mov	r0, r4
	call	__bit_and
	mov	r1, 24
	mov	r0, rax
	call	__bit_shl
	mov	r1, 255
	mov	r3, rax
	mov	r0, r6
	call	__bit_and
	mov	r1, 16
	mov	r0, rax
	call	__bit_shl
	mov	r0, rax
	mov	r1, r3
	call	__bit_or
	mov	r1, 255
	mov	r3, rax
	mov	r0, r5
	call	__bit_and
	mov	r1, 8
	mov	r0, rax
	call	__bit_shl
	mov	r0, r3
	mov	r1, rax
	call	__bit_or
	mov	r1, 255
	mov	r3, rax
	mov	r0, r7
	call	__bit_and
	mov	r0, r3
	mov	r1, rax
	call	__bit_or
	mov	r0, [r2]
	mov	r1, 255
	mov	r3, rax
	call	__bit_and
	mov	r6, 0
	jz	rax, .LBB75_76
	jmp	.LBB75_29
.LBB75_29:                              // %.preheader22.preheader
	add	r2, -16
	mov	r4, 0
.LBB75_30:                              // %.preheader22
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 255
	call	__bit_and
	mov	r1, 8
	mov	r5, rax
	mov	r0, r4
	call	__bit_shl
	mov	r0, rax
	mov	r1, r5
	call	__bit_or
	mov	r0, r2
	add	r0, 20
	mov	r0, [r0]
	mov	r1, 255
	mov	r4, rax
	call	__bit_and
	add	r2, 4
	jz	rax, .LBB75_32
	jmp	.LBB75_31
.LBB75_31:                              // %.preheader22
                                        //   in Loop: Header=BB75_30 Depth=1
	jne	r3, r4, .LBB75_30
	jmp	.LBB75_32
.LBB75_32:
	mov	r0, r3
	mov	r1, r4
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r0, rax
	mov	r1, r2
	call	__bit_and
	mov	r6, rax
	jmp	.LBB75_76
.LBB75_33:
	mov	r1, 3
	mov	r0, r3
	call	__bit_and
	jz	rax, .LBB75_35
	jmp	.LBB75_34
.LBB75_34:                              // %.preheader2.i14.preheader
	mov	r0, r3
	mov	t2, r0
	mov	r1, 255
	jmp	.LBB75_36
.LBB75_35:                              // %.preheader1.i.preheader
	mov	t2, r3
	add	t2, -80
	mov	r4, -2139062144
	mov	r5, r3
	jmp	.LBB75_37
.LBB75_36:                              // %.preheader2.i14
                                        // =>This Inner Loop Header: Depth=1
	add	r0, 4
	mov	r0, [r0]
	add	t2, 1
	call	__bit_and
	mov	r0, t2
	jz	rax, .LBB75_40
	jmp	.LBB75_36
.LBB75_37:                              // %.preheader1.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, [r5]
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	add	r5, 4
	add	t2, 64
	je	rax, r4, .LBB75_37
	jmp	.LBB75_38
.LBB75_38:                              // %.preheader.i15.preheader
	mov	r1, 255
.LBB75_39:                              // %.preheader.i15
                                        // =>This Inner Loop Header: Depth=1
	add	t2, 4
	mov	r0, [t2]
	call	__bit_and
	jnz	rax, .LBB75_39
	jmp	.LBB75_40
.LBB75_40:                              // %strlen.exit
	mov	r4, t2
	sub	r4, r3
	mov	r1, 512
	mov	r0, r4
	call	__bit_or
	mov	r1, 2
	mov	r6, rax
	mov	r0, r6
	call	__bit_shl
	mov	r7, rax
	add	r7, r2
	mov	t1, r2
	mov	r1, 255
.LBB75_41:                              // =>This Inner Loop Header: Depth=1
	mov	r0, [t1]
	call	__bit_and
	mov	r5, t1
	jz	rax, .LBB75_43
	jmp	.LBB75_42
.LBB75_42:                              //   in Loop: Header=BB75_41 Depth=1
	add	r6, -1
	add	t1, 1
	mov	r5, r7
	jnz	r6, .LBB75_41
	jmp	.LBB75_43
.LBB75_43:                              // %strnlen.exit
	sub	r5, r2
	mov	r1, -2147483648
	mov	r6, 0
	mov	r0, r4
	call	__bit_xor
	mov	r7, rax
	mov	r0, r5
	call	__bit_xor
	jl	rax, r7, .LBB75_76
	jmp	.LBB75_44
.LBB75_44:
	mov	r0, r4
	call	__bit_xor
	mov	r0, -2147483394
	jg	rax, r0, .LBB75_75
	jmp	.LBB75_45
.LBB75_45:                              // %.preheader.i17
	mov	r0, rsp
	mov	r1, rsp
	mov	r6, rsp
	mov	r7, rsp
	mov	t0, rsp
	mov	t1, rsp
	mov	t3, rsp
	mov	t4, rsp
	mov	t5, rsp
	mov	t6, rsp
	mov	t7, rsp
	mov	rax, rsp
	mov	x0, rsp
	mov	x1, rsp
	mov	x2, rsp
	mov	x3, r4
	mul	x3, 16843009
	add	x3, 16843009
	add	r0, 4
	mov	[rsp], x3
	mov	[r0], x3
	add	r1, 8
	mov	[r1], x3
	add	r6, 12
	mov	[r6], x3
	add	r7, 16
	mov	[r7], x3
	add	t0, 20
	mov	[t0], x3
	add	t1, 24
	mov	[t1], x3
	add	t3, 28
	mov	[t3], x3
	add	t4, 32
	mov	[t4], x3
	add	t5, 36
	mov	[t5], x3
	add	t6, 40
	mov	[t6], x3
	add	t7, 44
	mov	[t7], x3
	add	rax, 48
	mov	[rax], x3
	add	x0, 52
	mov	[x0], x3
	add	r5, r2
	add	x1, 56
	add	x2, 60
	mov	[x1], x3
	mov	[x2], x3
	jz	r4, .LBB75_48
	jmp	.LBB75_46
.LBB75_46:                              // %.preheader26.preheader
	mov	r6, r3
	mov	r7, r4
	mov	r1, 63
.LBB75_47:                              // %.preheader26
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [r6]
	call	__bit_and
	add	rax, rsp
	mov	[rax], r7
	add	r7, -1
	add	r6, 4
	jnz	r7, .LBB75_47
	jmp	.LBB75_48
.LBB75_48:                              // %.loopexit27
	sub	r5, r4
	mov	t1, r3
	sub	t1, t2
	mov	t2, 8192
	mov	t3, -2147483644
	mov	t4, -2147483645
.LBB75_49:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB75_58 Depth 2
                                        //       Child Loop BB75_60 Depth 3
                                        //       Child Loop BB75_65 Depth 3
                                        //     Child Loop BB75_54 Depth 2
                                        //       Child Loop BB75_55 Depth 3
                                        //     Child Loop BB75_71 Depth 2
	add	r2, -1
	mov	r0, r2
	add	r0, r4
	mov	r0, [r0]
	mov	r1, 63
	call	__bit_and
	add	rax, rsp
	mov	r0, [rax]
	mov	r1, 255
	call	__bit_and
	mov	r6, rax
	mov	r1, -2147483648
	add	r6, r2
	mov	r0, r5
	call	__bit_xor
	mov	r2, rax
	mov	r0, r6
	call	__bit_xor
	jg	rax, r2, .LBB75_68
	jmp	.LBB75_50
.LBB75_50:                              // %.preheader23
                                        //   in Loop: Header=BB75_49 Depth=1
	mov	r0, r4
	call	__bit_xor
	jl	rax, t3, .LBB75_52
	jmp	.LBB75_51
.LBB75_51:                              // %.preheader23.split.preheader
                                        //   in Loop: Header=BB75_49 Depth=1
	jmp	.LBB75_58
.LBB75_52:                              // %.preheader23.split.us
                                        //   in Loop: Header=BB75_49 Depth=1
	jz	r4, .LBB75_74
	jmp	.LBB75_53
.LBB75_53:                              // %.loopexit8.i.us.preheader
                                        //   in Loop: Header=BB75_49 Depth=1
.LBB75_54:                              // %.loopexit8.i.us
                                        //   Parent Loop BB75_49 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB75_55 Depth 3
	mov	t5, 0
	mov	r2, t1
.LBB75_55:                              //   Parent Loop BB75_49 Depth=1
                                        //     Parent Loop BB75_54 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	mov	r0, r6
	add	r0, t5
	mov	r0, [r0]
	mov	r7, r3
	mov	r1, 255
	add	r7, t5
	call	__bit_and
	mov	r0, [r7]
	mov	r7, rax
	call	__bit_and
	je	r7, rax, .LBB75_57
	jmp	.LBB75_56
.LBB75_56:                              // %memcmp.exit.us
                                        //   in Loop: Header=BB75_54 Depth=2
	mov	r0, r6
	add	r0, r4
	mov	r0, [r0]
	mov	r1, 63
	call	__bit_and
	add	rax, rsp
	mov	r0, [rax]
	mov	r1, 255
	call	__bit_and
	mov	r1, -2147483648
	add	r6, rax
	mov	r0, r5
	call	__bit_xor
	mov	r2, rax
	mov	r0, r6
	call	__bit_xor
	jg	rax, r2, .LBB75_68
	jmp	.LBB75_54
.LBB75_57:                              //   in Loop: Header=BB75_55 Depth=3
	add	r2, 1
	mov	r0, r2
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_xor
	add	t5, 4
	jnz	rax, .LBB75_74
	jmp	.LBB75_55
.LBB75_58:                              // %.preheader23.split
                                        //   Parent Loop BB75_49 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB75_60 Depth 3
                                        //       Child Loop BB75_65 Depth 3
	mov	r0, r6
	mov	r1, r3
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	mov	r2, r4
	mov	t5, r3
	mov	t6, r6
	jnz	rax, .LBB75_64
	jmp	.LBB75_59
.LBB75_59:                              // %.preheader.i18.preheader
                                        //   in Loop: Header=BB75_58 Depth=2
	mov	r7, 0
	mov	r2, r4
.LBB75_60:                              // %.preheader.i18
                                        //   Parent Loop BB75_49 Depth=1
                                        //     Parent Loop BB75_58 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	mov	t5, r3
	add	t5, r7
	mov	t6, r6
	add	t6, r7
	mov	r0, [t6]
	mov	r1, [t5]
	jne	r0, r1, .LBB75_63
	jmp	.LBB75_61
.LBB75_61:                              //   in Loop: Header=BB75_60 Depth=3
	add	r2, -4
	mov	r1, -2147483648
	add	r7, 16
	mov	r0, r2
	call	__bit_xor
	jg	rax, t4, .LBB75_60
	jmp	.LBB75_62
.LBB75_62:                              // %.loopexit8.i.loopexit
                                        //   in Loop: Header=BB75_58 Depth=2
	mov	t5, r3
	add	t5, r7
	add	r7, r6
	mov	t6, r7
	jz	r2, .LBB75_74
	jmp	.LBB75_64
.LBB75_63:                              // %.loopexit7.i.preheader.loopexit
                                        //   in Loop: Header=BB75_58 Depth=2
.LBB75_64:                              // %.loopexit7.i.preheader
                                        //   in Loop: Header=BB75_58 Depth=2
.LBB75_65:                              // %.loopexit7.i
                                        //   Parent Loop BB75_49 Depth=1
                                        //     Parent Loop BB75_58 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	mov	r0, [t6]
	mov	r1, 255
	call	__bit_and
	mov	r0, [t5]
	mov	r7, rax
	call	__bit_and
	jne	r7, rax, .LBB75_67
	jmp	.LBB75_66
.LBB75_66:                              //   in Loop: Header=BB75_65 Depth=3
	add	r2, -1
	add	t6, 1
	add	t5, 1
	jz	r2, .LBB75_74
	jmp	.LBB75_65
.LBB75_67:                              // %memcmp.exit
                                        //   in Loop: Header=BB75_58 Depth=2
	mov	r0, r6
	add	r0, r4
	mov	r0, [r0]
	mov	r1, 63
	call	__bit_and
	add	rax, rsp
	mov	r0, [rax]
	mov	r1, 255
	call	__bit_and
	mov	r1, -2147483648
	add	r6, rax
	mov	r0, r5
	call	__bit_xor
	mov	r2, rax
	mov	r0, r6
	call	__bit_xor
	jle	rax, r2, .LBB75_58
	jmp	.LBB75_68
.LBB75_68:                              // %.loopexit
                                        //   in Loop: Header=BB75_49 Depth=1
	mov	r7, r5
	add	r7, r4
	mov	r0, [r7]
	mov	r1, 255
	mov	r2, r6
	call	__bit_and
	mov	r6, 0
	jz	rax, .LBB75_74
	jmp	.LBB75_69
.LBB75_69:                              //   in Loop: Header=BB75_49 Depth=1
	mov	r6, r7
	add	r6, 8192
	mov	r0, 0
	mov	t5, 0
	jmp	.LBB75_71
.LBB75_70:                              // %thread-pre-split
                                        //   in Loop: Header=BB75_71 Depth=2
	add	r0, r7
	add	r0, 4
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r0, t5
	jz	rax, .LBB75_72
	jmp	.LBB75_71
.LBB75_71:                              //   Parent Loop BB75_49 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	t5, 4
	je	t5, t2, .LBB75_73
	jmp	.LBB75_70
.LBB75_72:                              // %thread-pre-split.strnlen.exit19_crit_edge
                                        //   in Loop: Header=BB75_49 Depth=1
	add	t5, r7
	mov	r6, t5
.LBB75_73:                              // %strnlen.exit19
                                        //   in Loop: Header=BB75_49 Depth=1
	sub	r6, r7
	add	r5, r6
	mov	r1, -2147483648
	mov	r6, 0
	mov	r0, r5
	call	__bit_xor
	mov	r7, rax
	mov	r0, r2
	call	__bit_xor
	jle	rax, r7, .LBB75_49
	jmp	.LBB75_74
.LBB75_74:                              // %memcmp.exit.thread
	jmp	.LBB75_76
.LBB75_75:
	mov	r0, r2
	mov	r1, r5
	mov	r2, r3
	mov	r3, r4
	call	two_way_long_needle.48
	mov	r6, rax
.LBB75_76:                              // %strchr.exit
	mov	rax, r6
	mov	x3, [rsp-4]
	mov	x2, [rsp-3]
	mov	x1, [rsp-2]
	mov	x0, [rsp-1]
	ret
// -- End function
// -- Begin function strtok
strtok:                                 // @strtok
// %bb.0:
	mov	r3, r1
	mov	r2, r0
	jnz	r2, .LBB76_2
	jmp	.LBB76_1
.LBB76_1:
	mov	r0, mcasm_static_286ac00b45418210f5e73c40c057dca4
	mov	r2, [r0]
	mov	rax, 0
	jz	r2, .LBB76_14
	jmp	.LBB76_2
.LBB76_2:                               // %.preheader7.i.preheader
.LBB76_3:                               // %.preheader7.i
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB76_4 Depth 2
	mov	r6, r2
	mov	r4, [r6]
	add	r2, 1
	mov	r7, r3
.LBB76_4:                               //   Parent Loop BB76_3 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, [r7]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB76_6
	jmp	.LBB76_5
.LBB76_5:                               //   in Loop: Header=BB76_4 Depth=2
	call	__bit_and
	mov	r5, rax
	mov	r0, r4
	call	__bit_and
	add	r7, 1
	je	rax, r5, .LBB76_3
	jmp	.LBB76_4
.LBB76_6:                               // %.loopexit.i
	mov	r0, r4
	call	__bit_and
	mov	r0, rax
	mov	r7, 0
	mov	rax, 0
	jz	r0, .LBB76_13
	jmp	.LBB76_7
.LBB76_7:                               // %.preheader.i.preheader
.LBB76_8:                               // %.preheader.i
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB76_9 Depth 2
	mov	t1, r2
	mov	r4, [t1]
	add	r2, 1
	mov	t2, r3
.LBB76_9:                               //   Parent Loop BB76_8 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 255
	mov	r0, r4
	call	__bit_and
	mov	r0, [t2]
	mov	r5, rax
	call	__bit_and
	jne	rax, r5, .LBB76_12
	jmp	.LBB76_10
.LBB76_10:
	mov	r0, r4
	call	__bit_and
	mov	r0, rax
	mov	rax, r6
	jz	r0, .LBB76_13
	jmp	.LBB76_11
.LBB76_11:
	mov	[t1], 0
	mov	r7, r2
	mov	rax, r6
	jmp	.LBB76_13
.LBB76_12:                              //   in Loop: Header=BB76_9 Depth=2
	call	__bit_and
	add	t2, 1
	jz	rax, .LBB76_8
	jmp	.LBB76_9
.LBB76_13:                              // %__strtok_r.exit.sink.split
	mov	r0, mcasm_static_286ac00b45418210f5e73c40c057dca4
	mov	[r0], r7
.LBB76_14:                              // %__strtok_r.exit
	ret
// -- End function
// -- Begin function __strtok_r
__strtok_r:                             // @__strtok_r
// %bb.0:
	mov	r4, r1
	mov	r6, r0
	jnz	r6, .LBB77_2
	jmp	.LBB77_1
.LBB77_1:
	mov	r6, [r2]
	mov	rax, 0
	jz	r6, .LBB77_20
	jmp	.LBB77_2
.LBB77_2:
	jz	r3, .LBB77_4
	jmp	.LBB77_3
.LBB77_3:                               // %.preheader7.preheader
	mov	r7, r6
	jmp	.LBB77_7
.LBB77_4:
	mov	r5, [r6]
	mov	r7, r6
	add	r7, 1
	mov	t1, r4
.LBB77_5:                               // =>This Inner Loop Header: Depth=1
	mov	r0, [t1]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB77_11
	jmp	.LBB77_6
.LBB77_6:                               //   in Loop: Header=BB77_5 Depth=1
	call	__bit_and
	mov	r3, rax
	mov	r0, r5
	call	__bit_and
	add	t1, 1
	je	rax, r3, .LBB77_10
	jmp	.LBB77_5
.LBB77_7:                               // %.preheader7
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB77_8 Depth 2
	mov	r6, r7
	mov	r5, [r6]
	add	r7, 1
	mov	t1, r4
.LBB77_8:                               //   Parent Loop BB77_7 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, [t1]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB77_11
	jmp	.LBB77_9
.LBB77_9:                               //   in Loop: Header=BB77_8 Depth=2
	call	__bit_and
	mov	r3, rax
	mov	r0, r5
	call	__bit_and
	add	t1, 1
	je	rax, r3, .LBB77_7
	jmp	.LBB77_8
.LBB77_10:
	mov	[r2], r7
	mov	[r6], 0
	mov	rax, r6
	jmp	.LBB77_20
.LBB77_11:                              // %.loopexit
	mov	r0, r5
	call	__bit_and
	jz	rax, .LBB77_13
	jmp	.LBB77_12
.LBB77_12:                              // %.preheader.preheader
	jmp	.LBB77_14
.LBB77_13:
	mov	[r2], 0
	mov	rax, 0
	jmp	.LBB77_20
.LBB77_14:                              // %.preheader
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB77_15 Depth 2
	mov	t1, r7
	mov	r5, [t1]
	add	r7, 1
	mov	t2, r4
.LBB77_15:                              //   Parent Loop BB77_14 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 255
	mov	r0, r5
	call	__bit_and
	mov	r0, [t2]
	mov	r3, rax
	call	__bit_and
	jne	rax, r3, .LBB77_19
	jmp	.LBB77_16
.LBB77_16:
	mov	r0, r5
	call	__bit_and
	mov	r0, 0
	jz	rax, .LBB77_18
	jmp	.LBB77_17
.LBB77_17:
	mov	[t1], 0
	mov	r0, r7
.LBB77_18:
	mov	[r2], r0
	mov	rax, r6
	jmp	.LBB77_20
.LBB77_19:                              //   in Loop: Header=BB77_15 Depth=2
	call	__bit_and
	add	t2, 1
	jz	rax, .LBB77_14
	jmp	.LBB77_15
.LBB77_20:
	ret
// -- End function
// -- Begin function strtok_r
strtok_r:                               // @strtok_r
// %bb.0:
	mov	r4, r1
	mov	r3, r0
	jnz	r3, .LBB78_2
	jmp	.LBB78_1
.LBB78_1:
	mov	r3, [r2]
	mov	rax, 0
	jz	r3, .LBB78_14
	jmp	.LBB78_2
.LBB78_2:                               // %.preheader31
.LBB78_3:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB78_4 Depth 2
	mov	r7, r3
	mov	r5, [r7]
	add	r3, 1
	mov	t1, r4
.LBB78_4:                               //   Parent Loop BB78_3 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, [t1]
	mov	r1, 255
	call	__bit_and
	jz	rax, .LBB78_6
	jmp	.LBB78_5
.LBB78_5:                               //   in Loop: Header=BB78_4 Depth=2
	call	__bit_and
	mov	r6, rax
	mov	r0, r5
	call	__bit_and
	add	t1, 1
	je	rax, r6, .LBB78_3
	jmp	.LBB78_4
.LBB78_6:
	mov	r0, r5
	call	__bit_and
	mov	r0, rax
	mov	t1, 0
	mov	rax, 0
	jz	r0, .LBB78_13
	jmp	.LBB78_7
.LBB78_7:                               // %.preheader.preheader
.LBB78_8:                               // %.preheader
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB78_9 Depth 2
	mov	t2, r3
	mov	r5, [t2]
	add	r3, 1
	mov	t3, r4
.LBB78_9:                               //   Parent Loop BB78_8 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 255
	mov	r0, r5
	call	__bit_and
	mov	r0, [t3]
	mov	r6, rax
	call	__bit_and
	jne	rax, r6, .LBB78_12
	jmp	.LBB78_10
.LBB78_10:
	mov	r0, r5
	call	__bit_and
	mov	r0, rax
	mov	rax, r7
	jz	r0, .LBB78_13
	jmp	.LBB78_11
.LBB78_11:
	mov	[t2], 0
	mov	t1, r3
	mov	rax, r7
	jmp	.LBB78_13
.LBB78_12:                              //   in Loop: Header=BB78_9 Depth=2
	call	__bit_and
	add	t3, 1
	jz	rax, .LBB78_8
	jmp	.LBB78_9
.LBB78_13:
	mov	[r2], t1
.LBB78_14:
	ret
// -- End function
static mcasm_static_3da3d5d57e159b8de744dd0ffa9d06c5 [0]
static mcasm_static_120360ef34487e8c71315170e55a9280 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
static mcasm_static_85b4ab734597d3737c690b05ac7caa7d [40, 110, 117, 108, 108, 41, 0]
static mcasm_static_067109f202df94d33292f33a22bdb1e2 [48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 0]
static mcasm_static_85f5982e2bd1a4d205f1ac51ed6294b3 [78, 97, 78, 0]
static mcasm_static_8da01a94af81936d9fd310472be1e764 [110, 97, 110, 0]
static mcasm_static_182f086555dd68bfb237d591fe2273c9 [73, 110, 102, 105, 110, 105, 116, 121, 0]
static mcasm_static_ccfcec774c0173bfea25317fcbd7a74b [105, 110, 102, 0]
static mcasm_static_2d61138acd3f842e66affc15dc4b4acc [45, 73, 110, 102, 105, 110, 105, 116, 121, 0]
static mcasm_static_2a332ce1019f7d241215866e128eca51 [45, 105, 110, 102, 0]
static mcasm_static_a5283b90efaa9cce44f90fcd4e2ba4be [48, 48, 48, 49, 48, 50, 48, 51, 48, 52, 48, 53, 48, 54, 48, 55, 48, 56, 48, 57, 49, 48, 49, 49, 49, 50, 49, 51, 49, 52, 49, 53, 49, 54, 49, 55, 49, 56, 49, 57, 50, 48, 50, 49, 50, 50, 50, 51, 50, 52, 50, 53, 50, 54, 50, 55, 50, 56, 50, 57, 51, 48, 51, 49, 51, 50, 51, 51, 51, 52, 51, 53, 51, 54, 51, 55, 51, 56, 51, 57, 52, 48, 52, 49, 52, 50, 52, 51, 52, 52, 52, 53, 52, 54, 52, 55, 52, 56, 52, 57, 53, 48, 53, 49, 53, 50, 53, 51, 53, 52, 53, 53, 53, 54, 53, 55, 53, 56, 53, 57, 54, 48, 54, 49, 54, 50, 54, 51, 54, 52, 54, 53, 54, 54, 54, 55, 54, 56, 54, 57, 55, 48, 55, 49, 55, 50, 55, 51, 55, 52, 55, 53, 55, 54, 55, 55, 55, 56, 55, 57, 56, 48, 56, 49, 56, 50, 56, 51, 56, 52, 56, 53, 56, 54, 56, 55, 56, 56, 56, 57, 57, 48, 57, 49, 57, 50, 57, 51, 57, 52, 57, 53, 57, 54, 57, 55, 57, 56, 57, 57, 0]
static mcasm_static_297ce85d1d6061ce7e975a0742e97867 [48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 0]
static mcasm_static_de0ca07a3ba831a25dedc7210c66af9c [48, 48, 48, 49, 48, 50, 48, 51, 48, 52, 48, 53, 48, 54, 48, 55, 48, 56, 48, 57, 49, 48, 49, 49, 49, 50, 49, 51, 49, 52, 49, 53, 49, 54, 49, 55, 49, 56, 49, 57, 50, 48, 50, 49, 50, 50, 50, 51, 50, 52, 50, 53, 50, 54, 50, 55, 50, 56, 50, 57, 51, 48, 51, 49, 51, 50, 51, 51, 51, 52, 51, 53, 51, 54, 51, 55, 51, 56, 51, 57, 52, 48, 52, 49, 52, 50, 52, 51, 52, 52, 52, 53, 52, 54, 52, 55, 52, 56, 52, 57, 53, 48, 53, 49, 53, 50, 53, 51, 53, 52, 53, 53, 53, 54, 53, 55, 53, 56, 53, 57, 54, 48, 54, 49, 54, 50, 54, 51, 54, 52, 54, 53, 54, 54, 54, 55, 54, 56, 54, 57, 55, 48, 55, 49, 55, 50, 55, 51, 55, 52, 55, 53, 55, 54, 55, 55, 55, 56, 55, 57, 56, 48, 56, 49, 56, 50, 56, 51, 56, 52, 56, 53, 56, 54, 56, 55, 56, 56, 56, 57, 57, 48, 57, 49, 57, 50, 57, 51, 57, 52, 57, 53, 57, 54, 57, 55, 57, 56, 57, 57]
static mcasm_static_5c63489e54ec887af4b4f111740ffb34 [0]
static mcasm_static_286ac00b45418210f5e73c40c057dca4 [0]
static mcasm_static_d4d301f7c5b4ccd206168478e318f423 [0, 0]

export _ll_shared:z/putchar_0:
    inline data modify storage std:vm s1 set value {str: "", next: ""}
    inline $data modify storage std:vm s1.str set from storage std:vm char2str_map[$(a)]
	ret

export _ll_shared:z/putchar_1:
    inline $data modify storage std:vm s1.next set from storage std:vm char2str_map[$(a)]
	ret
