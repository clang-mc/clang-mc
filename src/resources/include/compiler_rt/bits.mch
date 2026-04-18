#once

#include "math"



__bit_not:
	mov rax, -1
	sub rax, r0
	ret

// i32 __bit_and2_u2(i32 a, i32 b) {
//     i32 ah = a / 2;          // 0..1
//     i32 bh = b / 2;          // 0..1
//     i32 al = a - 2 * ah;     // 0..1
//     i32 bl = b - 2 * bh;     // 0..1
//     return al * bl + 2 * ah * bh;
// }
__bit_and2_u2:
	mov r5, r0
	div r5, 2
	mov r6, r1
	div r6, 2
	mov r7, r5
	mul r7, 2
	mov t0, r0
	sub t0, r7
	mov rax, r6
	mul rax, 2
	sub r1, rax
	mul t0, r1
	mul r5, r6
	mul r5, 2
	add t0, r5
	mov rax, t0
	ret


// i32 __bit_and4_u4(i32 a, i32 b) {
//     i32 ah = a / 4;          // 0..3
//     i32 bh = b / 4;          // 0..3
//     i32 al = a - 4 * ah;     // 0..3
//     i32 bl = b - 4 * bh;     // 0..3
//     return and2_u2(al, bl) + 4 * and2_u2(ah, bh);
// }
__bit_and4_u4:
	mov r2, r0
	div r2, 4
	mov r3, r1
	div r3, 4
	mov r4, r2
	mul r4, 4
	mov t0, r0
	sub t0, r4
	mov r4, r3
	mul r4, 4
	mov t1, r1
	sub t1, r4

	mov r4, t0
	div r4, 2
	mov r5, t1
	div r5, 2
	mov r6, r4
	mul r6, 2
	mov t2, t0
	sub t2, r6
	mov r6, r5
	mul r6, 2
	mov t3, t1
	sub t3, r6
	mul t2, t3
	mov r6, r4
	mul r6, r5
	mul r6, 2
	add t2, r6

	mov r4, r2
	div r4, 2
	mov r5, r3
	div r5, 2
	mov r6, r4
	mul r6, 2
	mov t4, r2
	sub t4, r6
	mov r6, r5
	mul r6, 2
	mov t5, r3
	sub t5, r6
	mul t4, t5
	mov r6, r4
	mul r6, r5
	mul r6, 2
	add t4, r6

	mov rax, t4
	mul rax, 4
	add rax, t2
	ret


// i32 __bit_and8_u8(i32 a, i32 b) {
//     i32 ah = a / 16;         // 0..15
//     i32 bh = b / 16;         // 0..15
//     i32 al = a - 16 * ah;    // 0..15
//     i32 bl = b - 16 * bh;    // 0..15
//     return and4_u4(al, bl) + 16 * and4_u4(ah, bh);
// }
__bit_and8_u8:
	mov [rsp-1], x0
	mov [rsp-2], x1
	mov [rsp-3], x2
	mov [rsp-4], x3

	mov x2, r0
	mov x3, r1

	mov r2, x2
	div r2, 16
	mov r3, x3
	div r3, 16
	mov x0, r2
	mov x1, r3

	mov r4, r2
	mul r4, 16
	mov r0, x2
	sub r0, r4

	mov r4, r3
	mul r4, 16
	mov r1, x3
	sub r1, r4

	call __bit_and4_u4
	mov x2, rax

	mov r0, x0
	mov r1, x1
	call __bit_and4_u4
	mul rax, 16
	add rax, x2

	mov x3, [rsp-4]
	mov x2, [rsp-3]
	mov x1, [rsp-2]
	mov x0, [rsp-1]
	ret


// i32 __bit_and(i32 a, i32 b) {
//     i32 aq, bq;
//     i32 a0, a1, a2, a3;
//     i32 b0, b1, b2, b3;
// 
//     a0 = ((a % 256) + 256) % 256;
//     aq = (a - a0) / 256;
// 
//     a1 = ((aq % 256) + 256) % 256;
//     aq = (aq - a1) / 256;
// 
//     a2 = ((aq % 256) + 256) % 256;
//     aq = (aq - a2) / 256;
// 
//     a3 = ((aq % 256) + 256) % 256;
// 
//     b0 = ((b % 256) + 256) % 256;
//     bq = (b - b0) / 256;
// 
//     b1 = ((bq % 256) + 256) % 256;
//     bq = (bq - b1) / 256;
// 
//     b2 = ((bq % 256) + 256) % 256;
//     bq = (bq - b2) / 256;
// 
//     b3 = ((bq % 256) + 256) % 256;
// 
//     i32 r0 = and8_u8(a0, b0);
//     i32 r1 = and8_u8(a1, b1);
//     i32 r2 = and8_u8(a2, b2);
//     i32 r3 = and8_u8(a3, b3);
// 
//     i32 top = r3 - 256 * ((r3 + 128) / 256);
// 
//     return (((top * 256 + r2) * 256 + r1) * 256 + r0);
// }
__bit_and:
	mov [rsp-1], x0
	mov [rsp-2], x1
	mov [rsp-3], x2
	mov [rsp-4], x3
	mov [rsp-5], x4

	mov x0, r0
	mov x1, r1

	mov r0, x0
	rem r0, 256
	add r0, 256
	rem r0, 256
	mov r5, x0
	sub r5, r0
	div r5, 256
	mov x0, r5
	mov r1, x1
	rem r1, 256
	add r1, 256
	rem r1, 256
	mov r5, x1
	sub r5, r1
	div r5, 256
	mov x1, r5
	call __bit_and8_u8
	inline scoreboard players operation __bit_and_b0 vm_regs = rax vm_regs

	mov r0, x0
	rem r0, 256
	add r0, 256
	rem r0, 256
	mov r5, x0
	sub r5, r0
	div r5, 256
	mov x0, r5
	mov r1, x1
	rem r1, 256
	add r1, 256
	rem r1, 256
	mov r5, x1
	sub r5, r1
	div r5, 256
	mov x1, r5
	call __bit_and8_u8
	inline scoreboard players operation __bit_and_b1 vm_regs = rax vm_regs

	mov r0, x0
	rem r0, 256
	add r0, 256
	rem r0, 256
	mov r5, x0
	sub r5, r0
	div r5, 256
	mov x0, r5
	mov r1, x1
	rem r1, 256
	add r1, 256
	rem r1, 256
	mov r5, x1
	sub r5, r1
	div r5, 256
	mov x1, r5
	call __bit_and8_u8
	inline scoreboard players operation __bit_and_b2 vm_regs = rax vm_regs

	mov r0, x0
	rem r0, 256
	add r0, 256
	rem r0, 256
	mov r1, x1
	rem r1, 256
	add r1, 256
	rem r1, 256
	call __bit_and8_u8

	mov r5, rax
	add r5, 128
	div r5, 256
	mul r5, 256
	sub rax, r5
	mul rax, 256
	inline scoreboard players operation rax vm_regs += __bit_and_b2 vm_regs
	mul rax, 256
	inline scoreboard players operation rax vm_regs += __bit_and_b1 vm_regs
	mul rax, 256
	inline scoreboard players operation rax vm_regs += __bit_and_b0 vm_regs
	mov x4, [rsp-5]
	mov x3, [rsp-4]
	mov x2, [rsp-3]
	mov x1, [rsp-2]
	mov x0, [rsp-1]
	ret


__bit_or:
	mov [rsp-1], x0
	mov [rsp-2], x1
	mov x0, r0
	mov x1, r1
	call	__bit_and
	mov	r0, x0
	add	r0, x1
	sub	r0, rax
	mov	rax, r0
	mov x1, [rsp-2]
	mov x0, [rsp-1]
	ret


__bit_xor:
	mov [rsp-1], x0
	mov [rsp-2], x1
	mov x0, r0
	mov x1, r1
	call	__bit_and
	add	rax, rax
	mov	r0, x0
	add	r0, x1
	sub	r0, rax
	mov	rax, r0
	mov x1, [rsp-2]
	mov x0, [rsp-1]
	ret


__bit_shl:
	mov [rsp-1], x0
	mov	r2, 0
	jl	r1, r2, .LBB6_3
	jmp	.LBB6_1
.LBB6_1:
	mov	r2, 31
	jg	r1, r2, .LBB6_3
	jmp	.LBB6_2
.LBB6_2:
	mov	x0, r0
	mov	r0, r1
	call	__pow2u
	mov	r2, x0
	mul	r2, rax
	mov	rax, r2
	mov x0, [rsp-1]
	ret
.LBB6_3:
	mov	rax, 0
	mov x0, [rsp-1]
	ret


// u32 __bit_shr(u32 a, u32 b) {
//     if (b == 0) return a;
//     if (b == 31) return ((i32)a < 0) ? 1u : 0u;
// 
//     i32 x = (i32)a;
//     i32 d = (i32)pow2u(b);
// 
//     return (x >= 0)
//         ? (u32)(x / d)
//         : (pow2u(31 - b) + (u32)((x - INT_MIN) / d));
// }
__bit_shr:
	mov [rsp-1], x0
	mov [rsp-2], x1
	mov [rsp-3], x2
	mov [rsp-4], x3
	je r1, 0, .isB0
	je r1, 31, .isB31

	mov x0, r0
	mov x1, r1
	mov r0, r1
	call __pow2u
	mov x2, rax
	jge x0, 0, .isXGE0
	jmp .isXL0

.isXGE0:  // is x greater than 0
	mov rax, x0
	div rax, x2
	mov x3, [rsp-4]
	mov x2, [rsp-3]
	mov x1, [rsp-2]
	mov x0, [rsp-1]
	ret

.isXL0:  // is x less than 0
	mov rax, x0
	sub rax, -2147483648
	div rax, x2
	mov x3, rax
	mov r0, 31
	sub r0, x1
	call __pow2u
	add rax, x3
	mov x3, [rsp-4]
	mov x2, [rsp-3]
	mov x1, [rsp-2]
	mov x0, [rsp-1]
	ret

.isB0:
	mov rax, r0
	mov x3, [rsp-4]
	mov x2, [rsp-3]
	mov x1, [rsp-2]
	mov x0, [rsp-1]
	ret

.isB31:
	inline execute if score r0 vm_regs matches 0..2147483647 run return 0
	mov rax, 1
	mov x3, [rsp-4]
	mov x2, [rsp-3]
	mov x1, [rsp-2]
	mov x0, [rsp-1]
	ret


// i32 __bit_sar(i32 x, u32 s) {
//     if (s == 0) return x;
//     if (s == 31) return (x < 0) ? -1 : 0;
// 
//     i32 d = (i32)pow2u(s);
//     return (x >= 0) ? (x / d) : (-1 - ((-1 - x) / d));
// }
__bit_sar:
	mov [rsp-1], x0
	mov [rsp-2], x1
	je r1, 0, .isS0
	je r1, 31, .isS31

	mov x0, r0
	mov r0, r1
	call __pow2u
	mov x1, rax
	mov rax, x0
	jge rax, 0, .isXGE0
	jmp .isXL0

.isXGE0:  // is x greater than 0
	div rax, x1
	mov x1, [rsp-2]
	mov x0, [rsp-1]
	ret

.isXL0:  // is x less than 0
	mul rax, -1
	sub rax, 1
	div rax, x1
	mul rax, -1
	sub rax, 1
	mov x1, [rsp-2]
	mov x0, [rsp-1]
	ret

.isS0:
	mov rax, r0
	mov x1, [rsp-2]
	mov x0, [rsp-1]
	ret

.isS31:
	inline execute if score r0 vm_regs matches 0..2147483647 run return 0
	mov rax, -1
	mov x1, [rsp-2]
	mov x0, [rsp-1]
	ret
