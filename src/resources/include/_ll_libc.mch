#once

#include "_ll_std"

// -- Begin function printf
printf:                                 // @printf
// %bb.0:
	mov	r1, rsp
	add	r1, 4
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
	mov	r6, mcasm_static_f630eac0c7abfe5fc5d239ba48e65458
	mov	r4, [r6]
	mov	r0, 10
	mov	r2, rax
	jne	r2, r0, .LBB1_2
	jmp	.LBB1_1
.LBB1_1:
	mov	r0, mcasm_static_b6a660bbde72203e160a805153582f96
	add	r4, r0
	mov	r1, 3
	mov	r0, r4
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	r4, rax
	mov	r5, [r4]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r0, 255
	mov	r3, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r0, 0
	mov	r5, rax
	mov	r1, r3
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	r0, mcasm_static_b6a660bbde72203e160a805153582f96
	mov	[r4], rax
	call	puts
	mov	[r6], 0
	jmp	.LBB1_5
.LBB1_2:
	mov	r1, -2147483648
	mov	r0, r4
	call	__bit_xor
	mov	r0, -2147482625
	jl	rax, r0, .LBB1_4
	jmp	.LBB1_3
.LBB1_3:
	mov	r0, mcasm_static_b6a660bbde72203e160a805153582f96
	add	r4, r0
	mov	r1, 3
	mov	r0, r4
	call	__bit_and
	mov	r1, -4
	mov	r5, rax
	call	__bit_and
	mov	r6, rax
	mov	r4, [r6]
	mov	r1, 3
	mov	r0, r5
	call	__bit_shl
	mov	r0, 255
	mov	r5, rax
	mov	r1, r5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r4
	mov	r1, rax
	call	__bit_and
	mov	r7, rax
	mov	r0, 0
	mov	r4, 0
	mov	r1, r5
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	r0, mcasm_static_b6a660bbde72203e160a805153582f96
	mov	[r6], rax
	call	puts
.LBB1_4:
	mov	r5, r4
	add	r5, 1
	mov	r6, mcasm_static_f630eac0c7abfe5fc5d239ba48e65458
	mov	r0, mcasm_static_b6a660bbde72203e160a805153582f96
	add	r0, r4
	mov	r1, 3
	mov	[r6], r5
	call	__bit_and
	mov	r1, -4
	mov	r4, rax
	call	__bit_and
	mov	r5, rax
	mov	r6, [r5]
	mov	r1, 3
	mov	r0, r4
	call	__bit_shl
	mov	r1, 255
	mov	r4, rax
	mov	r0, r3
	call	__bit_and
	mov	r0, 255
	mov	r3, rax
	mov	r1, r4
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	r6, rax
	mov	r0, r3
	call	__bit_and
	mov	r0, rax
	mov	r1, r4
	call	__bit_shl
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	[r5], rax
.LBB1_5:                                // %__stdout_linebuf_putc.exit
	mov	rax, r2
	ret
// -- End function
// -- Begin function __ll_puts_char0
__ll_puts_char0:                        // @__ll_puts_char0
// %bb.0:
	inline data modify storage std:vm s0 set value {a: -1}
	inline execute store result storage std:vm s0.a int 1 run scoreboard players get r0 vm_regs
	inline function _ll_shared:z/__ll_puts_char0_0 with storage std:vm s0
	ret
// -- End function
// -- Begin function __ll_puts_char1
__ll_puts_char1:                        // @__ll_puts_char1
// %bb.0:
	inline data modify storage std:vm s0 set value {a: -1}
	inline execute store result storage std:vm s0.a int 1 run scoreboard players get r0 vm_regs
	inline function _ll_shared:z/__ll_puts_char1_0 with storage std:vm s0
	ret
// -- End function
// -- Begin function puts
puts:                                   // @puts
// %bb.0:
	jnz	r0, .LBB4_2
	jmp	.LBB4_1
.LBB4_1:
	call	abort
.LBB4_2:
	mov	rax, 1
	inline data modify storage std:vm s0 set value {a: -1}
	inline execute store result storage std:vm s0.a int 1 run scoreboard players get r0 vm_regs
	inline function _ll_shared:z/puts_0 with storage std:vm s0
	ret
// -- End function
// -- Begin function snprintf
snprintf:                               // @snprintf
// %bb.0:
	mov	r3, rsp
	add	r3, 12
	mov	[rsp], r3
	call	vsnprintf
	ret
// -- End function
// -- Begin function sprintf
sprintf:                                // @sprintf
// %bb.0:
	mov	r2, r1
	mov	r3, rsp
	add	r3, 8
	mov	r1, -1
	mov	[rsp], r3
	call	vsnprintf
	ret
// -- End function
// -- Begin function __stdout_linebuf_flush
__stdout_linebuf_flush:                 // @__stdout_linebuf_flush
// %bb.0:
	mov	r5, mcasm_static_f630eac0c7abfe5fc5d239ba48e65458
	mov	r0, [r5]
	jz	r0, .LBB7_2
	jmp	.LBB7_1
.LBB7_1:
	mov	r1, mcasm_static_b6a660bbde72203e160a805153582f96
	add	r0, r1
	mov	r1, 3
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r3, rax
	mov	r4, [r3]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r4
	mov	r1, rax
	call	__bit_and
	mov	r0, 0
	mov	r4, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, r4
	mov	r1, rax
	call	__bit_or
	mov	r0, mcasm_static_b6a660bbde72203e160a805153582f96
	mov	[r3], rax
	call	puts
	mov	[r5], 0
.LBB7_2:
	mov	rax, 0
	ret
// -- End function
// -- Begin function __stdout_linebuf_putc
__stdout_linebuf_putc:                  // @__stdout_linebuf_putc
// %bb.0:
	mov	r1, 255
	mov	r3, r0
	call	__bit_and
	mov	r6, mcasm_static_f630eac0c7abfe5fc5d239ba48e65458
	mov	r4, [r6]
	mov	r0, 10
	mov	r2, rax
	jne	r2, r0, .LBB8_2
	jmp	.LBB8_1
.LBB8_1:
	mov	r0, mcasm_static_b6a660bbde72203e160a805153582f96
	add	r4, r0
	mov	r1, 3
	mov	r0, r4
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	r4, rax
	mov	r5, [r4]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r0, 255
	mov	r3, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r0, 0
	mov	r5, rax
	mov	r1, r3
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	r0, mcasm_static_b6a660bbde72203e160a805153582f96
	mov	[r4], rax
	call	puts
	mov	[r6], 0
	jmp	.LBB8_5
.LBB8_2:
	mov	r1, -2147483648
	mov	r0, r4
	call	__bit_xor
	mov	r0, -2147482625
	jl	rax, r0, .LBB8_4
	jmp	.LBB8_3
.LBB8_3:
	mov	r0, mcasm_static_b6a660bbde72203e160a805153582f96
	add	r4, r0
	mov	r1, 3
	mov	r0, r4
	call	__bit_and
	mov	r1, -4
	mov	r5, rax
	call	__bit_and
	mov	r6, rax
	mov	r4, [r6]
	mov	r1, 3
	mov	r0, r5
	call	__bit_shl
	mov	r0, 255
	mov	r5, rax
	mov	r1, r5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r4
	mov	r1, rax
	call	__bit_and
	mov	r7, rax
	mov	r0, 0
	mov	r4, 0
	mov	r1, r5
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	r0, mcasm_static_b6a660bbde72203e160a805153582f96
	mov	[r6], rax
	call	puts
.LBB8_4:
	mov	r5, r4
	add	r5, 1
	mov	r6, mcasm_static_f630eac0c7abfe5fc5d239ba48e65458
	mov	r0, mcasm_static_b6a660bbde72203e160a805153582f96
	add	r0, r4
	mov	r1, 3
	mov	[r6], r5
	call	__bit_and
	mov	r1, -4
	mov	r4, rax
	call	__bit_and
	mov	r5, rax
	mov	r6, [r5]
	mov	r1, 3
	mov	r0, r4
	call	__bit_shl
	mov	r1, 255
	mov	r4, rax
	mov	r0, r3
	call	__bit_and
	mov	r0, 255
	mov	r3, rax
	mov	r1, r4
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	r6, rax
	mov	r0, r3
	call	__bit_and
	mov	r0, rax
	mov	r1, r4
	call	__bit_shl
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	[r5], rax
.LBB8_5:
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
	mov	[rsp-14], x13
	mov	r2, r1
	mov	r3, r0
	jz	r2, .LBB9_42
	jmp	.LBB9_1
.LBB9_1:                                // %.preheader8.preheader
	mov	t7, 3
	mov	x0, -2147483644
	mov	x1, 10
	mov	x2, -2139062144
	mov	x3, -2147483645
	mov	x4, mcasm_static_f630eac0c7abfe5fc5d239ba48e65458
	mov	x5, mcasm_static_b6a660bbde72203e160a805153582f96
	mov	x6, -2147483632
	mov	x7, -2147482625
	mov	x8, -2147483633
.LBB9_2:                                // %.preheader8
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB9_4 Depth 2
                                        //     Child Loop BB9_9 Depth 2
                                        //     Child Loop BB9_13 Depth 2
                                        //     Child Loop BB9_19 Depth 2
                                        //       Child Loop BB9_21 Depth 3
                                        //       Child Loop BB9_30 Depth 3
                                        //       Child Loop BB9_27 Depth 3
                                        //       Child Loop BB9_28 Depth 3
                                        //       Child Loop BB9_34 Depth 3
	mov	r1, 3
	mov	r0, r3
	call	__bit_and
	mov	r4, r2
	mov	r5, r3
	jz	rax, .LBB9_7
	jmp	.LBB9_3
.LBB9_3:                                // %.preheader5.preheader
                                        //   in Loop: Header=BB9_2 Depth=1
	mov	r6, r3
	add	r6, 1
	mov	r5, r3
	mov	r4, r2
.LBB9_4:                                // %.preheader5
                                        //   Parent Loop BB9_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	x9, 0
	jz	r4, .LBB9_15
	jmp	.LBB9_5
.LBB9_5:                                //   in Loop: Header=BB9_4 Depth=2
	mov	r1, 2
	mov	r0, r5
	call	__bit_shr
	mov	r1, 3
	mov	r7, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r7]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	x9, r5
	je	rax, x1, .LBB9_15
	jmp	.LBB9_6
.LBB9_6:                                //   in Loop: Header=BB9_4 Depth=2
	mov	r1, 3
	add	r5, 1
	mov	r0, r6
	call	__bit_and
	add	r6, 1
	add	r4, -1
	jnz	rax, .LBB9_4
	jmp	.LBB9_7
.LBB9_7:                                // %.loopexit9.i
                                        //   in Loop: Header=BB9_2 Depth=1
	mov	r1, -2147483648
	mov	r0, r4
	call	__bit_xor
	jl	rax, x0, .LBB9_11
	jmp	.LBB9_8
.LBB9_8:                                // %.preheader.preheader
                                        //   in Loop: Header=BB9_2 Depth=1
.LBB9_9:                                // %.preheader
                                        //   Parent Loop BB9_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r6, [r5]
	mov	r1, 168430090
	mov	r0, r6
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, r6
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, x2, .LBB9_12
	jmp	.LBB9_10
.LBB9_10:                               //   in Loop: Header=BB9_9 Depth=2
	add	r4, -4
	mov	r1, -2147483648
	add	r5, 4
	mov	r0, r4
	call	__bit_xor
	jg	rax, x3, .LBB9_9
	jmp	.LBB9_11
.LBB9_11:                               // %.loopexit6.i
                                        //   in Loop: Header=BB9_2 Depth=1
	mov	x9, 0
	jz	r4, .LBB9_15
	jmp	.LBB9_12
.LBB9_12:                               // %.loopexit5.i.preheader
                                        //   in Loop: Header=BB9_2 Depth=1
.LBB9_13:                               // %.loopexit5.i
                                        //   Parent Loop BB9_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 2
	mov	r0, r5
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	x9, r5
	je	rax, x1, .LBB9_15
	jmp	.LBB9_14
.LBB9_14:                               //   in Loop: Header=BB9_13 Depth=2
	add	r4, -1
	add	r5, 1
	mov	x9, 0
	jnz	r4, .LBB9_13
	jmp	.LBB9_15
.LBB9_15:                               // %memchr.exit
                                        //   in Loop: Header=BB9_2 Depth=1
	mov	x10, r2
	jz	x9, .LBB9_17
	jmp	.LBB9_16
.LBB9_16:                               //   in Loop: Header=BB9_2 Depth=1
	mov	x10, x9
	sub	x10, r3
.LBB9_17:                               //   in Loop: Header=BB9_2 Depth=1
	jz	x10, .LBB9_39
	jmp	.LBB9_18
.LBB9_18:                               //   in Loop: Header=BB9_2 Depth=1
	mov	r6, [x4]
.LBB9_19:                               //   Parent Loop BB9_2 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB9_21 Depth 3
                                        //       Child Loop BB9_30 Depth 3
                                        //       Child Loop BB9_27 Depth 3
                                        //       Child Loop BB9_28 Depth 3
                                        //       Child Loop BB9_34 Depth 3
	mov	r5, 1023
	sub	r5, r6
	mov	r4, x10
	sub	r4, r5
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
	add	r4, r5
	mov	r5, mcasm_static_b6a660bbde72203e160a805153582f96
	mov	r1, -2147483648
	add	r5, r6
	mov	r0, r4
	call	__bit_xor
	mov	t1, r3
	mov	r7, r4
	jl	rax, x6, .LBB9_32
	jmp	.LBB9_20
.LBB9_20:                               //   in Loop: Header=BB9_19 Depth=2
	mov	r1, 3
	mov	r0, r5
	call	__bit_and
	mov	r7, rax
	mov	x12, 8
	sub	x12, r7
	mov	t6, 0
	mov	x13, 1
	mov	t2, r3
.LBB9_21:                               //   Parent Loop BB9_2 Depth=1
                                        //     Parent Loop BB9_19 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	mov	x11, x13
	mov	t1, r5
	mov	r0, r3
	add	r0, t6
	mov	r1, 2
	add	t1, t6
	call	__bit_shr
	mov	r1, 3
	mov	t3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	t3, rax
	mov	r0, t1
	call	__bit_and
	mov	r1, -4
	mov	t4, rax
	call	__bit_and
	mov	t1, rax
	mov	t5, [t1]
	mov	r1, 3
	mov	r0, t4
	call	__bit_shl
	mov	r0, 255
	mov	t4, rax
	mov	r1, t4
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t5
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t5, rax
	mov	r0, t3
	call	__bit_and
	mov	r0, rax
	mov	r1, t4
	call	__bit_shl
	mov	r0, t5
	mov	r1, rax
	call	__bit_or
	mov	[t1], rax
	add	t6, 1
	add	t2, 1
	add	x13, 1
	jne	x12, t6, .LBB9_21
	jmp	.LBB9_22
.LBB9_22:                               //   in Loop: Header=BB9_19 Depth=2
	mov	r1, -8
	mov	r0, r7
	call	__bit_or
	mov	r7, rax
	mov	t1, r3
	add	t1, t6
	mov	r1, 3
	add	r7, r4
	mov	r0, t1
	call	__bit_and
	mov	r0, rax
	jnz	r0, .LBB9_29
	jmp	.LBB9_23
.LBB9_23:                               //   in Loop: Header=BB9_19 Depth=2
	mov	r1, -2147483648
	add	r5, t6
	mov	r0, r7
	call	__bit_xor
	jl	rax, x6, .LBB9_25
	jmp	.LBB9_24
.LBB9_24:                               // %.preheader.i.preheader
                                        //   in Loop: Header=BB9_19 Depth=2
	jmp	.LBB9_27
.LBB9_25:                               // %.preheader118
                                        //   in Loop: Header=BB9_19 Depth=2
	jmp	.LBB9_28
.LBB9_26:                               //   in Loop: Header=BB9_19 Depth=2
	jg	r7, t7, .LBB9_25
	jmp	.LBB9_32
.LBB9_27:                               // %.preheader.i
                                        //   Parent Loop BB9_2 Depth=1
                                        //     Parent Loop BB9_19 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	mov	r0, [t1]
	mov	r1, t1
	add	r1, 4
	mov	[r5], r0
	mov	r0, [r1]
	mov	r1, r5
	add	r1, 4
	mov	t0, t1
	add	t0, 8
	mov	t2, r5
	mov	[r1], r0
	mov	r0, [t0]
	add	t2, 8
	mov	r1, t1
	add	r1, 12
	mov	t0, r5
	add	t0, 12
	mov	[t2], r0
	add	t1, 16
	mov	r0, [r1]
	add	r5, 16
	add	r7, -16
	mov	r1, -2147483648
	mov	[t0], r0
	mov	r0, r7
	call	__bit_xor
	jg	rax, x8, .LBB9_27
	jmp	.LBB9_26
.LBB9_28:                               //   Parent Loop BB9_2 Depth=1
                                        //     Parent Loop BB9_19 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	mov	r0, [t1]
	add	t1, 4
	mov	[r5], r0
	add	r7, -4
	mov	r1, -2147483648
	add	r5, 4
	mov	r0, r7
	call	__bit_xor
	jg	rax, x3, .LBB9_28
	jmp	.LBB9_32
.LBB9_29:                               //   in Loop: Header=BB9_19 Depth=2
	call	__bit_shl
	mov	r6, rax
	mov	t3, 8
	sub	t3, r0
	mov	r0, t2
	call	__bit_and
	mov	x12, r3
	sub	x12, rax
	add	t6, x12
	mov	t4, [t6]
	add	x12, 4
.LBB9_30:                               //   Parent Loop BB9_2 Depth=1
                                        //     Parent Loop BB9_19 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	mov	r0, x12
	add	r0, x11
	mov	t5, [r0]
	mov	x13, r5
	mov	r1, 31
	add	x13, x11
	mov	r0, r6
	call	__bit_and
	mov	r0, t4
	mov	r1, rax
	call	__bit_shl
	mov	t4, rax
	mov	r0, r6
	call	__bit_not
	mov	r1, 31
	mov	r0, rax
	call	__bit_and
	mov	r1, 1
	mov	t6, rax
	mov	r0, t5
	call	__bit_shr
	mov	r0, rax
	mov	r1, t6
	call	__bit_shr
	mov	r0, t4
	mov	r1, rax
	call	__bit_or
	mov	[x13], rax
	add	r7, -4
	mov	r1, -2147483648
	add	x11, 4
	mov	r0, t3
	call	__bit_xor
	mov	t6, rax
	mov	r0, r7
	call	__bit_xor
	mov	t4, t5
	jge	rax, t6, .LBB9_30
	jmp	.LBB9_31
.LBB9_31:                               //   in Loop: Header=BB9_19 Depth=2
	mov	r1, -4
	mov	r0, t1
	call	__bit_or
	mov	r1, 3
	mov	r6, rax
	mov	r0, t2
	call	__bit_and
	mov	t1, r3
	sub	t1, rax
	add	t1, r6
	add	t1, x11
	add	t1, 4
	add	r5, x11
	jmp	.LBB9_33
.LBB9_32:                               // %.loopexit8.i
                                        //   in Loop: Header=BB9_19 Depth=2
	jz	r7, .LBB9_36
	jmp	.LBB9_33
.LBB9_33:                               // %.preheader115
                                        //   in Loop: Header=BB9_19 Depth=2
	mov	t3, t1
	mov	t4, r5
.LBB9_34:                               //   Parent Loop BB9_2 Depth=1
                                        //     Parent Loop BB9_19 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	add	r7, -1
	mov	r1, 2
	add	t3, 1
	mov	r0, t1
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r6, rax
	mov	r1, 3
	add	t4, 1
	mov	r0, r5
	call	__bit_and
	mov	r1, -4
	mov	t1, rax
	call	__bit_and
	mov	r5, rax
	mov	t2, [r5]
	mov	r1, 3
	mov	r0, t1
	call	__bit_shl
	mov	r0, 255
	mov	t1, rax
	mov	r1, t1
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t2
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t2, rax
	mov	r0, r6
	call	__bit_and
	mov	r0, rax
	mov	r1, t1
	call	__bit_shl
	mov	r0, t2
	mov	r1, rax
	call	__bit_or
	mov	[r5], rax
	mov	r5, t4
	mov	t1, t3
	jnz	r7, .LBB9_34
	jmp	.LBB9_35
.LBB9_35:                               // %memcpy.exit.loopexit
                                        //   in Loop: Header=BB9_19 Depth=2
	mov	r6, [x4]
.LBB9_36:                               // %memcpy.exit
                                        //   in Loop: Header=BB9_19 Depth=2
	add	r6, r4
	mov	r1, -2147483648
	mov	[x4], r6
	mov	r0, r6
	call	__bit_xor
	jl	rax, x7, .LBB9_38
	jmp	.LBB9_37
.LBB9_37:                               //   in Loop: Header=BB9_19 Depth=2
	add	r6, x5
	mov	r1, 3
	mov	r0, r6
	call	__bit_and
	mov	r1, -4
	mov	r5, rax
	call	__bit_and
	mov	r7, rax
	mov	r6, [r7]
	mov	r1, 3
	mov	r0, r5
	call	__bit_shl
	mov	r0, 255
	mov	r5, rax
	mov	r1, r5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	t1, rax
	mov	r0, 0
	mov	r6, 0
	mov	r1, r5
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	r0, mcasm_static_b6a660bbde72203e160a805153582f96
	mov	[r7], rax
	call	puts
	mov	[x4], 0
.LBB9_38:                               //   in Loop: Header=BB9_19 Depth=2
	add	r3, r4
	sub	x10, r4
	sub	r2, r4
	jnz	x10, .LBB9_19
	jmp	.LBB9_39
.LBB9_39:                               // %.loopexit
                                        //   in Loop: Header=BB9_2 Depth=1
	jz	x9, .LBB9_41
	jmp	.LBB9_40
.LBB9_40:                               //   in Loop: Header=BB9_2 Depth=1
	mov	r0, mcasm_static_b6a660bbde72203e160a805153582f96
	add	r0, [x4]
	add	r3, 1
	mov	r1, 3
	add	r2, -1
	call	__bit_and
	mov	r1, -4
	mov	r4, rax
	call	__bit_and
	mov	r5, rax
	mov	r6, [r5]
	mov	r1, 3
	mov	r0, r4
	call	__bit_shl
	mov	r0, 255
	mov	r4, rax
	mov	r1, r4
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	r0, 0
	mov	r6, rax
	mov	r1, r4
	call	__bit_shl
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	r0, mcasm_static_b6a660bbde72203e160a805153582f96
	mov	[r5], rax
	call	puts
	mov	[x4], 0
.LBB9_41:                               //   in Loop: Header=BB9_2 Depth=1
	jnz	r2, .LBB9_2
	jmp	.LBB9_42
.LBB9_42:                               // %.loopexit9
	mov	rax, 0
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
	jl	r1, r0, .LBB10_41
	jmp	.LBB10_1
.LBB10_1:
	mov	r0, 511
	jg	r1, r0, .LBB10_3
	jmp	.LBB10_2
.LBB10_2:                               // %.thread
	mov	r0, rsp
	call	__stdout_linebuf_write
	mov	r5, r1
	jmp	.LBB10_41
.LBB10_3:
	add	r1, 1
	mov	r0, r1
	call	malloc
	mov	r4, rax
	jnz	r4, .LBB10_5
	jmp	.LBB10_4
.LBB10_4:
	mov	r0, mcasm_static_719163f5f9eae4be69e01d67d1a83915
	mov	[r0], 12
	jmp	.LBB10_41
.LBB10_5:
	mov	r3, [rsp]
	mov	[rsp], r3
	mov	r0, r4
	call	vsnprintf
	mov	r0, -1
	mov	r5, rax
	jg	r5, r0, .LBB10_23
	jmp	.LBB10_6
.LBB10_6:
	mov	r0, 16384
	mov	r1, [r0]
	mov	r2, 1296125004
	je	r1, r2, .LBB10_8
	jmp	.LBB10_7
.LBB10_7:
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
	jmp	.LBB10_13
.LBB10_8:
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
	jz	r3, .LBB10_13
	jmp	.LBB10_9
.LBB10_9:
	jge	r3, r2, .LBB10_13
	jmp	.LBB10_10
.LBB10_10:                              // %.preheader.i.preheader
.LBB10_11:                              // %.preheader.i
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
	jz	r3, .LBB10_13
	jmp	.LBB10_12
.LBB10_12:                              // %.preheader.i
                                        //   in Loop: Header=BB10_11 Depth=1
	jl	r3, r2, .LBB10_11
	jmp	.LBB10_13
.LBB10_13:                              // %.loopexit.i
	jne	r3, r2, .LBB10_15
	jmp	.LBB10_14
.LBB10_14:
	call	abort
.LBB10_15:
	mov	r0, 16386
	jz	r6, .LBB10_19
	jmp	.LBB10_16
.LBB10_16:
	mov	r0, [r6]
	mov	r1, r0
	add	r1, r6
	jne	r1, r2, .LBB10_18
	jmp	.LBB10_17
.LBB10_17:
	add	r0, r5
	mov	[r6], r0
	mov	r2, r6
	jmp	.LBB10_20
.LBB10_18:
	add	r6, 1
	mov	r0, r6
.LBB10_19:
	mov	[r0], r2
	mov	[r4], r3
.LBB10_20:
	mov	r1, 1
	mov	r5, -1
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB10_41
	jmp	.LBB10_21
.LBB10_21:
	mov	r0, [r2]
	mov	r1, r0
	add	r1, r2
	jne	r1, r3, .LBB10_41
	jmp	.LBB10_22
.LBB10_22:
	add	r0, [r3]
	mov	[r2], r0
	add	r3, 1
	mov	r0, [r3]
	add	r2, 1
	mov	[r2], r0
	jmp	.LBB10_41
.LBB10_23:
	mov	r0, r4
	mov	r1, r5
	call	__stdout_linebuf_write
	je	r4, rsp, .LBB10_41
	jmp	.LBB10_24
.LBB10_24:
	mov	r0, 16384
	mov	r1, [r0]
	mov	r2, 1296125004
	je	r1, r2, .LBB10_26
	jmp	.LBB10_25
.LBB10_25:
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
	jmp	.LBB10_31
.LBB10_26:
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
	jz	r3, .LBB10_31
	jmp	.LBB10_27
.LBB10_27:
	jge	r3, r2, .LBB10_31
	jmp	.LBB10_28
.LBB10_28:                              // %.preheader.i5.preheader
.LBB10_29:                              // %.preheader.i5
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
	jz	r3, .LBB10_31
	jmp	.LBB10_30
.LBB10_30:                              // %.preheader.i5
                                        //   in Loop: Header=BB10_29 Depth=1
	jl	r3, r2, .LBB10_29
	jmp	.LBB10_31
.LBB10_31:                              // %.loopexit.i4
	jne	r3, r2, .LBB10_33
	jmp	.LBB10_32
.LBB10_32:
	call	abort
.LBB10_33:
	mov	r0, 16386
	jz	r7, .LBB10_37
	jmp	.LBB10_34
.LBB10_34:
	mov	r0, [r7]
	mov	r1, r0
	add	r1, r7
	jne	r1, r2, .LBB10_36
	jmp	.LBB10_35
.LBB10_35:
	add	r0, r6
	mov	[r7], r0
	mov	r2, r7
	jmp	.LBB10_38
.LBB10_36:
	add	r7, 1
	mov	r0, r7
.LBB10_37:
	mov	[r0], r2
	mov	[r4], r3
.LBB10_38:
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB10_41
	jmp	.LBB10_39
.LBB10_39:
	mov	r0, [r2]
	mov	r1, r0
	add	r1, r2
	jne	r1, r3, .LBB10_41
	jmp	.LBB10_40
.LBB10_40:
	add	r0, [r3]
	mov	[r2], r0
	add	r3, 1
	mov	r0, [r3]
	add	r2, 1
	mov	[r2], r0
.LBB10_41:                              // %free.exit
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
	mov	t1, r2
	mov	r2, rsp
	mov	r4, rsp
	mov	[rsp], r3
	mov	[rsp], r0
	add	r2, 4
	mov	[r2], r1
	add	r4, 8
	mov	[r4], 0
	mov	t6, 2
	mov	t7, 3
	mov	x0, 37
	mov	x1, 42
	mov	x2, 32
	mov	x3, 35
	mov	x4, -1
	mov	x6, 46
	mov	x7, 1
	mov	x9, -2147483638
	mov	x12, 109
	mov	x15, -2139062144
	mov	x14, 43
	mov	x13, 41
	mov	x10, 45
.LBB11_1:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB11_44 Depth 2
                                        //       Child Loop BB11_40 Depth 3
                                        //         Child Loop BB11_36 Depth 4
                                        //           Child Loop BB11_16 Depth 5
                                        //             Child Loop BB11_24 Depth 6
                                        //             Child Loop BB11_8 Depth 6
                                        //     Child Loop BB11_58 Depth 2
                                        //     Child Loop BB11_64 Depth 2
                                        //     Child Loop BB11_183 Depth 2
                                        //     Child Loop BB11_185 Depth 2
                                        //     Child Loop BB11_187 Depth 2
                                        //     Child Loop BB11_198 Depth 2
                                        //     Child Loop BB11_209 Depth 2
                                        //     Child Loop BB11_220 Depth 2
                                        //     Child Loop BB11_176 Depth 2
                                        //     Child Loop BB11_159 Depth 2
                                        //     Child Loop BB11_246 Depth 2
                                        //     Child Loop BB11_260 Depth 2
	mov	r1, 2
	mov	r0, t1
	call	__bit_shr
	mov	r1, 3
	mov	r2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	je	rax, x0, .LBB11_3
	jmp	.LBB11_2
.LBB11_2:                               //   in Loop: Header=BB11_1 Depth=1
	jz	rax, .LBB11_273
	jmp	.LBB11_4
.LBB11_3:                               // %.preheader55.preheader
                                        //   in Loop: Header=BB11_1 Depth=1
	mov	r6, 0
	mov	r2, 32
	mov	r3, t1
	mov	t4, 0
	mov	t5, 0
	mov	x11, 0
	mov	r7, 0
	jmp	.LBB11_44
.LBB11_4:                               //   in Loop: Header=BB11_1 Depth=1
	mov	r3, rax
	mov	r0, rsp
	mov	r1, rsp
	add	r0, 4
	add	r1, 8
	mov	r4, [r1]
	mov	r0, [r0]
	mov	r2, r4
	add	r2, 1
	jz	r0, .LBB11_7
	jmp	.LBB11_5
.LBB11_5:                               //   in Loop: Header=BB11_1 Depth=1
	mov	r1, -2147483648
	call	__bit_xor
	mov	r5, rax
	mov	r0, r2
	call	__bit_xor
	jge	rax, r5, .LBB11_7
	jmp	.LBB11_6
.LBB11_6:                               //   in Loop: Header=BB11_1 Depth=1
	add	r4, [rsp]
	mov	r1, 3
	mov	r0, r4
	call	__bit_and
	mov	r1, -4
	mov	r5, rax
	call	__bit_and
	mov	r4, rax
	mov	r6, [r4]
	mov	r1, 3
	mov	r0, r5
	call	__bit_shl
	mov	r1, 255
	mov	r5, rax
	mov	r0, r3
	call	__bit_and
	mov	r0, 255
	mov	r3, rax
	mov	r1, r5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	r6, rax
	mov	r0, r3
	call	__bit_and
	mov	r0, rax
	mov	r1, r5
	call	__bit_shl
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	[r4], rax
.LBB11_7:                               //   in Loop: Header=BB11_1 Depth=1
	mov	r0, rsp
	add	t1, 1
	add	r0, 8
	mov	[r0], r2
	jmp	.LBB11_1
.LBB11_8:                               // %.preheader
                                        //   Parent Loop BB11_1 Depth=1
                                        //     Parent Loop BB11_44 Depth=2
                                        //       Parent Loop BB11_40 Depth=3
                                        //         Parent Loop BB11_36 Depth=4
                                        //           Parent Loop BB11_16 Depth=5
                                        // =>          This Inner Loop Header: Depth=6
	add	r3, 1
	mov	r1, 2
	mov	r0, r3
	call	__bit_shr
	mov	r1, 3
	mov	r4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t2, rax
	je	t2, x10, .LBB11_8
	jmp	.LBB11_9
.LBB11_9:                               // %.preheader
                                        //   in Loop: Header=BB11_16 Depth=5
	jg	t2, x13, .LBB11_12
	jmp	.LBB11_10
.LBB11_10:                              // %.preheader
                                        //   in Loop: Header=BB11_36 Depth=4
	je	t2, x2, .LBB11_33
	jmp	.LBB11_11
.LBB11_11:                              // %.preheader
                                        //   in Loop: Header=BB11_40 Depth=3
	je	t2, x3, .LBB11_37
	jmp	.LBB11_53
.LBB11_12:                              // %.preheader
                                        //   in Loop: Header=BB11_16 Depth=5
	je	t2, x1, .LBB11_45
	jmp	.LBB11_13
.LBB11_13:                              // %.preheader
                                        //   in Loop: Header=BB11_16 Depth=5
	mov	r0, 48
	je	t2, r0, .LBB11_41
	jmp	.LBB11_14
.LBB11_14:                              // %.preheader
                                        //   in Loop: Header=BB11_16 Depth=5
	jne	t2, x14, .LBB11_53
	jmp	.LBB11_15
.LBB11_15:                              // %.loopexit27.outer.loopexit
                                        //   in Loop: Header=BB11_16 Depth=5
	mov	x11, 1
	mov	r7, 1
.LBB11_16:                              // %.loopexit27.outer
                                        //   Parent Loop BB11_1 Depth=1
                                        //     Parent Loop BB11_44 Depth=2
                                        //       Parent Loop BB11_40 Depth=3
                                        //         Parent Loop BB11_36 Depth=4
                                        // =>        This Loop Header: Depth=5
                                        //             Child Loop BB11_24 Depth 6
                                        //             Child Loop BB11_8 Depth 6
	mov	r4, r3
	add	r4, 1
	mov	r1, 2
	mov	r0, r4
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t2, rax
	jg	t2, x1, .LBB11_20
	jmp	.LBB11_17
.LBB11_17:                              // %.loopexit27.outer
                                        //   in Loop: Header=BB11_36 Depth=4
	je	t2, x2, .LBB11_35
	jmp	.LBB11_18
.LBB11_18:                              // %.loopexit27.outer
                                        //   in Loop: Header=BB11_40 Depth=3
	je	t2, x3, .LBB11_39
	jmp	.LBB11_19
.LBB11_19:                              // %.loopexit27.outer
                                        //   in Loop: Header=BB11_1 Depth=1
	je	t2, x1, .LBB11_47
	jmp	.LBB11_55
.LBB11_20:                              // %.loopexit27.outer
                                        //   in Loop: Header=BB11_16 Depth=5
	je	t2, x14, .LBB11_23
	jmp	.LBB11_21
.LBB11_21:                              // %.loopexit27.outer
                                        //   in Loop: Header=BB11_16 Depth=5
	je	t2, x10, .LBB11_32
	jmp	.LBB11_22
.LBB11_22:                              // %.loopexit27.outer
                                        //   in Loop: Header=BB11_44 Depth=2
	mov	r0, 48
	je	t2, r0, .LBB11_43
	jmp	.LBB11_55
.LBB11_23:                              // %.loopexit27.preheader
                                        //   in Loop: Header=BB11_16 Depth=5
.LBB11_24:                              // %.loopexit27
                                        //   Parent Loop BB11_1 Depth=1
                                        //     Parent Loop BB11_44 Depth=2
                                        //       Parent Loop BB11_40 Depth=3
                                        //         Parent Loop BB11_36 Depth=4
                                        //           Parent Loop BB11_16 Depth=5
                                        // =>          This Inner Loop Header: Depth=6
	add	r4, 1
	mov	r1, 2
	mov	r0, r4
	call	__bit_shr
	mov	r1, 3
	mov	r3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t2, rax
	je	t2, x14, .LBB11_24
	jmp	.LBB11_25
.LBB11_25:                              // %.loopexit27
                                        //   in Loop: Header=BB11_16 Depth=5
	jg	t2, x13, .LBB11_28
	jmp	.LBB11_26
.LBB11_26:                              // %.loopexit27
                                        //   in Loop: Header=BB11_36 Depth=4
	je	t2, x2, .LBB11_34
	jmp	.LBB11_27
.LBB11_27:                              // %.loopexit27
                                        //   in Loop: Header=BB11_40 Depth=3
	je	t2, x3, .LBB11_38
	jmp	.LBB11_54
.LBB11_28:                              // %.loopexit27
                                        //   in Loop: Header=BB11_16 Depth=5
	je	t2, x1, .LBB11_46
	jmp	.LBB11_29
.LBB11_29:                              // %.loopexit27
                                        //   in Loop: Header=BB11_16 Depth=5
	mov	r0, 48
	je	t2, r0, .LBB11_42
	jmp	.LBB11_30
.LBB11_30:                              // %.loopexit27
                                        //   in Loop: Header=BB11_16 Depth=5
	jne	t2, x10, .LBB11_54
	jmp	.LBB11_31
.LBB11_31:                              // %.preheader.preheader.loopexit
                                        //   in Loop: Header=BB11_16 Depth=5
	mov	x11, 1
.LBB11_32:                              // %.preheader.preheader
                                        //   in Loop: Header=BB11_16 Depth=5
	mov	r3, r4
	jmp	.LBB11_8
.LBB11_33:                              // %.loopexit28.backedge.loopexit
                                        //   in Loop: Header=BB11_36 Depth=4
	mov	t5, 1
	mov	r7, 1
	jmp	.LBB11_36
.LBB11_34:                              // %.loopexit28.backedge.loopexit2
                                        //   in Loop: Header=BB11_36 Depth=4
	mov	t5, 1
	mov	r3, r4
	mov	x11, 1
	jmp	.LBB11_36
.LBB11_35:                              // %.loopexit28.backedge.loopexit7
                                        //   in Loop: Header=BB11_36 Depth=4
	mov	t5, 1
	mov	r3, r4
.LBB11_36:                              // %.loopexit28
                                        //   Parent Loop BB11_1 Depth=1
                                        //     Parent Loop BB11_44 Depth=2
                                        //       Parent Loop BB11_40 Depth=3
                                        // =>      This Loop Header: Depth=4
                                        //           Child Loop BB11_16 Depth 5
                                        //             Child Loop BB11_24 Depth 6
                                        //             Child Loop BB11_8 Depth 6
	jmp	.LBB11_16
.LBB11_37:                              // %.loopexit29.backedge.loopexit
                                        //   in Loop: Header=BB11_40 Depth=3
	mov	r6, 1
	mov	r7, 1
	jmp	.LBB11_40
.LBB11_38:                              // %.loopexit29.backedge.loopexit3
                                        //   in Loop: Header=BB11_40 Depth=3
	mov	r6, 1
	mov	r3, r4
	mov	x11, 1
	jmp	.LBB11_40
.LBB11_39:                              // %.loopexit29.backedge.loopexit8
                                        //   in Loop: Header=BB11_40 Depth=3
	mov	r6, 1
	mov	r3, r4
.LBB11_40:                              // %.loopexit29
                                        //   Parent Loop BB11_1 Depth=1
                                        //     Parent Loop BB11_44 Depth=2
                                        // =>    This Loop Header: Depth=3
                                        //         Child Loop BB11_36 Depth 4
                                        //           Child Loop BB11_16 Depth 5
                                        //             Child Loop BB11_24 Depth 6
                                        //             Child Loop BB11_8 Depth 6
	jmp	.LBB11_36
.LBB11_41:                              // %.preheader55.backedge.loopexit
                                        //   in Loop: Header=BB11_44 Depth=2
	mov	t4, 1
	mov	r2, t2
	mov	r7, 1
	jmp	.LBB11_44
.LBB11_42:                              // %.preheader55.backedge.loopexit4
                                        //   in Loop: Header=BB11_44 Depth=2
	mov	t4, 1
	mov	r3, r4
	mov	r2, t2
	mov	x11, 1
	jmp	.LBB11_44
.LBB11_43:                              // %.preheader55.backedge.loopexit9
                                        //   in Loop: Header=BB11_44 Depth=2
	mov	t4, 1
	mov	r3, r4
	mov	r2, t2
.LBB11_44:                              // %.preheader55
                                        //   Parent Loop BB11_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB11_40 Depth 3
                                        //         Child Loop BB11_36 Depth 4
                                        //           Child Loop BB11_16 Depth 5
                                        //             Child Loop BB11_24 Depth 6
                                        //             Child Loop BB11_8 Depth 6
	jmp	.LBB11_40
.LBB11_45:                              // %.loopexit31.loopexit
                                        //   in Loop: Header=BB11_1 Depth=1
	add	r3, -1
	mov	r7, 1
	jmp	.LBB11_48
.LBB11_46:                              // %.loopexit31.loopexit5
                                        //   in Loop: Header=BB11_1 Depth=1
	add	r4, -1
	mov	x11, 1
	mov	r3, r4
	jmp	.LBB11_48
.LBB11_47:                              // %.loopexit31.loopexit10
                                        //   in Loop: Header=BB11_1 Depth=1
.LBB11_48:                              // %.loopexit31
                                        //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 4
	mov	[rsp], r1
	mov	r0, [r0]
	mov	r4, r0
	jg	r0, x4, .LBB11_50
	jmp	.LBB11_49
.LBB11_49:                              //   in Loop: Header=BB11_1 Depth=1
	mov	r4, 0
	sub	r4, r0
.LBB11_50:                              //   in Loop: Header=BB11_1 Depth=1
	mov	t1, 1
	mov	r1, 0
	jl	r0, r1, .LBB11_52
	jmp	.LBB11_51
.LBB11_51:                              //   in Loop: Header=BB11_1 Depth=1
	mov	t1, r7
.LBB11_52:                              //   in Loop: Header=BB11_1 Depth=1
	add	r3, 2
	mov	r1, 2
	mov	r0, r3
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t2, rax
	mov	r7, t1
	jmp	.LBB11_59
.LBB11_53:                              // %.loopexit.loopexit
                                        //   in Loop: Header=BB11_1 Depth=1
	mov	r7, 1
	jmp	.LBB11_56
.LBB11_54:                              // %.loopexit.loopexit1
                                        //   in Loop: Header=BB11_1 Depth=1
	mov	x11, 1
	mov	r3, r4
	jmp	.LBB11_56
.LBB11_55:                              // %.loopexit.loopexit6
                                        //   in Loop: Header=BB11_1 Depth=1
	mov	r3, r4
.LBB11_56:                              // %.loopexit
                                        //   in Loop: Header=BB11_1 Depth=1
	mov	r0, t2
	add	r0, -48
	call	__bit_and
	mov	r1, -2147483648
	mov	r4, 0
	mov	r0, rax
	call	__bit_xor
	mov	r0, -2147483639
	jg	rax, r0, .LBB11_59
	jmp	.LBB11_57
.LBB11_57:                              // %.preheader53.preheader
                                        //   in Loop: Header=BB11_1 Depth=1
.LBB11_58:                              // %.preheader53
                                        //   Parent Loop BB11_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	t2, -48
	mov	r1, 255
	mul	r4, 10
	mov	r0, t2
	call	__bit_and
	add	r3, 1
	mov	r1, 2
	add	r4, rax
	mov	r0, r3
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t2, rax
	mov	r0, t2
	add	r0, -48
	call	__bit_and
	mov	r1, -2147483648
	mov	r0, rax
	call	__bit_xor
	jl	rax, x9, .LBB11_58
	jmp	.LBB11_59
.LBB11_59:                              // %.loopexit54
                                        //   in Loop: Header=BB11_1 Depth=1
	mov	r1, 255
	mov	r0, t2
	call	__bit_and
	mov	r5, -1
	jne	rax, x6, .LBB11_65
	jmp	.LBB11_60
.LBB11_60:                              //   in Loop: Header=BB11_1 Depth=1
	mov	t1, r3
	add	t1, 1
	mov	r1, 2
	mov	r0, t1
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t2, rax
	jne	t2, x1, .LBB11_62
	jmp	.LBB11_61
.LBB11_61:                              //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 4
	mov	[rsp], r1
	mov	r5, [r0]
	mov	r1, -2147483648
	add	r3, 2
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
	add	rax, 1
	add	r5, 1
	mov	r0, rax
	mov	r1, r5
	call	__bit_and
	mov	r5, rax
	mov	r1, 2
	add	r5, -1
	mov	r0, r3
	call	__bit_shr
	mov	r1, 3
	mov	t1, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t1]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t2, rax
	jmp	.LBB11_65
.LBB11_62:                              //   in Loop: Header=BB11_1 Depth=1
	mov	r0, t2
	add	r0, -48
	call	__bit_and
	mov	r1, -2147483648
	mov	r5, 0
	mov	r0, rax
	call	__bit_xor
	mov	r3, t1
	mov	r0, -2147483639
	jg	rax, r0, .LBB11_65
	jmp	.LBB11_63
.LBB11_63:                              // %.preheader51.preheader
                                        //   in Loop: Header=BB11_1 Depth=1
	mov	r3, t1
.LBB11_64:                              // %.preheader51
                                        //   Parent Loop BB11_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	t2, -48
	mov	r1, 255
	mul	r5, 10
	mov	r0, t2
	call	__bit_and
	add	r3, 1
	mov	r1, 2
	add	r5, rax
	mov	r0, r3
	call	__bit_shr
	mov	r1, 3
	mov	t1, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t1]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t2, rax
	mov	r0, t2
	add	r0, -48
	call	__bit_and
	mov	r1, -2147483648
	mov	r0, rax
	call	__bit_xor
	jl	rax, x9, .LBB11_64
	jmp	.LBB11_65
.LBB11_65:                              // %.loopexit52
                                        //   in Loop: Header=BB11_1 Depth=1
	mov	r0, t2
	add	r0, -104
	mov	r1, 254
	call	__bit_and
	mov	r1, 7
	mov	t1, rax
	call	__bit_shl
	mov	t3, rax
	mov	r1, 1
	mov	x8, 1
	mov	r0, t1
	call	__bit_shr
	mov	r0, t3
	mov	r1, rax
	call	__bit_or
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t3, 5
	mov	x5, 0
	jg	rax, t3, .LBB11_68
	jmp	.LBB11_66
.LBB11_66:                              // %.loopexit52
                                        //   in Loop: Header=BB11_1 Depth=1
	jz	rax, .LBB11_70
	jmp	.LBB11_67
.LBB11_67:                              // %.loopexit52
                                        //   in Loop: Header=BB11_1 Depth=1
	mov	t1, r3
	je	rax, t6, .LBB11_71
	jmp	.LBB11_74
.LBB11_68:                              // %.loopexit52
                                        //   in Loop: Header=BB11_1 Depth=1
	mov	r0, 6
	je	rax, r0, .LBB11_72
	jmp	.LBB11_69
.LBB11_69:                              // %.loopexit52
                                        //   in Loop: Header=BB11_1 Depth=1
	mov	t1, r3
	mov	r0, 9
	je	rax, r0, .LBB11_73
	jmp	.LBB11_74
.LBB11_70:                              //   in Loop: Header=BB11_1 Depth=1
	mov	t1, r3
	add	t1, 1
	mov	r1, 2
	mov	x8, 2
	mov	r0, t1
	call	__bit_shr
	mov	r1, 3
	mov	t2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t2, rax
	mov	t3, 1
	mov	x5, 2
	mov	r0, 104
	je	t2, r0, .LBB11_73
	jmp	.LBB11_74
.LBB11_71:                              //   in Loop: Header=BB11_1 Depth=1
	mov	t1, r3
	add	t1, 1
	mov	r1, 2
	mov	x8, 2
	mov	r0, t1
	call	__bit_shr
	mov	t2, rax
	mov	r1, 3
	mov	x5, 3
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t2, rax
	mov	t3, 4
	mov	r0, 108
	je	t2, r0, .LBB11_73
	jmp	.LBB11_74
.LBB11_72:                              //   in Loop: Header=BB11_1 Depth=1
	mov	t3, 6
.LBB11_73:                              //   in Loop: Header=BB11_1 Depth=1
	add	r3, x8
	mov	r1, 2
	mov	r0, r3
	call	__bit_shr
	mov	r1, 3
	mov	t1, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t1]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t2, rax
	mov	t1, r3
	mov	x5, t3
.LBB11_74:                              //   in Loop: Header=BB11_1 Depth=1
	mov	r0, t2
	call	__bit_and
	jz	rax, .LBB11_273
	jmp	.LBB11_75
.LBB11_75:                              //   in Loop: Header=BB11_1 Depth=1
	add	t1, 1
	mov	r0, t2
	call	__bit_and
	jg	rax, x12, .LBB11_82
	jmp	.LBB11_76
.LBB11_76:                              //   in Loop: Header=BB11_1 Depth=1
	mov	r0, 98
	jg	rax, r0, .LBB11_79
	jmp	.LBB11_77
.LBB11_77:                              //   in Loop: Header=BB11_1 Depth=1
	je	rax, x0, .LBB11_238
	jmp	.LBB11_78
.LBB11_78:                              //   in Loop: Header=BB11_1 Depth=1
	mov	r0, 88
	je	rax, r0, .LBB11_121
	jmp	.LBB11_263
.LBB11_79:                              //   in Loop: Header=BB11_1 Depth=1
	mov	r0, 99
	je	rax, r0, .LBB11_151
	jmp	.LBB11_80
.LBB11_80:                              //   in Loop: Header=BB11_1 Depth=1
	mov	r0, 100
	je	rax, r0, .LBB11_89
	jmp	.LBB11_81
.LBB11_81:                              //   in Loop: Header=BB11_1 Depth=1
	mov	r0, 105
	je	rax, r0, .LBB11_89
	jmp	.LBB11_263
.LBB11_82:                              //   in Loop: Header=BB11_1 Depth=1
	mov	r0, 114
	jg	rax, r0, .LBB11_86
	jmp	.LBB11_83
.LBB11_83:                              //   in Loop: Header=BB11_1 Depth=1
	mov	r0, 110
	je	rax, r0, .LBB11_224
	jmp	.LBB11_84
.LBB11_84:                              //   in Loop: Header=BB11_1 Depth=1
	mov	r0, 111
	je	rax, r0, .LBB11_136
	jmp	.LBB11_85
.LBB11_85:                              //   in Loop: Header=BB11_1 Depth=1
	mov	r0, 112
	je	rax, r0, .LBB11_223
	jmp	.LBB11_263
.LBB11_86:                              //   in Loop: Header=BB11_1 Depth=1
	mov	r0, 115
	je	rax, r0, .LBB11_179
	jmp	.LBB11_87
.LBB11_87:                              //   in Loop: Header=BB11_1 Depth=1
	mov	r0, 117
	je	rax, r0, .LBB11_106
	jmp	.LBB11_88
.LBB11_88:                              //   in Loop: Header=BB11_1 Depth=1
	mov	r0, 120
	je	rax, r0, .LBB11_121
	jmp	.LBB11_263
.LBB11_89:                              //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	[rsp], r0
	jg	x5, t7, .LBB11_93
	jmp	.LBB11_90
.LBB11_90:                              //   in Loop: Header=BB11_1 Depth=1
	je	x5, x7, .LBB11_96
	jmp	.LBB11_91
.LBB11_91:                              //   in Loop: Header=BB11_1 Depth=1
	je	x5, t6, .LBB11_97
	jmp	.LBB11_92
.LBB11_92:                              //   in Loop: Header=BB11_1 Depth=1
	je	x5, t7, .LBB11_98
	jmp	.LBB11_102
.LBB11_93:                              //   in Loop: Header=BB11_1 Depth=1
	mov	r0, 4
	je	x5, r0, .LBB11_99
	jmp	.LBB11_94
.LBB11_94:                              //   in Loop: Header=BB11_1 Depth=1
	mov	r0, 5
	je	x5, r0, .LBB11_100
	jmp	.LBB11_95
.LBB11_95:                              //   in Loop: Header=BB11_1 Depth=1
	mov	r0, 6
	je	x5, r0, .LBB11_101
	jmp	.LBB11_102
.LBB11_96:                              //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 4
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
	jmp	.LBB11_103
.LBB11_97:                              //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 4
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
	jmp	.LBB11_103
.LBB11_98:                              //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 4
	mov	[rsp], r1
	mov	r2, [r0]
	mov	r1, 31
	mov	r0, r2
	call	__bit_sar
	jmp	.LBB11_103
.LBB11_99:                              //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 4
	mov	[rsp], r1
	mov	r2, [r0]
	add	r0, 8
	mov	[rsp], r0
	mov	rax, [r1]
	jmp	.LBB11_103
.LBB11_100:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 4
	mov	[rsp], r1
	mov	r2, [r0]
	mov	r1, 31
	mov	r0, r2
	call	__bit_sar
	jmp	.LBB11_103
.LBB11_101:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 4
	mov	[rsp], r1
	mov	r2, [r0]
	mov	r1, 31
	mov	r0, r2
	call	__bit_sar
	jmp	.LBB11_103
.LBB11_102:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 4
	mov	[rsp], r1
	mov	r2, [r0]
	mov	r1, 31
	mov	r0, r2
	call	__bit_sar
.LBB11_103:                             //   in Loop: Header=BB11_1 Depth=1
	jg	rax, x4, .LBB11_105
	jmp	.LBB11_104
.LBB11_104:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, 0
	mov	r1, 0
	mov	r3, rax
	call	__subdi3
	mov	r2, t0
	mov	r0, rsp
	mov	r1, rsp
	mov	r3, rsp
	mov	r6, rsp
	add	r0, 16
	mov	[r0], r5
	add	r1, 12
	mov	[r1], r4
	add	r3, 8
	mov	[r3], t4
	add	r6, 4
	mov	[r6], t5
	mov	r3, 1
	mov	r4, 10
	mov	r5, 0
	mov	r6, 0
	mov	[rsp], x11
	mov	r0, rsp
	mov	r1, rax
	call	format_integer
	jmp	.LBB11_1
.LBB11_105:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, rsp
	mov	r1, rsp
	mov	r3, rsp
	mov	r6, rsp
	add	r0, 16
	mov	[r0], r5
	add	r1, 12
	mov	[r1], r4
	add	r3, 8
	mov	[r3], t4
	add	r6, 4
	mov	[r6], t5
	mov	r3, 0
	mov	r4, 10
	mov	r5, 0
	mov	r6, 0
	mov	[rsp], x11
	mov	r0, rsp
	mov	r1, r2
	mov	r2, rax
	call	format_integer
	jmp	.LBB11_1
.LBB11_106:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	[rsp], r0
	jg	x5, t7, .LBB11_110
	jmp	.LBB11_107
.LBB11_107:                             //   in Loop: Header=BB11_1 Depth=1
	je	x5, x7, .LBB11_113
	jmp	.LBB11_108
.LBB11_108:                             //   in Loop: Header=BB11_1 Depth=1
	je	x5, t6, .LBB11_114
	jmp	.LBB11_109
.LBB11_109:                             //   in Loop: Header=BB11_1 Depth=1
	je	x5, t7, .LBB11_115
	jmp	.LBB11_119
.LBB11_110:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, 4
	je	x5, r0, .LBB11_116
	jmp	.LBB11_111
.LBB11_111:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, 5
	je	x5, r0, .LBB11_117
	jmp	.LBB11_112
.LBB11_112:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, 6
	je	x5, r0, .LBB11_118
	jmp	.LBB11_119
.LBB11_113:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 4
	mov	[rsp], r1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r1, rax
	mov	r2, 0
	jmp	.LBB11_120
.LBB11_114:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 4
	mov	[rsp], r1
	mov	r0, [r0]
	mov	r1, 65535
	call	__bit_and
	mov	r1, rax
	mov	r2, 0
	jmp	.LBB11_120
.LBB11_115:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 4
	mov	[rsp], r1
	mov	r1, [r0]
	mov	r2, 0
	jmp	.LBB11_120
.LBB11_116:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	r2, r0
	add	r2, 4
	mov	[rsp], r2
	mov	r1, [r0]
	add	r0, 8
	mov	[rsp], r0
	mov	r2, [r2]
	jmp	.LBB11_120
.LBB11_117:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 4
	mov	[rsp], r1
	mov	r1, [r0]
	mov	r2, 0
	jmp	.LBB11_120
.LBB11_118:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 4
	mov	[rsp], r1
	mov	r0, [r0]
	mov	r1, 31
	call	__bit_sar
	mov	r1, r0
	mov	r2, rax
	jmp	.LBB11_120
.LBB11_119:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 4
	mov	[rsp], r1
	mov	r1, [r0]
	mov	r2, 0
.LBB11_120:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, rsp
	mov	r3, rsp
	mov	r6, rsp
	mov	t0, rsp
	add	r0, 16
	mov	[r0], r5
	add	r3, 12
	mov	[r3], r4
	add	r6, 8
	mov	[r6], t4
	add	t0, 4
	mov	[t0], 0
	mov	r3, 0
	mov	r4, 10
	mov	r5, 0
	mov	r6, 0
	mov	[rsp], 0
	mov	r0, rsp
	call	format_integer
	jmp	.LBB11_1
.LBB11_121:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	[rsp], r0
	jg	x5, t7, .LBB11_125
	jmp	.LBB11_122
.LBB11_122:                             //   in Loop: Header=BB11_1 Depth=1
	je	x5, x7, .LBB11_128
	jmp	.LBB11_123
.LBB11_123:                             //   in Loop: Header=BB11_1 Depth=1
	je	x5, t6, .LBB11_129
	jmp	.LBB11_124
.LBB11_124:                             //   in Loop: Header=BB11_1 Depth=1
	je	x5, t7, .LBB11_130
	jmp	.LBB11_134
.LBB11_125:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, 4
	je	x5, r0, .LBB11_131
	jmp	.LBB11_126
.LBB11_126:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, 5
	je	x5, r0, .LBB11_132
	jmp	.LBB11_127
.LBB11_127:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, 6
	je	x5, r0, .LBB11_133
	jmp	.LBB11_134
.LBB11_128:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 4
	mov	[rsp], r1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	t3, rax
	mov	r2, 0
	jmp	.LBB11_135
.LBB11_129:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 4
	mov	[rsp], r1
	mov	r0, [r0]
	mov	r1, 65535
	call	__bit_and
	mov	t3, rax
	mov	r2, 0
	jmp	.LBB11_135
.LBB11_130:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 4
	mov	[rsp], r1
	mov	t3, [r0]
	mov	r2, 0
	jmp	.LBB11_135
.LBB11_131:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 4
	mov	[rsp], r1
	mov	t3, [r0]
	add	r0, 8
	mov	[rsp], r0
	mov	r2, [r1]
	jmp	.LBB11_135
.LBB11_132:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 4
	mov	[rsp], r1
	mov	t3, [r0]
	mov	r2, 0
	jmp	.LBB11_135
.LBB11_133:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 4
	mov	[rsp], r1
	mov	t3, [r0]
	mov	r1, 31
	mov	r0, t3
	call	__bit_sar
	mov	r2, rax
	jmp	.LBB11_135
.LBB11_134:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 4
	mov	[rsp], r1
	mov	t3, [r0]
	mov	r2, 0
.LBB11_135:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r1, 255
	mov	r0, t2
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
	add	r0, 16
	mov	[r0], r5
	add	r1, 12
	mov	[r1], r4
	add	r3, 8
	mov	[r3], t4
	add	t0, 4
	mov	[t0], 0
	mov	r3, 0
	mov	r4, 16
	mov	[rsp], 0
	mov	r0, rsp
	mov	r1, t3
	mov	r5, rax
	call	format_integer
	jmp	.LBB11_1
.LBB11_136:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	[rsp], r0
	jg	x5, t7, .LBB11_140
	jmp	.LBB11_137
.LBB11_137:                             //   in Loop: Header=BB11_1 Depth=1
	je	x5, x7, .LBB11_143
	jmp	.LBB11_138
.LBB11_138:                             //   in Loop: Header=BB11_1 Depth=1
	je	x5, t6, .LBB11_144
	jmp	.LBB11_139
.LBB11_139:                             //   in Loop: Header=BB11_1 Depth=1
	je	x5, t7, .LBB11_145
	jmp	.LBB11_149
.LBB11_140:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, 4
	je	x5, r0, .LBB11_146
	jmp	.LBB11_141
.LBB11_141:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, 5
	je	x5, r0, .LBB11_147
	jmp	.LBB11_142
.LBB11_142:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, 6
	je	x5, r0, .LBB11_148
	jmp	.LBB11_149
.LBB11_143:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 4
	mov	[rsp], r1
	mov	r0, [r0]
	mov	r1, 255
	call	__bit_and
	mov	r1, rax
	mov	r2, 0
	jmp	.LBB11_150
.LBB11_144:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 4
	mov	[rsp], r1
	mov	r0, [r0]
	mov	r1, 65535
	call	__bit_and
	mov	r1, rax
	mov	r2, 0
	jmp	.LBB11_150
.LBB11_145:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 4
	mov	[rsp], r1
	mov	r1, [r0]
	mov	r2, 0
	jmp	.LBB11_150
.LBB11_146:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	r2, r0
	add	r2, 4
	mov	[rsp], r2
	mov	r1, [r0]
	add	r0, 8
	mov	[rsp], r0
	mov	r2, [r2]
	jmp	.LBB11_150
.LBB11_147:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 4
	mov	[rsp], r1
	mov	r1, [r0]
	mov	r2, 0
	jmp	.LBB11_150
.LBB11_148:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 4
	mov	[rsp], r1
	mov	r0, [r0]
	mov	r1, 31
	call	__bit_sar
	mov	r1, r0
	mov	r2, rax
	jmp	.LBB11_150
.LBB11_149:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 4
	mov	[rsp], r1
	mov	r1, [r0]
	mov	r2, 0
.LBB11_150:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, rsp
	mov	r3, rsp
	mov	t0, rsp
	mov	t2, rsp
	add	r0, 16
	mov	[r0], r5
	add	r3, 12
	mov	[r3], r4
	add	t0, 8
	mov	[t0], t4
	add	t2, 4
	mov	[t2], 0
	mov	r3, 0
	mov	r4, 8
	mov	r5, 0
	mov	[rsp], 0
	mov	r0, rsp
	call	format_integer
	jmp	.LBB11_1
.LBB11_151:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 4
	mov	[rsp], r1
	mov	r2, [r0]
	mov	r6, r4
	add	r6, -1
	jnz	r7, .LBB11_166
	jmp	.LBB11_152
.LBB11_152:                             //   in Loop: Header=BB11_1 Depth=1
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
	add	r0, 4
	add	r1, 8
	mov	r6, [r1]
	mov	r4, [r0]
	mov	r5, rax
	mov	r3, r6
	jz	r5, .LBB11_162
	jmp	.LBB11_153
.LBB11_153:                             //   in Loop: Header=BB11_1 Depth=1
	jz	r4, .LBB11_158
	jmp	.LBB11_154
.LBB11_154:                             //   in Loop: Header=BB11_1 Depth=1
	mov	t3, [rsp]
	mov	r3, r6
	mov	r1, -2147483648
	add	r3, 1
	mov	r0, r4
	call	__bit_xor
	mov	r7, rax
	mov	r0, r3
	call	__bit_xor
	jge	rax, r7, .LBB11_156
	jmp	.LBB11_155
.LBB11_155:                             //   in Loop: Header=BB11_1 Depth=1
	add	r6, t3
	mov	r1, 3
	mov	r0, r6
	call	__bit_and
	mov	r1, -4
	mov	r7, rax
	call	__bit_and
	mov	r6, rax
	mov	t2, [r6]
	mov	r1, 3
	mov	r0, r7
	call	__bit_shl
	mov	r0, 255
	mov	r7, rax
	mov	r1, r7
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t2
	mov	r1, rax
	call	__bit_and
	mov	r0, 32
	mov	t2, rax
	mov	r1, r7
	call	__bit_shl
	mov	r0, t2
	mov	r1, rax
	call	__bit_or
	mov	[r6], rax
.LBB11_156:                             //   in Loop: Header=BB11_1 Depth=1
	je	r5, x7, .LBB11_162
	jmp	.LBB11_157
.LBB11_157:                             // %.preheader41.preheader
                                        //   in Loop: Header=BB11_1 Depth=1
	mov	r6, r3
	jmp	.LBB11_159
.LBB11_158:                             //   in Loop: Header=BB11_1 Depth=1
	add	r5, 1
	add	r6, r5
	jmp	.LBB11_165
.LBB11_159:                             // %.preheader41
                                        //   Parent Loop BB11_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, -2147483648
	add	r3, 1
	mov	r0, r4
	call	__bit_xor
	mov	r7, rax
	mov	r0, r3
	call	__bit_xor
	jge	rax, r7, .LBB11_161
	jmp	.LBB11_160
.LBB11_160:                             //   in Loop: Header=BB11_159 Depth=2
	add	r6, t3
	mov	r1, 3
	mov	r0, r6
	call	__bit_and
	mov	r1, -4
	mov	r7, rax
	call	__bit_and
	mov	r6, rax
	mov	t2, [r6]
	mov	r1, 3
	mov	r0, r7
	call	__bit_shl
	mov	r0, 255
	mov	r7, rax
	mov	r1, r7
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t2
	mov	r1, rax
	call	__bit_and
	mov	r0, 32
	mov	t2, rax
	mov	r1, r7
	call	__bit_shl
	mov	r0, t2
	mov	r1, rax
	call	__bit_or
	mov	[r6], rax
.LBB11_161:                             //   in Loop: Header=BB11_159 Depth=2
	add	r5, -1
	mov	r6, r3
	jg	r5, x7, .LBB11_159
	jmp	.LBB11_162
.LBB11_162:                             // %.loopexit42
                                        //   in Loop: Header=BB11_1 Depth=1
	mov	r6, r3
	add	r6, 1
	jz	r4, .LBB11_165
	jmp	.LBB11_163
.LBB11_163:                             // %.loopexit42
                                        //   in Loop: Header=BB11_1 Depth=1
	mov	r1, -2147483648
	mov	r0, r4
	call	__bit_xor
	mov	r4, rax
	mov	r0, r6
	call	__bit_xor
	jge	rax, r4, .LBB11_165
	jmp	.LBB11_164
.LBB11_164:                             //   in Loop: Header=BB11_1 Depth=1
	add	r3, [rsp]
	mov	r1, 3
	mov	r0, r3
	call	__bit_and
	mov	r1, -4
	mov	r4, rax
	call	__bit_and
	mov	r3, rax
	mov	r5, [r3]
	mov	r1, 3
	mov	r0, r4
	call	__bit_shl
	mov	r1, 255
	mov	r4, rax
	mov	r0, r2
	call	__bit_and
	mov	r0, 255
	mov	r2, rax
	mov	r1, r4
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	r5, rax
	mov	r0, r2
	call	__bit_and
	mov	r0, rax
	mov	r1, r4
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
.LBB11_165:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, rsp
	add	r0, 8
	mov	[r0], r6
	jmp	.LBB11_1
.LBB11_166:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, rsp
	mov	r1, rsp
	add	r0, 4
	add	r1, 8
	mov	r3, [r1]
	mov	r5, [r0]
	mov	r7, r3
	add	r7, 1
	jz	r5, .LBB11_169
	jmp	.LBB11_167
.LBB11_167:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r1, -2147483648
	mov	r0, r5
	call	__bit_xor
	mov	t2, rax
	mov	r0, r7
	call	__bit_xor
	jge	rax, t2, .LBB11_169
	jmp	.LBB11_168
.LBB11_168:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, r3
	add	r0, [rsp]
	mov	r1, 3
	call	__bit_and
	mov	r1, -4
	mov	t2, rax
	call	__bit_and
	mov	t3, rax
	mov	t4, [t3]
	mov	r1, 3
	mov	r0, t2
	call	__bit_shl
	mov	r1, 255
	mov	t2, rax
	mov	r0, r2
	call	__bit_and
	mov	r0, 255
	mov	r2, rax
	mov	r1, t2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t4
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t4, rax
	mov	r0, r2
	call	__bit_and
	mov	r0, rax
	mov	r1, t2
	call	__bit_shl
	mov	r0, t4
	mov	r1, rax
	call	__bit_or
	mov	[t3], rax
.LBB11_169:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, rsp
	add	r0, 8
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
	jz	r2, .LBB11_1
	jmp	.LBB11_170
.LBB11_170:                             //   in Loop: Header=BB11_1 Depth=1
	jz	r5, .LBB11_175
	jmp	.LBB11_171
.LBB11_171:                             //   in Loop: Header=BB11_1 Depth=1
	mov	t2, [rsp]
	mov	r1, -2147483648
	add	r3, 2
	mov	r0, r5
	call	__bit_xor
	mov	r4, rax
	mov	r0, r3
	call	__bit_xor
	jge	rax, r4, .LBB11_173
	jmp	.LBB11_172
.LBB11_172:                             //   in Loop: Header=BB11_1 Depth=1
	add	r7, t2
	mov	r1, 3
	mov	r0, r7
	call	__bit_and
	mov	r1, -4
	mov	r4, rax
	call	__bit_and
	mov	r6, rax
	mov	r7, [r6]
	mov	r1, 3
	mov	r0, r4
	call	__bit_shl
	mov	r0, 255
	mov	r4, rax
	mov	r1, r4
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r0, 32
	mov	r7, rax
	mov	r1, r4
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	[r6], rax
.LBB11_173:                             //   in Loop: Header=BB11_1 Depth=1
	je	r2, x7, .LBB11_271
	jmp	.LBB11_174
.LBB11_174:                             // %.preheader43.preheader
                                        //   in Loop: Header=BB11_1 Depth=1
	mov	r4, r3
	jmp	.LBB11_176
.LBB11_175:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, rsp
	add	r2, 1
	add	r3, r2
	add	r0, 8
	mov	[r0], r3
	jmp	.LBB11_1
.LBB11_176:                             // %.preheader43
                                        //   Parent Loop BB11_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, -2147483648
	add	r3, 1
	mov	r0, r5
	call	__bit_xor
	mov	r6, rax
	mov	r0, r3
	call	__bit_xor
	jge	rax, r6, .LBB11_178
	jmp	.LBB11_177
.LBB11_177:                             //   in Loop: Header=BB11_176 Depth=2
	add	r4, t2
	mov	r1, 3
	mov	r0, r4
	call	__bit_and
	mov	r1, -4
	mov	r6, rax
	call	__bit_and
	mov	r4, rax
	mov	r7, [r4]
	mov	r1, 3
	mov	r0, r6
	call	__bit_shl
	mov	r0, 255
	mov	r6, rax
	mov	r1, r6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r0, 32
	mov	r7, rax
	mov	r1, r6
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	[r4], rax
.LBB11_178:                             //   in Loop: Header=BB11_176 Depth=2
	add	r2, -1
	mov	r4, r3
	jg	r2, x7, .LBB11_176
	jmp	.LBB11_271
.LBB11_179:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 4
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
	mov	r1, mcasm_static_9c8edc6888262f14a502ca58f7ec2049
	sub	r1, r3
	add	rax, 1
	mov	r0, rax
	call	__bit_and
	mov	r2, rax
	add	r2, r3
	mov	r1, 3
	mov	r0, r2
	call	__bit_and
	mov	r6, r2
	jz	rax, .LBB11_184
	jmp	.LBB11_180
.LBB11_180:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r1, 2
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	r3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r3, r2
	jz	rax, .LBB11_188
	jmp	.LBB11_181
.LBB11_181:                             // %.preheader1.i.preheader
                                        //   in Loop: Header=BB11_1 Depth=1
	mov	r6, r2
	add	r6, 1
	mov	r3, r2
	jmp	.LBB11_183
.LBB11_182:                             //   in Loop: Header=BB11_183 Depth=2
	mov	r1, 2
	mov	r0, r6
	call	__bit_shr
	mov	r1, 3
	mov	t2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	add	r6, 1
	jz	rax, .LBB11_188
	jmp	.LBB11_183
.LBB11_183:                             // %.preheader1.i
                                        //   Parent Loop BB11_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	r3, 1
	mov	r1, 3
	mov	r0, r3
	call	__bit_and
	jnz	rax, .LBB11_182
	jmp	.LBB11_184
.LBB11_184:                             // %.loopexit.i.preheader
                                        //   in Loop: Header=BB11_1 Depth=1
	mov	t2, r6
	add	t2, -4
	add	r6, -1
.LBB11_185:                             // %.loopexit.i
                                        //   Parent Loop BB11_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	t2, 4
	mov	r1, [t2]
	mov	r0, 16843008
	sub	r0, r1
	mov	r3, r6
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	add	r6, 4
	je	rax, x15, .LBB11_185
	jmp	.LBB11_186
.LBB11_186:                             // %.preheader.i.preheader
                                        //   in Loop: Header=BB11_1 Depth=1
	mov	t3, 0
.LBB11_187:                             // %.preheader.i
                                        //   Parent Loop BB11_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, t2
	add	r0, t3
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	add	r3, 1
	add	t3, 1
	jnz	rax, .LBB11_187
	jmp	.LBB11_188
.LBB11_188:                             // %strlen.exit
                                        //   in Loop: Header=BB11_1 Depth=1
	sub	r3, r2
	mov	r6, r5
	sub	r6, r3
	mov	r1, 31
	mov	r0, r6
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
	mov	r0, 0
	jl	r5, r0, .LBB11_190
	jmp	.LBB11_189
.LBB11_189:                             //   in Loop: Header=BB11_1 Depth=1
	add	r3, rax
.LBB11_190:                             //   in Loop: Header=BB11_1 Depth=1
	jnz	r7, .LBB11_202
	jmp	.LBB11_191
.LBB11_191:                             //   in Loop: Header=BB11_1 Depth=1
	jle	r4, r3, .LBB11_202
	jmp	.LBB11_192
.LBB11_192:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, rsp
	mov	r1, rsp
	add	r0, 4
	mov	r5, [r0]
	add	r1, 8
	mov	t2, [r1]
	mov	t5, r4
	sub	t5, r3
	jz	r5, .LBB11_197
	jmp	.LBB11_193
.LBB11_193:                             //   in Loop: Header=BB11_1 Depth=1
	mov	x11, [rsp]
	mov	r6, t2
	mov	r1, -2147483648
	add	r6, 1
	mov	r0, r5
	call	__bit_xor
	mov	t3, rax
	mov	r0, r6
	call	__bit_xor
	jge	rax, t3, .LBB11_195
	jmp	.LBB11_194
.LBB11_194:                             //   in Loop: Header=BB11_1 Depth=1
	add	t2, x11
	mov	r1, 3
	mov	r0, t2
	call	__bit_and
	mov	r1, -4
	mov	t3, rax
	call	__bit_and
	mov	t2, rax
	mov	t4, [t2]
	mov	r1, 3
	mov	r0, t3
	call	__bit_shl
	mov	r0, 255
	mov	t3, rax
	mov	r1, t3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t4
	mov	r1, rax
	call	__bit_and
	mov	r0, 32
	mov	t4, rax
	mov	r1, t3
	call	__bit_shl
	mov	r0, t4
	mov	r1, rax
	call	__bit_or
	mov	[t2], rax
.LBB11_195:                             //   in Loop: Header=BB11_1 Depth=1
	jl	t5, t6, .LBB11_201
	jmp	.LBB11_196
.LBB11_196:                             // %.preheader49.preheader
                                        //   in Loop: Header=BB11_1 Depth=1
	add	t5, 1
	mov	t2, r6
	jmp	.LBB11_198
.LBB11_197:                             //   in Loop: Header=BB11_1 Depth=1
	add	t2, t5
	mov	r6, t2
	jmp	.LBB11_201
.LBB11_198:                             // %.preheader49
                                        //   Parent Loop BB11_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, -2147483648
	add	r6, 1
	mov	r0, r5
	call	__bit_xor
	mov	t3, rax
	mov	r0, r6
	call	__bit_xor
	jge	rax, t3, .LBB11_200
	jmp	.LBB11_199
.LBB11_199:                             //   in Loop: Header=BB11_198 Depth=2
	add	t2, x11
	mov	r1, 3
	mov	r0, t2
	call	__bit_and
	mov	r1, -4
	mov	t3, rax
	call	__bit_and
	mov	t2, rax
	mov	t4, [t2]
	mov	r1, 3
	mov	r0, t3
	call	__bit_shl
	mov	r0, 255
	mov	t3, rax
	mov	r1, t3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t4
	mov	r1, rax
	call	__bit_and
	mov	r0, 32
	mov	t4, rax
	mov	r1, t3
	call	__bit_shl
	mov	r0, t4
	mov	r1, rax
	call	__bit_or
	mov	[t2], rax
.LBB11_200:                             //   in Loop: Header=BB11_198 Depth=2
	add	t5, -1
	mov	t2, r6
	jg	t5, t6, .LBB11_198
	jmp	.LBB11_201
.LBB11_201:                             // %.loopexit50
                                        //   in Loop: Header=BB11_1 Depth=1
	mov	r0, rsp
	add	r0, 8
	mov	[r0], r6
.LBB11_202:                             //   in Loop: Header=BB11_1 Depth=1
	jz	r3, .LBB11_212
	jmp	.LBB11_203
.LBB11_203:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r1, rsp
	mov	r0, rsp
	add	r1, 4
	mov	r5, [r1]
	add	r0, 8
	mov	t2, [r0]
	jz	r5, .LBB11_208
	jmp	.LBB11_204
.LBB11_204:                             //   in Loop: Header=BB11_1 Depth=1
	mov	x11, [rsp]
	mov	r6, t2
	mov	r1, -2147483648
	add	r6, 1
	mov	r0, r5
	call	__bit_xor
	mov	t3, rax
	mov	r0, r6
	call	__bit_xor
	jge	rax, t3, .LBB11_206
	jmp	.LBB11_205
.LBB11_205:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r1, 2
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	t3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	add	t2, x11
	mov	r1, 3
	mov	t3, rax
	mov	r0, t2
	call	__bit_and
	mov	r1, -4
	mov	t4, rax
	call	__bit_and
	mov	t2, rax
	mov	t5, [t2]
	mov	r1, 3
	mov	r0, t4
	call	__bit_shl
	mov	r0, 255
	mov	t4, rax
	mov	r1, t4
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t5
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t5, rax
	mov	r0, t3
	call	__bit_and
	mov	r0, rax
	mov	r1, t4
	call	__bit_shl
	mov	r0, t5
	mov	r1, rax
	call	__bit_or
	mov	[t2], rax
.LBB11_206:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, rsp
	add	r0, 8
	mov	[r0], r6
	je	r3, x7, .LBB11_212
	jmp	.LBB11_207
.LBB11_207:                             // %.preheader47.preheader
                                        //   in Loop: Header=BB11_1 Depth=1
	mov	x8, r3
	add	x8, -1
	add	r2, 1
	mov	t2, r6
	jmp	.LBB11_209
.LBB11_208:                             //   in Loop: Header=BB11_1 Depth=1
	add	t2, r3
	mov	[r0], t2
	jmp	.LBB11_212
.LBB11_209:                             // %.preheader47
                                        //   Parent Loop BB11_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, -2147483648
	add	t2, 1
	mov	r0, r5
	call	__bit_xor
	mov	t3, rax
	mov	r0, t2
	call	__bit_xor
	jge	rax, t3, .LBB11_211
	jmp	.LBB11_210
.LBB11_210:                             //   in Loop: Header=BB11_209 Depth=2
	mov	r1, 2
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	t3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	add	r6, x11
	mov	r1, 3
	mov	t3, rax
	mov	r0, r6
	call	__bit_and
	mov	r1, -4
	mov	t4, rax
	call	__bit_and
	mov	r6, rax
	mov	t5, [r6]
	mov	r1, 3
	mov	r0, t4
	call	__bit_shl
	mov	r0, 255
	mov	t4, rax
	mov	r1, t4
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t5
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t5, rax
	mov	r0, t3
	call	__bit_and
	mov	r0, rax
	mov	r1, t4
	call	__bit_shl
	mov	r0, t5
	mov	r1, rax
	call	__bit_or
	mov	[r6], rax
.LBB11_211:                             //   in Loop: Header=BB11_209 Depth=2
	mov	r0, rsp
	add	r0, 8
	mov	[r0], t2
	add	x8, -1
	add	r2, 1
	mov	r6, t2
	jnz	x8, .LBB11_209
	jmp	.LBB11_212
.LBB11_212:                             // %.loopexit48
                                        //   in Loop: Header=BB11_1 Depth=1
	jz	r7, .LBB11_1
	jmp	.LBB11_213
.LBB11_213:                             // %.loopexit48
                                        //   in Loop: Header=BB11_1 Depth=1
	jle	r4, r3, .LBB11_1
	jmp	.LBB11_214
.LBB11_214:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r1, rsp
	mov	r0, rsp
	add	r1, 4
	mov	r2, [r1]
	add	r0, 8
	mov	r5, [r0]
	sub	r4, r3
	jz	r2, .LBB11_219
	jmp	.LBB11_215
.LBB11_215:                             //   in Loop: Header=BB11_1 Depth=1
	mov	t2, [rsp]
	mov	r3, r5
	mov	r1, -2147483648
	add	r3, 1
	mov	r0, r2
	call	__bit_xor
	mov	r6, rax
	mov	r0, r3
	call	__bit_xor
	jge	rax, r6, .LBB11_217
	jmp	.LBB11_216
.LBB11_216:                             //   in Loop: Header=BB11_1 Depth=1
	add	r5, t2
	mov	r1, 3
	mov	r0, r5
	call	__bit_and
	mov	r1, -4
	mov	r6, rax
	call	__bit_and
	mov	r5, rax
	mov	r7, [r5]
	mov	r1, 3
	mov	r0, r6
	call	__bit_shl
	mov	r0, 255
	mov	r6, rax
	mov	r1, r6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r0, 32
	mov	r7, rax
	mov	r1, r6
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	[r5], rax
.LBB11_217:                             //   in Loop: Header=BB11_1 Depth=1
	jl	r4, t6, .LBB11_272
	jmp	.LBB11_218
.LBB11_218:                             // %.preheader45.preheader
                                        //   in Loop: Header=BB11_1 Depth=1
	add	r4, 1
	mov	r5, r3
	jmp	.LBB11_220
.LBB11_219:                             //   in Loop: Header=BB11_1 Depth=1
	add	r5, r4
	mov	[r0], r5
	jmp	.LBB11_1
.LBB11_220:                             // %.preheader45
                                        //   Parent Loop BB11_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, -2147483648
	add	r3, 1
	mov	r0, r2
	call	__bit_xor
	mov	r6, rax
	mov	r0, r3
	call	__bit_xor
	jge	rax, r6, .LBB11_222
	jmp	.LBB11_221
.LBB11_221:                             //   in Loop: Header=BB11_220 Depth=2
	add	r5, t2
	mov	r1, 3
	mov	r0, r5
	call	__bit_and
	mov	r1, -4
	mov	r6, rax
	call	__bit_and
	mov	r5, rax
	mov	r7, [r5]
	mov	r1, 3
	mov	r0, r6
	call	__bit_shl
	mov	r0, 255
	mov	r6, rax
	mov	r1, r6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r0, 32
	mov	r7, rax
	mov	r1, r6
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	[r5], rax
.LBB11_222:                             //   in Loop: Header=BB11_220 Depth=2
	add	r4, -1
	mov	r5, r3
	jg	r4, t6, .LBB11_220
	jmp	.LBB11_272
.LBB11_223:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 4
	mov	[rsp], r1
	mov	r1, [r0]
	mov	r0, rsp
	mov	r2, rsp
	mov	r3, rsp
	mov	r6, rsp
	add	r0, 16
	mov	[r0], r5
	add	r2, 12
	mov	[r2], r4
	add	r3, 8
	mov	[r3], t4
	add	r6, 4
	mov	[r6], 0
	mov	r2, 0
	mov	r3, 0
	mov	r4, 16
	mov	r5, 0
	mov	r6, 1
	mov	[rsp], 0
	mov	r0, rsp
	call	format_integer
	jmp	.LBB11_1
.LBB11_224:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, rsp
	add	r0, 8
	mov	r2, [r0]
	jg	x5, t7, .LBB11_228
	jmp	.LBB11_225
.LBB11_225:                             //   in Loop: Header=BB11_1 Depth=1
	je	x5, x7, .LBB11_231
	jmp	.LBB11_226
.LBB11_226:                             //   in Loop: Header=BB11_1 Depth=1
	je	x5, t6, .LBB11_232
	jmp	.LBB11_227
.LBB11_227:                             //   in Loop: Header=BB11_1 Depth=1
	je	x5, t7, .LBB11_233
	jmp	.LBB11_237
.LBB11_228:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, 4
	je	x5, r0, .LBB11_234
	jmp	.LBB11_229
.LBB11_229:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, 5
	je	x5, r0, .LBB11_235
	jmp	.LBB11_230
.LBB11_230:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, 6
	je	x5, r0, .LBB11_236
	jmp	.LBB11_237
.LBB11_231:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 4
	mov	[rsp], r1
	mov	r0, [r0]
	mov	r1, 3
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	r4, rax
	mov	r5, [r4]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r1, 255
	mov	r3, rax
	mov	r0, r2
	call	__bit_and
	mov	r0, 255
	mov	r2, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	r5, rax
	mov	r0, r2
	call	__bit_and
	mov	r0, rax
	mov	r1, r3
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	[r4], rax
	jmp	.LBB11_1
.LBB11_232:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 4
	mov	[rsp], r1
	mov	r0, [r0]
	mov	r1, 3
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	r4, rax
	mov	r5, [r4]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r1, 65535
	mov	r3, rax
	mov	r0, r2
	call	__bit_and
	mov	r0, 65535
	mov	r2, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r1, 65535
	mov	r5, rax
	mov	r0, r2
	call	__bit_and
	mov	r0, rax
	mov	r1, r3
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	[r4], rax
	jmp	.LBB11_1
.LBB11_233:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 4
	mov	[rsp], r1
	mov	r0, [r0]
	mov	[r0], r2
	jmp	.LBB11_1
.LBB11_234:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 4
	mov	[rsp], r1
	mov	r0, [r0]
	mov	[r0], r2
	add	r0, 4
	mov	[r0], 0
	jmp	.LBB11_1
.LBB11_235:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 4
	mov	[rsp], r1
	mov	r0, [r0]
	mov	[r0], r2
	jmp	.LBB11_1
.LBB11_236:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 4
	mov	[rsp], r1
	mov	r0, [r0]
	mov	[r0], r2
	jmp	.LBB11_1
.LBB11_237:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, [rsp]
	mov	r1, r0
	add	r1, 4
	mov	[rsp], r1
	mov	r0, [r0]
	mov	[r0], r2
	jmp	.LBB11_1
.LBB11_238:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, rsp
	mov	r1, rsp
	add	r0, 4
	add	r1, 8
	mov	r6, [r1]
	mov	r5, [r0]
	mov	r3, r6
	jnz	r7, .LBB11_249
	jmp	.LBB11_239
.LBB11_239:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r3, r6
	jl	r4, t6, .LBB11_249
	jmp	.LBB11_240
.LBB11_240:                             //   in Loop: Header=BB11_1 Depth=1
	jz	r5, .LBB11_245
	jmp	.LBB11_241
.LBB11_241:                             //   in Loop: Header=BB11_1 Depth=1
	mov	t5, [rsp]
	mov	r3, r6
	mov	r1, -2147483648
	add	r3, 1
	mov	r0, r5
	call	__bit_xor
	mov	t2, rax
	mov	r0, r3
	call	__bit_xor
	jge	rax, t2, .LBB11_243
	jmp	.LBB11_242
.LBB11_242:                             //   in Loop: Header=BB11_1 Depth=1
	add	r6, t5
	mov	r1, 3
	mov	r0, r6
	call	__bit_and
	mov	r1, -4
	mov	t2, rax
	call	__bit_and
	mov	r6, rax
	mov	t3, [r6]
	mov	r1, 3
	mov	r0, t2
	call	__bit_shl
	mov	r1, 255
	mov	t2, rax
	mov	r0, r2
	call	__bit_and
	mov	r0, 255
	mov	t4, rax
	mov	r1, t2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t3
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t3, rax
	mov	r0, t4
	call	__bit_and
	mov	r0, rax
	mov	r1, t2
	call	__bit_shl
	mov	r0, t3
	mov	r1, rax
	call	__bit_or
	mov	[r6], rax
.LBB11_243:                             //   in Loop: Header=BB11_1 Depth=1
	jl	r4, t7, .LBB11_249
	jmp	.LBB11_244
.LBB11_244:                             // %.preheader39.preheader
                                        //   in Loop: Header=BB11_1 Depth=1
	mov	x8, r4
	add	x8, 1
	mov	r6, r3
	jmp	.LBB11_246
.LBB11_245:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, rsp
	add	r6, r4
	add	r0, 8
	mov	[r0], r6
	jmp	.LBB11_1
.LBB11_246:                             // %.preheader39
                                        //   Parent Loop BB11_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, -2147483648
	add	r3, 1
	mov	r0, r5
	call	__bit_xor
	mov	t2, rax
	mov	r0, r3
	call	__bit_xor
	jge	rax, t2, .LBB11_248
	jmp	.LBB11_247
.LBB11_247:                             //   in Loop: Header=BB11_246 Depth=2
	add	r6, t5
	mov	r1, 3
	mov	r0, r6
	call	__bit_and
	mov	r1, -4
	mov	t2, rax
	call	__bit_and
	mov	r6, rax
	mov	t3, [r6]
	mov	r1, 3
	mov	r0, t2
	call	__bit_shl
	mov	r1, 255
	mov	t2, rax
	mov	r0, r2
	call	__bit_and
	mov	r0, 255
	mov	t4, rax
	mov	r1, t2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t3
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t3, rax
	mov	r0, t4
	call	__bit_and
	mov	r0, rax
	mov	r1, t2
	call	__bit_shl
	mov	r0, t3
	mov	r1, rax
	call	__bit_or
	mov	[r6], rax
.LBB11_248:                             //   in Loop: Header=BB11_246 Depth=2
	add	x8, -1
	mov	r6, r3
	jg	x8, t7, .LBB11_246
	jmp	.LBB11_249
.LBB11_249:                             // %.loopexit40
                                        //   in Loop: Header=BB11_1 Depth=1
	mov	r2, r3
	add	r2, 1
	jz	r5, .LBB11_252
	jmp	.LBB11_250
.LBB11_250:                             // %.loopexit40
                                        //   in Loop: Header=BB11_1 Depth=1
	mov	r1, -2147483648
	mov	r0, r5
	call	__bit_xor
	mov	r6, rax
	mov	r0, r2
	call	__bit_xor
	jge	rax, r6, .LBB11_252
	jmp	.LBB11_251
.LBB11_251:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, r3
	add	r0, [rsp]
	mov	r1, 3
	call	__bit_and
	mov	r1, -4
	mov	r6, rax
	call	__bit_and
	mov	t2, rax
	mov	t3, [t2]
	mov	r1, 3
	mov	r0, r6
	call	__bit_shl
	mov	r0, 255
	mov	r6, rax
	mov	r1, r6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t3
	mov	r1, rax
	call	__bit_and
	mov	r0, 37
	mov	t3, rax
	mov	r1, r6
	call	__bit_shl
	mov	r0, t3
	mov	r1, rax
	call	__bit_or
	mov	[t2], rax
.LBB11_252:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, rsp
	add	r0, 8
	mov	[r0], r2
	jz	r7, .LBB11_1
	jmp	.LBB11_253
.LBB11_253:                             //   in Loop: Header=BB11_1 Depth=1
	jl	r4, t6, .LBB11_1
	jmp	.LBB11_254
.LBB11_254:                             //   in Loop: Header=BB11_1 Depth=1
	jz	r5, .LBB11_259
	jmp	.LBB11_255
.LBB11_255:                             //   in Loop: Header=BB11_1 Depth=1
	mov	t2, [rsp]
	mov	r1, -2147483648
	add	r3, 2
	mov	r0, r5
	call	__bit_xor
	mov	r6, rax
	mov	r0, r3
	call	__bit_xor
	jge	rax, r6, .LBB11_257
	jmp	.LBB11_256
.LBB11_256:                             //   in Loop: Header=BB11_1 Depth=1
	add	r2, t2
	mov	r1, 3
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	r6, rax
	call	__bit_and
	mov	r2, rax
	mov	r7, [r2]
	mov	r1, 3
	mov	r0, r6
	call	__bit_shl
	mov	r0, 255
	mov	r6, rax
	mov	r1, r6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r0, 32
	mov	r7, rax
	mov	r1, r6
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	[r2], rax
.LBB11_257:                             //   in Loop: Header=BB11_1 Depth=1
	jl	r4, t7, .LBB11_270
	jmp	.LBB11_258
.LBB11_258:                             // %.preheader37.preheader
                                        //   in Loop: Header=BB11_1 Depth=1
	add	r4, 1
	mov	r2, r3
	jmp	.LBB11_260
.LBB11_259:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, rsp
	add	r3, r4
	add	r0, 8
	mov	[r0], r3
	jmp	.LBB11_1
.LBB11_260:                             // %.preheader37
                                        //   Parent Loop BB11_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, -2147483648
	add	r3, 1
	mov	r0, r5
	call	__bit_xor
	mov	r6, rax
	mov	r0, r3
	call	__bit_xor
	jge	rax, r6, .LBB11_262
	jmp	.LBB11_261
.LBB11_261:                             //   in Loop: Header=BB11_260 Depth=2
	add	r2, t2
	mov	r1, 3
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	r6, rax
	call	__bit_and
	mov	r2, rax
	mov	r7, [r2]
	mov	r1, 3
	mov	r0, r6
	call	__bit_shl
	mov	r0, 255
	mov	r6, rax
	mov	r1, r6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r0, 32
	mov	r7, rax
	mov	r1, r6
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	[r2], rax
.LBB11_262:                             //   in Loop: Header=BB11_260 Depth=2
	add	r4, -1
	mov	r2, r3
	jg	r4, t7, .LBB11_260
	jmp	.LBB11_270
.LBB11_263:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, rsp
	mov	r1, rsp
	add	r0, 4
	mov	r4, [r0]
	add	r1, 8
	mov	r2, [r1]
	jnz	r4, .LBB11_265
	jmp	.LBB11_264
.LBB11_264:                             // %._crit_edge
                                        //   in Loop: Header=BB11_1 Depth=1
	add	r2, 2
	jmp	.LBB11_269
.LBB11_265:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r3, r2
	mov	r1, -2147483648
	add	r3, 1
	mov	r0, r4
	call	__bit_xor
	mov	r5, rax
	mov	r0, r3
	call	__bit_xor
	jge	rax, r5, .LBB11_267
	jmp	.LBB11_266
.LBB11_266:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, r2
	add	r0, [rsp]
	mov	r1, 3
	call	__bit_and
	mov	r1, -4
	mov	r5, rax
	call	__bit_and
	mov	r6, rax
	mov	r7, [r6]
	mov	r1, 3
	mov	r0, r5
	call	__bit_shl
	mov	r0, 255
	mov	r5, rax
	mov	r1, r5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r0, 37
	mov	r7, rax
	mov	r1, r5
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	[r6], rax
.LBB11_267:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r1, -2147483648
	add	r2, 2
	mov	r0, r4
	call	__bit_xor
	mov	r4, rax
	mov	r0, r2
	call	__bit_xor
	jge	rax, r4, .LBB11_269
	jmp	.LBB11_268
.LBB11_268:                             //   in Loop: Header=BB11_1 Depth=1
	add	r3, [rsp]
	mov	r1, 3
	mov	r0, r3
	call	__bit_and
	mov	r1, -4
	mov	r4, rax
	call	__bit_and
	mov	r3, rax
	mov	r5, [r3]
	mov	r1, 3
	mov	r0, r4
	call	__bit_shl
	mov	r1, 255
	mov	r4, rax
	mov	r0, t2
	call	__bit_and
	mov	r0, 255
	mov	r6, rax
	mov	r1, r4
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	r5, rax
	mov	r0, r6
	call	__bit_and
	mov	r0, rax
	mov	r1, r4
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
.LBB11_269:                             //   in Loop: Header=BB11_1 Depth=1
	mov	r0, rsp
	add	r0, 8
	mov	[r0], r2
	jmp	.LBB11_1
.LBB11_270:                             // %.loopexit38
                                        //   in Loop: Header=BB11_1 Depth=1
	mov	r0, rsp
	add	r0, 8
	mov	[r0], r3
	jmp	.LBB11_1
.LBB11_271:                             // %.loopexit44
                                        //   in Loop: Header=BB11_1 Depth=1
	mov	r0, rsp
	add	r0, 8
	mov	[r0], r3
	jmp	.LBB11_1
.LBB11_272:                             // %.loopexit46
                                        //   in Loop: Header=BB11_1 Depth=1
	mov	r0, rsp
	add	r0, 8
	mov	[r0], r3
	jmp	.LBB11_1
.LBB11_273:
	mov	r0, rsp
	mov	r1, rsp
	add	r0, 4
	mov	r3, [r0]
	add	r1, 8
	mov	r2, [r1]
	jz	r3, .LBB11_275
	jmp	.LBB11_274
.LBB11_274:
	add	r3, -1
	mov	r4, r2
	sub	r4, r3
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
	add	r3, rax
	add	r3, [rsp]
	mov	r1, 3
	mov	r0, r3
	call	__bit_and
	mov	r1, -4
	mov	r4, rax
	call	__bit_and
	mov	r3, rax
	mov	r5, [r3]
	mov	r1, 3
	mov	r0, r4
	call	__bit_shl
	mov	r0, 255
	mov	r4, rax
	mov	r1, r4
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r0, 0
	mov	r5, rax
	mov	r1, r4
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
.LBB11_275:
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
	mov	t0, rsp
	add	t0, 16
	mov	x4, [t0]
	mov	t4, r4
	mov	t6, r3
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
	jnz	r3, .LBB12_2
	jmp	.LBB12_1
.LBB12_1:
	mov	x3, 0
	jz	x4, .LBB12_6
	jmp	.LBB12_2
.LBB12_2:
	mov	r0, r5
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	x3, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	mov	x5, mcasm_static_5300d1bc602cebe9cc06f8a5dbd154ff
	mov	r1, mcasm_static_81a1c06102d7a90b5192a628c3bc5112
	sub	r1, x5
	add	rax, 1
	mov	r0, rax
	call	__bit_and
	jnz	r2, .LBB12_4
	jmp	.LBB12_3
.LBB12_3:
	add	x5, rax
	mov	x3, 0
	mov	t1, t3
	mov	x0, t2
	jmp	.LBB12_5
.LBB12_4:
	mov	r1, 3
	mov	r0, rsp
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r3, rax
	mov	t1, [r3]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	t1, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	jmp	.LBB12_6
.LBB12_5:                               // =>This Inner Loop Header: Depth=1
	mov	r3, 0
	mov	r0, t1
	mov	r1, x0
	mov	r2, t4
	call	__udivdi3
	mov	t5, rax
	mov	t7, t0
	mov	r0, t5
	mov	r1, t7
	call	__muldi3
	mov	r3, t0
	mov	r0, t1
	mov	r1, x0
	mov	r2, rax
	call	__subdi3
	mov	r0, rax
	add	r0, x5
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	r2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r2, rax
	mov	r0, rsp
	add	r0, x3
	mov	r1, 3
	add	x3, 1
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	x1, rax
	mov	x2, [x1]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r0, 255
	mov	r3, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x2
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, r2
	call	__bit_and
	mov	r0, rax
	mov	r1, r3
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	[x1], rax
	mov	r0, x0
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
	sub	t1, t4
	mov	r1, 31
	mov	r2, rax
	mov	r0, t1
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
	mov	t1, t5
	mov	x0, t7
	jnz	rax, .LBB12_5
	jmp	.LBB12_6
.LBB12_6:                               // %.loopexit22
	mov	t1, 45
	mov	r2, 0
	mov	t5, 0
	jnz	t6, .LBB12_9
	jmp	.LBB12_7
.LBB12_7:
	mov	r0, [rsp]
	mov	t1, 43
	jnz	r0, .LBB12_9
	jmp	.LBB12_8
.LBB12_8:
	mov	r0, rsp
	add	r0, 4
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
	mov	t5, rax
	mov	r0, t5
	call	__bit_not
	add	rax, 1
	mov	r1, -32
	mov	r0, rax
	call	__bit_and
	mov	t1, rax
	add	t1, 32
.LBB12_9:
	mov	x6, 0
	mov	x5, 0
	mov	t6, 0
	mov	r3, 0
	jz	r6, .LBB12_17
	jmp	.LBB12_10
.LBB12_10:
	mov	r0, 8
	jne	t4, r0, .LBB12_14
	jmp	.LBB12_11
.LBB12_11:
	jz	x3, .LBB12_13
	jmp	.LBB12_12
.LBB12_12:
	mov	r0, rsp
	add	r0, x3
	add	r0, -1
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	r2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r0, 48
	mov	r2, 0
	je	rax, r0, .LBB12_17
	jmp	.LBB12_13
.LBB12_13:
	mov	r2, 48
	mov	x6, 1
	mov	t6, 1
	jmp	.LBB12_17
.LBB12_14:
	mov	r0, t3
	mov	r1, t2
	call	__bit_or
	jz	rax, .LBB12_17
	jmp	.LBB12_15
.LBB12_15:
	mov	r0, 16
	jne	t4, r0, .LBB12_17
	jmp	.LBB12_16
.LBB12_16:
	mov	r0, r5
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	x6, 1
	mov	r0, rax
	call	__bit_xor
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r1, 32
	mov	r0, rax
	call	__bit_and
	mov	r3, rax
	add	r3, 88
	mov	r2, 48
	mov	t6, 2
	mov	x5, 1
.LBB12_17:
	mov	x1, x4
	sub	x1, x3
	jg	x4, x3, .LBB12_19
	jmp	.LBB12_18
.LBB12_18:
	mov	x1, 0
.LBB12_19:
	mov	r1, rsp
	mov	r0, -1
	add	r1, 12
	mov	x2, x1
	jg	x4, r0, .LBB12_21
	jmp	.LBB12_20
.LBB12_20:
	mov	x2, 0
.LBB12_21:
	mov	r6, [r1]
	mov	r5, 0
	jg	x4, r0, .LBB12_23
	jmp	.LBB12_22
.LBB12_22:
	mov	r0, rsp
	add	r0, 8
	mov	r5, [r0]
.LBB12_23:
	mov	t2, x2
	add	t2, x3
	mov	r0, t5
	call	__bit_not
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	add	rax, t2
	add	rax, t6
	mov	t4, r6
	sub	t4, rax
	mov	x0, t4
	jg	r6, rax, .LBB12_25
	jmp	.LBB12_24
.LBB12_24:
	mov	x0, 0
.LBB12_25:
	mov	r0, r5
	mov	r1, r7
	call	__bit_or
	mov	t7, r4
	add	t7, 4
	mov	t6, r4
	add	t6, 8
	jnz	rax, .LBB12_35
	jmp	.LBB12_26
.LBB12_26:
	mov	r0, 1
	jl	x0, r0, .LBB12_35
	jmp	.LBB12_27
.LBB12_27:
	mov	r0, [t7]
	mov	r6, [t6]
	jz	r0, .LBB12_29
	jmp	.LBB12_28
.LBB12_28:                              // %.preheader20.preheader
	mov	x4, 1
	mov	x7, t4
	mov	t2, r6
	jmp	.LBB12_31
.LBB12_29:
	add	r6, x0
	mov	[t6], r6
	jmp	.LBB12_35
.LBB12_30:                              //   in Loop: Header=BB12_31 Depth=1
	mov	r0, [t7]
	add	x7, -1
	mov	r6, t2
.LBB12_31:                              // %.preheader20
                                        // =>This Inner Loop Header: Depth=1
	add	t2, 1
	jz	r0, .LBB12_34
	jmp	.LBB12_32
.LBB12_32:                              // %.preheader20
                                        //   in Loop: Header=BB12_31 Depth=1
	mov	r1, -2147483648
	call	__bit_xor
	mov	t3, rax
	mov	r0, t2
	call	__bit_xor
	jge	rax, t3, .LBB12_34
	jmp	.LBB12_33
.LBB12_33:                              //   in Loop: Header=BB12_31 Depth=1
	add	r6, [r4]
	mov	r1, 3
	mov	r0, r6
	call	__bit_and
	mov	r1, -4
	mov	t2, rax
	call	__bit_and
	mov	r6, rax
	mov	t3, [r6]
	mov	r1, 3
	mov	r0, t2
	call	__bit_shl
	mov	r0, 255
	mov	t2, rax
	mov	r1, t2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t3
	mov	r1, rax
	call	__bit_and
	mov	r0, 32
	mov	t3, rax
	mov	r1, t2
	call	__bit_shl
	mov	r0, t3
	mov	r1, rax
	call	__bit_or
	mov	[r6], rax
	mov	t2, 1
	add	t2, [t6]
.LBB12_34:                              //   in Loop: Header=BB12_31 Depth=1
	mov	[t6], t2
	jg	x7, x4, .LBB12_30
	jmp	.LBB12_35
.LBB12_35:                              // %.loopexit21
	jnz	t5, .LBB12_40
	jmp	.LBB12_36
.LBB12_36:
	mov	r0, [t7]
	jz	r0, .LBB12_39
	jmp	.LBB12_37
.LBB12_37:
	mov	r6, [t6]
	mov	t2, r6
	mov	r1, -2147483648
	add	t2, 1
	call	__bit_xor
	mov	t3, rax
	mov	r0, t2
	call	__bit_xor
	jge	rax, t3, .LBB12_39
	jmp	.LBB12_38
.LBB12_38:
	add	r6, [r4]
	mov	r1, 3
	mov	r0, r6
	call	__bit_and
	mov	r1, -4
	mov	t2, rax
	call	__bit_and
	mov	r6, rax
	mov	t3, [r6]
	mov	r1, 3
	mov	r0, t2
	call	__bit_shl
	mov	r1, 255
	mov	t2, rax
	mov	r0, t1
	call	__bit_and
	mov	r0, 255
	mov	t1, rax
	mov	r1, t2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t3
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t3, rax
	mov	r0, t1
	call	__bit_and
	mov	r0, rax
	mov	r1, t2
	call	__bit_shl
	mov	r0, t3
	mov	r1, rax
	call	__bit_or
	mov	[r6], rax
.LBB12_39:
	add	[t6], 1
.LBB12_40:
	jz	x6, .LBB12_45
	jmp	.LBB12_41
.LBB12_41:
	mov	r0, [t7]
	jz	r0, .LBB12_44
	jmp	.LBB12_42
.LBB12_42:
	mov	r6, [t6]
	mov	t1, r6
	mov	r1, -2147483648
	add	t1, 1
	call	__bit_xor
	mov	t2, rax
	mov	r0, t1
	call	__bit_xor
	jge	rax, t2, .LBB12_44
	jmp	.LBB12_43
.LBB12_43:
	add	r6, [r4]
	mov	r1, 3
	mov	r0, r6
	call	__bit_and
	mov	r1, -4
	mov	t1, rax
	call	__bit_and
	mov	r6, rax
	mov	t2, [r6]
	mov	r1, 3
	mov	r0, t1
	call	__bit_shl
	mov	r0, 255
	mov	t1, rax
	mov	r1, t1
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t2
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t2, rax
	mov	r0, r2
	call	__bit_and
	mov	r0, rax
	mov	r1, t1
	call	__bit_shl
	mov	r0, t2
	mov	r1, rax
	call	__bit_or
	mov	[r6], rax
.LBB12_44:
	add	[t6], 1
.LBB12_45:
	jz	x5, .LBB12_50
	jmp	.LBB12_46
.LBB12_46:
	mov	r0, [t7]
	jz	r0, .LBB12_49
	jmp	.LBB12_47
.LBB12_47:
	mov	r2, [t6]
	mov	r6, r2
	mov	r1, -2147483648
	add	r6, 1
	call	__bit_xor
	mov	t1, rax
	mov	r0, r6
	call	__bit_xor
	jge	rax, t1, .LBB12_49
	jmp	.LBB12_48
.LBB12_48:
	add	r2, [r4]
	mov	r1, 3
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	r6, rax
	call	__bit_and
	mov	r2, rax
	mov	t1, [r2]
	mov	r1, 3
	mov	r0, r6
	call	__bit_shl
	mov	r1, 255
	mov	r6, rax
	mov	r0, r3
	call	__bit_and
	mov	r0, 255
	mov	r3, rax
	mov	r1, r6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t1, rax
	mov	r0, r3
	call	__bit_and
	mov	r0, rax
	mov	r1, r6
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	[r2], rax
.LBB12_49:
	add	[t6], 1
.LBB12_50:
	jnz	r7, .LBB12_61
	jmp	.LBB12_51
.LBB12_51:
	jz	r5, .LBB12_61
	jmp	.LBB12_52
.LBB12_52:
	mov	r0, 1
	jl	x0, r0, .LBB12_61
	jmp	.LBB12_53
.LBB12_53:
	mov	r0, [t7]
	mov	r2, [t6]
	jz	r0, .LBB12_55
	jmp	.LBB12_54
.LBB12_54:                              // %.preheader18.preheader
	mov	r6, 1
	mov	t1, t4
	mov	r3, r2
	jmp	.LBB12_57
.LBB12_55:
	add	r2, x0
	mov	[t6], r2
	jmp	.LBB12_61
.LBB12_56:                              //   in Loop: Header=BB12_57 Depth=1
	mov	r0, [t7]
	add	t1, -1
	mov	r2, r3
.LBB12_57:                              // %.preheader18
                                        // =>This Inner Loop Header: Depth=1
	add	r3, 1
	jz	r0, .LBB12_60
	jmp	.LBB12_58
.LBB12_58:                              // %.preheader18
                                        //   in Loop: Header=BB12_57 Depth=1
	mov	r1, -2147483648
	call	__bit_xor
	mov	r5, rax
	mov	r0, r3
	call	__bit_xor
	jge	rax, r5, .LBB12_60
	jmp	.LBB12_59
.LBB12_59:                              //   in Loop: Header=BB12_57 Depth=1
	add	r2, [r4]
	mov	r1, 3
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	r2, rax
	mov	r5, [r2]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r0, 255
	mov	r3, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	r5, rax
	mov	r1, r3
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	[r2], rax
	mov	r3, 1
	add	r3, [t6]
.LBB12_60:                              //   in Loop: Header=BB12_57 Depth=1
	mov	[t6], r3
	jg	t1, r6, .LBB12_56
	jmp	.LBB12_61
.LBB12_61:                              // %.loopexit19
	mov	r6, 1
	jl	x2, r6, .LBB12_70
	jmp	.LBB12_62
.LBB12_62:
	mov	r0, [t7]
	mov	r2, [t6]
	jz	r0, .LBB12_64
	jmp	.LBB12_63
.LBB12_63:                              // %.preheader16.preheader
	mov	t1, 1
	mov	r3, r2
	jmp	.LBB12_66
.LBB12_64:
	add	r2, x2
	mov	[t6], r2
	jmp	.LBB12_70
.LBB12_65:                              //   in Loop: Header=BB12_66 Depth=1
	mov	r0, [t7]
	add	x1, -1
	mov	r2, r3
.LBB12_66:                              // %.preheader16
                                        // =>This Inner Loop Header: Depth=1
	add	r3, 1
	jz	r0, .LBB12_69
	jmp	.LBB12_67
.LBB12_67:                              // %.preheader16
                                        //   in Loop: Header=BB12_66 Depth=1
	mov	r1, -2147483648
	call	__bit_xor
	mov	r5, rax
	mov	r0, r3
	call	__bit_xor
	jge	rax, r5, .LBB12_69
	jmp	.LBB12_68
.LBB12_68:                              //   in Loop: Header=BB12_66 Depth=1
	add	r2, [r4]
	mov	r1, 3
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	r2, rax
	mov	r5, [r2]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r0, 255
	mov	r3, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	r5, rax
	mov	r1, r3
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	[r2], rax
	mov	r3, 1
	add	r3, [t6]
.LBB12_69:                              //   in Loop: Header=BB12_66 Depth=1
	mov	[t6], r3
	jg	x1, t1, .LBB12_65
	jmp	.LBB12_70
.LBB12_70:                              // %.loopexit17
	jl	x3, r6, .LBB12_79
	jmp	.LBB12_71
.LBB12_71:
	mov	r0, [t7]
	mov	r2, [t6]
	jz	r0, .LBB12_73
	jmp	.LBB12_72
.LBB12_72:                              // %.preheader14.preheader
	mov	t1, rsp
	add	t1, -1
	mov	t2, 1
	mov	r3, r2
	jmp	.LBB12_75
.LBB12_73:
	add	r2, x3
	mov	[t6], r2
	jmp	.LBB12_79
.LBB12_74:                              //   in Loop: Header=BB12_75 Depth=1
	mov	r0, [t7]
	add	x3, -1
	mov	r2, r3
.LBB12_75:                              // %.preheader14
                                        // =>This Inner Loop Header: Depth=1
	add	r3, 1
	jz	r0, .LBB12_78
	jmp	.LBB12_76
.LBB12_76:                              // %.preheader14
                                        //   in Loop: Header=BB12_75 Depth=1
	mov	r1, -2147483648
	call	__bit_xor
	mov	r5, rax
	mov	r0, r3
	call	__bit_xor
	jge	rax, r5, .LBB12_78
	jmp	.LBB12_77
.LBB12_77:                              //   in Loop: Header=BB12_75 Depth=1
	mov	r0, t1
	add	r0, x3
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	r3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	add	r2, [r4]
	mov	r1, 3
	mov	r3, rax
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	r5, rax
	call	__bit_and
	mov	r2, rax
	mov	r6, [r2]
	mov	r1, 3
	mov	r0, r5
	call	__bit_shl
	mov	r0, 255
	mov	r5, rax
	mov	r1, r5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	r6, rax
	mov	r0, r3
	call	__bit_and
	mov	r0, rax
	mov	r1, r5
	call	__bit_shl
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	[r2], rax
	mov	r3, 1
	add	r3, [t6]
.LBB12_78:                              //   in Loop: Header=BB12_75 Depth=1
	mov	[t6], r3
	jg	x3, t2, .LBB12_74
	jmp	.LBB12_79
.LBB12_79:                              // %.loopexit15
	jz	r7, .LBB12_89
	jmp	.LBB12_80
.LBB12_80:                              // %.loopexit15
	mov	r0, 1
	jl	x0, r0, .LBB12_89
	jmp	.LBB12_81
.LBB12_81:
	mov	r0, [t7]
	mov	r2, [t6]
	jz	r0, .LBB12_83
	jmp	.LBB12_82
.LBB12_82:                              // %.preheader.preheader
	mov	r6, 1
	mov	r3, r2
	jmp	.LBB12_85
.LBB12_83:
	add	r2, x0
	mov	[t6], r2
	jmp	.LBB12_89
.LBB12_84:                              //   in Loop: Header=BB12_85 Depth=1
	mov	r0, [t7]
	add	t4, -1
	mov	r2, r3
.LBB12_85:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	add	r3, 1
	jz	r0, .LBB12_88
	jmp	.LBB12_86
.LBB12_86:                              // %.preheader
                                        //   in Loop: Header=BB12_85 Depth=1
	mov	r1, -2147483648
	call	__bit_xor
	mov	r5, rax
	mov	r0, r3
	call	__bit_xor
	jge	rax, r5, .LBB12_88
	jmp	.LBB12_87
.LBB12_87:                              //   in Loop: Header=BB12_85 Depth=1
	add	r2, [r4]
	mov	r1, 3
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	r2, rax
	mov	r5, [r2]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r0, 255
	mov	r3, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r0, 32
	mov	r5, rax
	mov	r1, r3
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	[r2], rax
	mov	r3, 1
	add	r3, [t6]
.LBB12_88:                              //   in Loop: Header=BB12_85 Depth=1
	mov	[t6], r3
	jg	t4, r6, .LBB12_84
	jmp	.LBB12_89
.LBB12_89:                              // %.loopexit
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
	jg	rax, r1, .LBB14_2
	jmp	.LBB14_1
.LBB14_1:
	mov	r0, 0
	sub	r0, rax
	mov	rax, r0
.LBB14_2:
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
	jz	r4, .LBB17_115
	jmp	.LBB17_1
.LBB17_1:
	mov	r0, 0
	jg	r2, r0, .LBB17_3
	jmp	.LBB17_2
.LBB17_2:
	mov	r1, 3
	mov	r0, r4
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r3, rax
	mov	r5, [r3]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r0, 0
	mov	r5, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	jmp	.LBB17_115
.LBB17_3:
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
	jl	r2, r0, .LBB17_6
	jmp	.LBB17_4
.LBB17_4:
	mov	r0, t1
	call	malloc
	mov	r3, rax
	jnz	r3, .LBB17_6
	jmp	.LBB17_5
.LBB17_5:
	mov	r0, r6
	mov	r1, r5
	mov	r3, r4
	call	gcvt_fast
	jmp	.LBB17_115
.LBB17_6:
	mov	x0, r2
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
	jl	t2, rax, .LBB17_8
	jmp	.LBB17_7
.LBB17_7:
	mov	r2, r7
.LBB17_8:
	add	r2, r3
	mov	r1, 3
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	t2, rax
	call	__bit_and
	mov	r2, rax
	mov	t3, [r2]
	mov	r1, 3
	mov	r0, t2
	call	__bit_shl
	mov	r0, 255
	mov	t2, rax
	mov	r1, t2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t3
	mov	r1, rax
	call	__bit_and
	mov	r0, 0
	mov	t3, rax
	mov	r1, t2
	call	__bit_shl
	mov	r0, t3
	mov	r1, rax
	call	__bit_or
	mov	r1, 3
	mov	[r2], rax
	mov	r0, r3
	call	__bit_and
	mov	t3, rax
	jz	t3, .LBB17_10
	jmp	.LBB17_9
.LBB17_9:
	mov	r1, 2
	mov	r0, r3
	call	__bit_shr
	mov	r1, 3
	mov	r2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t2, rax
	mov	r2, x0
	jmp	.LBB17_11
.LBB17_10:
	mov	t2, [r3]
	mov	r0, 5136718
	mov	r2, x0
	je	t2, r0, .LBB17_25
	jmp	.LBB17_11
.LBB17_11:
	mov	r1, 255
	mov	r0, t2
	call	__bit_and
	mov	t5, 0
	mov	t4, mcasm_static_2dcf2c52c9c4989eb1d1edcd66777ea0
	jz	rax, .LBB17_16
	jmp	.LBB17_12
.LBB17_12:                              // %.preheader.i.preheader
	mov	t5, r3
	add	t5, 1
	mov	t6, t2
.LBB17_13:                              // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	mov	r0, t4
	call	__bit_shr
	mov	r1, 3
	mov	t7, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t7]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t7, rax
	mov	r0, t6
	call	__bit_and
	jne	rax, t7, .LBB17_15
	jmp	.LBB17_14
.LBB17_14:                              //   in Loop: Header=BB17_13 Depth=1
	mov	r1, 2
	add	t4, 1
	mov	r0, t5
	call	__bit_shr
	mov	r1, 3
	mov	t6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t6, rax
	add	t5, 1
	mov	r0, 0
	jnz	t6, .LBB17_13
	jmp	.LBB17_15
.LBB17_15:
	call	__bit_and
	mov	t5, rax
.LBB17_16:                              // %strcmp.exit
	mov	r1, 2
	mov	r0, t4
	call	__bit_shr
	mov	r1, 3
	mov	t6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	je	t5, rax, .LBB17_25
	jmp	.LBB17_17
.LBB17_17:
	jnz	t3, .LBB17_19
	jmp	.LBB17_18
.LBB17_18:
	mov	t2, [r3]
	mov	r0, 7233902
	je	t2, r0, .LBB17_25
	jmp	.LBB17_19
.LBB17_19:
	mov	r0, t2
	call	__bit_and
	mov	t5, 0
	mov	t4, mcasm_static_a576e628ccce7d9f3a7a751e8482252b
	jz	rax, .LBB17_24
	jmp	.LBB17_20
.LBB17_20:                              // %.preheader.i4.preheader
	mov	t5, r3
	add	t5, 1
	mov	t6, t2
.LBB17_21:                              // %.preheader.i4
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	mov	r0, t4
	call	__bit_shr
	mov	r1, 3
	mov	t7, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t7]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t7, rax
	mov	r0, t6
	call	__bit_and
	jne	rax, t7, .LBB17_23
	jmp	.LBB17_22
.LBB17_22:                              //   in Loop: Header=BB17_21 Depth=1
	mov	r1, 2
	add	t4, 1
	mov	r0, t5
	call	__bit_shr
	mov	r1, 3
	mov	t6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t6, rax
	add	t5, 1
	mov	r0, 0
	jnz	t6, .LBB17_21
	jmp	.LBB17_23
.LBB17_23:
	call	__bit_and
	mov	t5, rax
.LBB17_24:                              // %strcmp.exit6
	mov	r1, 2
	mov	r0, t4
	call	__bit_shr
	mov	r1, 3
	mov	t6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jne	t5, rax, .LBB17_43
	jmp	.LBB17_25
.LBB17_25:                              // %strcmp.exit.thread
	mov	r5, r4
	mov	r1, 3
	add	r5, 1
	mov	r0, r4
	call	__bit_and
	mov	r1, -4
	mov	r6, rax
	call	__bit_and
	mov	r7, rax
	mov	t1, [r7]
	mov	r1, 3
	mov	r0, r6
	call	__bit_shl
	mov	r0, 255
	mov	r6, rax
	mov	r1, r6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r0, 110
	mov	t1, rax
	mov	r1, r6
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	[r7], rax
	mov	r6, r4
	mov	r1, 3
	add	r6, 2
	mov	r0, r5
	call	__bit_and
	mov	r1, -4
	mov	r7, rax
	call	__bit_and
	mov	r5, rax
	mov	t1, [r5]
	mov	r1, 3
	mov	r0, r7
	call	__bit_shl
	mov	r0, 255
	mov	r7, rax
	mov	r1, r7
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r0, 97
	mov	t1, rax
	mov	r1, r7
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	[r5], rax
	mov	r5, r4
	mov	r1, 3
	add	r5, 3
	mov	r0, r6
	call	__bit_and
	mov	r1, -4
	mov	r7, rax
	call	__bit_and
	mov	r6, rax
	mov	t1, [r6]
	mov	r1, 3
	mov	r0, r7
	call	__bit_shl
	mov	r0, 255
	mov	r7, rax
	mov	r1, r7
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r0, 110
	mov	t1, rax
	mov	r1, r7
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	r1, 3
	mov	[r6], rax
	mov	r0, r5
	call	__bit_and
	mov	r1, -4
	mov	r6, rax
	call	__bit_and
	mov	r5, rax
	mov	r7, [r5]
	mov	r1, 3
	mov	r0, r6
	call	__bit_shl
	mov	r0, 255
	mov	r6, rax
	mov	r1, r6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r0, 0
	mov	r7, rax
	mov	r1, r6
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	r1, -2147483648
	mov	[r5], rax
	mov	r0, r2
	call	__bit_xor
	mov	r0, -2147483023
	jl	rax, r0, .LBB17_115
	jmp	.LBB17_26
.LBB17_26:
	mov	r0, 16384
	mov	r1, [r0]
	mov	r2, 1296125004
	je	r1, r2, .LBB17_28
	jmp	.LBB17_27
.LBB17_27:
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
	jmp	.LBB17_33
.LBB17_28:
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
	jz	r2, .LBB17_33
	jmp	.LBB17_29
.LBB17_29:
	jge	r2, r5, .LBB17_33
	jmp	.LBB17_30
.LBB17_30:                              // %.preheader.i7.preheader
.LBB17_31:                              // %.preheader.i7
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
	jz	r2, .LBB17_33
	jmp	.LBB17_32
.LBB17_32:                              // %.preheader.i7
                                        //   in Loop: Header=BB17_31 Depth=1
	jl	r2, r5, .LBB17_31
	jmp	.LBB17_33
.LBB17_33:                              // %.loopexit.i
	jne	r2, r5, .LBB17_35
	jmp	.LBB17_34
.LBB17_34:
	call	abort
.LBB17_35:
	mov	r0, 16386
	jz	r7, .LBB17_39
	jmp	.LBB17_36
.LBB17_36:
	mov	r0, [r7]
	mov	r1, r0
	add	r1, r7
	jne	r1, r5, .LBB17_38
	jmp	.LBB17_37
.LBB17_37:
	add	r0, r6
	mov	[r7], r0
	mov	r5, r7
	jmp	.LBB17_40
.LBB17_38:
	add	r7, 1
	mov	r0, r7
.LBB17_39:
	mov	[r0], r5
	mov	[r3], r2
.LBB17_40:
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB17_115
	jmp	.LBB17_41
.LBB17_41:
	mov	r0, [r5]
	mov	r1, r0
	add	r1, r5
	jne	r1, r2, .LBB17_115
	jmp	.LBB17_42
.LBB17_42:
	add	r0, [r2]
	mov	[r5], r0
	add	r2, 1
	mov	r0, [r2]
	add	r5, 1
	mov	[r5], r0
	jmp	.LBB17_115
.LBB17_43:
	mov	t4, mcasm_static_33c0bc0aebd755f222c09aab13174b8a
	mov	t6, t2
	mov	t5, r3
	jnz	t3, .LBB17_49
	jmp	.LBB17_44
.LBB17_44:
	mov	t2, [r3]
	mov	r1, 1768320585
	mov	t6, t2
	mov	t5, r3
	jne	t2, r1, .LBB17_49
	jmp	.LBB17_45
.LBB17_45:                              // %.preheader5.i10.preheader
	mov	t6, -2139062144
	mov	t5, r3
.LBB17_46:                              // %.preheader5.i10
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, t6, .LBB17_63
	jmp	.LBB17_47
.LBB17_47:                              //   in Loop: Header=BB17_46 Depth=1
	add	t5, 4
	add	t4, 4
	mov	r1, [t5]
	mov	r0, [t4]
	je	r1, r0, .LBB17_46
	jmp	.LBB17_48
.LBB17_48:
	mov	t6, r1
.LBB17_49:
	mov	r1, 255
	mov	r0, t6
	call	__bit_and
	mov	t7, 0
	jz	rax, .LBB17_54
	jmp	.LBB17_50
.LBB17_50:                              // %.preheader.i8.preheader
	add	t5, 1
.LBB17_51:                              // %.preheader.i8
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	mov	r0, t4
	call	__bit_shr
	mov	r1, 3
	mov	t7, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t7]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t7, rax
	mov	r0, t6
	call	__bit_and
	jne	rax, t7, .LBB17_53
	jmp	.LBB17_52
.LBB17_52:                              //   in Loop: Header=BB17_51 Depth=1
	mov	r1, 2
	add	t4, 1
	mov	r0, t5
	call	__bit_shr
	mov	r1, 3
	mov	t6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t6, rax
	add	t5, 1
	mov	r0, 0
	jnz	t6, .LBB17_51
	jmp	.LBB17_53
.LBB17_53:
	call	__bit_and
	mov	t7, rax
.LBB17_54:                              // %strcmp.exit11
	mov	r1, 2
	mov	r0, t4
	call	__bit_shr
	mov	r1, 3
	mov	t5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	je	t7, rax, .LBB17_63
	jmp	.LBB17_55
.LBB17_55:
	jnz	t3, .LBB17_57
	jmp	.LBB17_56
.LBB17_56:
	mov	t2, [r3]
	mov	r0, 6712937
	je	t2, r0, .LBB17_63
	jmp	.LBB17_57
.LBB17_57:
	mov	r0, t2
	call	__bit_and
	mov	t5, 0
	mov	t4, mcasm_static_aee5601175a1ec2ca6e3a4325b7c8241
	jz	rax, .LBB17_62
	jmp	.LBB17_58
.LBB17_58:                              // %.preheader.i12.preheader
	mov	t5, r3
	add	t5, 1
	mov	t6, t2
.LBB17_59:                              // %.preheader.i12
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	mov	r0, t4
	call	__bit_shr
	mov	r1, 3
	mov	t7, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t7]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t7, rax
	mov	r0, t6
	call	__bit_and
	jne	rax, t7, .LBB17_61
	jmp	.LBB17_60
.LBB17_60:                              //   in Loop: Header=BB17_59 Depth=1
	mov	r1, 2
	add	t4, 1
	mov	r0, t5
	call	__bit_shr
	mov	r1, 3
	mov	t6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t6, rax
	add	t5, 1
	mov	r0, 0
	jnz	t6, .LBB17_59
	jmp	.LBB17_61
.LBB17_61:
	call	__bit_and
	mov	t5, rax
.LBB17_62:                              // %strcmp.exit15
	mov	r1, 2
	mov	r0, t4
	call	__bit_shr
	mov	r1, 3
	mov	t6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jne	t5, rax, .LBB17_81
	jmp	.LBB17_63
.LBB17_63:                              // %strcmp.exit11.thread
	mov	r5, r4
	mov	r1, 3
	add	r5, 1
	mov	r0, r4
	call	__bit_and
	mov	r1, -4
	mov	r6, rax
	call	__bit_and
	mov	r7, rax
	mov	t1, [r7]
	mov	r1, 3
	mov	r0, r6
	call	__bit_shl
	mov	r0, 255
	mov	r6, rax
	mov	r1, r6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r0, 105
	mov	t1, rax
	mov	r1, r6
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	[r7], rax
	mov	r6, r4
	mov	r1, 3
	add	r6, 2
	mov	r0, r5
	call	__bit_and
	mov	r1, -4
	mov	r7, rax
	call	__bit_and
	mov	r5, rax
	mov	t1, [r5]
	mov	r1, 3
	mov	r0, r7
	call	__bit_shl
	mov	r0, 255
	mov	r7, rax
	mov	r1, r7
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r0, 110
	mov	t1, rax
	mov	r1, r7
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	[r5], rax
	mov	r5, r4
	mov	r1, 3
	add	r5, 3
	mov	r0, r6
	call	__bit_and
	mov	r1, -4
	mov	r7, rax
	call	__bit_and
	mov	r6, rax
	mov	t1, [r6]
	mov	r1, 3
	mov	r0, r7
	call	__bit_shl
	mov	r0, 255
	mov	r7, rax
	mov	r1, r7
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r0, 102
	mov	t1, rax
	mov	r1, r7
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	r1, 3
	mov	[r6], rax
	mov	r0, r5
	call	__bit_and
	mov	r1, -4
	mov	r6, rax
	call	__bit_and
	mov	r5, rax
	mov	r7, [r5]
	mov	r1, 3
	mov	r0, r6
	call	__bit_shl
	mov	r0, 255
	mov	r6, rax
	mov	r1, r6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r0, 0
	mov	r7, rax
	mov	r1, r6
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	r1, -2147483648
	mov	[r5], rax
	mov	r0, r2
	call	__bit_xor
	mov	r0, -2147483023
	jl	rax, r0, .LBB17_115
	jmp	.LBB17_64
.LBB17_64:
	mov	r0, 16384
	mov	r1, [r0]
	mov	r2, 1296125004
	je	r1, r2, .LBB17_66
	jmp	.LBB17_65
.LBB17_65:
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
	jmp	.LBB17_71
.LBB17_66:
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
	jz	r2, .LBB17_71
	jmp	.LBB17_67
.LBB17_67:
	jge	r2, r5, .LBB17_71
	jmp	.LBB17_68
.LBB17_68:                              // %.preheader.i19.preheader
.LBB17_69:                              // %.preheader.i19
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
	jz	r2, .LBB17_71
	jmp	.LBB17_70
.LBB17_70:                              // %.preheader.i19
                                        //   in Loop: Header=BB17_69 Depth=1
	jl	r2, r5, .LBB17_69
	jmp	.LBB17_71
.LBB17_71:                              // %.loopexit.i18
	jne	r2, r5, .LBB17_73
	jmp	.LBB17_72
.LBB17_72:
	call	abort
.LBB17_73:
	mov	r0, 16386
	jz	r7, .LBB17_77
	jmp	.LBB17_74
.LBB17_74:
	mov	r0, [r7]
	mov	r1, r0
	add	r1, r7
	jne	r1, r5, .LBB17_76
	jmp	.LBB17_75
.LBB17_75:
	add	r0, r6
	mov	[r7], r0
	mov	r5, r7
	jmp	.LBB17_78
.LBB17_76:
	add	r7, 1
	mov	r0, r7
.LBB17_77:
	mov	[r0], r5
	mov	[r3], r2
.LBB17_78:
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB17_115
	jmp	.LBB17_79
.LBB17_79:
	mov	r0, [r5]
	mov	r1, r0
	add	r1, r5
	jne	r1, r2, .LBB17_115
	jmp	.LBB17_80
.LBB17_80:
	add	r0, [r2]
	mov	[r5], r0
	add	r2, 1
	mov	r0, [r2]
	add	r5, 1
	mov	[r5], r0
	jmp	.LBB17_115
.LBB17_81:
	mov	t4, mcasm_static_acced75c0450be778b18b0328f7269aa
	mov	t6, t2
	mov	t5, r3
	jnz	t3, .LBB17_87
	jmp	.LBB17_82
.LBB17_82:
	mov	t2, [r3]
	mov	r1, 1718503725
	mov	t6, t2
	mov	t5, r3
	jne	t2, r1, .LBB17_87
	jmp	.LBB17_83
.LBB17_83:                              // %.preheader5.i23.preheader
	mov	t6, -2139062144
	mov	t5, r3
.LBB17_84:                              // %.preheader5.i23
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, t6, .LBB17_105
	jmp	.LBB17_85
.LBB17_85:                              //   in Loop: Header=BB17_84 Depth=1
	add	t5, 4
	add	t4, 4
	mov	r1, [t5]
	mov	r0, [t4]
	je	r1, r0, .LBB17_84
	jmp	.LBB17_86
.LBB17_86:
	mov	t6, r1
.LBB17_87:
	mov	r1, 255
	mov	r0, t6
	call	__bit_and
	mov	t7, 0
	jz	rax, .LBB17_92
	jmp	.LBB17_88
.LBB17_88:                              // %.preheader.i21.preheader
	add	t5, 1
.LBB17_89:                              // %.preheader.i21
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	mov	r0, t4
	call	__bit_shr
	mov	r1, 3
	mov	t7, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t7]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t7, rax
	mov	r0, t6
	call	__bit_and
	jne	rax, t7, .LBB17_91
	jmp	.LBB17_90
.LBB17_90:                              //   in Loop: Header=BB17_89 Depth=1
	mov	r1, 2
	add	t4, 1
	mov	r0, t5
	call	__bit_shr
	mov	r1, 3
	mov	t6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t6, rax
	add	t5, 1
	mov	r0, 0
	jnz	t6, .LBB17_89
	jmp	.LBB17_91
.LBB17_91:
	call	__bit_and
	mov	t7, rax
.LBB17_92:                              // %strcmp.exit24
	mov	r1, 2
	mov	r0, t4
	call	__bit_shr
	mov	r1, 3
	mov	t5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	je	t7, rax, .LBB17_105
	jmp	.LBB17_93
.LBB17_93:
	mov	t4, mcasm_static_460954a9761fde43e9b55e9d5e91598a
	mov	t5, r3
	jnz	t3, .LBB17_99
	jmp	.LBB17_94
.LBB17_94:
	mov	t2, [r3]
	mov	r1, 1718511917
	mov	t5, r3
	jne	t2, r1, .LBB17_99
	jmp	.LBB17_95
.LBB17_95:                              // %.preheader5.i27.preheader
	mov	t2, -2139062144
	mov	t5, r3
.LBB17_96:                              // %.preheader5.i27
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, t2, .LBB17_105
	jmp	.LBB17_97
.LBB17_97:                              //   in Loop: Header=BB17_96 Depth=1
	add	t5, 4
	add	t4, 4
	mov	r1, [t5]
	mov	r0, [t4]
	je	r1, r0, .LBB17_96
	jmp	.LBB17_98
.LBB17_98:
	mov	t2, r1
.LBB17_99:
	mov	r1, 255
	mov	r0, t2
	call	__bit_and
	mov	t3, 0
	jz	rax, .LBB17_104
	jmp	.LBB17_100
.LBB17_100:                             // %.preheader.i25.preheader
	add	t5, 1
.LBB17_101:                             // %.preheader.i25
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	mov	r0, t4
	call	__bit_shr
	mov	r1, 3
	mov	t3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t3, rax
	mov	r0, t2
	call	__bit_and
	jne	rax, t3, .LBB17_103
	jmp	.LBB17_102
.LBB17_102:                             //   in Loop: Header=BB17_101 Depth=1
	mov	r1, 2
	add	t4, 1
	mov	r0, t5
	call	__bit_shr
	mov	r1, 3
	mov	t2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t2, rax
	add	t5, 1
	mov	r0, 0
	jnz	t2, .LBB17_101
	jmp	.LBB17_103
.LBB17_103:
	call	__bit_and
	mov	t3, rax
.LBB17_104:                             // %strcmp.exit28
	mov	r1, 2
	mov	r0, t4
	call	__bit_shr
	mov	r1, 3
	mov	t2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jne	t3, rax, .LBB17_107
	jmp	.LBB17_105
.LBB17_105:                             // %strcmp.exit24.thread
	mov	r5, r4
	mov	r1, 3
	add	r5, 1
	mov	r0, r4
	call	__bit_and
	mov	r1, -4
	mov	r6, rax
	call	__bit_and
	mov	r7, rax
	mov	t1, [r7]
	mov	r1, 3
	mov	r0, r6
	call	__bit_shl
	mov	r0, 255
	mov	r6, rax
	mov	r1, r6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r0, 45
	mov	t1, rax
	mov	r1, r6
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	[r7], rax
	mov	r6, r4
	mov	r1, 3
	add	r6, 2
	mov	r0, r5
	call	__bit_and
	mov	r1, -4
	mov	r7, rax
	call	__bit_and
	mov	r5, rax
	mov	t1, [r5]
	mov	r1, 3
	mov	r0, r7
	call	__bit_shl
	mov	r0, 255
	mov	r7, rax
	mov	r1, r7
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r0, 105
	mov	t1, rax
	mov	r1, r7
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	[r5], rax
	mov	r5, r4
	mov	r1, 3
	add	r5, 3
	mov	r0, r6
	call	__bit_and
	mov	r1, -4
	mov	r7, rax
	call	__bit_and
	mov	r6, rax
	mov	t1, [r6]
	mov	r1, 3
	mov	r0, r7
	call	__bit_shl
	mov	r0, 255
	mov	r7, rax
	mov	r1, r7
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r0, 110
	mov	t1, rax
	mov	r1, r7
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	[r6], rax
	mov	r6, r4
	mov	r1, 3
	add	r6, 4
	mov	r0, r5
	call	__bit_and
	mov	r1, -4
	mov	r7, rax
	call	__bit_and
	mov	r5, rax
	mov	t1, [r5]
	mov	r1, 3
	mov	r0, r7
	call	__bit_shl
	mov	r0, 255
	mov	r7, rax
	mov	r1, r7
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r0, 102
	mov	t1, rax
	mov	r1, r7
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	r1, 3
	mov	[r5], rax
	mov	r0, r6
	call	__bit_and
	mov	r1, -4
	mov	r5, rax
	call	__bit_and
	mov	r6, rax
	mov	r7, [r6]
	mov	r1, 3
	mov	r0, r5
	call	__bit_shl
	mov	r0, 255
	mov	r5, rax
	mov	r1, r5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r0, 0
	mov	r7, rax
	mov	r1, r5
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	r1, -2147483648
	mov	[r6], rax
	mov	r0, r2
	call	__bit_xor
	mov	r0, -2147483023
	jl	rax, r0, .LBB17_115
	jmp	.LBB17_106
.LBB17_106:
	mov	r0, r3
	call	free
	jmp	.LBB17_115
.LBB17_107:
	mov	r0, r3
	mov	r1, rsp
	call	parse_exp10
	jnz	rax, .LBB17_113
	jmp	.LBB17_108
.LBB17_108:
	mov	r0, [rsp]
	mov	r1, -4
	jl	r0, r1, .LBB17_113
	jmp	.LBB17_109
.LBB17_109:
	jge	r0, r2, .LBB17_113
	jmp	.LBB17_110
.LBB17_110:
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
	jl	r5, rax, .LBB17_112
	jmp	.LBB17_111
.LBB17_111:
	mov	r2, r7
.LBB17_112:
	add	r2, r3
	mov	r1, 3
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	r5, rax
	call	__bit_and
	mov	r2, rax
	mov	r6, [r2]
	mov	r1, 3
	mov	r0, r5
	call	__bit_shl
	mov	r0, 255
	mov	r5, rax
	mov	r1, r5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	r0, 0
	mov	r6, rax
	mov	r1, r5
	call	__bit_shl
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	[r2], rax
	mov	r2, x0
.LBB17_113:
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
	jl	rax, r0, .LBB17_115
	jmp	.LBB17_114
.LBB17_114:
	mov	r0, r3
	call	free
.LBB17_115:                             // %free.exit
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
	mov	r4, rax
	mov	r5, r3
	jz	r4, .LBB18_2
	jmp	.LBB18_1
.LBB18_1:                               // %.preheader12.preheader
	mov	r6, r3
	add	r6, 1
	mov	t1, 101
	mov	r5, r3
	jmp	.LBB18_4
.LBB18_2:                               // %.loopexit9.i
	mov	r6, [r5]
	mov	r0, 16843008
	sub	r0, r6
	mov	r1, r6
	call	__bit_or
	mov	r1, -2139062144
	mov	r7, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, r7, .LBB18_9
	jmp	.LBB18_3
.LBB18_3:                               // %.preheader5.i.preheader
	jmp	.LBB18_7
.LBB18_4:                               // %.preheader12
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	mov	r0, r5
	call	__bit_shr
	mov	r1, 3
	mov	r7, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r7]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB18_12
	jmp	.LBB18_5
.LBB18_5:                               // %.preheader12
                                        //   in Loop: Header=BB18_4 Depth=1
	je	rax, t1, .LBB18_27
	jmp	.LBB18_6
.LBB18_6:                               //   in Loop: Header=BB18_4 Depth=1
	mov	r1, 3
	add	r5, 1
	mov	r0, r6
	call	__bit_and
	add	r6, 1
	jz	rax, .LBB18_2
	jmp	.LBB18_4
.LBB18_7:                               // %.preheader5.i
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
	jne	rax, r7, .LBB18_9
	jmp	.LBB18_8
.LBB18_8:                               //   in Loop: Header=BB18_7 Depth=1
	add	r5, 4
	mov	r6, [r5]
	mov	r0, 16843008
	sub	r0, r6
	mov	r1, r6
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	je	rax, r7, .LBB18_7
	jmp	.LBB18_9
.LBB18_9:                               // %.loopexit6.i.preheader
	add	r5, -1
	mov	r7, 101
.LBB18_10:                              // %.loopexit6.i
                                        // =>This Inner Loop Header: Depth=1
	add	r5, 1
	mov	r1, 2
	mov	r0, r5
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	je	rax, r7, .LBB18_26
	jmp	.LBB18_11
.LBB18_11:                              // %.loopexit6.i
                                        //   in Loop: Header=BB18_10 Depth=1
	jnz	rax, .LBB18_10
	jmp	.LBB18_12
.LBB18_12:                              // %.loopexit
	jz	r4, .LBB18_14
	jmp	.LBB18_13
.LBB18_13:                              // %.preheader7.preheader
	mov	r4, r3
	add	r4, 1
	mov	r6, 69
	jmp	.LBB18_16
.LBB18_14:                              // %.loopexit9.i2
	mov	r4, [r3]
	mov	r0, 16843008
	sub	r0, r4
	mov	r1, r4
	call	__bit_or
	mov	r1, -2139062144
	mov	r5, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, r5, .LBB18_21
	jmp	.LBB18_15
.LBB18_15:                              // %.preheader5.i4.preheader
	jmp	.LBB18_19
.LBB18_16:                              // %.preheader7
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	mov	r0, r3
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB18_37
	jmp	.LBB18_17
.LBB18_17:                              // %.preheader7
                                        //   in Loop: Header=BB18_16 Depth=1
	je	rax, r6, .LBB18_25
	jmp	.LBB18_18
.LBB18_18:                              //   in Loop: Header=BB18_16 Depth=1
	mov	r1, 3
	add	r3, 1
	mov	r0, r4
	call	__bit_and
	add	r4, 1
	jz	rax, .LBB18_14
	jmp	.LBB18_16
.LBB18_19:                              // %.preheader5.i4
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
	jne	rax, r5, .LBB18_21
	jmp	.LBB18_20
.LBB18_20:                              //   in Loop: Header=BB18_19 Depth=1
	add	r3, 4
	mov	r4, [r3]
	mov	r0, 16843008
	sub	r0, r4
	mov	r1, r4
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	je	rax, r5, .LBB18_19
	jmp	.LBB18_21
.LBB18_21:                              // %.loopexit6.i3.preheader
	add	r3, -1
	mov	r5, 69
.LBB18_22:                              // %.loopexit6.i3
                                        // =>This Inner Loop Header: Depth=1
	add	r3, 1
	mov	r1, 2
	mov	r0, r3
	call	__bit_shr
	mov	r1, 3
	mov	r4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB18_36
	jmp	.LBB18_23
.LBB18_23:                              // %.loopexit6.i3
                                        //   in Loop: Header=BB18_22 Depth=1
	jne	rax, r5, .LBB18_22
	jmp	.LBB18_24
.LBB18_24:                              // %strchr.exit.loopexit
	jmp	.LBB18_28
.LBB18_25:                              // %strchr.exit.loopexit2
	jmp	.LBB18_28
.LBB18_26:                              // %strchr.exit.loopexit3
	mov	r3, r5
	jmp	.LBB18_28
.LBB18_27:                              // %strchr.exit.loopexit5
	mov	r3, r5
.LBB18_28:                              // %strchr.exit
	mov	r4, r3
	add	r4, 1
	mov	r1, 2
	mov	r0, r4
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r0, 45
	je	rax, r0, .LBB18_31
	jmp	.LBB18_29
.LBB18_29:                              // %strchr.exit
	mov	r0, 43
	mov	r6, 1
	jne	rax, r0, .LBB18_32
	jmp	.LBB18_30
.LBB18_30:
	add	r3, 2
	mov	r4, r3
	jmp	.LBB18_32
.LBB18_31:
	add	r3, 2
	mov	r6, -1
	mov	r4, r3
.LBB18_32:
	mov	r1, 2
	mov	r0, r4
	call	__bit_shr
	mov	r1, 3
	mov	r3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r5, rax
	mov	r0, r5
	add	r0, -58
	call	__bit_and
	mov	r1, -2147483648
	mov	r3, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, -2147483402
	jl	rax, r0, .LBB18_38
	jmp	.LBB18_33
.LBB18_33:                              // %.preheader.preheader
	add	r4, 1
	mov	r3, 0
	mov	r7, -2147483638
.LBB18_34:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	t1, r3
	add	r5, -48
	mov	r1, 255
	mul	t1, 10
	mov	r0, r5
	call	__bit_and
	mov	r3, rax
	mov	r1, 2
	add	r3, t1
	mov	r0, r4
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r5, rax
	mov	r0, r5
	add	r0, -48
	call	__bit_and
	mov	r1, -2147483648
	add	r4, 1
	mov	r0, rax
	call	__bit_xor
	jl	rax, r7, .LBB18_34
	jmp	.LBB18_35
.LBB18_35:
	mul	r3, r6
	mov	[r2], r3
	mov	r3, 0
	jmp	.LBB18_38
.LBB18_36:                              // %strchr.exit5.thread.loopexit
	mov	r3, -1
	jmp	.LBB18_38
.LBB18_37:                              // %strchr.exit5.thread.loopexit1
	mov	r3, -1
.LBB18_38:                              // %strchr.exit5.thread
	mov	rax, r3
	ret
// -- End function
// -- Begin function trim_trailing_zeros_g
trim_trailing_zeros_g:                  // @trim_trailing_zeros_g
// %bb.0:
	mov	r1, 3
	mov	r3, r0
	call	__bit_and
	mov	r4, rax
	mov	r2, r3
	jz	r4, .LBB19_2
	jmp	.LBB19_1
.LBB19_1:                               // %.preheader31.preheader
	mov	r5, r3
	add	r5, 1
	mov	r7, 101
	mov	r2, r3
	jmp	.LBB19_4
.LBB19_2:                               // %.loopexit9.i
	mov	r5, [r2]
	mov	r0, 16843008
	sub	r0, r5
	mov	r1, r5
	call	__bit_or
	mov	r1, -2139062144
	mov	r6, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, r6, .LBB19_9
	jmp	.LBB19_3
.LBB19_3:                               // %.preheader5.i.preheader
	jmp	.LBB19_7
.LBB19_4:                               // %.preheader31
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB19_12
	jmp	.LBB19_5
.LBB19_5:                               // %.preheader31
                                        //   in Loop: Header=BB19_4 Depth=1
	je	rax, r7, .LBB19_37
	jmp	.LBB19_6
.LBB19_6:                               //   in Loop: Header=BB19_4 Depth=1
	mov	r1, 3
	add	r2, 1
	mov	r0, r5
	call	__bit_and
	add	r5, 1
	jz	rax, .LBB19_2
	jmp	.LBB19_4
.LBB19_7:                               // %.preheader5.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 1701143909
	mov	r0, r5
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, r5
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, r6, .LBB19_9
	jmp	.LBB19_8
.LBB19_8:                               //   in Loop: Header=BB19_7 Depth=1
	add	r2, 4
	mov	r5, [r2]
	mov	r0, 16843008
	sub	r0, r5
	mov	r1, r5
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	je	rax, r6, .LBB19_7
	jmp	.LBB19_9
.LBB19_9:                               // %.loopexit6.i.preheader
	add	r2, -1
	mov	r6, 101
.LBB19_10:                              // %.loopexit6.i
                                        // =>This Inner Loop Header: Depth=1
	add	r2, 1
	mov	r1, 2
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	je	rax, r6, .LBB19_36
	jmp	.LBB19_11
.LBB19_11:                              // %.loopexit6.i
                                        //   in Loop: Header=BB19_10 Depth=1
	jnz	rax, .LBB19_10
	jmp	.LBB19_12
.LBB19_12:                              // %.loopexit29
	mov	r2, r3
	jz	r4, .LBB19_14
	jmp	.LBB19_13
.LBB19_13:                              // %.preheader25.preheader
	mov	r5, r3
	add	r5, 1
	mov	r7, 69
	mov	r2, r3
	jmp	.LBB19_16
.LBB19_14:                              // %.loopexit9.i5
	mov	r5, [r2]
	mov	r0, 16843008
	sub	r0, r5
	mov	r1, r5
	call	__bit_or
	mov	r1, -2139062144
	mov	r6, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, r6, .LBB19_21
	jmp	.LBB19_15
.LBB19_15:                              // %.preheader5.i7.preheader
	jmp	.LBB19_19
.LBB19_16:                              // %.preheader25
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB19_24
	jmp	.LBB19_17
.LBB19_17:                              // %.preheader25
                                        //   in Loop: Header=BB19_16 Depth=1
	je	rax, r7, .LBB19_35
	jmp	.LBB19_18
.LBB19_18:                              //   in Loop: Header=BB19_16 Depth=1
	mov	r1, 3
	add	r2, 1
	mov	r0, r5
	call	__bit_and
	add	r5, 1
	jz	rax, .LBB19_14
	jmp	.LBB19_16
.LBB19_19:                              // %.preheader5.i7
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 1162167621
	mov	r0, r5
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, r5
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, r6, .LBB19_21
	jmp	.LBB19_20
.LBB19_20:                              //   in Loop: Header=BB19_19 Depth=1
	add	r2, 4
	mov	r5, [r2]
	mov	r0, 16843008
	sub	r0, r5
	mov	r1, r5
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	je	rax, r6, .LBB19_19
	jmp	.LBB19_21
.LBB19_21:                              // %.loopexit6.i6.preheader
	add	r2, -1
	mov	r6, 69
.LBB19_22:                              // %.loopexit6.i6
                                        // =>This Inner Loop Header: Depth=1
	add	r2, 1
	mov	r1, 2
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	je	rax, r6, .LBB19_34
	jmp	.LBB19_23
.LBB19_23:                              // %.loopexit6.i6
                                        //   in Loop: Header=BB19_22 Depth=1
	jnz	rax, .LBB19_22
	jmp	.LBB19_24
.LBB19_24:                              // %.loopexit
	mov	r5, r3
	jz	r4, .LBB19_29
	jmp	.LBB19_25
.LBB19_25:
	mov	r1, 2
	mov	r0, r3
	call	__bit_shr
	mov	r1, 3
	mov	r2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r2, r3
	jz	rax, .LBB19_33
	jmp	.LBB19_26
.LBB19_26:                              // %.preheader1.i.preheader
	mov	r5, r3
	add	r5, 1
	mov	r2, r3
	jmp	.LBB19_28
.LBB19_27:                              //   in Loop: Header=BB19_28 Depth=1
	mov	r1, 2
	mov	r0, r5
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	add	r5, 1
	jz	rax, .LBB19_33
	jmp	.LBB19_28
.LBB19_28:                              // %.preheader1.i
                                        // =>This Inner Loop Header: Depth=1
	add	r2, 1
	mov	r1, 3
	mov	r0, r2
	call	__bit_and
	jnz	rax, .LBB19_27
	jmp	.LBB19_29
.LBB19_29:                              // %.loopexit.i.preheader
	mov	r6, r5
	add	r6, -1
	mov	r7, -2139062144
.LBB19_30:                              // %.loopexit.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, [r5]
	mov	r0, 16843008
	sub	r0, r1
	mov	r2, r6
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	add	r5, 4
	add	r6, 4
	je	rax, r7, .LBB19_30
	jmp	.LBB19_31
.LBB19_31:                              // %.preheader.i.preheader
	mov	r7, -4
.LBB19_32:                              // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r5
	add	r0, r7
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	add	r2, 1
	add	r7, 1
	jnz	rax, .LBB19_32
	jmp	.LBB19_33
.LBB19_33:                              // %strlen.exit
	jmp	.LBB19_38
.LBB19_34:                              // %strchr.exit.loopexit
	jmp	.LBB19_38
.LBB19_35:                              // %strchr.exit.loopexit4
	jmp	.LBB19_38
.LBB19_36:                              // %strchr.exit.loopexit5
	jmp	.LBB19_38
.LBB19_37:                              // %strchr.exit.loopexit7
.LBB19_38:                              // %strchr.exit
	jz	r4, .LBB19_40
	jmp	.LBB19_39
.LBB19_39:                              // %.preheader.preheader
	mov	r4, r3
	add	r4, 1
	mov	r6, 46
	jmp	.LBB19_42
.LBB19_40:                              // %.loopexit9.i9
	mov	r4, [r3]
	mov	r0, 16843008
	sub	r0, r4
	mov	r1, r4
	call	__bit_or
	mov	r1, -2139062144
	mov	r5, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, r5, .LBB19_47
	jmp	.LBB19_41
.LBB19_41:                              // %.preheader5.i12.preheader
	jmp	.LBB19_45
.LBB19_42:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	mov	r0, r3
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB19_87
	jmp	.LBB19_43
.LBB19_43:                              // %.preheader
                                        //   in Loop: Header=BB19_42 Depth=1
	je	rax, r6, .LBB19_51
	jmp	.LBB19_44
.LBB19_44:                              //   in Loop: Header=BB19_42 Depth=1
	mov	r1, 3
	add	r3, 1
	mov	r0, r4
	call	__bit_and
	add	r4, 1
	jz	rax, .LBB19_40
	jmp	.LBB19_42
.LBB19_45:                              // %.preheader5.i12
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
	jne	rax, r5, .LBB19_47
	jmp	.LBB19_46
.LBB19_46:                              //   in Loop: Header=BB19_45 Depth=1
	add	r3, 4
	mov	r4, [r3]
	mov	r0, 16843008
	sub	r0, r4
	mov	r1, r4
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	je	rax, r5, .LBB19_45
	jmp	.LBB19_47
.LBB19_47:                              // %.loopexit6.i10.preheader
	add	r3, -1
	mov	r5, 46
.LBB19_48:                              // %.loopexit6.i10
                                        // =>This Inner Loop Header: Depth=1
	add	r3, 1
	mov	r1, 2
	mov	r0, r3
	call	__bit_shr
	mov	r1, 3
	mov	r4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	je	rax, r5, .LBB19_50
	jmp	.LBB19_49
.LBB19_49:                              // %.loopexit6.i10
                                        //   in Loop: Header=BB19_48 Depth=1
	jnz	rax, .LBB19_48
	jmp	.LBB19_50
.LBB19_50:
	mov	r0, rax
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
	jmp	.LBB19_52
.LBB19_51:                              // %strchr.exit13.loopexit
.LBB19_52:                              // %strchr.exit13
	jz	r3, .LBB19_87
	jmp	.LBB19_53
.LBB19_53:                              // %strchr.exit13
	mov	r1, -2147483648
	mov	r0, r2
	call	__bit_xor
	mov	r4, rax
	mov	r0, r3
	call	__bit_xor
	jge	rax, r4, .LBB19_87
	jmp	.LBB19_54
.LBB19_54:
	add	r3, 1
	mov	r0, 1
	mov	r6, 0
	mov	t0, -3
	mov	r7, 48
	mov	r5, r2
.LBB19_55:                              // =>This Inner Loop Header: Depth=1
	mov	r1, -2147483648
	mov	r4, r5
	mov	t2, r0
	mov	t3, t0
	mov	t4, r6
	mov	r0, r3
	call	__bit_xor
	mov	r5, rax
	mov	r0, r4
	call	__bit_xor
	jle	rax, r5, .LBB19_57
	jmp	.LBB19_56
.LBB19_56:                              //   in Loop: Header=BB19_55 Depth=1
	mov	r5, r4
	add	r5, -1
	mov	r1, 2
	mov	r0, r5
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r0, t2
	add	r0, -1
	mov	t0, t3
	add	t0, -1
	mov	r6, t4
	add	r6, -1
	je	rax, r7, .LBB19_55
	jmp	.LBB19_57
.LBB19_57:
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
	mov	r3, r2
	jz	rax, .LBB19_62
	jmp	.LBB19_58
.LBB19_58:
	mov	r1, 2
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	r3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r6, r2
	jz	rax, .LBB19_66
	jmp	.LBB19_59
.LBB19_59:                              // %.preheader1.i14.preheader
	mov	r3, r2
	add	r3, 1
	mov	r6, r2
	jmp	.LBB19_61
.LBB19_60:                              //   in Loop: Header=BB19_61 Depth=1
	mov	r1, 2
	mov	r0, r3
	call	__bit_shr
	mov	r1, 3
	mov	r7, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r7]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	add	r3, 1
	jz	rax, .LBB19_66
	jmp	.LBB19_61
.LBB19_61:                              // %.preheader1.i14
                                        // =>This Inner Loop Header: Depth=1
	add	r6, 1
	mov	r1, 3
	mov	r0, r6
	call	__bit_and
	jnz	rax, .LBB19_60
	jmp	.LBB19_62
.LBB19_62:                              // %.loopexit.i15.preheader
	mov	r7, r3
	add	r7, -1
	mov	t1, -2139062144
.LBB19_63:                              // %.loopexit.i15
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
	add	r7, 4
	je	rax, t1, .LBB19_63
	jmp	.LBB19_64
.LBB19_64:                              // %.preheader.i16.preheader
	mov	t1, -4
.LBB19_65:                              // %.preheader.i16
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r3
	add	r0, t1
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	r7, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r7]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	add	r6, 1
	add	t1, 1
	jnz	rax, .LBB19_65
	jmp	.LBB19_66
.LBB19_66:                              // %strlen.exit17
	mov	r3, r6
	sub	r3, r2
	mov	r1, -2147483648
	add	r3, 1
	mov	r0, r4
	call	__bit_xor
	mov	r7, rax
	mov	r0, r2
	call	__bit_xor
	jge	rax, r7, .LBB19_76
	jmp	.LBB19_67
.LBB19_67:
	mov	r7, r2
	add	r7, r3
	mov	r0, r7
	call	__bit_xor
	mov	t1, rax
	mov	r0, r4
	call	__bit_xor
	jge	rax, t1, .LBB19_76
	jmp	.LBB19_68
.LBB19_68:
	add	r4, r3
	mov	r0, r3
	call	__bit_xor
	mov	r0, -2147483644
	jl	rax, r0, .LBB19_73
	jmp	.LBB19_69
.LBB19_69:
	mov	r0, r7
	mov	r1, r4
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB19_74
	jmp	.LBB19_70
.LBB19_70:                              // %.preheader.i19.preheader
	mov	r4, 0
	sub	r4, r2
	mov	r7, r2
	add	r7, r6
	add	t2, r5
	add	t3, r5
	mov	r5, -2147483645
.LBB19_71:                              // %.preheader.i19
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r7
	add	r0, r4
	add	r0, -3
	mov	r0, [r0]
	mov	r1, t3
	add	r1, r6
	mov	[r1], r0
	add	r4, -4
	add	t2, -4
	mov	r3, r6
	add	r3, r4
	add	r3, 1
	mov	r1, -2147483648
	add	t3, -4
	mov	r0, r3
	call	__bit_xor
	jg	rax, r5, .LBB19_71
	jmp	.LBB19_72
.LBB19_72:                              // %.loopexit9.i20.loopexit
	add	r2, r3
	add	t2, r6
	mov	r4, t2
	mov	r7, r2
.LBB19_73:                              // %.loopexit9.i20
	jz	r3, .LBB19_87
	jmp	.LBB19_74
.LBB19_74:                              // %.preheader227
	add	r7, -1
	add	r4, -1
.LBB19_75:                              // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	add	r3, -1
	mov	r0, r7
	call	__bit_shr
	mov	r1, 3
	mov	r2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	r2, rax
	mov	r0, r4
	call	__bit_and
	mov	r1, -4
	mov	r5, rax
	call	__bit_and
	mov	r6, rax
	mov	t1, [r6]
	mov	r1, 3
	mov	r0, r5
	call	__bit_shl
	mov	r0, 255
	mov	r5, rax
	mov	r1, r5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t1, rax
	mov	r0, r2
	call	__bit_and
	mov	r0, rax
	mov	r1, r5
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	[r6], rax
	add	r7, -1
	add	r4, -1
	jz	r3, .LBB19_87
	jmp	.LBB19_75
.LBB19_76:
	mov	r0, r3
	call	__bit_xor
	mov	r0, -2147483644
	jl	rax, r0, .LBB19_84
	jmp	.LBB19_77
.LBB19_77:
	mov	r0, r4
	mov	r1, r2
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB19_85
	jmp	.LBB19_78
.LBB19_78:
	mov	r1, -2147483648
	mov	r0, r3
	call	__bit_xor
	mov	r0, -2147483632
	jl	rax, r0, .LBB19_80
	jmp	.LBB19_79
.LBB19_79:                              // %.preheader12.i.preheader
	add	r5, t4
	mov	r4, -2147483633
	mov	r0, r2
	jmp	.LBB19_82
.LBB19_80:                              // %.preheader237
	mov	r5, -2147483645
	jmp	.LBB19_83
.LBB19_81:
	add	r5, r2
	mov	r0, 3
	mov	r4, r5
	jg	r3, r0, .LBB19_80
	jmp	.LBB19_84
.LBB19_82:                              // %.preheader12.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, [r0]
	mov	r6, r0
	add	r6, r5
	mov	r7, r0
	add	r7, 4
	mov	[r6], r1
	mov	r1, [r7]
	mov	r7, r6
	add	r7, 4
	mov	[r7], r1
	mov	r1, r0
	add	r1, 8
	mov	r1, [r1]
	mov	r7, r6
	add	r7, 8
	add	r6, 12
	mov	[r7], r1
	add	r0, 12
	mov	r0, [r0]
	add	r2, 16
	add	r3, -16
	mov	r1, -2147483648
	mov	[r6], r0
	mov	r0, r3
	call	__bit_xor
	mov	r0, r2
	jg	rax, r4, .LBB19_82
	jmp	.LBB19_81
.LBB19_83:                              // =>This Inner Loop Header: Depth=1
	mov	r0, [r2]
	add	r2, 4
	mov	[r4], r0
	add	r3, -4
	add	r4, 4
	mov	r0, r3
	call	__bit_xor
	jg	rax, r5, .LBB19_83
	jmp	.LBB19_84
.LBB19_84:                              // %.loopexit11.i
	jz	r3, .LBB19_87
	jmp	.LBB19_85
.LBB19_85:                              // %.preheader232
	mov	r7, r2
	mov	t1, r4
.LBB19_86:                              // =>This Inner Loop Header: Depth=1
	add	r3, -1
	mov	r1, 2
	add	r7, 1
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r2, rax
	mov	r1, 3
	add	t1, 1
	mov	r0, r4
	call	__bit_and
	mov	r1, -4
	mov	r5, rax
	call	__bit_and
	mov	r4, rax
	mov	r6, [r4]
	mov	r1, 3
	mov	r0, r5
	call	__bit_shl
	mov	r0, 255
	mov	r5, rax
	mov	r1, r5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	r6, rax
	mov	r0, r2
	call	__bit_and
	mov	r0, rax
	mov	r1, r5
	call	__bit_shl
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	[r4], rax
	mov	r2, r7
	mov	r4, t1
	jnz	r3, .LBB19_86
	jmp	.LBB19_87
.LBB19_87:                              // %memmove.exit
	ret
// -- End function
// -- Begin function gcvt_fast
gcvt_fast:                              // @gcvt_fast
// %bb.0:
	mov	[rsp-1], x0
	mov	r4, r3
	mov	t2, r1
	mov	t1, r0
	jz	r4, .LBB20_69
	jmp	.LBB20_1
.LBB20_1:
	mov	r0, 0
	jg	r2, r0, .LBB20_3
	jmp	.LBB20_2
.LBB20_2:
	mov	r1, 3
	mov	r0, r4
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r3, rax
	mov	r5, [r3]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r0, 0
	mov	r5, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	jmp	.LBB20_69
.LBB20_3:
	mov	t6, r2
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
	mov	r7, rax
	mov	r0, t1
	mov	r1, t2
	mov	r2, t1
	mov	r3, t2
	call	__unorddf2
	jz	rax, .LBB20_5
	jmp	.LBB20_4
.LBB20_4:
	mov	r1, 3
	mov	r0, r4
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r3, rax
	mov	r5, [r3]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r0, 110
	mov	r5, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	r0, r4
	add	r0, 1
	mov	r1, 3
	mov	[r3], rax
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r3, rax
	mov	r5, [r3]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r0, 97
	mov	r5, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	r0, r4
	add	r0, 2
	mov	r1, 3
	mov	[r3], rax
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r3, rax
	mov	r5, [r3]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r0, 110
	mov	r5, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	r0, r4
	add	r0, 3
	mov	r1, 3
	mov	[r3], rax
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r3, rax
	mov	r5, [r3]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r0, 0
	mov	r5, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	jmp	.LBB20_69
.LBB20_5:
	mov	r1, 2147483647
	mov	r0, t2
	call	__bit_and
	mov	r2, -1
	mov	r3, 2146435071
	mov	t3, -1
	mov	r0, t1
	mov	r1, rax
	call	__gtdf2
	jl	rax, r5, .LBB20_9
	jmp	.LBB20_6
.LBB20_6:
	mov	r2, 0
	mov	r3, 0
	mov	r0, t1
	mov	r1, t2
	call	__ltdf2
	mov	r2, r4
	jg	rax, t3, .LBB20_8
	jmp	.LBB20_7
.LBB20_7:
	mov	r2, r4
	mov	r1, 3
	add	r2, 1
	mov	r0, r4
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	r5, rax
	mov	r6, [r5]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r0, 255
	mov	r3, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	r0, 45
	mov	r6, rax
	mov	r1, r3
	call	__bit_shl
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	[r5], rax
.LBB20_8:
	mov	r1, 3
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	r5, rax
	mov	r6, [r5]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r0, 255
	mov	r3, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	r0, 105
	mov	r6, rax
	mov	r1, r3
	call	__bit_shl
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	r0, r2
	add	r0, 1
	mov	r1, 3
	mov	[r5], rax
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	r5, rax
	mov	r6, [r5]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r0, 255
	mov	r3, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	r0, 110
	mov	r6, rax
	mov	r1, r3
	call	__bit_shl
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	r0, r2
	add	r0, 2
	mov	r1, 3
	mov	[r5], rax
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	r5, rax
	mov	r6, [r5]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r0, 255
	mov	r3, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	r0, 102
	mov	r6, rax
	mov	r1, r3
	call	__bit_shl
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	add	r2, 3
	mov	r1, 3
	mov	[r5], rax
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	r2, rax
	mov	r5, [r2]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r0, 255
	mov	r3, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r0, 0
	mov	r5, rax
	mov	r1, r3
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	[r2], rax
	jmp	.LBB20_69
.LBB20_9:
	mov	r2, 0
	mov	r3, 0
	mov	r0, t1
	mov	r1, t2
	call	__ltdf2
	mov	r6, r4
	jg	rax, t3, .LBB20_11
	jmp	.LBB20_10
.LBB20_10:
	mov	r6, r4
	mov	r1, 3
	add	r6, 1
	mov	r0, r4
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r3, rax
	mov	r5, [r3]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r0, 45
	mov	r5, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	r1, -2147483648
	mov	[r3], rax
	mov	r0, t2
	call	__bit_xor
	mov	t2, rax
.LBB20_11:
	mov	r2, 0
	mov	r3, 0
	mov	r5, 0
	mov	r0, t1
	mov	r1, t2
	call	__eqdf2
	jz	rax, .LBB20_14
	jmp	.LBB20_12
.LBB20_12:
	mov	r3, 1076101120
	mov	r0, t1
	mov	r1, t2
	call	__gedf2
	jl	rax, r5, .LBB20_15
	jmp	.LBB20_13
.LBB20_13:                              // %.preheader29.preheader
	mov	t3, 0
	jmp	.LBB20_17
.LBB20_14:
	mov	r1, 3
	mov	r0, r6
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r3, rax
	mov	r5, [r3]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	r5, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	add	r6, 1
	mov	r1, 3
	mov	[r3], rax
	mov	r0, r6
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r3, rax
	mov	r5, [r3]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r0, 0
	mov	r5, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	jmp	.LBB20_69
.LBB20_15:                              // %.loopexit30
	add	r7, 63
	mov	r3, 1072693248
	mov	t7, 0
	mov	r0, t1
	mov	r1, t2
	call	__ltdf2
	mov	r0, -1
	jg	rax, r0, .LBB20_18
	jmp	.LBB20_16
.LBB20_16:                              // %.preheader27.preheader
	mov	t3, 0
	jmp	.LBB20_19
.LBB20_17:                              // %.preheader29
                                        // =>This Inner Loop Header: Depth=1
	mov	r2, -1717986918
	mov	r3, 1069128089
	mov	r0, t1
	mov	r1, t2
	call	__muldf3
	mov	t1, rax
	mov	t2, t0
	mov	r2, 0
	mov	r3, 1076101120
	add	r5, 1
	mov	r0, t1
	mov	r1, t2
	call	__ltdf2
	jl	rax, t3, .LBB20_15
	jmp	.LBB20_17
.LBB20_18:                              // %.loopexit28
	mov	x0, r7
	add	x0, 1
	jmp	.LBB20_20
.LBB20_19:                              // %.preheader27
                                        // =>This Inner Loop Header: Depth=1
	mov	r2, 0
	mov	r3, 1076101120
	mov	r0, t1
	mov	r1, t2
	call	__muldf3
	mov	t1, rax
	mov	t2, t0
	mov	r3, 1072693248
	add	r5, -1
	mov	r0, t1
	mov	r1, t2
	call	__ltdf2
	jl	rax, t3, .LBB20_19
	jmp	.LBB20_18
.LBB20_20:                              // =>This Inner Loop Header: Depth=1
	mov	r0, t1
	mov	r1, t2
	call	__fixdfsi
	mov	r2, rax
	mov	r0, rsp
	mov	r3, r2
	add	r0, t7
	mov	r1, 3
	add	r3, 48
	call	__bit_and
	mov	r1, -4
	mov	t3, rax
	call	__bit_and
	mov	t4, rax
	mov	t5, [t4]
	mov	r1, 3
	mov	r0, t3
	call	__bit_shl
	mov	r1, 255
	mov	t3, rax
	mov	r0, r3
	call	__bit_and
	mov	r0, 255
	mov	r3, rax
	mov	r1, t3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t5
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t5, rax
	mov	r0, r3
	call	__bit_and
	mov	r0, rax
	mov	r1, t3
	call	__bit_shl
	mov	r0, t5
	mov	r1, rax
	call	__bit_or
	mov	[t4], rax
	mov	r0, r2
	call	__floatsidf
	mov	r3, t0
	mov	r0, t1
	mov	r1, t2
	mov	r2, rax
	call	__subdf3
	mov	r2, 0
	mov	r3, 1076101120
	mov	r1, t0
	mov	r0, rax
	call	__muldf3
	add	t7, 1
	mov	t1, rax
	mov	t2, t0
	jne	x0, t7, .LBB20_20
	jmp	.LBB20_21
.LBB20_21:
	mov	r0, rsp
	add	r0, r7
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	r2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 24
	mov	r0, rax
	call	__bit_shl
	mov	r0, rax
	call	__bit_sar
	mov	r0, 53
	jl	rax, r0, .LBB20_29
	jmp	.LBB20_22
.LBB20_22:                              // %.preheader26.preheader
	mov	t2, r7
	add	t2, -1
	mov	t3, 57
	mov	t4, 1
.LBB20_23:                              // %.preheader26
                                        // =>This Inner Loop Header: Depth=1
	mov	r2, rsp
	add	r2, t2
	mov	r1, 2
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	r3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jne	rax, t3, .LBB20_26
	jmp	.LBB20_24
.LBB20_24:                              //   in Loop: Header=BB20_23 Depth=1
	mov	r1, 3
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	r2, rax
	mov	t1, [r2]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r0, 255
	mov	r3, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	t1, rax
	mov	r1, r3
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	r0, t2
	add	t2, -1
	add	r0, 1
	mov	[r2], rax
	jg	r0, t4, .LBB20_23
	jmp	.LBB20_25
.LBB20_25:                              // %.preheader25.preheader
	mov	t3, 1
	mov	t4, r7
	jmp	.LBB20_27
.LBB20_26:
	mov	r1, 3
	add	rax, 1
	mov	r0, r2
	mov	r3, rax
	call	__bit_and
	mov	r1, -4
	mov	t1, rax
	call	__bit_and
	mov	r2, rax
	mov	t2, [r2]
	mov	r1, 3
	mov	r0, t1
	call	__bit_shl
	mov	r1, 255
	mov	t1, rax
	mov	r0, r3
	call	__bit_and
	mov	r0, 255
	mov	r3, rax
	mov	r1, t1
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t2
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t2, rax
	mov	r0, r3
	call	__bit_and
	mov	r0, rax
	mov	r1, t1
	call	__bit_shl
	mov	r0, t2
	mov	r1, rax
	call	__bit_or
	mov	[r2], rax
	jmp	.LBB20_29
.LBB20_27:                              // %.preheader25
                                        // =>This Inner Loop Header: Depth=1
	mov	r2, rsp
	mov	t5, t4
	add	r2, t5
	mov	r0, r2
	add	r0, -1
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	r3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	r3, rax
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	t1, rax
	call	__bit_and
	mov	r2, rax
	mov	t2, [r2]
	mov	r1, 3
	mov	r0, t1
	call	__bit_shl
	mov	r0, 255
	mov	t1, rax
	mov	r1, t1
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t2
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t2, rax
	mov	r0, r3
	call	__bit_and
	mov	r0, rax
	mov	r1, t1
	call	__bit_shl
	mov	r0, t2
	mov	r1, rax
	call	__bit_or
	mov	[r2], rax
	add	t4, -1
	jg	t5, t3, .LBB20_27
	jmp	.LBB20_28
.LBB20_28:
	mov	r1, 3
	mov	r0, rsp
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r3, rax
	mov	t1, [r3]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r0, 49
	mov	t1, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	add	r5, 1
.LBB20_29:
	mov	r0, 1
	mov	t3, r7
	je	t6, r0, .LBB20_35
	jmp	.LBB20_30
.LBB20_30:                              // %.preheader23.preheader
	mov	t4, r7
	add	t4, -1
	mov	r3, 2
	mov	t1, 48
	mov	t3, 1
.LBB20_31:                              // %.preheader23
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, rsp
	add	r0, t4
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	r2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jne	rax, t1, .LBB20_33
	jmp	.LBB20_32
.LBB20_32:                              //   in Loop: Header=BB20_31 Depth=1
	mov	r0, t4
	add	t4, -1
	add	r0, 1
	jg	r0, r3, .LBB20_31
	jmp	.LBB20_35
.LBB20_33:
	mov	t3, t4
	mov	r0, -4
	add	t3, 1
	jl	r5, r0, .LBB20_38
	jmp	.LBB20_34
.LBB20_34:
	jge	r5, r7, .LBB20_38
	jmp	.LBB20_52
.LBB20_35:                              // %.loopexit24
	mov	r0, -4
	jl	r5, r0, .LBB20_37
	jmp	.LBB20_36
.LBB20_36:                              // %.loopexit24
	jl	r5, r7, .LBB20_52
	jmp	.LBB20_37
.LBB20_37:
	mov	r1, 2
	mov	r0, rsp
	call	__bit_shr
	mov	r1, 3
	mov	r2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r2, rax
	mov	t1, r6
	mov	r1, 3
	add	t1, 1
	mov	r0, r6
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	r6, rax
	mov	r7, [r6]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r0, 255
	mov	r3, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	r7, rax
	mov	r0, r2
	call	__bit_and
	mov	r0, rax
	mov	r1, r3
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	[r6], rax
	mov	r6, t1
	jmp	.LBB20_42
.LBB20_38:
	mov	r1, 2
	mov	t5, 2
	mov	r0, rsp
	call	__bit_shr
	mov	r1, 3
	mov	r2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r2, rax
	mov	r3, r6
	mov	r1, 3
	add	r3, 1
	mov	r0, r6
	call	__bit_and
	mov	r1, -4
	mov	r7, rax
	call	__bit_and
	mov	t1, rax
	mov	t2, [t1]
	mov	r1, 3
	mov	r0, r7
	call	__bit_shl
	mov	r0, 255
	mov	r7, rax
	mov	r1, r7
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t2
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t2, rax
	mov	r0, r2
	call	__bit_and
	mov	r0, rax
	mov	r1, r7
	call	__bit_shl
	mov	r0, t2
	mov	r1, rax
	call	__bit_or
	mov	[t1], rax
	mov	r1, 3
	add	r6, 2
	mov	r0, r3
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r3, rax
	mov	r7, [r3]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r0, 46
	mov	r7, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	jl	t3, t5, .LBB20_42
	jmp	.LBB20_39
.LBB20_39:                              // %.preheader21.preheader
	mov	t3, rsp
	mov	t2, 0
	add	t3, 1
.LBB20_40:                              // %.preheader21
                                        // =>This Inner Loop Header: Depth=1
	mov	r2, r6
	mov	r0, t3
	add	r0, t2
	mov	r1, 2
	add	r2, t2
	call	__bit_shr
	mov	r1, 3
	mov	r3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	r3, rax
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	r7, rax
	call	__bit_and
	mov	r2, rax
	mov	t1, [r2]
	mov	r1, 3
	mov	r0, r7
	call	__bit_shl
	mov	r0, 255
	mov	r7, rax
	mov	r1, r7
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t1, rax
	mov	r0, r3
	call	__bit_and
	mov	r0, rax
	mov	r1, r7
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	add	t2, 1
	mov	[r2], rax
	jne	t4, t2, .LBB20_40
	jmp	.LBB20_41
.LBB20_41:                              // %.loopexit22.loopexit
	add	r6, t2
.LBB20_42:                              // %.loopexit22
	mov	r2, r6
	mov	r1, 3
	add	r2, 1
	mov	r0, r6
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	r7, rax
	mov	t1, [r7]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r0, 255
	mov	r3, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	t2, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r0, 101
	mov	t1, rax
	mov	r1, r3
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	r1, -2147483648
	mov	[r7], rax
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
	mov	r3, rax
	add	r3, 43
	jg	r5, t2, .LBB20_44
	jmp	.LBB20_43
.LBB20_43:
	mov	r0, 0
	sub	r0, r5
	mov	r5, r0
.LBB20_44:
	mov	r1, 3
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	r7, rax
	call	__bit_and
	mov	r2, rax
	mov	t1, [r2]
	mov	r1, 3
	mov	r0, r7
	call	__bit_shl
	mov	r1, 255
	mov	r7, rax
	mov	r0, r3
	call	__bit_and
	mov	r0, 255
	mov	r3, rax
	mov	r1, r7
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t1, rax
	mov	r0, r3
	call	__bit_and
	mov	r0, rax
	mov	r1, r7
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	[r2], rax
	mov	r2, r6
	mov	r0, 10
	add	r2, 2
	jl	r5, r0, .LBB20_46
	jmp	.LBB20_45
.LBB20_45:                              // %.preheader.preheader
	mov	t5, 0
	mov	t6, 99
	mov	r7, r5
	jmp	.LBB20_47
.LBB20_46:
	mov	r1, 3
	add	r6, 3
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	r2, rax
	mov	r7, [r2]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r0, 255
	mov	r3, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	r7, rax
	mov	r1, r3
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	[r2], rax
	mov	r3, r6
	jmp	.LBB20_51
.LBB20_47:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r3, r7
	mov	t1, r6
	add	t1, t5
	mov	r1, 10
	add	t1, 2
	mov	r0, r3
	call	__udivsi3
	mov	r7, rax
	mov	r0, r7
	call	__umodsi3
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	r1, 3
	mov	t2, rax
	mov	r0, t1
	call	__bit_and
	mov	r1, -4
	mov	t3, rax
	call	__bit_and
	mov	t1, rax
	mov	t4, [t1]
	mov	r1, 3
	mov	r0, t3
	call	__bit_shl
	mov	r0, 255
	mov	t3, rax
	mov	r1, t3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t4
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t4, rax
	mov	r0, t2
	call	__bit_and
	mov	r0, rax
	mov	r1, t3
	call	__bit_shl
	mov	r0, t4
	mov	r1, rax
	call	__bit_or
	mov	[t1], rax
	add	t5, 1
	jg	r3, t6, .LBB20_47
	jmp	.LBB20_48
.LBB20_48:
	add	r6, t5
	add	t5, 1
	mov	r3, r6
	mov	r0, 3
	add	r3, 2
	jl	t5, r0, .LBB20_51
	jmp	.LBB20_49
.LBB20_49:
	mov	r7, r2
	mov	t6, r6
.LBB20_50:                              // =>This Inner Loop Header: Depth=1
	mov	t1, r6
	mov	r1, 2
	add	t1, 1
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	t2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 2
	mov	t2, rax
	mov	r0, t1
	call	__bit_shr
	mov	r1, 3
	mov	t3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t3, rax
	mov	r1, 3
	add	r7, 1
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	t4, rax
	call	__bit_and
	mov	r2, rax
	mov	t5, [r2]
	mov	r1, 3
	mov	r0, t4
	call	__bit_shl
	mov	r0, 255
	mov	t4, rax
	mov	r1, t4
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t5
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t5, rax
	mov	r0, t3
	call	__bit_and
	mov	r0, rax
	mov	r1, t4
	call	__bit_shl
	mov	r0, t5
	mov	r1, rax
	call	__bit_or
	mov	r1, 3
	mov	[r2], rax
	mov	r0, t1
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	t1, rax
	mov	t3, [t1]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t3
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t3, rax
	mov	r0, t2
	call	__bit_and
	mov	r0, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, t3
	mov	r1, rax
	call	__bit_or
	mov	[t1], rax
	mov	r1, -2147483648
	add	t6, -1
	mov	r0, r6
	call	__bit_xor
	mov	t1, rax
	mov	r0, r7
	call	__bit_xor
	mov	r6, t6
	mov	r2, r7
	jl	rax, t1, .LBB20_50
	jmp	.LBB20_51
.LBB20_51:                              // %.loopexit
	mov	r1, 10
	mov	r0, r5
	call	__umodsi3
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	r5, rax
	mov	r2, r3
	mov	r1, 3
	add	r2, 1
	mov	r0, r3
	call	__bit_and
	mov	r1, -4
	mov	r6, rax
	call	__bit_and
	mov	r3, rax
	mov	r7, [r3]
	mov	r1, 3
	mov	r0, r6
	call	__bit_shl
	mov	r0, 255
	mov	r6, rax
	mov	r1, r6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	r7, rax
	mov	r0, r5
	call	__bit_and
	mov	r0, rax
	mov	r1, r6
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	jmp	.LBB20_68
.LBB20_52:
	mov	r0, 0
	jl	r5, r0, .LBB20_60
	jmp	.LBB20_53
.LBB20_53:                              // %.preheader100.preheader
.LBB20_54:                              // %.preheader100
                                        // =>This Inner Loop Header: Depth=1
	mov	t2, r0
	mov	r3, 48
	jge	t2, t3, .LBB20_56
	jmp	.LBB20_55
.LBB20_55:                              //   in Loop: Header=BB20_54 Depth=1
	mov	r0, rsp
	add	r0, t2
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	r2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r3, rax
.LBB20_56:                              //   in Loop: Header=BB20_54 Depth=1
	mov	r2, r6
	mov	r1, 3
	add	r2, 1
	mov	r0, r6
	call	__bit_and
	mov	r1, -4
	mov	r7, rax
	call	__bit_and
	mov	r6, rax
	mov	t1, [r6]
	mov	r1, 3
	mov	r0, r7
	call	__bit_shl
	mov	r1, 255
	mov	r7, rax
	mov	r0, r3
	call	__bit_and
	mov	r0, 255
	mov	r3, rax
	mov	r1, r7
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t1, rax
	mov	r0, r3
	call	__bit_and
	mov	r0, rax
	mov	r1, r7
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	[r6], rax
	mov	r0, t2
	add	r0, 1
	mov	r6, r2
	jne	t2, r5, .LBB20_54
	jmp	.LBB20_57
.LBB20_57:
	mov	r0, r5
	add	r0, 1
	jle	t3, r0, .LBB20_68
	jmp	.LBB20_58
.LBB20_58:
	mov	r1, 3
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	r6, rax
	mov	r7, [r6]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r0, 255
	mov	r3, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r0, 46
	mov	r7, rax
	mov	r1, r3
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	t1, rsp
	mov	[r6], rax
	sub	t3, r5
	add	t1, r5
	mov	t2, 1
.LBB20_59:                              // =>This Inner Loop Header: Depth=1
	mov	r3, r2
	mov	r0, t1
	add	r0, t2
	mov	r1, 2
	add	r3, t2
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	r5, rax
	mov	r0, r3
	call	__bit_and
	mov	r1, -4
	mov	r6, rax
	call	__bit_and
	mov	r3, rax
	mov	r7, [r3]
	mov	r1, 3
	mov	r0, r6
	call	__bit_shl
	mov	r0, 255
	mov	r6, rax
	mov	r1, r6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	r7, rax
	mov	r0, r5
	call	__bit_and
	mov	r0, rax
	mov	r1, r6
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	add	t2, 1
	mov	[r3], rax
	je	t3, t2, .LBB20_67
	jmp	.LBB20_59
.LBB20_60:
	mov	r3, r6
	mov	r1, 3
	add	r3, 1
	mov	r0, r6
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r7, rax
	mov	t1, [r7]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	t2, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	t1, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	[r7], rax
	mov	r2, r6
	mov	r1, 3
	add	r2, 2
	mov	r0, r3
	call	__bit_and
	mov	r1, -4
	mov	r7, rax
	call	__bit_and
	mov	r3, rax
	mov	t1, [r3]
	mov	r1, 3
	mov	r0, r7
	call	__bit_shl
	mov	r0, 255
	mov	r7, rax
	mov	r1, r7
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r0, 46
	mov	t1, rax
	mov	r1, r7
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	je	r5, t2, .LBB20_63
	jmp	.LBB20_61
.LBB20_61:                              // %.preheader19.preheader
	mov	t1, 2
	jmp	.LBB20_65
.LBB20_62:                              // %.loopexit20.loopexit
	add	r6, t1
	mov	r2, r6
.LBB20_63:                              // %.loopexit20
	mov	r0, 1
	jl	t3, r0, .LBB20_68
	jmp	.LBB20_64
.LBB20_64:                              // %.preheader17.preheader
	mov	r3, rsp
	mov	r5, r2
	jmp	.LBB20_66
.LBB20_65:                              // %.preheader19
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r6
	add	r0, t1
	mov	r1, 3
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r3, rax
	mov	r7, [r3]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	r7, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	r0, t1
	add	r0, -1
	mov	[r3], rax
	mov	r1, r5
	call	__bit_xor
	add	t1, 1
	je	rax, t2, .LBB20_62
	jmp	.LBB20_65
.LBB20_66:                              // %.preheader17
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	mov	r0, r3
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r6, rax
	mov	r1, 3
	add	r2, 1
	mov	r0, r5
	call	__bit_and
	mov	r1, -4
	mov	r7, rax
	call	__bit_and
	mov	r5, rax
	mov	t1, [r5]
	mov	r1, 3
	mov	r0, r7
	call	__bit_shl
	mov	r0, 255
	mov	r7, rax
	mov	r1, r7
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t1, rax
	mov	r0, r6
	call	__bit_and
	mov	r0, rax
	mov	r1, r7
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	[r5], rax
	add	t3, -1
	add	r3, 1
	mov	r5, r2
	jz	t3, .LBB20_68
	jmp	.LBB20_66
.LBB20_67:                              // %.loopexit16.loopexit
	add	r2, t2
.LBB20_68:                              // %.loopexit16
	mov	r1, 3
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	r2, rax
	mov	r5, [r2]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r0, 255
	mov	r3, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r0, 0
	mov	r5, rax
	mov	r1, r3
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	[r2], rax
.LBB20_69:
	mov	rax, r4
	mov	x0, [rsp-1]
	ret
// -- End function
// -- Begin function itoa
itoa:                                   // @itoa
// %bb.0:
	mov	r5, r2
	mov	r2, r1
	mov	r3, r5
	add	r3, -37
	mov	r1, -2147483648
	mov	r4, r0
	mov	r0, r3
	call	__bit_xor
	mov	r0, 2147483612
	jg	rax, r0, .LBB21_2
	jmp	.LBB21_1
.LBB21_1:
	mov	r1, 3
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	r4, rax
	mov	r2, [r4]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r0, 255
	mov	r3, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r2
	mov	r1, rax
	call	__bit_and
	mov	r5, rax
	mov	r0, 0
	mov	r2, 0
	mov	r1, r3
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	[r4], rax
	jmp	.LBB21_20
.LBB21_2:
	mov	r0, -1
	jg	r4, r0, .LBB21_5
	jmp	.LBB21_3
.LBB21_3:
	mov	r0, 10
	jne	r5, r0, .LBB21_5
	jmp	.LBB21_4
.LBB21_4:
	mov	r1, 3
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	r5, rax
	mov	r6, [r5]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r0, 255
	mov	r3, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	r0, 45
	mov	r6, rax
	mov	r1, r3
	call	__bit_shl
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	[r5], rax
	mov	r0, 0
	sub	r0, r4
	mov	r3, 1
	mov	r4, r0
	jmp	.LBB21_7
.LBB21_5:
	mov	r0, 10
	mov	r3, 0
	je	r5, r0, .LBB21_7
	jmp	.LBB21_6
.LBB21_6:                               // %.preheader8.preheader
	mov	t3, 0
	mov	t4, mcasm_static_81a1c06102d7a90b5192a628c3bc5112
	jmp	.LBB21_16
.LBB21_7:
	mov	r5, rsp
	add	r5, 15
	mov	r1, 3
	mov	r0, r5
	call	__bit_and
	mov	r1, -4
	mov	r6, rax
	call	__bit_and
	mov	r7, rax
	mov	t1, [r7]
	mov	r1, 3
	mov	r0, r6
	call	__bit_shl
	mov	r0, 255
	mov	r6, rax
	mov	r1, r6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r0, 0
	mov	t1, rax
	mov	r1, r6
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	r1, -2147483648
	mov	[r7], rax
	mov	r0, r4
	call	__bit_xor
	mov	r0, -2147483548
	jl	rax, r0, .LBB21_10
	jmp	.LBB21_8
.LBB21_8:                               // %.preheader.preheader
	mov	t5, mcasm_static_b7b83498ebf29d53a2dd2a18a0a51c3a
	mov	t6, -2147473649
	mov	r6, r4
.LBB21_9:                               // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 100
	mov	r0, r6
	call	__udivsi3
	mov	r4, rax
	mov	r0, r4
	mul	r0, 2147483548
	add	r0, r6
	mov	r1, 1
	call	__bit_shl
	mov	r7, rax
	add	r7, t5
	mov	r0, r7
	add	r0, 1
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	t1, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t1]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r0, r5
	add	r0, -1
	mov	r1, 3
	mov	t1, rax
	call	__bit_and
	mov	r1, -4
	mov	t2, rax
	call	__bit_and
	mov	t3, rax
	mov	t4, [t3]
	mov	r1, 3
	mov	r0, t2
	call	__bit_shl
	mov	r0, 255
	mov	t2, rax
	mov	r1, t2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t4
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t4, rax
	mov	r0, t1
	call	__bit_and
	mov	r0, rax
	mov	r1, t2
	call	__bit_shl
	mov	r0, t4
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	[t3], rax
	mov	r0, r7
	call	__bit_shr
	mov	r1, 3
	mov	t1, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t1]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	add	r5, -2
	mov	r1, 3
	mov	r7, rax
	mov	r0, r5
	call	__bit_and
	mov	r1, -4
	mov	t1, rax
	call	__bit_and
	mov	t2, rax
	mov	t3, [t2]
	mov	r1, 3
	mov	r0, t1
	call	__bit_shl
	mov	r0, 255
	mov	t1, rax
	mov	r1, t1
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t3
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t3, rax
	mov	r0, r7
	call	__bit_and
	mov	r0, rax
	mov	r1, t1
	call	__bit_shl
	mov	r0, t3
	mov	r1, rax
	call	__bit_or
	mov	r1, -2147483648
	mov	[t2], rax
	mov	r0, r6
	call	__bit_xor
	mov	r6, r4
	jg	rax, t6, .LBB21_9
	jmp	.LBB21_10
.LBB21_10:                              // %.loopexit5
	mov	r0, 9
	add	r3, r2
	jg	r4, r0, .LBB21_12
	jmp	.LBB21_11
.LBB21_11:
	mov	r1, 48
	mov	r0, r4
	call	__bit_or
	mov	r0, r5
	add	r0, -1
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r1, -4
	mov	r4, rax
	call	__bit_and
	mov	r7, rax
	mov	t1, [r7]
	mov	r1, 3
	mov	r0, r4
	call	__bit_shl
	mov	r1, 255
	mov	r4, rax
	mov	r0, r6
	call	__bit_and
	mov	r0, 255
	mov	t2, rax
	mov	r1, r4
	call	__bit_shl
	mov	r1, -1
	mov	t3, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t1, rax
	mov	r0, t2
	call	__bit_and
	mov	r0, rax
	mov	r1, r4
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	[r7], rax
	jmp	.LBB21_13
.LBB21_12:
	mov	r7, r5
	mov	r1, 1
	add	r7, -1
	mov	r0, r4
	call	__bit_shl
	mov	r6, mcasm_static_b7b83498ebf29d53a2dd2a18a0a51c3a
	add	r6, rax
	mov	r0, r6
	add	r0, 1
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	t1, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t1]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	t1, rax
	mov	r0, r7
	call	__bit_and
	mov	r1, -4
	mov	t2, rax
	call	__bit_and
	mov	r7, rax
	mov	t3, [r7]
	mov	r1, 3
	mov	r0, t2
	call	__bit_shl
	mov	r0, 255
	mov	t2, rax
	mov	r1, t2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t3
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t3, rax
	mov	r0, t1
	call	__bit_and
	mov	r0, rax
	mov	r1, t2
	call	__bit_shl
	mov	r0, t3
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	[r7], rax
	mov	r0, r6
	call	__bit_shr
	mov	r1, 3
	mov	r7, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r7]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r0, r5
	add	r0, -2
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r1, -4
	mov	r7, rax
	call	__bit_and
	mov	t1, rax
	mov	t2, [t1]
	mov	r1, 3
	mov	r0, r7
	call	__bit_shl
	mov	r0, 255
	mov	r7, rax
	mov	r1, r7
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t2
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t2, rax
	mov	r0, r6
	call	__bit_and
	mov	r0, rax
	mov	r1, r7
	call	__bit_shl
	mov	r0, t2
	mov	r1, rax
	call	__bit_or
	mov	[t1], rax
	mov	t3, -2
	mov	r0, 100
	mov	t1, 0
	je	r4, r0, .LBB21_15
	jmp	.LBB21_13
.LBB21_13:
	add	t3, r5
	add	t3, 1
	mov	t1, 0
.LBB21_14:                              // =>This Inner Loop Header: Depth=1
	mov	r0, r3
	add	r0, t1
	mov	r1, 3
	call	__bit_and
	mov	r1, -4
	mov	r4, rax
	call	__bit_and
	mov	r5, rax
	mov	r7, [r5]
	mov	r1, 3
	mov	r0, r4
	call	__bit_shl
	mov	r1, 255
	mov	r4, rax
	mov	r0, r6
	call	__bit_and
	mov	r0, 255
	mov	r6, rax
	mov	r1, r4
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	r7, rax
	mov	r0, r6
	call	__bit_and
	mov	r0, rax
	mov	r1, r4
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	[r5], rax
	mov	r0, t3
	add	r0, t1
	mov	r1, 2
	add	t1, 1
	call	__bit_shr
	mov	r1, 3
	mov	r4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r6, rax
	jnz	r6, .LBB21_14
	jmp	.LBB21_15
.LBB21_15:                              // %.loopexit
	add	r3, t1
	mov	r1, 3
	mov	r0, r3
	call	__bit_and
	mov	r1, -4
	mov	r4, rax
	call	__bit_and
	mov	r3, rax
	mov	r5, [r3]
	mov	r1, 3
	mov	r0, r4
	call	__bit_shl
	mov	r0, 255
	mov	r4, rax
	mov	r1, r4
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r0, 0
	mov	r5, rax
	mov	r1, r4
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	jmp	.LBB21_20
.LBB21_16:                              // %.preheader8
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r4
	mov	r1, r5
	call	__udivsi3
	mov	r3, rax
	mov	r1, r3
	mul	r1, r5
	sub	r0, r1
	add	r0, t4
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r6, rax
	mov	r0, r2
	add	r0, t3
	mov	r1, 3
	add	t3, 1
	call	__bit_and
	mov	r1, -4
	mov	r7, rax
	call	__bit_and
	mov	t1, rax
	mov	t2, [t1]
	mov	r1, 3
	mov	r0, r7
	call	__bit_shl
	mov	r0, 255
	mov	r7, rax
	mov	r1, r7
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t2
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t2, rax
	mov	r0, r6
	call	__bit_and
	mov	r0, rax
	mov	r1, r7
	call	__bit_shl
	mov	r0, t2
	mov	r1, rax
	call	__bit_or
	mov	r1, -2147483648
	mov	[t1], rax
	mov	r0, r4
	call	__bit_xor
	mov	r6, rax
	mov	r0, r5
	call	__bit_xor
	mov	r4, r3
	jle	rax, r6, .LBB21_16
	jmp	.LBB21_17
.LBB21_17:
	mov	r0, r2
	add	r0, t3
	mov	r1, 3
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	r4, rax
	mov	r5, [r4]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r0, 255
	mov	r3, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r5, rax
	mov	r0, 0
	mov	t2, 0
	mov	r1, r3
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	r0, 1
	mov	[r4], rax
	je	t3, r0, .LBB21_20
	jmp	.LBB21_18
.LBB21_18:                              // %.preheader6.preheader
	add	t3, -1
.LBB21_19:                              // %.preheader6
                                        // =>This Inner Loop Header: Depth=1
	mov	r5, r2
	add	r5, t2
	mov	r1, 2
	mov	r0, r5
	call	__bit_shr
	mov	r1, 3
	mov	r3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r4, r2
	add	r4, t3
	mov	r1, 2
	mov	r3, rax
	mov	r0, r4
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	r6, rax
	mov	r0, r5
	call	__bit_and
	mov	r1, -4
	mov	r7, rax
	call	__bit_and
	mov	r5, rax
	mov	t1, [r5]
	mov	r1, 3
	mov	r0, r7
	call	__bit_shl
	mov	r0, 255
	mov	r7, rax
	mov	r1, r7
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t1, rax
	mov	r0, r6
	call	__bit_and
	mov	r0, rax
	mov	r1, r7
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	r1, 3
	mov	[r5], rax
	mov	r0, r4
	call	__bit_and
	mov	r1, -4
	mov	r5, rax
	call	__bit_and
	mov	r4, rax
	mov	r6, [r4]
	mov	r1, 3
	mov	r0, r5
	call	__bit_shl
	mov	r0, 255
	mov	r5, rax
	mov	r1, r5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	r6, rax
	mov	r0, r3
	call	__bit_and
	mov	r0, rax
	mov	r1, r5
	call	__bit_shl
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	add	t2, 1
	add	t3, -1
	mov	[r4], rax
	jl	t2, t3, .LBB21_19
	jmp	.LBB21_20
.LBB21_20:                              // %.loopexit7
	mov	rax, r2
	ret
// -- End function
// -- Begin function labs
labs:                                   // @labs
// %bb.0:
	mov	r1, -1
	mov	rax, r0
	jg	rax, r1, .LBB22_2
	jmp	.LBB22_1
.LBB22_1:
	mov	r0, 0
	sub	r0, rax
	mov	rax, r0
.LBB22_2:
	ret
// -- End function
// -- Begin function malloc
malloc:                                 // @malloc
// %bb.0:
	mov	r1, 16384
	mov	r2, [r1]
	mov	r3, 1296125004
	je	r2, r3, .LBB23_2
	jmp	.LBB23_1
.LBB23_1:
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
	jmp	.LBB23_17
.LBB23_2:
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
	jz	t2, .LBB23_17
	jmp	.LBB23_3
.LBB23_3:                               // %.preheader.preheader
	mov	r0, 0
.LBB23_4:                               // %.preheader
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
	jle	rax, r6, .LBB23_12
	jmp	.LBB23_5
.LBB23_5:
	add	r4, 3
	mov	r0, r4
	call	__bit_xor
	mov	r4, rax
	mov	r0, r5
	call	__bit_xor
	jge	rax, r4, .LBB23_9
	jmp	.LBB23_6
.LBB23_6:
	jnz	r3, .LBB23_8
	jmp	.LBB23_7
.LBB23_7:
	mov	r0, 16386
	mov	[r0], t2
	mov	r6, r7
	jmp	.LBB23_20
.LBB23_8:
	add	r3, 1
	mov	[r3], t2
	mov	r6, r7
	jmp	.LBB23_20
.LBB23_9:
	mov	r0, t1
	add	r0, r2
	sub	r5, r2
	mov	[r0], r5
	mov	r1, r0
	add	r1, 1
	mov	[r1], t2
	mov	[t1], r2
	jnz	r3, .LBB23_11
	jmp	.LBB23_10
.LBB23_10:
	mov	r1, 16386
	mov	[r1], r0
	mov	r6, r7
	jmp	.LBB23_20
.LBB23_11:
	add	r3, 1
	mov	[r3], r0
	mov	r6, r7
	jmp	.LBB23_20
.LBB23_12:                              //   in Loop: Header=BB23_4 Depth=1
	mov	r0, t1
	jnz	t2, .LBB23_4
	jmp	.LBB23_13
.LBB23_13:
	mov	r0, 16385
	mov	t2, [r0]
	mov	r0, r5
	add	r0, t1
	jne	t2, r0, .LBB23_17
	jmp	.LBB23_14
.LBB23_14:
	mov	r0, t2
	add	r0, -8388609
	mov	r6, 0
	call	__bit_xor
	mov	r0, 2139111426
	jl	rax, r0, .LBB23_20
	jmp	.LBB23_15
.LBB23_15:
	mov	r4, r2
	mov	r0, 8388608
	sub	r0, t2
	sub	r4, r5
	call	__bit_xor
	mov	r5, rax
	mov	r0, r4
	call	__bit_xor
	jg	rax, r5, .LBB23_20
	jmp	.LBB23_16
.LBB23_16:
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
	jmp	.LBB23_20
.LBB23_17:
	mov	r0, 16385
	mov	r3, [r0]
	mov	r0, r3
	add	r0, -8388609
	mov	r1, -2147483648
	mov	r6, 0
	call	__bit_xor
	mov	r0, 2139111426
	jl	rax, r0, .LBB23_20
	jmp	.LBB23_18
.LBB23_18:
	mov	r0, 8388608
	sub	r0, r3
	jge	r4, r0, .LBB23_20
	jmp	.LBB23_19
.LBB23_19:
	mov	r0, r3
	add	r0, r2
	mov	r1, 16385
	mov	[r1], r0
	mov	[r3], r2
	add	r3, 1
	mov	r6, r3
.LBB23_20:
	mov	rax, r6
	ret
// -- End function
// -- Begin function free
free:                                   // @free
// %bb.0:
	mov	r3, r0
	jz	r3, .LBB24_18
	jmp	.LBB24_1
.LBB24_1:
	mov	r0, 16384
	mov	r1, [r0]
	mov	r2, 1296125004
	je	r1, r2, .LBB24_3
	jmp	.LBB24_2
.LBB24_2:
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
	jmp	.LBB24_8
.LBB24_3:
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
	jz	r2, .LBB24_8
	jmp	.LBB24_4
.LBB24_4:
	jge	r2, r4, .LBB24_8
	jmp	.LBB24_5
.LBB24_5:                               // %.preheader.preheader
.LBB24_6:                               // %.preheader
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
	jz	r2, .LBB24_8
	jmp	.LBB24_7
.LBB24_7:                               // %.preheader
                                        //   in Loop: Header=BB24_6 Depth=1
	jl	r2, r4, .LBB24_6
	jmp	.LBB24_8
.LBB24_8:                               // %.loopexit
	jne	r2, r4, .LBB24_10
	jmp	.LBB24_9
.LBB24_9:
	call	abort
.LBB24_10:
	mov	r0, 16386
	jz	r6, .LBB24_14
	jmp	.LBB24_11
.LBB24_11:
	mov	r0, [r6]
	mov	r1, r0
	add	r1, r6
	jne	r1, r4, .LBB24_13
	jmp	.LBB24_12
.LBB24_12:
	add	r0, r5
	mov	[r6], r0
	mov	r4, r6
	jmp	.LBB24_15
.LBB24_13:
	add	r6, 1
	mov	r0, r6
.LBB24_14:
	mov	[r0], r4
	mov	[r3], r2
.LBB24_15:
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB24_18
	jmp	.LBB24_16
.LBB24_16:
	mov	r0, [r4]
	mov	r1, r0
	add	r1, r4
	jne	r1, r2, .LBB24_18
	jmp	.LBB24_17
.LBB24_17:
	add	r0, [r2]
	mov	[r4], r0
	add	r2, 1
	mov	r0, [r2]
	add	r4, 1
	mov	[r4], r0
.LBB24_18:
	ret
// -- End function
// -- Begin function realloc
realloc:                                // @realloc
// %bb.0:
	mov	[rsp-1], x0
	mov	[rsp-2], x1
	mov	[rsp-3], x2
	mov	r2, r0
	jnz	r2, .LBB25_2
	jmp	.LBB25_1
.LBB25_1:
	mov	r0, r1
	call	malloc
	jmp	.LBB25_92
.LBB25_2:
	mov	r0, 16384
	mov	r0, [r0]
	jnz	r1, .LBB25_20
	jmp	.LBB25_3
.LBB25_3:
	mov	r1, 1296125004
	je	r0, r1, .LBB25_5
	jmp	.LBB25_4
.LBB25_4:
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
	jmp	.LBB25_10
.LBB25_5:
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
	jz	r3, .LBB25_10
	jmp	.LBB25_6
.LBB25_6:
	jge	r3, r4, .LBB25_10
	jmp	.LBB25_7
.LBB25_7:                               // %.preheader.preheader
.LBB25_8:                               // %.preheader
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
	jz	r3, .LBB25_10
	jmp	.LBB25_9
.LBB25_9:                               // %.preheader
                                        //   in Loop: Header=BB25_8 Depth=1
	jl	r3, r4, .LBB25_8
	jmp	.LBB25_10
.LBB25_10:                              // %.loopexit
	jne	r3, r4, .LBB25_12
	jmp	.LBB25_11
.LBB25_11:
	call	abort
.LBB25_12:
	mov	r0, 16386
	jz	r6, .LBB25_16
	jmp	.LBB25_13
.LBB25_13:
	mov	r0, [r6]
	mov	r1, r0
	add	r1, r6
	jne	r1, r4, .LBB25_15
	jmp	.LBB25_14
.LBB25_14:
	add	r0, r5
	mov	[r6], r0
	mov	r4, r6
	jmp	.LBB25_17
.LBB25_15:
	add	r6, 1
	mov	r0, r6
.LBB25_16:
	mov	[r0], r4
	mov	[r2], r3
.LBB25_17:
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	mov	rax, 0
	jz	r0, .LBB25_92
	jmp	.LBB25_18
.LBB25_18:
	mov	r0, [r4]
	mov	r1, r0
	add	r1, r4
	jne	r1, r3, .LBB25_92
	jmp	.LBB25_19
.LBB25_19:
	add	r0, [r3]
	mov	[r4], r0
	add	r3, 1
	mov	r0, [r3]
	add	r4, 1
	mov	[r4], r0
	jmp	.LBB25_92
.LBB25_20:
	mov	r3, 1296125004
	je	r0, r3, .LBB25_22
	jmp	.LBB25_21
.LBB25_21:
	mov	r0, 16384
	mov	[r0], 1296125004
	mov	r0, 16385
	mov	[r0], 16387
	mov	r0, 16386
	mov	[r0], 0
.LBB25_22:
	mov	t6, r2
	add	t6, -1
	mov	r5, [t6]
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
	jg	rax, r6, .LBB25_73
	jmp	.LBB25_23
.LBB25_23:
	mov	r0, 16385
	mov	r0, [r0]
	mov	t1, r5
	add	t1, t6
	mov	r7, r4
	sub	r7, r5
	je	t1, r0, .LBB25_27
	jmp	.LBB25_24
.LBB25_24:
	mov	r0, 16386
	mov	r0, [r0]
	mov	r6, 0
	jz	r0, .LBB25_32
	jmp	.LBB25_25
.LBB25_25:
	jge	r0, t1, .LBB25_32
	jmp	.LBB25_26
.LBB25_26:                              // %.preheader29.preheader
	jmp	.LBB25_30
.LBB25_27:
	mov	r0, t1
	add	r0, -8388609
	call	__bit_xor
	mov	r0, 2139111426
	jl	rax, r0, .LBB25_39
	jmp	.LBB25_28
.LBB25_28:
	mov	r0, 8388608
	sub	r0, t1
	jg	r7, r0, .LBB25_39
	jmp	.LBB25_29
.LBB25_29:
	add	r3, r2
	mov	r0, 16385
	mov	[r0], r3
	mov	r0, r2
	add	r0, -1
	mov	[r0], r4
	mov	rax, r2
	jmp	.LBB25_92
.LBB25_30:                              // %.preheader29
                                        // =>This Inner Loop Header: Depth=1
	mov	r6, r0
	add	r0, 1
	mov	r0, [r0]
	jz	r0, .LBB25_32
	jmp	.LBB25_31
.LBB25_31:                              // %.preheader29
                                        //   in Loop: Header=BB25_30 Depth=1
	jl	r0, t1, .LBB25_30
	jmp	.LBB25_32
.LBB25_32:                              // %.loopexit30
	jne	r0, t1, .LBB25_39
	jmp	.LBB25_33
.LBB25_33:
	mov	t1, [t1]
	mov	r1, -2147483648
	mov	r0, r7
	call	__bit_xor
	mov	t2, rax
	mov	r0, t1
	call	__bit_xor
	jl	rax, t2, .LBB25_39
	jmp	.LBB25_34
.LBB25_34:
	mov	r0, r5
	add	r0, r2
	mov	t3, [r0]
	mov	r0, r7
	add	r0, 2
	call	__bit_xor
	mov	t2, rax
	mov	r0, t1
	call	__bit_xor
	jge	rax, t2, .LBB25_38
	jmp	.LBB25_35
.LBB25_35:
	add	t1, r5
	mov	[t6], t1
	jnz	r6, .LBB25_37
	jmp	.LBB25_36
.LBB25_36:
	mov	r0, 16386
	mov	[r0], t3
	mov	rax, r2
	jmp	.LBB25_92
.LBB25_37:
	add	r6, 1
	mov	[r6], t3
	mov	rax, r2
	jmp	.LBB25_92
.LBB25_38:
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
	jmp	.LBB25_92
.LBB25_39:
	mov	r0, t3
	call	malloc
	mov	r4, rax
	mov	rax, 0
	jz	r4, .LBB25_92
	jmp	.LBB25_40
.LBB25_40:
	mov	r6, r0
	mov	r1, 2
	mov	r7, r4
	mov	r0, r5
	call	__bit_shl
	mov	r3, rax
	sub	r3, r6
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
	mov	t1, rax
	add	t1, r6
	mov	r1, -2147483648
	mov	r0, t1
	call	__bit_xor
	mov	r0, -2147483632
	mov	r6, r2
	mov	r3, r7
	jl	rax, r0, .LBB25_53
	jmp	.LBB25_41
.LBB25_41:
	mov	r1, 3
	mov	r0, r3
	call	__bit_and
	mov	r5, rax
	mov	t5, 8
	sub	t5, r5
	mov	t7, 0
	mov	r7, r2
.LBB25_42:                              // =>This Inner Loop Header: Depth=1
	mov	r6, r4
	mov	r0, r2
	add	r0, t7
	mov	r1, 2
	add	r6, t7
	call	__bit_shr
	mov	r1, 3
	mov	t2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	t2, rax
	mov	r0, r6
	call	__bit_and
	mov	r1, -4
	mov	t3, rax
	call	__bit_and
	mov	r6, rax
	mov	t4, [r6]
	mov	r1, 3
	mov	r0, t3
	call	__bit_shl
	mov	r0, 255
	mov	t3, rax
	mov	r1, t3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t4
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t4, rax
	mov	r0, t2
	call	__bit_and
	mov	r0, rax
	mov	r1, t3
	call	__bit_shl
	mov	r0, t4
	mov	r1, rax
	call	__bit_or
	mov	[r6], rax
	add	t7, 1
	add	r7, 1
	jne	t5, t7, .LBB25_42
	jmp	.LBB25_43
.LBB25_43:
	mov	r1, -8
	mov	r0, r5
	call	__bit_or
	mov	r5, rax
	mov	r6, r2
	add	r6, t7
	mov	r1, 3
	add	r5, t1
	mov	r0, r6
	call	__bit_and
	mov	r0, rax
	jnz	r0, .LBB25_50
	jmp	.LBB25_44
.LBB25_44:
	mov	r7, r4
	mov	r1, -2147483648
	add	r7, t7
	mov	r0, r5
	call	__bit_xor
	mov	r0, -2147483632
	jl	rax, r0, .LBB25_46
	jmp	.LBB25_45
.LBB25_45:                              // %.preheader.i.preheader
	add	r4, t7
	add	t7, r2
	mov	r6, 0
	mov	r7, -2147483633
	jmp	.LBB25_48
.LBB25_46:                              // %.preheader162
	mov	r4, -2147483645
	mov	t1, r5
	jmp	.LBB25_49
.LBB25_47:
	add	r4, r6
	add	t7, r6
	mov	r0, 3
	mov	r7, r4
	mov	r6, t7
	mov	t1, r5
	jg	r5, r0, .LBB25_46
	jmp	.LBB25_53
.LBB25_48:                              // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, t7
	add	r0, r6
	mov	r1, [r0]
	mov	t0, r4
	add	t0, r6
	mov	[t0], r1
	mov	r1, r0
	add	r1, 4
	mov	r1, [r1]
	mov	t1, t0
	add	t1, 4
	mov	[t1], r1
	mov	r1, r0
	add	r1, 8
	mov	r1, [r1]
	mov	t1, t0
	add	t1, 8
	mov	[t1], r1
	add	r0, 12
	mov	r0, [r0]
	add	t0, 12
	mov	[t0], r0
	add	r5, -16
	mov	r1, -2147483648
	add	r6, 16
	mov	r0, r5
	call	__bit_xor
	jg	rax, r7, .LBB25_48
	jmp	.LBB25_47
.LBB25_49:                              // =>This Inner Loop Header: Depth=1
	mov	r0, [r6]
	add	r6, 4
	mov	[r7], r0
	add	t1, -4
	add	r7, 4
	mov	r0, t1
	call	__bit_xor
	jg	rax, r4, .LBB25_49
	jmp	.LBB25_53
.LBB25_50:
	call	__bit_shl
	mov	t1, rax
	mov	t2, 8
	sub	t2, r0
	mov	r0, r7
	call	__bit_and
	mov	x1, r2
	sub	x1, rax
	mov	r0, x1
	add	r0, t7
	mov	t3, [r0]
	add	x1, 4
	mov	x0, 0
.LBB25_51:                              // =>This Inner Loop Header: Depth=1
	mov	x2, r4
	mov	r0, t7
	add	r0, x0
	add	r0, x1
	mov	t4, [r0]
	add	x2, x0
	mov	r1, 31
	add	x2, t7
	mov	r0, t1
	call	__bit_and
	mov	r0, t3
	mov	r1, rax
	call	__bit_shl
	mov	t3, rax
	mov	r0, t1
	call	__bit_not
	mov	r1, 31
	mov	r0, rax
	call	__bit_and
	mov	r1, 1
	mov	t5, rax
	mov	r0, t4
	call	__bit_shr
	mov	r0, rax
	mov	r1, t5
	call	__bit_shr
	mov	r0, t3
	mov	r1, rax
	call	__bit_or
	mov	[x2], rax
	add	r5, -4
	mov	r1, -2147483648
	add	x0, 4
	mov	r0, t2
	call	__bit_xor
	mov	t5, rax
	mov	r0, r5
	call	__bit_xor
	mov	t3, t4
	jge	rax, t5, .LBB25_51
	jmp	.LBB25_52
.LBB25_52:
	mov	r1, -4
	mov	r0, r6
	call	__bit_or
	mov	t1, rax
	mov	r1, 3
	add	t1, x0
	mov	r0, r7
	call	__bit_and
	mov	r6, r2
	sub	r6, rax
	add	r6, t1
	add	r6, t7
	add	r4, t7
	add	r4, x0
	add	r6, 4
	mov	r7, r4
	jmp	.LBB25_54
.LBB25_53:                              // %.loopexit8.i
	mov	r5, t1
	jz	t1, .LBB25_56
	jmp	.LBB25_54
.LBB25_54:                              // %.preheader159
	mov	t2, r6
	mov	t3, r7
.LBB25_55:                              // =>This Inner Loop Header: Depth=1
	add	r5, -1
	mov	r1, 2
	add	t2, 1
	mov	r0, r6
	call	__bit_shr
	mov	r1, 3
	mov	r4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r4, rax
	mov	r1, 3
	add	t3, 1
	mov	r0, r7
	call	__bit_and
	mov	r1, -4
	mov	r6, rax
	call	__bit_and
	mov	r7, rax
	mov	t1, [r7]
	mov	r1, 3
	mov	r0, r6
	call	__bit_shl
	mov	r0, 255
	mov	r6, rax
	mov	r1, r6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t1, rax
	mov	r0, r4
	call	__bit_and
	mov	r0, rax
	mov	r1, r6
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	[r7], rax
	mov	r7, t3
	mov	r6, t2
	jnz	r5, .LBB25_55
	jmp	.LBB25_56
.LBB25_56:                              // %memcpy.exit
	mov	r0, 16384
	mov	r1, [r0]
	mov	r4, 1296125004
	je	r1, r4, .LBB25_58
	jmp	.LBB25_57
.LBB25_57:
	mov	[r0], 1296125004
	mov	r0, 16385
	mov	[r0], 16387
	mov	r0, 16386
	mov	[r0], 0
	mov	r5, [t6]
	mov	r6, 0
	mov	r4, 0
	mov	rax, 0
	jmp	.LBB25_63
.LBB25_58:
	mov	r0, 16386
	mov	r4, [r0]
	mov	r5, [t6]
	mov	r0, r4
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r6, 0
	jz	r4, .LBB25_63
	jmp	.LBB25_59
.LBB25_59:
	jge	r4, t6, .LBB25_63
	jmp	.LBB25_60
.LBB25_60:                              // %.preheader27.preheader
.LBB25_61:                              // %.preheader27
                                        // =>This Inner Loop Header: Depth=1
	mov	r6, r4
	mov	r0, r6
	add	r0, 1
	mov	r4, [r0]
	mov	r0, r4
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	jz	r4, .LBB25_63
	jmp	.LBB25_62
.LBB25_62:                              // %.preheader27
                                        //   in Loop: Header=BB25_61 Depth=1
	jl	r4, t6, .LBB25_61
	jmp	.LBB25_63
.LBB25_63:                              // %.loopexit28
	jne	r4, t6, .LBB25_65
	jmp	.LBB25_64
.LBB25_64:
	call	abort
.LBB25_65:
	mov	r0, 16386
	jz	r6, .LBB25_69
	jmp	.LBB25_66
.LBB25_66:
	mov	r0, [r6]
	mov	r1, r0
	add	r1, r6
	jne	r1, t6, .LBB25_68
	jmp	.LBB25_67
.LBB25_67:
	add	r0, r5
	mov	[r6], r0
	mov	t6, r6
	jmp	.LBB25_70
.LBB25_68:
	add	r6, 1
	mov	r0, r6
.LBB25_69:
	mov	[r0], t6
	mov	[r2], r4
.LBB25_70:
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	mov	rax, r3
	jz	r0, .LBB25_92
	jmp	.LBB25_71
.LBB25_71:
	mov	r0, [t6]
	mov	r1, r0
	add	r1, t6
	jne	r1, r4, .LBB25_92
	jmp	.LBB25_72
.LBB25_72:
	add	r0, [r4]
	mov	[t6], r0
	add	r4, 1
	mov	r0, [r4]
	add	t6, 1
	mov	[t6], r0
	jmp	.LBB25_92
.LBB25_73:
	sub	r5, r4
	mov	r0, r5
	call	__bit_xor
	mov	r1, -2147483646
	mov	r0, rax
	mov	rax, r2
	jl	r0, r1, .LBB25_92
	jmp	.LBB25_74
.LBB25_74:
	add	r3, r2
	mov	r0, r2
	add	r0, -1
	mov	[r0], r4
	add	r4, r2
	mov	[r3], r5
	mov	rax, r2
	jz	r4, .LBB25_92
	jmp	.LBB25_75
.LBB25_75:
	mov	r0, 16384
	mov	r1, [r0]
	mov	r6, 1296125004
	je	r1, r6, .LBB25_77
	jmp	.LBB25_76
.LBB25_76:
	mov	[r0], 1296125004
	mov	r0, 16385
	mov	[r0], 16387
	mov	r0, 16386
	mov	[r0], 0
	mov	r5, [r3]
	mov	r7, 0
	mov	r6, 0
	mov	rax, 0
	jmp	.LBB25_82
.LBB25_77:
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
	jz	r6, .LBB25_82
	jmp	.LBB25_78
.LBB25_78:
	jge	r6, r3, .LBB25_82
	jmp	.LBB25_79
.LBB25_79:                              // %.preheader25.preheader
.LBB25_80:                              // %.preheader25
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
	jz	r6, .LBB25_82
	jmp	.LBB25_81
.LBB25_81:                              // %.preheader25
                                        //   in Loop: Header=BB25_80 Depth=1
	jl	r6, r3, .LBB25_80
	jmp	.LBB25_82
.LBB25_82:                              // %.loopexit26
	jne	r6, r3, .LBB25_84
	jmp	.LBB25_83
.LBB25_83:
	call	abort
.LBB25_84:
	mov	r0, 16386
	jz	r7, .LBB25_88
	jmp	.LBB25_85
.LBB25_85:
	mov	r0, [r7]
	mov	r1, r0
	add	r1, r7
	jne	r1, r3, .LBB25_87
	jmp	.LBB25_86
.LBB25_86:
	add	r0, r5
	mov	[r7], r0
	mov	r3, r7
	jmp	.LBB25_89
.LBB25_87:
	add	r7, 1
	mov	r0, r7
.LBB25_88:
	mov	[r0], r3
	mov	[r4], r6
.LBB25_89:
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	mov	rax, r2
	jz	r0, .LBB25_92
	jmp	.LBB25_90
.LBB25_90:
	mov	r0, [r3]
	mov	r1, r0
	add	r1, r3
	mov	rax, r2
	jne	r1, r6, .LBB25_92
	jmp	.LBB25_91
.LBB25_91:
	add	r0, [r6]
	mov	[r3], r0
	add	r6, 1
	mov	r0, [r6]
	add	r3, 1
	mov	[r3], r0
	mov	rax, r2
.LBB25_92:
	mov	x2, [rsp-3]
	mov	x1, [rsp-2]
	mov	x0, [rsp-1]
	ret
// -- End function
// -- Begin function calloc
calloc:                                 // @calloc
// %bb.0:
	mov	r2, r1
	mov	r5, r0
	jz	r5, .LBB26_2
	jmp	.LBB26_1
.LBB26_1:
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
	jnz	rax, .LBB26_18
	jmp	.LBB26_2
.LBB26_2:
	mul	r2, r5
	mov	r0, r2
	call	malloc
	mov	r3, rax
	mov	r4, 0
	jz	r3, .LBB26_18
	jmp	.LBB26_3
.LBB26_3:
	mov	r1, 3
	mov	r4, r3
	mov	r0, r4
	call	__bit_and
	jz	rax, .LBB26_8
	jmp	.LBB26_4
.LBB26_4:                               // %.preheader2.preheader
	mov	t2, r3
	add	t2, 1
	mov	t1, 0
.LBB26_5:                               // %.preheader2
                                        // =>This Inner Loop Header: Depth=1
	je	r2, t1, .LBB26_18
	jmp	.LBB26_6
.LBB26_6:                               //   in Loop: Header=BB26_5 Depth=1
	mov	r0, r3
	add	r0, t1
	mov	r1, 3
	call	__bit_and
	mov	r1, -4
	mov	r5, rax
	call	__bit_and
	mov	r6, rax
	mov	r7, [r6]
	mov	r1, 3
	mov	r0, r5
	call	__bit_shl
	mov	r0, 255
	mov	r5, rax
	mov	r1, r5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r0, 0
	mov	r7, rax
	mov	r1, r5
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	r0, t2
	add	r0, t1
	mov	r1, 3
	mov	[r6], rax
	call	__bit_and
	add	t1, 1
	jnz	rax, .LBB26_5
	jmp	.LBB26_7
.LBB26_7:                               // %.loopexit7.i.loopexit
	add	r3, t1
	sub	r2, t1
.LBB26_8:                               // %.loopexit7.i
	mov	r1, -2147483648
	mov	r0, r2
	call	__bit_xor
	mov	r0, -2147483644
	jl	rax, r0, .LBB26_15
	jmp	.LBB26_9
.LBB26_9:
	mov	r0, r2
	call	__bit_xor
	mov	r0, -2147483632
	jl	rax, r0, .LBB26_11
	jmp	.LBB26_10
.LBB26_10:                              // %.preheader.i.preheader
	mov	r5, -2147483633
	jmp	.LBB26_13
.LBB26_11:                              // %.preheader33
	mov	r5, -2147483645
	jmp	.LBB26_14
.LBB26_12:
	mov	r0, 3
	jg	r2, r0, .LBB26_11
	jmp	.LBB26_15
.LBB26_13:                              // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r3
	add	r0, 4
	mov	[r3], 0
	mov	r1, r3
	add	r1, 8
	mov	[r0], 0
	mov	r0, r3
	add	r0, 12
	mov	[r1], 0
	add	r3, 16
	add	r2, -16
	mov	r1, -2147483648
	mov	[r0], 0
	mov	r0, r2
	call	__bit_xor
	jg	rax, r5, .LBB26_13
	jmp	.LBB26_12
.LBB26_14:                              // =>This Inner Loop Header: Depth=1
	mov	[r3], 0
	add	r2, -4
	add	r3, 4
	mov	r0, r2
	call	__bit_xor
	jg	rax, r5, .LBB26_14
	jmp	.LBB26_15
.LBB26_15:                              // %.loopexit5.i
	jz	r2, .LBB26_18
	jmp	.LBB26_16
.LBB26_16:                              // %.preheader.preheader
	mov	r7, r3
.LBB26_17:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	add	r2, -1
	mov	r1, 3
	add	r7, 1
	mov	r0, r3
	call	__bit_and
	mov	r1, -4
	mov	r5, rax
	call	__bit_and
	mov	r3, rax
	mov	r6, [r3]
	mov	r1, 3
	mov	r0, r5
	call	__bit_shl
	mov	r0, 255
	mov	r5, rax
	mov	r1, r5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	r0, 0
	mov	r6, rax
	mov	r1, r5
	call	__bit_shl
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	mov	r3, r7
	jnz	r2, .LBB26_17
	jmp	.LBB26_18
.LBB26_18:                              // %memset.exit
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
	mov	r5, r3
	mov	r6, r2
	mov	r7, r0
	mov	r0, t4
	call	__bit_and
	mov	r1, 20
	mov	t1, rax
	call	__bit_shr
	mov	r1, 2047
	mov	r3, 2047
	mov	r0, rax
	call	__bit_and
	mov	r2, rax
	jne	r2, r3, .LBB27_6
	jmp	.LBB27_1
.LBB27_1:
	mov	r0, r7
	mov	r1, t1
	call	__bit_or
	jz	rax, .LBB27_3
	jmp	.LBB27_2
.LBB27_2:                               // %memcpy.exit38.loopexit175
	mov	r2, r5
	add	r2, 1
	mov	r1, 3
	mov	r4, 3
	mov	r0, r5
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	r6, rax
	mov	r7, [r6]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r0, 255
	mov	r3, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r0, 110
	mov	r7, rax
	mov	r1, r3
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	[r6], rax
	mov	r1, 3
	add	r5, 2
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	r2, rax
	mov	r6, [r2]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r0, 255
	mov	r3, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	r0, 97
	mov	r6, rax
	mov	r1, r3
	call	__bit_shl
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	r1, 3
	mov	[r2], rax
	mov	r0, r5
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r3, rax
	mov	r5, [r3]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r0, 110
	mov	r5, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	jmp	.LBB27_183
.LBB27_3:
	mov	r0, -1
	mov	r4, 8
	jg	t4, r0, .LBB27_5
	jmp	.LBB27_4
.LBB27_4:
	mov	r1, 3
	mov	r0, r5
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r3, rax
	mov	r4, [r3]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r4
	mov	r1, rax
	call	__bit_and
	mov	r0, 45
	mov	r4, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, r4
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	mov	r4, 9
.LBB27_5:                               // %memcpy.exit38.loopexit
	mov	r1, 31
	mov	r0, t4
	call	__bit_shr
	add	r5, rax
	mov	r2, r5
	mov	r1, 3
	add	r2, 1
	mov	r0, r5
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	r6, rax
	mov	r7, [r6]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r0, 255
	mov	r3, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r0, 73
	mov	r7, rax
	mov	r1, r3
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	[r6], rax
	mov	r3, r5
	mov	r1, 3
	add	r3, 2
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	r6, rax
	call	__bit_and
	mov	r2, rax
	mov	r7, [r2]
	mov	r1, 3
	mov	r0, r6
	call	__bit_shl
	mov	r0, 255
	mov	r6, rax
	mov	r1, r6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r0, 110
	mov	r7, rax
	mov	r1, r6
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	[r2], rax
	mov	r2, r5
	mov	r1, 3
	add	r2, 3
	mov	r0, r3
	call	__bit_and
	mov	r1, -4
	mov	r6, rax
	call	__bit_and
	mov	r3, rax
	mov	r7, [r3]
	mov	r1, 3
	mov	r0, r6
	call	__bit_shl
	mov	r0, 255
	mov	r6, rax
	mov	r1, r6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r0, 102
	mov	r7, rax
	mov	r1, r6
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	mov	r3, r5
	mov	r1, 3
	add	r3, 4
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	r6, rax
	call	__bit_and
	mov	r2, rax
	mov	r7, [r2]
	mov	r1, 3
	mov	r0, r6
	call	__bit_shl
	mov	r0, 255
	mov	r6, rax
	mov	r1, r6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r0, 105
	mov	r7, rax
	mov	r1, r6
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	[r2], rax
	mov	r2, r5
	mov	r1, 3
	add	r2, 5
	mov	r0, r3
	call	__bit_and
	mov	r1, -4
	mov	r6, rax
	call	__bit_and
	mov	r3, rax
	mov	r7, [r3]
	mov	r1, 3
	mov	r0, r6
	call	__bit_shl
	mov	r0, 255
	mov	r6, rax
	mov	r1, r6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r0, 110
	mov	r7, rax
	mov	r1, r6
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	mov	r3, r5
	mov	r1, 3
	add	r3, 6
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	r6, rax
	call	__bit_and
	mov	r2, rax
	mov	r7, [r2]
	mov	r1, 3
	mov	r0, r6
	call	__bit_shl
	mov	r0, 255
	mov	r6, rax
	mov	r1, r6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r0, 105
	mov	r7, rax
	mov	r1, r6
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	[r2], rax
	mov	r1, 3
	add	r5, 7
	mov	r0, r3
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r3, rax
	mov	r6, [r3]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	r0, 116
	mov	r6, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	r1, 3
	mov	[r3], rax
	mov	r0, r5
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r3, rax
	mov	r5, [r3]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r0, 121
	mov	r5, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	jmp	.LBB27_183
.LBB27_6:
	mov	r0, r7
	mov	r1, t1
	call	__bit_or
	jnz	rax, .LBB27_26
	jmp	.LBB27_7
.LBB27_7:
	jnz	r2, .LBB27_26
	jmp	.LBB27_8
.LBB27_8:
	mov	r0, -1
	mov	r2, 0
	jg	t4, r0, .LBB27_10
	jmp	.LBB27_9
.LBB27_9:
	mov	r1, 3
	mov	r0, r5
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r3, rax
	mov	r4, [r3]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r4
	mov	r1, rax
	call	__bit_and
	mov	r0, 45
	mov	r4, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, r4
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	mov	r2, 1
.LBB27_10:
	mov	r4, r2
	mov	r7, r5
	add	r7, r2
	mov	r1, 3
	add	r4, 1
	mov	r0, r7
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	t1, rax
	mov	t2, [t1]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r0, 255
	mov	r3, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t2
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	t2, rax
	mov	r1, r3
	call	__bit_shl
	mov	r0, t2
	mov	r1, rax
	call	__bit_or
	mov	[t1], rax
	jz	r6, .LBB27_183
	jmp	.LBB27_11
.LBB27_11:
	mov	r1, 2
	mov	r0, r2
	call	__bit_or
	add	r4, r5
	mov	r1, 3
	mov	r2, rax
	mov	r0, r4
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	r4, rax
	mov	t1, [r4]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r0, 255
	mov	r3, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r0, 46
	mov	t1, rax
	mov	r1, r3
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	add	r5, r2
	mov	r1, 3
	mov	[r4], rax
	mov	r0, r5
	call	__bit_and
	mov	r3, r6
	jz	rax, .LBB27_15
	jmp	.LBB27_12
.LBB27_12:                              // %.preheader78.preheader
	add	r7, 3
	mov	r0, r5
	mov	r3, r6
.LBB27_13:                              // %.preheader78
                                        // =>This Inner Loop Header: Depth=1
	jz	r3, .LBB27_25
	jmp	.LBB27_14
.LBB27_14:                              //   in Loop: Header=BB27_13 Depth=1
	add	r3, -1
	mov	r5, r0
	mov	r1, 3
	add	r5, 1
	call	__bit_and
	mov	r1, -4
	mov	r4, rax
	call	__bit_and
	mov	t1, rax
	mov	t2, [t1]
	mov	r1, 3
	mov	r0, r4
	call	__bit_shl
	mov	r0, 255
	mov	r4, rax
	mov	r1, r4
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t2
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	t2, rax
	mov	r1, r4
	call	__bit_shl
	mov	r0, t2
	mov	r1, rax
	call	__bit_or
	mov	r1, 3
	mov	[t1], rax
	mov	r0, r7
	call	__bit_and
	add	r7, 1
	mov	r0, r5
	jnz	rax, .LBB27_13
	jmp	.LBB27_15
.LBB27_15:                              // %.loopexit7.i
	mov	r1, -2147483648
	mov	r0, r3
	call	__bit_xor
	mov	r0, -2147483644
	jl	rax, r0, .LBB27_22
	jmp	.LBB27_16
.LBB27_16:
	mov	r0, r3
	call	__bit_xor
	mov	r0, -2147483632
	jl	rax, r0, .LBB27_18
	jmp	.LBB27_17
.LBB27_17:                              // %.preheader.i.preheader
	mov	r4, -2147483633
	jmp	.LBB27_20
.LBB27_18:                              // %.preheader432
	mov	r4, -2147483645
	jmp	.LBB27_21
.LBB27_19:
	mov	r0, 3
	jg	r3, r0, .LBB27_18
	jmp	.LBB27_22
.LBB27_20:                              // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r5
	add	r0, 4
	mov	[r5], 808464432
	mov	r1, r5
	add	r1, 8
	mov	[r0], 808464432
	mov	r0, r5
	add	r0, 12
	mov	[r1], 808464432
	add	r5, 16
	add	r3, -16
	mov	r1, -2147483648
	mov	[r0], 808464432
	mov	r0, r3
	call	__bit_xor
	jg	rax, r4, .LBB27_20
	jmp	.LBB27_19
.LBB27_21:                              // =>This Inner Loop Header: Depth=1
	mov	[r5], 808464432
	add	r3, -4
	add	r5, 4
	mov	r0, r3
	call	__bit_xor
	jg	rax, r4, .LBB27_21
	jmp	.LBB27_22
.LBB27_22:                              // %.loopexit5.i
	jz	r3, .LBB27_25
	jmp	.LBB27_23
.LBB27_23:                              // %.preheader.preheader
	mov	t1, r5
.LBB27_24:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	add	r3, -1
	mov	r1, 3
	add	t1, 1
	mov	r0, r5
	call	__bit_and
	mov	r1, -4
	mov	r4, rax
	call	__bit_and
	mov	r5, rax
	mov	r7, [r5]
	mov	r1, 3
	mov	r0, r4
	call	__bit_shl
	mov	r0, 255
	mov	r4, rax
	mov	r1, r4
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	r7, rax
	mov	r1, r4
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	[r5], rax
	mov	r5, t1
	jnz	r3, .LBB27_24
	jmp	.LBB27_25
.LBB27_25:                              // %memset.exit
	add	r2, r6
	mov	r4, r2
	jmp	.LBB27_183
.LBB27_26:
	mov	r1, 1048576
	mov	r0, t1
	call	__bit_or
	jz	r2, .LBB27_28
	jmp	.LBB27_27
.LBB27_27:
	mov	t1, rax
.LBB27_28:
	mov	t2, -1074
	jz	r2, .LBB27_30
	jmp	.LBB27_29
.LBB27_29:
	add	r2, -1075
	mov	t2, r2
.LBB27_30:
	mov	r0, -1
	mov	r4, 0
	jg	t4, r0, .LBB27_32
	jmp	.LBB27_31
.LBB27_31:
	mov	r1, 3
	mov	r0, r5
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r3, rax
	mov	r4, [r3]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r4
	mov	r1, rax
	call	__bit_and
	mov	r0, 45
	mov	r4, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, r4
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	mov	r4, 1
.LBB27_32:
	mov	r0, -52
	mov	[rsp-23], t2
	jl	t2, r0, .LBB27_76
	jmp	.LBB27_33
.LBB27_33:
	mov	r1, -2147483648
	mov	r2, -2147483648
	mov	t2, [rsp-23]
	mov	r0, t2
	call	__bit_xor
	sub	r2, rax
	mov	r1, 31
	mov	r0, r2
	call	__bit_shr
	mov	r1, 1
	mov	x9, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r0, rax
	mov	r1, t2
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
	sub	r3, t2
	add	r3, 128
	mov	x10, r5
	add	x10, -4
	mov	t2, 0
	mov	x11, -2147483645
	mov	x13, mcasm_static_29af82f542537f86f33d7b3d416ba898
	mov	x14, 99999999
	mov	x12, 10
	mov	t6, t5
.LBB27_34:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB27_38 Depth 2
                                        //     Child Loop BB27_66 Depth 2
                                        //     Child Loop BB27_47 Depth 2
                                        //     Child Loop BB27_50 Depth 2
	add	t6, -1
	mov	r0, t4
	mov	r1, t6
	mov	r2, rsp
	call	ryu_fill_pow10_split_exp
	mov	r0, r7
	mov	r1, t1
	call	ryu_mul_shift_mod1e9_exact
	mov	t7, rax
	jnz	t2, .LBB27_39
	jmp	.LBB27_35
.LBB27_35:                              //   in Loop: Header=BB27_34 Depth=1
	jnz	t7, .LBB27_53
	jmp	.LBB27_36
.LBB27_36:                              //   in Loop: Header=BB27_34 Depth=1
	mov	r0, 2
	jl	t5, r0, .LBB27_76
	jmp	.LBB27_37
.LBB27_37:                              // %.preheader98.preheader
                                        //   in Loop: Header=BB27_34 Depth=1
.LBB27_38:                              // %.preheader98
                                        //   Parent Loop BB27_34 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	t6, t5
	add	t6, -2
	mov	r0, t4
	mov	r1, t6
	mov	r2, rsp
	call	ryu_fill_pow10_split_exp
	mov	r0, r7
	mov	r1, t1
	call	ryu_mul_shift_mod1e9_exact
	mov	t7, rax
	jz	t7, .LBB27_75
	jmp	.LBB27_52
.LBB27_39:                              //   in Loop: Header=BB27_34 Depth=1
	mov	r2, r5
	add	r2, r4
	jz	t7, .LBB27_41
	jmp	.LBB27_40
.LBB27_40:                              // %memcpy.exit40
                                        //   in Loop: Header=BB27_34 Depth=1
	mov	x4, r2
	mov	r1, 10000
	add	x4, 7
	mov	r0, t7
	call	__udivsi3
	mov	x0, rax
	mov	r0, x0
	mul	r0, -10000
	add	r0, t7
	mov	r1, 100
	call	__udivsi3
	mov	x1, rax
	mov	t0, x1
	mul	t0, -100
	add	t0, r0
	mov	r1, 1
	mov	r0, t0
	call	__bit_shl
	mov	r0, rax
	add	r0, x13
	mov	x2, r0
	mov	r1, 2
	add	x2, 1
	call	__bit_shr
	mov	r1, 3
	mov	x3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	x5, rax
	mov	x3, r2
	mov	r1, 3
	add	x3, 8
	mov	r0, x4
	call	__bit_and
	mov	r1, -4
	mov	x6, rax
	call	__bit_and
	mov	x4, rax
	mov	x7, [x4]
	mov	r1, 3
	mov	r0, x6
	call	__bit_shl
	mov	r0, 255
	mov	x6, rax
	mov	r1, x6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x7
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x7, rax
	mov	r0, x5
	call	__bit_and
	mov	r0, rax
	mov	r1, x6
	call	__bit_shl
	mov	r0, x7
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	[x4], rax
	mov	r0, x2
	call	__bit_shr
	mov	r1, 3
	mov	x4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	x2, rax
	mov	r0, x3
	call	__bit_and
	mov	r1, -4
	mov	x4, rax
	call	__bit_and
	mov	x3, rax
	mov	x5, [x3]
	mov	r1, 3
	mov	r0, x4
	call	__bit_shl
	mov	r0, 255
	mov	x4, rax
	mov	r1, x4
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x5
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x2
	call	__bit_and
	mov	r0, rax
	mov	r1, x4
	call	__bit_shl
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	[x3], rax
	mov	x3, r2
	mov	r1, 1
	add	x3, 5
	mov	r0, x1
	call	__bit_shl
	mov	r0, rax
	add	r0, x13
	mov	x1, r0
	mov	r1, 2
	add	x1, 1
	call	__bit_shr
	mov	r1, 3
	mov	x2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	x4, rax
	mov	x2, r2
	mov	r1, 3
	add	x2, 6
	mov	r0, x3
	call	__bit_and
	mov	r1, -4
	mov	x5, rax
	call	__bit_and
	mov	x3, rax
	mov	x6, [x3]
	mov	r1, 3
	mov	r0, x5
	call	__bit_shl
	mov	r0, 255
	mov	x5, rax
	mov	r1, x5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x6
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x6, rax
	mov	r0, x4
	call	__bit_and
	mov	r0, rax
	mov	r1, x5
	call	__bit_shl
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	[x3], rax
	mov	r0, x1
	call	__bit_shr
	mov	r1, 3
	mov	x3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	x1, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, -4
	mov	x3, rax
	call	__bit_and
	mov	x2, rax
	mov	x4, [x2]
	mov	r1, 3
	mov	r0, x3
	call	__bit_shl
	mov	r0, 255
	mov	x3, rax
	mov	r1, x3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x4
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x1
	call	__bit_and
	mov	r0, rax
	mov	r1, x3
	call	__bit_shl
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	r1, 100000000
	mov	[x2], rax
	mov	r0, t7
	call	__udivsi3
	mov	t7, rax
	mov	r0, t7
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
	mov	r0, rax
	mov	x3, r2
	add	r0, x13
	add	x3, 3
	mov	x1, r0
	mov	r1, 2
	add	x1, 1
	call	__bit_shr
	mov	r1, 3
	mov	x2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	x4, rax
	mov	x2, r2
	mov	r1, 3
	add	x2, 4
	mov	r0, x3
	call	__bit_and
	mov	r1, -4
	mov	x5, rax
	call	__bit_and
	mov	x3, rax
	mov	x6, [x3]
	mov	r1, 3
	mov	r0, x5
	call	__bit_shl
	mov	r0, 255
	mov	x5, rax
	mov	r1, x5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x6
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x6, rax
	mov	r0, x4
	call	__bit_and
	mov	r0, rax
	mov	r1, x5
	call	__bit_shl
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	[x3], rax
	mov	r0, x1
	call	__bit_shr
	mov	r1, 3
	mov	x3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	x1, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, -4
	mov	x3, rax
	call	__bit_and
	mov	x2, rax
	mov	x4, [x2]
	mov	r1, 3
	mov	r0, x3
	call	__bit_shl
	mov	r0, 255
	mov	x3, rax
	mov	r1, x3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x4
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x1
	call	__bit_and
	mov	r0, rax
	mov	r1, x3
	call	__bit_shl
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	[x2], rax
	mov	r0, x0
	call	__bit_shl
	mov	r0, rax
	add	r0, x13
	mov	x1, r2
	add	x1, 1
	mov	x0, r0
	mov	r1, 2
	add	x0, 1
	call	__bit_shr
	mov	r1, 3
	mov	x2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, -4
	mov	x3, rax
	call	__bit_and
	mov	x1, rax
	mov	x4, [x1]
	mov	r1, 3
	mov	r0, x3
	call	__bit_shl
	mov	r0, 255
	mov	x3, rax
	mov	r1, x3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x4
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x2
	call	__bit_and
	mov	r0, rax
	mov	r1, x3
	call	__bit_shl
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	[x1], rax
	mov	x1, r2
	mov	r1, 2
	add	x1, 2
	mov	r0, x0
	call	__bit_shr
	mov	r1, 3
	mov	x2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	x0, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, -4
	mov	x2, rax
	call	__bit_and
	mov	x1, rax
	mov	x3, [x1]
	mov	r1, 3
	mov	r0, x2
	call	__bit_shl
	mov	r0, 255
	mov	x2, rax
	mov	r1, x2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x3
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x0
	call	__bit_and
	mov	r0, rax
	mov	r1, x2
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	[x1], rax
	mov	r1, 3
	add	t7, 48
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	x0, rax
	call	__bit_and
	mov	r2, rax
	mov	x1, [r2]
	mov	r1, 3
	mov	r0, x0
	call	__bit_shl
	mov	r0, 255
	mov	x0, rax
	mov	r1, x0
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x1
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x1, rax
	mov	r0, t7
	call	__bit_and
	mov	r0, rax
	mov	r1, x0
	call	__bit_shl
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	[r2], rax
	jmp	.LBB27_51
.LBB27_41:                              //   in Loop: Header=BB27_34 Depth=1
	mov	r1, 3
	mov	r0, r2
	call	__bit_and
	mov	x0, 9
	mov	t7, r2
	jz	rax, .LBB27_46
	jmp	.LBB27_42
.LBB27_42:                              // %.preheader95.preheader
                                        //   in Loop: Header=BB27_34 Depth=1
	mov	t7, r2
	add	t7, 1
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	x0, rax
	call	__bit_and
	mov	x1, rax
	mov	x2, [x1]
	mov	r1, 3
	mov	r0, x0
	call	__bit_shl
	mov	r0, 255
	mov	x0, rax
	mov	r1, x0
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x2
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	x2, rax
	mov	r1, x0
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r1, 3
	mov	[x1], rax
	mov	r0, t7
	call	__bit_and
	mov	x0, 8
	jz	rax, .LBB27_46
	jmp	.LBB27_43
.LBB27_43:                              // %.preheader95.1
                                        //   in Loop: Header=BB27_34 Depth=1
	mov	x1, r2
	add	x1, 2
	mov	r0, t7
	call	__bit_and
	mov	r1, -4
	mov	x0, rax
	call	__bit_and
	mov	t7, rax
	mov	x2, [t7]
	mov	r1, 3
	mov	r0, x0
	call	__bit_shl
	mov	r0, 255
	mov	x0, rax
	mov	r1, x0
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x2
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	x2, rax
	mov	r1, x0
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r1, 3
	mov	[t7], rax
	mov	r0, x1
	call	__bit_and
	mov	x0, 7
	mov	t7, x1
	jz	rax, .LBB27_46
	jmp	.LBB27_44
.LBB27_44:                              // %.preheader95.2
                                        //   in Loop: Header=BB27_34 Depth=1
	mov	t7, r2
	add	t7, 3
	mov	r0, x1
	call	__bit_and
	mov	r1, -4
	mov	x0, rax
	call	__bit_and
	mov	x1, rax
	mov	x2, [x1]
	mov	r1, 3
	mov	r0, x0
	call	__bit_shl
	mov	r0, 255
	mov	x0, rax
	mov	r1, x0
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x2
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	x2, rax
	mov	r1, x0
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r1, 3
	mov	[x1], rax
	mov	r0, t7
	call	__bit_and
	mov	x0, 6
	jz	rax, .LBB27_46
	jmp	.LBB27_45
.LBB27_45:                              // %.preheader95.3
                                        //   in Loop: Header=BB27_34 Depth=1
	add	r2, 4
	mov	r0, t7
	call	__bit_and
	mov	r1, -4
	mov	x0, rax
	call	__bit_and
	mov	t7, rax
	mov	x1, [t7]
	mov	r1, 3
	mov	r0, x0
	call	__bit_shl
	mov	r0, 255
	mov	x0, rax
	mov	r1, x0
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x1
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	x1, rax
	mov	r1, x0
	call	__bit_shl
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	[t7], rax
	mov	x0, 5
	mov	t7, r2
.LBB27_46:                              // %.thread.preheader
                                        //   in Loop: Header=BB27_34 Depth=1
.LBB27_47:                              // %.thread
                                        //   Parent Loop BB27_34 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	[t7], 808464432
	add	x0, -4
	mov	r1, -2147483648
	add	t7, 4
	mov	r0, x0
	call	__bit_xor
	jg	rax, x11, .LBB27_47
	jmp	.LBB27_48
.LBB27_48:                              // %.loopexit5.i45
                                        //   in Loop: Header=BB27_34 Depth=1
	jz	x0, .LBB27_51
	jmp	.LBB27_49
.LBB27_49:                              // %.preheader94.preheader
                                        //   in Loop: Header=BB27_34 Depth=1
	mov	t2, 0
.LBB27_50:                              // %.preheader94
                                        //   Parent Loop BB27_34 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, t7
	add	r0, t2
	mov	r1, 3
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	x1, rax
	mov	x2, [x1]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x2
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	x2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	add	t2, 1
	mov	[x1], rax
	jne	x0, t2, .LBB27_50
	jmp	.LBB27_51
.LBB27_51:                              // %memset.exit47
                                        //   in Loop: Header=BB27_34 Depth=1
	add	r4, 9
	jmp	.LBB27_74
.LBB27_52:                              // %.loopexit99.loopexit
                                        //   in Loop: Header=BB27_34 Depth=1
	add	t5, -1
.LBB27_53:                              // %.loopexit99
                                        //   in Loop: Header=BB27_34 Depth=1
	mov	r1, -2147483648
	mov	r0, t7
	call	__bit_xor
	mov	r0, -1147483648
	jl	rax, r0, .LBB27_55
	jmp	.LBB27_54
.LBB27_54:
	call	abort
.LBB27_55:                              //   in Loop: Header=BB27_34 Depth=1
	mov	t2, 9
	mov	r2, r5
	add	r2, r4
	jg	t7, x14, .LBB27_65
	jmp	.LBB27_56
.LBB27_56:                              //   in Loop: Header=BB27_34 Depth=1
	mov	t2, 8
	mov	r0, 9999999
	jg	t7, r0, .LBB27_65
	jmp	.LBB27_57
.LBB27_57:                              //   in Loop: Header=BB27_34 Depth=1
	mov	t2, 7
	mov	r0, 999999
	jg	t7, r0, .LBB27_65
	jmp	.LBB27_58
.LBB27_58:                              //   in Loop: Header=BB27_34 Depth=1
	mov	t2, 6
	mov	r0, 99999
	jg	t7, r0, .LBB27_65
	jmp	.LBB27_59
.LBB27_59:                              //   in Loop: Header=BB27_34 Depth=1
	mov	t2, 5
	mov	r0, 9999
	jg	t7, r0, .LBB27_65
	jmp	.LBB27_60
.LBB27_60:                              //   in Loop: Header=BB27_34 Depth=1
	mov	t2, 4
	mov	r0, 999
	jg	t7, r0, .LBB27_64
	jmp	.LBB27_61
.LBB27_61:                              //   in Loop: Header=BB27_34 Depth=1
	mov	t2, 3
	mov	r0, 99
	jg	t7, r0, .LBB27_64
	jmp	.LBB27_62
.LBB27_62:                              //   in Loop: Header=BB27_34 Depth=1
	mov	t2, 2
	mov	r0, 9
	jg	t7, r0, .LBB27_64
	jmp	.LBB27_63
.LBB27_63:                              //   in Loop: Header=BB27_34 Depth=1
	mov	t2, 1
.LBB27_64:                              //   in Loop: Header=BB27_34 Depth=1
	mov	x0, 0
	jmp	.LBB27_68
.LBB27_65:                              //   in Loop: Header=BB27_34 Depth=1
	mov	t3, x10
	add	t3, r4
	add	t3, t2
	mov	x15, 0
.LBB27_66:                              // %memcpy.exit48
                                        //   Parent Loop BB27_34 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 10000
	mov	x0, t7
	mov	r0, x0
	call	__udivsi3
	mov	t7, rax
	mov	r0, t7
	mul	r0, -10000
	add	r0, x0
	mov	r1, 100
	call	__udivsi3
	mov	x2, rax
	mov	t0, x2
	mul	t0, -100
	add	t0, r0
	mov	r1, 1
	mov	r0, t0
	call	__bit_shl
	mov	x1, t3
	add	x1, x15
	mov	r0, rax
	mov	x5, x1
	add	r0, x13
	add	x5, 2
	mov	x3, r0
	mov	r1, 2
	add	x3, 1
	call	__bit_shr
	mov	r1, 3
	mov	x4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	x6, rax
	mov	x4, x1
	mov	r1, 3
	add	x4, 3
	mov	r0, x5
	call	__bit_and
	mov	r1, -4
	mov	x7, rax
	call	__bit_and
	mov	x5, rax
	mov	x8, [x5]
	mov	r1, 3
	mov	r0, x7
	call	__bit_shl
	mov	r0, 255
	mov	x7, rax
	mov	r1, x7
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x8
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x8, rax
	mov	r0, x6
	call	__bit_and
	mov	r0, rax
	mov	r1, x7
	call	__bit_shl
	mov	r0, x8
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	[x5], rax
	mov	r0, x3
	call	__bit_shr
	mov	r1, 3
	mov	x5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	x3, rax
	mov	r0, x4
	call	__bit_and
	mov	r1, -4
	mov	x5, rax
	call	__bit_and
	mov	x4, rax
	mov	x6, [x4]
	mov	r1, 3
	mov	r0, x5
	call	__bit_shl
	mov	r0, 255
	mov	x5, rax
	mov	r1, x5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x6
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x6, rax
	mov	r0, x3
	call	__bit_and
	mov	r0, rax
	mov	r1, x5
	call	__bit_shl
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	[x4], rax
	mov	r0, x2
	call	__bit_shl
	mov	r0, rax
	add	r0, x13
	mov	x2, r0
	mov	r1, 2
	add	x2, 1
	call	__bit_shr
	mov	r1, 3
	mov	x3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	x4, rax
	mov	x3, x1
	mov	r1, 3
	add	x3, 1
	mov	r0, x1
	call	__bit_and
	mov	r1, -4
	mov	x5, rax
	call	__bit_and
	mov	x1, rax
	mov	x6, [x1]
	mov	r1, 3
	mov	r0, x5
	call	__bit_shl
	mov	r0, 255
	mov	x5, rax
	mov	r1, x5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x6
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x6, rax
	mov	r0, x4
	call	__bit_and
	mov	r0, rax
	mov	r1, x5
	call	__bit_shl
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	[x1], rax
	mov	r0, x2
	call	__bit_shr
	mov	r1, 3
	mov	x1, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x1]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	x1, rax
	mov	r0, x3
	call	__bit_and
	mov	r1, -4
	mov	x2, rax
	call	__bit_and
	mov	x3, rax
	mov	x4, [x3]
	mov	r1, 3
	mov	r0, x2
	call	__bit_shl
	mov	r0, 255
	mov	x2, rax
	mov	r1, x2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x4
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x1
	call	__bit_and
	mov	r0, rax
	mov	r1, x2
	call	__bit_shl
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	[x3], rax
	add	x15, -4
	jg	x0, x14, .LBB27_66
	jmp	.LBB27_67
.LBB27_67:                              // %.loopexit97.loopexit
                                        //   in Loop: Header=BB27_34 Depth=1
	mov	x0, 0
	sub	x0, x15
.LBB27_68:                              // %.loopexit97
                                        //   in Loop: Header=BB27_34 Depth=1
	mov	r0, 100
	jl	t7, r0, .LBB27_70
	jmp	.LBB27_69
.LBB27_69:                              // %memcpy.exit50
                                        //   in Loop: Header=BB27_34 Depth=1
	mov	x2, r5
	mov	r1, 65532
	add	x2, r4
	mov	r0, t7
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
	add	r0, t7
	mov	r1, 65535
	call	__bit_and
	mov	r1, 1
	mov	r0, rax
	call	__bit_shl
	add	x2, t2
	sub	x2, x0
	mov	r0, rax
	mov	x3, x2
	add	r0, x13
	add	x3, -2
	mov	t7, r0
	mov	r1, 2
	add	t7, 1
	call	__bit_shr
	mov	r1, 3
	mov	x4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	x4, rax
	mov	r1, 3
	add	x2, -1
	mov	r0, x3
	call	__bit_and
	mov	r1, -4
	mov	x5, rax
	call	__bit_and
	mov	x3, rax
	mov	x6, [x3]
	mov	r1, 3
	mov	r0, x5
	call	__bit_shl
	mov	r0, 255
	mov	x5, rax
	mov	r1, x5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x6
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x6, rax
	mov	r0, x4
	call	__bit_and
	mov	r0, rax
	mov	r1, x5
	call	__bit_shl
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	[x3], rax
	mov	r0, t7
	call	__bit_shr
	mov	r1, 3
	mov	x3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	t7, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, -4
	mov	x3, rax
	call	__bit_and
	mov	x2, rax
	mov	x4, [x2]
	mov	r1, 3
	mov	r0, x3
	call	__bit_shl
	mov	r0, 255
	mov	x3, rax
	mov	r1, x3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x4
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, t7
	call	__bit_and
	mov	r0, rax
	mov	r1, x3
	call	__bit_shl
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	[x2], rax
	mov	r0, x0
	call	__bit_or
	mov	x0, rax
	mov	t7, x1
.LBB27_70:                              //   in Loop: Header=BB27_34 Depth=1
	jl	t7, x12, .LBB27_72
	jmp	.LBB27_71
.LBB27_71:                              // %memcpy.exit51.loopexit
                                        //   in Loop: Header=BB27_34 Depth=1
	mov	r2, r5
	mov	r1, 1
	add	r2, r4
	mov	r0, t7
	call	__bit_shl
	add	r2, t2
	sub	r2, x0
	mov	r0, rax
	mov	x0, r2
	add	r0, x13
	add	x0, -2
	mov	t7, r0
	mov	r1, 2
	add	t7, 1
	call	__bit_shr
	mov	r1, 3
	mov	x1, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x1]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	x1, rax
	mov	r1, 3
	add	r2, -1
	mov	r0, x0
	call	__bit_and
	mov	r1, -4
	mov	x2, rax
	call	__bit_and
	mov	x0, rax
	mov	x3, [x0]
	mov	r1, 3
	mov	r0, x2
	call	__bit_shl
	mov	r0, 255
	mov	x2, rax
	mov	r1, x2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x3
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x1
	call	__bit_and
	mov	r0, rax
	mov	r1, x2
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	[x0], rax
	mov	r0, t7
	call	__bit_shr
	mov	r1, 3
	mov	x0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x0]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	t7, rax
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	x0, rax
	call	__bit_and
	mov	r2, rax
	mov	x1, [r2]
	mov	r1, 3
	mov	r0, x0
	call	__bit_shl
	mov	r0, 255
	mov	x0, rax
	mov	r1, x0
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x1
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x1, rax
	mov	r0, t7
	call	__bit_and
	mov	r0, rax
	mov	r1, x0
	call	__bit_shl
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	[r2], rax
	jmp	.LBB27_73
.LBB27_72:                              //   in Loop: Header=BB27_34 Depth=1
	mov	r1, 48
	mov	r0, t7
	call	__bit_or
	mov	r1, 3
	mov	t7, rax
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	x0, rax
	call	__bit_and
	mov	r2, rax
	mov	x1, [r2]
	mov	r1, 3
	mov	r0, x0
	call	__bit_shl
	mov	r1, 255
	mov	x0, rax
	mov	r0, t7
	call	__bit_and
	mov	r0, 255
	mov	t7, rax
	mov	r1, x0
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x1
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x1, rax
	mov	r0, t7
	call	__bit_and
	mov	r0, rax
	mov	r1, x0
	call	__bit_shl
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	[r2], rax
.LBB27_73:                              // %memcpy.exit51
                                        //   in Loop: Header=BB27_34 Depth=1
	add	r4, t2
.LBB27_74:                              //   in Loop: Header=BB27_34 Depth=1
	mov	t2, 1
	mov	r0, t5
	mov	t5, t6
	jg	r0, t2, .LBB27_34
	jmp	.LBB27_77
.LBB27_75:                              //   in Loop: Header=BB27_38 Depth=2
	add	t5, -1
	jg	t5, x9, .LBB27_38
	jmp	.LBB27_76
.LBB27_76:                              // %.loopexit100
	mov	r0, r5
	add	r0, r4
	mov	r1, 3
	add	r4, 1
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r3, rax
	mov	t4, [r3]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t4
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	t4, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, t4
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
.LBB27_77:                              // %.loopexit102
	jz	r6, .LBB27_79
	jmp	.LBB27_78
.LBB27_78:
	mov	r0, r5
	add	r0, r4
	mov	r1, 3
	add	r4, 1
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r3, rax
	mov	t4, [r3]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t4
	mov	r1, rax
	call	__bit_and
	mov	r0, 46
	mov	t4, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, t4
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
.LBB27_79:
	mov	r0, -1
	mov	t2, [rsp-23]
	jg	t2, r0, .LBB27_168
	jmp	.LBB27_80
.LBB27_80:
	mov	r0, -52
	jl	t2, r0, .LBB27_82
	jmp	.LBB27_81
.LBB27_81:
	mov	r1, 9
	mov	r0, r6
	call	__udivsi3
	mov	t4, rax
	mov	t6, 0
	jmp	.LBB27_100
.LBB27_82:
	mov	r0, t2
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
	mov	r0, r6
	call	__udivsi3
	mov	t4, rax
	jge	t4, r3, .LBB27_98
	jmp	.LBB27_83
.LBB27_83:
	mov	r3, r5
	add	r3, r4
	mov	r1, 3
	mov	r0, r3
	call	__bit_and
	mov	r2, r6
	jz	rax, .LBB27_87
	jmp	.LBB27_84
.LBB27_84:                              // %.preheader81.preheader
	add	r5, r4
	add	r5, 1
	mov	r0, r3
	mov	r2, r6
.LBB27_85:                              // %.preheader81
                                        // =>This Inner Loop Header: Depth=1
	jz	r2, .LBB27_97
	jmp	.LBB27_86
.LBB27_86:                              //   in Loop: Header=BB27_85 Depth=1
	add	r2, -1
	mov	r3, r0
	mov	r1, 3
	add	r3, 1
	call	__bit_and
	mov	r1, -4
	mov	r7, rax
	call	__bit_and
	mov	t1, rax
	mov	t2, [t1]
	mov	r1, 3
	mov	r0, r7
	call	__bit_shl
	mov	r0, 255
	mov	r7, rax
	mov	r1, r7
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t2
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	t2, rax
	mov	r1, r7
	call	__bit_shl
	mov	r0, t2
	mov	r1, rax
	call	__bit_or
	mov	r1, 3
	mov	[t1], rax
	mov	r0, r5
	call	__bit_and
	add	r5, 1
	mov	r0, r3
	jnz	rax, .LBB27_85
	jmp	.LBB27_87
.LBB27_87:                              // %.loopexit7.i52
	mov	r1, -2147483648
	mov	r0, r2
	call	__bit_xor
	mov	r0, -2147483644
	jl	rax, r0, .LBB27_94
	jmp	.LBB27_88
.LBB27_88:
	mov	r0, r2
	call	__bit_xor
	mov	r0, -2147483632
	jl	rax, r0, .LBB27_90
	jmp	.LBB27_89
.LBB27_89:                              // %.preheader.i54.preheader
	mov	r5, -2147483633
	jmp	.LBB27_92
.LBB27_90:                              // %.preheader440
	mov	r5, -2147483645
	jmp	.LBB27_93
.LBB27_91:
	mov	r0, 3
	jg	r2, r0, .LBB27_90
	jmp	.LBB27_94
.LBB27_92:                              // %.preheader.i54
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r3
	add	r0, 4
	mov	[r3], 808464432
	mov	r1, r3
	add	r1, 8
	mov	[r0], 808464432
	mov	r0, r3
	add	r0, 12
	mov	[r1], 808464432
	add	r3, 16
	add	r2, -16
	mov	r1, -2147483648
	mov	[r0], 808464432
	mov	r0, r2
	call	__bit_xor
	jg	rax, r5, .LBB27_92
	jmp	.LBB27_91
.LBB27_93:                              // =>This Inner Loop Header: Depth=1
	mov	[r3], 808464432
	add	r2, -4
	add	r3, 4
	mov	r0, r2
	call	__bit_xor
	jg	rax, r5, .LBB27_93
	jmp	.LBB27_94
.LBB27_94:                              // %.loopexit5.i53
	jz	r2, .LBB27_97
	jmp	.LBB27_95
.LBB27_95:                              // %.preheader80.preheader
	mov	t1, r3
.LBB27_96:                              // %.preheader80
                                        // =>This Inner Loop Header: Depth=1
	add	r2, -1
	mov	r1, 3
	add	t1, 1
	mov	r0, r3
	call	__bit_and
	mov	r1, -4
	mov	r5, rax
	call	__bit_and
	mov	r3, rax
	mov	r7, [r3]
	mov	r1, 3
	mov	r0, r5
	call	__bit_shl
	mov	r0, 255
	mov	r5, rax
	mov	r1, r5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	r7, rax
	mov	r1, r5
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	mov	r3, t1
	jnz	r2, .LBB27_96
	jmp	.LBB27_97
.LBB27_97:                              // %memset.exit55
	add	r4, r6
	jmp	.LBB27_183
.LBB27_98:
	mov	t6, 0
	jz	r3, .LBB27_100
	jmp	.LBB27_99
.LBB27_99:
	mov	r0, r5
	add	r0, r4
	mov	r2, r3
	mul	r2, 9
	mov	r1, 48
	call	memset
	add	r4, r2
	mov	t6, r3
.LBB27_100:
	mov	r2, 0
	sub	r2, t2
	jge	t6, t4, .LBB27_102
	jmp	.LBB27_101
.LBB27_101:
	mov	r0, t6
	mul	r0, 9
	add	r0, 9
	jg	r0, r2, .LBB27_103
	jmp	.LBB27_102
.LBB27_102:
	mov	r0, t4
	mul	r0, 9
	mov	r1, r0
	sub	r1, r6
	add	r1, 9
	mov	[rsp-27], r1
	mov	r1, r4
	add	r1, r6
	call	__bit_not
	mov	t5, rax
	mov	r0, rsp
	mov	r3, rsp
	mov	t0, rsp
	mov	t7, rsp
	mov	t3, rsp
	add	t5, r1
	add	t5, r5
	add	r0, 4
	mov	[rsp-24], r0
	add	r3, 8
	mov	[rsp-25], r3
	add	t0, 12
	mov	[rsp-26], t0
	add	t7, 16
	add	t3, 20
	mov	t2, -2147483645
	mov	x13, mcasm_static_29af82f542537f86f33d7b3d416ba898
	jmp	.LBB27_118
.LBB27_103:                             // %.loopexit90
	mul	t6, -9
	mov	r3, r5
	add	r3, r4
	mov	r1, 3
	add	t6, r6
	mov	r0, r3
	call	__bit_and
	mov	r2, t6
	jz	rax, .LBB27_107
	jmp	.LBB27_104
.LBB27_104:                             // %.preheader84.preheader
	add	r5, r4
	add	r5, 1
	mov	r0, r3
	mov	r2, t6
.LBB27_105:                             // %.preheader84
                                        // =>This Inner Loop Header: Depth=1
	jz	r2, .LBB27_117
	jmp	.LBB27_106
.LBB27_106:                             //   in Loop: Header=BB27_105 Depth=1
	add	r2, -1
	mov	r3, r0
	mov	r1, 3
	add	r3, 1
	call	__bit_and
	mov	r1, -4
	mov	r6, rax
	call	__bit_and
	mov	r7, rax
	mov	t1, [r7]
	mov	r1, 3
	mov	r0, r6
	call	__bit_shl
	mov	r0, 255
	mov	r6, rax
	mov	r1, r6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	t1, rax
	mov	r1, r6
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	r1, 3
	mov	[r7], rax
	mov	r0, r5
	call	__bit_and
	add	r5, 1
	mov	r0, r3
	jnz	rax, .LBB27_105
	jmp	.LBB27_107
.LBB27_107:                             // %.loopexit7.i56
	mov	r1, -2147483648
	mov	r0, r2
	call	__bit_xor
	mov	r0, -2147483644
	jl	rax, r0, .LBB27_114
	jmp	.LBB27_108
.LBB27_108:
	mov	r0, r2
	call	__bit_xor
	mov	r0, -2147483632
	jl	rax, r0, .LBB27_110
	jmp	.LBB27_109
.LBB27_109:                             // %.preheader.i58.preheader
	mov	r5, -2147483633
	jmp	.LBB27_112
.LBB27_110:                             // %.preheader450
	mov	r5, -2147483645
	jmp	.LBB27_113
.LBB27_111:
	mov	r0, 3
	jg	r2, r0, .LBB27_110
	jmp	.LBB27_114
.LBB27_112:                             // %.preheader.i58
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r3
	add	r0, 4
	mov	[r3], 808464432
	mov	r1, r3
	add	r1, 8
	mov	[r0], 808464432
	mov	r0, r3
	add	r0, 12
	mov	[r1], 808464432
	add	r3, 16
	add	r2, -16
	mov	r1, -2147483648
	mov	[r0], 808464432
	mov	r0, r2
	call	__bit_xor
	jg	rax, r5, .LBB27_112
	jmp	.LBB27_111
.LBB27_113:                             // =>This Inner Loop Header: Depth=1
	mov	[r3], 808464432
	add	r2, -4
	add	r3, 4
	mov	r0, r2
	call	__bit_xor
	jg	rax, r5, .LBB27_113
	jmp	.LBB27_114
.LBB27_114:                             // %.loopexit5.i57
	jz	r2, .LBB27_117
	jmp	.LBB27_115
.LBB27_115:                             // %.preheader83.preheader
	mov	r7, r3
.LBB27_116:                             // %.preheader83
                                        // =>This Inner Loop Header: Depth=1
	add	r2, -1
	mov	r1, 3
	add	r7, 1
	mov	r0, r3
	call	__bit_and
	mov	r1, -4
	mov	r5, rax
	call	__bit_and
	mov	r3, rax
	mov	r6, [r3]
	mov	r1, 3
	mov	r0, r5
	call	__bit_shl
	mov	r0, 255
	mov	r5, rax
	mov	r1, r5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	r6, rax
	mov	r1, r5
	call	__bit_shl
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	mov	r3, r7
	jnz	r2, .LBB27_116
	jmp	.LBB27_117
.LBB27_117:                             // %memset.exit59
	add	r4, t6
	jmp	.LBB27_183
.LBB27_118:                             // =>This Loop Header: Depth=1
                                        //     Child Loop BB27_127 Depth 2
                                        //     Child Loop BB27_130 Depth 2
	mov	x14, t6
	add	t6, 1
	mov	x15, r2
	mov	r0, r2
	mov	r1, t6
	mov	r2, rsp
	call	ryu_fill_pow10_split_2_exp
	mov	r0, [rsp-24]
	mov	x0, [r0]
	mov	x2, [rsp]
	mov	r1, 0
	mov	r3, 0
	mov	r0, x0
	mov	r2, r7
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
	mov	r2, t1
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
	mov	r0, x0
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
	add	x5, r2
	mov	r0, [rsp-25]
	mov	r0, [r0]
	mov	r1, [rsp-26]
	mov	x0, [r1]
	mov	r1, 0
	add	x5, x2
	mov	r2, r7
	call	__muldi3
	mov	x6, rax
	mov	x1, t0
	mov	r2, t1
	call	__muldi3
	mov	x7, rax
	mov	x8, t0
	mov	r0, x0
	mov	r2, r7
	call	__muldi3
	mov	x9, rax
	mov	x10, t0
	mov	r2, t1
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
	mov	x0, t0
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
	mov	r0, [t7]
	mov	x5, [t3]
	mov	r1, 0
	mov	r3, 0
	mov	x4, rax
	mov	r2, r7
	call	__muldi3
	mov	x6, rax
	mov	x7, t0
	mov	r2, t1
	call	__muldi3
	mov	x8, rax
	mov	x9, t0
	mov	r0, x5
	mov	r2, r7
	call	__muldi3
	mov	x10, rax
	mov	x11, t0
	mov	r2, t1
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
	mov	r2, x0
	call	__adddi3
	mov	r2, 0
	mov	x0, rax
	mov	x1, t0
	mov	r0, x0
	mov	r1, x1
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
	mov	r0, x0
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
	mov	r2, x0
	mov	r3, x1
	call	__adddi3
	je	x14, t4, .LBB27_131
	jmp	.LBB27_119
.LBB27_119:                             //   in Loop: Header=BB27_118 Depth=1
	mov	r2, r5
	add	r2, r4
	jz	rax, .LBB27_121
	jmp	.LBB27_120
.LBB27_120:                             // %memcpy.exit60
                                        //   in Loop: Header=BB27_118 Depth=1
	mov	x4, r2
	mov	r1, 10000
	add	x4, 7
	mov	r0, rax
	mov	r3, rax
	call	__udivsi3
	mov	x0, rax
	mov	r0, x0
	mul	r0, -10000
	add	r0, r3
	mov	r1, 100
	call	__udivsi3
	mov	x1, rax
	mov	t0, x1
	mul	t0, -100
	add	t0, r0
	mov	r1, 1
	mov	r0, t0
	call	__bit_shl
	mov	r0, rax
	add	r0, x13
	mov	x2, r0
	mov	r1, 2
	add	x2, 1
	call	__bit_shr
	mov	r1, 3
	mov	x3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	x5, rax
	mov	x3, r2
	mov	r1, 3
	add	x3, 8
	mov	r0, x4
	call	__bit_and
	mov	r1, -4
	mov	x6, rax
	call	__bit_and
	mov	x4, rax
	mov	x7, [x4]
	mov	r1, 3
	mov	r0, x6
	call	__bit_shl
	mov	r0, 255
	mov	x6, rax
	mov	r1, x6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x7
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x7, rax
	mov	r0, x5
	call	__bit_and
	mov	r0, rax
	mov	r1, x6
	call	__bit_shl
	mov	r0, x7
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	[x4], rax
	mov	r0, x2
	call	__bit_shr
	mov	r1, 3
	mov	x4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	x2, rax
	mov	r0, x3
	call	__bit_and
	mov	r1, -4
	mov	x4, rax
	call	__bit_and
	mov	x3, rax
	mov	x5, [x3]
	mov	r1, 3
	mov	r0, x4
	call	__bit_shl
	mov	r0, 255
	mov	x4, rax
	mov	r1, x4
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x5
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x2
	call	__bit_and
	mov	r0, rax
	mov	r1, x4
	call	__bit_shl
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	[x3], rax
	mov	x3, r2
	mov	r1, 1
	add	x3, 5
	mov	r0, x1
	call	__bit_shl
	mov	r0, rax
	add	r0, x13
	mov	x1, r0
	mov	r1, 2
	add	x1, 1
	call	__bit_shr
	mov	r1, 3
	mov	x2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	x4, rax
	mov	x2, r2
	mov	r1, 3
	add	x2, 6
	mov	r0, x3
	call	__bit_and
	mov	r1, -4
	mov	x5, rax
	call	__bit_and
	mov	x3, rax
	mov	x6, [x3]
	mov	r1, 3
	mov	r0, x5
	call	__bit_shl
	mov	r0, 255
	mov	x5, rax
	mov	r1, x5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x6
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x6, rax
	mov	r0, x4
	call	__bit_and
	mov	r0, rax
	mov	r1, x5
	call	__bit_shl
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	[x3], rax
	mov	r0, x1
	call	__bit_shr
	mov	r1, 3
	mov	x3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	x1, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, -4
	mov	x3, rax
	call	__bit_and
	mov	x2, rax
	mov	x4, [x2]
	mov	r1, 3
	mov	r0, x3
	call	__bit_shl
	mov	r0, 255
	mov	x3, rax
	mov	r1, x3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x4
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x1
	call	__bit_and
	mov	r0, rax
	mov	r1, x3
	call	__bit_shl
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	r1, 100000000
	mov	[x2], rax
	mov	r0, r3
	call	__udivsi3
	mov	r3, rax
	mov	r0, r3
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
	mov	r0, rax
	mov	x3, r2
	add	r0, x13
	add	x3, 3
	mov	x1, r0
	mov	r1, 2
	add	x1, 1
	call	__bit_shr
	mov	r1, 3
	mov	x2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	x4, rax
	mov	x2, r2
	mov	r1, 3
	add	x2, 4
	mov	r0, x3
	call	__bit_and
	mov	r1, -4
	mov	x5, rax
	call	__bit_and
	mov	x3, rax
	mov	x6, [x3]
	mov	r1, 3
	mov	r0, x5
	call	__bit_shl
	mov	r0, 255
	mov	x5, rax
	mov	r1, x5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x6
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x6, rax
	mov	r0, x4
	call	__bit_and
	mov	r0, rax
	mov	r1, x5
	call	__bit_shl
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	[x3], rax
	mov	r0, x1
	call	__bit_shr
	mov	r1, 3
	mov	x3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	x1, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, -4
	mov	x3, rax
	call	__bit_and
	mov	x2, rax
	mov	x4, [x2]
	mov	r1, 3
	mov	r0, x3
	call	__bit_shl
	mov	r0, 255
	mov	x3, rax
	mov	r1, x3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x4
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x1
	call	__bit_and
	mov	r0, rax
	mov	r1, x3
	call	__bit_shl
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	[x2], rax
	mov	r0, x0
	call	__bit_shl
	mov	r0, rax
	add	r0, x13
	mov	x1, r2
	add	x1, 1
	mov	x0, r0
	mov	r1, 2
	add	x0, 1
	call	__bit_shr
	mov	r1, 3
	mov	x2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, -4
	mov	x3, rax
	call	__bit_and
	mov	x1, rax
	mov	x4, [x1]
	mov	r1, 3
	mov	r0, x3
	call	__bit_shl
	mov	r0, 255
	mov	x3, rax
	mov	r1, x3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x4
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x2
	call	__bit_and
	mov	r0, rax
	mov	r1, x3
	call	__bit_shl
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	[x1], rax
	mov	x1, r2
	mov	r1, 2
	add	x1, 2
	mov	r0, x0
	call	__bit_shr
	mov	r1, 3
	mov	x2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	x0, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, -4
	mov	x2, rax
	call	__bit_and
	mov	x1, rax
	mov	x3, [x1]
	mov	r1, 3
	mov	r0, x2
	call	__bit_shl
	mov	r0, 255
	mov	x2, rax
	mov	r1, x2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x3
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x0
	call	__bit_and
	mov	r0, rax
	mov	r1, x2
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	[x1], rax
	mov	r1, 3
	add	r3, 48
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	x0, rax
	call	__bit_and
	mov	r2, rax
	mov	x1, [r2]
	mov	r1, 3
	mov	r0, x0
	call	__bit_shl
	mov	r0, 255
	mov	x0, rax
	mov	r1, x0
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x1
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x1, rax
	mov	r0, r3
	call	__bit_and
	mov	r0, rax
	mov	r1, x0
	call	__bit_shl
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	[r2], rax
	jmp	.LBB27_149
.LBB27_121:                             //   in Loop: Header=BB27_118 Depth=1
	mov	r1, 3
	mov	r0, r2
	call	__bit_and
	mov	x0, 9
	mov	r3, r2
	jz	rax, .LBB27_126
	jmp	.LBB27_122
.LBB27_122:                             // %.preheader88.preheader
                                        //   in Loop: Header=BB27_118 Depth=1
	mov	r3, r2
	add	r3, 1
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	x0, rax
	call	__bit_and
	mov	x1, rax
	mov	x2, [x1]
	mov	r1, 3
	mov	r0, x0
	call	__bit_shl
	mov	r0, 255
	mov	x0, rax
	mov	r1, x0
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x2
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	x2, rax
	mov	r1, x0
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r1, 3
	mov	[x1], rax
	mov	r0, r3
	call	__bit_and
	mov	x0, 8
	jz	rax, .LBB27_126
	jmp	.LBB27_123
.LBB27_123:                             // %.preheader88.1
                                        //   in Loop: Header=BB27_118 Depth=1
	mov	x1, r2
	add	x1, 2
	mov	r0, r3
	call	__bit_and
	mov	r1, -4
	mov	x0, rax
	call	__bit_and
	mov	r3, rax
	mov	x2, [r3]
	mov	r1, 3
	mov	r0, x0
	call	__bit_shl
	mov	r0, 255
	mov	x0, rax
	mov	r1, x0
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x2
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	x2, rax
	mov	r1, x0
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r1, 3
	mov	[r3], rax
	mov	r0, x1
	call	__bit_and
	mov	x0, 7
	mov	r3, x1
	jz	rax, .LBB27_126
	jmp	.LBB27_124
.LBB27_124:                             // %.preheader88.2
                                        //   in Loop: Header=BB27_118 Depth=1
	mov	r3, r2
	add	r3, 3
	mov	r0, x1
	call	__bit_and
	mov	r1, -4
	mov	x0, rax
	call	__bit_and
	mov	x1, rax
	mov	x2, [x1]
	mov	r1, 3
	mov	r0, x0
	call	__bit_shl
	mov	r0, 255
	mov	x0, rax
	mov	r1, x0
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x2
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	x2, rax
	mov	r1, x0
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r1, 3
	mov	[x1], rax
	mov	r0, r3
	call	__bit_and
	mov	x0, 6
	jz	rax, .LBB27_126
	jmp	.LBB27_125
.LBB27_125:                             // %.preheader88.3
                                        //   in Loop: Header=BB27_118 Depth=1
	add	r2, 4
	mov	r0, r3
	call	__bit_and
	mov	r1, -4
	mov	x0, rax
	call	__bit_and
	mov	r3, rax
	mov	x1, [r3]
	mov	r1, 3
	mov	r0, x0
	call	__bit_shl
	mov	r0, 255
	mov	x0, rax
	mov	r1, x0
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x1
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	x1, rax
	mov	r1, x0
	call	__bit_shl
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	mov	x0, 5
	mov	r3, r2
.LBB27_126:                             // %.thread73.preheader
                                        //   in Loop: Header=BB27_118 Depth=1
.LBB27_127:                             // %.thread73
                                        //   Parent Loop BB27_118 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	[r3], 808464432
	add	x0, -4
	mov	r1, -2147483648
	add	r3, 4
	mov	r0, x0
	call	__bit_xor
	jg	rax, t2, .LBB27_127
	jmp	.LBB27_128
.LBB27_128:                             // %.loopexit5.i65
                                        //   in Loop: Header=BB27_118 Depth=1
	jz	x0, .LBB27_149
	jmp	.LBB27_129
.LBB27_129:                             // %.preheader87.preheader
                                        //   in Loop: Header=BB27_118 Depth=1
	mov	x3, 0
.LBB27_130:                             // %.preheader87
                                        //   Parent Loop BB27_118 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, r3
	add	r0, x3
	mov	r1, 3
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	x1, rax
	mov	x2, [x1]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x2
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	x2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	add	x3, 1
	mov	[x1], rax
	je	x0, x3, .LBB27_149
	jmp	.LBB27_130
.LBB27_131:
	mov	t6, rax
	mul	t4, -9
	add	t4, r6
	mov	r1, 9
	mov	r0, 0
	mov	t2, [rsp-23]
	je	t4, r1, .LBB27_135
	jmp	.LBB27_132
.LBB27_132:
	mov	r0, 1
	mov	r2, [rsp-27]
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
	mov	rax, t6
	mov	r1, 10
	jmp	.LBB27_134
.LBB27_133:
	mov	t6, rax
	mov	r0, rax
	mul	r0, -10
	add	r0, r3
	mov	r1, 5
	je	r0, r1, .LBB27_136
	jmp	.LBB27_135
.LBB27_134:                             // =>This Inner Loop Header: Depth=1
	mov	r3, rax
	mov	r0, r3
	call	__udivsi3
	add	r2, -1
	jz	r2, .LBB27_133
	jmp	.LBB27_134
.LBB27_135:
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
	jmp	.LBB27_142
.LBB27_136:
	mov	r0, r6
	call	__bit_not
	mov	r3, rax
	sub	r3, t2
	mov	r0, 1
	mov	r2, 2
	jl	r3, r0, .LBB27_142
	jmp	.LBB27_137
.LBB27_137:
	mov	r0, 59
	mov	r2, 1
	jg	r3, r0, .LBB27_142
	jmp	.LBB27_138
.LBB27_138:
	mov	r0, r7
	mov	r1, t1
	call	__bit_or
	jnz	rax, .LBB27_140
	jmp	.LBB27_139
.LBB27_139:
	call	abort
.LBB27_140:
	mov	r1, 31
	mov	r0, r3
	call	__bit_and
	mov	r2, rax
	mov	r1, 0
	sub	r1, r2
	mov	r6, 0
	mov	r0, r2
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	add	r3, -32
	mov	t2, rax
	mov	r0, r3
	call	__bit_shr
	mov	r0, -1
	mov	r3, rax
	mov	r1, r2
	call	__bit_shl
	mov	t3, 0
	sub	t3, r3
	mov	r3, rax
	mov	r0, t3
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
	sub	r6, t2
	mov	r0, rax
	mov	r1, r6
	call	__bit_and
	mov	r0, r3
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, t3
	call	__bit_and
	mov	r0, rax
	mov	r1, r2
	call	__bit_or
	mov	r2, rax
	mov	r0, r3
	mov	r1, t3
	call	__bit_and
	mov	r1, rax
	mov	r0, r2
	call	__bit_not
	mov	r2, rax
	mov	r0, r1
	call	__bit_not
	mov	r3, rax
	mov	r0, t1
	mov	r1, r2
	call	__bit_and
	mov	r2, rax
	mov	r0, r7
	mov	r1, r3
	call	__bit_and
	mov	r0, rax
	mov	r1, r2
	call	__bit_or
	mov	r2, 2
	jz	rax, .LBB27_142
	jmp	.LBB27_141
.LBB27_141:
	mov	r2, 1
.LBB27_142:
	jz	t4, .LBB27_151
	jmp	.LBB27_143
.LBB27_143:
	mov	r6, t4
	add	r6, -1
	mov	r3, 0
	mov	r7, t6
	jz	r6, .LBB27_146
	jmp	.LBB27_144
.LBB27_144:
	mov	x0, mcasm_static_29af82f542537f86f33d7b3d416ba898
	mov	r0, r7
.LBB27_145:                             // %memcpy.exit68
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 100
	call	__udivsi3
	mov	r7, rax
	mov	r1, r7
	mul	r1, -100
	add	r0, r1
	mov	r1, 1
	call	__bit_shl
	mov	r0, rax
	mov	t2, t5
	add	r0, x0
	add	t2, -1
	mov	t1, r0
	mov	r1, 2
	add	t1, 1
	call	__bit_shr
	mov	r1, 3
	mov	t3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	t3, rax
	mov	r0, t2
	call	__bit_and
	mov	r1, -4
	mov	t6, rax
	call	__bit_and
	mov	t2, rax
	mov	t7, [t2]
	mov	r1, 3
	mov	r0, t6
	call	__bit_shl
	mov	r0, 255
	mov	t6, rax
	mov	r1, t6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t7
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t7, rax
	mov	r0, t3
	call	__bit_and
	mov	r0, rax
	mov	r1, t6
	call	__bit_shl
	mov	r0, t7
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	[t2], rax
	mov	r0, t1
	call	__bit_shr
	mov	r1, 3
	mov	t2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	t1, rax
	mov	r0, t5
	call	__bit_and
	mov	r1, -4
	mov	t2, rax
	call	__bit_and
	mov	t3, rax
	mov	t6, [t3]
	mov	r1, 3
	mov	r0, t2
	call	__bit_shl
	mov	r0, 255
	mov	t2, rax
	mov	r1, t2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t6
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t6, rax
	mov	r0, t1
	call	__bit_and
	mov	r0, rax
	mov	r1, t2
	call	__bit_shl
	mov	r0, t6
	mov	r1, rax
	call	__bit_or
	mov	[t3], rax
	add	r3, 2
	mov	r1, -2147483648
	add	t5, -2
	mov	r0, r6
	call	__bit_xor
	mov	t1, rax
	mov	r0, r3
	call	__bit_xor
	mov	r0, r7
	jl	rax, t1, .LBB27_145
	jmp	.LBB27_146
.LBB27_146:                             // %.loopexit
	mov	r6, r7
	mov	r1, -2147483648
	mov	r0, t4
	call	__bit_xor
	mov	r7, rax
	mov	r0, r3
	call	__bit_xor
	jge	rax, r7, .LBB27_148
	jmp	.LBB27_147
.LBB27_147:
	mov	r7, r5
	mov	r1, 10
	add	r7, r4
	mov	r0, r6
	call	__umodsi3
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	r6, rax
	mov	r0, r3
	call	__bit_not
	add	r7, t4
	add	r7, rax
	mov	r1, 3
	mov	r0, r7
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	r7, rax
	mov	t1, [r7]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r0, 255
	mov	r3, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t1, rax
	mov	r0, r6
	call	__bit_and
	mov	r0, rax
	mov	r1, r3
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	[r7], rax
.LBB27_148:
	add	r4, t4
	jmp	.LBB27_151
.LBB27_149:                             // %memset.exit67
                                        //   in Loop: Header=BB27_118 Depth=1
	add	r4, 9
	add	t5, 9
	mov	r2, x15
	jge	t6, t4, .LBB27_118
	jmp	.LBB27_150
.LBB27_150:                             // %memset.exit67
                                        //   in Loop: Header=BB27_118 Depth=1
	mov	r0, t6
	mul	r0, 9
	add	r0, 9
	jg	r0, r2, .LBB27_103
	jmp	.LBB27_118
.LBB27_151:
	jz	r2, .LBB27_183
	jmp	.LBB27_152
.LBB27_152:
	jz	r4, .LBB27_154
	jmp	.LBB27_153
.LBB27_153:                             // %.preheader86.preheader
	mov	t2, r5
	add	t2, -1
	mov	r3, 0
	mov	t3, 46
	mov	t4, 57
	mov	r6, r4
	mov	t5, r6
	jmp	.LBB27_155
.LBB27_154:
	mov	r1, 3
	mov	r0, r5
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r3, rax
	mov	r6, [r3]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	r0, 49
	mov	r6, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	jmp	.LBB27_162
.LBB27_155:                             // %.preheader86
                                        // =>This Inner Loop Header: Depth=1
	mov	r7, t2
	add	r7, r6
	mov	r1, 2
	add	t5, -1
	mov	r0, r7
	call	__bit_shr
	mov	r1, 3
	mov	t1, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t1]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	je	rax, t3, .LBB27_158
	jmp	.LBB27_156
.LBB27_156:                             // %.preheader86
                                        //   in Loop: Header=BB27_155 Depth=1
	je	rax, t4, .LBB27_163
	jmp	.LBB27_157
.LBB27_157:                             // %.preheader86
	mov	r0, 45
	je	rax, r0, .LBB27_159
	jmp	.LBB27_164
.LBB27_158:                             // %.preheader86._crit_edge27
                                        //   in Loop: Header=BB27_155 Depth=1
	mov	r3, t5
	jmp	.LBB27_167
.LBB27_159:                             // %.preheader86._crit_edge
	mov	r0, r6
.LBB27_160:
	add	r0, r5
	mov	r1, 3
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r6, rax
	mov	r7, [r6]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r0, 49
	mov	r7, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	r0, 1
	mov	[r6], rax
	jl	r3, r0, .LBB27_162
	jmp	.LBB27_161
.LBB27_161:
	add	r3, r5
	mov	r1, 3
	mov	r0, r3
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r6, rax
	mov	r7, [r6]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	r7, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	add	r3, 1
	mov	r1, 3
	mov	[r6], rax
	mov	r0, r3
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r3, rax
	mov	r6, [r3]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	r0, 46
	mov	r6, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
.LBB27_162:
	add	r5, r4
	mov	r1, 3
	add	r4, 1
	mov	r0, r5
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r3, rax
	mov	r5, [r3]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	r5, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	jmp	.LBB27_183
.LBB27_163:                             //   in Loop: Header=BB27_155 Depth=1
	mov	r1, 3
	mov	r0, r7
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r6, rax
	mov	r7, [r6]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	r7, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	[r6], rax
	mov	r2, 1
	jmp	.LBB27_167
.LBB27_164:
	mov	r1, 1
	mov	r3, rax
	mov	r0, rax
	call	__bit_and
	mov	r0, 2
	jne	r2, r0, .LBB27_166
	jmp	.LBB27_165
.LBB27_165:
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB27_183
	jmp	.LBB27_166
.LBB27_166:
	add	r6, r5
	add	r6, -1
	mov	r1, 3
	mov	r2, r3
	add	r2, 1
	mov	r0, r6
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	r5, rax
	mov	r6, [r5]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r1, 255
	mov	r3, rax
	mov	r0, r2
	call	__bit_and
	mov	r0, 255
	mov	r2, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	r6, rax
	mov	r0, r2
	call	__bit_and
	mov	r0, rax
	mov	r1, r3
	call	__bit_shl
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	[r5], rax
	jmp	.LBB27_183
.LBB27_167:                             //   in Loop: Header=BB27_155 Depth=1
	mov	r0, 0
	mov	r6, t5
	jz	t5, .LBB27_160
	jmp	.LBB27_155
.LBB27_168:
	mov	r3, r5
	add	r3, r4
	mov	r1, 3
	mov	r0, r3
	call	__bit_and
	mov	r2, r6
	jz	rax, .LBB27_172
	jmp	.LBB27_169
.LBB27_169:                             // %.preheader92.preheader
	add	r5, r4
	add	r5, 1
	mov	r0, r3
	mov	r2, r6
.LBB27_170:                             // %.preheader92
                                        // =>This Inner Loop Header: Depth=1
	jz	r2, .LBB27_182
	jmp	.LBB27_171
.LBB27_171:                             //   in Loop: Header=BB27_170 Depth=1
	add	r2, -1
	mov	r3, r0
	mov	r1, 3
	add	r3, 1
	call	__bit_and
	mov	r1, -4
	mov	r7, rax
	call	__bit_and
	mov	t1, rax
	mov	t2, [t1]
	mov	r1, 3
	mov	r0, r7
	call	__bit_shl
	mov	r0, 255
	mov	r7, rax
	mov	r1, r7
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t2
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	t2, rax
	mov	r1, r7
	call	__bit_shl
	mov	r0, t2
	mov	r1, rax
	call	__bit_or
	mov	r1, 3
	mov	[t1], rax
	mov	r0, r5
	call	__bit_and
	add	r5, 1
	mov	r0, r3
	jnz	rax, .LBB27_170
	jmp	.LBB27_172
.LBB27_172:                             // %.loopexit7.i69
	mov	r1, -2147483648
	mov	r0, r2
	call	__bit_xor
	mov	r0, -2147483644
	jl	rax, r0, .LBB27_179
	jmp	.LBB27_173
.LBB27_173:
	mov	r0, r2
	call	__bit_xor
	mov	r0, -2147483632
	jl	rax, r0, .LBB27_175
	jmp	.LBB27_174
.LBB27_174:                             // %.preheader.i71.preheader
	mov	r5, -2147483633
	jmp	.LBB27_177
.LBB27_175:                             // %.preheader481
	mov	r5, -2147483645
	jmp	.LBB27_178
.LBB27_176:
	mov	r0, 3
	jg	r2, r0, .LBB27_175
	jmp	.LBB27_179
.LBB27_177:                             // %.preheader.i71
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r3
	add	r0, 4
	mov	[r3], 808464432
	mov	r1, r3
	add	r1, 8
	mov	[r0], 808464432
	mov	r0, r3
	add	r0, 12
	mov	[r1], 808464432
	add	r3, 16
	add	r2, -16
	mov	r1, -2147483648
	mov	[r0], 808464432
	mov	r0, r2
	call	__bit_xor
	jg	rax, r5, .LBB27_177
	jmp	.LBB27_176
.LBB27_178:                             // =>This Inner Loop Header: Depth=1
	mov	[r3], 808464432
	add	r2, -4
	add	r3, 4
	mov	r0, r2
	call	__bit_xor
	jg	rax, r5, .LBB27_178
	jmp	.LBB27_179
.LBB27_179:                             // %.loopexit5.i70
	jz	r2, .LBB27_182
	jmp	.LBB27_180
.LBB27_180:                             // %.preheader91.preheader
	mov	t1, r3
.LBB27_181:                             // %.preheader91
                                        // =>This Inner Loop Header: Depth=1
	add	r2, -1
	mov	r1, 3
	add	t1, 1
	mov	r0, r3
	call	__bit_and
	mov	r1, -4
	mov	r5, rax
	call	__bit_and
	mov	r3, rax
	mov	r7, [r3]
	mov	r1, 3
	mov	r0, r5
	call	__bit_shl
	mov	r0, 255
	mov	r5, rax
	mov	r1, r5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	r7, rax
	mov	r1, r5
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	mov	r3, t1
	jnz	r2, .LBB27_181
	jmp	.LBB27_182
.LBB27_182:                             // %memset.exit72
	add	r4, r6
.LBB27_183:                             // %memcpy.exit38
	mov	rax, r4
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
	jg	r5, r0, .LBB28_2
	jmp	.LBB28_1
.LBB28_1:
	mov	[r4], 1
	mov	r0, r4
	add	r0, 4
	mov	[r0], 0
	mov	r0, r4
	add	r0, 8
	mov	r1, r4
	add	r1, 12
	mov	[r1], 0
	mov	[r0], 0
	mov	r0, r4
	add	r0, 16
	add	r4, 20
	mov	[r4], 0
	mov	[r0], 0
	jmp	.LBB28_19
.LBB28_2:
	mov	r6, rsp
	mov	r7, rsp
	mov	t1, rsp
	mov	t3, rsp
	mov	t2, rsp
	mov	t5, rsp
	mov	t4, rsp
	mov	t6, rsp
	add	r6, 4
	add	r7, 8
	mov	[r7], 0
	mov	[r6], 0
	add	t1, 12
	add	t3, 16
	mov	[t3], 0
	mov	[t1], 0
	add	t2, 20
	add	t5, 24
	mov	[t5], 0
	mov	[t2], 0
	add	t4, 28
	add	t6, 32
	mov	[t6], -2147483648
	mov	[t4], 0
	mov	r0, -255
	jz	r3, .LBB28_9
	jmp	.LBB28_3
.LBB28_3:
	mov	[rsp], -255
	mov	[r7], 0
	mov	[r6], 0
	mov	[t3], 0
	mov	[t1], 0
	mov	[t5], 0
	mov	[t2], 0
	mov	[t6], -2147483648
	mov	[t4], 0
	mov	[rsp], -276
	mov	[r7], -209245859
	mov	[r6], 606470823
	mov	[t3], -36215714
	mov	[t1], 18528969
	mov	[t5], 828902024
	mov	[t2], -124440528
	mov	[t6], -1989124287
	mov	[t4], 917808535
.LBB28_4:                               // =>This Inner Loop Header: Depth=1
	mov	r1, 1
	mov	r0, r3
	call	__bit_and
	jz	rax, .LBB28_6
	jmp	.LBB28_5
.LBB28_5:                               //   in Loop: Header=BB28_4 Depth=1
	mov	r0, rsp
	mov	r1, rsp
	mov	r2, rsp
	call	ryu_dyadic256_quick_mul
	mov	r0, [t6]
	mov	[t6], r0
	mov	r0, [t4]
	mov	r1, [t5]
	mov	r2, [t2]
	mov	t0, [t3]
	mov	[t4], r0
	mov	[t5], r1
	mov	[t2], r2
	mov	[t3], t0
	mov	r0, [t1]
	mov	r1, [r7]
	mov	r2, [r6]
	mov	t0, [rsp]
	mov	[t1], r0
	mov	[r7], r1
	mov	[r6], r2
	mov	[rsp], t0
.LBB28_6:                               //   in Loop: Header=BB28_4 Depth=1
	mov	r1, 1
	mov	r0, r3
	call	__bit_shr
	mov	r3, rax
	jz	r3, .LBB28_8
	jmp	.LBB28_7
.LBB28_7:                               //   in Loop: Header=BB28_4 Depth=1
	mov	r0, rsp
	mov	r1, rsp
	mov	r2, rsp
	call	ryu_dyadic256_quick_mul
	mov	r0, [t6]
	mov	[t6], r0
	mov	r0, [t4]
	mov	r1, [t5]
	mov	r2, [t2]
	mov	t0, [t3]
	mov	[t4], r0
	mov	[t5], r1
	mov	[t2], r2
	mov	[t3], t0
	mov	r0, [t1]
	mov	r1, [r7]
	mov	r2, [r6]
	mov	t0, [rsp]
	mov	[t1], r0
	mov	[r7], r1
	mov	[r6], r2
	mov	[rsp], t0
	jmp	.LBB28_4
.LBB28_8:
	mov	r0, [r6]
	mov	r1, [r7]
	mov	r2, [t1]
	mov	[r6], r0
	mov	r0, [t3]
	mov	[r7], r1
	mov	[t1], r2
	mov	r1, [t6]
	mov	[t3], r0
	mov	r2, [t2]
	mov	r0, [rsp]
	mov	[t6], r1
	mov	r1, [t5]
	mov	r3, [t4]
	mov	[rsp], r0
	mov	r0, [rsp]
	mov	[t2], r2
	mov	[t5], r1
	mov	[t4], r3
.LBB28_9:
	add	r0, r5
	mov	[rsp], r0
	mov	r0, rsp
	mov	r1, rsp
	call	ryu_dyadic256_as_mantissa_type
	mov	r1, [r6]
	mov	r0, [rsp]
	mov	r2, 1
	mov	r3, 0
	call	__adddi3
	mov	r6, rax
	mov	r5, t0
	call	__bit_and
	mov	t1, [t1]
	mov	r7, [r7]
	mov	r0, -1
	jne	rax, r0, .LBB28_13
	jmp	.LBB28_10
.LBB28_10:
	mov	r0, r7
	mov	r1, t1
	call	__adddi3
	mov	r7, rax
	mov	t1, t0
	mov	r0, r7
	mov	r1, t1
	call	__bit_or
	jnz	rax, .LBB28_13
	jmp	.LBB28_11
.LBB28_11:
	mov	r1, [t2]
	mov	r0, [t3]
	call	__adddi3
	mov	r1, t0
	mov	[t2], r1
	mov	[t3], rax
	mov	r0, rax
	call	__bit_or
	mov	r7, 0
	mov	t1, 0
	jnz	rax, .LBB28_13
	jmp	.LBB28_12
.LBB28_12:
	mov	r1, [t4]
	mov	r0, [t5]
	call	__adddi3
	mov	[t4], t0
	mov	[t5], rax
.LBB28_13:
	mov	t2, [t2]
	mov	t4, [t4]
	mov	t5, [t5]
	mov	t3, [t3]
	mov	r0, t5
	mov	r1, t4
	call	__bit_or
	jnz	rax, .LBB28_17
	jmp	.LBB28_14
.LBB28_14:
	mov	r1, 1000000000
	mov	r0, t3
	call	__bit_xor
	mov	r0, rax
	mov	r1, t2
	call	__bit_or
	jnz	rax, .LBB28_16
	jmp	.LBB28_15
.LBB28_15:
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
	jz	r0, .LBB28_18
	jmp	.LBB28_17
.LBB28_16:
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
	jnz	r0, .LBB28_18
	jmp	.LBB28_17
.LBB28_17:
	mov	r2, 1000000000
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
.LBB28_18:
	mov	[r4], r6
	mov	r0, r4
	add	r0, 4
	mov	[r0], r5
	mov	r0, r4
	add	r0, 8
	mov	r1, r4
	add	r1, 12
	mov	[r1], t1
	mov	[r0], r7
	mov	r0, r4
	add	r0, 16
	add	r4, 20
	mov	[r4], t2
	mov	[r0], rax
.LBB28_19:
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
	add	r1, 4
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
	add	r0, 4
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
	add	r1, 12
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
	add	r0, 12
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
	add	t4, 20
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
	add	r0, 20
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
	add	r0, 28
	mov	[r0], r2
	mov	[x7], t2
	mov	x1, t2
	mov	x2, r2
	jz	t1, .LBB29_17
	jmp	.LBB29_1
.LBB29_1:
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
	jg	rax, r0, .LBB29_17
	jmp	.LBB29_2
.LBB29_2:
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
	add	t5, rsp
	mov	r4, [t5]
	mov	r0, t5
	add	r0, 4
	mov	r5, [r0]
	jnz	t3, .LBB29_6
	jmp	.LBB29_3
.LBB29_3:
	mov	r0, 191
	jg	t1, r0, .LBB29_17
	jmp	.LBB29_4
.LBB29_4:
	mov	r0, t5
	add	r0, 8
	mov	r1, t5
	add	r1, 12
	mov	r6, [r1]
	mov	r7, [r0]
	mov	r0, 127
	jg	t1, r0, .LBB29_17
	jmp	.LBB29_5
.LBB29_5:
	mov	r0, t5
	add	r0, 16
	add	t5, 20
	mov	t7, [t5]
	mov	x0, [r0]
	jmp	.LBB29_17
.LBB29_6:
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
	je	r3, x3, .LBB29_8
	jmp	.LBB29_7
.LBB29_7:
	mov	r0, t5
	add	r0, 8
	mov	r1, t5
	add	r1, 12
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
.LBB29_8:
	mov	r0, 191
	mov	r7, 0
	mov	x0, 0
	mov	t7, 0
	jg	t1, r0, .LBB29_15
	jmp	.LBB29_9
.LBB29_9:
	mov	x1, r3
	add	x1, 1
	mov	r1, 3
	mov	x6, 3
	mov	r0, x1
	call	__bit_shl
	mov	x2, rax
	add	x2, rsp
	mov	r6, [x2]
	mov	r0, x2
	add	r0, 4
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
	je	x1, x6, .LBB29_11
	jmp	.LBB29_10
.LBB29_10:
	mov	r0, x2
	add	r0, 8
	add	x2, 12
	mov	x2, [x2]
	mov	x3, [r0]
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
	mov	x4, rax
	call	__bit_shr
	mov	x5, rax
	mov	r0, x3
	mov	r1, x1
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
	mov	r0, x2
	mov	r1, x1
	call	__bit_shl
	sub	x0, x1
	mov	r1, 31
	mov	x1, rax
	mov	r0, x0
	call	__bit_and
	mov	r0, x3
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
	jg	t1, r0, .LBB29_15
	jmp	.LBB29_13
.LBB29_11:
	mov	x1, 0
	mov	r0, 127
	mov	x2, 0
	mov	x0, 0
	jg	t1, r0, .LBB29_17
	jmp	.LBB29_12
.LBB29_12:
	mov	r0, t5
	add	r0, 16
	mov	t1, [r0]
	mov	r0, t5
	add	r0, 20
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
	jmp	.LBB29_14
.LBB29_13:
	mov	r1, 31
	mov	r0, t3
	call	__bit_and
	mov	t1, rax
	mov	r1, 0
	sub	r1, t1
	mov	x1, 0
	mov	r0, t1
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	t7, rax
	mov	r0, t4
	call	__bit_shr
	mov	x0, rax
	mov	r0, x2
	mov	r1, t1
	call	__bit_shr
	mov	x4, 0
	sub	x4, x0
	mov	x5, rax
	mov	r0, x4
	call	__bit_not
	mov	r0, x5
	mov	r1, rax
	call	__bit_and
	mov	x0, rax
	mov	r0, x3
	mov	r1, t1
	call	__bit_shr
	mov	r0, 32
	sub	r0, t1
	mov	r1, 31
	mov	t1, rax
	call	__bit_and
	mov	r0, x2
	mov	r1, rax
	call	__bit_shl
	mov	r1, 0
	sub	r1, t7
	mov	r0, rax
	call	__bit_and
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x4
	call	__bit_and
	mov	r0, rax
	mov	r1, x0
	call	__bit_or
	mov	x0, rax
	mov	r0, x5
	mov	r1, x4
	call	__bit_and
	mov	t7, rax
	mov	r0, 1
	mov	x2, 0
	je	r3, r0, .LBB29_17
	jmp	.LBB29_14
.LBB29_14:
	mov	r0, t5
	add	r0, 24
	add	t5, 28
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
.LBB29_15:
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
	jz	r3, .LBB29_17
	jmp	.LBB29_16
.LBB29_16:
	mov	x1, 0
	mov	x2, 0
.LBB29_17:
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
	mov	t2, rsp
	mov	r6, rsp
	mov	t3, rsp
	mov	t4, rsp
	mov	t5, rsp
	mov	t6, rsp
	mov	r7, rsp
	mov	t7, rsp
	mov	[rsp], -255
	add	t2, 8
	mov	[t2], 0
	add	r6, 4
	mov	[r6], 0
	add	t3, 16
	mov	[t3], 0
	add	t4, 12
	mov	[t4], 0
	add	t5, 24
	mov	[t5], 0
	add	t6, 20
	mov	[t6], 0
	add	r7, 32
	mov	[r7], -2147483648
	add	t7, 28
	mov	[t7], 0
	mov	[rsp], -255
	mov	[t2], 0
	mov	[r6], 0
	mov	[t3], 0
	mov	[t4], 0
	mov	[t5], 0
	mov	[t6], 0
	mov	[r7], -2147483648
	mov	[t7], 0
	mov	[rsp], -226
	mov	[t2], 0
	mov	[r6], 0
	mov	[t3], 0
	mov	[t4], 0
	mov	[t5], 0
	mov	[t6], 0
	mov	[r7], -294967296
	mov	[t7], 0
.LBB30_1:                               // =>This Inner Loop Header: Depth=1
	mov	r1, 1
	mov	r0, r5
	call	__bit_and
	jz	rax, .LBB30_3
	jmp	.LBB30_2
.LBB30_2:                               //   in Loop: Header=BB30_1 Depth=1
	mov	r0, rsp
	mov	r1, rsp
	mov	r2, rsp
	call	ryu_dyadic256_quick_mul
	mov	r0, [r7]
	mov	[r7], r0
	mov	r0, [t7]
	mov	r1, [t5]
	mov	r2, [t6]
	mov	t0, [t3]
	mov	[t7], r0
	mov	[t5], r1
	mov	[t6], r2
	mov	[t3], t0
	mov	r0, [t4]
	mov	r1, [t2]
	mov	r2, [r6]
	mov	t0, [rsp]
	mov	[t4], r0
	mov	[t2], r1
	mov	[r6], r2
	mov	[rsp], t0
.LBB30_3:                               //   in Loop: Header=BB30_1 Depth=1
	mov	r1, 1
	mov	r0, r5
	call	__bit_shr
	mov	r5, rax
	jz	r5, .LBB30_5
	jmp	.LBB30_4
.LBB30_4:                               //   in Loop: Header=BB30_1 Depth=1
	mov	r0, rsp
	mov	r1, rsp
	mov	r2, rsp
	call	ryu_dyadic256_quick_mul
	mov	r0, [r7]
	mov	[r7], r0
	mov	r0, [t7]
	mov	r1, [t5]
	mov	r2, [t6]
	mov	t0, [t3]
	mov	[t7], r0
	mov	[t5], r1
	mov	[t6], r2
	mov	[t3], t0
	mov	r0, [t4]
	mov	r1, [t2]
	mov	r2, [r6]
	mov	t0, [rsp]
	mov	[t4], r0
	mov	[t2], r1
	mov	[r6], r2
	mov	[rsp], t0
	jmp	.LBB30_1
.LBB30_5:
	mov	r0, [r6]
	mov	r1, [t2]
	mov	r2, [t4]
	mov	[r6], r0
	mov	r0, [t3]
	mov	[t2], r1
	mov	[t4], r2
	mov	r1, [r7]
	mov	[t3], r0
	mov	r0, [t6]
	mov	r2, [rsp]
	mov	[r7], r1
	mov	r1, [t5]
	mov	r5, [t7]
	mov	[rsp], r2
	mov	r2, [rsp]
	mov	[t6], r0
	mov	[t5], r1
	mov	[t7], r5
	sub	r2, r3
	add	r2, 128
	mov	[rsp], r2
	mov	r0, rsp
	mov	r1, rsp
	call	ryu_dyadic256_as_mantissa_type
	mov	r7, [r6]
	mov	t1, [rsp]
	mov	r6, [t4]
	mov	r5, [t2]
	mov	t2, [t6]
	mov	t4, [t7]
	mov	t5, [t5]
	mov	t3, [t3]
	mov	r0, t5
	mov	r1, t4
	call	__bit_or
	jnz	rax, .LBB30_9
	jmp	.LBB30_6
.LBB30_6:
	mov	r1, 1000000000
	mov	r0, t3
	call	__bit_xor
	mov	r0, rax
	mov	r1, t2
	call	__bit_or
	jnz	rax, .LBB30_8
	jmp	.LBB30_7
.LBB30_7:
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
	jz	r0, .LBB30_10
	jmp	.LBB30_9
.LBB30_8:
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
	jnz	r0, .LBB30_10
	jmp	.LBB30_9
.LBB30_9:
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
.LBB30_10:
	mov	[r4], t1
	mov	r0, r4
	add	r0, 4
	mov	[r0], r7
	mov	r0, r4
	add	r0, 8
	mov	r1, r4
	add	r1, 12
	mov	[r1], r6
	mov	[r0], r5
	mov	r0, r4
	add	r0, 16
	add	r4, 20
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
	mov	[rsp-30], r3
	add	r3, 256
	mov	[rsp-18], r0
	mov	[r0], r3
	add	r0, 4
	mov	[rsp-19], r0
	mov	r0, r1
	add	r0, 4
	mov	r3, r2
	add	r3, 4
	mov	x3, [r3]
	mov	r3, r2
	add	r3, 8
	mov	x2, [r3]
	mov	r3, r2
	add	r3, 12
	mov	t7, [r3]
	mov	r3, r2
	add	r3, 16
	mov	t6, [r3]
	mov	r3, r2
	add	r3, 20
	mov	t4, [r3]
	mov	r3, r2
	add	r3, 24
	mov	r7, [r3]
	mov	r3, r2
	add	r3, 28
	mov	r4, [r3]
	add	r2, 32
	mov	t1, [r2]
	mov	r5, [r0]
	mov	r0, r1
	add	r0, 8
	mov	x6, [r0]
	mov	r0, r1
	add	r0, 12
	mov	x1, [r0]
	mov	r0, r1
	add	r0, 16
	mov	x0, [r0]
	mov	r0, r1
	add	r0, 20
	mov	t5, [r0]
	mov	r0, r1
	add	r0, 24
	mov	t3, [r0]
	mov	r0, r1
	add	r0, 28
	mov	x14, [r0]
	add	r1, 32
	mov	r6, [r1]
	mov	r1, 0
	mov	r3, 0
	mov	r0, x0
	mov	r2, r7
	call	__muldi3
	mov	t2, rax
	mov	x5, t0
	mov	r0, x6
	mov	r2, t1
	call	__muldi3
	mov	x7, rax
	mov	x8, t0
	mov	r0, r5
	mov	r2, r4
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
	mov	r2, r7
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
	mov	[rsp-24], t3
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
	mov	[rsp-27], r6
	mov	r0, r6
	mov	r2, x2
	call	__muldi3
	mov	t2, rax
	mov	x10, t0
	mov	[rsp-17], x14
	mov	r0, x14
	mov	r2, x3
	call	__muldi3
	mov	x6, rax
	mov	x11, t0
	mov	r0, r6
	call	__muldi3
	mov	r3, t0
	mov	r0, x11
	mov	r2, rax
	call	__adddi3
	mov	r3, 0
	mov	x3, rax
	mov	x11, t0
	mov	r0, x14
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
	mov	[rsp-29], x8
	mov	x9, t0
	mov	r0, x1
	mov	r6, r4
	mov	r2, r6
	call	__muldi3
	mov	r5, rax
	mov	x2, t0
	mov	t3, t1
	mov	r2, t3
	call	__muldi3
	mov	x6, rax
	mov	x7, t0
	mov	r0, x0
	mov	r2, r6
	call	__muldi3
	mov	x5, rax
	mov	x10, t0
	mov	r2, t3
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
	mov	r4, r7
	mov	r2, r4
	call	__muldi3
	mov	x4, rax
	mov	x6, t0
	mov	r0, [rsp-24]
	mov	r2, t4
	call	__muldi3
	mov	x5, rax
	mov	x7, t0
	mov	x8, r0
	mov	r2, r4
	mov	[rsp-25], r4
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
	mov	r7, r0
	mov	r2, t6
	call	__muldi3
	mov	x6, rax
	mov	x7, t0
	mov	r0, [rsp-27]
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
	mov	x5, rax
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
	mov	r0, x5
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
	mov	[rsp-22], r6
	mov	r2, r6
	call	__muldi3
	mov	r5, rax
	mov	t2, t0
	mov	r2, t3
	call	__muldi3
	mov	t5, rax
	mov	x2, t0
	mov	r0, x8
	mov	r2, r6
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
	mov	[rsp-28], t0
	mov	r0, r5
	mov	r1, rax
	mov	r2, x6
	mov	r3, x7
	call	__adddi3
	mov	r1, 0
	mov	r3, 0
	mov	x2, rax
	mov	x3, t0
	mov	r0, r7
	mov	r2, t4
	call	__muldi3
	mov	r5, rax
	mov	t5, t0
	mov	r2, r4
	call	__muldi3
	mov	r6, rax
	mov	r7, t0
	mov	r0, t1
	mov	r2, t4
	call	__muldi3
	mov	r3, t0
	mov	r0, t5
	mov	r2, rax
	call	__adddi3
	mov	[rsp-26], t0
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
	mov	r2, t3
	mov	[rsp-23], r2
	call	__muldi3
	mov	[rsp-20], rax
	mov	[rsp-21], t0
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
	mov	r1, [rsp-29]
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
	mov	r2, [rsp-28]
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
	mov	r2, [rsp-25]
	call	__muldi3
	mov	r3, t0
	mov	r0, [rsp-26]
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
	mov	x4, [rsp-19]
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
	mov	r2, [rsp-22]
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
	mov	r4, [rsp-18]
	mov	r2, [rsp-23]
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
	mov	r2, [rsp-20]
	mov	r3, [rsp-21]
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
	mov	t2, r4
	add	t2, 8
	mov	[t2], t7
	mov	[x4], x5
	mov	t3, r4
	add	t3, 12
	mov	t6, r4
	add	t6, 16
	mov	[t6], t4
	mov	[t3], t5
	mov	x0, r4
	add	x0, 20
	mov	x1, r4
	add	x1, 24
	mov	[x1], r6
	mov	[x0], r7
	mov	x2, r4
	add	x2, 28
	mov	x3, r4
	add	x3, 32
	mov	[x3], r3
	mov	[x2], r5
	mov	r0, t4
	mov	r1, t7
	call	__bit_or
	mov	r2, rax
	mov	r0, t5
	mov	r1, x5
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
	jl	r3, r0, .LBB31_3
	jmp	.LBB31_1
.LBB31_1:
	mov	r0, rax
	mov	r1, r2
	call	__bit_or
	jz	rax, .LBB31_3
	jmp	.LBB31_2
.LBB31_2:
	mov	r0, [rsp-30]
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
	mov	r4, rax
	mov	r0, r3
	call	__bit_shl
	mov	r0, rax
	mov	r1, r4
	call	__bit_or
	mov	r1, 1
	mov	r3, rax
	mov	r0, r7
	call	__bit_shl
	mov	r1, 31
	mov	r4, rax
	mov	r0, t4
	call	__bit_shr
	mov	r0, r4
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r4, rax
	mov	r0, r7
	call	__bit_shr
	mov	r1, 1
	mov	r5, rax
	mov	r0, r6
	call	__bit_shl
	mov	r0, rax
	mov	r1, r5
	call	__bit_or
	mov	r1, 1
	mov	r5, rax
	mov	r0, t5
	call	__bit_shl
	mov	r1, 31
	mov	r6, rax
	mov	r0, t7
	call	__bit_shr
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r6, rax
	mov	r0, t5
	call	__bit_shr
	mov	r1, 1
	mov	r7, rax
	mov	r0, t4
	call	__bit_shl
	mov	r0, rax
	mov	r1, r7
	call	__bit_or
	mov	r1, 31
	mov	r7, rax
	mov	r0, x5
	call	__bit_shr
	mov	r1, 1
	mov	t1, rax
	mov	r0, t7
	call	__bit_shl
	mov	r0, rax
	mov	r1, t1
	call	__bit_or
	mov	r1, 1
	mov	t1, rax
	mov	r0, x5
	call	__bit_shl
	mov	[x4], rax
	mov	[t2], t1
	mov	[t6], r7
	mov	[t3], r6
	mov	[x1], r5
	mov	[x0], r4
	mov	[x3], r3
	mov	[x2], r2
.LBB31_3:
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
	mov	[rsp-7], x6
	mov	[rsp-8], x7
	mov	[rsp-9], x8
	mov	[rsp-10], x9
	mov	[rsp-11], x10
	mov	[rsp-12], x11
	mov	[rsp-13], x12
	mov	[rsp-14], x13
	mov	r3, r1
	mov	r7, r3
	add	r7, 4
	add	r1, 8
	mov	r4, [r1]
	mov	r1, [r7]
	mov	r2, r3
	add	r2, 12
	mov	r6, r3
	add	r6, 16
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
	add	r1, 24
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
	add	r4, 32
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
	jnz	rax, .LBB32_2
	jmp	.LBB32_1
.LBB32_1:
	mov	[r2], 0
	mov	r0, r2
	add	r0, 28
	mov	[r0], 0
	mov	r0, r2
	add	r0, 24
	mov	[r0], 0
	mov	r0, r2
	add	r0, 20
	mov	[r0], 0
	mov	r0, r2
	add	r0, 16
	mov	[r0], 0
	mov	r0, r2
	add	r0, 12
	mov	[r0], 0
	mov	r0, r2
	add	r0, 8
	mov	[r0], 0
	add	r2, 4
	mov	[r2], 0
	jmp	.LBB32_41
.LBB32_2:
	mov	r5, [r3]
	mov	r0, 1
	jl	r5, r0, .LBB32_20
	jmp	.LBB32_3
.LBB32_3:
	mov	r0, r7
	add	r0, 28
	mov	r0, [r0]
	mov	r1, rsp
	mov	r3, rsp
	mov	r4, rsp
	mov	r6, rsp
	mov	t0, rsp
	mov	t1, rsp
	mov	x5, rsp
	add	r1, 28
	mov	[r1], r0
	mov	r0, r7
	add	r0, 24
	mov	r0, [r0]
	mov	r1, r7
	add	r1, 20
	mov	r1, [r1]
	add	r3, 24
	mov	[r3], r0
	add	r4, 20
	mov	[r4], r1
	mov	r0, r7
	add	r0, 16
	mov	r0, [r0]
	mov	r1, r7
	add	r1, 12
	mov	r1, [r1]
	add	r6, 16
	mov	[r6], r0
	add	t0, 12
	mov	[t0], r1
	mov	r0, r7
	add	r0, 8
	mov	r0, [r0]
	add	t1, 8
	mov	r1, r7
	add	r1, 4
	mov	r1, [r1]
	mov	r3, [r7]
	mov	[t1], r0
	add	x5, 4
	mov	[x5], r1
	mov	[rsp], r3
	mov	x11, r2
	add	x11, 28
	mov	[x11], 0
	mov	x10, r2
	add	x10, 24
	mov	[x10], 0
	mov	x9, r2
	add	x9, 20
	mov	[x9], 0
	mov	x8, r2
	add	x8, 16
	mov	[x8], 0
	mov	x6, r2
	add	x6, 12
	mov	[x6], 0
	mov	x7, r2
	add	x7, 8
	mov	[x7], 0
	mov	x4, r2
	add	x4, 4
	mov	[x4], 0
	mov	r0, 255
	mov	[r2], 0
	jg	r5, r0, .LBB32_19
	jmp	.LBB32_4
.LBB32_4:
	mov	r1, 6
	mov	r0, r5
	call	__bit_shr
	mov	r1, 63
	mov	r3, rax
	call	__bit_and
	mov	r4, rax
	mov	r0, 3
	sub	r0, r3
	mov	r1, 3
	mov	x2, 3
	call	__bit_shl
	mov	t2, rax
	add	t2, rsp
	mov	t3, [t2]
	mov	r0, t2
	add	r0, 4
	mov	t4, [r0]
	jnz	r4, .LBB32_8
	jmp	.LBB32_5
.LBB32_5:
	mov	[x11], t4
	mov	r0, 191
	mov	[x10], t3
	jg	r5, r0, .LBB32_19
	jmp	.LBB32_6
.LBB32_6:
	mov	r0, 2
	sub	r0, r3
	call	__bit_shl
	add	rax, rsp
	mov	r0, [rax]
	add	rax, 4
	mov	r1, [rax]
	mov	[x9], r1
	mov	r1, 127
	mov	[x8], r0
	jg	r5, r1, .LBB32_19
	jmp	.LBB32_7
.LBB32_7:
	mov	r0, 1
	sub	r0, r3
	mov	r1, 3
	call	__bit_shl
	add	rax, rsp
	mov	r0, [rax]
	add	rax, 4
	mov	r1, [rax]
	mov	[x6], r1
	mov	[x7], r0
	jmp	.LBB32_19
.LBB32_8:
	mov	r7, 64
	mov	r1, 31
	sub	r7, r4
	mov	r0, r4
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
	mov	r6, r4
	add	r6, -32
	mov	t6, rax
	mov	r0, r6
	call	__bit_shr
	mov	t7, rax
	mov	r0, t3
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
	mov	r0, t4
	mov	r1, t5
	call	__bit_shl
	mov	t4, rax
	mov	r0, 32
	sub	r0, t5
	mov	r1, 31
	mov	t5, 32
	call	__bit_and
	mov	r0, t3
	mov	r1, rax
	call	__bit_shr
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
	je	r3, x2, .LBB32_10
	jmp	.LBB32_9
.LBB32_9:
	mov	r0, t2
	add	r0, -8
	mov	t6, [r0]
	add	t2, -4
	mov	t2, [t2]
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
	mov	r0, t2
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
	mov	r0, t2
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
	mov	t2, rax
	mov	r0, t1
	mov	r1, t4
	call	__bit_or
	mov	t4, rax
	mov	r0, t2
	mov	r1, t3
	call	__bit_or
	mov	t3, rax
.LBB32_10:
	mov	[x11], t3
	mov	r0, 191
	mov	[x10], t4
	jg	r5, r0, .LBB32_17
	jmp	.LBB32_11
.LBB32_11:
	mov	r0, 2
	sub	r0, r3
	mov	r1, 3
	mov	x1, 2
	call	__bit_shl
	mov	t5, rax
	add	t5, rsp
	mov	r0, t5
	add	r0, 4
	mov	t3, [r0]
	mov	t4, [t5]
	mov	r1, 31
	mov	r0, r4
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
	mov	t2, 32
	call	__bit_and
	mov	r0, t4
	mov	r1, rax
	call	__bit_shr
	mov	r1, 0
	sub	r1, t7
	mov	r0, rax
	call	__bit_and
	mov	t7, rax
	mov	r0, t3
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
	mov	t3, rax
	mov	r0, t4
	mov	r1, t6
	call	__bit_shl
	mov	t4, rax
	mov	r0, t7
	call	__bit_not
	mov	r0, t4
	mov	r1, rax
	call	__bit_and
	mov	r0, t3
	mov	r1, rax
	call	__bit_or
	mov	t3, rax
	mov	r0, t4
	mov	r1, t7
	call	__bit_and
	mov	t4, rax
	je	r3, x1, .LBB32_13
	jmp	.LBB32_12
.LBB32_12:
	mov	r0, t5
	add	r0, -8
	mov	t6, [r0]
	add	t5, -4
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
	sub	t2, t7
	mov	r1, 31
	mov	t6, rax
	mov	r0, t2
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
	mov	t2, rax
	mov	r0, t1
	mov	r1, t4
	call	__bit_or
	mov	t4, rax
	mov	r0, t2
	mov	r1, t3
	call	__bit_or
	mov	t3, rax
.LBB32_13:
	mov	[x9], t3
	mov	r0, 127
	mov	[x8], t4
	jg	r5, r0, .LBB32_17
	jmp	.LBB32_14
.LBB32_14:
	mov	r0, 1
	sub	r0, r3
	mov	r1, 3
	mov	x0, 1
	call	__bit_shl
	mov	t4, rax
	add	t4, rsp
	mov	r0, t4
	add	r0, 4
	mov	t2, [r0]
	mov	t3, [t4]
	mov	r1, 31
	mov	r0, r4
	call	__bit_and
	mov	t5, rax
	mov	r1, 0
	sub	r1, t5
	mov	r5, 0
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
	mov	t1, 32
	call	__bit_and
	mov	r0, t3
	mov	r1, rax
	call	__bit_shr
	mov	r1, 0
	sub	r1, t6
	mov	r0, rax
	call	__bit_and
	mov	t6, rax
	mov	r0, t2
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
	mov	t2, rax
	mov	r0, t3
	mov	r1, t5
	call	__bit_shl
	mov	t3, rax
	mov	r0, t6
	call	__bit_not
	mov	r0, t3
	mov	r1, rax
	call	__bit_and
	mov	r0, t2
	mov	r1, rax
	call	__bit_or
	mov	t2, rax
	mov	r0, t3
	mov	r1, t6
	call	__bit_and
	mov	t3, rax
	je	r3, x0, .LBB32_16
	jmp	.LBB32_15
.LBB32_15:
	mov	r0, t4
	add	r0, -8
	mov	t5, [r0]
	add	t4, -4
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
	sub	t1, t6
	mov	r1, 31
	mov	t5, rax
	mov	r0, t1
	call	__bit_and
	mov	r0, t4
	mov	r1, rax
	call	__bit_shl
	sub	r5, t7
	mov	r0, rax
	mov	r1, r5
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
	mov	r5, rax
	mov	r0, r7
	mov	r1, x0
	call	__bit_and
	mov	r7, rax
	mov	r0, r5
	mov	r1, t3
	call	__bit_or
	mov	t3, rax
	mov	r0, r7
	mov	r1, t2
	call	__bit_or
	mov	t2, rax
.LBB32_16:
	mov	[x6], t2
	mov	[x7], t3
.LBB32_17:
	jnz	r3, .LBB32_19
	jmp	.LBB32_18
.LBB32_18:
	mov	r3, [x5]
	mov	r5, [rsp]
	mov	r1, 31
	mov	r0, r4
	call	__bit_and
	mov	r4, rax
	mov	r1, 0
	sub	r1, r4
	mov	r7, 0
	mov	r0, r4
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	t1, rax
	mov	r0, r6
	call	__bit_shr
	mov	r6, rax
	mov	r0, r5
	mov	r1, r4
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
	mov	r1, r4
	call	__bit_shl
	mov	r0, 32
	sub	r0, r4
	mov	r1, 31
	mov	r3, rax
	call	__bit_and
	mov	r0, r5
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
.LBB32_19:
	jmp	.LBB32_41
.LBB32_20:
	mov	x7, rsp
	mov	x8, rsp
	mov	r0, rsp
	mov	r1, rsp
	mov	r3, rsp
	mov	r4, rsp
	mov	r6, rsp
	mov	t0, r7
	add	t0, 28
	mov	t0, [t0]
	mov	t1, 0
	sub	t1, r5
	add	x7, 28
	mov	[x7], t0
	mov	r5, r7
	add	r5, 24
	mov	r5, [r5]
	mov	t0, r7
	add	t0, 20
	mov	t0, [t0]
	add	x8, 24
	mov	[x8], r5
	add	r0, 20
	mov	[r0], t0
	mov	r0, r7
	add	r0, 16
	mov	r0, [r0]
	mov	r5, r7
	add	r5, 12
	mov	r5, [r5]
	add	r1, 16
	mov	[r1], r0
	add	r3, 12
	mov	[r3], r5
	mov	r0, r7
	add	r0, 8
	mov	r0, [r0]
	add	r4, 8
	mov	r1, r7
	add	r1, 4
	mov	r1, [r1]
	mov	r3, [r7]
	mov	[r4], r0
	add	r6, 4
	mov	[r6], r1
	mov	[rsp], r3
	mov	x5, r2
	add	x5, 28
	mov	[x5], 0
	mov	x6, r2
	add	x6, 24
	mov	[x6], 0
	mov	x9, r2
	add	x9, 20
	mov	[x9], 0
	mov	x10, r2
	add	x10, 16
	mov	[x10], 0
	mov	x11, r2
	add	x11, 12
	mov	[x11], 0
	mov	x12, r2
	add	x12, 8
	mov	[x12], 0
	mov	x13, r2
	add	x13, 4
	mov	[x13], 0
	mov	r0, 255
	mov	[r2], 0
	jg	t1, r0, .LBB32_40
	jmp	.LBB32_21
.LBB32_21:
	mov	r1, 6
	mov	r0, t1
	call	__bit_shr
	mov	r1, 63
	mov	r3, rax
	call	__bit_and
	mov	r4, rax
	mov	r1, 3
	mov	x2, 3
	mov	r0, r3
	call	__bit_shl
	mov	r6, rax
	add	r6, rsp
	mov	t4, [r6]
	mov	r0, r6
	add	r0, 4
	mov	t3, [r0]
	jnz	r4, .LBB32_27
	jmp	.LBB32_22
.LBB32_22:
	mov	[r2], t4
	mov	r0, 191
	mov	[x13], t3
	jg	t1, r0, .LBB32_25
	jmp	.LBB32_23
.LBB32_23:
	mov	r0, r6
	mov	r1, r6
	add	r1, 12
	mov	r1, [r1]
	add	r0, 8
	mov	r0, [r0]
	mov	[x11], r1
	mov	r1, 127
	mov	[x12], r0
	jg	t1, r1, .LBB32_25
	jmp	.LBB32_24
.LBB32_24:
	mov	r0, r6
	add	r0, 16
	add	r6, 20
	mov	r1, [r6]
	mov	r0, [r0]
	mov	[x9], r1
	mov	[x10], r0
.LBB32_25:
	jnz	r3, .LBB32_40
	jmp	.LBB32_26
.LBB32_26:
	mov	rax, [x7]
	mov	r2, [x8]
	jmp	.LBB32_39
.LBB32_27:
	mov	r7, 64
	mov	r1, 31
	sub	r7, r4
	mov	r0, r4
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
	mov	r5, r4
	add	r5, -32
	mov	t6, rax
	mov	r0, r5
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
	je	r3, x2, .LBB32_29
	jmp	.LBB32_28
.LBB32_28:
	mov	r0, r6
	add	r0, 8
	mov	r1, r6
	add	r1, 12
	mov	t6, [r1]
	mov	t7, [r0]
	mov	r1, 31
	mov	r0, r7
	call	__bit_and
	mov	x0, rax
	mov	r1, 0
	sub	r1, x0
	mov	r0, x0
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r0, r7
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
.LBB32_29:
	mov	[r2], t3
	mov	r0, 191
	mov	[x13], t4
	jg	t1, r0, .LBB32_37
	jmp	.LBB32_30
.LBB32_30:
	mov	r2, r3
	add	r2, 1
	mov	r1, 3
	mov	x2, 3
	mov	r0, r2
	call	__bit_shl
	mov	t3, rax
	add	t3, rsp
	mov	t5, [t3]
	mov	r0, t3
	add	r0, 4
	mov	t6, [r0]
	mov	r1, 31
	mov	r0, r4
	call	__bit_and
	mov	t7, rax
	mov	r1, 0
	sub	r1, t7
	mov	t2, 0
	mov	r0, t7
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	x0, rax
	mov	r0, r5
	call	__bit_shr
	mov	x1, rax
	mov	r0, 32
	sub	r0, t7
	mov	t4, 32
	call	__bit_and
	mov	r0, t6
	mov	r1, rax
	call	__bit_shl
	mov	r1, 0
	sub	r1, x0
	mov	r0, rax
	call	__bit_and
	mov	x0, rax
	mov	r0, t5
	mov	r1, t7
	call	__bit_shr
	mov	r0, rax
	mov	r1, x0
	call	__bit_or
	mov	x0, 0
	sub	x0, x1
	mov	r0, rax
	mov	r1, x0
	call	__bit_and
	mov	t5, rax
	mov	r0, t6
	mov	r1, t7
	call	__bit_shr
	mov	t6, rax
	mov	r0, x0
	call	__bit_not
	mov	r0, t6
	mov	r1, rax
	call	__bit_and
	mov	r0, t5
	mov	r1, rax
	call	__bit_or
	mov	t5, rax
	mov	r0, t6
	mov	r1, x0
	call	__bit_and
	mov	t6, rax
	je	r2, x2, .LBB32_32
	jmp	.LBB32_31
.LBB32_31:
	mov	r0, t3
	add	r0, 8
	add	t3, 12
	mov	r2, [t3]
	mov	t3, [r0]
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
	mov	r0, t3
	mov	r1, t7
	call	__bit_shl
	mov	x2, 0
	sub	x2, x1
	mov	x1, rax
	mov	r0, x2
	call	__bit_not
	mov	r0, x1
	mov	r1, rax
	call	__bit_and
	mov	x3, rax
	mov	r0, r2
	mov	r1, t7
	call	__bit_shl
	sub	t4, t7
	mov	r1, 31
	mov	t7, rax
	mov	r0, t4
	call	__bit_and
	mov	r0, t3
	mov	r1, rax
	call	__bit_shr
	sub	t2, x0
	mov	r0, rax
	mov	r1, t2
	call	__bit_and
	mov	r0, t7
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, x2
	call	__bit_and
	mov	r0, rax
	mov	r1, x3
	call	__bit_or
	mov	t2, rax
	mov	r0, x1
	mov	r1, x2
	call	__bit_and
	mov	t4, rax
	mov	r0, t2
	mov	r1, t6
	call	__bit_or
	mov	t2, rax
	mov	r0, t4
	mov	r1, t5
	call	__bit_or
	mov	[x12], rax
	mov	r0, 127
	mov	[x11], t2
	jg	t1, r0, .LBB32_37
	jmp	.LBB32_34
.LBB32_32:
	mov	[x11], t6
	mov	r0, 127
	mov	[x12], t5
	jg	t1, r0, .LBB32_40
	jmp	.LBB32_33
.LBB32_33:
	mov	r0, r6
	add	r0, 16
	mov	r2, [r0]
	mov	r0, r6
	add	r0, 20
	mov	t1, [r0]
	mov	r1, 31
	mov	r0, r4
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
	mov	t4, rax
	mov	r0, r5
	call	__bit_shr
	mov	t5, rax
	mov	r0, t1
	mov	r1, t2
	call	__bit_shr
	mov	t6, 0
	sub	t6, t5
	mov	t5, rax
	mov	r0, t6
	call	__bit_not
	mov	r0, t5
	mov	r1, rax
	call	__bit_and
	mov	t7, rax
	mov	r0, r2
	mov	r1, t2
	call	__bit_shr
	mov	r0, 32
	sub	r0, t2
	mov	r1, 31
	mov	r2, rax
	call	__bit_and
	mov	r0, t1
	mov	r1, rax
	call	__bit_shl
	sub	t3, t4
	mov	r0, rax
	mov	r1, t3
	call	__bit_and
	mov	r0, r2
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, t6
	call	__bit_and
	mov	r0, rax
	mov	r1, t7
	call	__bit_or
	mov	r2, rax
	mov	r0, t5
	mov	r1, t6
	call	__bit_and
	mov	t1, rax
	jmp	.LBB32_35
.LBB32_34:
	mov	r1, 31
	mov	r0, r4
	call	__bit_and
	mov	t1, rax
	mov	r1, 0
	sub	r1, t1
	mov	t2, 0
	mov	r0, t1
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	t4, rax
	mov	r0, r5
	call	__bit_shr
	mov	t5, rax
	mov	r0, r2
	mov	r1, t1
	call	__bit_shr
	mov	t6, 0
	sub	t6, t5
	mov	t5, rax
	mov	r0, t6
	call	__bit_not
	mov	r0, t5
	mov	r1, rax
	call	__bit_and
	mov	t7, rax
	mov	r0, t3
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
	sub	t2, t4
	mov	r0, rax
	mov	r1, t2
	call	__bit_and
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, t6
	call	__bit_and
	mov	r0, rax
	mov	r1, t7
	call	__bit_or
	mov	r2, rax
	mov	r0, t5
	mov	r1, t6
	call	__bit_and
	mov	r0, 1
	mov	t1, rax
	je	r3, r0, .LBB32_36
	jmp	.LBB32_35
.LBB32_35:
	mov	r0, r6
	add	r0, 24
	add	r6, 28
	mov	r6, [r6]
	mov	t2, [r0]
	mov	r1, 31
	mov	r0, r7
	call	__bit_and
	mov	t3, rax
	mov	r1, 0
	sub	r1, t3
	mov	t4, 0
	mov	r0, t3
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	add	r7, -32
	mov	t5, rax
	mov	r0, r7
	call	__bit_shr
	mov	r7, rax
	mov	r0, t2
	mov	r1, t3
	call	__bit_shl
	mov	t6, 0
	sub	t6, r7
	mov	r7, rax
	mov	r0, t6
	call	__bit_not
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	t7, rax
	mov	r0, r6
	mov	r1, t3
	call	__bit_shl
	mov	r0, 32
	sub	r0, t3
	mov	r1, 31
	mov	r6, rax
	call	__bit_and
	mov	r0, t2
	mov	r1, rax
	call	__bit_shr
	sub	t4, t5
	mov	r0, rax
	mov	r1, t4
	call	__bit_and
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, t6
	call	__bit_and
	mov	r0, rax
	mov	r1, t7
	call	__bit_or
	mov	r6, rax
	mov	r0, r7
	mov	r1, t6
	call	__bit_and
	mov	r7, rax
	mov	r0, r6
	mov	r1, t1
	call	__bit_or
	mov	t1, rax
	mov	r0, r7
	mov	r1, r2
	call	__bit_or
	mov	r2, rax
.LBB32_36:
	mov	[x9], t1
	mov	[x10], r2
.LBB32_37:
	jnz	r3, .LBB32_40
	jmp	.LBB32_38
.LBB32_38:
	mov	r2, [x8]
	mov	r3, [x7]
	mov	r1, 31
	mov	r0, r4
	call	__bit_and
	mov	r4, rax
	mov	r1, 0
	sub	r1, r4
	mov	r6, 0
	mov	r0, r4
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r7, rax
	mov	r0, r5
	call	__bit_shr
	mov	r5, rax
	mov	r0, r3
	mov	r1, r4
	call	__bit_shr
	mov	t1, 0
	sub	t1, r5
	mov	r5, rax
	mov	r0, t1
	call	__bit_not
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	t2, rax
	mov	r0, r2
	mov	r1, r4
	call	__bit_shr
	mov	r0, 32
	sub	r0, r4
	mov	r1, 31
	mov	r2, rax
	call	__bit_and
	mov	r0, r3
	mov	r1, rax
	call	__bit_shl
	sub	r6, r7
	mov	r0, rax
	mov	r1, r6
	call	__bit_and
	mov	r0, r2
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, t1
	call	__bit_and
	mov	r0, rax
	mov	r1, t2
	call	__bit_or
	mov	r2, rax
	mov	r0, r5
	mov	r1, t1
	call	__bit_and
.LBB32_39:
	mov	[x5], rax
	mov	[x6], r2
.LBB32_40:
.LBB32_41:
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
// -- Begin function d2fixed_buffered
d2fixed_buffered:                       // @d2fixed_buffered
// %bb.0:
	call	d2fixed_buffered_n
	mov	r0, rax
	add	r0, r3
	mov	r1, 3
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r3, rax
	mov	r4, [r3]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r4
	mov	r1, rax
	call	__bit_and
	mov	r0, 0
	mov	r4, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, r4
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
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
	mov	r0, rax
	add	r0, r4
	mov	r1, 3
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r3, rax
	mov	r5, [r3]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r0, 0
	mov	r5, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
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
	mov	r5, r1
	mov	r1, 1048575
	mov	r4, r3
	mov	r7, r0
	mov	r0, r5
	call	__bit_and
	mov	r1, 20
	mov	t1, rax
	call	__bit_shr
	mov	r1, 2047
	mov	r3, 2047
	mov	r0, rax
	call	__bit_and
	mov	r6, rax
	jne	r6, r3, .LBB35_6
	jmp	.LBB35_1
.LBB35_1:
	mov	r0, r7
	mov	r1, t1
	call	__bit_or
	jz	rax, .LBB35_3
	jmp	.LBB35_2
.LBB35_2:                               // %memcpy.exit63.loopexit184
	mov	r2, r4
	add	r2, 1
	mov	r1, 3
	mov	t4, 3
	mov	r0, r4
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	r5, rax
	mov	r6, [r5]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r0, 255
	mov	r3, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	r0, 110
	mov	r6, rax
	mov	r1, r3
	call	__bit_shl
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	[r5], rax
	mov	r1, 3
	add	r4, 2
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	r2, rax
	mov	r5, [r2]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r0, 255
	mov	r3, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r0, 97
	mov	r5, rax
	mov	r1, r3
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	r1, 3
	mov	[r2], rax
	mov	r0, r4
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r3, rax
	mov	r4, [r3]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r4
	mov	r1, rax
	call	__bit_and
	mov	r0, 110
	mov	r4, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, r4
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	jmp	.LBB35_201
.LBB35_3:
	mov	r0, -1
	mov	t4, 8
	jg	r5, r0, .LBB35_5
	jmp	.LBB35_4
.LBB35_4:
	mov	r1, 3
	mov	r0, r4
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r3, rax
	mov	r6, [r3]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	r0, 45
	mov	r6, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	mov	t4, 9
.LBB35_5:                               // %memcpy.exit63.loopexit
	mov	r1, 31
	mov	r0, r5
	call	__bit_shr
	add	r4, rax
	mov	r2, r4
	mov	r1, 3
	add	r2, 1
	mov	r0, r4
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	r5, rax
	mov	r6, [r5]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r0, 255
	mov	r3, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	r0, 73
	mov	r6, rax
	mov	r1, r3
	call	__bit_shl
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	[r5], rax
	mov	r3, r4
	mov	r1, 3
	add	r3, 2
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	r5, rax
	call	__bit_and
	mov	r2, rax
	mov	r6, [r2]
	mov	r1, 3
	mov	r0, r5
	call	__bit_shl
	mov	r0, 255
	mov	r5, rax
	mov	r1, r5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	r0, 110
	mov	r6, rax
	mov	r1, r5
	call	__bit_shl
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	[r2], rax
	mov	r2, r4
	mov	r1, 3
	add	r2, 3
	mov	r0, r3
	call	__bit_and
	mov	r1, -4
	mov	r5, rax
	call	__bit_and
	mov	r3, rax
	mov	r6, [r3]
	mov	r1, 3
	mov	r0, r5
	call	__bit_shl
	mov	r0, 255
	mov	r5, rax
	mov	r1, r5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	r0, 102
	mov	r6, rax
	mov	r1, r5
	call	__bit_shl
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	mov	r3, r4
	mov	r1, 3
	add	r3, 4
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	r5, rax
	call	__bit_and
	mov	r2, rax
	mov	r6, [r2]
	mov	r1, 3
	mov	r0, r5
	call	__bit_shl
	mov	r0, 255
	mov	r5, rax
	mov	r1, r5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	r0, 105
	mov	r6, rax
	mov	r1, r5
	call	__bit_shl
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	[r2], rax
	mov	r2, r4
	mov	r1, 3
	add	r2, 5
	mov	r0, r3
	call	__bit_and
	mov	r1, -4
	mov	r5, rax
	call	__bit_and
	mov	r3, rax
	mov	r6, [r3]
	mov	r1, 3
	mov	r0, r5
	call	__bit_shl
	mov	r0, 255
	mov	r5, rax
	mov	r1, r5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	r0, 110
	mov	r6, rax
	mov	r1, r5
	call	__bit_shl
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	mov	r3, r4
	mov	r1, 3
	add	r3, 6
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	r5, rax
	call	__bit_and
	mov	r2, rax
	mov	r6, [r2]
	mov	r1, 3
	mov	r0, r5
	call	__bit_shl
	mov	r0, 255
	mov	r5, rax
	mov	r1, r5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	r0, 105
	mov	r6, rax
	mov	r1, r5
	call	__bit_shl
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	[r2], rax
	mov	r1, 3
	add	r4, 7
	mov	r0, r3
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r3, rax
	mov	r5, [r3]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r0, 116
	mov	r5, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	r1, 3
	mov	[r3], rax
	mov	r0, r4
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r3, rax
	mov	r4, [r3]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r4
	mov	r1, rax
	call	__bit_and
	mov	r0, 121
	mov	r4, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, r4
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	jmp	.LBB35_201
.LBB35_6:
	mov	r0, r7
	mov	r1, t1
	call	__bit_or
	jnz	rax, .LBB35_27
	jmp	.LBB35_7
.LBB35_7:
	jnz	r6, .LBB35_27
	jmp	.LBB35_8
.LBB35_8:
	mov	r0, -1
	mov	r6, 0
	jg	r5, r0, .LBB35_10
	jmp	.LBB35_9
.LBB35_9:
	mov	r1, 3
	mov	r0, r4
	call	__bit_and
	mov	r1, -4
	mov	r6, rax
	call	__bit_and
	mov	r3, rax
	mov	r5, [r3]
	mov	r1, 3
	mov	r0, r6
	call	__bit_shl
	mov	r0, 255
	mov	r6, rax
	mov	r1, r6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r0, 45
	mov	r5, rax
	mov	r1, r6
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	mov	r6, 1
.LBB35_10:
	mov	t4, r6
	mov	r7, r4
	add	r7, r6
	mov	r1, 3
	add	t4, 1
	mov	r0, r7
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	r5, rax
	mov	t1, [r5]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r0, 255
	mov	r3, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	t1, rax
	mov	r1, r3
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	[r5], rax
	jz	r2, .LBB35_26
	jmp	.LBB35_11
.LBB35_11:
	mov	r1, 2
	mov	r0, r6
	call	__bit_or
	add	t4, r4
	mov	r1, 3
	mov	t5, rax
	mov	r0, t4
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	t1, rax
	mov	r5, [t1]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r0, 255
	mov	r3, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r0, 46
	mov	r5, rax
	mov	r1, r3
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	r5, r4
	add	r5, t5
	mov	r1, 3
	mov	[t1], rax
	mov	r0, r5
	call	__bit_and
	mov	r3, r2
	jz	rax, .LBB35_15
	jmp	.LBB35_12
.LBB35_12:                              // %.preheader101.preheader
	add	r7, 3
	mov	r0, r5
	mov	r3, r2
.LBB35_13:                              // %.preheader101
                                        // =>This Inner Loop Header: Depth=1
	jz	r3, .LBB35_25
	jmp	.LBB35_14
.LBB35_14:                              //   in Loop: Header=BB35_13 Depth=1
	add	r3, -1
	mov	r5, r0
	mov	r1, 3
	add	r5, 1
	call	__bit_and
	mov	r1, -4
	mov	t1, rax
	call	__bit_and
	mov	t2, rax
	mov	t3, [t2]
	mov	r1, 3
	mov	r0, t1
	call	__bit_shl
	mov	r0, 255
	mov	t1, rax
	mov	r1, t1
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t3
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	t3, rax
	mov	r1, t1
	call	__bit_shl
	mov	r0, t3
	mov	r1, rax
	call	__bit_or
	mov	r1, 3
	mov	[t2], rax
	mov	r0, r7
	call	__bit_and
	add	r7, 1
	mov	r0, r5
	jnz	rax, .LBB35_13
	jmp	.LBB35_15
.LBB35_15:                              // %.loopexit7.i
	mov	r1, -2147483648
	mov	r0, r3
	call	__bit_xor
	mov	r0, -2147483644
	jl	rax, r0, .LBB35_22
	jmp	.LBB35_16
.LBB35_16:
	mov	r0, r3
	call	__bit_xor
	mov	r0, -2147483632
	jl	rax, r0, .LBB35_18
	jmp	.LBB35_17
.LBB35_17:                              // %.preheader.i.preheader
	mov	r6, -2147483633
	jmp	.LBB35_20
.LBB35_18:                              // %.preheader418
	mov	r6, -2147483645
	jmp	.LBB35_21
.LBB35_19:
	mov	r0, 3
	jg	r3, r0, .LBB35_18
	jmp	.LBB35_22
.LBB35_20:                              // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r5
	add	r0, 4
	mov	[r5], 808464432
	mov	r1, r5
	add	r1, 8
	mov	[r0], 808464432
	mov	r0, r5
	add	r0, 12
	mov	[r1], 808464432
	add	r5, 16
	add	r3, -16
	mov	r1, -2147483648
	mov	[r0], 808464432
	mov	r0, r3
	call	__bit_xor
	jg	rax, r6, .LBB35_20
	jmp	.LBB35_19
.LBB35_21:                              // =>This Inner Loop Header: Depth=1
	mov	[r5], 808464432
	add	r3, -4
	add	r5, 4
	mov	r0, r3
	call	__bit_xor
	jg	rax, r6, .LBB35_21
	jmp	.LBB35_22
.LBB35_22:                              // %.loopexit5.i
	jz	r3, .LBB35_25
	jmp	.LBB35_23
.LBB35_23:                              // %.preheader.preheader
	mov	r6, r5
.LBB35_24:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	add	r3, -1
	mov	r1, 3
	add	r6, 1
	mov	r0, r5
	call	__bit_and
	mov	r1, -4
	mov	r7, rax
	call	__bit_and
	mov	r5, rax
	mov	t1, [r5]
	mov	r1, 3
	mov	r0, r7
	call	__bit_shl
	mov	r0, 255
	mov	r7, rax
	mov	r1, r7
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	t1, rax
	mov	r1, r7
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	[r5], rax
	mov	r5, r6
	jnz	r3, .LBB35_24
	jmp	.LBB35_25
.LBB35_25:                              // %memset.exit
	add	t5, r2
	mov	t4, t5
.LBB35_26:                              // %memcpy.exit65
	add	r4, t4
	mov	r2, r4
	mov	r1, 3
	add	r2, 1
	mov	r0, r4
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	r5, rax
	mov	r6, [r5]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r0, 255
	mov	r3, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	r0, 101
	mov	r6, rax
	mov	r1, r3
	call	__bit_shl
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	[r5], rax
	mov	r3, r4
	mov	r1, 3
	add	r3, 2
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	r5, rax
	call	__bit_and
	mov	r2, rax
	mov	r6, [r2]
	mov	r1, 3
	mov	r0, r5
	call	__bit_shl
	mov	r0, 255
	mov	r5, rax
	mov	r1, r5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	r0, 43
	mov	r6, rax
	mov	r1, r5
	call	__bit_shl
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	[r2], rax
	mov	r1, 3
	add	r4, 3
	mov	r0, r3
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r3, rax
	mov	r5, [r3]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	r5, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	r1, 3
	mov	[r3], rax
	mov	r0, r4
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r3, rax
	mov	r4, [r3]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r4
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	r4, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, r4
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	add	t4, 4
	jmp	.LBB35_201
.LBB35_27:
	mov	r1, 1048576
	mov	r0, t1
	call	__bit_or
	jz	r6, .LBB35_29
	jmp	.LBB35_28
.LBB35_28:
	mov	t1, rax
.LBB35_29:
	mov	[rsp-23], r7
	mov	t2, -1074
	jz	r6, .LBB35_31
	jmp	.LBB35_30
.LBB35_30:
	add	r6, -1075
	mov	t2, r6
.LBB35_31:
	mov	x10, 0
	mov	r0, -1
	mov	x12, 0
	jg	r5, r0, .LBB35_33
	jmp	.LBB35_32
.LBB35_32:
	mov	r1, 3
	mov	r0, r4
	call	__bit_and
	mov	r1, -4
	mov	r6, rax
	call	__bit_and
	mov	r3, rax
	mov	r5, [r3]
	mov	r1, 3
	mov	r0, r6
	call	__bit_shl
	mov	r0, 255
	mov	r6, rax
	mov	r1, r6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r0, 45
	mov	r5, rax
	mov	r1, r6
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	mov	x12, 1
.LBB35_33:
	mov	x9, r2
	mov	r0, -52
	add	x9, 1
	mov	[rsp-24], r2
	mov	[rsp-26], t2
	jl	t2, r0, .LBB35_79
	jmp	.LBB35_34
.LBB35_34:
	mov	r1, -2147483648
	mov	r2, -2147483648
	mov	r0, t2
	call	__bit_xor
	sub	r2, rax
	mov	r1, 31
	mov	r0, r2
	call	__bit_shr
	mov	r1, 1
	mov	r6, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r0, rax
	mov	r1, t2
	call	__bit_and
	mov	t6, rax
	mov	r0, t6
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
	mov	t7, rax
	mov	r3, t6
	sub	r3, t2
	add	r3, 128
	mov	r2, 0
	mov	t2, -1147483648
	mov	t3, 99999999
	mov	x10, 10000
	mov	x11, mcasm_static_29af82f542537f86f33d7b3d416ba898
	mov	t4, 10
	mov	x15, -2147483645
	mov	r5, 0
	mov	r7, [rsp-23]
.LBB35_35:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB35_45 Depth 2
                                        //     Child Loop BB35_48 Depth 2
                                        //     Child Loop BB35_66 Depth 2
	mov	x14, t7
	add	t7, -1
	mov	x13, r2
	mov	r0, t6
	mov	r1, t7
	mov	r2, rsp
	call	ryu_fill_pow10_split_exp
	mov	r0, r7
	mov	r1, t1
	call	ryu_mul_shift_mod1e9_exact
	mov	t5, rax
	jz	x13, .LBB35_50
	jmp	.LBB35_36
.LBB35_36:                              //   in Loop: Header=BB35_35 Depth=1
	mov	r2, x13
	add	r2, 9
	mov	r1, -2147483648
	mov	x0, 9
	mov	r0, x9
	call	__bit_xor
	mov	x1, rax
	mov	r0, r2
	call	__bit_xor
	jg	rax, x1, .LBB35_76
	jmp	.LBB35_37
.LBB35_37:                              //   in Loop: Header=BB35_35 Depth=1
	mov	x0, r4
	add	x0, x12
	jz	t5, .LBB35_39
	jmp	.LBB35_38
.LBB35_38:                              // %memcpy.exit66
                                        //   in Loop: Header=BB35_35 Depth=1
	mov	x5, x0
	mov	r1, 10000
	add	x5, 7
	mov	r0, t5
	call	__udivsi3
	mov	x1, rax
	mov	r0, x1
	mul	r0, -10000
	add	r0, t5
	mov	r1, 100
	call	__udivsi3
	mov	x2, rax
	mov	t0, x2
	mul	t0, -100
	add	t0, r0
	mov	r1, 1
	mov	r0, t0
	call	__bit_shl
	mov	r0, rax
	add	r0, x11
	mov	x3, r0
	mov	r1, 2
	add	x3, 1
	call	__bit_shr
	mov	r1, 3
	mov	x4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	x6, rax
	mov	x4, x0
	mov	r1, 3
	add	x4, 8
	mov	r0, x5
	call	__bit_and
	mov	r1, -4
	mov	x7, rax
	call	__bit_and
	mov	x5, rax
	mov	x8, [x5]
	mov	r1, 3
	mov	r0, x7
	call	__bit_shl
	mov	r0, 255
	mov	x7, rax
	mov	r1, x7
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x8
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x8, rax
	mov	r0, x6
	call	__bit_and
	mov	r0, rax
	mov	r1, x7
	call	__bit_shl
	mov	r0, x8
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	[x5], rax
	mov	r0, x3
	call	__bit_shr
	mov	r1, 3
	mov	x5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	x3, rax
	mov	r0, x4
	call	__bit_and
	mov	r1, -4
	mov	x5, rax
	call	__bit_and
	mov	x4, rax
	mov	x6, [x4]
	mov	r1, 3
	mov	r0, x5
	call	__bit_shl
	mov	r0, 255
	mov	x5, rax
	mov	r1, x5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x6
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x6, rax
	mov	r0, x3
	call	__bit_and
	mov	r0, rax
	mov	r1, x5
	call	__bit_shl
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	[x4], rax
	mov	x4, x0
	mov	r1, 1
	add	x4, 5
	mov	r0, x2
	call	__bit_shl
	mov	r0, rax
	add	r0, x11
	mov	x2, r0
	mov	r1, 2
	add	x2, 1
	call	__bit_shr
	mov	r1, 3
	mov	x3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	x5, rax
	mov	x3, x0
	mov	r1, 3
	add	x3, 6
	mov	r0, x4
	call	__bit_and
	mov	r1, -4
	mov	x6, rax
	call	__bit_and
	mov	x4, rax
	mov	x7, [x4]
	mov	r1, 3
	mov	r0, x6
	call	__bit_shl
	mov	r0, 255
	mov	x6, rax
	mov	r1, x6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x7
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x7, rax
	mov	r0, x5
	call	__bit_and
	mov	r0, rax
	mov	r1, x6
	call	__bit_shl
	mov	r0, x7
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	[x4], rax
	mov	r0, x2
	call	__bit_shr
	mov	r1, 3
	mov	x4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	x2, rax
	mov	r0, x3
	call	__bit_and
	mov	r1, -4
	mov	x4, rax
	call	__bit_and
	mov	x3, rax
	mov	x5, [x3]
	mov	r1, 3
	mov	r0, x4
	call	__bit_shl
	mov	r0, 255
	mov	x4, rax
	mov	r1, x4
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x5
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x2
	call	__bit_and
	mov	r0, rax
	mov	r1, x4
	call	__bit_shl
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	r1, 100000000
	mov	[x3], rax
	mov	r0, t5
	call	__udivsi3
	mov	t5, rax
	mov	r0, t5
	mul	r0, -10000
	add	r0, x1
	mov	r1, 100
	call	__udivsi3
	mov	x1, rax
	mov	t0, x1
	mul	t0, -100
	add	t0, r0
	mov	r1, 1
	mov	r0, t0
	call	__bit_shl
	mov	r0, rax
	mov	x4, x0
	add	r0, x11
	add	x4, 3
	mov	x2, r0
	mov	r1, 2
	add	x2, 1
	call	__bit_shr
	mov	r1, 3
	mov	x3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	x5, rax
	mov	x3, x0
	mov	r1, 3
	add	x3, 4
	mov	r0, x4
	call	__bit_and
	mov	r1, -4
	mov	x6, rax
	call	__bit_and
	mov	x4, rax
	mov	x7, [x4]
	mov	r1, 3
	mov	r0, x6
	call	__bit_shl
	mov	r0, 255
	mov	x6, rax
	mov	r1, x6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x7
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x7, rax
	mov	r0, x5
	call	__bit_and
	mov	r0, rax
	mov	r1, x6
	call	__bit_shl
	mov	r0, x7
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	[x4], rax
	mov	r0, x2
	call	__bit_shr
	mov	r1, 3
	mov	x4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	x2, rax
	mov	r0, x3
	call	__bit_and
	mov	r1, -4
	mov	x4, rax
	call	__bit_and
	mov	x3, rax
	mov	x5, [x3]
	mov	r1, 3
	mov	r0, x4
	call	__bit_shl
	mov	r0, 255
	mov	x4, rax
	mov	r1, x4
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x5
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x2
	call	__bit_and
	mov	r0, rax
	mov	r1, x4
	call	__bit_shl
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	[x3], rax
	mov	r0, x1
	call	__bit_shl
	mov	r0, rax
	add	r0, x11
	mov	x2, x0
	add	x2, 1
	mov	x1, r0
	mov	r1, 2
	add	x1, 1
	call	__bit_shr
	mov	r1, 3
	mov	x3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	x3, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, -4
	mov	x4, rax
	call	__bit_and
	mov	x2, rax
	mov	x5, [x2]
	mov	r1, 3
	mov	r0, x4
	call	__bit_shl
	mov	r0, 255
	mov	x4, rax
	mov	r1, x4
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x5
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x3
	call	__bit_and
	mov	r0, rax
	mov	r1, x4
	call	__bit_shl
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	[x2], rax
	mov	x2, x0
	mov	r1, 2
	add	x2, 2
	mov	r0, x1
	call	__bit_shr
	mov	r1, 3
	mov	x3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	x1, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, -4
	mov	x3, rax
	call	__bit_and
	mov	x2, rax
	mov	x4, [x2]
	mov	r1, 3
	mov	r0, x3
	call	__bit_shl
	mov	r0, 255
	mov	x3, rax
	mov	r1, x3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x4
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x1
	call	__bit_and
	mov	r0, rax
	mov	r1, x3
	call	__bit_shl
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	[x2], rax
	mov	r1, 3
	add	t5, 48
	mov	r0, x0
	call	__bit_and
	mov	r1, -4
	mov	x1, rax
	call	__bit_and
	mov	x0, rax
	mov	x2, [x0]
	mov	r1, 3
	mov	r0, x1
	call	__bit_shl
	mov	r0, 255
	mov	x1, rax
	mov	r1, x1
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x2
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, t5
	call	__bit_and
	mov	r0, rax
	mov	r1, x1
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	[x0], rax
	jmp	.LBB35_49
.LBB35_39:                              //   in Loop: Header=BB35_35 Depth=1
	mov	r1, 3
	mov	r0, x0
	call	__bit_and
	mov	x1, 9
	mov	t5, x0
	jz	rax, .LBB35_44
	jmp	.LBB35_40
.LBB35_40:                              // %.preheader117.preheader
                                        //   in Loop: Header=BB35_35 Depth=1
	mov	t5, x0
	add	t5, 1
	mov	r0, x0
	call	__bit_and
	mov	r1, -4
	mov	x1, rax
	call	__bit_and
	mov	x2, rax
	mov	x3, [x2]
	mov	r1, 3
	mov	r0, x1
	call	__bit_shl
	mov	r0, 255
	mov	x1, rax
	mov	r1, x1
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x3
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	x3, rax
	mov	r1, x1
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r1, 3
	mov	[x2], rax
	mov	r0, t5
	call	__bit_and
	mov	x1, 8
	jz	rax, .LBB35_44
	jmp	.LBB35_41
.LBB35_41:                              // %.preheader117.1
                                        //   in Loop: Header=BB35_35 Depth=1
	mov	x2, x0
	add	x2, 2
	mov	r0, t5
	call	__bit_and
	mov	r1, -4
	mov	x1, rax
	call	__bit_and
	mov	t5, rax
	mov	x3, [t5]
	mov	r1, 3
	mov	r0, x1
	call	__bit_shl
	mov	r0, 255
	mov	x1, rax
	mov	r1, x1
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x3
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	x3, rax
	mov	r1, x1
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r1, 3
	mov	[t5], rax
	mov	r0, x2
	call	__bit_and
	mov	x1, 7
	mov	t5, x2
	jz	rax, .LBB35_44
	jmp	.LBB35_42
.LBB35_42:                              // %.preheader117.2
                                        //   in Loop: Header=BB35_35 Depth=1
	mov	t5, x0
	add	t5, 3
	mov	r0, x2
	call	__bit_and
	mov	r1, -4
	mov	x1, rax
	call	__bit_and
	mov	x2, rax
	mov	x3, [x2]
	mov	r1, 3
	mov	r0, x1
	call	__bit_shl
	mov	r0, 255
	mov	x1, rax
	mov	r1, x1
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x3
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	x3, rax
	mov	r1, x1
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r1, 3
	mov	[x2], rax
	mov	r0, t5
	call	__bit_and
	mov	x1, 6
	jz	rax, .LBB35_44
	jmp	.LBB35_43
.LBB35_43:                              // %.preheader117.3
                                        //   in Loop: Header=BB35_35 Depth=1
	add	x0, 4
	mov	r0, t5
	call	__bit_and
	mov	r1, -4
	mov	x1, rax
	call	__bit_and
	mov	t5, rax
	mov	x2, [t5]
	mov	r1, 3
	mov	r0, x1
	call	__bit_shl
	mov	r0, 255
	mov	x1, rax
	mov	r1, x1
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x2
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	x2, rax
	mov	r1, x1
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	[t5], rax
	mov	x1, 5
	mov	t5, x0
.LBB35_44:                              // %.thread.preheader
                                        //   in Loop: Header=BB35_35 Depth=1
.LBB35_45:                              // %.thread
                                        //   Parent Loop BB35_35 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	[t5], 808464432
	add	x1, -4
	mov	r1, -2147483648
	add	t5, 4
	mov	r0, x1
	call	__bit_xor
	jg	rax, x15, .LBB35_45
	jmp	.LBB35_46
.LBB35_46:                              // %.loopexit5.i71
                                        //   in Loop: Header=BB35_35 Depth=1
	jz	x1, .LBB35_49
	jmp	.LBB35_47
.LBB35_47:                              // %.preheader116.preheader
                                        //   in Loop: Header=BB35_35 Depth=1
	mov	x4, 0
.LBB35_48:                              // %.preheader116
                                        //   Parent Loop BB35_35 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, t5
	add	r0, x4
	mov	r1, 3
	call	__bit_and
	mov	r1, -4
	mov	x0, rax
	call	__bit_and
	mov	x2, rax
	mov	x3, [x2]
	mov	r1, 3
	mov	r0, x0
	call	__bit_shl
	mov	r0, 255
	mov	x0, rax
	mov	r1, x0
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x3
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	x3, rax
	mov	r1, x0
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	add	x4, 1
	mov	[x2], rax
	jne	x1, x4, .LBB35_48
	jmp	.LBB35_49
.LBB35_49:                              // %memset.exit73
                                        //   in Loop: Header=BB35_35 Depth=1
	add	x12, 9
	jmp	.LBB35_77
.LBB35_50:                              //   in Loop: Header=BB35_35 Depth=1
	mov	r2, 0
	jz	t5, .LBB35_77
	jmp	.LBB35_51
.LBB35_51:                              //   in Loop: Header=BB35_35 Depth=1
	mov	r1, -2147483648
	mov	r0, t5
	call	__bit_xor
	jl	rax, t2, .LBB35_53
	jmp	.LBB35_52
.LBB35_52:
	call	abort
.LBB35_53:                              //   in Loop: Header=BB35_35 Depth=1
	mov	x0, 9
	jg	t5, t3, .LBB35_62
	jmp	.LBB35_54
.LBB35_54:                              //   in Loop: Header=BB35_35 Depth=1
	mov	x0, 8
	mov	r0, 9999999
	jg	t5, r0, .LBB35_62
	jmp	.LBB35_55
.LBB35_55:                              //   in Loop: Header=BB35_35 Depth=1
	mov	x0, 7
	mov	r0, 999999
	jg	t5, r0, .LBB35_62
	jmp	.LBB35_56
.LBB35_56:                              //   in Loop: Header=BB35_35 Depth=1
	mov	x0, 6
	mov	r0, 99999
	jg	t5, r0, .LBB35_62
	jmp	.LBB35_57
.LBB35_57:                              //   in Loop: Header=BB35_35 Depth=1
	mov	x0, 5
	mov	r0, 9999
	jg	t5, r0, .LBB35_62
	jmp	.LBB35_58
.LBB35_58:                              //   in Loop: Header=BB35_35 Depth=1
	mov	x0, 4
	mov	r0, 999
	jg	t5, r0, .LBB35_62
	jmp	.LBB35_59
.LBB35_59:                              //   in Loop: Header=BB35_35 Depth=1
	mov	x0, 3
	mov	r0, 99
	jg	t5, r0, .LBB35_62
	jmp	.LBB35_60
.LBB35_60:                              //   in Loop: Header=BB35_35 Depth=1
	mov	x0, 2
	mov	r0, 9
	jg	t5, r0, .LBB35_62
	jmp	.LBB35_61
.LBB35_61:                              //   in Loop: Header=BB35_35 Depth=1
	mov	x0, 1
.LBB35_62:                              //   in Loop: Header=BB35_35 Depth=1
	mov	r5, t7
	mul	r5, 9
	add	r5, x0
	add	r5, -1
	mov	r0, x9
	call	__bit_xor
	mov	r2, rax
	mov	r0, x0
	call	__bit_xor
	jg	rax, r2, .LBB35_76
	jmp	.LBB35_63
.LBB35_63:                              //   in Loop: Header=BB35_35 Depth=1
	mov	r0, [rsp-24]
	jz	r0, .LBB35_74
	jmp	.LBB35_64
.LBB35_64:                              //   in Loop: Header=BB35_35 Depth=1
	mov	r2, r4
	add	r2, x12
	mov	x3, 0
	mov	x1, r2
	add	x1, x0
	jl	t5, x10, .LBB35_68
	jmp	.LBB35_65
.LBB35_65:                              //   in Loop: Header=BB35_35 Depth=1
	mov	x10, x9
	mov	x13, 0
.LBB35_66:                              // %memcpy.exit74
                                        //   Parent Loop BB35_35 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 10000
	mov	x2, t5
	mov	r0, x2
	call	__udivsi3
	mov	t5, rax
	mov	r0, t5
	mul	r0, -10000
	add	r0, x2
	mov	r1, 100
	call	__udivsi3
	mov	x4, rax
	mov	t0, x4
	mul	t0, -100
	add	t0, r0
	mov	r1, 1
	mov	r0, t0
	call	__bit_shl
	mov	x3, x1
	add	x3, x13
	mov	r0, rax
	mov	x6, x3
	add	r0, x11
	add	x6, -1
	mov	x5, r0
	mov	r1, 2
	add	x5, 1
	call	__bit_shr
	mov	r1, 3
	mov	x7, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x7]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	x7, rax
	mov	r0, x6
	call	__bit_and
	mov	r1, -4
	mov	x8, rax
	call	__bit_and
	mov	x6, rax
	mov	x9, [x6]
	mov	r1, 3
	mov	r0, x8
	call	__bit_shl
	mov	r0, 255
	mov	x8, rax
	mov	r1, x8
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x9
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x9, rax
	mov	r0, x7
	call	__bit_and
	mov	r0, rax
	mov	r1, x8
	call	__bit_shl
	mov	r0, x9
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	[x6], rax
	mov	r0, x5
	call	__bit_shr
	mov	r1, 3
	mov	x6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	x5, rax
	mov	r0, x3
	call	__bit_and
	mov	r1, -4
	mov	x6, rax
	call	__bit_and
	mov	x7, rax
	mov	x8, [x7]
	mov	r1, 3
	mov	r0, x6
	call	__bit_shl
	mov	r0, 255
	mov	x6, rax
	mov	r1, x6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x8
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x8, rax
	mov	r0, x5
	call	__bit_and
	mov	r0, rax
	mov	r1, x6
	call	__bit_shl
	mov	r0, x8
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	[x7], rax
	mov	r0, x4
	call	__bit_shl
	mov	r0, rax
	mov	x5, x3
	add	r0, x11
	add	x5, -3
	mov	x4, r0
	mov	r1, 2
	add	x4, 1
	call	__bit_shr
	mov	r1, 3
	mov	x6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	x6, rax
	mov	r1, 3
	add	x3, -2
	mov	r0, x5
	call	__bit_and
	mov	r1, -4
	mov	x7, rax
	call	__bit_and
	mov	x5, rax
	mov	x8, [x5]
	mov	r1, 3
	mov	r0, x7
	call	__bit_shl
	mov	r0, 255
	mov	x7, rax
	mov	r1, x7
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x8
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x8, rax
	mov	r0, x6
	call	__bit_and
	mov	r0, rax
	mov	r1, x7
	call	__bit_shl
	mov	r0, x8
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	[x5], rax
	mov	r0, x4
	call	__bit_shr
	mov	r1, 3
	mov	x5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	mov	r1, -4
	mov	x5, rax
	call	__bit_and
	mov	x3, rax
	mov	x6, [x3]
	mov	r1, 3
	mov	r0, x5
	call	__bit_shl
	mov	r0, 255
	mov	x5, rax
	mov	r1, x5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x6
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x6, rax
	mov	r0, x4
	call	__bit_and
	mov	r0, rax
	mov	r1, x5
	call	__bit_shl
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	[x3], rax
	add	x13, -4
	jg	x2, t3, .LBB35_66
	jmp	.LBB35_67
.LBB35_67:                              // %.loopexit115.loopexit
                                        //   in Loop: Header=BB35_35 Depth=1
	mov	x3, 0
	sub	x3, x13
	mov	x9, x10
	mov	r7, [rsp-23]
	mov	x10, 10000
.LBB35_68:                              // %.loopexit115
                                        //   in Loop: Header=BB35_35 Depth=1
	mov	r0, 100
	jl	t5, r0, .LBB35_70
	jmp	.LBB35_69
.LBB35_69:                              // %memcpy.exit76.loopexit
                                        //   in Loop: Header=BB35_35 Depth=1
	mov	r1, 65532
	mov	r0, t5
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
	add	r0, t5
	mov	r1, 65535
	call	__bit_and
	mov	r1, 1
	mov	r0, rax
	call	__bit_shl
	sub	x1, x3
	mov	r0, rax
	mov	x3, x1
	add	r0, x11
	add	x3, -1
	mov	t5, r0
	mov	r1, 2
	add	t5, 1
	call	__bit_shr
	mov	r1, 3
	mov	x4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	mov	r1, -4
	mov	x5, rax
	call	__bit_and
	mov	x3, rax
	mov	x6, [x3]
	mov	r1, 3
	mov	r0, x5
	call	__bit_shl
	mov	r0, 255
	mov	x5, rax
	mov	r1, x5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x6
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x6, rax
	mov	r0, x4
	call	__bit_and
	mov	r0, rax
	mov	r1, x5
	call	__bit_shl
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	[x3], rax
	mov	r0, t5
	call	__bit_shr
	mov	r1, 3
	mov	x3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	t5, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, -4
	mov	x3, rax
	call	__bit_and
	mov	x1, rax
	mov	x4, [x1]
	mov	r1, 3
	mov	r0, x3
	call	__bit_shl
	mov	r0, 255
	mov	x3, rax
	mov	r1, x3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x4
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, t5
	call	__bit_and
	mov	r0, rax
	mov	r1, x3
	call	__bit_shl
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	[x1], rax
	mov	t5, x2
.LBB35_70:                              // %memcpy.exit76
                                        //   in Loop: Header=BB35_35 Depth=1
	mov	x1, r2
	add	x1, 1
	jl	t5, t4, .LBB35_72
	jmp	.LBB35_71
.LBB35_71:                              //   in Loop: Header=BB35_35 Depth=1
	mov	r1, 1
	mov	r0, t5
	call	__bit_shl
	mov	t5, rax
	add	t5, x11
	mov	r0, t5
	add	r0, 1
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	x2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r0, r2
	add	r0, 2
	mov	r1, 3
	mov	x2, rax
	call	__bit_and
	mov	r1, -4
	mov	x3, rax
	call	__bit_and
	mov	x4, rax
	mov	x5, [x4]
	mov	r1, 3
	mov	r0, x3
	call	__bit_shl
	mov	r0, 255
	mov	x3, rax
	mov	r1, x3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x5
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x2
	call	__bit_and
	mov	r0, rax
	mov	r1, x3
	call	__bit_shl
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	r1, 3
	mov	[x4], rax
	mov	r0, x1
	call	__bit_and
	mov	r1, -4
	mov	x2, rax
	call	__bit_and
	mov	x1, rax
	mov	x3, [x1]
	mov	r1, 3
	mov	r0, x2
	call	__bit_shl
	mov	r0, 255
	mov	x2, rax
	mov	r1, x2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x3
	mov	r1, rax
	call	__bit_and
	mov	r0, 46
	mov	x3, rax
	mov	r1, x2
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	[x1], rax
	mov	r0, t5
	call	__bit_shr
	mov	r1, 3
	mov	x1, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x1]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t5, rax
	jmp	.LBB35_73
.LBB35_72:                              //   in Loop: Header=BB35_35 Depth=1
	mov	r1, 3
	mov	r0, x1
	call	__bit_and
	mov	r1, -4
	mov	x2, rax
	call	__bit_and
	mov	x1, rax
	mov	x3, [x1]
	mov	r1, 3
	mov	r0, x2
	call	__bit_shl
	mov	r0, 255
	mov	x2, rax
	mov	r1, x2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x3
	mov	r1, rax
	call	__bit_and
	mov	r0, 46
	mov	x3, rax
	mov	r1, x2
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r1, 48
	mov	[x1], rax
	mov	r0, t5
	call	__bit_or
	mov	t5, rax
.LBB35_73:                              //   in Loop: Header=BB35_35 Depth=1
	mov	r1, 3
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	x1, rax
	call	__bit_and
	mov	r2, rax
	mov	x2, [r2]
	mov	r1, 3
	mov	r0, x1
	call	__bit_shl
	mov	r1, 255
	mov	x1, rax
	mov	r0, t5
	call	__bit_and
	mov	r0, 255
	mov	t5, rax
	mov	r1, x1
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x2
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, t5
	call	__bit_and
	mov	r0, rax
	mov	r1, x1
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	[r2], rax
	mov	r0, x0
	add	r0, 1
	jmp	.LBB35_75
.LBB35_74:                              //   in Loop: Header=BB35_35 Depth=1
	mov	r0, r4
	add	r0, x12
	mov	r1, 3
	add	t5, 48
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	x1, rax
	mov	x2, [x1]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r1, 255
	mov	r2, rax
	mov	r0, t5
	call	__bit_and
	mov	r0, 255
	mov	t5, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x2
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, t5
	call	__bit_and
	mov	r0, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	[x1], rax
	mov	r0, 1
.LBB35_75:                              //   in Loop: Header=BB35_35 Depth=1
	add	x12, r0
	mov	r2, x0
	jmp	.LBB35_77
.LBB35_76:
	mov	r2, x0
	jmp	.LBB35_130
.LBB35_77:                              //   in Loop: Header=BB35_35 Depth=1
	jg	x14, r6, .LBB35_35
	jmp	.LBB35_78
.LBB35_78:
	mov	[rsp-25], r5
	mov	t6, 0
	mov	r0, [rsp-26]
	mov	x10, 0
	jl	r0, t6, .LBB35_80
	jmp	.LBB35_129
.LBB35_79:
	mov	r0, t2
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
	mov	t6, rax
	mov	r0, 0
	mov	[rsp-25], r0
	mov	r2, 0
.LBB35_80:
	mov	x11, rsp
	mov	x15, rsp
	mov	t3, rsp
	mov	r6, rsp
	mov	x7, rsp
	mov	r0, [rsp-26]
	sub	x10, r0
	add	x11, 20
	add	x15, 16
	add	t3, 12
	add	r6, 8
	add	x7, 4
	mov	r7, 200
	mov	t4, -2147483645
	mov	x13, r2
.LBB35_81:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB35_117 Depth 2
                                        //     Child Loop BB35_96 Depth 2
                                        //     Child Loop BB35_99 Depth 2
	mov	t7, t6
	mov	[x11], 0
	mov	[x15], 0
	mov	[t3], 0
	mov	[r6], 0
	mov	[x7], 0
	mov	[rsp], 0
	add	t6, 1
	jz	t7, .LBB35_83
	jmp	.LBB35_82
.LBB35_82:                              //   in Loop: Header=BB35_81 Depth=1
	mov	r0, t7
	mul	r0, 9
	jg	r0, x10, .LBB35_84
	jmp	.LBB35_83
.LBB35_83:                              //   in Loop: Header=BB35_81 Depth=1
	mov	r7, x12
	mov	x12, r4
	mov	t2, x9
	mov	x14, x10
	mov	r0, x10
	mov	r1, t6
	mov	r2, rsp
	call	ryu_fill_pow10_split_2_exp
	mov	r5, x7
	mov	t5, [x7]
	mov	x1, [rsp]
	mov	r1, 0
	mov	r3, 0
	mov	r0, t5
	mov	x10, [rsp-23]
	mov	r2, x10
	call	__muldi3
	mov	x2, rax
	mov	x3, t0
	mov	r0, x1
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
	mov	x0, rax
	add	x2, r2
	mov	r1, 31
	add	x0, x3
	mov	r0, x2
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
	mov	r0, x1
	mov	r2, t1
	call	__muldi3
	add	x2, t0
	add	x0, x2
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
	call	__bit_and
	mov	r1, 0
	mov	x1, rax
	mov	r0, t5
	call	__muldi3
	mov	x3, rax
	mov	r2, t0
	mov	r1, 31
	add	x3, x0
	mov	r0, x2
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r0, rax
	call	__bit_and
	mov	x4, rax
	add	x4, r2
	mov	r4, r6
	mov	r0, [r6]
	mov	r6, t3
	mov	t5, [t3]
	mov	r1, 0
	add	x4, x1
	mov	r2, x10
	call	__muldi3
	mov	x5, rax
	mov	x0, t0
	mov	r2, t1
	call	__muldi3
	mov	x6, rax
	mov	x7, t0
	mov	r0, t5
	mov	r2, x10
	call	__muldi3
	mov	x8, rax
	mov	x9, t0
	mov	r2, t1
	call	__muldi3
	mov	x1, rax
	mov	x2, t0
	mov	r0, x0
	mov	r2, x8
	mov	r3, x9
	call	__adddi3
	mov	x0, t0
	mov	r0, rax
	mov	r2, x6
	mov	r3, x7
	call	__adddi3
	mov	x6, rax
	mov	t5, t0
	mov	r0, x5
	mov	r2, x3
	mov	r3, x4
	call	__adddi3
	mov	r2, 0
	mov	r1, t0
	mov	r0, rax
	mov	r3, x6
	call	__adddi3
	mov	r2, rax
	mov	r3, t0
	mov	r0, r3
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
	sub	r3, x4
	mov	r1, 31
	mov	x4, rax
	mov	r0, r3
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	r2, x3
	mov	r1, 31
	mov	r3, rax
	mov	r0, r2
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	rax, r3
	add	x4, 1
	mov	r0, x4
	mov	r1, rax
	call	__bit_and
	add	r3, rax
	mov	r1, 1
	mov	r0, r3
	call	__bit_and
	mov	t3, x15
	mov	r0, [x15]
	mov	x15, x11
	mov	x4, [x11]
	mov	r1, 0
	mov	r3, 0
	mov	x3, rax
	mov	r2, x10
	call	__muldi3
	mov	x5, rax
	mov	x6, t0
	mov	r2, t1
	call	__muldi3
	mov	x7, rax
	mov	x8, t0
	mov	r0, x4
	mov	r2, x10
	call	__muldi3
	mov	x9, rax
	mov	x10, t0
	mov	r2, t1
	call	__muldi3
	mov	x4, rax
	mov	x11, t0
	mov	r0, x6
	mov	r2, x9
	mov	r3, x10
	call	__adddi3
	mov	x6, t0
	mov	r0, rax
	mov	r2, x7
	mov	r3, x8
	call	__adddi3
	mov	x7, rax
	mov	x8, t0
	mov	r0, x5
	mov	r2, x1
	mov	r3, x2
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x0
	call	__adddi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, t5
	call	__adddi3
	mov	r2, 0
	mov	x0, rax
	mov	t5, t0
	mov	r0, x0
	mov	r1, t5
	mov	r3, x7
	call	__adddi3
	mov	r1, 0
	mov	x1, t0
	mov	r0, x6
	mov	r2, x4
	mov	r3, x11
	call	__adddi3
	mov	r3, 0
	mov	r1, t0
	mov	r0, rax
	mov	r2, x8
	call	__adddi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x3
	call	__adddi3
	mov	r1, -512
	mov	x2, rax
	mov	x3, t0
	mov	r0, x2
	call	__bit_and
	mov	r2, 0
	mov	r3, 1000000000
	mov	x4, rax
	mov	r1, x3
	call	__umoddi3
	mov	r1, 1073741823
	mov	r0, t0
	call	__bit_and
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
	mov	r2, x2
	mov	r3, x3
	call	__adddi3
	mov	r1, -512
	mov	x2, rax
	mov	r0, x0
	call	__bit_and
	mov	r2, 1000000000
	mov	r3, 0
	mov	x3, rax
	mov	r0, x1
	mov	r1, x2
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
	mov	r2, 1000000000
	mov	r3, 0
	mov	r0, x3
	mov	r1, rax
	call	__udivdi3
	mov	r2, -1000000000
	mov	r1, t0
	mov	r0, rax
	call	__muldi3
	mov	r1, t0
	mov	r0, rax
	mov	r2, x0
	mov	r3, t5
	call	__adddi3
	mov	t5, rax
	jz	x13, .LBB35_101
	jmp	.LBB35_85
.LBB35_84:                              //   in Loop: Header=BB35_81 Depth=1
	mov	r2, 0
	jz	x13, .LBB35_128
	jmp	.LBB35_86
.LBB35_85:                              //   in Loop: Header=BB35_81 Depth=1
	mov	r3, x13
	add	r3, 9
	mov	r1, -2147483648
	mov	r2, 9
	mov	x9, t2
	mov	r0, x9
	call	__bit_xor
	mov	t7, rax
	mov	r0, r3
	call	__bit_xor
	mov	x10, x14
	mov	x11, x15
	mov	x15, t3
	mov	t3, r6
	mov	r6, r4
	mov	r4, x12
	mov	x12, r7
	mov	x7, r5
	mov	r7, 200
	mov	r5, mcasm_static_29af82f542537f86f33d7b3d416ba898
	jg	rax, t7, .LBB35_127
	jmp	.LBB35_88
.LBB35_86:                              //   in Loop: Header=BB35_81 Depth=1
	mov	r3, x13
	add	r3, 9
	mov	r2, 9
	mov	r1, -2147483648
	mov	t5, 0
	mov	r0, x9
	call	__bit_xor
	mov	t7, rax
	mov	r0, r3
	call	__bit_xor
	jg	rax, t7, .LBB35_127
	jmp	.LBB35_87
.LBB35_87:                              //   in Loop: Header=BB35_81 Depth=1
	mov	r2, r4
	add	r2, x12
	jmp	.LBB35_90
.LBB35_88:                              //   in Loop: Header=BB35_81 Depth=1
	mov	r2, r4
	add	r2, x12
	jz	t5, .LBB35_90
	jmp	.LBB35_89
.LBB35_89:                              // %memcpy.exit77
                                        //   in Loop: Header=BB35_81 Depth=1
	mov	x3, r2
	mov	r1, 10000
	add	x3, 7
	mov	r0, t5
	call	__udivsi3
	mov	t7, rax
	mov	r0, t7
	mul	r0, -10000
	add	r0, t5
	mov	r1, 100
	call	__udivsi3
	mov	x0, rax
	mov	t0, x0
	mul	t0, -100
	add	t0, r0
	mov	r1, 1
	mov	r0, t0
	call	__bit_shl
	mov	r0, rax
	add	r0, r5
	mov	x1, r0
	mov	r1, 2
	add	x1, 1
	call	__bit_shr
	mov	r1, 3
	mov	x2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	x4, rax
	mov	x2, r2
	mov	r1, 3
	add	x2, 8
	mov	r0, x3
	call	__bit_and
	mov	r1, -4
	mov	x5, rax
	call	__bit_and
	mov	x3, rax
	mov	x6, [x3]
	mov	r1, 3
	mov	r0, x5
	call	__bit_shl
	mov	r0, 255
	mov	x5, rax
	mov	r1, x5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x6
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x6, rax
	mov	r0, x4
	call	__bit_and
	mov	r0, rax
	mov	r1, x5
	call	__bit_shl
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	[x3], rax
	mov	r0, x1
	call	__bit_shr
	mov	r1, 3
	mov	x3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	x1, rax
	mov	r0, x2
	call	__bit_and
	mov	r1, -4
	mov	x3, rax
	call	__bit_and
	mov	x2, rax
	mov	x4, [x2]
	mov	r1, 3
	mov	r0, x3
	call	__bit_shl
	mov	r0, 255
	mov	x3, rax
	mov	r1, x3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x4
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x1
	call	__bit_and
	mov	r0, rax
	mov	r1, x3
	call	__bit_shl
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	[x2], rax
	mov	x2, r2
	mov	r1, 1
	add	x2, 5
	mov	r0, x0
	call	__bit_shl
	mov	r0, rax
	add	r0, r5
	mov	x0, r0
	mov	r1, 2
	add	x0, 1
	call	__bit_shr
	mov	r1, 3
	mov	x1, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x1]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	x3, rax
	mov	x1, r2
	mov	r1, 3
	add	x1, 6
	mov	r0, x2
	call	__bit_and
	mov	r1, -4
	mov	x4, rax
	call	__bit_and
	mov	x2, rax
	mov	x5, [x2]
	mov	r1, 3
	mov	r0, x4
	call	__bit_shl
	mov	r0, 255
	mov	x4, rax
	mov	r1, x4
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x5
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x3
	call	__bit_and
	mov	r0, rax
	mov	r1, x4
	call	__bit_shl
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	[x2], rax
	mov	r0, x0
	call	__bit_shr
	mov	r1, 3
	mov	x2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	x0, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, -4
	mov	x2, rax
	call	__bit_and
	mov	x1, rax
	mov	x3, [x1]
	mov	r1, 3
	mov	r0, x2
	call	__bit_shl
	mov	r0, 255
	mov	x2, rax
	mov	r1, x2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x3
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x0
	call	__bit_and
	mov	r0, rax
	mov	r1, x2
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r1, 100000000
	mov	[x1], rax
	mov	r0, t5
	call	__udivsi3
	mov	t5, rax
	mov	r0, t5
	mul	r0, -10000
	add	r0, t7
	mov	r1, 100
	call	__udivsi3
	mov	t7, rax
	mov	t0, t7
	mul	t0, -100
	add	t0, r0
	mov	r1, 1
	mov	r0, t0
	call	__bit_shl
	mov	r0, rax
	mov	x2, r2
	add	r0, r5
	add	x2, 3
	mov	x0, r0
	mov	r1, 2
	add	x0, 1
	call	__bit_shr
	mov	r1, 3
	mov	x1, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x1]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	x3, rax
	mov	x1, r2
	mov	r1, 3
	add	x1, 4
	mov	r0, x2
	call	__bit_and
	mov	r1, -4
	mov	x4, rax
	call	__bit_and
	mov	x2, rax
	mov	x5, [x2]
	mov	r1, 3
	mov	r0, x4
	call	__bit_shl
	mov	r0, 255
	mov	x4, rax
	mov	r1, x4
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x5
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x3
	call	__bit_and
	mov	r0, rax
	mov	r1, x4
	call	__bit_shl
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	[x2], rax
	mov	r0, x0
	call	__bit_shr
	mov	r1, 3
	mov	x2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	x0, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, -4
	mov	x2, rax
	call	__bit_and
	mov	x1, rax
	mov	x3, [x1]
	mov	r1, 3
	mov	r0, x2
	call	__bit_shl
	mov	r0, 255
	mov	x2, rax
	mov	r1, x2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x3
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x0
	call	__bit_and
	mov	r0, rax
	mov	r1, x2
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	[x1], rax
	mov	r0, t7
	call	__bit_shl
	mov	r0, rax
	add	r0, r5
	mov	x0, r2
	add	x0, 1
	mov	t7, r0
	mov	r1, 2
	add	t7, 1
	call	__bit_shr
	mov	r1, 3
	mov	x1, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x1]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	x1, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, -4
	mov	x2, rax
	call	__bit_and
	mov	x0, rax
	mov	x3, [x0]
	mov	r1, 3
	mov	r0, x2
	call	__bit_shl
	mov	r0, 255
	mov	x2, rax
	mov	r1, x2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x3
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x1
	call	__bit_and
	mov	r0, rax
	mov	r1, x2
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	[x0], rax
	mov	x0, r2
	mov	r1, 2
	add	x0, 2
	mov	r0, t7
	call	__bit_shr
	mov	r1, 3
	mov	x1, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x1]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	t7, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, -4
	mov	x1, rax
	call	__bit_and
	mov	x0, rax
	mov	x2, [x0]
	mov	r1, 3
	mov	r0, x1
	call	__bit_shl
	mov	r0, 255
	mov	x1, rax
	mov	r1, x1
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x2
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, t7
	call	__bit_and
	mov	r0, rax
	mov	r1, x1
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	[x0], rax
	mov	r1, 3
	add	t5, 48
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	t7, rax
	call	__bit_and
	mov	r2, rax
	mov	x0, [r2]
	mov	r1, 3
	mov	r0, t7
	call	__bit_shl
	mov	r0, 255
	mov	t7, rax
	mov	r1, t7
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x0
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x0, rax
	mov	r0, t5
	call	__bit_and
	mov	r0, rax
	mov	r1, t7
	call	__bit_shl
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	[r2], rax
	jmp	.LBB35_100
.LBB35_90:                              //   in Loop: Header=BB35_81 Depth=1
	mov	r1, 3
	mov	r0, r2
	call	__bit_and
	mov	t5, 9
	jz	rax, .LBB35_95
	jmp	.LBB35_91
.LBB35_91:                              // %.preheader111.preheader
                                        //   in Loop: Header=BB35_81 Depth=1
	mov	x1, r4
	add	x1, x12
	mov	t7, x1
	add	t7, 1
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	t5, rax
	call	__bit_and
	mov	r2, rax
	mov	x0, [r2]
	mov	r1, 3
	mov	r0, t5
	call	__bit_shl
	mov	r0, 255
	mov	t5, rax
	mov	r1, t5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x0
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	x0, rax
	mov	r1, t5
	call	__bit_shl
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	r1, 3
	mov	[r2], rax
	mov	r0, t7
	call	__bit_and
	mov	t5, 8
	mov	r2, t7
	jz	rax, .LBB35_95
	jmp	.LBB35_92
.LBB35_92:                              // %.preheader111.1
                                        //   in Loop: Header=BB35_81 Depth=1
	mov	r2, x1
	add	r2, 2
	mov	r0, t7
	call	__bit_and
	mov	r1, -4
	mov	t5, rax
	call	__bit_and
	mov	t7, rax
	mov	x0, [t7]
	mov	r1, 3
	mov	r0, t5
	call	__bit_shl
	mov	r0, 255
	mov	t5, rax
	mov	r1, t5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x0
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	x0, rax
	mov	r1, t5
	call	__bit_shl
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	r1, 3
	mov	[t7], rax
	mov	r0, r2
	call	__bit_and
	mov	t5, 7
	jz	rax, .LBB35_95
	jmp	.LBB35_93
.LBB35_93:                              // %.preheader111.2
                                        //   in Loop: Header=BB35_81 Depth=1
	mov	t7, x1
	add	t7, 3
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	t5, rax
	call	__bit_and
	mov	r2, rax
	mov	x0, [r2]
	mov	r1, 3
	mov	r0, t5
	call	__bit_shl
	mov	r0, 255
	mov	t5, rax
	mov	r1, t5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x0
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	x0, rax
	mov	r1, t5
	call	__bit_shl
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	r1, 3
	mov	[r2], rax
	mov	r0, t7
	call	__bit_and
	mov	t5, 6
	mov	r2, t7
	jz	rax, .LBB35_95
	jmp	.LBB35_94
.LBB35_94:                              // %.preheader111.3
                                        //   in Loop: Header=BB35_81 Depth=1
	add	x1, 4
	mov	r0, t7
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	t5, rax
	mov	t7, [t5]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t7
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	t7, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, t7
	mov	r1, rax
	call	__bit_or
	mov	[t5], rax
	mov	t5, 5
	mov	r2, x1
.LBB35_95:                              // %.thread98.preheader
                                        //   in Loop: Header=BB35_81 Depth=1
.LBB35_96:                              // %.thread98
                                        //   Parent Loop BB35_81 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	[r2], 808464432
	add	t5, -4
	mov	r1, -2147483648
	add	r2, 4
	mov	r0, t5
	call	__bit_xor
	jg	rax, t4, .LBB35_96
	jmp	.LBB35_97
.LBB35_97:                              // %.loopexit5.i82
                                        //   in Loop: Header=BB35_81 Depth=1
	jz	t5, .LBB35_100
	jmp	.LBB35_98
.LBB35_98:                              // %.preheader110.preheader
                                        //   in Loop: Header=BB35_81 Depth=1
	mov	x2, 0
.LBB35_99:                              // %.preheader110
                                        //   Parent Loop BB35_81 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, r2
	add	r0, x2
	mov	r1, 3
	call	__bit_and
	mov	r1, -4
	mov	t7, rax
	call	__bit_and
	mov	x0, rax
	mov	x1, [x0]
	mov	r1, 3
	mov	r0, t7
	call	__bit_shl
	mov	r0, 255
	mov	t7, rax
	mov	r1, t7
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x1
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	x1, rax
	mov	r1, t7
	call	__bit_shl
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	add	x2, 1
	mov	[x0], rax
	jne	t5, x2, .LBB35_99
	jmp	.LBB35_100
.LBB35_100:                             // %memset.exit84
                                        //   in Loop: Header=BB35_81 Depth=1
	add	x12, 9
	mov	r2, r3
	jmp	.LBB35_128
.LBB35_101:                             //   in Loop: Header=BB35_81 Depth=1
	mov	r2, 0
	mov	x9, t2
	mov	x10, x14
	mov	x11, x15
	mov	x15, t3
	mov	t3, r6
	mov	r6, r4
	mov	r4, x12
	mov	x12, r7
	mov	x7, r5
	mov	r7, 200
	mov	x14, mcasm_static_29af82f542537f86f33d7b3d416ba898
	jz	t5, .LBB35_128
	jmp	.LBB35_102
.LBB35_102:                             //   in Loop: Header=BB35_81 Depth=1
	mov	r1, -2147483648
	mov	r0, t5
	call	__bit_xor
	mov	r0, -1147483648
	jl	rax, r0, .LBB35_104
	jmp	.LBB35_103
.LBB35_103:
	call	abort
.LBB35_104:                             //   in Loop: Header=BB35_81 Depth=1
	mov	r2, 9
	mov	r0, 99999999
	jg	t5, r0, .LBB35_113
	jmp	.LBB35_105
.LBB35_105:                             //   in Loop: Header=BB35_81 Depth=1
	mov	r2, 8
	mov	r0, 9999999
	jg	t5, r0, .LBB35_113
	jmp	.LBB35_106
.LBB35_106:                             //   in Loop: Header=BB35_81 Depth=1
	mov	r2, 7
	mov	r0, 999999
	jg	t5, r0, .LBB35_113
	jmp	.LBB35_107
.LBB35_107:                             //   in Loop: Header=BB35_81 Depth=1
	mov	r2, 6
	mov	r0, 99999
	jg	t5, r0, .LBB35_113
	jmp	.LBB35_108
.LBB35_108:                             //   in Loop: Header=BB35_81 Depth=1
	mov	r2, 5
	mov	r0, 9999
	jg	t5, r0, .LBB35_113
	jmp	.LBB35_109
.LBB35_109:                             //   in Loop: Header=BB35_81 Depth=1
	mov	r2, 4
	mov	r0, 999
	jg	t5, r0, .LBB35_113
	jmp	.LBB35_110
.LBB35_110:                             //   in Loop: Header=BB35_81 Depth=1
	mov	r2, 3
	mov	r0, 99
	jg	t5, r0, .LBB35_113
	jmp	.LBB35_111
.LBB35_111:                             //   in Loop: Header=BB35_81 Depth=1
	mov	r2, 2
	mov	r0, 9
	jg	t5, r0, .LBB35_113
	jmp	.LBB35_112
.LBB35_112:                             //   in Loop: Header=BB35_81 Depth=1
	mov	r2, 1
.LBB35_113:                             //   in Loop: Header=BB35_81 Depth=1
	mov	r0, t7
	call	__bit_not
	mul	rax, 9
	add	rax, r2
	add	rax, -1
	mov	[rsp-25], rax
	mov	r0, x9
	call	__bit_xor
	mov	r3, rax
	mov	r0, r2
	call	__bit_xor
	jg	rax, r3, .LBB35_127
	jmp	.LBB35_114
.LBB35_114:                             //   in Loop: Header=BB35_81 Depth=1
	mov	r0, [rsp-24]
	jz	r0, .LBB35_125
	jmp	.LBB35_115
.LBB35_115:                             //   in Loop: Header=BB35_81 Depth=1
	mov	r3, r4
	add	r3, x12
	mov	x0, 0
	mov	t2, 99999999
	mov	r0, 10000
	jl	t5, r0, .LBB35_119
	jmp	.LBB35_116
.LBB35_116:                             //   in Loop: Header=BB35_81 Depth=1
	mov	x8, r3
	add	x8, r2
	mov	x7, 0
.LBB35_117:                             // %memcpy.exit85
                                        //   Parent Loop BB35_81 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 10000
	mov	t7, t5
	mov	r0, t7
	call	__udivsi3
	mov	t5, rax
	mov	r0, t5
	mul	r0, -10000
	add	r0, t7
	mov	r1, 100
	call	__udivsi3
	mov	x1, rax
	mov	t0, x1
	mul	t0, -100
	add	t0, r0
	mov	r1, 1
	mov	r0, t0
	call	__bit_shl
	mov	x0, x8
	add	x0, x7
	mov	r0, rax
	mov	x3, x0
	add	r0, x14
	add	x3, -1
	mov	x2, r0
	mov	r1, 2
	add	x2, 1
	call	__bit_shr
	mov	r1, 3
	mov	x4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	x4, rax
	mov	r0, x3
	call	__bit_and
	mov	r1, -4
	mov	x5, rax
	call	__bit_and
	mov	x3, rax
	mov	x6, [x3]
	mov	r1, 3
	mov	r0, x5
	call	__bit_shl
	mov	r0, 255
	mov	x5, rax
	mov	r1, x5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x6
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x6, rax
	mov	r0, x4
	call	__bit_and
	mov	r0, rax
	mov	r1, x5
	call	__bit_shl
	mov	r0, x6
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	[x3], rax
	mov	r0, x2
	call	__bit_shr
	mov	r1, 3
	mov	x3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	x2, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, -4
	mov	x3, rax
	call	__bit_and
	mov	x4, rax
	mov	x5, [x4]
	mov	r1, 3
	mov	r0, x3
	call	__bit_shl
	mov	r0, 255
	mov	x3, rax
	mov	r1, x3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x5
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x2
	call	__bit_and
	mov	r0, rax
	mov	r1, x3
	call	__bit_shl
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	[x4], rax
	mov	r0, x1
	call	__bit_shl
	mov	r0, rax
	mov	x2, x0
	add	r0, x14
	add	x2, -3
	mov	x1, r0
	mov	r1, 2
	add	x1, 1
	call	__bit_shr
	mov	r1, 3
	mov	x3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	x3, rax
	mov	r1, 3
	add	x0, -2
	mov	r0, x2
	call	__bit_and
	mov	r1, -4
	mov	x4, rax
	call	__bit_and
	mov	x2, rax
	mov	x5, [x2]
	mov	r1, 3
	mov	r0, x4
	call	__bit_shl
	mov	r0, 255
	mov	x4, rax
	mov	r1, x4
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x5
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x5, rax
	mov	r0, x3
	call	__bit_and
	mov	r0, rax
	mov	r1, x4
	call	__bit_shl
	mov	r0, x5
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	[x2], rax
	mov	r0, x1
	call	__bit_shr
	mov	r1, 3
	mov	x2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	x1, rax
	mov	r0, x0
	call	__bit_and
	mov	r1, -4
	mov	x2, rax
	call	__bit_and
	mov	x0, rax
	mov	x3, [x0]
	mov	r1, 3
	mov	r0, x2
	call	__bit_shl
	mov	r0, 255
	mov	x2, rax
	mov	r1, x2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x3
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x3, rax
	mov	r0, x1
	call	__bit_and
	mov	r0, rax
	mov	r1, x2
	call	__bit_shl
	mov	r0, x3
	mov	r1, rax
	call	__bit_or
	mov	[x0], rax
	add	x7, -4
	jg	t7, t2, .LBB35_117
	jmp	.LBB35_118
.LBB35_118:                             // %.loopexit113.loopexit
                                        //   in Loop: Header=BB35_81 Depth=1
	mov	x0, 0
	sub	x0, x7
	mov	x7, r5
.LBB35_119:                             // %.loopexit113
                                        //   in Loop: Header=BB35_81 Depth=1
	mov	r0, 100
	jl	t5, r0, .LBB35_121
	jmp	.LBB35_120
.LBB35_120:                             // %memcpy.exit87.loopexit
                                        //   in Loop: Header=BB35_81 Depth=1
	mov	r1, 65532
	mov	r0, t5
	call	__bit_and
	mov	r1, 2
	mov	r0, rax
	call	__bit_shr
	mul	rax, 5243
	mov	r1, 17
	mov	r0, rax
	call	__bit_shr
	mov	t7, rax
	mov	r0, t7
	mul	r0, -100
	add	r0, t5
	mov	r1, 65535
	call	__bit_and
	mov	r1, 1
	mov	r0, rax
	call	__bit_shl
	mov	t5, r3
	add	t5, r2
	sub	t5, x0
	mov	r0, rax
	mov	x1, t5
	add	r0, x14
	add	x1, -1
	mov	x0, r0
	mov	r1, 2
	add	x0, 1
	call	__bit_shr
	mov	r1, 3
	mov	x2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	x2, rax
	mov	r0, x1
	call	__bit_and
	mov	r1, -4
	mov	x3, rax
	call	__bit_and
	mov	x1, rax
	mov	x4, [x1]
	mov	r1, 3
	mov	r0, x3
	call	__bit_shl
	mov	r0, 255
	mov	x3, rax
	mov	r1, x3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x4
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x4, rax
	mov	r0, x2
	call	__bit_and
	mov	r0, rax
	mov	r1, x3
	call	__bit_shl
	mov	r0, x4
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	[x1], rax
	mov	r0, x0
	call	__bit_shr
	mov	r1, 3
	mov	x1, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x1]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	x0, rax
	mov	r0, t5
	call	__bit_and
	mov	r1, -4
	mov	x1, rax
	call	__bit_and
	mov	t5, rax
	mov	x2, [t5]
	mov	r1, 3
	mov	r0, x1
	call	__bit_shl
	mov	r0, 255
	mov	x1, rax
	mov	r1, x1
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x2
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, x0
	call	__bit_and
	mov	r0, rax
	mov	r1, x1
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	[t5], rax
	mov	t5, t7
.LBB35_121:                             // %memcpy.exit87
                                        //   in Loop: Header=BB35_81 Depth=1
	mov	r0, 10
	jl	t5, r0, .LBB35_123
	jmp	.LBB35_122
.LBB35_122:                             //   in Loop: Header=BB35_81 Depth=1
	mov	r1, 1
	mov	r0, t5
	call	__bit_shl
	mov	t5, rax
	add	t5, x14
	mov	r0, t5
	add	r0, 1
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	t7, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t7]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r0, r3
	add	r0, 2
	mov	r1, 3
	mov	t7, rax
	call	__bit_and
	mov	r1, -4
	mov	x0, rax
	call	__bit_and
	mov	x1, rax
	mov	x2, [x1]
	mov	r1, 3
	mov	r0, x0
	call	__bit_shl
	mov	r0, 255
	mov	x0, rax
	mov	r1, x0
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x2
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x2, rax
	mov	r0, t7
	call	__bit_and
	mov	r0, rax
	mov	r1, x0
	call	__bit_shl
	mov	r0, x2
	mov	r1, rax
	call	__bit_or
	mov	r0, r3
	add	r0, 1
	mov	r1, 3
	mov	[x1], rax
	call	__bit_and
	mov	r1, -4
	mov	t7, rax
	call	__bit_and
	mov	x0, rax
	mov	x1, [x0]
	mov	r1, 3
	mov	r0, t7
	call	__bit_shl
	mov	r0, 255
	mov	t7, rax
	mov	r1, t7
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x1
	mov	r1, rax
	call	__bit_and
	mov	r0, 46
	mov	x1, rax
	mov	r1, t7
	call	__bit_shl
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	[x0], rax
	mov	r0, t5
	call	__bit_shr
	mov	r1, 3
	mov	t7, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t7]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t5, rax
	jmp	.LBB35_124
.LBB35_123:                             //   in Loop: Header=BB35_81 Depth=1
	mov	r0, r3
	add	r0, 1
	mov	r1, 3
	call	__bit_and
	mov	r1, -4
	mov	t7, rax
	call	__bit_and
	mov	x0, rax
	mov	x1, [x0]
	mov	r1, 3
	mov	r0, t7
	call	__bit_shl
	mov	r0, 255
	mov	t7, rax
	mov	r1, t7
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x1
	mov	r1, rax
	call	__bit_and
	mov	r0, 46
	mov	x1, rax
	mov	r1, t7
	call	__bit_shl
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	r1, 48
	mov	[x0], rax
	mov	r0, t5
	call	__bit_or
	mov	t5, rax
.LBB35_124:                             //   in Loop: Header=BB35_81 Depth=1
	mov	r1, 3
	mov	r0, r3
	call	__bit_and
	mov	r1, -4
	mov	t7, rax
	call	__bit_and
	mov	r3, rax
	mov	x0, [r3]
	mov	r1, 3
	mov	r0, t7
	call	__bit_shl
	mov	r1, 255
	mov	t7, rax
	mov	r0, t5
	call	__bit_and
	mov	r0, 255
	mov	t5, rax
	mov	r1, t7
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x0
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x0, rax
	mov	r0, t5
	call	__bit_and
	mov	r0, rax
	mov	r1, t7
	call	__bit_shl
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	mov	r0, r2
	add	r0, 1
	jmp	.LBB35_126
.LBB35_125:                             //   in Loop: Header=BB35_81 Depth=1
	mov	r0, r4
	add	r0, x12
	mov	r1, 3
	add	x0, 48
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	t5, rax
	mov	t7, [t5]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r1, 255
	mov	r3, rax
	mov	r0, x0
	call	__bit_and
	mov	r0, 255
	mov	x0, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t7
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t7, rax
	mov	r0, x0
	call	__bit_and
	mov	r0, rax
	mov	r1, r3
	call	__bit_shl
	mov	r0, t7
	mov	r1, rax
	call	__bit_or
	mov	[t5], rax
	mov	r0, 1
.LBB35_126:                             //   in Loop: Header=BB35_81 Depth=1
	add	x12, r0
	jmp	.LBB35_128
.LBB35_127:
	mov	r7, [rsp-23]
	mov	r5, [rsp-25]
	jmp	.LBB35_130
.LBB35_128:                             //   in Loop: Header=BB35_81 Depth=1
	mov	x13, r2
	jne	t6, r7, .LBB35_81
	jmp	.LBB35_129
.LBB35_129:                             // %.loopexit114
	sub	x9, r2
	mov	r3, 0
	mov	x13, r2
	mov	t4, x9
	mov	t5, 0
	mov	r5, [rsp-25]
	jmp	.LBB35_134
.LBB35_130:
	mov	t4, x9
	sub	t4, x13
	mov	r3, 0
	mov	r0, t4
	call	__bit_xor
	mov	t6, rax
	mov	r0, r2
	call	__bit_xor
	jle	rax, t6, .LBB35_134
	jmp	.LBB35_131
.LBB35_131:
	mov	r3, [rsp-24]
	sub	r3, r2
	add	r3, 1
	mov	r1, 10
.LBB35_132:                             // =>This Inner Loop Header: Depth=1
	mov	r0, t5
	call	__udivsi3
	add	r3, 1
	mov	t5, rax
	jne	x13, r3, .LBB35_132
	jmp	.LBB35_133
.LBB35_133:
	mov	r3, t5
	mul	r3, -10
	add	r3, r0
	mov	r0, 5
	je	r3, r0, .LBB35_135
	jmp	.LBB35_134
.LBB35_134:
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
	jmp	.LBB35_149
.LBB35_135:
	sub	x9, r5
	mov	r0, [rsp-26]
	add	r0, x9
	mov	r3, 0
	sub	r3, r0
	mov	t3, 1
	jl	r3, t3, .LBB35_140
	jmp	.LBB35_136
.LBB35_136:
	mov	r0, 59
	mov	r2, 1
	jg	r3, r0, .LBB35_149
	jmp	.LBB35_137
.LBB35_137:
	mov	r0, r7
	mov	r1, t1
	call	__bit_or
	jnz	rax, .LBB35_139
	jmp	.LBB35_138
.LBB35_138:
	call	abort
.LBB35_139:
	mov	r1, 31
	mov	r0, r3
	call	__bit_and
	mov	r2, rax
	mov	r1, 0
	sub	r1, r2
	mov	t3, 0
	mov	r0, r2
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	add	r3, -32
	mov	t6, rax
	mov	r0, r3
	call	__bit_shr
	mov	r0, -1
	mov	r3, rax
	mov	r1, r2
	call	__bit_shl
	mov	t7, 0
	sub	t7, r3
	mov	r3, rax
	mov	r0, t7
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
	sub	t3, t6
	mov	r0, rax
	mov	r1, t3
	call	__bit_and
	mov	r0, r3
	mov	r1, rax
	call	__bit_or
	mov	r0, rax
	mov	r1, t7
	call	__bit_and
	mov	r0, rax
	mov	r1, r2
	call	__bit_or
	mov	r2, rax
	mov	r0, r3
	mov	r1, t7
	call	__bit_and
	mov	r1, rax
	mov	r0, r2
	call	__bit_not
	mov	r2, rax
	mov	r0, r1
	call	__bit_not
	mov	r3, rax
	mov	r0, t1
	mov	r1, r2
	call	__bit_and
	mov	r2, rax
	mov	r0, r7
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
	mov	t3, rax
.LBB35_140:
	mov	r0, -1
	jg	x9, r0, .LBB35_147
	jmp	.LBB35_141
.LBB35_141:
	mov	r1, 1
	mov	r0, t3
	call	__bit_and
	jz	rax, .LBB35_147
	jmp	.LBB35_142
.LBB35_142:
	mov	r0, r7
	mov	r1, t1
	call	__bit_or
	jz	rax, .LBB35_144
	jmp	.LBB35_143
.LBB35_143:                             // %.preheader109.preheader
	mov	t3, 0
	sub	t3, x9
	mov	t2, -1
	jmp	.LBB35_145
.LBB35_144:
	call	abort
.LBB35_145:                             // %.preheader109
                                        // =>This Inner Loop Header: Depth=1
	mov	r2, -858993459
	mov	r3, -858993460
	mov	r0, r7
	mov	r1, t1
	call	__muldi3
	mov	r1, 858993459
	mov	r7, rax
	mov	t1, t0
	mov	r0, t1
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
	mov	r0, t1
	add	r0, -858993459
	mov	r1, 31
	mov	r2, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, r7
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
	add	t2, 1
	jnz	rax, .LBB35_145
	jmp	.LBB35_146
.LBB35_146:
	mov	r1, -2147483648
	mov	r2, 1
	mov	r0, t3
	call	__bit_xor
	mov	r3, rax
	mov	r0, t2
	call	__bit_xor
	jge	rax, r3, .LBB35_148
	jmp	.LBB35_149
.LBB35_147:
	mov	r1, -2147483648
	mov	r0, x9
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
	mov	r1, t3
	call	__bit_and
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB35_149
	jmp	.LBB35_148
.LBB35_148:
	mov	r2, 2
.LBB35_149:
	jz	x13, .LBB35_171
	jmp	.LBB35_150
.LBB35_150:
	mov	r3, r4
	add	r3, x12
	jnz	t5, .LBB35_166
	jmp	.LBB35_151
.LBB35_151:
	mov	r1, 3
	mov	r0, r3
	call	__bit_and
	mov	r6, t4
	jz	rax, .LBB35_156
	jmp	.LBB35_152
.LBB35_152:                             // %.preheader106.preheader
	mov	t3, r4
	add	t3, x12
	add	t3, 1
	mov	t2, 0
.LBB35_153:                             // %.preheader106
                                        // =>This Inner Loop Header: Depth=1
	je	t4, t2, .LBB35_183
	jmp	.LBB35_154
.LBB35_154:                             //   in Loop: Header=BB35_153 Depth=1
	mov	r0, r3
	add	r0, t2
	mov	r1, 3
	call	__bit_and
	mov	r1, -4
	mov	r6, rax
	call	__bit_and
	mov	r7, rax
	mov	t1, [r7]
	mov	r1, 3
	mov	r0, r6
	call	__bit_shl
	mov	r0, 255
	mov	r6, rax
	mov	r1, r6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	t1, rax
	mov	r1, r6
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	r0, t3
	add	r0, t2
	mov	r1, 3
	mov	[r7], rax
	call	__bit_and
	add	t2, 1
	jnz	rax, .LBB35_153
	jmp	.LBB35_155
.LBB35_155:                             // %.loopexit7.i88.loopexit
	add	r3, t2
	mov	r6, t4
	sub	r6, t2
.LBB35_156:                             // %.loopexit7.i88
	mov	r1, -2147483648
	mov	r0, r6
	call	__bit_xor
	mov	r0, -2147483644
	jl	rax, r0, .LBB35_163
	jmp	.LBB35_157
.LBB35_157:
	mov	r0, r6
	call	__bit_xor
	mov	r0, -2147483632
	jl	rax, r0, .LBB35_159
	jmp	.LBB35_158
.LBB35_158:                             // %.preheader.i90.preheader
	mov	r7, -2147483633
	jmp	.LBB35_161
.LBB35_159:                             // %.preheader435
	mov	r7, -2147483645
	jmp	.LBB35_162
.LBB35_160:
	mov	r0, 3
	jg	r6, r0, .LBB35_159
	jmp	.LBB35_163
.LBB35_161:                             // %.preheader.i90
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r3
	add	r0, 4
	mov	[r3], 808464432
	mov	r1, r3
	add	r1, 8
	mov	[r0], 808464432
	mov	r0, r3
	add	r0, 12
	mov	[r1], 808464432
	add	r3, 16
	add	r6, -16
	mov	r1, -2147483648
	mov	[r0], 808464432
	mov	r0, r6
	call	__bit_xor
	jg	rax, r7, .LBB35_161
	jmp	.LBB35_160
.LBB35_162:                             // =>This Inner Loop Header: Depth=1
	mov	[r3], 808464432
	add	r6, -4
	add	r3, 4
	mov	r0, r6
	call	__bit_xor
	jg	rax, r7, .LBB35_162
	jmp	.LBB35_163
.LBB35_163:                             // %.loopexit5.i89
	jz	r6, .LBB35_183
	jmp	.LBB35_164
.LBB35_164:                             // %.preheader105.preheader
	mov	t2, r3
.LBB35_165:                             // %.preheader105
                                        // =>This Inner Loop Header: Depth=1
	add	r6, -1
	mov	r1, 3
	add	t2, 1
	mov	r0, r3
	call	__bit_and
	mov	r1, -4
	mov	r7, rax
	call	__bit_and
	mov	r3, rax
	mov	t1, [r3]
	mov	r1, 3
	mov	r0, r7
	call	__bit_shl
	mov	r0, 255
	mov	r7, rax
	mov	r1, r7
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	t1, rax
	mov	r1, r7
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	mov	r3, t2
	jz	r6, .LBB35_183
	jmp	.LBB35_165
.LBB35_166:
	mov	r7, t4
	add	r7, -1
	mov	r6, 0
	jz	r7, .LBB35_169
	jmp	.LBB35_167
.LBB35_167:
	mov	t1, x12
	add	t1, t4
	add	t1, r4
	add	t1, -1
	mov	x1, mcasm_static_29af82f542537f86f33d7b3d416ba898
	mov	r0, t5
.LBB35_168:                             // %memcpy.exit92
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 100
	call	__udivsi3
	mov	t5, rax
	mov	r1, t5
	mul	r1, -100
	add	r0, r1
	mov	r1, 1
	call	__bit_shl
	mov	r0, rax
	mov	t3, t1
	add	r0, x1
	add	t3, -1
	mov	t2, r0
	mov	r1, 2
	add	t2, 1
	call	__bit_shr
	mov	r1, 3
	mov	t6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	t6, rax
	mov	r0, t3
	call	__bit_and
	mov	r1, -4
	mov	t7, rax
	call	__bit_and
	mov	t3, rax
	mov	x0, [t3]
	mov	r1, 3
	mov	r0, t7
	call	__bit_shl
	mov	r0, 255
	mov	t7, rax
	mov	r1, t7
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x0
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x0, rax
	mov	r0, t6
	call	__bit_and
	mov	r0, rax
	mov	r1, t7
	call	__bit_shl
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	[t3], rax
	mov	r0, t2
	call	__bit_shr
	mov	r1, 3
	mov	t3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	t2, rax
	mov	r0, t1
	call	__bit_and
	mov	r1, -4
	mov	t3, rax
	call	__bit_and
	mov	t6, rax
	mov	t7, [t6]
	mov	r1, 3
	mov	r0, t3
	call	__bit_shl
	mov	r0, 255
	mov	t3, rax
	mov	r1, t3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t7
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t7, rax
	mov	r0, t2
	call	__bit_and
	mov	r0, rax
	mov	r1, t3
	call	__bit_shl
	mov	r0, t7
	mov	r1, rax
	call	__bit_or
	mov	[t6], rax
	add	r6, 2
	mov	r1, -2147483648
	add	t1, -2
	mov	r0, r7
	call	__bit_xor
	mov	t2, rax
	mov	r0, r6
	call	__bit_xor
	mov	r0, t5
	jl	rax, t2, .LBB35_168
	jmp	.LBB35_169
.LBB35_169:                             // %.loopexit108
	mov	r1, -2147483648
	mov	r0, t4
	call	__bit_xor
	mov	r7, rax
	mov	r0, r6
	call	__bit_xor
	jge	rax, r7, .LBB35_183
	jmp	.LBB35_170
.LBB35_170:
	mov	r1, 10
	mov	r0, t5
	call	__umodsi3
	mov	r1, 48
	mov	r0, rax
	call	__bit_or
	mov	r7, rax
	mov	r0, r6
	call	__bit_not
	add	r3, t4
	add	r3, rax
	mov	r1, 3
	mov	r0, r3
	call	__bit_and
	mov	r1, -4
	mov	r6, rax
	call	__bit_and
	mov	r3, rax
	mov	t1, [r3]
	mov	r1, 3
	mov	r0, r6
	call	__bit_shl
	mov	r0, 255
	mov	r6, rax
	mov	r1, r6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t1, rax
	mov	r0, r7
	call	__bit_and
	mov	r0, rax
	mov	r1, r6
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	jmp	.LBB35_183
.LBB35_171:
	mov	r0, [rsp-24]
	jz	r0, .LBB35_182
	jmp	.LBB35_172
.LBB35_172:
	mov	r3, r4
	add	r3, x12
	mov	r1, -2147483648
	mov	t1, 0
	mov	r0, t5
	call	__bit_xor
	mov	r0, -2147473648
	mov	r6, r3
	add	r6, t4
	jl	rax, r0, .LBB35_176
	jmp	.LBB35_173
.LBB35_173:
	mov	x2, 0
	mov	x3, mcasm_static_29af82f542537f86f33d7b3d416ba898
	mov	x4, -2047483649
.LBB35_174:                             // %memcpy.exit93
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 10000
	mov	r7, t5
	mov	r0, r7
	call	__udivsi3
	mov	t5, rax
	mov	r0, t5
	mul	r0, -10000
	add	r0, r7
	mov	r1, 100
	call	__udivsi3
	mov	t2, rax
	mov	t0, t2
	mul	t0, -100
	add	t0, r0
	mov	r1, 1
	mov	r0, t0
	call	__bit_shl
	mov	t1, r6
	add	t1, x2
	mov	r0, rax
	mov	t6, t1
	add	r0, x3
	add	t6, -1
	mov	t3, r0
	mov	r1, 2
	add	t3, 1
	call	__bit_shr
	mov	r1, 3
	mov	t7, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t7]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	t7, rax
	mov	r0, t6
	call	__bit_and
	mov	r1, -4
	mov	x0, rax
	call	__bit_and
	mov	t6, rax
	mov	x1, [t6]
	mov	r1, 3
	mov	r0, x0
	call	__bit_shl
	mov	r0, 255
	mov	x0, rax
	mov	r1, x0
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x1
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x1, rax
	mov	r0, t7
	call	__bit_and
	mov	r0, rax
	mov	r1, x0
	call	__bit_shl
	mov	r0, x1
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	[t6], rax
	mov	r0, t3
	call	__bit_shr
	mov	r1, 3
	mov	t6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	t3, rax
	mov	r0, t1
	call	__bit_and
	mov	r1, -4
	mov	t6, rax
	call	__bit_and
	mov	t7, rax
	mov	x0, [t7]
	mov	r1, 3
	mov	r0, t6
	call	__bit_shl
	mov	r0, 255
	mov	t6, rax
	mov	r1, t6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x0
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x0, rax
	mov	r0, t3
	call	__bit_and
	mov	r0, rax
	mov	r1, t6
	call	__bit_shl
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	r1, 1
	mov	[t7], rax
	mov	r0, t2
	call	__bit_shl
	mov	r0, rax
	mov	t3, t1
	add	r0, x3
	add	t3, -3
	mov	t2, r0
	mov	r1, 2
	add	t2, 1
	call	__bit_shr
	mov	r1, 3
	mov	t6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t6, rax
	mov	r1, 3
	add	t1, -2
	mov	r0, t3
	call	__bit_and
	mov	r1, -4
	mov	t7, rax
	call	__bit_and
	mov	t3, rax
	mov	x0, [t3]
	mov	r1, 3
	mov	r0, t7
	call	__bit_shl
	mov	r0, 255
	mov	t7, rax
	mov	r1, t7
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, x0
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	x0, rax
	mov	r0, t6
	call	__bit_and
	mov	r0, rax
	mov	r1, t7
	call	__bit_shl
	mov	r0, x0
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	[t3], rax
	mov	r0, t2
	call	__bit_shr
	mov	r1, 3
	mov	t3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	t2, rax
	mov	r0, t1
	call	__bit_and
	mov	r1, -4
	mov	t3, rax
	call	__bit_and
	mov	t1, rax
	mov	t6, [t1]
	mov	r1, 3
	mov	r0, t3
	call	__bit_shl
	mov	r0, 255
	mov	t3, rax
	mov	r1, t3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t6
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t6, rax
	mov	r0, t2
	call	__bit_and
	mov	r0, rax
	mov	r1, t3
	call	__bit_shl
	mov	r0, t6
	mov	r1, rax
	call	__bit_or
	mov	[t1], rax
	mov	r1, -2147483648
	add	x2, -4
	mov	r0, r7
	call	__bit_xor
	jg	rax, x4, .LBB35_174
	jmp	.LBB35_175
.LBB35_175:                             // %.loopexit104.loopexit
	mov	t1, 0
	sub	t1, x2
.LBB35_176:                             // %.loopexit104
	mov	r0, 100
	jl	t5, r0, .LBB35_178
	jmp	.LBB35_177
.LBB35_177:                             // %memcpy.exit95.loopexit
	mov	r1, 65532
	mov	r0, t5
	call	__bit_and
	mov	r1, 2
	mov	r0, rax
	call	__bit_shr
	mul	rax, 5243
	mov	r1, 17
	mov	r0, rax
	call	__bit_shr
	mov	r7, rax
	mov	r0, r7
	mul	r0, -100
	add	r0, t5
	mov	r1, 65535
	call	__bit_and
	mov	r1, 1
	mov	r0, rax
	call	__bit_shl
	sub	r6, t1
	mov	t2, r6
	mov	r0, mcasm_static_29af82f542537f86f33d7b3d416ba898
	add	r0, rax
	add	t2, -1
	mov	t1, r0
	mov	r1, 2
	add	t1, 1
	call	__bit_shr
	mov	r1, 3
	mov	t3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	t3, rax
	mov	r0, t2
	call	__bit_and
	mov	r1, -4
	mov	t5, rax
	call	__bit_and
	mov	t2, rax
	mov	t6, [t2]
	mov	r1, 3
	mov	r0, t5
	call	__bit_shl
	mov	r0, 255
	mov	t5, rax
	mov	r1, t5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t6
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t6, rax
	mov	r0, t3
	call	__bit_and
	mov	r0, rax
	mov	r1, t5
	call	__bit_shl
	mov	r0, t6
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	[t2], rax
	mov	r0, t1
	call	__bit_shr
	mov	r1, 3
	mov	t2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	t1, rax
	mov	r0, r6
	call	__bit_and
	mov	r1, -4
	mov	t2, rax
	call	__bit_and
	mov	r6, rax
	mov	t3, [r6]
	mov	r1, 3
	mov	r0, t2
	call	__bit_shl
	mov	r0, 255
	mov	t2, rax
	mov	r1, t2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t3
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t3, rax
	mov	r0, t1
	call	__bit_and
	mov	r0, rax
	mov	r1, t2
	call	__bit_shl
	mov	r0, t3
	mov	r1, rax
	call	__bit_or
	mov	[r6], rax
	mov	t5, r7
.LBB35_178:                             // %memcpy.exit95
	mov	r0, 10
	jl	t5, r0, .LBB35_180
	jmp	.LBB35_179
.LBB35_179:
	mov	r1, 1
	mov	r0, t5
	call	__bit_shl
	mov	r6, mcasm_static_29af82f542537f86f33d7b3d416ba898
	add	r6, rax
	mov	r0, r6
	add	r0, 1
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	r7, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r7]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r0, r3
	add	r0, 2
	mov	r1, 3
	mov	r7, rax
	call	__bit_and
	mov	r1, -4
	mov	t1, rax
	call	__bit_and
	mov	t2, rax
	mov	t3, [t2]
	mov	r1, 3
	mov	r0, t1
	call	__bit_shl
	mov	r0, 255
	mov	t1, rax
	mov	r1, t1
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t3
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t3, rax
	mov	r0, r7
	call	__bit_and
	mov	r0, rax
	mov	r1, t1
	call	__bit_shl
	mov	r0, t3
	mov	r1, rax
	call	__bit_or
	mov	r0, r3
	add	r0, 1
	mov	r1, 3
	mov	[t2], rax
	call	__bit_and
	mov	r1, -4
	mov	r7, rax
	call	__bit_and
	mov	t1, rax
	mov	t2, [t1]
	mov	r1, 3
	mov	r0, r7
	call	__bit_shl
	mov	r0, 255
	mov	r7, rax
	mov	r1, r7
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t2
	mov	r1, rax
	call	__bit_and
	mov	r0, 46
	mov	t2, rax
	mov	r1, r7
	call	__bit_shl
	mov	r0, t2
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	[t1], rax
	mov	r0, r6
	call	__bit_shr
	mov	r1, 3
	mov	r7, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r7]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r6, rax
	jmp	.LBB35_181
.LBB35_180:
	mov	r0, r3
	add	r0, 1
	mov	r1, 3
	call	__bit_and
	mov	r1, -4
	mov	r6, rax
	call	__bit_and
	mov	r7, rax
	mov	t1, [r7]
	mov	r1, 3
	mov	r0, r6
	call	__bit_shl
	mov	r0, 255
	mov	r6, rax
	mov	r1, r6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r0, 46
	mov	t1, rax
	mov	r1, r6
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	r1, 48
	mov	[r7], rax
	mov	r0, t5
	call	__bit_or
	mov	r6, rax
.LBB35_181:
	mov	r1, 3
	mov	r0, r3
	call	__bit_and
	mov	r1, -4
	mov	r7, rax
	call	__bit_and
	mov	r3, rax
	mov	t1, [r3]
	mov	r1, 3
	mov	r0, r7
	call	__bit_shl
	mov	r1, 255
	mov	r7, rax
	mov	r0, r6
	call	__bit_and
	mov	r0, 255
	mov	r6, rax
	mov	r1, r7
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t1, rax
	mov	r0, r6
	call	__bit_and
	mov	r0, rax
	mov	r1, r7
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	add	t4, 1
	jmp	.LBB35_183
.LBB35_182:
	mov	r0, r4
	add	r0, x12
	mov	r1, 3
	add	t5, 48
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	r6, rax
	mov	r7, [r6]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r1, 255
	mov	r3, rax
	mov	r0, t5
	call	__bit_and
	mov	r0, 255
	mov	t1, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	r7, rax
	mov	r0, t1
	call	__bit_and
	mov	r0, rax
	mov	r1, r3
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	[r6], rax
	mov	t4, 1
.LBB35_183:                             // %memset.exit91
	add	t4, x12
	jz	r2, .LBB35_196
	jmp	.LBB35_184
.LBB35_184:
	mov	r6, 0
	jz	t4, .LBB35_190
	jmp	.LBB35_185
.LBB35_185:                             // %.preheader103.preheader
	mov	t2, r4
	add	t2, -1
	mov	t3, 46
	mov	t5, 57
	mov	r3, t4
.LBB35_186:                             // %.preheader103
                                        // =>This Inner Loop Header: Depth=1
	mov	r7, t2
	add	r7, r3
	mov	r1, 2
	mov	r0, r7
	call	__bit_shr
	mov	r1, 3
	mov	t1, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t1]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	je	rax, t3, .LBB35_195
	jmp	.LBB35_187
.LBB35_187:                             // %.preheader103
                                        //   in Loop: Header=BB35_186 Depth=1
	je	rax, t5, .LBB35_191
	jmp	.LBB35_188
.LBB35_188:                             // %.preheader103
	mov	r0, 45
	jne	rax, r0, .LBB35_192
	jmp	.LBB35_189
.LBB35_189:                             // %.preheader103..loopexit.loopexit_crit_edge
	mov	r6, r3
.LBB35_190:                             // %.loopexit
	add	r6, r4
	mov	r1, 3
	mov	r0, r6
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r3, rax
	mov	r6, [r3]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	r0, 49
	mov	r6, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	add	r5, 1
	jmp	.LBB35_196
.LBB35_191:                             //   in Loop: Header=BB35_186 Depth=1
	mov	r1, 3
	mov	r0, r7
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r7, rax
	mov	t1, [r7]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r0, 48
	mov	t1, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	[r7], rax
	mov	r2, 1
	jmp	.LBB35_195
.LBB35_192:
	mov	r1, 1
	mov	r6, rax
	mov	r0, rax
	call	__bit_and
	mov	r0, 2
	jne	r2, r0, .LBB35_194
	jmp	.LBB35_193
.LBB35_193:
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB35_196
	jmp	.LBB35_194
.LBB35_194:
	add	r3, r4
	add	r3, -1
	mov	r1, 3
	mov	r2, r6
	add	r2, 1
	mov	r0, r3
	call	__bit_and
	mov	r1, -4
	mov	r6, rax
	call	__bit_and
	mov	r3, rax
	mov	r7, [r3]
	mov	r1, 3
	mov	r0, r6
	call	__bit_shl
	mov	r1, 255
	mov	r6, rax
	mov	r0, r2
	call	__bit_and
	mov	r0, 255
	mov	r2, rax
	mov	r1, r6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	r7, rax
	mov	r0, r2
	call	__bit_and
	mov	r0, rax
	mov	r1, r6
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	jmp	.LBB35_196
.LBB35_195:                             //   in Loop: Header=BB35_186 Depth=1
	add	r3, -1
	jz	r3, .LBB35_190
	jmp	.LBB35_186
.LBB35_196:
	mov	r2, r4
	add	r2, t4
	mov	r1, 3
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	r6, rax
	mov	r7, [r6]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r0, 255
	mov	r3, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	t1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r0, 101
	mov	r7, rax
	mov	r1, r3
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	r1, -2147483648
	mov	[r6], rax
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
	mov	r3, rax
	add	r3, 43
	jg	r5, t1, .LBB35_198
	jmp	.LBB35_197
.LBB35_197:
	mov	r0, 0
	sub	r0, r5
	mov	r5, r0
.LBB35_198:
	mov	r0, r2
	add	r0, 1
	mov	r1, 3
	call	__bit_and
	mov	r1, -4
	mov	r6, rax
	call	__bit_and
	mov	r7, rax
	mov	t1, [r7]
	mov	r1, 3
	mov	r0, r6
	call	__bit_shl
	mov	r1, 255
	mov	r6, rax
	mov	r0, r3
	call	__bit_and
	mov	r0, 255
	mov	r3, rax
	mov	r1, r6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t1, rax
	mov	r0, r3
	call	__bit_and
	mov	r0, rax
	mov	r1, r6
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	[r7], rax
	mov	r6, t4
	mov	r0, 100
	add	r6, 2
	jl	r5, r0, .LBB35_200
	jmp	.LBB35_199
.LBB35_199:                             // %memcpy.exit96
	mov	r1, 10
	mov	r0, r5
	call	__udivsi3
	mov	r3, rax
	mov	r1, 1
	add	r4, r6
	mov	r0, r3
	call	__bit_shl
	mov	r0, mcasm_static_29af82f542537f86f33d7b3d416ba898
	add	r0, rax
	mov	r6, r0
	mov	r1, 2
	add	r6, 1
	call	__bit_shr
	mov	r1, 3
	mov	r7, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r7]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t1, rax
	mov	r7, r4
	mov	r1, 3
	add	r7, 1
	mov	r0, r4
	call	__bit_and
	mov	r1, -4
	mov	t2, rax
	call	__bit_and
	mov	r4, rax
	mov	t3, [r4]
	mov	r1, 3
	mov	r0, t2
	call	__bit_shl
	mov	r0, 255
	mov	t2, rax
	mov	r1, t2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t3
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t3, rax
	mov	r0, t1
	call	__bit_and
	mov	r0, rax
	mov	r1, t2
	call	__bit_shl
	mov	r0, t3
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	[r4], rax
	mov	r0, r6
	call	__bit_shr
	mov	r1, 3
	mov	r4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	r4, rax
	mov	r0, r7
	call	__bit_and
	mov	r1, -4
	mov	r6, rax
	call	__bit_and
	mov	r7, rax
	mov	t1, [r7]
	mov	r1, 3
	mov	r0, r6
	call	__bit_shl
	mov	r0, 255
	mov	r6, rax
	mov	r1, r6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t1, rax
	mov	r0, r4
	call	__bit_and
	mov	r0, rax
	mov	r1, r6
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mul	r3, 246
	add	r3, r5
	mov	r1, 48
	mov	[r7], rax
	mov	r0, r3
	call	__bit_or
	add	r2, 4
	mov	r1, 3
	mov	r3, rax
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	r4, rax
	call	__bit_and
	mov	r2, rax
	mov	r5, [r2]
	mov	r1, 3
	mov	r0, r4
	call	__bit_shl
	mov	r1, 255
	mov	r4, rax
	mov	r0, r3
	call	__bit_and
	mov	r0, 255
	mov	r3, rax
	mov	r1, r4
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	r5, rax
	mov	r0, r3
	call	__bit_and
	mov	r0, rax
	mov	r1, r4
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	[r2], rax
	add	t4, 5
	jmp	.LBB35_201
.LBB35_200:                             // %memcpy.exit97
	mov	r1, 1
	add	r4, r6
	mov	r0, r5
	call	__bit_shl
	mov	r0, mcasm_static_29af82f542537f86f33d7b3d416ba898
	add	r0, rax
	mov	r2, r0
	mov	r1, 2
	add	r2, 1
	call	__bit_shr
	mov	r1, 3
	mov	r3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r5, rax
	mov	r3, r4
	mov	r1, 3
	add	r3, 1
	mov	r0, r4
	call	__bit_and
	mov	r1, -4
	mov	r6, rax
	call	__bit_and
	mov	r4, rax
	mov	r7, [r4]
	mov	r1, 3
	mov	r0, r6
	call	__bit_shl
	mov	r0, 255
	mov	r6, rax
	mov	r1, r6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	r7, rax
	mov	r0, r5
	call	__bit_and
	mov	r0, rax
	mov	r1, r6
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	[r4], rax
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	r4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	r2, rax
	mov	r0, r3
	call	__bit_and
	mov	r1, -4
	mov	r4, rax
	call	__bit_and
	mov	r3, rax
	mov	r5, [r3]
	mov	r1, 3
	mov	r0, r4
	call	__bit_shl
	mov	r0, 255
	mov	r4, rax
	mov	r1, r4
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	r5, rax
	mov	r0, r2
	call	__bit_and
	mov	r0, rax
	mov	r1, r4
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	add	t4, 4
.LBB35_201:                             // %memcpy.exit63
	mov	rax, t4
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
	mov	r0, rax
	add	r0, r3
	mov	r1, 3
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r3, rax
	mov	r4, [r3]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r4
	mov	r1, rax
	call	__bit_and
	mov	r0, 0
	mov	r4, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, r4
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
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
	mov	r0, rax
	add	r0, r4
	mov	r1, 3
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r3, rax
	mov	r5, [r3]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r0, 0
	mov	r5, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	mov	rax, r4
	ret
// -- End function
// -- Begin function strtol
strtol:                                 // @strtol
// %bb.0:
	mov	r3, r1
	mov	r1, -2147483648
	mov	r7, r2
	mov	r2, r0
	mov	r0, r7
	call	__bit_xor
	mov	r0, -2147483612
	jg	rax, r0, .LBB38_3
	jmp	.LBB38_1
.LBB38_1:
	mov	r0, 1
	je	r7, r0, .LBB38_3
	jmp	.LBB38_2
.LBB38_2:                               // %.preheader6.preheader
	mov	r5, r2
	add	r5, 1
	mov	r6, -2147483643
	mov	t1, 32
	jmp	.LBB38_5
.LBB38_3:
	mov	r0, mcasm_static_719163f5f9eae4be69e01d67d1a83915
	mov	[r0], 22
	mov	r7, 0
	jz	r3, .LBB38_40
	jmp	.LBB38_4
.LBB38_4:
	mov	[r3], r2
	jmp	.LBB38_40
.LBB38_5:                               // %.preheader6
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r5
	add	r0, -1
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	r4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t2, rax
	mov	r0, t2
	add	r0, -9
	mov	r1, -2147483648
	call	__bit_xor
	jl	rax, r6, .LBB38_9
	jmp	.LBB38_6
.LBB38_6:                               // %.preheader6
                                        //   in Loop: Header=BB38_5 Depth=1
	je	t2, t1, .LBB38_9
	jmp	.LBB38_7
.LBB38_7:                               // %.preheader6
	mov	r0, 43
	je	t2, r0, .LBB38_11
	jmp	.LBB38_8
.LBB38_8:                               // %.preheader6
	mov	r0, 45
	je	t2, r0, .LBB38_10
	jmp	.LBB38_13
.LBB38_9:                               // %.preheader6.backedge
                                        //   in Loop: Header=BB38_5 Depth=1
	add	r5, 1
	jmp	.LBB38_5
.LBB38_10:                              // %.loopexit8.loopexit
	mov	r4, 1
	jmp	.LBB38_12
.LBB38_11:                              // %.loopexit8.loopexit1
	mov	r4, 0
.LBB38_12:                              // %.loopexit8
	mov	t1, r5
	mov	r1, 2
	add	t1, 1
	mov	r0, r5
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t2, rax
	mov	r5, t1
	jmp	.LBB38_14
.LBB38_13:                              // %.loopexit7.loopexit
	mov	r4, 0
.LBB38_14:                              // %.loopexit7
	mov	r1, 255
	mov	r0, t2
	call	__bit_and
	mov	r0, 48
	jne	rax, r0, .LBB38_20
	jmp	.LBB38_15
.LBB38_15:
	mov	r1, 2
	mov	r0, r5
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, -33
	mov	r0, rax
	call	__bit_and
	mov	r1, 47
	mov	r6, rax
	mov	r0, r7
	call	__bit_and
	jnz	rax, .LBB38_18
	jmp	.LBB38_16
.LBB38_16:
	mov	r1, 255
	mov	r0, r6
	call	__bit_and
	mov	r0, 88
	jne	rax, r0, .LBB38_18
	jmp	.LBB38_17
.LBB38_17:
	mov	r0, r5
	add	r0, 1
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	r2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t2, rax
	mov	t4, r5
	add	t4, 2
	mov	r6, 16
	mov	r2, r5
	jmp	.LBB38_22
.LBB38_18:
	mov	r6, 8
	mov	t2, 48
	mov	t4, r5
	jz	r7, .LBB38_22
	jmp	.LBB38_19
.LBB38_19:
	mov	t4, r5
	mov	r6, r7
	jmp	.LBB38_22
.LBB38_20:
	mov	r6, 10
	mov	t4, r5
	jz	r7, .LBB38_22
	jmp	.LBB38_21
.LBB38_21:
	mov	t4, r5
	mov	r6, r7
.LBB38_22:
	mov	r5, r4
	add	r5, 2147483647
	mov	r0, r5
	mov	r1, r6
	call	__udivsi3
	mov	r1, 255
	mov	t1, rax
	mov	r0, t2
	call	__bit_and
	mov	r7, rax
	mov	r0, r7
	add	r0, -1
	mov	r1, 32
	call	__bit_or
	mov	t3, rax
	mov	r1, -2147483648
	add	t3, -38
	mov	r0, r7
	call	__bit_xor
	mov	r0, -2147483591
	jg	rax, r0, .LBB38_24
	jmp	.LBB38_23
.LBB38_23:
	mov	t3, r7
.LBB38_24:
	add	t3, -48
	mov	r7, 0
	mov	r0, r6
	call	__bit_xor
	mov	t2, rax
	mov	r0, t3
	call	__bit_xor
	jge	rax, t2, .LBB38_34
	jmp	.LBB38_25
.LBB38_25:                              // %.preheader.preheader
	mov	r0, t1
	mul	r0, r6
	mov	t2, r5
	sub	t2, r0
	add	t4, -1
	mov	t5, -2147483591
	mov	r2, t4
.LBB38_26:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, -2147483648
	mov	r0, t1
	call	__bit_xor
	mov	t4, rax
	mov	r0, r7
	call	__bit_xor
	jg	rax, t4, .LBB38_29
	jmp	.LBB38_27
.LBB38_27:                              //   in Loop: Header=BB38_26 Depth=1
	mov	r0, t2
	call	__bit_xor
	mov	t4, rax
	mov	r0, t3
	call	__bit_xor
	jle	rax, t4, .LBB38_30
	jmp	.LBB38_28
.LBB38_28:                              //   in Loop: Header=BB38_26 Depth=1
	jne	r7, t1, .LBB38_30
	jmp	.LBB38_29
.LBB38_29:                              //   in Loop: Header=BB38_26 Depth=1
	mov	r1, 2
	mov	r0, r4
	call	__bit_or
	mov	r4, rax
	jmp	.LBB38_31
.LBB38_30:                              //   in Loop: Header=BB38_26 Depth=1
	mul	r7, r6
	add	r7, t3
.LBB38_31:                              //   in Loop: Header=BB38_26 Depth=1
	add	r2, 1
	mov	r1, 2
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	t3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t4, rax
	mov	r0, t4
	add	r0, -1
	mov	r1, 32
	call	__bit_or
	mov	t3, rax
	mov	r1, -2147483648
	add	t3, -38
	mov	r0, t4
	call	__bit_xor
	jg	rax, t5, .LBB38_33
	jmp	.LBB38_32
.LBB38_32:                              //   in Loop: Header=BB38_26 Depth=1
	mov	t3, t4
.LBB38_33:                              //   in Loop: Header=BB38_26 Depth=1
	add	t3, -48
	mov	r0, r6
	call	__bit_xor
	mov	t4, rax
	mov	r0, t3
	call	__bit_xor
	jl	rax, t4, .LBB38_26
	jmp	.LBB38_34
.LBB38_34:                              // %.loopexit
	jz	r3, .LBB38_36
	jmp	.LBB38_35
.LBB38_35:
	mov	[r3], r2
.LBB38_36:
	mov	r1, 255
	mov	r0, r4
	call	__bit_and
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB38_38
	jmp	.LBB38_37
.LBB38_37:
	mov	r1, 0
	sub	r1, r7
	mov	r7, r1
.LBB38_38:
	mov	r1, 2
	call	__bit_and
	jz	rax, .LBB38_40
	jmp	.LBB38_39
.LBB38_39:
	mov	r0, mcasm_static_719163f5f9eae4be69e01d67d1a83915
	mov	[r0], 34
	mov	r7, r5
.LBB38_40:
	mov	rax, r7
	ret
// -- End function
// -- Begin function strtoul
strtoul:                                // @strtoul
// %bb.0:
	mov	r3, r1
	mov	r1, -2147483648
	mov	r7, r2
	mov	r2, r0
	mov	r0, r7
	call	__bit_xor
	mov	r0, -2147483612
	jg	rax, r0, .LBB39_3
	jmp	.LBB39_1
.LBB39_1:
	mov	r0, 1
	je	r7, r0, .LBB39_3
	jmp	.LBB39_2
.LBB39_2:                               // %.preheader6.preheader
	mov	r6, r2
	add	r6, 1
	mov	r5, -2147483643
	mov	t1, 32
	jmp	.LBB39_5
.LBB39_3:
	mov	r0, mcasm_static_719163f5f9eae4be69e01d67d1a83915
	mov	[r0], 22
	mov	r6, 0
	jz	r3, .LBB39_40
	jmp	.LBB39_4
.LBB39_4:
	mov	[r3], r2
	jmp	.LBB39_40
.LBB39_5:                               // %.preheader6
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r6
	add	r0, -1
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	r4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t2, rax
	mov	r0, t2
	add	r0, -9
	mov	r1, -2147483648
	call	__bit_xor
	jl	rax, r5, .LBB39_9
	jmp	.LBB39_6
.LBB39_6:                               // %.preheader6
                                        //   in Loop: Header=BB39_5 Depth=1
	je	t2, t1, .LBB39_9
	jmp	.LBB39_7
.LBB39_7:                               // %.preheader6
	mov	r0, 43
	je	t2, r0, .LBB39_11
	jmp	.LBB39_8
.LBB39_8:                               // %.preheader6
	mov	r0, 45
	je	t2, r0, .LBB39_10
	jmp	.LBB39_13
.LBB39_9:                               // %.preheader6.backedge
                                        //   in Loop: Header=BB39_5 Depth=1
	add	r6, 1
	jmp	.LBB39_5
.LBB39_10:                              // %.loopexit8.loopexit
	mov	r4, 1
	jmp	.LBB39_12
.LBB39_11:                              // %.loopexit8.loopexit1
	mov	r4, 0
.LBB39_12:                              // %.loopexit8
	mov	t1, r6
	mov	r1, 2
	add	t1, 1
	mov	r0, r6
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t2, rax
	mov	r6, t1
	jmp	.LBB39_14
.LBB39_13:                              // %.loopexit7.loopexit
	mov	r4, 0
.LBB39_14:                              // %.loopexit7
	mov	r1, 255
	mov	r0, t2
	call	__bit_and
	mov	r0, 48
	jne	rax, r0, .LBB39_20
	jmp	.LBB39_15
.LBB39_15:
	mov	r1, 2
	mov	r0, r6
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, -33
	mov	r0, rax
	call	__bit_and
	mov	r1, 47
	mov	r5, rax
	mov	r0, r7
	call	__bit_and
	jnz	rax, .LBB39_18
	jmp	.LBB39_16
.LBB39_16:
	mov	r1, 255
	mov	r0, r5
	call	__bit_and
	mov	r0, 88
	jne	rax, r0, .LBB39_18
	jmp	.LBB39_17
.LBB39_17:
	mov	r0, r6
	add	r0, 1
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	r2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t2, rax
	mov	t5, r6
	add	t5, 2
	mov	r5, 16
	mov	r2, r6
	jmp	.LBB39_22
.LBB39_18:
	mov	t2, 48
	mov	r5, 8
	mov	t5, r6
	jz	r7, .LBB39_22
	jmp	.LBB39_19
.LBB39_19:
	mov	r5, r7
	mov	t5, r6
	jmp	.LBB39_22
.LBB39_20:
	mov	r5, 10
	mov	t5, r6
	jz	r7, .LBB39_22
	jmp	.LBB39_21
.LBB39_21:
	mov	r5, r7
	mov	t5, r6
.LBB39_22:
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
	jg	rax, r0, .LBB39_24
	jmp	.LBB39_23
.LBB39_23:
	mov	t2, r6
.LBB39_24:
	add	t2, -48
	mov	r6, 0
	mov	r0, r5
	call	__bit_xor
	mov	t3, rax
	mov	r0, t2
	call	__bit_xor
	jge	rax, t3, .LBB39_34
	jmp	.LBB39_25
.LBB39_25:                              // %.preheader.preheader
	add	t5, -1
	mov	t4, -2147483591
	mov	r2, t5
.LBB39_26:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, -2147483648
	mov	r0, r7
	call	__bit_xor
	mov	t3, rax
	mov	r0, r6
	call	__bit_xor
	jg	rax, t3, .LBB39_29
	jmp	.LBB39_27
.LBB39_27:                              //   in Loop: Header=BB39_26 Depth=1
	mov	r0, t1
	call	__bit_xor
	mov	t3, rax
	mov	r0, t2
	call	__bit_xor
	jle	rax, t3, .LBB39_30
	jmp	.LBB39_28
.LBB39_28:                              //   in Loop: Header=BB39_26 Depth=1
	jne	r6, r7, .LBB39_30
	jmp	.LBB39_29
.LBB39_29:                              //   in Loop: Header=BB39_26 Depth=1
	mov	r1, 2
	mov	r0, r4
	call	__bit_or
	mov	r4, rax
	jmp	.LBB39_31
.LBB39_30:                              //   in Loop: Header=BB39_26 Depth=1
	mul	r6, r5
	add	r6, t2
.LBB39_31:                              //   in Loop: Header=BB39_26 Depth=1
	add	r2, 1
	mov	r1, 2
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	t2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
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
	jg	rax, t4, .LBB39_33
	jmp	.LBB39_32
.LBB39_32:                              //   in Loop: Header=BB39_26 Depth=1
	mov	t2, t3
.LBB39_33:                              //   in Loop: Header=BB39_26 Depth=1
	add	t2, -48
	mov	r0, r5
	call	__bit_xor
	mov	t3, rax
	mov	r0, t2
	call	__bit_xor
	jl	rax, t3, .LBB39_26
	jmp	.LBB39_34
.LBB39_34:                              // %.loopexit
	jz	r3, .LBB39_36
	jmp	.LBB39_35
.LBB39_35:
	mov	[r3], r2
.LBB39_36:
	mov	r1, 255
	mov	r0, r4
	call	__bit_and
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB39_38
	jmp	.LBB39_37
.LBB39_37:
	mov	r1, 0
	sub	r1, r6
	mov	r6, r1
.LBB39_38:
	mov	r1, 2
	call	__bit_and
	jz	rax, .LBB39_40
	jmp	.LBB39_39
.LBB39_39:
	mov	r0, mcasm_static_719163f5f9eae4be69e01d67d1a83915
	mov	[r0], 34
	mov	r6, -1
.LBB39_40:
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
	jl	rax, r0, .LBB40_5
	jmp	.LBB40_1
.LBB40_1:
	mov	r0, r3
	mov	r1, r4
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB40_6
	jmp	.LBB40_2
.LBB40_2:                               // %.preheader.i.preheader
	mov	r5, -2147483645
.LBB40_3:                               // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [r4]
	mov	r1, [r3]
	jne	r0, r1, .LBB40_6
	jmp	.LBB40_4
.LBB40_4:                               //   in Loop: Header=BB40_3 Depth=1
	add	r4, 4
	add	r2, -4
	mov	r1, -2147483648
	add	r3, 4
	mov	r0, r2
	call	__bit_xor
	jg	rax, r5, .LBB40_3
	jmp	.LBB40_5
.LBB40_5:                               // %.loopexit8.i
	mov	rax, 0
	jz	r2, .LBB40_10
	jmp	.LBB40_6
.LBB40_6:                               // %.loopexit7.i.preheader
.LBB40_7:                               // %.loopexit7.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	mov	r0, r4
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 2
	mov	r5, rax
	mov	r0, r3
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	je	r5, rax, .LBB40_9
	jmp	.LBB40_8
.LBB40_8:
	mov	r0, rax
	call	__bit_and
	mov	r2, rax
	mov	r0, r5
	call	__bit_and
	sub	rax, r2
	jmp	.LBB40_10
.LBB40_9:                               //   in Loop: Header=BB40_7 Depth=1
	add	r2, -1
	add	r4, 1
	add	r3, 1
	mov	rax, 0
	jnz	r2, .LBB40_7
	jmp	.LBB40_10
.LBB40_10:                              // %memcmp.exit
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
	jge	rax, r5, .LBB41_10
	jmp	.LBB41_1
.LBB41_1:
	mov	r5, r4
	add	r5, r2
	mov	r0, r5
	call	__bit_xor
	mov	r6, rax
	mov	r0, r3
	call	__bit_xor
	jge	rax, r6, .LBB41_10
	jmp	.LBB41_2
.LBB41_2:
	mov	r6, r3
	add	r6, r2
	mov	r0, r2
	call	__bit_xor
	mov	r0, -2147483644
	jl	rax, r0, .LBB41_7
	jmp	.LBB41_3
.LBB41_3:
	mov	r0, r5
	mov	r1, r6
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB41_8
	jmp	.LBB41_4
.LBB41_4:                               // %.preheader.i.preheader
	mov	r5, -2147483645
	mov	r1, -2147483648
.LBB41_5:                               // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r4
	add	r0, r2
	add	r0, -4
	mov	r0, [r0]
	mov	r6, r3
	add	r6, r2
	add	r6, -4
	add	r2, -4
	mov	[r6], r0
	mov	r0, r2
	call	__bit_xor
	jg	rax, r5, .LBB41_5
	jmp	.LBB41_6
.LBB41_6:                               // %.loopexit9.i.loopexit
	add	r4, r2
	add	r3, r2
	mov	r6, r3
	mov	r5, r4
.LBB41_7:                               // %.loopexit9.i
	jz	r2, .LBB41_21
	jmp	.LBB41_8
.LBB41_8:                               // %.preheader
	add	r5, -1
	add	r6, -1
.LBB41_9:                               // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	add	r2, -1
	mov	r0, r5
	call	__bit_shr
	mov	r1, 3
	mov	r3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	r3, rax
	mov	r0, r6
	call	__bit_and
	mov	r1, -4
	mov	r4, rax
	call	__bit_and
	mov	r7, rax
	mov	t1, [r7]
	mov	r1, 3
	mov	r0, r4
	call	__bit_shl
	mov	r0, 255
	mov	r4, rax
	mov	r1, r4
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t1, rax
	mov	r0, r3
	call	__bit_and
	mov	r0, rax
	mov	r1, r4
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	[r7], rax
	add	r5, -1
	add	r6, -1
	jz	r2, .LBB41_21
	jmp	.LBB41_9
.LBB41_10:
	mov	r0, r2
	call	__bit_xor
	mov	r0, -2147483644
	jl	rax, r0, .LBB41_18
	jmp	.LBB41_11
.LBB41_11:
	mov	r0, r3
	mov	r1, r4
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB41_19
	jmp	.LBB41_12
.LBB41_12:
	mov	r1, -2147483648
	mov	r0, r2
	call	__bit_xor
	mov	r0, -2147483632
	jl	rax, r0, .LBB41_14
	jmp	.LBB41_13
.LBB41_13:                              // %.preheader12.i.preheader
	mov	r5, -2147483633
	jmp	.LBB41_16
.LBB41_14:                              // %.preheader54
	mov	r5, -2147483645
	jmp	.LBB41_17
.LBB41_15:
	mov	r0, 3
	jg	r2, r0, .LBB41_14
	jmp	.LBB41_18
.LBB41_16:                              // %.preheader12.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [r4]
	mov	r1, r4
	add	r1, 4
	mov	[r3], r0
	mov	r0, [r1]
	mov	r1, r3
	add	r1, 4
	mov	r6, r4
	add	r6, 8
	mov	r7, r3
	mov	[r1], r0
	mov	r0, [r6]
	add	r7, 8
	mov	r1, r4
	add	r1, 12
	mov	r6, r3
	add	r6, 12
	mov	[r7], r0
	add	r4, 16
	mov	r0, [r1]
	add	r3, 16
	add	r2, -16
	mov	r1, -2147483648
	mov	[r6], r0
	mov	r0, r2
	call	__bit_xor
	jg	rax, r5, .LBB41_16
	jmp	.LBB41_15
.LBB41_17:                              // =>This Inner Loop Header: Depth=1
	mov	r0, [r4]
	add	r4, 4
	mov	[r3], r0
	add	r2, -4
	add	r3, 4
	mov	r0, r2
	call	__bit_xor
	jg	rax, r5, .LBB41_17
	jmp	.LBB41_18
.LBB41_18:                              // %.loopexit11.i
	jz	r2, .LBB41_21
	jmp	.LBB41_19
.LBB41_19:                              // %.preheader49
	mov	r7, r4
	mov	t1, r3
.LBB41_20:                              // =>This Inner Loop Header: Depth=1
	add	r2, -1
	mov	r1, 2
	add	r7, 1
	mov	r0, r4
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r4, rax
	mov	r1, 3
	add	t1, 1
	mov	r0, r3
	call	__bit_and
	mov	r1, -4
	mov	r5, rax
	call	__bit_and
	mov	r3, rax
	mov	r6, [r3]
	mov	r1, 3
	mov	r0, r5
	call	__bit_shl
	mov	r0, 255
	mov	r5, rax
	mov	r1, r5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	r6, rax
	mov	r0, r4
	call	__bit_and
	mov	r0, rax
	mov	r1, r5
	call	__bit_shl
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	mov	r4, r7
	mov	r3, t1
	jnz	r2, .LBB41_20
	jmp	.LBB41_21
.LBB41_21:                              // %memmove.exit
	ret
// -- End function
// -- Begin function bzero
bzero:                                  // @bzero
// %bb.0:
	mov	r2, r1
	mov	r1, 3
	mov	r3, r0
	call	__bit_and
	jz	rax, .LBB42_4
	jmp	.LBB42_1
.LBB42_1:                               // %.preheader1.preheader
	mov	r4, r3
	add	r4, 1
	mov	r0, r3
.LBB42_2:                               // %.preheader1
                                        // =>This Inner Loop Header: Depth=1
	jz	r2, .LBB42_14
	jmp	.LBB42_3
.LBB42_3:                               //   in Loop: Header=BB42_2 Depth=1
	add	r2, -1
	mov	r3, r0
	mov	r1, 3
	add	r3, 1
	call	__bit_and
	mov	r1, -4
	mov	r5, rax
	call	__bit_and
	mov	r6, rax
	mov	r7, [r6]
	mov	r1, 3
	mov	r0, r5
	call	__bit_shl
	mov	r0, 255
	mov	r5, rax
	mov	r1, r5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r0, 0
	mov	r7, rax
	mov	r1, r5
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	r1, 3
	mov	[r6], rax
	mov	r0, r4
	call	__bit_and
	add	r4, 1
	mov	r0, r3
	jnz	rax, .LBB42_2
	jmp	.LBB42_4
.LBB42_4:                               // %.loopexit7.i
	mov	r1, -2147483648
	mov	r0, r2
	call	__bit_xor
	mov	r0, -2147483644
	jl	rax, r0, .LBB42_11
	jmp	.LBB42_5
.LBB42_5:
	mov	r0, r2
	call	__bit_xor
	mov	r0, -2147483632
	jl	rax, r0, .LBB42_7
	jmp	.LBB42_6
.LBB42_6:                               // %.preheader.i.preheader
	mov	r4, -2147483633
	jmp	.LBB42_9
.LBB42_7:                               // %.preheader30
	mov	r4, -2147483645
	jmp	.LBB42_10
.LBB42_8:
	mov	r0, 3
	jg	r2, r0, .LBB42_7
	jmp	.LBB42_11
.LBB42_9:                               // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r3
	add	r0, 4
	mov	[r3], 0
	mov	r1, r3
	add	r1, 8
	mov	[r0], 0
	mov	r0, r3
	add	r0, 12
	mov	[r1], 0
	add	r3, 16
	add	r2, -16
	mov	r1, -2147483648
	mov	[r0], 0
	mov	r0, r2
	call	__bit_xor
	jg	rax, r4, .LBB42_9
	jmp	.LBB42_8
.LBB42_10:                              // =>This Inner Loop Header: Depth=1
	mov	[r3], 0
	add	r2, -4
	add	r3, 4
	mov	r0, r2
	call	__bit_xor
	jg	rax, r4, .LBB42_10
	jmp	.LBB42_11
.LBB42_11:                              // %.loopexit5.i
	jz	r2, .LBB42_14
	jmp	.LBB42_12
.LBB42_12:                              // %.preheader.preheader
	mov	r6, r3
.LBB42_13:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	add	r2, -1
	mov	r1, 3
	add	r6, 1
	mov	r0, r3
	call	__bit_and
	mov	r1, -4
	mov	r4, rax
	call	__bit_and
	mov	r3, rax
	mov	r5, [r3]
	mov	r1, 3
	mov	r0, r4
	call	__bit_shl
	mov	r0, 255
	mov	r4, rax
	mov	r1, r4
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r0, 0
	mov	r5, rax
	mov	r1, r4
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	mov	r3, r6
	jnz	r2, .LBB42_13
	jmp	.LBB42_14
.LBB42_14:                              // %memset.exit
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
	jz	r4, .LBB43_3
	jmp	.LBB43_1
.LBB43_1:
	jz	rax, .LBB43_11
	jmp	.LBB43_2
.LBB43_2:
	mov	r6, r2
	add	r6, 1
	jmp	.LBB43_13
.LBB43_3:
	mov	r5, r2
	jz	rax, .LBB43_7
	jmp	.LBB43_4
.LBB43_4:                               // %.preheader2.i.preheader
	mov	r3, r2
	add	r3, 1
	mov	r5, r2
.LBB43_5:                               // %.preheader2.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	mov	r0, r5
	call	__bit_shr
	mov	r1, 3
	mov	r2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB43_22
	jmp	.LBB43_6
.LBB43_6:                               //   in Loop: Header=BB43_5 Depth=1
	mov	r1, 3
	add	r5, 1
	mov	r0, r3
	call	__bit_and
	add	r3, 1
	jnz	rax, .LBB43_5
	jmp	.LBB43_7
.LBB43_7:                               // %.loopexit4.i.preheader
	add	r5, -5
	mov	r2, -2139062144
.LBB43_8:                               // %.loopexit4.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r5
	add	r0, 5
	mov	r1, [r0]
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	add	r5, 4
	je	rax, r2, .LBB43_8
	jmp	.LBB43_9
.LBB43_9:                               // %.preheader.i.preheader
.LBB43_10:                              // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	add	r5, 1
	mov	r1, 2
	mov	r0, r5
	call	__bit_shr
	mov	r1, 3
	mov	r2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB43_22
	jmp	.LBB43_10
.LBB43_11:                              // %.loopexit9.i
	mov	r5, [r2]
	mov	r0, 16843008
	sub	r0, r5
	mov	r1, r5
	call	__bit_or
	mov	r1, -2139062144
	mov	r6, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, r6, .LBB43_18
	jmp	.LBB43_12
.LBB43_12:                              // %.preheader5.i.preheader
	mul	r4, 16843009
	jmp	.LBB43_16
.LBB43_13:                              // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r7, rax
	mov	r5, 0
	jz	r7, .LBB43_22
	jmp	.LBB43_14
.LBB43_14:                              //   in Loop: Header=BB43_13 Depth=1
	mov	r0, r3
	call	__bit_and
	mov	t1, rax
	mov	r0, r7
	call	__bit_and
	mov	r5, r2
	je	rax, t1, .LBB43_22
	jmp	.LBB43_15
.LBB43_15:                              //   in Loop: Header=BB43_13 Depth=1
	mov	r1, 3
	add	r2, 1
	mov	r0, r6
	call	__bit_and
	add	r6, 1
	jz	rax, .LBB43_11
	jmp	.LBB43_13
.LBB43_16:                              // %.preheader5.i
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
	jne	rax, r6, .LBB43_18
	jmp	.LBB43_17
.LBB43_17:                              //   in Loop: Header=BB43_16 Depth=1
	add	r2, 4
	mov	r5, [r2]
	mov	r0, 16843008
	sub	r0, r5
	mov	r1, r5
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	je	rax, r6, .LBB43_16
	jmp	.LBB43_18
.LBB43_18:                              // %.loopexit6.i
	add	r2, -1
.LBB43_19:                              // =>This Inner Loop Header: Depth=1
	add	r2, 1
	mov	r1, 2
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	r4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r4, rax
	jz	r4, .LBB43_21
	jmp	.LBB43_20
.LBB43_20:                              //   in Loop: Header=BB43_19 Depth=1
	mov	r0, r3
	call	__bit_and
	mov	r5, rax
	mov	r0, r4
	call	__bit_and
	jne	rax, r5, .LBB43_19
	jmp	.LBB43_21
.LBB43_21:
	mov	r0, r3
	call	__bit_and
	mov	r3, rax
	mov	r0, r4
	call	__bit_and
	mov	r0, rax
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
	add	rax, 1
	mov	r0, rax
	mov	r1, r2
	call	__bit_and
	mov	r5, rax
.LBB43_22:                              // %strchr.exit
	mov	rax, r5
	ret
// -- End function
// -- Begin function memccpy
memccpy:                                // @memccpy
// %bb.0:
	mov	r5, r1
	mov	r1, -2147483648
	mov	r4, r0
	mov	r0, r3
	call	__bit_xor
	mov	r0, -2147483644
	jl	rax, r0, .LBB44_5
	jmp	.LBB44_1
.LBB44_1:
	mov	r0, r5
	mov	r1, r4
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB44_5
	jmp	.LBB44_2
.LBB44_2:
	mov	r1, 255
	mov	r0, r2
	call	__bit_and
	mov	r6, rax
	mul	r6, 16843009
	mov	t1, -2139062144
	mov	t2, -2147483645
.LBB44_3:                               // =>This Inner Loop Header: Depth=1
	mov	r7, [r5]
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
	jne	rax, t1, .LBB44_5
	jmp	.LBB44_4
.LBB44_4:                               //   in Loop: Header=BB44_3 Depth=1
	add	r5, 4
	mov	[r4], r7
	add	r3, -4
	mov	r1, -2147483648
	add	r4, 4
	mov	r0, r3
	call	__bit_xor
	jg	rax, t2, .LBB44_3
	jmp	.LBB44_5
.LBB44_5:                               // %.loopexit
.LBB44_6:                               // =>This Inner Loop Header: Depth=1
	mov	r7, 0
	jz	r3, .LBB44_8
	jmp	.LBB44_7
.LBB44_7:                               //   in Loop: Header=BB44_6 Depth=1
	mov	r1, 255
	mov	r0, r2
	call	__bit_and
	mov	r6, rax
	add	r3, -1
	mov	t3, r5
	mov	r1, 2
	add	t3, 1
	mov	r0, r5
	call	__bit_shr
	mov	r1, 3
	mov	r7, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r7]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t1, rax
	mov	r7, r4
	mov	r1, 3
	add	r7, 1
	mov	r0, r4
	call	__bit_and
	mov	r1, -4
	mov	r5, rax
	call	__bit_and
	mov	r4, rax
	mov	t2, [r4]
	mov	r1, 3
	mov	r0, r5
	call	__bit_shl
	mov	r0, 255
	mov	r5, rax
	mov	r1, r5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t2
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t2, rax
	mov	r0, t1
	call	__bit_and
	mov	r0, rax
	mov	r1, r5
	call	__bit_shl
	mov	r0, t2
	mov	r1, rax
	call	__bit_or
	mov	[r4], rax
	mov	r4, r7
	mov	r5, t3
	jne	t1, r6, .LBB44_6
	jmp	.LBB44_8
.LBB44_8:
	mov	rax, r7
	ret
// -- End function
// -- Begin function memchr
memchr:                                 // @memchr
// %bb.0:
	mov	r3, r1
	mov	r1, 3
	mov	r4, r0
	call	__bit_and
	jz	rax, .LBB45_5
	jmp	.LBB45_1
.LBB45_1:
	mov	r5, r4
	add	r5, 1
.LBB45_2:                               // =>This Inner Loop Header: Depth=1
	mov	rax, 0
	jz	r2, .LBB45_13
	jmp	.LBB45_3
.LBB45_3:                               //   in Loop: Header=BB45_2 Depth=1
	mov	r1, 255
	mov	r0, r3
	call	__bit_and
	mov	r1, 2
	mov	r6, rax
	mov	r0, r4
	call	__bit_shr
	mov	r1, 3
	mov	r7, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r7]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	mov	rax, r4
	je	r0, r6, .LBB45_13
	jmp	.LBB45_4
.LBB45_4:                               //   in Loop: Header=BB45_2 Depth=1
	mov	r1, 3
	add	r4, 1
	mov	r0, r5
	call	__bit_and
	add	r5, 1
	add	r2, -1
	jnz	rax, .LBB45_2
	jmp	.LBB45_5
.LBB45_5:                               // %.loopexit9
	mov	r1, -2147483648
	mov	r0, r2
	call	__bit_xor
	mov	r0, -2147483644
	jl	rax, r0, .LBB45_9
	jmp	.LBB45_6
.LBB45_6:
	mov	r1, 255
	mov	r0, r3
	call	__bit_and
	mov	r5, rax
	mul	r5, 16843009
	mov	r6, -2139062144
	mov	r7, -2147483645
.LBB45_7:                               // =>This Inner Loop Header: Depth=1
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
	jne	rax, r6, .LBB45_10
	jmp	.LBB45_8
.LBB45_8:                               //   in Loop: Header=BB45_7 Depth=1
	add	r2, -4
	mov	r1, -2147483648
	add	r4, 4
	mov	r0, r2
	call	__bit_xor
	jg	rax, r7, .LBB45_7
	jmp	.LBB45_9
.LBB45_9:                               // %.loopexit6
	mov	rax, 0
	jz	r2, .LBB45_13
	jmp	.LBB45_10
.LBB45_10:                              // %.loopexit5
.LBB45_11:                              // =>This Inner Loop Header: Depth=1
	mov	r1, 255
	mov	r0, r3
	call	__bit_and
	mov	r1, 2
	mov	r5, rax
	mov	r0, r4
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	mov	rax, r4
	je	r0, r5, .LBB45_13
	jmp	.LBB45_12
.LBB45_12:                              //   in Loop: Header=BB45_11 Depth=1
	add	r2, -1
	add	r4, 1
	mov	rax, 0
	jnz	r2, .LBB45_11
	jmp	.LBB45_13
.LBB45_13:                              // %.loopexit
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
	jl	rax, r0, .LBB46_5
	jmp	.LBB46_1
.LBB46_1:
	mov	r0, r3
	mov	r1, r4
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB46_6
	jmp	.LBB46_2
.LBB46_2:                               // %.preheader.preheader
	mov	r5, -2147483645
.LBB46_3:                               // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [r4]
	mov	r1, [r3]
	jne	r0, r1, .LBB46_6
	jmp	.LBB46_4
.LBB46_4:                               //   in Loop: Header=BB46_3 Depth=1
	add	r4, 4
	add	r2, -4
	mov	r1, -2147483648
	add	r3, 4
	mov	r0, r2
	call	__bit_xor
	jg	rax, r5, .LBB46_3
	jmp	.LBB46_5
.LBB46_5:                               // %.loopexit8
	mov	rax, 0
	jz	r2, .LBB46_10
	jmp	.LBB46_6
.LBB46_6:                               // %.loopexit7.preheader
.LBB46_7:                               // %.loopexit7
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	mov	r0, r4
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 2
	mov	r5, rax
	mov	r0, r3
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	je	r5, rax, .LBB46_9
	jmp	.LBB46_8
.LBB46_8:
	mov	r0, rax
	call	__bit_and
	mov	r2, rax
	mov	r0, r5
	call	__bit_and
	sub	rax, r2
	jmp	.LBB46_10
.LBB46_9:                               //   in Loop: Header=BB46_7 Depth=1
	add	r2, -1
	add	r4, 1
	add	r3, 1
	mov	rax, 0
	jnz	r2, .LBB46_7
	jmp	.LBB46_10
.LBB46_10:                              // %.loopexit
	ret
// -- End function
// -- Begin function memcpy
memcpy:                                 // @memcpy
// %bb.0:
	mov	[rsp-1], x0
	mov	r3, r1
	mov	r1, -2147483648
	mov	r7, r2
	mov	r2, r0
	mov	r0, r7
	call	__bit_xor
	mov	r0, -2147483632
	mov	r5, r2
	mov	r4, r7
	jl	rax, r0, .LBB47_13
	jmp	.LBB47_1
.LBB47_1:
	mov	r1, 3
	mov	r0, r2
	call	__bit_and
	mov	r4, rax
	mov	t4, 8
	sub	t4, r4
	mov	t5, 0
	mov	r5, r3
.LBB47_2:                               // =>This Inner Loop Header: Depth=1
	mov	r6, r2
	mov	r0, r3
	add	r0, t5
	mov	r1, 2
	add	r6, t5
	call	__bit_shr
	mov	r1, 3
	mov	t1, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t1]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	t1, rax
	mov	r0, r6
	call	__bit_and
	mov	r1, -4
	mov	t2, rax
	call	__bit_and
	mov	r6, rax
	mov	t3, [r6]
	mov	r1, 3
	mov	r0, t2
	call	__bit_shl
	mov	r0, 255
	mov	t2, rax
	mov	r1, t2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t3
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t3, rax
	mov	r0, t1
	call	__bit_and
	mov	r0, rax
	mov	r1, t2
	call	__bit_shl
	mov	r0, t3
	mov	r1, rax
	call	__bit_or
	mov	[r6], rax
	add	t5, 1
	add	r5, 1
	jne	t4, t5, .LBB47_2
	jmp	.LBB47_3
.LBB47_3:
	mov	r1, -8
	mov	r0, r4
	call	__bit_or
	mov	r4, rax
	mov	r6, r3
	add	r6, t5
	mov	r1, 3
	add	r4, r7
	mov	r0, r6
	call	__bit_and
	mov	r0, rax
	jnz	r0, .LBB47_10
	jmp	.LBB47_4
.LBB47_4:
	mov	r5, r2
	mov	r1, -2147483648
	add	r5, t5
	mov	r0, r4
	call	__bit_xor
	mov	r0, -2147483632
	jl	rax, r0, .LBB47_6
	jmp	.LBB47_5
.LBB47_5:                               // %.preheader.preheader
	mov	r5, r2
	add	r5, t5
	add	r3, t5
	mov	r6, 0
	mov	r7, -2147483633
	jmp	.LBB47_8
.LBB47_6:                               // %.preheader59
	mov	r7, -2147483645
	mov	r3, r6
	jmp	.LBB47_9
.LBB47_7:
	add	r3, r6
	mov	r0, 3
	add	r5, r6
	mov	r6, r3
	jg	r4, r0, .LBB47_6
	jmp	.LBB47_13
.LBB47_8:                               // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r3
	add	r0, r6
	mov	r1, r5
	mov	t0, [r0]
	mov	t1, r0
	add	t1, 4
	mov	t1, [t1]
	add	r1, r6
	mov	[r1], t0
	mov	t0, r1
	add	t0, 4
	mov	[t0], t1
	mov	t0, r0
	add	t0, 8
	mov	t0, [t0]
	mov	t1, r1
	add	r0, 12
	mov	r0, [r0]
	add	t1, 8
	mov	[t1], t0
	add	r1, 12
	mov	[r1], r0
	add	r4, -16
	mov	r1, -2147483648
	add	r6, 16
	mov	r0, r4
	call	__bit_xor
	jg	rax, r7, .LBB47_8
	jmp	.LBB47_7
.LBB47_9:                               // =>This Inner Loop Header: Depth=1
	mov	r0, [r3]
	add	r3, 4
	mov	[r5], r0
	add	r4, -4
	add	r5, 4
	mov	r0, r4
	call	__bit_xor
	jg	rax, r7, .LBB47_9
	jmp	.LBB47_13
.LBB47_10:
	call	__bit_shl
	mov	r7, rax
	mov	t1, 8
	sub	t1, r0
	mov	r0, r5
	call	__bit_and
	mov	t7, r3
	sub	t7, rax
	mov	r0, t7
	add	r0, t5
	mov	t2, [r0]
	add	t7, 4
	mov	t6, 0
.LBB47_11:                              // =>This Inner Loop Header: Depth=1
	mov	x0, r2
	mov	r0, t5
	add	r0, t6
	add	r0, t7
	mov	t3, [r0]
	add	x0, t6
	mov	r1, 31
	add	x0, t5
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
	add	r4, -4
	mov	r1, -2147483648
	add	t6, 4
	mov	r0, t1
	call	__bit_xor
	mov	t4, rax
	mov	r0, r4
	call	__bit_xor
	mov	t2, t3
	jge	rax, t4, .LBB47_11
	jmp	.LBB47_12
.LBB47_12:
	mov	r1, -4
	mov	r0, r6
	call	__bit_or
	mov	r6, rax
	mov	r1, 3
	add	r6, t6
	mov	r0, r5
	call	__bit_and
	sub	r3, rax
	add	r3, r6
	add	r3, t5
	add	t5, r2
	add	t5, t6
	add	r3, 4
	mov	r5, t5
	jmp	.LBB47_14
.LBB47_13:                              // %.loopexit8
	jz	r4, .LBB47_16
	jmp	.LBB47_14
.LBB47_14:                              // %.preheader56
	mov	t1, r3
	mov	t2, r5
.LBB47_15:                              // =>This Inner Loop Header: Depth=1
	add	r4, -1
	mov	r1, 2
	add	t1, 1
	mov	r0, r3
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r3, rax
	mov	r1, 3
	add	t2, 1
	mov	r0, r5
	call	__bit_and
	mov	r1, -4
	mov	r6, rax
	call	__bit_and
	mov	r5, rax
	mov	r7, [r5]
	mov	r1, 3
	mov	r0, r6
	call	__bit_shl
	mov	r0, 255
	mov	r6, rax
	mov	r1, r6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	r7, rax
	mov	r0, r3
	call	__bit_and
	mov	r0, rax
	mov	r1, r6
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	[r5], rax
	mov	r5, t2
	mov	r3, t1
	jnz	r4, .LBB47_15
	jmp	.LBB47_16
.LBB47_16:                              // %.loopexit
	mov	rax, r2
	mov	x0, [rsp-1]
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
	mov	r4, r1
	mov	r5, r0
	mov	t6, 0
	mov	r1, -2147483648
	mov	r6, 1
	mov	r0, r3
	call	__bit_xor
	mov	r0, -2147483646
	mov	r7, 0
	jl	rax, r0, .LBB48_22
	jmp	.LBB48_1
.LBB48_1:                               // %.preheader30.preheader
	mov	t1, -1
	mov	t7, 0
	mov	r7, 1
	mov	t5, 1
.LBB48_2:                               // %.preheader30
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r2
	add	r0, r7
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	t2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r0, r2
	add	r0, t1
	add	r0, t5
	mov	r1, 2
	mov	t2, rax
	call	__bit_shr
	mov	r1, 3
	mov	t3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, -2147483648
	mov	t3, rax
	mov	r0, t3
	call	__bit_xor
	mov	t4, rax
	mov	r0, t2
	call	__bit_xor
	jge	rax, t4, .LBB48_4
	jmp	.LBB48_3
.LBB48_3:                               //   in Loop: Header=BB48_2 Depth=1
	mov	r6, r7
	sub	r6, t1
	mov	t5, 1
	jmp	.LBB48_9
.LBB48_4:                               //   in Loop: Header=BB48_2 Depth=1
	mov	r1, 255
	mov	r0, t3
	call	__bit_and
	mov	r7, rax
	mov	r0, t2
	call	__bit_and
	jne	rax, r7, .LBB48_8
	jmp	.LBB48_5
.LBB48_5:                               //   in Loop: Header=BB48_2 Depth=1
	je	t5, r6, .LBB48_7
	jmp	.LBB48_6
.LBB48_6:                               //   in Loop: Header=BB48_2 Depth=1
	add	t5, 1
	mov	r7, t7
	jmp	.LBB48_9
.LBB48_7:                               //   in Loop: Header=BB48_2 Depth=1
	add	t7, r6
	mov	t5, 1
	mov	r7, t7
	jmp	.LBB48_9
.LBB48_8:                               //   in Loop: Header=BB48_2 Depth=1
	mov	r7, t7
	add	r7, 1
	mov	t5, 1
	mov	t1, t7
	mov	r6, 1
.LBB48_9:                               //   in Loop: Header=BB48_2 Depth=1
	mov	t7, r7
	mov	r7, t5
	mov	r1, -2147483648
	add	r7, t7
	mov	r0, r3
	call	__bit_xor
	mov	t2, rax
	mov	r0, r7
	call	__bit_xor
	jl	rax, t2, .LBB48_2
	jmp	.LBB48_10
.LBB48_10:                              // %.preheader29.preheader
	mov	r7, -1
	mov	x1, 0
	mov	t2, 1
	mov	t7, 1
	mov	x0, 1
.LBB48_11:                              // %.preheader29
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r2
	add	r0, t2
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	t3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r0, r2
	add	r0, r7
	add	r0, x0
	mov	r1, 2
	mov	t3, rax
	call	__bit_shr
	mov	r1, 3
	mov	t4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, -2147483648
	mov	t4, rax
	mov	r0, t3
	call	__bit_xor
	mov	t5, rax
	mov	r0, t4
	call	__bit_xor
	jge	rax, t5, .LBB48_13
	jmp	.LBB48_12
.LBB48_12:                              //   in Loop: Header=BB48_11 Depth=1
	mov	t7, t2
	sub	t7, r7
	mov	x0, 1
	jmp	.LBB48_18
.LBB48_13:                              //   in Loop: Header=BB48_11 Depth=1
	mov	r1, 255
	mov	r0, t4
	call	__bit_and
	mov	t2, rax
	mov	r0, t3
	call	__bit_and
	jne	rax, t2, .LBB48_17
	jmp	.LBB48_14
.LBB48_14:                              //   in Loop: Header=BB48_11 Depth=1
	je	x0, t7, .LBB48_16
	jmp	.LBB48_15
.LBB48_15:                              //   in Loop: Header=BB48_11 Depth=1
	add	x0, 1
	mov	t2, x1
	jmp	.LBB48_18
.LBB48_16:                              //   in Loop: Header=BB48_11 Depth=1
	add	x1, t7
	mov	x0, 1
	mov	t2, x1
	jmp	.LBB48_18
.LBB48_17:                              //   in Loop: Header=BB48_11 Depth=1
	mov	t2, x1
	add	t2, 1
	mov	x0, 1
	mov	r7, x1
	mov	t7, 1
.LBB48_18:                              //   in Loop: Header=BB48_11 Depth=1
	mov	x1, t2
	mov	t2, x0
	mov	r1, -2147483648
	add	t2, x1
	mov	r0, r3
	call	__bit_xor
	mov	t3, rax
	mov	r0, t2
	call	__bit_xor
	jl	rax, t3, .LBB48_11
	jmp	.LBB48_19
.LBB48_19:
	add	t1, 1
	add	r7, 1
	mov	r0, t1
	call	__bit_xor
	mov	t2, rax
	mov	r0, r7
	call	__bit_xor
	jl	rax, t2, .LBB48_21
	jmp	.LBB48_20
.LBB48_20:
	mov	r6, t7
.LBB48_21:
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
.LBB48_22:
	mov	r0, 1024
	jmp	.LBB48_25
.LBB48_23:
	jz	r3, .LBB48_27
	jmp	.LBB48_24
.LBB48_24:                              // %.preheader27.preheader
	mov	t3, r3
	add	t3, -1
	mov	t4, -1
	mov	t1, r2
	jmp	.LBB48_26
.LBB48_25:                              // =>This Inner Loop Header: Depth=1
	mov	r1, rsp
	add	r1, t6
	add	t6, 4
	mov	[r1], r3
	je	t6, r0, .LBB48_23
	jmp	.LBB48_25
.LBB48_26:                              // %.preheader27
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	mov	r0, t1
	call	__bit_shr
	mov	r1, 3
	mov	t2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 2
	mov	r0, rax
	call	__bit_shl
	add	rax, rsp
	mov	[rax], t3
	add	t3, -1
	add	t1, 1
	jne	t3, t4, .LBB48_26
	jmp	.LBB48_27
.LBB48_27:                              // %.loopexit28
	mov	t1, r2
	mov	r1, -2147483648
	add	t1, r6
	mov	r0, r7
	call	__bit_xor
	mov	r0, -2147483644
	mov	t2, r7
	mov	t3, r2
	jl	rax, r0, .LBB48_33
	jmp	.LBB48_28
.LBB48_28:
	mov	r0, t1
	mov	r1, r2
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	mov	t2, r7
	mov	t3, r2
	jnz	rax, .LBB48_35
	jmp	.LBB48_29
.LBB48_29:                              // %.preheader.i.preheader
	mov	t4, -2147483645
	mov	t3, r2
	mov	t2, r7
.LBB48_30:                              // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	t1, t3
	add	t1, r6
	mov	r0, [t3]
	mov	r1, [t1]
	jne	r0, r1, .LBB48_34
	jmp	.LBB48_31
.LBB48_31:                              //   in Loop: Header=BB48_30 Depth=1
	add	t2, -4
	mov	r1, -2147483648
	add	t3, 4
	mov	r0, t2
	call	__bit_xor
	jg	rax, t4, .LBB48_30
	jmp	.LBB48_32
.LBB48_32:                              // %.loopexit8.i.loopexit
	mov	t1, t3
	add	t1, r6
.LBB48_33:                              // %.loopexit8.i
	jz	t2, .LBB48_38
	jmp	.LBB48_35
.LBB48_34:                              // %.loopexit7.i.preheader.loopexit
.LBB48_35:                              // %.loopexit7.i.preheader
.LBB48_36:                              // %.loopexit7.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	mov	r0, t3
	call	__bit_shr
	mov	r1, 3
	mov	t4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 2
	mov	t4, rax
	mov	r0, t1
	call	__bit_shr
	mov	r1, 3
	mov	t5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jne	t4, rax, .LBB48_53
	jmp	.LBB48_37
.LBB48_37:                              //   in Loop: Header=BB48_36 Depth=1
	add	t2, -1
	add	t3, 1
	add	t1, 1
	jnz	t2, .LBB48_36
	jmp	.LBB48_38
.LBB48_38:                              // %memcmp.exit.thread
	sub	r4, r3
	mov	x3, r3
	sub	x3, r6
	mov	t2, r3
	add	t2, -1
	mov	x4, 1
	sub	x4, r7
	mov	x5, r5
	add	x5, -1
	mov	x6, r2
	add	x6, -1
	mov	t4, 0
	mov	t3, 0
.LBB48_39:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB48_47 Depth 2
                                        //     Child Loop BB48_49 Depth 2
	mov	t1, r5
	add	t1, t3
	mov	r0, t1
	add	r0, r3
	add	r0, -1
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	t5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 2
	mov	r0, rax
	call	__bit_shl
	add	rax, rsp
	mov	t6, [rax]
	jz	t6, .LBB48_44
	jmp	.LBB48_40
.LBB48_40:                              //   in Loop: Header=BB48_39 Depth=1
	mov	x2, 0
	jz	t4, .LBB48_43
	jmp	.LBB48_41
.LBB48_41:                              //   in Loop: Header=BB48_39 Depth=1
	mov	r1, -2147483648
	mov	r0, r6
	call	__bit_xor
	mov	t1, rax
	mov	r0, t6
	call	__bit_xor
	jge	rax, t1, .LBB48_43
	jmp	.LBB48_42
.LBB48_42:                              //   in Loop: Header=BB48_39 Depth=1
	mov	t6, x3
.LBB48_43:                              //   in Loop: Header=BB48_39 Depth=1
	add	t3, t6
	mov	r1, -2147483648
	mov	t1, 0
	mov	r0, r4
	call	__bit_xor
	mov	t5, rax
	mov	r0, t3
	call	__bit_xor
	mov	t4, x2
	jg	rax, t5, .LBB48_65
	jmp	.LBB48_39
.LBB48_44:                              //   in Loop: Header=BB48_39 Depth=1
	mov	t5, t4
	sub	t5, r7
	mov	r1, 31
	mov	r0, t5
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	mov	r1, r7
	sub	r1, t4
	add	rax, 1
	mov	r0, rax
	call	__bit_and
	mov	t7, rax
	add	t7, t4
	mov	r1, -2147483648
	mov	r0, t7
	call	__bit_xor
	mov	t6, rax
	mov	r0, t2
	call	__bit_xor
	jge	t6, rax, .LBB48_46
	jmp	.LBB48_45
.LBB48_45:                              // %.preheader.preheader
                                        //   in Loop: Header=BB48_39 Depth=1
	mov	t6, x4
	add	t6, t7
	mov	x7, t2
	sub	x7, t7
	mov	x0, t3
	add	x0, t7
	add	x0, r5
	add	t7, r2
	jmp	.LBB48_47
.LBB48_46:                              // %.loopexit
                                        //   in Loop: Header=BB48_39 Depth=1
	mov	r1, 31
	mov	r0, t5
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	add	rax, 1
	mov	r0, rax
	mov	r1, t5
	call	__bit_and
	mov	t5, rax
	add	t5, r7
	mov	x1, x5
	add	x1, t3
	mov	t6, r7
	jmp	.LBB48_49
.LBB48_47:                              // %.preheader
                                        //   Parent Loop BB48_39 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 2
	mov	r0, t7
	call	__bit_shr
	mov	r1, 3
	mov	x1, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x1]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 2
	mov	x1, rax
	mov	r0, x0
	call	__bit_shr
	mov	r1, 3
	mov	x2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	x2, 0
	jne	x1, rax, .LBB48_43
	jmp	.LBB48_48
.LBB48_48:                              //   in Loop: Header=BB48_47 Depth=2
	add	t6, 1
	add	x7, -1
	add	x0, 1
	add	t7, 1
	jz	x7, .LBB48_46
	jmp	.LBB48_47
.LBB48_49:                              //   Parent Loop BB48_39 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, -2147483648
	mov	r0, t6
	call	__bit_xor
	mov	t7, rax
	mov	r0, t4
	call	__bit_xor
	jge	rax, t7, .LBB48_52
	jmp	.LBB48_50
.LBB48_50:                              //   in Loop: Header=BB48_49 Depth=2
	mov	x2, t6
	mov	r0, x6
	add	r0, t6
	mov	r1, 2
	add	x2, -1
	call	__bit_shr
	mov	r1, 3
	mov	t7, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t7]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	add	t6, x1
	mov	r1, 2
	mov	t7, rax
	mov	r0, t6
	call	__bit_shr
	mov	r1, 3
	mov	x0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x0]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t6, x2
	je	t7, rax, .LBB48_49
	jmp	.LBB48_51
.LBB48_51:                              // %._crit_edge
                                        //   in Loop: Header=BB48_39 Depth=1
	add	x2, 1
	mov	t5, x2
.LBB48_52:                              //   in Loop: Header=BB48_39 Depth=1
	add	t4, 1
	mov	r1, -2147483648
	mov	r0, t4
	call	__bit_xor
	mov	t4, rax
	mov	r0, t5
	call	__bit_xor
	mov	t6, r6
	mov	x2, x3
	jl	rax, t4, .LBB48_65
	jmp	.LBB48_43
.LBB48_53:                              // %memcmp.exit
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
	sub	r4, r3
	mov	t7, t2
	sub	t7, r7
	mov	x0, r5
	add	x0, r7
	mov	x1, r2
	add	x1, r7
	mov	x2, r5
	add	x2, -1
	add	r2, -1
	mov	t3, 0
.LBB48_54:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB48_59 Depth 2
                                        //     Child Loop BB48_62 Depth 2
	mov	t1, r5
	add	t1, t3
	mov	r0, t1
	add	r0, r3
	add	r0, -1
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	t4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 2
	mov	r0, rax
	call	__bit_shl
	add	rax, rsp
	mov	r0, [rax]
	jnz	r0, .LBB48_57
	jmp	.LBB48_55
.LBB48_55:                              //   in Loop: Header=BB48_54 Depth=1
	mov	r1, -2147483648
	mov	r0, r7
	call	__bit_xor
	mov	t4, rax
	mov	r0, t2
	call	__bit_xor
	jle	rax, t4, .LBB48_61
	jmp	.LBB48_56
.LBB48_56:                              // %.preheader24.preheader
                                        //   in Loop: Header=BB48_54 Depth=1
	mov	x3, x0
	add	x3, t3
	mov	t6, 0
	jmp	.LBB48_59
.LBB48_57:                              //   in Loop: Header=BB48_54 Depth=1
	add	t3, r0
.LBB48_58:                              //   in Loop: Header=BB48_54 Depth=1
	mov	r1, -2147483648
	mov	t1, 0
	mov	r0, r4
	call	__bit_xor
	mov	t4, rax
	mov	r0, t3
	call	__bit_xor
	jg	rax, t4, .LBB48_65
	jmp	.LBB48_54
.LBB48_59:                              // %.preheader24
                                        //   Parent Loop BB48_54 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, x1
	add	r0, t6
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	t4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r0, x3
	add	r0, t6
	mov	r1, 2
	mov	t4, rax
	call	__bit_shr
	mov	r1, 3
	mov	t5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jne	t4, rax, .LBB48_64
	jmp	.LBB48_60
.LBB48_60:                              //   in Loop: Header=BB48_59 Depth=2
	add	t6, 1
	jne	t7, t6, .LBB48_59
	jmp	.LBB48_61
.LBB48_61:                              // %.loopexit25.preheader
                                        //   in Loop: Header=BB48_54 Depth=1
	mov	x3, x2
	add	x3, t3
	mov	t4, r7
.LBB48_62:                              // %.loopexit25
                                        //   Parent Loop BB48_54 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	jz	t4, .LBB48_65
	jmp	.LBB48_63
.LBB48_63:                              //   in Loop: Header=BB48_62 Depth=2
	mov	x4, t4
	mov	r0, r2
	add	r0, t4
	mov	r1, 2
	add	x4, -1
	call	__bit_shr
	mov	r1, 3
	mov	t5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	add	t4, x3
	mov	r1, 2
	mov	t5, rax
	mov	r0, t4
	call	__bit_shr
	mov	r1, 3
	mov	t6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t4, x4
	mov	t6, r6
	je	t5, rax, .LBB48_62
	jmp	.LBB48_64
.LBB48_64:                              // %.loopexit23
                                        //   in Loop: Header=BB48_54 Depth=1
	add	t3, t6
	add	t3, 1
	jmp	.LBB48_58
.LBB48_65:                              // %.loopexit21
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
	mov	r5, r1
	mov	r6, r0
	mov	r7, r6
	jz	r3, .LBB49_78
	jmp	.LBB49_1
.LBB49_1:
	mov	r0, 1
	jne	r3, r0, .LBB49_15
	jmp	.LBB49_2
.LBB49_2:
	mov	r1, 2
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	r3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	r2, rax
	mov	r0, r6
	call	__bit_and
	jz	rax, .LBB49_7
	jmp	.LBB49_3
.LBB49_3:                               // %.preheader25.preheader
	mov	r3, r6
	add	r3, 1
.LBB49_4:                               // %.preheader25
                                        // =>This Inner Loop Header: Depth=1
	mov	r7, 0
	jz	r5, .LBB49_78
	jmp	.LBB49_5
.LBB49_5:                               //   in Loop: Header=BB49_4 Depth=1
	mov	r1, 2
	mov	r0, r6
	call	__bit_shr
	mov	r1, 3
	mov	r4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r4, rax
	mov	r0, r2
	call	__bit_and
	mov	r7, r6
	je	r4, rax, .LBB49_78
	jmp	.LBB49_6
.LBB49_6:                               //   in Loop: Header=BB49_4 Depth=1
	mov	r1, 3
	add	r6, 1
	mov	r0, r3
	call	__bit_and
	add	r3, 1
	add	r5, -1
	jnz	rax, .LBB49_4
	jmp	.LBB49_7
.LBB49_7:                               // %.loopexit9.i
	mov	r1, -2147483648
	mov	r0, r5
	call	__bit_xor
	mov	r0, -2147483644
	jl	rax, r0, .LBB49_11
	jmp	.LBB49_8
.LBB49_8:
	mov	r3, r2
	mul	r3, 16843009
	mov	r4, -2139062144
	mov	r7, -2147483645
.LBB49_9:                               // =>This Inner Loop Header: Depth=1
	mov	r0, [r6]
	mov	r1, r3
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, rax
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, r4, .LBB49_12
	jmp	.LBB49_10
.LBB49_10:                              //   in Loop: Header=BB49_9 Depth=1
	add	r5, -4
	mov	r1, -2147483648
	add	r6, 4
	mov	r0, r5
	call	__bit_xor
	jg	rax, r7, .LBB49_9
	jmp	.LBB49_11
.LBB49_11:                              // %.loopexit6.i
	mov	r7, 0
	jz	r5, .LBB49_78
	jmp	.LBB49_12
.LBB49_12:                              // %.loopexit5.i.preheader
.LBB49_13:                              // %.loopexit5.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	mov	r0, r6
	call	__bit_shr
	mov	r1, 3
	mov	r3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r3, rax
	mov	r0, r2
	call	__bit_and
	mov	r7, r6
	je	r3, rax, .LBB49_78
	jmp	.LBB49_14
.LBB49_14:                              //   in Loop: Header=BB49_13 Depth=1
	add	r5, -1
	add	r6, 1
	mov	r7, 0
	jz	r5, .LBB49_78
	jmp	.LBB49_13
.LBB49_15:
	mov	r1, -2147483648
	mov	r7, 0
	mov	r0, r3
	call	__bit_xor
	mov	r4, rax
	mov	r0, r5
	call	__bit_xor
	jl	rax, r4, .LBB49_78
	jmp	.LBB49_16
.LBB49_16:
	mov	t4, r5
	sub	t4, r3
	mov	r4, r6
	mov	r0, 2
	add	r4, t4
	jne	r3, r0, .LBB49_24
	jmp	.LBB49_17
.LBB49_17:
	mov	r1, 2
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	r3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 16
	mov	r0, rax
	call	__bit_shl
	add	r2, 1
	mov	r1, 2
	mov	r3, rax
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r0, r3
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	r2, rax
	mov	r0, r6
	call	__bit_shr
	mov	r1, 3
	mov	r3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 16
	mov	r0, rax
	call	__bit_shl
	mov	r0, r6
	add	r0, 1
	mov	r1, 2
	mov	r3, rax
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r0, r3
	mov	r1, rax
	call	__bit_or
	mov	r0, 1
	mov	r3, rax
	jl	t4, r0, .LBB49_23
	jmp	.LBB49_18
.LBB49_18:
	je	r3, r2, .LBB49_23
	jmp	.LBB49_19
.LBB49_19:                              // %.preheader.preheader
	add	r6, 2
.LBB49_20:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 16
	mov	r5, r6
	mov	r0, r3
	call	__bit_shl
	mov	r1, 2
	mov	r3, rax
	mov	r0, r5
	call	__bit_shr
	mov	r1, 3
	mov	r7, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r7]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r0, r3
	mov	r1, rax
	call	__bit_or
	mov	r3, rax
	mov	r1, -2147483648
	add	r6, 1
	mov	r0, r4
	call	__bit_xor
	mov	r7, rax
	mov	r0, r5
	call	__bit_xor
	jg	rax, r7, .LBB49_22
	jmp	.LBB49_21
.LBB49_21:                              // %.preheader
                                        //   in Loop: Header=BB49_20 Depth=1
	jne	r3, r2, .LBB49_20
	jmp	.LBB49_22
.LBB49_22:                              // %.loopexit.loopexit
	add	r6, -2
.LBB49_23:                              // %.loopexit
	mov	r0, r3
	mov	r1, r2
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
	mov	r1, r6
	call	__bit_and
	mov	r7, rax
	jmp	.LBB49_78
.LBB49_24:
	mov	r0, r3
	call	__bit_xor
	mov	r0, -2147483391
	jl	rax, r0, .LBB49_26
	jmp	.LBB49_25
.LBB49_25:
	mov	r0, r6
	mov	r1, r5
	call	two_way_long_needle
	mov	r7, rax
	jmp	.LBB49_78
.LBB49_26:
	mov	r1, 3
	mov	r0, rsp
	call	__bit_and
	mov	r7, rsp
	mov	r5, 256
	jz	rax, .LBB49_31
	jmp	.LBB49_27
.LBB49_27:                              // %.preheader22.preheader
	call	__bit_and
	mov	r0, rax
	call	__bit_xor
	mov	r5, rax
	add	r5, 1
	mov	t3, 0
.LBB49_28:                              // =>This Inner Loop Header: Depth=1
	mov	r0, rsp
	add	r0, t3
	mov	r1, 3
	call	__bit_and
	mov	r1, -4
	mov	r7, rax
	call	__bit_and
	mov	t1, rax
	mov	t2, [t1]
	mov	r1, 3
	mov	r0, r7
	call	__bit_shl
	mov	r0, 255
	mov	r7, rax
	mov	r1, r7
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t2
	mov	r1, rax
	call	__bit_and
	mov	r0, 0
	mov	t2, rax
	mov	r1, r7
	call	__bit_shl
	mov	r0, t2
	mov	r1, rax
	call	__bit_or
	add	t3, 1
	mov	[t1], rax
	jne	r5, t3, .LBB49_28
	jmp	.LBB49_29
.LBB49_29:                              // %.loopexit7.i
	mov	r7, rsp
	mov	r0, 257
	sub	r0, t3
	add	r7, t3
	mov	r5, 256
	mov	r1, -2147483648
	sub	r5, t3
	call	__bit_xor
	mov	r0, -2147483643
	jl	rax, r0, .LBB49_36
	jmp	.LBB49_30
.LBB49_30:                              // %.loopexit7.i.thread
	mov	r0, r5
	call	__bit_xor
	mov	r0, -2147483632
	jl	rax, r0, .LBB49_32
	jmp	.LBB49_31
.LBB49_31:                              // %.preheader.i.preheader
	mov	t1, -2147483633
	jmp	.LBB49_34
.LBB49_32:                              // %.preheader239
	mov	t1, -2147483645
	mov	r1, -2147483648
	jmp	.LBB49_35
.LBB49_33:
	mov	r0, r5
	add	r0, 16
	mov	r1, 19
	jg	r0, r1, .LBB49_32
	jmp	.LBB49_36
.LBB49_34:                              // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r7
	add	r0, 4
	mov	[r7], 0
	mov	r1, r7
	add	r1, 8
	mov	[r0], 0
	mov	r0, r7
	add	r0, 12
	mov	[r1], 0
	add	r7, 16
	add	r5, -16
	mov	r1, -2147483648
	mov	[r0], 0
	mov	r0, r5
	call	__bit_xor
	jg	rax, t1, .LBB49_34
	jmp	.LBB49_33
.LBB49_35:                              // =>This Inner Loop Header: Depth=1
	mov	[r7], 0
	add	r5, -4
	add	r7, 4
	mov	r0, r5
	call	__bit_xor
	jg	rax, t1, .LBB49_35
	jmp	.LBB49_36
.LBB49_36:                              // %.loopexit5.i6
	jz	r5, .LBB49_39
	jmp	.LBB49_37
.LBB49_37:                              // %.preheader21.preheader
	mov	t3, r7
.LBB49_38:                              // %.preheader21
                                        // =>This Inner Loop Header: Depth=1
	add	r5, -1
	mov	r1, 3
	add	t3, 1
	mov	r0, r7
	call	__bit_and
	mov	r1, -4
	mov	t1, rax
	call	__bit_and
	mov	r7, rax
	mov	t2, [r7]
	mov	r1, 3
	mov	r0, t1
	call	__bit_shl
	mov	r0, 255
	mov	t1, rax
	mov	r1, t1
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t2
	mov	r1, rax
	call	__bit_and
	mov	r0, 0
	mov	t2, rax
	mov	r1, t1
	call	__bit_shl
	mov	r0, t2
	mov	r1, rax
	call	__bit_or
	mov	[r7], rax
	mov	r7, t3
	jnz	r5, .LBB49_38
	jmp	.LBB49_39
.LBB49_39:                              // %memset.exit.preheader
	mov	r5, r3
	add	r5, -1
	mov	t5, r3
	add	t5, -2
	mov	r7, 0
.LBB49_40:                              // %memset.exit
                                        // =>This Inner Loop Header: Depth=1
	mov	t1, r2
	add	t1, r7
	mov	r0, t1
	add	r0, 1
	mov	r1, 2
	add	r7, 1
	call	__bit_shr
	mov	r1, 3
	mov	t2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 2
	mov	t2, rax
	mov	r0, t1
	call	__bit_shr
	mov	r1, 3
	mov	t3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	r0, rax
	call	__bit_shl
	sub	t2, rax
	mov	r1, 255
	mov	r0, t2
	call	__bit_and
	mov	r0, rax
	add	r0, rsp
	mov	r1, 3
	call	__bit_and
	mov	r1, -4
	mov	t1, rax
	call	__bit_and
	mov	t2, rax
	mov	t3, [t2]
	mov	r1, 3
	mov	r0, t1
	call	__bit_shl
	mov	r0, 255
	mov	t1, rax
	mov	r1, t1
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t3
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t3, rax
	mov	r0, r7
	call	__bit_and
	mov	r0, rax
	mov	r1, t1
	call	__bit_shl
	mov	r0, t3
	mov	r1, rax
	call	__bit_or
	mov	[t2], rax
	jne	t5, r7, .LBB49_40
	jmp	.LBB49_41
.LBB49_41:
	mov	r7, r2
	add	r7, r5
	mov	r1, 2
	mov	r0, r7
	call	__bit_shr
	mov	r1, 3
	mov	t1, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t1]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	add	r7, -1
	mov	r1, 2
	mov	t1, rax
	mov	r0, r7
	call	__bit_shr
	mov	r1, 3
	mov	t2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	r0, rax
	call	__bit_shl
	sub	t1, rax
	mov	r1, 255
	mov	r0, t1
	call	__bit_and
	mov	r7, rax
	add	r7, rsp
	mov	r1, 2
	mov	r0, r7
	call	__bit_shr
	mov	r1, 3
	mov	t1, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t1]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t7, r5
	mov	r1, 3
	sub	t7, rax
	mov	r0, r7
	call	__bit_and
	mov	r1, -4
	mov	t1, rax
	call	__bit_and
	mov	r7, rax
	mov	t2, [r7]
	mov	r1, 3
	mov	r0, t1
	call	__bit_shl
	mov	r0, 255
	mov	t1, rax
	mov	r1, t1
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t2
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t2, rax
	mov	r0, r5
	call	__bit_and
	mov	r0, rax
	mov	r1, t1
	call	__bit_shl
	mov	r0, t2
	mov	r1, rax
	call	__bit_or
	mov	r0, 17
	mov	[r7], rax
	jl	r3, r0, .LBB49_43
	jmp	.LBB49_42
.LBB49_42:                              // %.preheader19.preheader
	mov	r3, 0
	mov	x0, -2147483645
	jmp	.LBB49_59
.LBB49_43:                              // %.preheader14
	mov	r7, 0
	jl	t4, r7, .LBB49_77
	jmp	.LBB49_44
.LBB49_44:                              // %.preheader13.lr.ph
	mov	t5, -2147483643
	mov	t6, -2147483645
.LBB49_45:                              // %.preheader13
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB49_52 Depth 2
                                        //     Child Loop BB49_56 Depth 2
	mov	r7, r6
	add	r7, r5
	mov	r1, 2
	mov	r0, r7
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r0, r7
	add	r0, -1
	mov	r1, 2
	mov	r6, rax
	call	__bit_shr
	mov	r1, 3
	mov	t1, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t1]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	r0, rax
	call	__bit_shl
	sub	r6, rax
	mov	r1, 255
	mov	r0, r6
	call	__bit_and
	mov	r0, rax
	add	r0, rsp
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, -2147483648
	mov	t1, rax
	mov	r0, r4
	call	__bit_xor
	mov	r6, rax
	mov	r0, r7
	call	__bit_xor
	jg	rax, r6, .LBB49_47
	jmp	.LBB49_46
.LBB49_46:                              // %.preheader13
                                        //   in Loop: Header=BB49_45 Depth=1
	mov	r1, 255
	mov	r0, t1
	call	__bit_and
	mov	r6, r7
	jz	rax, .LBB49_45
	jmp	.LBB49_47
.LBB49_47:                              //   in Loop: Header=BB49_45 Depth=1
	mov	r1, 255
	mov	r0, t1
	call	__bit_and
	mov	r1, -2147483648
	sub	r7, rax
	mov	r0, rax
	call	__bit_xor
	mov	r6, rax
	mov	r0, r5
	call	__bit_xor
	jle	rax, r6, .LBB49_49
	jmp	.LBB49_48
.LBB49_48:                              //   in Loop: Header=BB49_45 Depth=1
	mov	r1, -2147483648
	mov	r0, r4
	call	__bit_xor
	mov	t1, rax
	mov	r0, r7
	call	__bit_xor
	mov	r6, r7
	mov	r7, 0
	jg	rax, t1, .LBB49_77
	jmp	.LBB49_45
.LBB49_49:                              //   in Loop: Header=BB49_45 Depth=1
	mov	r0, r3
	call	__bit_xor
	mov	r6, r5
	mov	t2, r7
	mov	t1, r2
	jl	rax, t5, .LBB49_54
	jmp	.LBB49_50
.LBB49_50:                              //   in Loop: Header=BB49_45 Depth=1
	mov	r0, r7
	mov	r1, r2
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	mov	r6, r5
	mov	t1, r2
	mov	t2, r7
	jnz	rax, .LBB49_55
	jmp	.LBB49_51
.LBB49_51:                              // %.preheader.i8.preheader
                                        //   in Loop: Header=BB49_45 Depth=1
	mov	t1, r2
	mov	t2, r7
	mov	r6, r5
.LBB49_52:                              // %.preheader.i8
                                        //   Parent Loop BB49_45 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, [t2]
	mov	r1, [t1]
	jne	r0, r1, .LBB49_55
	jmp	.LBB49_53
.LBB49_53:                              //   in Loop: Header=BB49_52 Depth=2
	add	t2, 4
	add	r6, -4
	mov	r1, -2147483648
	add	t1, 4
	mov	r0, r6
	call	__bit_xor
	jg	rax, t6, .LBB49_52
	jmp	.LBB49_54
.LBB49_54:                              // %.loopexit8.i
                                        //   in Loop: Header=BB49_45 Depth=1
	jz	r6, .LBB49_77
	jmp	.LBB49_55
.LBB49_55:                              // %.loopexit7.i7.preheader
                                        //   in Loop: Header=BB49_45 Depth=1
.LBB49_56:                              // %.loopexit7.i7
                                        //   Parent Loop BB49_45 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 2
	mov	r0, t2
	call	__bit_shr
	mov	r1, 3
	mov	t3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 2
	mov	t3, rax
	mov	r0, t1
	call	__bit_shr
	mov	r1, 3
	mov	t4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jne	t3, rax, .LBB49_58
	jmp	.LBB49_57
.LBB49_57:                              //   in Loop: Header=BB49_56 Depth=2
	add	r6, -1
	add	t2, 1
	add	t1, 1
	jz	r6, .LBB49_77
	jmp	.LBB49_56
.LBB49_58:                              // %memcmp.exit
                                        //   in Loop: Header=BB49_45 Depth=1
	add	r7, t7
	jmp	.LBB49_48
.LBB49_59:                              // %.preheader19
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB49_60 Depth 2
                                        //       Child Loop BB49_62 Depth 3
	mov	t2, r6
.LBB49_60:                              //   Parent Loop BB49_59 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB49_62 Depth 3
	mov	r6, t2
	mov	r1, -2147483648
	mov	r7, 0
	mov	r0, r4
	call	__bit_xor
	mov	t1, rax
	mov	r0, r6
	call	__bit_xor
	jg	rax, t1, .LBB49_77
	jmp	.LBB49_61
.LBB49_61:                              // %.preheader16.preheader
                                        //   in Loop: Header=BB49_60 Depth=2
	mov	t3, r6
	add	t3, r5
	mov	x1, 0
.LBB49_62:                              // %.preheader16
                                        //   Parent Loop BB49_59 Depth=1
                                        //     Parent Loop BB49_60 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	mov	t1, t3
	add	t1, x1
	mov	r1, 2
	mov	r0, t1
	call	__bit_shr
	mov	r1, 3
	mov	r7, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r7]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r0, t1
	add	r0, -1
	mov	r1, 2
	mov	r7, rax
	call	__bit_shr
	mov	r1, 3
	mov	t2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	r0, rax
	call	__bit_shl
	sub	r7, rax
	mov	r1, 255
	mov	r0, r7
	call	__bit_and
	mov	r0, rax
	add	r0, rsp
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	r7, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r7]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r7, rax
	mov	r1, -2147483648
	add	x1, r5
	mov	r0, r4
	call	__bit_xor
	mov	t2, rax
	mov	r0, t1
	call	__bit_xor
	jg	rax, t2, .LBB49_64
	jmp	.LBB49_63
.LBB49_63:                              // %.preheader16
                                        //   in Loop: Header=BB49_62 Depth=3
	mov	r1, 255
	mov	r0, r7
	call	__bit_and
	jz	rax, .LBB49_62
	jmp	.LBB49_64
.LBB49_64:                              //   in Loop: Header=BB49_60 Depth=2
	mov	r1, 255
	mov	r0, r7
	call	__bit_and
	mov	t2, r6
	sub	t2, rax
	mov	r1, -2147483648
	add	t2, x1
	mov	r0, rax
	call	__bit_xor
	mov	t1, rax
	mov	r0, r5
	call	__bit_xor
	jg	rax, t1, .LBB49_60
	jmp	.LBB49_65
.LBB49_65:                              //   in Loop: Header=BB49_59 Depth=1
	mov	r1, 255
	mov	r0, r7
	call	__bit_and
	mov	t3, r3
	add	t3, r6
	mov	t1, rax
	mov	t4, t3
	sub	t4, t1
	mov	t2, r2
	add	t2, r3
	add	t4, x1
	mov	r0, t4
	mov	r1, t2
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB49_67
	jmp	.LBB49_66
.LBB49_66:                              // %.preheader.i10.preheader
                                        //   in Loop: Header=BB49_59 Depth=1
	mov	r0, [t4]
	mov	r1, [t2]
	je	r0, r1, .LBB49_71
	jmp	.LBB49_67
.LBB49_67:                              // %.loopexit7.i9
                                        //   in Loop: Header=BB49_59 Depth=1
	mov	r1, 2
	mov	r0, t4
	call	__bit_shr
	mov	r1, 3
	mov	t5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 2
	mov	t4, rax
	mov	r0, t2
	call	__bit_shr
	mov	r1, 3
	mov	t5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jne	t4, rax, .LBB49_75
	jmp	.LBB49_68
.LBB49_68:                              // %.loopexit7.i9.1
                                        //   in Loop: Header=BB49_59 Depth=1
	mov	r0, r7
	call	__bit_and
	mov	r0, t3
	sub	r0, rax
	add	r0, x1
	add	r0, 1
	mov	t4, t2
	mov	r1, 2
	add	t4, 1
	call	__bit_shr
	mov	r1, 3
	mov	t5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 2
	mov	t5, rax
	mov	r0, t4
	call	__bit_shr
	mov	r1, 3
	mov	t6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jne	t5, rax, .LBB49_75
	jmp	.LBB49_69
.LBB49_69:                              // %.loopexit7.i9.2
                                        //   in Loop: Header=BB49_59 Depth=1
	mov	r0, r7
	call	__bit_and
	mov	r0, t3
	sub	r0, rax
	add	r0, x1
	add	r0, 2
	mov	t4, t2
	mov	r1, 2
	add	t4, 2
	call	__bit_shr
	mov	r1, 3
	mov	t5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 2
	mov	t5, rax
	mov	r0, t4
	call	__bit_shr
	mov	r1, 3
	mov	t6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jne	t5, rax, .LBB49_75
	jmp	.LBB49_70
.LBB49_70:                              // %.loopexit7.i9.3
                                        //   in Loop: Header=BB49_59 Depth=1
	mov	r0, r7
	call	__bit_and
	sub	t3, rax
	add	t3, x1
	add	t3, 3
	mov	r1, 2
	add	t2, 3
	mov	r0, t3
	call	__bit_shr
	mov	r1, 3
	mov	t4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 2
	mov	t3, rax
	mov	r0, t2
	call	__bit_shr
	mov	r1, 3
	mov	t4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jne	t3, rax, .LBB49_75
	jmp	.LBB49_71
.LBB49_71:                              // %memcmp.exit12.thread
                                        //   in Loop: Header=BB49_59 Depth=1
	mov	r0, r6
	sub	r0, t1
	add	r0, x1
	mov	t1, r2
	mov	r1, r2
	mov	r2, r5
	call	memcmp
	jz	rax, .LBB49_76
	jmp	.LBB49_72
.LBB49_72:                              //   in Loop: Header=BB49_59 Depth=1
	mov	r1, -2147483648
	mov	r0, r3
	call	__bit_xor
	jg	rax, x0, .LBB49_74
	jmp	.LBB49_73
.LBB49_73:                              //   in Loop: Header=BB49_59 Depth=1
	mov	r3, r5
.LBB49_74:                              //   in Loop: Header=BB49_59 Depth=1
	add	r3, -4
	mov	r2, t1
.LBB49_75:                              // %memcmp.exit12
                                        //   in Loop: Header=BB49_59 Depth=1
	mov	r1, 255
	mov	r0, r7
	call	__bit_and
	add	r6, t7
	sub	r6, rax
	add	r6, x1
	jmp	.LBB49_59
.LBB49_76:                              // %memcmp.exit.thread.loopexit4
	mov	r1, 255
	mov	r0, r7
	call	__bit_and
	sub	r6, rax
	add	r6, x1
	mov	r7, r6
.LBB49_77:                              // %memcmp.exit.thread
.LBB49_78:                              // %memchr.exit
	mov	rax, r7
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
	jge	rax, r5, .LBB50_10
	jmp	.LBB50_1
.LBB50_1:
	mov	r5, r4
	add	r5, r3
	mov	r0, r5
	call	__bit_xor
	mov	r6, rax
	mov	r0, r2
	call	__bit_xor
	jge	rax, r6, .LBB50_10
	jmp	.LBB50_2
.LBB50_2:
	mov	r6, r2
	add	r6, r3
	mov	r0, r3
	call	__bit_xor
	mov	r0, -2147483644
	jl	rax, r0, .LBB50_7
	jmp	.LBB50_3
.LBB50_3:
	mov	r0, r5
	mov	r1, r6
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB50_8
	jmp	.LBB50_4
.LBB50_4:                               // %.preheader.preheader
	mov	r5, -2147483645
	mov	r1, -2147483648
.LBB50_5:                               // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r4
	add	r0, r3
	add	r0, -4
	mov	r0, [r0]
	mov	r6, r2
	add	r6, r3
	add	r6, -4
	add	r3, -4
	mov	[r6], r0
	mov	r0, r3
	call	__bit_xor
	jg	rax, r5, .LBB50_5
	jmp	.LBB50_6
.LBB50_6:                               // %.loopexit9.loopexit
	add	r4, r3
	mov	r6, r2
	add	r6, r3
	mov	r5, r4
.LBB50_7:                               // %.loopexit9
	jz	r3, .LBB50_21
	jmp	.LBB50_8
.LBB50_8:                               // %.preheader56
	add	r5, -1
	add	r6, -1
.LBB50_9:                               // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	add	r3, -1
	mov	r0, r5
	call	__bit_shr
	mov	r1, 3
	mov	r4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	r4, rax
	mov	r0, r6
	call	__bit_and
	mov	r1, -4
	mov	r7, rax
	call	__bit_and
	mov	t1, rax
	mov	t2, [t1]
	mov	r1, 3
	mov	r0, r7
	call	__bit_shl
	mov	r0, 255
	mov	r7, rax
	mov	r1, r7
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t2
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t2, rax
	mov	r0, r4
	call	__bit_and
	mov	r0, rax
	mov	r1, r7
	call	__bit_shl
	mov	r0, t2
	mov	r1, rax
	call	__bit_or
	mov	[t1], rax
	add	r5, -1
	add	r6, -1
	jz	r3, .LBB50_21
	jmp	.LBB50_9
.LBB50_10:
	mov	r0, r3
	call	__bit_xor
	mov	r0, -2147483644
	mov	r5, r2
	jl	rax, r0, .LBB50_18
	jmp	.LBB50_11
.LBB50_11:
	mov	r0, r4
	mov	r1, r2
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	mov	r5, r2
	jnz	rax, .LBB50_19
	jmp	.LBB50_12
.LBB50_12:
	mov	r1, -2147483648
	mov	r0, r3
	call	__bit_xor
	mov	r0, -2147483632
	mov	r5, r2
	jl	rax, r0, .LBB50_14
	jmp	.LBB50_13
.LBB50_13:                              // %.preheader12.preheader
	mov	r6, -2147483633
	mov	r5, r2
	jmp	.LBB50_16
.LBB50_14:                              // %.preheader66
	mov	r6, -2147483645
	jmp	.LBB50_17
.LBB50_15:
	mov	r0, 3
	jg	r3, r0, .LBB50_14
	jmp	.LBB50_18
.LBB50_16:                              // %.preheader12
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [r4]
	mov	r1, r4
	add	r1, 4
	mov	[r5], r0
	mov	r0, [r1]
	mov	r1, r5
	add	r1, 4
	mov	r7, r4
	add	r7, 8
	mov	t0, r5
	mov	[r1], r0
	mov	r0, [r7]
	add	t0, 8
	mov	r1, r4
	add	r1, 12
	mov	r7, r5
	add	r7, 12
	mov	[t0], r0
	add	r4, 16
	mov	r0, [r1]
	add	r5, 16
	add	r3, -16
	mov	r1, -2147483648
	mov	[r7], r0
	mov	r0, r3
	call	__bit_xor
	jg	rax, r6, .LBB50_16
	jmp	.LBB50_15
.LBB50_17:                              // =>This Inner Loop Header: Depth=1
	mov	r0, [r4]
	add	r4, 4
	mov	[r5], r0
	add	r3, -4
	add	r5, 4
	mov	r0, r3
	call	__bit_xor
	jg	rax, r6, .LBB50_17
	jmp	.LBB50_18
.LBB50_18:                              // %.loopexit11
	jz	r3, .LBB50_21
	jmp	.LBB50_19
.LBB50_19:                              // %.preheader61
	mov	t1, r4
	mov	t2, r5
.LBB50_20:                              // =>This Inner Loop Header: Depth=1
	add	r3, -1
	mov	r1, 2
	add	t1, 1
	mov	r0, r4
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r4, rax
	mov	r1, 3
	add	t2, 1
	mov	r0, r5
	call	__bit_and
	mov	r1, -4
	mov	r6, rax
	call	__bit_and
	mov	r5, rax
	mov	r7, [r5]
	mov	r1, 3
	mov	r0, r6
	call	__bit_shl
	mov	r0, 255
	mov	r6, rax
	mov	r1, r6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	r7, rax
	mov	r0, r4
	call	__bit_and
	mov	r0, rax
	mov	r1, r6
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	[r5], rax
	mov	r4, t1
	mov	r5, t2
	jnz	r3, .LBB50_20
	jmp	.LBB50_21
.LBB50_21:                              // %.loopexit
	mov	rax, r2
	ret
// -- End function
// -- Begin function mempcpy
mempcpy:                                // @mempcpy
// %bb.0:
	mov	r4, r1
	mov	r1, -2147483648
	mov	r3, r2
	mov	r2, r0
	mov	r0, r3
	call	__bit_xor
	mov	r0, -2147483644
	jl	rax, r0, .LBB51_8
	jmp	.LBB51_1
.LBB51_1:
	mov	r0, r4
	mov	r1, r2
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB51_9
	jmp	.LBB51_2
.LBB51_2:
	mov	r1, -2147483648
	mov	r0, r3
	call	__bit_xor
	mov	r0, -2147483632
	jl	rax, r0, .LBB51_4
	jmp	.LBB51_3
.LBB51_3:                               // %.preheader.preheader
	mov	r5, -2147483633
	jmp	.LBB51_6
.LBB51_4:                               // %.preheader35
	mov	r5, -2147483645
	jmp	.LBB51_7
.LBB51_5:
	mov	r0, 3
	jg	r3, r0, .LBB51_4
	jmp	.LBB51_8
.LBB51_6:                               // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, [r4]
	mov	r1, r4
	add	r1, 4
	mov	[r2], r0
	mov	r0, [r1]
	mov	r1, r2
	add	r1, 4
	mov	r6, r4
	add	r6, 8
	mov	r7, r2
	mov	[r1], r0
	mov	r0, [r6]
	add	r7, 8
	mov	r1, r4
	add	r1, 12
	mov	r6, r2
	add	r6, 12
	mov	[r7], r0
	add	r4, 16
	mov	r0, [r1]
	add	r2, 16
	add	r3, -16
	mov	r1, -2147483648
	mov	[r6], r0
	mov	r0, r3
	call	__bit_xor
	jg	rax, r5, .LBB51_6
	jmp	.LBB51_5
.LBB51_7:                               // =>This Inner Loop Header: Depth=1
	mov	r0, [r4]
	add	r4, 4
	mov	[r2], r0
	add	r3, -4
	add	r2, 4
	mov	r0, r3
	call	__bit_xor
	jg	rax, r5, .LBB51_7
	jmp	.LBB51_8
.LBB51_8:                               // %.loopexit4
	jz	r3, .LBB51_11
	jmp	.LBB51_9
.LBB51_9:                               // %.preheader32
	mov	r5, r2
	mov	t1, r4
.LBB51_10:                              // =>This Inner Loop Header: Depth=1
	add	r3, -1
	mov	r1, 2
	add	t1, 1
	mov	r0, r4
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r4, rax
	mov	r1, 3
	add	r2, 1
	mov	r0, r5
	call	__bit_and
	mov	r1, -4
	mov	r6, rax
	call	__bit_and
	mov	r5, rax
	mov	r7, [r5]
	mov	r1, 3
	mov	r0, r6
	call	__bit_shl
	mov	r0, 255
	mov	r6, rax
	mov	r1, r6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	r7, rax
	mov	r0, r4
	call	__bit_and
	mov	r0, rax
	mov	r1, r6
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	[r5], rax
	mov	r4, t1
	mov	r5, r2
	jnz	r3, .LBB51_10
	jmp	.LBB51_11
.LBB51_11:                              // %.loopexit
	mov	rax, r2
	ret
// -- End function
// -- Begin function memrchr
memrchr:                                // @memrchr
// %bb.0:
	mov	r4, r1
	mov	r5, r0
	mov	r0, r2
	add	r0, r5
	mov	r1, 3
	call	__bit_and
	mov	r3, r2
	sub	r3, rax
	mov	t2, 0
	mov	t3, r5
.LBB52_1:                               // =>This Inner Loop Header: Depth=1
	mov	r6, r5
	mov	r0, r2
	add	r0, t3
	mov	r1, 3
	add	r6, r2
	call	__bit_and
	jz	rax, .LBB52_4
	jmp	.LBB52_2
.LBB52_2:                               //   in Loop: Header=BB52_1 Depth=1
	mov	rax, 0
	je	r2, t2, .LBB52_16
	jmp	.LBB52_3
.LBB52_3:                               //   in Loop: Header=BB52_1 Depth=1
	mov	r1, 255
	mov	r0, r4
	call	__bit_and
	add	r6, -1
	mov	r1, 2
	mov	r7, rax
	mov	r0, r6
	call	__bit_shr
	mov	r1, 3
	mov	t1, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t1]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	add	t2, 1
	add	r5, -1
	add	t3, -1
	je	rax, r7, .LBB52_15
	jmp	.LBB52_1
.LBB52_4:
	mov	r7, r6
	mov	r1, -2147483648
	add	r7, -1
	mov	r0, r3
	call	__bit_xor
	mov	r0, -2147483644
	jl	rax, r0, .LBB52_11
	jmp	.LBB52_5
.LBB52_5:
	mov	r1, 255
	mov	r0, r4
	call	__bit_and
	mov	r7, rax
	mul	r7, 16843009
	mov	t1, 0
	mov	t2, -2139062144
	mov	t3, -2147483645
.LBB52_6:                               // =>This Inner Loop Header: Depth=1
	mov	r0, r2
	add	r0, t1
	add	r0, r5
	add	r0, -4
	mov	r0, [r0]
	mov	r1, r7
	call	__bit_xor
	mov	r0, 16843008
	sub	r0, rax
	mov	r1, rax
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, t2, .LBB52_9
	jmp	.LBB52_7
.LBB52_7:                               //   in Loop: Header=BB52_6 Depth=1
	add	t1, -4
	mov	r0, r3
	add	r0, t1
	mov	r1, -2147483648
	call	__bit_xor
	jg	rax, t3, .LBB52_6
	jmp	.LBB52_8
.LBB52_8:                               // %split
	add	r6, t1
	mov	r7, r6
	mov	r3, r0
	jmp	.LBB52_10
.LBB52_9:                               // %._crit_edge
	add	r6, t1
	add	r3, t1
	mov	r7, r6
.LBB52_10:
	add	r7, -1
.LBB52_11:
	mov	rax, 0
	jz	r3, .LBB52_16
	jmp	.LBB52_12
.LBB52_12:                              // %.preheader.preheader
.LBB52_13:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 255
	mov	r0, r4
	call	__bit_and
	mov	r1, 2
	mov	r2, rax
	mov	r0, r7
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	mov	rax, r7
	je	r0, r2, .LBB52_16
	jmp	.LBB52_14
.LBB52_14:                              //   in Loop: Header=BB52_13 Depth=1
	add	r3, -1
	add	r7, -1
	mov	rax, 0
	jz	r3, .LBB52_16
	jmp	.LBB52_13
.LBB52_15:                              // %..loopexit.loopexit1_crit_edge
	add	r5, r2
	mov	rax, r5
.LBB52_16:                              // %.loopexit
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
	mov	r6, rax
	mov	r0, r2
	call	__bit_and
	mov	r5, r2
	jz	rax, .LBB53_4
	jmp	.LBB53_1
.LBB53_1:
	mov	r7, r2
	add	r7, 1
	mov	r0, r2
.LBB53_2:                               // =>This Inner Loop Header: Depth=1
	jz	r4, .LBB53_14
	jmp	.LBB53_3
.LBB53_3:                               //   in Loop: Header=BB53_2 Depth=1
	add	r4, -1
	mov	r5, r0
	mov	r1, 3
	add	r5, 1
	call	__bit_and
	mov	r1, -4
	mov	t1, rax
	call	__bit_and
	mov	t2, rax
	mov	t3, [t2]
	mov	r1, 3
	mov	r0, t1
	call	__bit_shl
	mov	r1, 255
	mov	t1, rax
	mov	r0, r3
	call	__bit_and
	mov	r0, 255
	mov	t4, rax
	mov	r1, t1
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t3
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t3, rax
	mov	r0, t4
	call	__bit_and
	mov	r0, rax
	mov	r1, t1
	call	__bit_shl
	mov	r0, t3
	mov	r1, rax
	call	__bit_or
	mov	r1, 3
	mov	[t2], rax
	mov	r0, r7
	call	__bit_and
	add	r7, 1
	mov	r0, r5
	jnz	rax, .LBB53_2
	jmp	.LBB53_4
.LBB53_4:                               // %.loopexit7
	mov	r1, -2147483648
	mov	r0, r4
	call	__bit_xor
	mov	r0, -2147483644
	jl	rax, r0, .LBB53_11
	jmp	.LBB53_5
.LBB53_5:
	mul	r6, 16843009
	mov	r0, r4
	call	__bit_xor
	mov	r0, -2147483632
	jl	rax, r0, .LBB53_7
	jmp	.LBB53_6
.LBB53_6:                               // %.preheader.preheader
	mov	r7, -2147483633
	jmp	.LBB53_9
.LBB53_7:                               // %.preheader35
	mov	r7, -2147483645
	jmp	.LBB53_10
.LBB53_8:
	mov	r0, 3
	jg	r4, r0, .LBB53_7
	jmp	.LBB53_11
.LBB53_9:                               // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r5
	add	r0, 4
	mov	[r5], r6
	mov	r1, r5
	add	r1, 8
	mov	[r0], r6
	mov	r0, r5
	add	r0, 12
	mov	[r1], r6
	add	r5, 16
	add	r4, -16
	mov	r1, -2147483648
	mov	[r0], r6
	mov	r0, r4
	call	__bit_xor
	jg	rax, r7, .LBB53_9
	jmp	.LBB53_8
.LBB53_10:                              // =>This Inner Loop Header: Depth=1
	mov	[r5], r6
	add	r4, -4
	add	r5, 4
	mov	r0, r4
	call	__bit_xor
	jg	rax, r7, .LBB53_10
	jmp	.LBB53_11
.LBB53_11:                              // %.loopexit5
	jz	r4, .LBB53_14
	jmp	.LBB53_12
.LBB53_12:
	mov	t2, r5
.LBB53_13:                              // =>This Inner Loop Header: Depth=1
	add	r4, -1
	mov	r1, 3
	add	t2, 1
	mov	r0, r5
	call	__bit_and
	mov	r1, -4
	mov	r6, rax
	call	__bit_and
	mov	r5, rax
	mov	r7, [r5]
	mov	r1, 3
	mov	r0, r6
	call	__bit_shl
	mov	r1, 255
	mov	r6, rax
	mov	r0, r3
	call	__bit_and
	mov	r0, 255
	mov	t1, rax
	mov	r1, r6
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	r7, rax
	mov	r0, t1
	call	__bit_and
	mov	r0, rax
	mov	r1, r6
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	[r5], rax
	mov	r5, t2
	jnz	r4, .LBB53_13
	jmp	.LBB53_14
.LBB53_14:                              // %.loopexit
	mov	rax, r2
	ret
// -- End function
// -- Begin function rawmemchr
rawmemchr:                              // @rawmemchr
// %bb.0:
	mov	r2, r1
	mov	r1, 3
	mov	r3, r0
	call	__bit_and
	jz	rax, .LBB54_4
	jmp	.LBB54_1
.LBB54_1:
	mov	r4, r3
	add	r4, 1
.LBB54_2:                               // =>This Inner Loop Header: Depth=1
	mov	r1, 255
	mov	r0, r2
	call	__bit_and
	mov	r1, 2
	mov	r5, rax
	mov	r0, r3
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	je	rax, r5, .LBB54_8
	jmp	.LBB54_3
.LBB54_3:                               //   in Loop: Header=BB54_2 Depth=1
	mov	r1, 3
	add	r3, 1
	mov	r0, r4
	call	__bit_and
	add	r4, 1
	jnz	rax, .LBB54_2
	jmp	.LBB54_4
.LBB54_4:                               // %.loopexit2
	mov	r1, 255
	mov	r0, r2
	call	__bit_and
	mov	r4, rax
	mul	r4, 16843009
	add	r3, -5
	mov	r5, -2139062144
.LBB54_5:                               // =>This Inner Loop Header: Depth=1
	mov	r0, r3
	add	r0, 5
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
	add	r3, 4
	je	rax, r5, .LBB54_5
	jmp	.LBB54_6
.LBB54_6:
.LBB54_7:                               // =>This Inner Loop Header: Depth=1
	mov	r1, 255
	mov	r0, r2
	call	__bit_and
	add	r3, 1
	mov	r1, 2
	mov	r4, rax
	mov	r0, r3
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jne	rax, r4, .LBB54_7
	jmp	.LBB54_8
.LBB54_8:                               // %.loopexit
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
	jz	r5, .LBB55_16
	jmp	.LBB55_1
.LBB55_1:                               // %.preheader.split.preheader.i
	mul	r5, 16843009
	mov	r2, 0
	mov	t2, -2139062144
.LBB55_2:                               // %.preheader.split.i
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB55_6 Depth 2
                                        //     Child Loop BB55_9 Depth 2
                                        //     Child Loop BB55_12 Depth 2
	mov	r1, 3
	mov	r0, r3
	call	__bit_and
	jz	rax, .LBB55_4
	jmp	.LBB55_3
.LBB55_3:                               // %.preheader29.i.preheader
                                        //   in Loop: Header=BB55_2 Depth=1
	mov	r6, r3
	add	r6, 1
	jmp	.LBB55_6
.LBB55_4:                               // %.loopexit9.i.i
                                        //   in Loop: Header=BB55_2 Depth=1
	mov	r6, [r3]
	mov	r0, 16843008
	sub	r0, r6
	mov	r1, r6
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, t2, .LBB55_11
	jmp	.LBB55_5
.LBB55_5:                               // %.preheader5.i.i.preheader
                                        //   in Loop: Header=BB55_2 Depth=1
	jmp	.LBB55_9
.LBB55_6:                               // %.preheader29.i
                                        //   Parent Loop BB55_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 2
	mov	r0, r3
	call	__bit_shr
	mov	r1, 3
	mov	r7, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r7]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r7, rax
	jz	r7, .LBB55_24
	jmp	.LBB55_7
.LBB55_7:                               //   in Loop: Header=BB55_6 Depth=2
	mov	r0, r4
	call	__bit_and
	mov	t1, rax
	mov	r0, r7
	call	__bit_and
	je	rax, t1, .LBB55_15
	jmp	.LBB55_8
.LBB55_8:                               //   in Loop: Header=BB55_6 Depth=2
	mov	r1, 3
	add	r3, 1
	mov	r0, r6
	call	__bit_and
	add	r6, 1
	jz	rax, .LBB55_4
	jmp	.LBB55_6
.LBB55_9:                               // %.preheader5.i.i
                                        //   Parent Loop BB55_2 Depth=1
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
	jne	rax, t2, .LBB55_11
	jmp	.LBB55_10
.LBB55_10:                              //   in Loop: Header=BB55_9 Depth=2
	add	r3, 4
	mov	r6, [r3]
	mov	r0, 16843008
	sub	r0, r6
	mov	r1, r6
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	je	rax, t2, .LBB55_9
	jmp	.LBB55_11
.LBB55_11:                              // %.loopexit6.i.i.preheader
                                        //   in Loop: Header=BB55_2 Depth=1
	add	r3, -1
.LBB55_12:                              // %.loopexit6.i.i
                                        //   Parent Loop BB55_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	r3, 1
	mov	r1, 2
	mov	r0, r3
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r6, rax
	jz	r6, .LBB55_14
	jmp	.LBB55_13
.LBB55_13:                              // %.loopexit6.i.i
                                        //   in Loop: Header=BB55_12 Depth=2
	mov	r0, r4
	call	__bit_and
	mov	r7, rax
	mov	r0, r6
	call	__bit_and
	jne	rax, r7, .LBB55_12
	jmp	.LBB55_14
.LBB55_14:                              //   in Loop: Header=BB55_2 Depth=1
	mov	r0, r4
	call	__bit_and
	mov	r7, rax
	mov	r0, r6
	call	__bit_and
	jne	rax, r7, .LBB55_24
	jmp	.LBB55_15
.LBB55_15:                              // %strchr.exit.i
                                        //   in Loop: Header=BB55_2 Depth=1
	mov	r0, r3
	add	r0, 1
	mov	r2, r3
	mov	r3, r0
	jmp	.LBB55_2
.LBB55_16:
	mov	r1, 3
	mov	r0, r3
	call	__bit_and
	mov	r2, r3
	jz	rax, .LBB55_20
	jmp	.LBB55_17
.LBB55_17:                              // %.preheader2.i1.i.preheader
	mov	r4, r3
	add	r4, 1
	mov	r2, r3
.LBB55_18:                              // %.preheader2.i1.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	r3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB55_24
	jmp	.LBB55_19
.LBB55_19:                              //   in Loop: Header=BB55_18 Depth=1
	mov	r1, 3
	add	r2, 1
	mov	r0, r4
	call	__bit_and
	add	r4, 1
	jnz	rax, .LBB55_18
	jmp	.LBB55_20
.LBB55_20:                              // %.loopexit4.i2.i.preheader
	add	r2, -5
	mov	r3, -2139062144
.LBB55_21:                              // %.loopexit4.i2.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r2
	add	r0, 5
	mov	r1, [r0]
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	add	r2, 4
	je	rax, r3, .LBB55_21
	jmp	.LBB55_22
.LBB55_22:                              // %.preheader.i3.i.preheader
.LBB55_23:                              // %.preheader.i3.i
                                        // =>This Inner Loop Header: Depth=1
	add	r2, 1
	mov	r1, 2
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	r3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB55_23
	jmp	.LBB55_24
.LBB55_24:                              // %strrchr.exit
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
	jnz	rax, .LBB56_4
	jmp	.LBB56_1
.LBB56_1:
	mov	r4, [r3]
	mov	r0, 16843008
	sub	r0, r4
	mov	r1, r4
	call	__bit_or
	mov	r1, -2139062144
	mov	r5, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, r5, .LBB56_4
	jmp	.LBB56_2
.LBB56_2:                               // %.preheader.preheader
.LBB56_3:                               // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	add	r3, 4
	mov	[r2], r4
	mov	r4, [r3]
	mov	r0, 16843008
	sub	r0, r4
	add	r2, 4
	mov	r1, r4
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	je	rax, r5, .LBB56_3
	jmp	.LBB56_4
.LBB56_4:                               // %.loopexit.preheader
	add	r2, -1
	mov	r7, r3
.LBB56_5:                               // %.loopexit
                                        // =>This Inner Loop Header: Depth=1
	add	r2, 1
	mov	r1, 2
	add	r7, 1
	mov	r0, r3
	call	__bit_shr
	mov	r1, 3
	mov	r4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	r4, rax
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	r5, rax
	mov	r6, [r5]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r0, 255
	mov	r3, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	r6, rax
	mov	r0, r4
	call	__bit_and
	mov	r0, rax
	mov	r1, r3
	call	__bit_shl
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	[r5], rax
	mov	r3, r7
	jnz	r4, .LBB56_5
	jmp	.LBB56_6
.LBB56_6:
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
	jl	rax, r0, .LBB57_5
	jmp	.LBB57_1
.LBB57_1:
	jnz	r5, .LBB57_5
	jmp	.LBB57_2
.LBB57_2:                               // %.preheader5.preheader
	mov	r6, -2139062144
	mov	r7, -2147483645
.LBB57_3:                               // %.preheader5
                                        // =>This Inner Loop Header: Depth=1
	mov	r5, [r4]
	mov	r0, 16843008
	sub	r0, r5
	mov	r1, r5
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, r6, .LBB57_5
	jmp	.LBB57_4
.LBB57_4:                               //   in Loop: Header=BB57_3 Depth=1
	add	r3, -4
	add	r4, 4
	mov	[r2], r5
	mov	r1, -2147483648
	add	r2, 4
	mov	r0, r3
	call	__bit_xor
	jg	rax, r7, .LBB57_3
	jmp	.LBB57_5
.LBB57_5:                               // %.loopexit6.preheader
	mov	t2, 0
.LBB57_6:                               // %.loopexit6
                                        // =>This Inner Loop Header: Depth=1
	mov	r5, r2
	add	r5, t2
	je	r3, t2, .LBB57_12
	jmp	.LBB57_7
.LBB57_7:                               //   in Loop: Header=BB57_6 Depth=1
	mov	r0, r4
	add	r0, t2
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	r6, rax
	mov	r0, r5
	call	__bit_and
	mov	r1, -4
	mov	r7, rax
	call	__bit_and
	mov	r5, rax
	mov	t1, [r5]
	mov	r1, 3
	mov	r0, r7
	call	__bit_shl
	mov	r0, 255
	mov	r7, rax
	mov	r1, r7
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t1, rax
	mov	r0, r6
	call	__bit_and
	mov	r0, rax
	mov	r1, r7
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	[r5], rax
	add	t2, 1
	jnz	r6, .LBB57_6
	jmp	.LBB57_8
.LBB57_8:
	mov	r5, r2
	add	r5, t2
	mov	r4, r5
	add	r4, -1
	je	r3, t2, .LBB57_13
	jmp	.LBB57_9
.LBB57_9:                               // %.preheader.preheader
	sub	r3, t2
	mov	t1, 0
.LBB57_10:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r2
	add	r0, t1
	add	r0, t2
	mov	r1, 3
	call	__bit_and
	mov	r1, -4
	mov	r5, rax
	call	__bit_and
	mov	r6, rax
	mov	r7, [r6]
	mov	r1, 3
	mov	r0, r5
	call	__bit_shl
	mov	r0, 255
	mov	r5, rax
	mov	r1, r5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r0, 0
	mov	r7, rax
	mov	r1, r5
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	add	t1, 1
	mov	[r6], rax
	jne	r3, t1, .LBB57_10
	jmp	.LBB57_11
.LBB57_11:                              // %.loopexit.loopexit
	add	r2, t2
	add	r2, t1
	mov	r5, r2
	jmp	.LBB57_13
.LBB57_12:                              // %.loopexit.loopexit1
	mov	r4, 0
.LBB57_13:                              // %.loopexit
	mov	r0, r4
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
	sub	r5, r4
	add	rax, 1
	mov	r0, rax
	mov	r1, r5
	call	__bit_and
	add	rax, r4
	ret
// -- End function
// -- Begin function strcat
strcat:                                 // @strcat
// %bb.0:
	mov	r4, r1
	mov	r1, 3
	mov	r2, r0
	call	__bit_and
	mov	r3, r2
	jz	rax, .LBB58_4
	jmp	.LBB58_1
.LBB58_1:                               // %.preheader2.preheader
	mov	r5, r2
	add	r5, 1
	mov	r3, r2
.LBB58_2:                               // %.preheader2
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	mov	r0, r3
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB58_9
	jmp	.LBB58_3
.LBB58_3:                               //   in Loop: Header=BB58_2 Depth=1
	mov	r1, 3
	add	r3, 1
	mov	r0, r5
	call	__bit_and
	add	r5, 1
	jnz	rax, .LBB58_2
	jmp	.LBB58_4
.LBB58_4:                               // %.loopexit4
	mov	r1, 2
	mov	r0, r3
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB58_9
	jmp	.LBB58_5
.LBB58_5:                               // %.preheader1.preheader
	add	r3, -5
	mov	r5, -2139062144
.LBB58_6:                               // %.preheader1
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r3
	add	r0, 5
	mov	r1, [r0]
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	add	r3, 4
	je	rax, r5, .LBB58_6
	jmp	.LBB58_7
.LBB58_7:                               // %.preheader.preheader
.LBB58_8:                               // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	add	r3, 1
	mov	r1, 2
	mov	r0, r3
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB58_8
	jmp	.LBB58_9
.LBB58_9:                               // %.loopexit
	mov	r0, r3
	mov	r1, r4
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB58_13
	jmp	.LBB58_10
.LBB58_10:
	mov	r5, [r4]
	mov	r0, 16843008
	sub	r0, r5
	mov	r1, r5
	call	__bit_or
	mov	r1, -2139062144
	mov	r6, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, r6, .LBB58_13
	jmp	.LBB58_11
.LBB58_11:                              // %.preheader.i.preheader
.LBB58_12:                              // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	add	r4, 4
	mov	[r3], r5
	mov	r5, [r4]
	mov	r0, 16843008
	sub	r0, r5
	add	r3, 4
	mov	r1, r5
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	je	rax, r6, .LBB58_12
	jmp	.LBB58_13
.LBB58_13:                              // %.loopexit.i.preheader
	mov	r7, r4
	mov	t1, r3
.LBB58_14:                              // %.loopexit.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	add	r7, 1
	mov	r0, r4
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r5, rax
	mov	r1, 3
	add	t1, 1
	mov	r0, r3
	call	__bit_and
	mov	r1, -4
	mov	r4, rax
	call	__bit_and
	mov	r3, rax
	mov	r6, [r3]
	mov	r1, 3
	mov	r0, r4
	call	__bit_shl
	mov	r0, 255
	mov	r4, rax
	mov	r1, r4
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	r6, rax
	mov	r0, r5
	call	__bit_and
	mov	r0, rax
	mov	r1, r4
	call	__bit_shl
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	mov	r3, t1
	mov	r4, r7
	jnz	r5, .LBB58_14
	jmp	.LBB58_15
.LBB58_15:                              // %strcpy.exit
	mov	rax, r2
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
	jz	r4, .LBB59_3
	jmp	.LBB59_1
.LBB59_1:
	jz	rax, .LBB59_11
	jmp	.LBB59_2
.LBB59_2:
	mov	r6, r2
	add	r6, 1
	jmp	.LBB59_13
.LBB59_3:
	mov	r5, r2
	jz	rax, .LBB59_7
	jmp	.LBB59_4
.LBB59_4:                               // %.preheader2.preheader
	mov	r3, r2
	add	r3, 1
	mov	r5, r2
.LBB59_5:                               // %.preheader2
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	mov	r0, r5
	call	__bit_shr
	mov	r1, 3
	mov	r2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB59_22
	jmp	.LBB59_6
.LBB59_6:                               //   in Loop: Header=BB59_5 Depth=1
	mov	r1, 3
	add	r5, 1
	mov	r0, r3
	call	__bit_and
	add	r3, 1
	jnz	rax, .LBB59_5
	jmp	.LBB59_7
.LBB59_7:                               // %.loopexit4.preheader
	add	r5, -5
	mov	r2, -2139062144
.LBB59_8:                               // %.loopexit4
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r5
	add	r0, 5
	mov	r1, [r0]
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	add	r5, 4
	je	rax, r2, .LBB59_8
	jmp	.LBB59_9
.LBB59_9:                               // %.preheader.preheader
.LBB59_10:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	add	r5, 1
	mov	r1, 2
	mov	r0, r5
	call	__bit_shr
	mov	r1, 3
	mov	r2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB59_22
	jmp	.LBB59_10
.LBB59_11:                              // %.loopexit9
	mov	r5, [r2]
	mov	r0, 16843008
	sub	r0, r5
	mov	r1, r5
	call	__bit_or
	mov	r1, -2139062144
	mov	r6, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, r6, .LBB59_18
	jmp	.LBB59_12
.LBB59_12:                              // %.preheader5.preheader
	mul	r4, 16843009
	jmp	.LBB59_16
.LBB59_13:                              // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r7, rax
	mov	r5, 0
	jz	r7, .LBB59_22
	jmp	.LBB59_14
.LBB59_14:                              //   in Loop: Header=BB59_13 Depth=1
	mov	r0, r3
	call	__bit_and
	mov	t1, rax
	mov	r0, r7
	call	__bit_and
	mov	r5, r2
	je	rax, t1, .LBB59_22
	jmp	.LBB59_15
.LBB59_15:                              //   in Loop: Header=BB59_13 Depth=1
	mov	r1, 3
	add	r2, 1
	mov	r0, r6
	call	__bit_and
	add	r6, 1
	jz	rax, .LBB59_11
	jmp	.LBB59_13
.LBB59_16:                              // %.preheader5
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
	jne	rax, r6, .LBB59_18
	jmp	.LBB59_17
.LBB59_17:                              //   in Loop: Header=BB59_16 Depth=1
	add	r2, 4
	mov	r5, [r2]
	mov	r0, 16843008
	sub	r0, r5
	mov	r1, r5
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	je	rax, r6, .LBB59_16
	jmp	.LBB59_18
.LBB59_18:                              // %.loopexit6
	add	r2, -1
.LBB59_19:                              // =>This Inner Loop Header: Depth=1
	add	r2, 1
	mov	r1, 2
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	r4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r4, rax
	jz	r4, .LBB59_21
	jmp	.LBB59_20
.LBB59_20:                              //   in Loop: Header=BB59_19 Depth=1
	mov	r0, r3
	call	__bit_and
	mov	r5, rax
	mov	r0, r4
	call	__bit_and
	jne	rax, r5, .LBB59_19
	jmp	.LBB59_21
.LBB59_21:
	mov	r0, r3
	call	__bit_and
	mov	r3, rax
	mov	r0, r4
	call	__bit_and
	mov	r0, rax
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
	add	rax, 1
	mov	r0, rax
	mov	r1, r2
	call	__bit_and
	mov	r5, rax
.LBB59_22:                              // %.loopexit
	mov	rax, r5
	ret
// -- End function
// -- Begin function strchrnul
strchrnul:                              // @strchrnul
// %bb.0:
	mov	r5, r1
	mov	r1, 255
	mov	r3, r0
	mov	r0, r5
	call	__bit_and
	mov	r1, 3
	mov	r6, rax
	mov	r0, r3
	call	__bit_and
	mov	r4, rax
	jz	r6, .LBB60_3
	jmp	.LBB60_1
.LBB60_1:
	mov	r2, r3
	jz	r4, .LBB60_11
	jmp	.LBB60_2
.LBB60_2:
	mov	r7, r3
	add	r7, 1
	mov	r2, r3
	jmp	.LBB60_13
.LBB60_3:
	mov	r2, r3
	jz	r4, .LBB60_7
	jmp	.LBB60_4
.LBB60_4:                               // %.preheader2.i.preheader
	mov	r4, r3
	add	r4, 1
	mov	r2, r3
.LBB60_5:                               // %.preheader2.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	r3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB60_32
	jmp	.LBB60_6
.LBB60_6:                               //   in Loop: Header=BB60_5 Depth=1
	mov	r1, 3
	add	r2, 1
	mov	r0, r4
	call	__bit_and
	add	r4, 1
	jnz	rax, .LBB60_5
	jmp	.LBB60_7
.LBB60_7:                               // %.loopexit4.i.preheader
	add	r2, -5
	mov	r3, -2139062144
.LBB60_8:                               // %.loopexit4.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r2
	add	r0, 5
	mov	r1, [r0]
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	add	r2, 4
	je	rax, r3, .LBB60_8
	jmp	.LBB60_9
.LBB60_9:                               // %.preheader.i.preheader
.LBB60_10:                              // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	add	r2, 1
	mov	r1, 2
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	r3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB60_32
	jmp	.LBB60_10
.LBB60_11:                              // %.loopexit9.i
	mov	r7, [r2]
	mov	r0, 16843008
	sub	r0, r7
	mov	r1, r7
	call	__bit_or
	mov	r1, -2139062144
	mov	t1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, t1, .LBB60_18
	jmp	.LBB60_12
.LBB60_12:                              // %.preheader5.i.preheader
	mul	r6, 16843009
	jmp	.LBB60_16
.LBB60_13:                              // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	t1, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t1]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t1, rax
	jz	t1, .LBB60_22
	jmp	.LBB60_14
.LBB60_14:                              //   in Loop: Header=BB60_13 Depth=1
	mov	r0, r5
	call	__bit_and
	mov	t2, rax
	mov	r0, t1
	call	__bit_and
	je	rax, t2, .LBB60_32
	jmp	.LBB60_15
.LBB60_15:                              //   in Loop: Header=BB60_13 Depth=1
	mov	r1, 3
	add	r2, 1
	mov	r0, r7
	call	__bit_and
	add	r7, 1
	jz	rax, .LBB60_11
	jmp	.LBB60_13
.LBB60_16:                              // %.preheader5.i
                                        // =>This Inner Loop Header: Depth=1
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
	jne	rax, t1, .LBB60_18
	jmp	.LBB60_17
.LBB60_17:                              //   in Loop: Header=BB60_16 Depth=1
	add	r2, 4
	mov	r7, [r2]
	mov	r0, 16843008
	sub	r0, r7
	mov	r1, r7
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	je	rax, t1, .LBB60_16
	jmp	.LBB60_18
.LBB60_18:                              // %.loopexit6.i
	add	r2, -1
.LBB60_19:                              // =>This Inner Loop Header: Depth=1
	add	r2, 1
	mov	r1, 2
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r6, rax
	jz	r6, .LBB60_21
	jmp	.LBB60_20
.LBB60_20:                              //   in Loop: Header=BB60_19 Depth=1
	mov	r0, r5
	call	__bit_and
	mov	r7, rax
	mov	r0, r6
	call	__bit_and
	jne	rax, r7, .LBB60_19
	jmp	.LBB60_21
.LBB60_21:
	mov	r0, r5
	call	__bit_and
	mov	r5, rax
	mov	r0, r6
	call	__bit_and
	je	rax, r5, .LBB60_32
	jmp	.LBB60_22
.LBB60_22:                              // %strchr.exit
	jz	r4, .LBB60_27
	jmp	.LBB60_23
.LBB60_23:
	mov	r1, 2
	mov	r0, r3
	call	__bit_shr
	mov	r1, 3
	mov	r2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r2, r3
	jz	rax, .LBB60_31
	jmp	.LBB60_24
.LBB60_24:                              // %.preheader1.i.preheader
	mov	r0, r3
	add	r0, 1
	mov	r2, r3
	mov	r3, r0
	jmp	.LBB60_26
.LBB60_25:                              //   in Loop: Header=BB60_26 Depth=1
	mov	r1, 2
	mov	r0, r3
	call	__bit_shr
	mov	r1, 3
	mov	r4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	add	r3, 1
	jz	rax, .LBB60_31
	jmp	.LBB60_26
.LBB60_26:                              // %.preheader1.i
                                        // =>This Inner Loop Header: Depth=1
	add	r2, 1
	mov	r1, 3
	mov	r0, r2
	call	__bit_and
	jnz	rax, .LBB60_25
	jmp	.LBB60_27
.LBB60_27:                              // %.loopexit.i.preheader
	mov	r4, r3
	add	r4, -1
	mov	r5, -2139062144
.LBB60_28:                              // %.loopexit.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, [r3]
	mov	r0, 16843008
	sub	r0, r1
	mov	r2, r4
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	add	r3, 4
	add	r4, 4
	je	rax, r5, .LBB60_28
	jmp	.LBB60_29
.LBB60_29:                              // %.preheader.i1.preheader
	mov	r5, -4
.LBB60_30:                              // %.preheader.i1
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r3
	add	r0, r5
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	r4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	add	r2, 1
	add	r5, 1
	jnz	rax, .LBB60_30
	jmp	.LBB60_31
.LBB60_31:                              // %strlen.exit
.LBB60_32:                              // %strchr.exit.thread
	mov	rax, r2
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
	jz	rax, .LBB61_2
	jmp	.LBB61_1
.LBB61_1:
	mov	r1, 2
	mov	r0, r3
	call	__bit_shr
	mov	r1, 3
	mov	r4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r4, rax
	jmp	.LBB61_7
.LBB61_2:
	mov	r4, [r3]
	mov	r0, [r2]
	jne	r4, r0, .LBB61_7
	jmp	.LBB61_3
.LBB61_3:                               // %.preheader5.preheader
	mov	r6, -2139062144
	mov	r5, 0
.LBB61_4:                               // %.preheader5
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, 16843008
	sub	r0, r4
	mov	r1, r4
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, r6, .LBB61_13
	jmp	.LBB61_5
.LBB61_5:                               //   in Loop: Header=BB61_4 Depth=1
	add	r3, 4
	add	r2, 4
	mov	r4, [r3]
	mov	r0, [r2]
	je	r4, r0, .LBB61_4
	jmp	.LBB61_6
.LBB61_6:
.LBB61_7:
	mov	r1, 255
	mov	r0, r4
	call	__bit_and
	mov	r5, 0
	jz	rax, .LBB61_12
	jmp	.LBB61_8
.LBB61_8:                               // %.preheader.preheader
	add	r3, 1
.LBB61_9:                               // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r5, rax
	mov	r0, r4
	call	__bit_and
	jne	rax, r5, .LBB61_11
	jmp	.LBB61_10
.LBB61_10:                              //   in Loop: Header=BB61_9 Depth=1
	mov	r1, 2
	add	r2, 1
	mov	r0, r3
	call	__bit_shr
	mov	r1, 3
	mov	r4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r4, rax
	add	r3, 1
	mov	r0, 0
	jnz	r4, .LBB61_9
	jmp	.LBB61_11
.LBB61_11:
	call	__bit_and
	mov	r5, rax
.LBB61_12:
	mov	r1, 2
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	r3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	sub	r5, rax
.LBB61_13:                              // %.loopexit
	mov	rax, r5
	ret
// -- End function
// -- Begin function strcpy
strcpy:                                 // @strcpy
// %bb.0:
	mov	r4, r1
	mov	r2, r0
	mov	r0, r4
	mov	r1, r2
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	mov	r3, r2
	jnz	rax, .LBB62_4
	jmp	.LBB62_1
.LBB62_1:
	mov	r5, [r4]
	mov	r0, 16843008
	sub	r0, r5
	mov	r1, r5
	call	__bit_or
	mov	r1, -2139062144
	mov	r6, -2139062144
	mov	r0, rax
	call	__bit_and
	mov	r3, r2
	jne	rax, r6, .LBB62_4
	jmp	.LBB62_2
.LBB62_2:                               // %.preheader.preheader
	mov	r3, r2
.LBB62_3:                               // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	add	r4, 4
	mov	[r3], r5
	mov	r5, [r4]
	mov	r0, 16843008
	sub	r0, r5
	add	r3, 4
	mov	r1, r5
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	je	rax, r6, .LBB62_3
	jmp	.LBB62_4
.LBB62_4:                               // %.loopexit.preheader
	mov	r7, r4
	mov	t1, r3
.LBB62_5:                               // %.loopexit
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	add	r7, 1
	mov	r0, r4
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r5, rax
	mov	r1, 3
	add	t1, 1
	mov	r0, r3
	call	__bit_and
	mov	r1, -4
	mov	r4, rax
	call	__bit_and
	mov	r3, rax
	mov	r6, [r3]
	mov	r1, 3
	mov	r0, r4
	call	__bit_shl
	mov	r0, 255
	mov	r4, rax
	mov	r1, r4
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	r6, rax
	mov	r0, r5
	call	__bit_and
	mov	r0, rax
	mov	r1, r4
	call	__bit_shl
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	mov	r3, t1
	mov	r4, r7
	jnz	r5, .LBB62_5
	jmp	.LBB62_6
.LBB62_6:
	mov	rax, r2
	ret
// -- End function
// -- Begin function strcspn
strcspn:                                // @strcspn
// %bb.0:
	mov	r3, r1
	mov	r1, 2
	mov	r2, r0
	call	__bit_shr
	mov	r1, 3
	mov	r4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r5, rax
	mov	r4, r2
	jz	r5, .LBB63_9
	jmp	.LBB63_1
.LBB63_1:
	mov	r1, 2
	mov	r0, r3
	call	__bit_shr
	mov	r1, 3
	mov	r4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r6, rax
	jz	r6, .LBB63_3
	jmp	.LBB63_2
.LBB63_2:                               // %.preheader4.preheader
	add	r3, 1
	mov	r4, r2
	jmp	.LBB63_5
.LBB63_3:                               // %.preheader.preheader
	mov	r4, r2
.LBB63_4:                               // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	add	r4, 1
	mov	r1, 2
	mov	r0, r4
	call	__bit_shr
	mov	r1, 3
	mov	r3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB63_9
	jmp	.LBB63_4
.LBB63_5:                               // %.preheader4
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB63_7 Depth 2
	mov	r7, r3
	mov	rax, r6
	jmp	.LBB63_7
.LBB63_6:                               //   in Loop: Header=BB63_7 Depth=2
	mov	r1, 2
	mov	r0, r7
	call	__bit_shr
	mov	r1, 3
	mov	t1, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t1]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	add	r7, 1
	jz	rax, .LBB63_8
	jmp	.LBB63_7
.LBB63_7:                               //   Parent Loop BB63_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t1, rax
	mov	r0, r5
	call	__bit_and
	je	rax, t1, .LBB63_9
	jmp	.LBB63_6
.LBB63_8:                               //   in Loop: Header=BB63_5 Depth=1
	add	r4, 1
	mov	r1, 2
	mov	r0, r4
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r5, rax
	jnz	r5, .LBB63_5
	jmp	.LBB63_9
.LBB63_9:                               // %.loopexit
	sub	r4, r2
	mov	rax, r4
	ret
// -- End function
// -- Begin function strdup
strdup:                                 // @strdup
// %bb.0:
	mov	[rsp-1], x0
	mov	r1, 3
	mov	r2, r0
	call	__bit_and
	mov	r3, r2
	jz	rax, .LBB64_5
	jmp	.LBB64_1
.LBB64_1:
	mov	r1, 2
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	r3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r5, r2
	jz	rax, .LBB64_9
	jmp	.LBB64_2
.LBB64_2:                               // %.preheader1.i.preheader
	mov	r3, r2
	add	r3, 1
	mov	r5, r2
	jmp	.LBB64_4
.LBB64_3:                               //   in Loop: Header=BB64_4 Depth=1
	mov	r1, 2
	mov	r0, r3
	call	__bit_shr
	mov	r1, 3
	mov	r4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	add	r3, 1
	jz	rax, .LBB64_9
	jmp	.LBB64_4
.LBB64_4:                               // %.preheader1.i
                                        // =>This Inner Loop Header: Depth=1
	add	r5, 1
	mov	r1, 3
	mov	r0, r5
	call	__bit_and
	jnz	rax, .LBB64_3
	jmp	.LBB64_5
.LBB64_5:                               // %.loopexit.i.preheader
	mov	r4, r3
	add	r4, -1
	mov	r6, -2139062144
.LBB64_6:                               // %.loopexit.i
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
	add	r4, 4
	je	rax, r6, .LBB64_6
	jmp	.LBB64_7
.LBB64_7:                               // %.preheader.i.preheader
	mov	r6, -4
.LBB64_8:                               // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r3
	add	r0, r6
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	r4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	add	r5, 1
	add	r6, 1
	jnz	rax, .LBB64_8
	jmp	.LBB64_9
.LBB64_9:                               // %strlen.exit
	sub	r5, r2
	add	r5, 1
	mov	r0, r5
	call	malloc
	mov	r3, rax
	jz	r3, .LBB64_26
	jmp	.LBB64_10
.LBB64_10:
	mov	r1, -2147483648
	mov	r0, r5
	call	__bit_xor
	mov	r0, -2147483632
	mov	r6, r3
	jl	rax, r0, .LBB64_23
	jmp	.LBB64_11
.LBB64_11:
	mov	r1, 3
	mov	r0, r3
	call	__bit_and
	mov	r4, rax
	mov	t4, 8
	sub	t4, r4
	mov	t5, 0
	mov	r6, r2
.LBB64_12:                              // =>This Inner Loop Header: Depth=1
	mov	r7, r3
	mov	r0, r2
	add	r0, t5
	mov	r1, 2
	add	r7, t5
	call	__bit_shr
	mov	r1, 3
	mov	t1, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t1]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	t1, rax
	mov	r0, r7
	call	__bit_and
	mov	r1, -4
	mov	t2, rax
	call	__bit_and
	mov	r7, rax
	mov	t3, [r7]
	mov	r1, 3
	mov	r0, t2
	call	__bit_shl
	mov	r0, 255
	mov	t2, rax
	mov	r1, t2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t3
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t3, rax
	mov	r0, t1
	call	__bit_and
	mov	r0, rax
	mov	r1, t2
	call	__bit_shl
	mov	r0, t3
	mov	r1, rax
	call	__bit_or
	mov	[r7], rax
	add	t5, 1
	add	r6, 1
	jne	t4, t5, .LBB64_12
	jmp	.LBB64_13
.LBB64_13:
	mov	r1, -8
	mov	r0, r4
	call	__bit_or
	mov	r4, rax
	mov	r7, r2
	add	r7, t5
	mov	r1, 3
	add	r4, r5
	mov	r0, r7
	call	__bit_and
	mov	r0, rax
	jnz	r0, .LBB64_20
	jmp	.LBB64_14
.LBB64_14:
	mov	r6, r3
	mov	r1, -2147483648
	add	r6, t5
	mov	r0, r4
	call	__bit_xor
	mov	r0, -2147483632
	jl	rax, r0, .LBB64_16
	jmp	.LBB64_15
.LBB64_15:                              // %.preheader.i2.preheader
	mov	r6, r3
	add	r6, t5
	add	r2, t5
	mov	r5, 0
	mov	r7, -2147483633
	jmp	.LBB64_18
.LBB64_16:                              // %.preheader77
	mov	t1, -2147483645
	mov	r5, r4
	mov	r2, r7
	jmp	.LBB64_19
.LBB64_17:
	add	r2, r5
	mov	r0, 3
	add	r6, r5
	mov	r7, r2
	mov	r5, r4
	jg	r4, r0, .LBB64_16
	jmp	.LBB64_23
.LBB64_18:                              // %.preheader.i2
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r2
	add	r0, r5
	mov	r1, [r0]
	mov	t0, r6
	add	t0, r5
	mov	[t0], r1
	mov	r1, r0
	add	r1, 4
	mov	r1, [r1]
	mov	t1, t0
	add	t1, 4
	mov	[t1], r1
	mov	r1, r0
	add	r1, 8
	mov	r1, [r1]
	mov	t1, t0
	add	t1, 8
	mov	[t1], r1
	add	r0, 12
	mov	r0, [r0]
	add	t0, 12
	mov	[t0], r0
	add	r4, -16
	mov	r1, -2147483648
	add	r5, 16
	mov	r0, r4
	call	__bit_xor
	jg	rax, r7, .LBB64_18
	jmp	.LBB64_17
.LBB64_19:                              // =>This Inner Loop Header: Depth=1
	mov	r0, [r2]
	add	r2, 4
	mov	[r6], r0
	add	r5, -4
	add	r6, 4
	mov	r0, r5
	call	__bit_xor
	jg	rax, t1, .LBB64_19
	jmp	.LBB64_23
.LBB64_20:
	call	__bit_shl
	mov	r5, rax
	mov	t1, 8
	sub	t1, r0
	mov	r0, r6
	call	__bit_and
	mov	t7, r2
	sub	t7, rax
	mov	r0, t7
	add	r0, t5
	mov	t2, [r0]
	add	t7, 4
	mov	t6, 0
.LBB64_21:                              // =>This Inner Loop Header: Depth=1
	mov	x0, r3
	mov	r0, t5
	add	r0, t6
	add	r0, t7
	mov	t3, [r0]
	add	x0, t6
	mov	r1, 31
	add	x0, t5
	mov	r0, r5
	call	__bit_and
	mov	r0, t2
	mov	r1, rax
	call	__bit_shl
	mov	t2, rax
	mov	r0, r5
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
	add	r4, -4
	mov	r1, -2147483648
	add	t6, 4
	mov	r0, t1
	call	__bit_xor
	mov	t4, rax
	mov	r0, r4
	call	__bit_xor
	mov	t2, t3
	jge	rax, t4, .LBB64_21
	jmp	.LBB64_22
.LBB64_22:
	mov	r1, -4
	mov	r0, r7
	call	__bit_or
	mov	r5, rax
	mov	r1, 3
	add	r5, t6
	mov	r0, r6
	call	__bit_and
	sub	r2, rax
	add	r2, r5
	add	r2, t5
	add	r2, 4
	mov	r6, r3
	add	r6, t5
	add	r6, t6
	jmp	.LBB64_24
.LBB64_23:                              // %.loopexit8.i
	mov	r4, r5
	jz	r5, .LBB64_26
	jmp	.LBB64_24
.LBB64_24:                              // %.preheader
	mov	t1, r2
	mov	t2, r6
.LBB64_25:                              // =>This Inner Loop Header: Depth=1
	add	r4, -1
	mov	r1, 2
	add	t1, 1
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r2, rax
	mov	r1, 3
	add	t2, 1
	mov	r0, r6
	call	__bit_and
	mov	r1, -4
	mov	r5, rax
	call	__bit_and
	mov	r6, rax
	mov	r7, [r6]
	mov	r1, 3
	mov	r0, r5
	call	__bit_shl
	mov	r0, 255
	mov	r5, rax
	mov	r1, r5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	r7, rax
	mov	r0, r2
	call	__bit_and
	mov	r0, rax
	mov	r1, r5
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	[r6], rax
	mov	r6, t2
	mov	r2, t1
	jnz	r4, .LBB64_25
	jmp	.LBB64_26
.LBB64_26:                              // %memcpy.exit
	mov	rax, r3
	mov	x0, [rsp-1]
	ret
// -- End function
// -- Begin function strlen
strlen:                                 // @strlen
// %bb.0:
	mov	r1, 3
	mov	r2, r0
	call	__bit_and
	mov	r3, r2
	jz	rax, .LBB65_5
	jmp	.LBB65_1
.LBB65_1:
	mov	r1, 2
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	r3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r4, r2
	jz	rax, .LBB65_9
	jmp	.LBB65_2
.LBB65_2:                               // %.preheader1.preheader
	mov	r3, r2
	add	r3, 1
	mov	r4, r2
	jmp	.LBB65_4
.LBB65_3:                               //   in Loop: Header=BB65_4 Depth=1
	mov	r1, 2
	mov	r0, r3
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	add	r3, 1
	jz	rax, .LBB65_9
	jmp	.LBB65_4
.LBB65_4:                               // %.preheader1
                                        // =>This Inner Loop Header: Depth=1
	add	r4, 1
	mov	r1, 3
	mov	r0, r4
	call	__bit_and
	jnz	rax, .LBB65_3
	jmp	.LBB65_5
.LBB65_5:                               // %.loopexit.preheader
	mov	r5, r3
	add	r5, -1
	mov	r6, -2139062144
.LBB65_6:                               // %.loopexit
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, [r3]
	mov	r0, 16843008
	sub	r0, r1
	mov	r4, r5
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	add	r3, 4
	add	r5, 4
	je	rax, r6, .LBB65_6
	jmp	.LBB65_7
.LBB65_7:                               // %.preheader.preheader
	mov	r6, -4
.LBB65_8:                               // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r3
	add	r0, r6
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	add	r4, 1
	add	r6, 1
	jnz	rax, .LBB65_8
	jmp	.LBB65_9
.LBB65_9:                               // %.loopexit2
	sub	r4, r2
	mov	rax, r4
	ret
// -- End function
// -- Begin function strncat
strncat:                                // @strncat
// %bb.0:
	mov	r3, r1
	mov	r1, 3
	mov	r4, r0
	call	__bit_and
	mov	r5, r4
	jz	rax, .LBB66_4
	jmp	.LBB66_1
.LBB66_1:                               // %.preheader5.preheader
	mov	r6, r4
	add	r6, 1
	mov	r5, r4
.LBB66_2:                               // %.preheader5
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	mov	r0, r5
	call	__bit_shr
	mov	r1, 3
	mov	r7, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r7]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB66_9
	jmp	.LBB66_3
.LBB66_3:                               //   in Loop: Header=BB66_2 Depth=1
	mov	r1, 3
	add	r5, 1
	mov	r0, r6
	call	__bit_and
	add	r6, 1
	jnz	rax, .LBB66_2
	jmp	.LBB66_4
.LBB66_4:                               // %.loopexit7
	mov	r1, 2
	mov	r0, r5
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB66_9
	jmp	.LBB66_5
.LBB66_5:                               // %.preheader4.preheader
	add	r5, -5
	mov	r6, -2139062144
.LBB66_6:                               // %.preheader4
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r5
	add	r0, 5
	mov	r1, [r0]
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	add	r5, 4
	je	rax, r6, .LBB66_6
	jmp	.LBB66_7
.LBB66_7:                               // %.preheader2.preheader
.LBB66_8:                               // %.preheader2
                                        // =>This Inner Loop Header: Depth=1
	add	r5, 1
	mov	r1, 2
	mov	r0, r5
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB66_8
	jmp	.LBB66_9
.LBB66_9:                               // %.loopexit3
	jz	r2, .LBB66_14
	jmp	.LBB66_10
.LBB66_10:                              // %.preheader.preheader
.LBB66_11:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	mov	r0, r3
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	r6, rax
	mov	r0, r5
	call	__bit_and
	mov	r1, -4
	mov	r7, rax
	call	__bit_and
	mov	t1, rax
	mov	t2, [t1]
	mov	r1, 3
	mov	r0, r7
	call	__bit_shl
	mov	r0, 255
	mov	r7, rax
	mov	r1, r7
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t2
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t2, rax
	mov	r0, r6
	call	__bit_and
	mov	r0, rax
	mov	r1, r7
	call	__bit_shl
	mov	r0, t2
	mov	r1, rax
	call	__bit_or
	mov	[t1], rax
	jz	r6, .LBB66_14
	jmp	.LBB66_12
.LBB66_12:                              //   in Loop: Header=BB66_11 Depth=1
	add	r5, 1
	add	r2, -1
	add	r3, 1
	jnz	r2, .LBB66_11
	jmp	.LBB66_13
.LBB66_13:
	mov	r1, 3
	mov	r0, r5
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r3, rax
	mov	r5, [r3]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r0, 0
	mov	r5, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
.LBB66_14:                              // %.loopexit
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
	jz	r3, .LBB67_14
	jmp	.LBB67_1
.LBB67_1:
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
	jl	rax, r0, .LBB67_8
	jmp	.LBB67_2
.LBB67_2:
	jnz	r6, .LBB67_8
	jmp	.LBB67_3
.LBB67_3:                               // %.preheader10.preheader
	mov	r6, 4
	mov	r7, -2139062144
	mov	t1, -2147483645
.LBB67_4:                               // %.preheader10
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, [r5]
	mov	r0, [r4]
	jne	r1, r0, .LBB67_8
	jmp	.LBB67_5
.LBB67_5:                               //   in Loop: Header=BB67_4 Depth=1
	je	r3, r6, .LBB67_14
	jmp	.LBB67_6
.LBB67_6:                               //   in Loop: Header=BB67_4 Depth=1
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, r7, .LBB67_14
	jmp	.LBB67_7
.LBB67_7:                               //   in Loop: Header=BB67_4 Depth=1
	add	r3, -4
	add	r5, 4
	mov	r1, -2147483648
	add	r4, 4
	mov	r0, r3
	call	__bit_xor
	jg	rax, t1, .LBB67_4
	jmp	.LBB67_8
.LBB67_8:                               // %.loopexit11
	mov	r1, 2
	mov	r0, r5
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 2
	mov	r6, rax
	mov	r0, r4
	call	__bit_shr
	mov	r1, 3
	mov	r7, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r7]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jne	r6, rax, .LBB67_13
	jmp	.LBB67_9
.LBB67_9:                               // %.preheader.preheader
	add	r3, -1
	add	r4, 1
	add	r5, 1
.LBB67_10:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 255
	mov	r0, r6
	call	__bit_and
	jz	rax, .LBB67_14
	jmp	.LBB67_11
.LBB67_11:                              // %.preheader
                                        //   in Loop: Header=BB67_10 Depth=1
	jz	r3, .LBB67_14
	jmp	.LBB67_12
.LBB67_12:                              //   in Loop: Header=BB67_10 Depth=1
	mov	r1, 2
	mov	r0, r5
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 2
	mov	r6, rax
	mov	r0, r4
	call	__bit_shr
	mov	r1, 3
	mov	r7, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r7]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	add	r3, -1
	add	r4, 1
	add	r5, 1
	je	r6, rax, .LBB67_10
	jmp	.LBB67_13
.LBB67_13:                              // %.loopexit9
	mov	r0, r6
	mov	r3, rax
	call	__bit_and
	mov	r2, rax
	mov	r0, r3
	call	__bit_and
	sub	r2, rax
.LBB67_14:                              // %.loopexit
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
	mov	t2, r3
	jl	rax, r0, .LBB68_5
	jmp	.LBB68_1
.LBB68_1:
	mov	t2, r3
	jnz	r5, .LBB68_5
	jmp	.LBB68_2
.LBB68_2:                               // %.preheader4.preheader
	mov	r6, -2139062144
	mov	r7, -2147483645
	mov	t2, r3
.LBB68_3:                               // %.preheader4
                                        // =>This Inner Loop Header: Depth=1
	mov	r5, [r4]
	mov	r0, 16843008
	sub	r0, r5
	mov	r1, r5
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, r6, .LBB68_6
	jmp	.LBB68_4
.LBB68_4:                               //   in Loop: Header=BB68_3 Depth=1
	add	r2, -4
	add	r4, 4
	mov	[t2], r5
	mov	r1, -2147483648
	add	t2, 4
	mov	r0, r2
	call	__bit_xor
	jg	rax, r7, .LBB68_3
	jmp	.LBB68_5
.LBB68_5:                               // %.loopexit6
	jz	r2, .LBB68_12
	jmp	.LBB68_6
.LBB68_6:                               // %.loopexit5.preheader
	mov	t3, 1
.LBB68_7:                               // %.loopexit5
                                        // =>This Inner Loop Header: Depth=1
	mov	r5, t2
	mov	t4, r2
	mov	r1, 2
	add	r2, -1
	mov	r0, r4
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r6, rax
	mov	r1, 3
	add	t2, 1
	mov	r0, r5
	call	__bit_and
	mov	r1, -4
	mov	r7, rax
	call	__bit_and
	mov	r5, rax
	mov	t1, [r5]
	mov	r1, 3
	mov	r0, r7
	call	__bit_shl
	mov	r0, 255
	mov	r7, rax
	mov	r1, r7
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t1, rax
	mov	r0, r6
	call	__bit_and
	mov	r0, rax
	mov	r1, r7
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	[r5], rax
	jz	r6, .LBB68_9
	jmp	.LBB68_8
.LBB68_8:                               // %.loopexit5
                                        //   in Loop: Header=BB68_7 Depth=1
	add	r4, 1
	jne	t4, t3, .LBB68_7
	jmp	.LBB68_9
.LBB68_9:
	jz	r2, .LBB68_12
	jmp	.LBB68_10
.LBB68_10:                              // %.preheader.preheader
	mov	r7, 0
.LBB68_11:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, t2
	add	r0, r7
	mov	r1, 3
	call	__bit_and
	mov	r1, -4
	mov	r4, rax
	call	__bit_and
	mov	r5, rax
	mov	r6, [r5]
	mov	r1, 3
	mov	r0, r4
	call	__bit_shl
	mov	r0, 255
	mov	r4, rax
	mov	r1, r4
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	r0, 0
	mov	r6, rax
	mov	r1, r4
	call	__bit_shl
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	add	r7, 1
	mov	[r5], rax
	jne	r2, r7, .LBB68_11
	jmp	.LBB68_12
.LBB68_12:                              // %.loopexit
	mov	rax, r3
	ret
// -- End function
// -- Begin function strndup
strndup:                                // @strndup
// %bb.0:
	mov	[rsp-1], x0
	mov	[rsp-2], x1
	mov	r2, r1
	mov	r4, r0
	mov	r3, r4
	jz	r2, .LBB69_4
	jmp	.LBB69_1
.LBB69_1:
	mov	r6, r4
	add	r6, r2
	mov	r5, r4
.LBB69_2:                               // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	mov	r0, r5
	call	__bit_shr
	mov	r1, 3
	mov	r3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r3, r5
	jz	rax, .LBB69_4
	jmp	.LBB69_3
.LBB69_3:                               //   in Loop: Header=BB69_2 Depth=1
	add	r2, -1
	add	r5, 1
	mov	r3, r6
	jnz	r2, .LBB69_2
	jmp	.LBB69_4
.LBB69_4:                               // %.loopexit
	sub	r3, r4
	mov	r0, r3
	add	r0, 1
	call	malloc
	mov	r2, rax
	jz	r2, .LBB69_22
	jmp	.LBB69_5
.LBB69_5:
	mov	r1, -2147483648
	mov	r0, r3
	call	__bit_xor
	mov	r0, -2147483632
	mov	r6, r2
	mov	r5, r3
	jl	rax, r0, .LBB69_18
	jmp	.LBB69_6
.LBB69_6:
	mov	r1, 3
	mov	r0, r2
	call	__bit_and
	mov	r5, rax
	mov	t4, 8
	sub	t4, r5
	mov	t6, 0
	mov	r6, r4
.LBB69_7:                               // =>This Inner Loop Header: Depth=1
	mov	r7, r2
	mov	r0, r4
	add	r0, t6
	mov	r1, 2
	add	r7, t6
	call	__bit_shr
	mov	r1, 3
	mov	t1, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t1]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 3
	mov	t1, rax
	mov	r0, r7
	call	__bit_and
	mov	r1, -4
	mov	t2, rax
	call	__bit_and
	mov	r7, rax
	mov	t3, [r7]
	mov	r1, 3
	mov	r0, t2
	call	__bit_shl
	mov	r0, 255
	mov	t2, rax
	mov	r1, t2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t3
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t3, rax
	mov	r0, t1
	call	__bit_and
	mov	r0, rax
	mov	r1, t2
	call	__bit_shl
	mov	r0, t3
	mov	r1, rax
	call	__bit_or
	mov	[r7], rax
	add	t6, 1
	add	r6, 1
	jne	t4, t6, .LBB69_7
	jmp	.LBB69_8
.LBB69_8:
	mov	r1, -8
	mov	r0, r5
	call	__bit_or
	mov	r5, rax
	mov	r7, r4
	add	r7, t6
	mov	r1, 3
	add	r5, r3
	mov	r0, r7
	call	__bit_and
	mov	r0, rax
	jnz	r0, .LBB69_15
	jmp	.LBB69_9
.LBB69_9:
	mov	r6, r2
	mov	r1, -2147483648
	add	r6, t6
	mov	r0, r5
	call	__bit_xor
	mov	r0, -2147483632
	jl	rax, r0, .LBB69_11
	jmp	.LBB69_10
.LBB69_10:                              // %.preheader.i.preheader
	mov	r6, r2
	add	r6, t6
	add	r4, t6
	mov	r7, 0
	mov	t1, -2147483633
	jmp	.LBB69_13
.LBB69_11:                              // %.preheader55
	mov	t1, -2147483645
	mov	r4, r7
	jmp	.LBB69_14
.LBB69_12:
	add	r4, r7
	mov	r0, 3
	add	r6, r7
	mov	r7, r4
	jg	r5, r0, .LBB69_11
	jmp	.LBB69_18
.LBB69_13:                              // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r4
	add	r0, r7
	mov	r1, [r0]
	mov	t0, r6
	add	t0, r7
	mov	[t0], r1
	mov	r1, r0
	add	r1, 4
	mov	r1, [r1]
	mov	t2, t0
	add	t2, 4
	mov	[t2], r1
	mov	r1, r0
	add	r1, 8
	mov	r1, [r1]
	mov	t2, t0
	add	t2, 8
	mov	[t2], r1
	add	r0, 12
	mov	r0, [r0]
	add	t0, 12
	mov	[t0], r0
	add	r5, -16
	mov	r1, -2147483648
	add	r7, 16
	mov	r0, r5
	call	__bit_xor
	jg	rax, t1, .LBB69_13
	jmp	.LBB69_12
.LBB69_14:                              // =>This Inner Loop Header: Depth=1
	mov	r0, [r4]
	add	r4, 4
	mov	[r6], r0
	add	r5, -4
	add	r6, 4
	mov	r0, r5
	call	__bit_xor
	jg	rax, t1, .LBB69_14
	jmp	.LBB69_18
.LBB69_15:
	call	__bit_shl
	mov	t1, rax
	mov	t2, 8
	sub	t2, r0
	mov	r0, r6
	call	__bit_and
	mov	x0, r4
	sub	x0, rax
	mov	r0, x0
	add	r0, t6
	mov	t3, [r0]
	add	x0, 4
	mov	t7, 0
.LBB69_16:                              // =>This Inner Loop Header: Depth=1
	mov	x1, r2
	mov	r0, t6
	add	r0, t7
	add	r0, x0
	mov	t4, [r0]
	add	x1, t7
	mov	r1, 31
	add	x1, t6
	mov	r0, t1
	call	__bit_and
	mov	r0, t3
	mov	r1, rax
	call	__bit_shl
	mov	t3, rax
	mov	r0, t1
	call	__bit_not
	mov	r1, 31
	mov	r0, rax
	call	__bit_and
	mov	r1, 1
	mov	t5, rax
	mov	r0, t4
	call	__bit_shr
	mov	r0, rax
	mov	r1, t5
	call	__bit_shr
	mov	r0, t3
	mov	r1, rax
	call	__bit_or
	mov	[x1], rax
	add	r5, -4
	mov	r1, -2147483648
	add	t7, 4
	mov	r0, t2
	call	__bit_xor
	mov	t5, rax
	mov	r0, r5
	call	__bit_xor
	mov	t3, t4
	jge	rax, t5, .LBB69_16
	jmp	.LBB69_17
.LBB69_17:
	mov	r1, -4
	mov	r0, r7
	call	__bit_or
	mov	r7, rax
	mov	r1, 3
	add	r7, t7
	mov	r0, r6
	call	__bit_and
	sub	r4, rax
	add	r4, r7
	add	r4, t6
	add	t6, r2
	add	t6, t7
	add	r4, 4
	mov	r6, t6
	jmp	.LBB69_19
.LBB69_18:                              // %.loopexit8.i
	jz	r5, .LBB69_21
	jmp	.LBB69_19
.LBB69_19:                              // %.preheader
	mov	t2, r4
	mov	t3, r6
.LBB69_20:                              // =>This Inner Loop Header: Depth=1
	add	r5, -1
	mov	r1, 2
	add	t2, 1
	mov	r0, r4
	call	__bit_shr
	mov	r1, 3
	mov	r7, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r7]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r4, rax
	mov	r1, 3
	add	t3, 1
	mov	r0, r6
	call	__bit_and
	mov	r1, -4
	mov	r7, rax
	call	__bit_and
	mov	r6, rax
	mov	t1, [r6]
	mov	r1, 3
	mov	r0, r7
	call	__bit_shl
	mov	r0, 255
	mov	r7, rax
	mov	r1, r7
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t1, rax
	mov	r0, r4
	call	__bit_and
	mov	r0, rax
	mov	r1, r7
	call	__bit_shl
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	[r6], rax
	mov	r6, t3
	mov	r4, t2
	jnz	r5, .LBB69_20
	jmp	.LBB69_21
.LBB69_21:                              // %memcpy.exit
	mov	r0, r2
	add	r0, r3
	mov	r1, 3
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	r4, rax
	mov	r5, [r4]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r0, 255
	mov	r3, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r0, 0
	mov	r5, rax
	mov	r1, r3
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	[r4], rax
.LBB69_22:
	mov	rax, r2
	mov	x1, [rsp-2]
	mov	x0, [rsp-1]
	ret
// -- End function
// -- Begin function strnlen
strnlen:                                // @strnlen
// %bb.0:
	mov	r3, r1
	mov	r2, r0
	mov	rax, r2
	jz	r3, .LBB70_4
	jmp	.LBB70_1
.LBB70_1:
	mov	r6, r2
	add	r6, r3
	mov	r4, r2
.LBB70_2:                               // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	mov	r0, r4
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	mov	rax, r4
	jz	r0, .LBB70_4
	jmp	.LBB70_3
.LBB70_3:                               //   in Loop: Header=BB70_2 Depth=1
	add	r3, -1
	add	r4, 1
	mov	rax, r6
	jnz	r3, .LBB70_2
	jmp	.LBB70_4
.LBB70_4:                               // %.loopexit
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
	jz	r3, .LBB71_4
	jmp	.LBB71_1
.LBB71_1:
	mov	r7, r2
	add	r7, r3
	mov	t1, r3
	mov	r6, r2
.LBB71_2:                               // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	mov	r0, r6
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r5, r6
	jz	rax, .LBB71_4
	jmp	.LBB71_3
.LBB71_3:                               //   in Loop: Header=BB71_2 Depth=1
	add	t1, -1
	add	r6, 1
	mov	r5, r7
	jnz	t1, .LBB71_2
	jmp	.LBB71_4
.LBB71_4:                               // %strnlen.exit
	mov	r1, -2147483648
	sub	r5, r2
	mov	r0, r3
	call	__bit_xor
	mov	r6, rax
	mov	r0, r5
	call	__bit_xor
	jl	rax, r6, .LBB71_6
	jmp	.LBB71_5
.LBB71_5:
	mov	r0, r2
	add	r0, r5
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	mov	rax, 0
	jnz	r0, .LBB71_21
	jmp	.LBB71_6
.LBB71_6:
	mov	r0, r4
	mov	r1, r3
	mov	r3, r5
	call	memmem
	mov	r2, rax
	mov	rax, 0
	jz	r2, .LBB71_21
	jmp	.LBB71_7
.LBB71_7:
	mov	r3, r2
	mov	r1, 3
	sub	r3, r4
	mov	r0, r4
	call	__bit_and
	jz	rax, .LBB71_13
	jmp	.LBB71_8
.LBB71_8:                               // %.preheader2.preheader
	mov	r5, r4
.LBB71_9:                               // %.preheader2
                                        // =>This Inner Loop Header: Depth=1
	mov	rax, r2
	je	r2, r5, .LBB71_21
	jmp	.LBB71_10
.LBB71_10:                              //   in Loop: Header=BB71_9 Depth=1
	mov	r1, 2
	mov	r0, r4
	call	__bit_shr
	mov	r1, 3
	mov	r3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	mov	rax, 0
	jz	r0, .LBB71_21
	jmp	.LBB71_11
.LBB71_11:                              //   in Loop: Header=BB71_9 Depth=1
	add	r5, 1
	mov	r1, 3
	add	r4, 1
	mov	r0, r5
	call	__bit_and
	jnz	rax, .LBB71_9
	jmp	.LBB71_12
.LBB71_12:                              // %.loopexit9.i.loopexit
	mov	r3, r2
	sub	r3, r5
.LBB71_13:                              // %.loopexit9.i
	mov	r1, -2147483648
	mov	r0, r3
	call	__bit_xor
	mov	r0, -2147483644
	jl	rax, r0, .LBB71_17
	jmp	.LBB71_14
.LBB71_14:                              // %.preheader.preheader
	mov	r5, -2139062144
	mov	r6, -2147483645
.LBB71_15:                              // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, [r4]
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, r5, .LBB71_18
	jmp	.LBB71_16
.LBB71_16:                              //   in Loop: Header=BB71_15 Depth=1
	add	r3, -4
	mov	r1, -2147483648
	add	r4, 4
	mov	r0, r3
	call	__bit_xor
	jg	rax, r6, .LBB71_15
	jmp	.LBB71_17
.LBB71_17:                              // %.loopexit6.i
	mov	rax, r2
	jz	r3, .LBB71_21
	jmp	.LBB71_18
.LBB71_18:                              // %.loopexit5.i.preheader
.LBB71_19:                              // %.loopexit5.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	mov	r0, r4
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	mov	rax, 0
	jz	r0, .LBB71_21
	jmp	.LBB71_20
.LBB71_20:                              //   in Loop: Header=BB71_19 Depth=1
	add	r3, -1
	add	r4, 1
	mov	rax, r2
	jnz	r3, .LBB71_19
	jmp	.LBB71_21
.LBB71_21:                              // %memchr.exit
	ret
// -- End function
// -- Begin function strpbrk
strpbrk:                                // @strpbrk
// %bb.0:
	mov	r2, r1
	mov	r1, 2
	mov	r6, r0
	call	__bit_shr
	mov	r1, 3
	mov	r3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r4, rax
	mov	r3, 0
	jz	r4, .LBB72_7
	jmp	.LBB72_1
.LBB72_1:
	mov	r1, 2
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r5, rax
	jz	r5, .LBB72_7
	jmp	.LBB72_2
.LBB72_2:                               // %.preheader.preheader
	add	r2, 1
.LBB72_3:                               // %.preheader
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB72_5 Depth 2
	mov	r3, r6
	mov	r6, r2
	mov	rax, r5
	jmp	.LBB72_5
.LBB72_4:                               //   in Loop: Header=BB72_5 Depth=2
	mov	r1, 2
	mov	r0, r6
	call	__bit_shr
	mov	r1, 3
	mov	r7, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r7]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	add	r6, 1
	jz	rax, .LBB72_6
	jmp	.LBB72_5
.LBB72_5:                               //   Parent Loop BB72_3 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r7, rax
	mov	r0, r4
	call	__bit_and
	je	rax, r7, .LBB72_7
	jmp	.LBB72_4
.LBB72_6:                               //   in Loop: Header=BB72_3 Depth=1
	add	r3, 1
	mov	r1, 2
	mov	r0, r3
	call	__bit_shr
	mov	r1, 3
	mov	r4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r4, rax
	mov	r6, r3
	mov	r3, 0
	jnz	r4, .LBB72_3
	jmp	.LBB72_7
.LBB72_7:                               // %.loopexit
	mov	rax, r3
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
	jz	r5, .LBB73_16
	jmp	.LBB73_1
.LBB73_1:                               // %.preheader.split.preheader
	mul	r5, 16843009
	mov	r2, 0
	mov	t2, -2139062144
.LBB73_2:                               // %.preheader.split
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB73_6 Depth 2
                                        //     Child Loop BB73_9 Depth 2
                                        //     Child Loop BB73_12 Depth 2
	mov	r1, 3
	mov	r0, r3
	call	__bit_and
	jz	rax, .LBB73_4
	jmp	.LBB73_3
.LBB73_3:                               // %.preheader29.preheader
                                        //   in Loop: Header=BB73_2 Depth=1
	mov	r6, r3
	add	r6, 1
	jmp	.LBB73_6
.LBB73_4:                               // %.loopexit9.i
                                        //   in Loop: Header=BB73_2 Depth=1
	mov	r6, [r3]
	mov	r0, 16843008
	sub	r0, r6
	mov	r1, r6
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, t2, .LBB73_11
	jmp	.LBB73_5
.LBB73_5:                               // %.preheader5.i.preheader
                                        //   in Loop: Header=BB73_2 Depth=1
	jmp	.LBB73_9
.LBB73_6:                               // %.preheader29
                                        //   Parent Loop BB73_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 2
	mov	r0, r3
	call	__bit_shr
	mov	r1, 3
	mov	r7, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r7]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r7, rax
	jz	r7, .LBB73_24
	jmp	.LBB73_7
.LBB73_7:                               //   in Loop: Header=BB73_6 Depth=2
	mov	r0, r4
	call	__bit_and
	mov	t1, rax
	mov	r0, r7
	call	__bit_and
	je	rax, t1, .LBB73_15
	jmp	.LBB73_8
.LBB73_8:                               //   in Loop: Header=BB73_6 Depth=2
	mov	r1, 3
	add	r3, 1
	mov	r0, r6
	call	__bit_and
	add	r6, 1
	jz	rax, .LBB73_4
	jmp	.LBB73_6
.LBB73_9:                               // %.preheader5.i
                                        //   Parent Loop BB73_2 Depth=1
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
	jne	rax, t2, .LBB73_11
	jmp	.LBB73_10
.LBB73_10:                              //   in Loop: Header=BB73_9 Depth=2
	add	r3, 4
	mov	r6, [r3]
	mov	r0, 16843008
	sub	r0, r6
	mov	r1, r6
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	je	rax, t2, .LBB73_9
	jmp	.LBB73_11
.LBB73_11:                              // %.loopexit6.i.preheader
                                        //   in Loop: Header=BB73_2 Depth=1
	add	r3, -1
.LBB73_12:                              // %.loopexit6.i
                                        //   Parent Loop BB73_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	r3, 1
	mov	r1, 2
	mov	r0, r3
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r6, rax
	jz	r6, .LBB73_14
	jmp	.LBB73_13
.LBB73_13:                              // %.loopexit6.i
                                        //   in Loop: Header=BB73_12 Depth=2
	mov	r0, r4
	call	__bit_and
	mov	r7, rax
	mov	r0, r6
	call	__bit_and
	jne	rax, r7, .LBB73_12
	jmp	.LBB73_14
.LBB73_14:                              //   in Loop: Header=BB73_2 Depth=1
	mov	r0, r4
	call	__bit_and
	mov	r7, rax
	mov	r0, r6
	call	__bit_and
	jne	rax, r7, .LBB73_24
	jmp	.LBB73_15
.LBB73_15:                              // %strchr.exit
                                        //   in Loop: Header=BB73_2 Depth=1
	mov	r0, r3
	add	r0, 1
	mov	r2, r3
	mov	r3, r0
	jmp	.LBB73_2
.LBB73_16:
	mov	r1, 3
	mov	r0, r3
	call	__bit_and
	mov	r2, r3
	jz	rax, .LBB73_20
	jmp	.LBB73_17
.LBB73_17:                              // %.preheader2.i1.preheader
	mov	r4, r3
	add	r4, 1
	mov	r2, r3
.LBB73_18:                              // %.preheader2.i1
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	r3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB73_24
	jmp	.LBB73_19
.LBB73_19:                              //   in Loop: Header=BB73_18 Depth=1
	mov	r1, 3
	add	r2, 1
	mov	r0, r4
	call	__bit_and
	add	r4, 1
	jnz	rax, .LBB73_18
	jmp	.LBB73_20
.LBB73_20:                              // %.loopexit4.i2.preheader
	add	r2, -5
	mov	r3, -2139062144
.LBB73_21:                              // %.loopexit4.i2
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r2
	add	r0, 5
	mov	r1, [r0]
	mov	r0, 16843008
	sub	r0, r1
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	add	r2, 4
	je	rax, r3, .LBB73_21
	jmp	.LBB73_22
.LBB73_22:                              // %.preheader.i3.preheader
.LBB73_23:                              // %.preheader.i3
                                        // =>This Inner Loop Header: Depth=1
	add	r2, 1
	mov	r1, 2
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	r3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB73_23
	jmp	.LBB73_24
.LBB73_24:                              // %strchr.exit4
	mov	rax, r2
	ret
// -- End function
// -- Begin function strsep
strsep:                                 // @strsep
// %bb.0:
	mov	r3, r0
	mov	r2, [r3]
	mov	r4, r1
	mov	rax, 0
	jz	r2, .LBB74_14
	jmp	.LBB74_1
.LBB74_1:
	mov	t2, r2
	mov	r1, 2
	add	t2, 1
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r5, rax
	mov	r6, r4
.LBB74_2:                               // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	mov	r0, r6
	call	__bit_shr
	mov	r1, 3
	mov	r7, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r7]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB74_5
	jmp	.LBB74_3
.LBB74_3:                               //   in Loop: Header=BB74_2 Depth=1
	add	r6, 1
	mov	r0, rax
	call	__bit_and
	mov	r7, rax
	mov	r0, r5
	call	__bit_and
	jne	rax, r7, .LBB74_2
	jmp	.LBB74_4
.LBB74_4:
	mov	r1, 3
	mov	[r3], t2
	mov	r0, r2
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	r4, rax
	mov	r5, [r4]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r0, 255
	mov	r3, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r0, 0
	mov	r5, rax
	mov	r1, r3
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	[r4], rax
	mov	rax, r2
	jmp	.LBB74_14
.LBB74_5:                               // %.loopexit.i
	mov	r0, r5
	call	__bit_and
	jz	rax, .LBB74_7
	jmp	.LBB74_6
.LBB74_6:                               // %.preheader.i.preheader
	jmp	.LBB74_8
.LBB74_7:
	mov	[r3], 0
	mov	rax, 0
	jmp	.LBB74_14
.LBB74_8:                               // %.preheader.i
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB74_9 Depth 2
	mov	r5, t2
	mov	r1, 2
	add	t2, 1
	mov	r0, r5
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r6, rax
	mov	r7, r4
.LBB74_9:                               //   Parent Loop BB74_8 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 2
	mov	r0, r7
	call	__bit_shr
	mov	r1, 3
	mov	t1, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t1]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t1, rax
	mov	r0, r6
	call	__bit_and
	jne	t1, rax, .LBB74_13
	jmp	.LBB74_10
.LBB74_10:
	mov	r0, r6
	call	__bit_and
	mov	r0, 0
	jz	rax, .LBB74_12
	jmp	.LBB74_11
.LBB74_11:
	mov	r1, 3
	mov	r0, r5
	call	__bit_and
	mov	r1, -4
	mov	r4, rax
	call	__bit_and
	mov	r5, rax
	mov	r6, [r5]
	mov	r1, 3
	mov	r0, r4
	call	__bit_shl
	mov	r0, 255
	mov	r4, rax
	mov	r1, r4
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	r0, 0
	mov	r6, rax
	mov	r1, r4
	call	__bit_shl
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	[r5], rax
	mov	r0, t2
.LBB74_12:
	mov	[r3], r0
	mov	rax, r2
	jmp	.LBB74_14
.LBB74_13:                              //   in Loop: Header=BB74_9 Depth=2
	add	r7, 1
	mov	r0, t1
	call	__bit_and
	jz	rax, .LBB74_8
	jmp	.LBB74_9
.LBB74_14:                              // %__strtok_r.exit
	ret
// -- End function
// -- Begin function strspn
strspn:                                 // @strspn
// %bb.0:
	mov	r2, r1
	mov	r1, 2
	mov	r3, r0
	call	__bit_shr
	mov	r1, 3
	mov	r4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r4, rax
	mov	r6, r3
	jz	r4, .LBB75_7
	jmp	.LBB75_1
.LBB75_1:
	mov	r1, 2
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r5, rax
	mov	r6, r3
	jz	r5, .LBB75_7
	jmp	.LBB75_2
.LBB75_2:                               // %.preheader.preheader
	add	r2, 1
	mov	r6, r3
.LBB75_3:                               // %.preheader
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB75_5 Depth 2
	mov	r7, r2
	mov	rax, r5
	jmp	.LBB75_5
.LBB75_4:                               //   in Loop: Header=BB75_5 Depth=2
	mov	r1, 2
	mov	r0, r7
	call	__bit_shr
	mov	r1, 3
	mov	t1, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t1]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	add	r7, 1
	jz	rax, .LBB75_7
	jmp	.LBB75_5
.LBB75_5:                               //   Parent Loop BB75_3 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t1, rax
	mov	r0, r4
	call	__bit_and
	jne	rax, t1, .LBB75_4
	jmp	.LBB75_6
.LBB75_6:                               //   in Loop: Header=BB75_3 Depth=1
	add	r6, 1
	mov	r1, 2
	mov	r0, r6
	call	__bit_shr
	mov	r1, 3
	mov	r4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r4, rax
	jnz	r4, .LBB75_3
	jmp	.LBB75_7
.LBB75_7:                               // %.loopexit
	sub	r6, r3
	mov	rax, r6
	ret
// -- End function
// -- Begin function two_way_long_needle.49
two_way_long_needle.49:                 // @two_way_long_needle.49
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
	mov	r4, r1
	mov	r5, r0
	mov	t6, 0
	mov	r1, -2147483648
	mov	r7, 1
	mov	r0, r3
	call	__bit_xor
	mov	r0, -2147483646
	mov	r6, 0
	jl	rax, r0, .LBB76_22
	jmp	.LBB76_1
.LBB76_1:                               // %.preheader31.preheader
	mov	t1, -1
	mov	t7, 0
	mov	r6, 1
	mov	t5, 1
.LBB76_2:                               // %.preheader31
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r2
	add	r0, r6
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	t2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r0, r2
	add	r0, t1
	add	r0, t5
	mov	r1, 2
	mov	t2, rax
	call	__bit_shr
	mov	r1, 3
	mov	t3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, -2147483648
	mov	t3, rax
	mov	r0, t3
	call	__bit_xor
	mov	t4, rax
	mov	r0, t2
	call	__bit_xor
	jge	rax, t4, .LBB76_4
	jmp	.LBB76_3
.LBB76_3:                               //   in Loop: Header=BB76_2 Depth=1
	mov	r7, r6
	sub	r7, t1
	mov	t5, 1
	jmp	.LBB76_9
.LBB76_4:                               //   in Loop: Header=BB76_2 Depth=1
	mov	r1, 255
	mov	r0, t3
	call	__bit_and
	mov	r6, rax
	mov	r0, t2
	call	__bit_and
	jne	rax, r6, .LBB76_8
	jmp	.LBB76_5
.LBB76_5:                               //   in Loop: Header=BB76_2 Depth=1
	je	t5, r7, .LBB76_7
	jmp	.LBB76_6
.LBB76_6:                               //   in Loop: Header=BB76_2 Depth=1
	add	t5, 1
	mov	r6, t7
	jmp	.LBB76_9
.LBB76_7:                               //   in Loop: Header=BB76_2 Depth=1
	add	t7, r7
	mov	t5, 1
	mov	r6, t7
	jmp	.LBB76_9
.LBB76_8:                               //   in Loop: Header=BB76_2 Depth=1
	mov	r6, t7
	add	r6, 1
	mov	t5, 1
	mov	t1, t7
	mov	r7, 1
.LBB76_9:                               //   in Loop: Header=BB76_2 Depth=1
	mov	t7, r6
	mov	r6, t5
	mov	r1, -2147483648
	add	r6, t7
	mov	r0, r3
	call	__bit_xor
	mov	t2, rax
	mov	r0, r6
	call	__bit_xor
	jl	rax, t2, .LBB76_2
	jmp	.LBB76_10
.LBB76_10:                              // %.preheader30.preheader
	mov	r6, -1
	mov	x1, 0
	mov	t2, 1
	mov	t7, 1
	mov	x0, 1
.LBB76_11:                              // %.preheader30
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r2
	add	r0, t2
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	t3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r0, r2
	add	r0, r6
	add	r0, x0
	mov	r1, 2
	mov	t3, rax
	call	__bit_shr
	mov	r1, 3
	mov	t4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, -2147483648
	mov	t4, rax
	mov	r0, t3
	call	__bit_xor
	mov	t5, rax
	mov	r0, t4
	call	__bit_xor
	jge	rax, t5, .LBB76_13
	jmp	.LBB76_12
.LBB76_12:                              //   in Loop: Header=BB76_11 Depth=1
	mov	t7, t2
	sub	t7, r6
	mov	x0, 1
	jmp	.LBB76_18
.LBB76_13:                              //   in Loop: Header=BB76_11 Depth=1
	mov	r1, 255
	mov	r0, t4
	call	__bit_and
	mov	t2, rax
	mov	r0, t3
	call	__bit_and
	jne	rax, t2, .LBB76_17
	jmp	.LBB76_14
.LBB76_14:                              //   in Loop: Header=BB76_11 Depth=1
	je	x0, t7, .LBB76_16
	jmp	.LBB76_15
.LBB76_15:                              //   in Loop: Header=BB76_11 Depth=1
	add	x0, 1
	mov	t2, x1
	jmp	.LBB76_18
.LBB76_16:                              //   in Loop: Header=BB76_11 Depth=1
	add	x1, t7
	mov	x0, 1
	mov	t2, x1
	jmp	.LBB76_18
.LBB76_17:                              //   in Loop: Header=BB76_11 Depth=1
	mov	t2, x1
	add	t2, 1
	mov	x0, 1
	mov	r6, x1
	mov	t7, 1
.LBB76_18:                              //   in Loop: Header=BB76_11 Depth=1
	mov	x1, t2
	mov	t2, x0
	mov	r1, -2147483648
	add	t2, x1
	mov	r0, r3
	call	__bit_xor
	mov	t3, rax
	mov	r0, t2
	call	__bit_xor
	jl	rax, t3, .LBB76_11
	jmp	.LBB76_19
.LBB76_19:
	add	t1, 1
	add	r6, 1
	mov	r0, t1
	call	__bit_xor
	mov	t2, rax
	mov	r0, r6
	call	__bit_xor
	jl	rax, t2, .LBB76_21
	jmp	.LBB76_20
.LBB76_20:
	mov	r7, t7
.LBB76_21:
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
.LBB76_22:
	mov	r0, 1024
	jmp	.LBB76_25
.LBB76_23:
	jz	r3, .LBB76_27
	jmp	.LBB76_24
.LBB76_24:                              // %.preheader28.preheader
	mov	t3, r3
	add	t3, -1
	mov	t4, -1
	mov	t1, r2
	jmp	.LBB76_26
.LBB76_25:                              // =>This Inner Loop Header: Depth=1
	mov	r1, rsp
	add	r1, t6
	add	t6, 4
	mov	[r1], r3
	je	t6, r0, .LBB76_23
	jmp	.LBB76_25
.LBB76_26:                              // %.preheader28
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	mov	r0, t1
	call	__bit_shr
	mov	r1, 3
	mov	t2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 2
	mov	r0, rax
	call	__bit_shl
	add	rax, rsp
	mov	[rax], t3
	add	t3, -1
	add	t1, 1
	jne	t3, t4, .LBB76_26
	jmp	.LBB76_27
.LBB76_27:                              // %.loopexit29
	mov	t1, r2
	mov	r1, -2147483648
	add	t1, r7
	mov	r0, r6
	call	__bit_xor
	mov	r0, -2147483644
	mov	t2, r6
	mov	t3, r2
	jl	rax, r0, .LBB76_33
	jmp	.LBB76_28
.LBB76_28:
	mov	r0, t1
	mov	r1, r2
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	mov	t2, r6
	mov	t3, r2
	jnz	rax, .LBB76_35
	jmp	.LBB76_29
.LBB76_29:                              // %.preheader.i.preheader
	mov	t4, -2147483645
	mov	t3, r2
	mov	t2, r6
.LBB76_30:                              // %.preheader.i
                                        // =>This Inner Loop Header: Depth=1
	mov	t1, t3
	add	t1, r7
	mov	r0, [t3]
	mov	r1, [t1]
	jne	r0, r1, .LBB76_34
	jmp	.LBB76_31
.LBB76_31:                              //   in Loop: Header=BB76_30 Depth=1
	add	t2, -4
	mov	r1, -2147483648
	add	t3, 4
	mov	r0, t2
	call	__bit_xor
	jg	rax, t4, .LBB76_30
	jmp	.LBB76_32
.LBB76_32:                              // %.loopexit8.i.loopexit
	mov	t1, t3
	add	t1, r7
.LBB76_33:                              // %.loopexit8.i
	jz	t2, .LBB76_38
	jmp	.LBB76_35
.LBB76_34:                              // %.loopexit7.i.preheader.loopexit
.LBB76_35:                              // %.loopexit7.i.preheader
.LBB76_36:                              // %.loopexit7.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	mov	r0, t3
	call	__bit_shr
	mov	r1, 3
	mov	t4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 2
	mov	t4, rax
	mov	r0, t1
	call	__bit_shr
	mov	r1, 3
	mov	t5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jne	t4, rax, .LBB76_58
	jmp	.LBB76_37
.LBB76_37:                              //   in Loop: Header=BB76_36 Depth=1
	add	t2, -1
	add	t3, 1
	add	t1, 1
	jnz	t2, .LBB76_36
	jmp	.LBB76_38
.LBB76_38:                              // %memcmp.exit.thread
	mov	r1, 2048
	mov	r0, r3
	call	__bit_or
	mov	t2, rax
	mov	x4, r3
	sub	x4, r7
	mov	t3, r3
	add	t3, -1
	mov	x5, 1
	sub	x5, r6
	mov	x6, r5
	add	x6, -1
	mov	x7, r2
	add	x7, -1
	mov	t4, 0
	mov	t5, 0
.LBB76_39:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB76_41 Depth 2
                                        //     Child Loop BB76_52 Depth 2
                                        //     Child Loop BB76_54 Depth 2
	mov	r0, r4
	sub	r0, r3
	mov	r1, -2147483648
	call	__bit_xor
	mov	t1, rax
	mov	r0, t4
	call	__bit_xor
	jle	rax, t1, .LBB76_44
	jmp	.LBB76_40
.LBB76_40:                              //   in Loop: Header=BB76_39 Depth=1
	mov	t7, r5
	add	t7, r4
	mov	x0, t7
	add	x0, t2
	mov	x1, t2
	mov	t1, t7
.LBB76_41:                              //   Parent Loop BB76_39 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 2
	mov	r0, t1
	call	__bit_shr
	mov	r1, 3
	mov	t6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r0, t1
	jz	rax, .LBB76_43
	jmp	.LBB76_42
.LBB76_42:                              //   in Loop: Header=BB76_41 Depth=2
	add	x1, -1
	add	t1, 1
	mov	r0, x0
	jnz	x1, .LBB76_41
	jmp	.LBB76_43
.LBB76_43:                              // %strnlen.exit
                                        //   in Loop: Header=BB76_39 Depth=1
	sub	r0, t7
	add	r4, r0
	mov	r0, r4
	sub	r0, r3
	mov	r1, -2147483648
	mov	t1, 0
	call	__bit_xor
	mov	t6, rax
	mov	r0, t4
	call	__bit_xor
	jg	rax, t6, .LBB76_74
	jmp	.LBB76_44
.LBB76_44:                              //   in Loop: Header=BB76_39 Depth=1
	mov	t1, r5
	add	t1, t4
	mov	r0, t1
	add	r0, r3
	add	r0, -1
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	t6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 2
	mov	r0, rax
	call	__bit_shl
	add	rax, rsp
	mov	t7, [rax]
	jz	t7, .LBB76_49
	jmp	.LBB76_45
.LBB76_45:                              //   in Loop: Header=BB76_39 Depth=1
	mov	x3, 0
	jz	t5, .LBB76_48
	jmp	.LBB76_46
.LBB76_46:                              //   in Loop: Header=BB76_39 Depth=1
	mov	r1, -2147483648
	mov	r0, r7
	call	__bit_xor
	mov	t1, rax
	mov	r0, t7
	call	__bit_xor
	jge	rax, t1, .LBB76_48
	jmp	.LBB76_47
.LBB76_47:                              //   in Loop: Header=BB76_39 Depth=1
	mov	t7, x4
.LBB76_48:                              //   in Loop: Header=BB76_39 Depth=1
	add	t4, t7
	mov	t5, x3
	jmp	.LBB76_39
.LBB76_49:                              //   in Loop: Header=BB76_39 Depth=1
	mov	t6, t5
	sub	t6, r6
	mov	r1, 31
	mov	r0, t6
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_not
	mov	r1, r6
	sub	r1, t5
	add	rax, 1
	mov	r0, rax
	call	__bit_and
	mov	x0, rax
	add	x0, t5
	mov	r1, -2147483648
	mov	r0, x0
	call	__bit_xor
	mov	t7, rax
	mov	r0, t3
	call	__bit_xor
	jge	t7, rax, .LBB76_51
	jmp	.LBB76_50
.LBB76_50:                              // %.preheader.preheader
                                        //   in Loop: Header=BB76_39 Depth=1
	mov	t7, x5
	add	t7, x0
	mov	x8, t3
	sub	x8, x0
	mov	x1, t4
	add	x1, x0
	add	x1, r5
	add	x0, r2
	jmp	.LBB76_52
.LBB76_51:                              // %.loopexit
                                        //   in Loop: Header=BB76_39 Depth=1
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
	add	t6, r6
	mov	x2, x6
	add	x2, t4
	mov	t7, r6
	jmp	.LBB76_54
.LBB76_52:                              // %.preheader
                                        //   Parent Loop BB76_39 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 2
	mov	r0, x0
	call	__bit_shr
	mov	r1, 3
	mov	x2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 2
	mov	x2, rax
	mov	r0, x1
	call	__bit_shr
	mov	r1, 3
	mov	x3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	x3, 0
	jne	x2, rax, .LBB76_48
	jmp	.LBB76_53
.LBB76_53:                              //   in Loop: Header=BB76_52 Depth=2
	add	t7, 1
	add	x8, -1
	add	x1, 1
	add	x0, 1
	jz	x8, .LBB76_51
	jmp	.LBB76_52
.LBB76_54:                              //   Parent Loop BB76_39 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, -2147483648
	mov	r0, t7
	call	__bit_xor
	mov	x0, rax
	mov	r0, t5
	call	__bit_xor
	jge	rax, x0, .LBB76_57
	jmp	.LBB76_55
.LBB76_55:                              //   in Loop: Header=BB76_54 Depth=2
	mov	x3, t7
	mov	r0, x7
	add	r0, t7
	mov	r1, 2
	add	x3, -1
	call	__bit_shr
	mov	r1, 3
	mov	x0, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x0]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	add	t7, x2
	mov	r1, 2
	mov	x0, rax
	mov	r0, t7
	call	__bit_shr
	mov	r1, 3
	mov	x1, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [x1]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t7, x3
	je	x0, rax, .LBB76_54
	jmp	.LBB76_56
.LBB76_56:                              // %._crit_edge
                                        //   in Loop: Header=BB76_39 Depth=1
	add	x3, 1
	mov	t6, x3
.LBB76_57:                              //   in Loop: Header=BB76_39 Depth=1
	add	t5, 1
	mov	r1, -2147483648
	mov	r0, t5
	call	__bit_xor
	mov	t5, rax
	mov	r0, t6
	call	__bit_xor
	mov	t7, r7
	mov	x3, x4
	jl	rax, t5, .LBB76_74
	jmp	.LBB76_48
.LBB76_58:                              // %memcmp.exit
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
	mov	t2, r3
	add	t2, -1
	mov	t3, rax
	mov	x0, t2
	sub	x0, r6
	mov	x1, r5
	add	x1, r6
	mov	x2, r2
	add	x2, r6
	mov	x3, r5
	add	x3, -1
	add	r2, -1
	mov	t4, 0
.LBB76_59:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB76_61 Depth 2
                                        //     Child Loop BB76_68 Depth 2
                                        //     Child Loop BB76_71 Depth 2
	mov	r0, r4
	sub	r0, r3
	mov	r1, -2147483648
	call	__bit_xor
	mov	t1, rax
	mov	r0, t4
	call	__bit_xor
	jle	rax, t1, .LBB76_64
	jmp	.LBB76_60
.LBB76_60:                              //   in Loop: Header=BB76_59 Depth=1
	mov	t6, r5
	add	t6, r4
	mov	t7, t6
	add	t7, t3
	mov	x4, t3
	mov	t1, t6
.LBB76_61:                              //   Parent Loop BB76_59 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 2
	mov	r0, t1
	call	__bit_shr
	mov	r1, 3
	mov	t5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r0, t1
	jz	rax, .LBB76_63
	jmp	.LBB76_62
.LBB76_62:                              //   in Loop: Header=BB76_61 Depth=2
	add	x4, -1
	add	t1, 1
	mov	r0, t7
	jnz	x4, .LBB76_61
	jmp	.LBB76_63
.LBB76_63:                              // %strnlen.exit21
                                        //   in Loop: Header=BB76_59 Depth=1
	sub	r0, t6
	add	r4, r0
	mov	r0, r4
	sub	r0, r3
	mov	r1, -2147483648
	mov	t1, 0
	call	__bit_xor
	mov	t5, rax
	mov	r0, t4
	call	__bit_xor
	jg	rax, t5, .LBB76_74
	jmp	.LBB76_64
.LBB76_64:                              //   in Loop: Header=BB76_59 Depth=1
	mov	t1, r5
	add	t1, t4
	mov	r0, t1
	add	r0, r3
	add	r0, -1
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	t5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 2
	mov	r0, rax
	call	__bit_shl
	add	rax, rsp
	mov	r0, [rax]
	jnz	r0, .LBB76_67
	jmp	.LBB76_65
.LBB76_65:                              //   in Loop: Header=BB76_59 Depth=1
	mov	r1, -2147483648
	mov	r0, r6
	call	__bit_xor
	mov	t5, rax
	mov	r0, t2
	call	__bit_xor
	jle	rax, t5, .LBB76_70
	jmp	.LBB76_66
.LBB76_66:                              // %.preheader25.preheader
                                        //   in Loop: Header=BB76_59 Depth=1
	mov	x4, x1
	add	x4, t4
	mov	t7, 0
	jmp	.LBB76_68
.LBB76_67:                              //   in Loop: Header=BB76_59 Depth=1
	add	t4, r0
	jmp	.LBB76_59
.LBB76_68:                              // %.preheader25
                                        //   Parent Loop BB76_59 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r0, x2
	add	r0, t7
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	t5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r0, x4
	add	r0, t7
	mov	r1, 2
	mov	t5, rax
	call	__bit_shr
	mov	r1, 3
	mov	t6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jne	t5, rax, .LBB76_73
	jmp	.LBB76_69
.LBB76_69:                              //   in Loop: Header=BB76_68 Depth=2
	add	t7, 1
	jne	x0, t7, .LBB76_68
	jmp	.LBB76_70
.LBB76_70:                              // %.loopexit26.preheader
                                        //   in Loop: Header=BB76_59 Depth=1
	mov	x4, x3
	add	x4, t4
	mov	t5, r6
.LBB76_71:                              // %.loopexit26
                                        //   Parent Loop BB76_59 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	jz	t5, .LBB76_74
	jmp	.LBB76_72
.LBB76_72:                              //   in Loop: Header=BB76_71 Depth=2
	mov	x5, t5
	mov	r0, r2
	add	r0, t5
	mov	r1, 2
	add	x5, -1
	call	__bit_shr
	mov	r1, 3
	mov	t6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	add	t5, x4
	mov	r1, 2
	mov	t6, rax
	mov	r0, t5
	call	__bit_shr
	mov	r1, 3
	mov	t7, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t7]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t5, x5
	mov	t7, r7
	je	t6, rax, .LBB76_71
	jmp	.LBB76_73
.LBB76_73:                              // %.loopexit24
                                        //   in Loop: Header=BB76_59 Depth=1
	add	t4, t7
	add	t4, 1
	jmp	.LBB76_59
.LBB76_74:                              // %.loopexit22
	mov	rax, t1
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
	mov	r3, r1
	mov	r1, 2
	mov	r2, r0
	mov	r0, r3
	call	__bit_shr
	mov	r1, 3
	mov	r4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r4, rax
	mov	r6, r2
	jz	r4, .LBB77_91
	jmp	.LBB77_1
.LBB77_1:
	mov	r6, r3
	add	r6, 1
	mov	r1, 2
	mov	r0, r6
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r5, rax
	jnz	r5, .LBB77_15
	jmp	.LBB77_2
.LBB77_2:
	mov	r0, r4
	call	__bit_and
	mov	r1, 3
	mov	r3, rax
	mov	r0, r2
	call	__bit_and
	jz	rax, .LBB77_4
	jmp	.LBB77_3
.LBB77_3:                               // %.preheader.preheader
	mov	r5, r2
	add	r5, 1
	jmp	.LBB77_6
.LBB77_4:                               // %.loopexit9.i
	mov	r5, [r2]
	mov	r0, 16843008
	sub	r0, r5
	mov	r1, r5
	call	__bit_or
	mov	r1, -2139062144
	mov	r6, -2139062144
	mov	r0, rax
	call	__bit_and
	jne	rax, r6, .LBB77_11
	jmp	.LBB77_5
.LBB77_5:                               // %.preheader5.i.preheader
	mul	r3, 16843009
	jmp	.LBB77_9
.LBB77_6:                               // %.preheader
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r7, rax
	mov	r6, 0
	jz	r7, .LBB77_91
	jmp	.LBB77_7
.LBB77_7:                               //   in Loop: Header=BB77_6 Depth=1
	mov	r0, r4
	call	__bit_and
	mov	t1, rax
	mov	r0, r7
	call	__bit_and
	mov	r6, r2
	je	rax, t1, .LBB77_91
	jmp	.LBB77_8
.LBB77_8:                               //   in Loop: Header=BB77_6 Depth=1
	mov	r1, 3
	add	r2, 1
	mov	r0, r5
	call	__bit_and
	add	r5, 1
	jz	rax, .LBB77_4
	jmp	.LBB77_6
.LBB77_9:                               // %.preheader5.i
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
	jne	rax, r6, .LBB77_11
	jmp	.LBB77_10
.LBB77_10:                              //   in Loop: Header=BB77_9 Depth=1
	add	r2, 4
	mov	r5, [r2]
	mov	r0, 16843008
	sub	r0, r5
	mov	r1, r5
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	je	rax, r6, .LBB77_9
	jmp	.LBB77_11
.LBB77_11:                              // %.loopexit6.i.preheader
	add	r2, -1
.LBB77_12:                              // %.loopexit6.i
                                        // =>This Inner Loop Header: Depth=1
	add	r2, 1
	mov	r1, 2
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	r3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r3, rax
	jz	r3, .LBB77_14
	jmp	.LBB77_13
.LBB77_13:                              // %.loopexit6.i
                                        //   in Loop: Header=BB77_12 Depth=1
	mov	r0, r4
	call	__bit_and
	mov	r5, rax
	mov	r0, r3
	call	__bit_and
	jne	rax, r5, .LBB77_12
	jmp	.LBB77_14
.LBB77_14:
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
	jmp	.LBB77_91
.LBB77_15:
	mov	r0, r3
	add	r0, 2
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	r7, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r7]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r7, rax
	jnz	r7, .LBB77_21
	jmp	.LBB77_16
.LBB77_16:
	mov	r0, r4
	call	__bit_and
	mov	r1, 16
	mov	r0, rax
	call	__bit_shl
	mov	r1, 255
	mov	r3, rax
	mov	r0, r5
	call	__bit_and
	mov	r0, r3
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	r3, rax
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	r4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	mov	r6, 0
	jz	r0, .LBB77_91
	jmp	.LBB77_17
.LBB77_17:                              // %.preheader24.preheader
	add	r2, -2
	mov	r4, 0
.LBB77_18:                              // %.preheader24
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 255
	call	__bit_and
	mov	r1, 16
	mov	r5, rax
	mov	r0, r4
	call	__bit_shl
	mov	r0, rax
	mov	r1, r5
	call	__bit_or
	mov	r0, r2
	add	r0, 3
	mov	r1, 2
	mov	r4, rax
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	add	r2, 1
	je	r3, r4, .LBB77_20
	jmp	.LBB77_19
.LBB77_19:                              // %.preheader24
                                        //   in Loop: Header=BB77_18 Depth=1
	call	__bit_and
	jnz	rax, .LBB77_18
	jmp	.LBB77_20
.LBB77_20:
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
	jmp	.LBB77_91
.LBB77_21:
	mov	r0, r3
	add	r0, 3
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	t1, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t1]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t1, rax
	jnz	t1, .LBB77_27
	jmp	.LBB77_22
.LBB77_22:
	mov	r0, r4
	call	__bit_and
	mov	r1, 24
	mov	r0, rax
	call	__bit_shl
	mov	r1, 255
	mov	r3, rax
	mov	r0, r5
	call	__bit_and
	mov	r1, 16
	mov	r0, rax
	call	__bit_shl
	mov	r0, rax
	mov	r1, r3
	call	__bit_or
	mov	r1, 255
	mov	r3, rax
	mov	r0, r7
	call	__bit_and
	mov	r1, 8
	mov	r0, rax
	call	__bit_shl
	mov	r0, r3
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	r3, rax
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	r4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	mov	r6, 0
	jz	r0, .LBB77_91
	jmp	.LBB77_23
.LBB77_23:                              // %.preheader25.preheader
	add	r2, -3
	mov	r4, 0
.LBB77_24:                              // %.preheader25
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 255
	call	__bit_and
	mov	r0, r4
	mov	r1, rax
	call	__bit_or
	mov	r1, 8
	mov	r0, rax
	call	__bit_shl
	mov	r0, r2
	add	r0, 4
	mov	r1, 2
	mov	r4, rax
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	add	r2, 1
	je	r3, r4, .LBB77_26
	jmp	.LBB77_25
.LBB77_25:                              // %.preheader25
                                        //   in Loop: Header=BB77_24 Depth=1
	call	__bit_and
	jnz	rax, .LBB77_24
	jmp	.LBB77_26
.LBB77_26:
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
	jmp	.LBB77_91
.LBB77_27:
	mov	r0, r3
	add	r0, 4
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	t2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jnz	rax, .LBB77_33
	jmp	.LBB77_28
.LBB77_28:
	mov	r0, r4
	call	__bit_and
	mov	r1, 24
	mov	r0, rax
	call	__bit_shl
	mov	r1, 255
	mov	r3, rax
	mov	r0, r5
	call	__bit_and
	mov	r1, 16
	mov	r0, rax
	call	__bit_shl
	mov	r0, rax
	mov	r1, r3
	call	__bit_or
	mov	r1, 255
	mov	r3, rax
	mov	r0, r7
	call	__bit_and
	mov	r1, 8
	mov	r0, rax
	call	__bit_shl
	mov	r0, r3
	mov	r1, rax
	call	__bit_or
	mov	r1, 255
	mov	r3, rax
	mov	r0, t1
	call	__bit_and
	mov	r0, r3
	mov	r1, rax
	call	__bit_or
	mov	r1, 2
	mov	r3, rax
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	r4, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r4]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r6, 0
	jz	rax, .LBB77_91
	jmp	.LBB77_29
.LBB77_29:                              // %.preheader26.preheader
	add	r2, -4
	mov	r4, 0
.LBB77_30:                              // %.preheader26
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 8
	mov	r5, rax
	mov	r0, r4
	call	__bit_shl
	mov	r0, rax
	mov	r1, r5
	call	__bit_or
	mov	r0, r2
	add	r0, 5
	mov	r1, 2
	mov	r4, rax
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	add	r2, 1
	jz	rax, .LBB77_32
	jmp	.LBB77_31
.LBB77_31:                              // %.preheader26
                                        //   in Loop: Header=BB77_30 Depth=1
	jne	r3, r4, .LBB77_30
	jmp	.LBB77_32
.LBB77_32:
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
	jmp	.LBB77_91
.LBB77_33:
	mov	r1, 3
	mov	r0, r3
	call	__bit_and
	mov	r5, r3
	jz	rax, .LBB77_37
	jmp	.LBB77_34
.LBB77_34:                              // %.preheader1.i.preheader
	mov	r4, r3
	mov	r5, r6
	jmp	.LBB77_36
.LBB77_35:                              //   in Loop: Header=BB77_36 Depth=1
	mov	r1, 2
	mov	r0, r5
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	add	r5, 1
	jz	rax, .LBB77_41
	jmp	.LBB77_36
.LBB77_36:                              // %.preheader1.i
                                        // =>This Inner Loop Header: Depth=1
	add	r4, 1
	mov	r1, 3
	mov	r0, r4
	call	__bit_and
	jnz	rax, .LBB77_35
	jmp	.LBB77_37
.LBB77_37:                              // %.loopexit.i.preheader
	mov	r6, r5
	add	r6, -1
	mov	r7, -2139062144
.LBB77_38:                              // %.loopexit.i
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, [r5]
	mov	r0, 16843008
	sub	r0, r1
	mov	r4, r6
	call	__bit_or
	mov	r1, -2139062144
	mov	r0, rax
	call	__bit_and
	add	r5, 4
	add	r6, 4
	je	rax, r7, .LBB77_38
	jmp	.LBB77_39
.LBB77_39:                              // %.preheader.i14.preheader
	mov	r7, -4
.LBB77_40:                              // %.preheader.i14
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r5
	add	r0, r7
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	add	r4, 1
	add	r7, 1
	jnz	rax, .LBB77_40
	jmp	.LBB77_41
.LBB77_41:                              // %strlen.exit
	sub	r4, r3
	mov	r1, 512
	mov	r0, r4
	call	__bit_or
	mov	r5, rax
	mov	t1, r5
	add	r5, r2
	mov	t2, 0
.LBB77_42:                              // =>This Inner Loop Header: Depth=1
	mov	r6, r2
	add	r6, t2
	mov	r1, 2
	mov	r0, r6
	call	__bit_shr
	mov	r1, 3
	mov	r7, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r7]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB77_44
	jmp	.LBB77_43
.LBB77_43:                              //   in Loop: Header=BB77_42 Depth=1
	add	t2, 1
	je	t1, t2, .LBB77_45
	jmp	.LBB77_42
.LBB77_44:                              // %.strnlen.exit_crit_edge
	mov	r5, r6
.LBB77_45:                              // %strnlen.exit
	sub	r5, r2
	mov	r1, -2147483648
	mov	r6, 0
	mov	r0, r4
	call	__bit_xor
	mov	r7, rax
	mov	r0, r5
	call	__bit_xor
	jl	rax, r7, .LBB77_91
	jmp	.LBB77_46
.LBB77_46:
	mov	r0, r4
	call	__bit_xor
	mov	r0, -2147483394
	jg	rax, r0, .LBB77_90
	jmp	.LBB77_47
.LBB77_47:
	add	r5, r2
	mov	r6, r4
	add	r6, 1
	mov	r1, 3
	mov	t5, 3
	mov	r0, rsp
	call	__bit_and
	mov	r7, rsp
	mov	t2, 64
	jz	rax, .LBB77_52
	jmp	.LBB77_48
.LBB77_48:
	call	__bit_and
	mov	t1, rax
	add	r7, 1
	call	__bit_and
	mov	r1, -4
	mov	t2, rax
	call	__bit_and
	mov	t3, rax
	mov	t4, [t3]
	mov	r1, 3
	mov	r0, t2
	call	__bit_shl
	mov	r0, 255
	mov	t2, rax
	mov	r1, t2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t4
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t4, rax
	mov	r0, r6
	call	__bit_and
	mov	r0, rax
	mov	r1, t2
	call	__bit_shl
	mov	r0, t4
	mov	r1, rax
	call	__bit_or
	mov	[t3], rax
	mov	t2, 63
	je	t1, t5, .LBB77_52
	jmp	.LBB77_49
.LBB77_49:
	mov	t3, rsp
	mov	r1, 3
	add	t3, 2
	mov	r0, r7
	call	__bit_and
	mov	r1, -4
	mov	t2, rax
	call	__bit_and
	mov	r7, rax
	mov	t4, [r7]
	mov	r1, 3
	mov	r0, t2
	call	__bit_shl
	mov	r0, 255
	mov	t2, rax
	mov	r1, t2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t4
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t4, rax
	mov	r0, r6
	call	__bit_and
	mov	r0, rax
	mov	r1, t2
	call	__bit_shl
	mov	r0, t4
	mov	r1, rax
	call	__bit_or
	mov	[r7], rax
	mov	r0, 2
	mov	t2, 62
	mov	r7, t3
	je	t1, r0, .LBB77_52
	jmp	.LBB77_50
.LBB77_50:
	mov	r7, rsp
	mov	r1, 3
	add	r7, 3
	mov	r0, t3
	call	__bit_and
	mov	r1, -4
	mov	t2, rax
	call	__bit_and
	mov	t3, rax
	mov	t4, [t3]
	mov	r1, 3
	mov	r0, t2
	call	__bit_shl
	mov	r0, 255
	mov	t2, rax
	mov	r1, t2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t4
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t4, rax
	mov	r0, r6
	call	__bit_and
	mov	r0, rax
	mov	r1, t2
	call	__bit_shl
	mov	r0, t4
	mov	r1, rax
	call	__bit_or
	mov	[t3], rax
	mov	r0, 1
	mov	t2, 61
	je	t1, r0, .LBB77_52
	jmp	.LBB77_51
.LBB77_51:
	mov	t3, rsp
	mov	r1, 3
	add	t3, 4
	mov	r0, r7
	call	__bit_and
	mov	r1, -4
	mov	t1, rax
	call	__bit_and
	mov	r7, rax
	mov	t2, [r7]
	mov	r1, 3
	mov	r0, t1
	call	__bit_shl
	mov	r0, 255
	mov	t1, rax
	mov	r1, t1
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t2
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t2, rax
	mov	r0, r6
	call	__bit_and
	mov	r0, rax
	mov	r1, t1
	call	__bit_shl
	mov	r0, t2
	mov	r1, rax
	call	__bit_or
	mov	[r7], rax
	mov	t2, 60
	mov	r7, t3
.LBB77_52:                              // %.preheader.i17.preheader
	sub	r5, r4
	mov	t1, r6
	mul	t1, 16843009
	mov	t3, -2147483633
	jmp	.LBB77_55
.LBB77_53:
	mov	r0, t2
	add	r0, 16
	mov	r1, 20
	jl	r0, r1, .LBB77_57
	jmp	.LBB77_54
.LBB77_54:                              // %.preheader194.preheader
	mov	t3, -2147483645
	mov	r1, -2147483648
	jmp	.LBB77_56
.LBB77_55:                              // %.preheader.i17
                                        // =>This Inner Loop Header: Depth=1
	mov	r0, r7
	add	r0, 4
	mov	[r7], t1
	mov	r1, r7
	add	r1, 8
	mov	[r0], t1
	mov	r0, r7
	add	r0, 12
	mov	[r1], t1
	add	r7, 16
	add	t2, -16
	mov	r1, -2147483648
	mov	[r0], t1
	mov	r0, t2
	call	__bit_xor
	jg	rax, t3, .LBB77_55
	jmp	.LBB77_53
.LBB77_56:                              // %.preheader194
                                        // =>This Inner Loop Header: Depth=1
	mov	[r7], t1
	add	t2, -4
	add	r7, 4
	mov	r0, t2
	call	__bit_xor
	jg	rax, t3, .LBB77_56
	jmp	.LBB77_57
.LBB77_57:                              // %.loopexit5.i
	jz	t2, .LBB77_60
	jmp	.LBB77_58
.LBB77_58:
	mov	t4, r7
.LBB77_59:                              // =>This Inner Loop Header: Depth=1
	add	t2, -1
	mov	r1, 3
	add	t4, 1
	mov	r0, r7
	call	__bit_and
	mov	r1, -4
	mov	t1, rax
	call	__bit_and
	mov	r7, rax
	mov	t3, [r7]
	mov	r1, 3
	mov	r0, t1
	call	__bit_shl
	mov	r0, 255
	mov	t1, rax
	mov	r1, t1
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t3
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t3, rax
	mov	r0, r6
	call	__bit_and
	mov	r0, rax
	mov	r1, t1
	call	__bit_shl
	mov	r0, t3
	mov	r1, rax
	call	__bit_or
	mov	[r7], rax
	mov	r7, t4
	jnz	t2, .LBB77_59
	jmp	.LBB77_60
.LBB77_60:                              // %memset.exit
	jz	r4, .LBB77_63
	jmp	.LBB77_61
.LBB77_61:                              // %.preheader30.preheader
	mov	r6, r3
	mov	r7, r4
.LBB77_62:                              // %.preheader30
                                        // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	mov	r0, r6
	call	__bit_shr
	mov	r1, 3
	mov	t1, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t1]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 63
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	add	r0, rsp
	mov	r1, 3
	call	__bit_and
	mov	r1, -4
	mov	t1, rax
	call	__bit_and
	mov	t2, rax
	mov	t3, [t2]
	mov	r1, 3
	mov	r0, t1
	call	__bit_shl
	mov	r0, 255
	mov	t1, rax
	mov	r1, t1
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, t3
	mov	r1, rax
	call	__bit_and
	mov	r1, 255
	mov	t3, rax
	mov	r0, r7
	call	__bit_and
	mov	r0, rax
	mov	r1, t1
	call	__bit_shl
	mov	r0, t3
	mov	r1, rax
	call	__bit_or
	mov	[t2], rax
	add	r7, -1
	add	r6, 1
	jnz	r7, .LBB77_62
	jmp	.LBB77_63
.LBB77_63:                              // %.loopexit31
	mov	t4, 2047
	mov	t5, -2147483644
	mov	t6, -2147483645
.LBB77_64:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB77_73 Depth 2
                                        //       Child Loop BB77_75 Depth 3
                                        //       Child Loop BB77_80 Depth 3
                                        //     Child Loop BB77_69 Depth 2
                                        //       Child Loop BB77_70 Depth 3
                                        //     Child Loop BB77_86 Depth 2
	add	r2, -1
	mov	r0, r2
	add	r0, r4
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 63
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	add	r0, rsp
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r6, rax
	add	r6, r2
	mov	r1, -2147483648
	mov	r0, r6
	call	__bit_xor
	mov	r2, rax
	mov	r0, r5
	call	__bit_xor
	jg	r2, rax, .LBB77_83
	jmp	.LBB77_65
.LBB77_65:                              // %.preheader27
                                        //   in Loop: Header=BB77_64 Depth=1
	mov	r0, r4
	call	__bit_xor
	jl	rax, t5, .LBB77_67
	jmp	.LBB77_66
.LBB77_66:                              // %.preheader27.split.preheader
                                        //   in Loop: Header=BB77_64 Depth=1
	jmp	.LBB77_73
.LBB77_67:                              // %.preheader27.split.us
                                        //   in Loop: Header=BB77_64 Depth=1
	jz	r4, .LBB77_89
	jmp	.LBB77_68
.LBB77_68:                              // %.loopexit8.i.us.preheader
                                        //   in Loop: Header=BB77_64 Depth=1
.LBB77_69:                              // %.loopexit8.i.us
                                        //   Parent Loop BB77_64 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB77_70 Depth 3
	mov	t2, 0
.LBB77_70:                              //   Parent Loop BB77_64 Depth=1
                                        //     Parent Loop BB77_69 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	mov	r2, r3
	mov	r0, r6
	add	r0, t2
	mov	r1, 2
	add	r2, t2
	call	__bit_shr
	mov	r1, 3
	mov	r7, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r7]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 2
	mov	r7, rax
	mov	r0, r2
	call	__bit_shr
	mov	r1, 3
	mov	t1, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t1]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	je	r7, rax, .LBB77_72
	jmp	.LBB77_71
.LBB77_71:                              // %memcmp.exit.us
                                        //   in Loop: Header=BB77_69 Depth=2
	mov	r0, r6
	add	r0, r4
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	r2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 63
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	add	r0, rsp
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	r2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	add	r6, rax
	mov	r1, -2147483648
	mov	r0, r6
	call	__bit_xor
	mov	r2, rax
	mov	r0, r5
	call	__bit_xor
	jg	r2, rax, .LBB77_83
	jmp	.LBB77_69
.LBB77_72:                              //   in Loop: Header=BB77_70 Depth=3
	add	t2, 1
	je	r4, t2, .LBB77_89
	jmp	.LBB77_70
.LBB77_73:                              // %.preheader27.split
                                        //   Parent Loop BB77_64 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB77_75 Depth 3
                                        //       Child Loop BB77_80 Depth 3
	mov	r0, r6
	mov	r1, r3
	call	__bit_or
	mov	r1, 3
	mov	r0, rax
	call	__bit_and
	mov	r2, r4
	mov	r7, r3
	mov	t1, r6
	jnz	rax, .LBB77_79
	jmp	.LBB77_74
.LBB77_74:                              // %.preheader.i20.preheader
                                        //   in Loop: Header=BB77_73 Depth=2
	mov	t2, 0
	mov	r2, r4
.LBB77_75:                              // %.preheader.i20
                                        //   Parent Loop BB77_64 Depth=1
                                        //     Parent Loop BB77_73 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	mov	r7, r3
	add	r7, t2
	mov	t1, r6
	add	t1, t2
	mov	r0, [t1]
	mov	r1, [r7]
	jne	r0, r1, .LBB77_78
	jmp	.LBB77_76
.LBB77_76:                              //   in Loop: Header=BB77_75 Depth=3
	add	r2, -4
	mov	r1, -2147483648
	add	t2, 4
	mov	r0, r2
	call	__bit_xor
	jg	rax, t6, .LBB77_75
	jmp	.LBB77_77
.LBB77_77:                              // %.loopexit8.i.loopexit
                                        //   in Loop: Header=BB77_73 Depth=2
	mov	r7, r3
	add	r7, t2
	add	t2, r6
	mov	t1, t2
	jz	r2, .LBB77_89
	jmp	.LBB77_79
.LBB77_78:                              // %.loopexit7.i18.preheader.loopexit
                                        //   in Loop: Header=BB77_73 Depth=2
.LBB77_79:                              // %.loopexit7.i18.preheader
                                        //   in Loop: Header=BB77_73 Depth=2
.LBB77_80:                              // %.loopexit7.i18
                                        //   Parent Loop BB77_64 Depth=1
                                        //     Parent Loop BB77_73 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	mov	r1, 2
	mov	r0, t1
	call	__bit_shr
	mov	r1, 3
	mov	t2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 2
	mov	t2, rax
	mov	r0, r7
	call	__bit_shr
	mov	r1, 3
	mov	t3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jne	t2, rax, .LBB77_82
	jmp	.LBB77_81
.LBB77_81:                              //   in Loop: Header=BB77_80 Depth=3
	add	r2, -1
	add	t1, 1
	add	r7, 1
	jz	r2, .LBB77_89
	jmp	.LBB77_80
.LBB77_82:                              // %memcmp.exit
                                        //   in Loop: Header=BB77_73 Depth=2
	mov	r0, r6
	add	r0, r4
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	r2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r1, 63
	mov	r0, rax
	call	__bit_and
	mov	r0, rax
	add	r0, rsp
	mov	r1, 2
	call	__bit_shr
	mov	r1, 3
	mov	r2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	add	r6, rax
	mov	r1, -2147483648
	mov	r0, r6
	call	__bit_xor
	mov	r2, rax
	mov	r0, r5
	call	__bit_xor
	jle	r2, rax, .LBB77_73
	jmp	.LBB77_83
.LBB77_83:                              // %.loopexit
                                        //   in Loop: Header=BB77_64 Depth=1
	mov	r7, r5
	add	r7, r4
	mov	r1, 2
	mov	r2, r6
	mov	r0, r7
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r6, 0
	jz	rax, .LBB77_89
	jmp	.LBB77_84
.LBB77_84:                              //   in Loop: Header=BB77_64 Depth=1
	mov	t2, r7
	add	t2, 2048
	mov	t3, 0
	jmp	.LBB77_86
.LBB77_85:                              // %thread-pre-split
                                        //   in Loop: Header=BB77_86 Depth=2
	add	t3, 1
	mov	r6, t3
	add	r6, r7
	mov	r1, 2
	mov	r0, r6
	call	__bit_shr
	mov	r1, 3
	mov	t1, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t1]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB77_87
	jmp	.LBB77_86
.LBB77_86:                              //   Parent Loop BB77_64 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	je	t3, t4, .LBB77_88
	jmp	.LBB77_85
.LBB77_87:                              // %thread-pre-split.strnlen.exit22_crit_edge
                                        //   in Loop: Header=BB77_64 Depth=1
	mov	t2, r6
.LBB77_88:                              // %strnlen.exit22
                                        //   in Loop: Header=BB77_64 Depth=1
	sub	t2, r7
	add	r5, t2
	mov	r1, -2147483648
	mov	r6, 0
	mov	r0, r5
	call	__bit_xor
	mov	r7, rax
	mov	r0, r2
	call	__bit_xor
	jle	rax, r7, .LBB77_64
	jmp	.LBB77_89
.LBB77_89:                              // %memcmp.exit.thread
	jmp	.LBB77_91
.LBB77_90:
	mov	r0, r2
	mov	r1, r5
	mov	r2, r3
	mov	r3, r4
	call	two_way_long_needle.49
	mov	r6, rax
.LBB77_91:                              // %strchr.exit
	mov	rax, r6
	ret
// -- End function
// -- Begin function strtok
strtok:                                 // @strtok
// %bb.0:
	mov	r4, r1
	mov	r2, r0
	jnz	r2, .LBB78_2
	jmp	.LBB78_1
.LBB78_1:
	mov	r0, mcasm_static_e485a634bef569d42aea6620e428a365
	mov	r2, [r0]
	mov	rax, 0
	jz	r2, .LBB78_14
	jmp	.LBB78_2
.LBB78_2:                               // %.preheader7.i.preheader
.LBB78_3:                               // %.preheader7.i
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB78_4 Depth 2
	mov	r3, r2
	mov	r1, 2
	add	r2, 1
	mov	r0, r3
	call	__bit_shr
	mov	r1, 3
	mov	r5, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r5]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r5, rax
	mov	r6, r4
.LBB78_4:                               //   Parent Loop BB78_3 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 2
	mov	r0, r6
	call	__bit_shr
	mov	r1, 3
	mov	r7, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r7]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB78_6
	jmp	.LBB78_5
.LBB78_5:                               //   in Loop: Header=BB78_4 Depth=2
	add	r6, 1
	mov	r0, rax
	call	__bit_and
	mov	r7, rax
	mov	r0, r5
	call	__bit_and
	je	rax, r7, .LBB78_3
	jmp	.LBB78_4
.LBB78_6:                               // %.loopexit.i
	mov	r0, r5
	call	__bit_and
	mov	r0, rax
	mov	t2, 0
	mov	rax, 0
	jz	r0, .LBB78_13
	jmp	.LBB78_7
.LBB78_7:                               // %.preheader.i.preheader
.LBB78_8:                               // %.preheader.i
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB78_9 Depth 2
	mov	r5, r2
	mov	r1, 2
	add	r2, 1
	mov	r0, r5
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r6, rax
	mov	r7, r4
.LBB78_9:                               //   Parent Loop BB78_8 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 2
	mov	r0, r7
	call	__bit_shr
	mov	r1, 3
	mov	t1, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t1]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t1, rax
	mov	r0, r6
	call	__bit_and
	jne	t1, rax, .LBB78_12
	jmp	.LBB78_10
.LBB78_10:
	mov	r0, r6
	call	__bit_and
	mov	r0, rax
	mov	rax, r3
	jz	r0, .LBB78_13
	jmp	.LBB78_11
.LBB78_11:
	mov	r1, 3
	mov	r0, r5
	call	__bit_and
	mov	r1, -4
	mov	r4, rax
	call	__bit_and
	mov	r5, rax
	mov	r6, [r5]
	mov	r1, 3
	mov	r0, r4
	call	__bit_shl
	mov	r0, 255
	mov	r4, rax
	mov	r1, r4
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	mov	r0, 0
	mov	r6, rax
	mov	r1, r4
	call	__bit_shl
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	[r5], rax
	mov	t2, r2
	mov	rax, r3
	jmp	.LBB78_13
.LBB78_12:                              //   in Loop: Header=BB78_9 Depth=2
	add	r7, 1
	mov	r0, t1
	call	__bit_and
	jz	rax, .LBB78_8
	jmp	.LBB78_9
.LBB78_13:                              // %__strtok_r.exit.sink.split
	mov	r0, mcasm_static_e485a634bef569d42aea6620e428a365
	mov	[r0], t2
.LBB78_14:                              // %__strtok_r.exit
	ret
// -- End function
// -- Begin function __strtok_r
__strtok_r:                             // @__strtok_r
// %bb.0:
	mov	r4, r1
	mov	t1, r0
	jnz	t1, .LBB79_2
	jmp	.LBB79_1
.LBB79_1:
	mov	t1, [r2]
	mov	rax, 0
	jz	t1, .LBB79_20
	jmp	.LBB79_2
.LBB79_2:
	jz	r3, .LBB79_4
	jmp	.LBB79_3
.LBB79_3:                               // %.preheader7.preheader
	mov	t2, t1
	jmp	.LBB79_7
.LBB79_4:
	mov	t2, t1
	mov	r1, 2
	add	t2, 1
	mov	r0, t1
	call	__bit_shr
	mov	r1, 3
	mov	r3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r5, rax
	mov	r6, r4
.LBB79_5:                               // =>This Inner Loop Header: Depth=1
	mov	r1, 2
	mov	r0, r6
	call	__bit_shr
	mov	r1, 3
	mov	r3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB79_11
	jmp	.LBB79_6
.LBB79_6:                               //   in Loop: Header=BB79_5 Depth=1
	add	r6, 1
	mov	r0, rax
	call	__bit_and
	mov	r3, rax
	mov	r0, r5
	call	__bit_and
	je	rax, r3, .LBB79_10
	jmp	.LBB79_5
.LBB79_7:                               // %.preheader7
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB79_8 Depth 2
	mov	t1, t2
	mov	r1, 2
	add	t2, 1
	mov	r0, t1
	call	__bit_shr
	mov	r1, 3
	mov	r3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r5, rax
	mov	r6, r4
.LBB79_8:                               //   Parent Loop BB79_7 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 2
	mov	r0, r6
	call	__bit_shr
	mov	r1, 3
	mov	r3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB79_11
	jmp	.LBB79_9
.LBB79_9:                               //   in Loop: Header=BB79_8 Depth=2
	add	r6, 1
	mov	r0, rax
	call	__bit_and
	mov	r3, rax
	mov	r0, r5
	call	__bit_and
	je	rax, r3, .LBB79_7
	jmp	.LBB79_8
.LBB79_10:
	mov	r1, 3
	mov	[r2], t2
	mov	r0, t1
	call	__bit_and
	mov	r1, -4
	mov	r2, rax
	call	__bit_and
	mov	r3, rax
	mov	r4, [r3]
	mov	r1, 3
	mov	r0, r2
	call	__bit_shl
	mov	r0, 255
	mov	r2, rax
	mov	r1, r2
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r4
	mov	r1, rax
	call	__bit_and
	mov	r0, 0
	mov	r4, rax
	mov	r1, r2
	call	__bit_shl
	mov	r0, r4
	mov	r1, rax
	call	__bit_or
	mov	[r3], rax
	mov	rax, t1
	jmp	.LBB79_20
.LBB79_11:                              // %.loopexit
	mov	r0, r5
	call	__bit_and
	jz	rax, .LBB79_13
	jmp	.LBB79_12
.LBB79_12:                              // %.preheader.preheader
	jmp	.LBB79_14
.LBB79_13:
	mov	[r2], 0
	mov	rax, 0
	jmp	.LBB79_20
.LBB79_14:                              // %.preheader
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB79_15 Depth 2
	mov	r5, t2
	mov	r1, 2
	add	t2, 1
	mov	r0, r5
	call	__bit_shr
	mov	r1, 3
	mov	r3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r6, rax
	mov	r7, r4
.LBB79_15:                              //   Parent Loop BB79_14 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 2
	mov	r0, r7
	call	__bit_shr
	mov	r1, 3
	mov	r3, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r3]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r3, rax
	mov	r0, r6
	call	__bit_and
	jne	r3, rax, .LBB79_19
	jmp	.LBB79_16
.LBB79_16:
	mov	r0, r6
	call	__bit_and
	mov	r0, 0
	jz	rax, .LBB79_18
	jmp	.LBB79_17
.LBB79_17:
	mov	r1, 3
	mov	r0, r5
	call	__bit_and
	mov	r1, -4
	mov	r3, rax
	call	__bit_and
	mov	r4, rax
	mov	r5, [r4]
	mov	r1, 3
	mov	r0, r3
	call	__bit_shl
	mov	r0, 255
	mov	r3, rax
	mov	r1, r3
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r5
	mov	r1, rax
	call	__bit_and
	mov	r0, 0
	mov	r5, rax
	mov	r1, r3
	call	__bit_shl
	mov	r0, r5
	mov	r1, rax
	call	__bit_or
	mov	[r4], rax
	mov	r0, t2
.LBB79_18:
	mov	[r2], r0
	mov	rax, t1
	jmp	.LBB79_20
.LBB79_19:                              //   in Loop: Header=BB79_15 Depth=2
	add	r7, 1
	mov	r0, r3
	call	__bit_and
	jz	rax, .LBB79_14
	jmp	.LBB79_15
.LBB79_20:
	ret
// -- End function
// -- Begin function strtok_r
strtok_r:                               // @strtok_r
// %bb.0:
	mov	r5, r1
	mov	r3, r0
	jnz	r3, .LBB80_2
	jmp	.LBB80_1
.LBB80_1:
	mov	r3, [r2]
	mov	rax, 0
	jz	r3, .LBB80_14
	jmp	.LBB80_2
.LBB80_2:                               // %.preheader31
.LBB80_3:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB80_4 Depth 2
	mov	r4, r3
	mov	r1, 2
	add	r3, 1
	mov	r0, r4
	call	__bit_shr
	mov	r1, 3
	mov	r6, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r6]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r6, rax
	mov	r7, r5
.LBB80_4:                               //   Parent Loop BB80_3 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 2
	mov	r0, r7
	call	__bit_shr
	mov	r1, 3
	mov	t1, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t1]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	jz	rax, .LBB80_6
	jmp	.LBB80_5
.LBB80_5:                               //   in Loop: Header=BB80_4 Depth=2
	add	r7, 1
	mov	r0, rax
	call	__bit_and
	mov	t1, rax
	mov	r0, r6
	call	__bit_and
	je	rax, t1, .LBB80_3
	jmp	.LBB80_4
.LBB80_6:
	mov	r0, r6
	call	__bit_and
	mov	r0, rax
	mov	t3, 0
	mov	rax, 0
	jz	r0, .LBB80_13
	jmp	.LBB80_7
.LBB80_7:                               // %.preheader.preheader
.LBB80_8:                               // %.preheader
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB80_9 Depth 2
	mov	r6, r3
	mov	r1, 2
	add	r3, 1
	mov	r0, r6
	call	__bit_shr
	mov	r1, 3
	mov	r7, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [r7]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	r7, rax
	mov	t1, r5
.LBB80_9:                               //   Parent Loop BB80_8 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	r1, 2
	mov	r0, t1
	call	__bit_shr
	mov	r1, 3
	mov	t2, rax
	call	__bit_and
	mov	r0, rax
	call	__bit_shl
	mov	r0, [t2]
	mov	r1, rax
	call	__bit_shr
	mov	r1, 255
	mov	r0, rax
	call	__bit_and
	mov	t2, rax
	mov	r0, r7
	call	__bit_and
	jne	t2, rax, .LBB80_12
	jmp	.LBB80_10
.LBB80_10:
	mov	r0, r7
	call	__bit_and
	mov	r0, rax
	mov	rax, r4
	jz	r0, .LBB80_13
	jmp	.LBB80_11
.LBB80_11:
	mov	r1, 3
	mov	r0, r6
	call	__bit_and
	mov	r1, -4
	mov	r5, rax
	call	__bit_and
	mov	r6, rax
	mov	r7, [r6]
	mov	r1, 3
	mov	r0, r5
	call	__bit_shl
	mov	r0, 255
	mov	r5, rax
	mov	r1, r5
	call	__bit_shl
	mov	r1, -1
	mov	r0, rax
	call	__bit_xor
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r0, 0
	mov	r7, rax
	mov	r1, r5
	call	__bit_shl
	mov	r0, r7
	mov	r1, rax
	call	__bit_or
	mov	[r6], rax
	mov	t3, r3
	mov	rax, r4
	jmp	.LBB80_13
.LBB80_12:                              //   in Loop: Header=BB80_9 Depth=2
	add	t1, 1
	mov	r0, t2
	call	__bit_and
	jz	rax, .LBB80_8
	jmp	.LBB80_9
.LBB80_13:
	mov	[r2], t3
.LBB80_14:
	ret
// -- End function
static mcasm_static_f630eac0c7abfe5fc5d239ba48e65458 [0]
static mcasm_static_b6a660bbde72203e160a805153582f96 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
static mcasm_static_9c8edc6888262f14a502ca58f7ec2049 [1819635240, 10604]
static mcasm_static_5300d1bc602cebe9cc06f8a5dbd154ff [858927408, 926299444, 1111570744, 1178944579, 1246316615, 1313688651, 1381060687, 1448432723, 1515804759, 0]
static mcasm_static_2dcf2c52c9c4989eb1d1edcd66777ea0 [5136718]
static mcasm_static_a576e628ccce7d9f3a7a751e8482252b [7233902]
static mcasm_static_33c0bc0aebd755f222c09aab13174b8a [1768320585, 2037672302, 0]
static mcasm_static_aee5601175a1ec2ca6e3a4325b7c8241 [6712937]
static mcasm_static_acced75c0450be778b18b0328f7269aa [1718503725, 1953066601, 121]
static mcasm_static_460954a9761fde43e9b55e9d5e91598a [1718511917, 0]
static mcasm_static_b7b83498ebf29d53a2dd2a18a0a51c3a [825241648, 858796592, 892351536, 925906480, 959461424, 825307185, 858862129, 892417073, 925972017, 959526961, 825372722, 858927666, 892482610, 926037554, 959592498, 825438259, 858993203, 892548147, 926103091, 959658035, 825503796, 859058740, 892613684, 926168628, 959723572, 825569333, 859124277, 892679221, 926234165, 959789109, 825634870, 859189814, 892744758, 926299702, 959854646, 825700407, 859255351, 892810295, 926365239, 959920183, 825765944, 859320888, 892875832, 926430776, 959985720, 825831481, 859386425, 892941369, 926496313, 960051257, 0]
static mcasm_static_81a1c06102d7a90b5192a628c3bc5112 [858927408, 926299444, 1650538808, 1717920867, 1785292903, 1852664939, 1920036975, 1987409011, 2054781047, 0]
static mcasm_static_29af82f542537f86f33d7b3d416ba898 [825241648, 858796592, 892351536, 925906480, 959461424, 825307185, 858862129, 892417073, 925972017, 959526961, 825372722, 858927666, 892482610, 926037554, 959592498, 825438259, 858993203, 892548147, 926103091, 959658035, 825503796, 859058740, 892613684, 926168628, 959723572, 825569333, 859124277, 892679221, 926234165, 959789109, 825634870, 859189814, 892744758, 926299702, 959854646, 825700407, 859255351, 892810295, 926365239, 959920183, 825765944, 859320888, 892875832, 926430776, 959985720, 825831481, 859386425, 892941369, 926496313, 960051257]
static mcasm_static_719163f5f9eae4be69e01d67d1a83915 [0]
static mcasm_static_e485a634bef569d42aea6620e428a365 [0]
static mcasm_static_9566fd0a059f01f8cbd3da85eff2d1e9 [0, 0, 0, 0]

export _ll_shared:z/__ll_puts_char0_0:
    inline $data modify storage std:vm s1.str set from storage std:vm char2str_map."$(a)"
	ret

export _ll_shared:z/__ll_puts_char1_0:
    inline $data modify storage std:vm s1.next set from storage std:vm char2str_map."$(a)"
	ret

export _ll_shared:z/puts_0:
    inline $scoreboard players set r0 vm_regs $(a)
    mov r1, 2
    call __bit_shl
    inline scoreboard players operation puts_ptr vm_regs = rax vm_regs
    inline data modify storage std:vm s1 set value {str: "", next: ""}
    .Lputs_loop:
    inline scoreboard players operation r0 vm_regs = puts_ptr vm_regs
    mov r1, 2
    call __bit_shr
    inline scoreboard players operation puts_word vm_regs = rax vm_regs
    inline scoreboard players operation r0 vm_regs = puts_ptr vm_regs
    mov r1, 3
    call __bit_and
    mov r0, rax
    mov r1, 3
    call __bit_shl
    inline scoreboard players operation puts_shift vm_regs = rax vm_regs
    inline data modify storage std:vm s2 set value {result: "r0", ptr: -1}
    inline execute store result storage std:vm s2.ptr int 1 run scoreboard players get puts_word vm_regs
    inline function std:_internal/load_heap_custom with storage std:vm s2
    inline scoreboard players operation r1 vm_regs = puts_shift vm_regs
    call __bit_shr
    mov r0, rax
    mov r1, 255
    call __bit_and
    mov r0, rax
    jz r0, .Lputs_done
    inline data modify storage std:vm s0 set value {a: -1}
    inline execute store result storage std:vm s0.a int 1 run scoreboard players get r0 vm_regs
    inline function _ll_shared:z/__ll_puts_char1_0 with storage std:vm s0
    inline data modify storage std:vm s3 set value {left: "", right: ""}
    inline data modify storage std:vm s3.left set from storage std:vm s1.str
    inline data modify storage std:vm s3.right set from storage std:vm s1.next
    inline function std:_internal/merge_string2 with storage std:vm s3
    inline data modify storage std:vm s1.str set from storage std:vm s3.string
    inline scoreboard players add puts_ptr vm_regs 1
    jmp .Lputs_loop
    .Lputs_done:
    inline tellraw @a {"storage": "std:vm", "nbt": "s1.str"}
	ret
