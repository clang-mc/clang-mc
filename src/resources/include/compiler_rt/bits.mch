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
	mov r0, t0
	mov r1, t1
	call __bit_and2_u2
	mov r4, rax
	mov r0, r2
	mov r1, r3
	call __bit_and2_u2
	mul rax, 4
	add rax, r4
	ret


// i32 __bit_and8_u8(i32 a, i32 b) {
//     i32 ah = a / 16;         // 0..15
//     i32 bh = b / 16;         // 0..15
//     i32 al = a - 16 * ah;    // 0..15
//     i32 bl = b - 16 * bh;    // 0..15
//     return and4_u4(al, bl) + 16 * and4_u4(ah, bh);
// }
__bit_and8_u8:
	mov r5, r0
	div r5, 16
	mov r6, r1
	div r6, 16
	mov r7, r5
	mul r7, 16
	mov t2, r0
	sub t2, r7
	mov r7, r6
	mul r7, 16
	mov t3, r1
	sub t3, r7
	mov r0, t2
	mov r1, t3
	call __bit_and4_u4
	mov r7, rax
	mov r0, r5
	mov r1, r6
	call __bit_and4_u4
	mul rax, 16
	add rax, r7
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
	mov t0, r0
	mov t1, r1

	mov r0, t0
	rem r0, 256
	add r0, 256
	rem r0, 256
	mov r5, t0
	sub r5, r0
	div r5, 256
	mov t0, r5
	mov r1, t1
	rem r1, 256
	add r1, 256
	rem r1, 256
	mov r5, t1
	sub r5, r1
	div r5, 256
	mov t1, r5
	call __bit_and8_u8
	mov r2, rax

	mov r0, t0
	rem r0, 256
	add r0, 256
	rem r0, 256
	mov r5, t0
	sub r5, r0
	div r5, 256
	mov t0, r5
	mov r1, t1
	rem r1, 256
	add r1, 256
	rem r1, 256
	mov r5, t1
	sub r5, r1
	div r5, 256
	mov t1, r5
	call __bit_and8_u8
	mov r3, rax

	mov r0, t0
	rem r0, 256
	add r0, 256
	rem r0, 256
	mov r5, t0
	sub r5, r0
	div r5, 256
	mov t0, r5
	mov r1, t1
	rem r1, 256
	add r1, 256
	rem r1, 256
	mov r5, t1
	sub r5, r1
	div r5, 256
	mov t1, r5
	call __bit_and8_u8
	mov r4, rax

	mov r0, t0
	rem r0, 256
	add r0, 256
	rem r0, 256
	mov r1, t1
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
	add rax, r4
	mul rax, 256
	add rax, r3
	mul rax, 256
	add rax, r2
	ret


__bit_or:
	call	__bit_and
	add	r0, r1
	sub	r0, rax
	mov	rax, r0
	ret


__bit_xor:
	call	__bit_and
	add	rax, rax
	add	r0, r1
	sub	r0, rax
	mov	rax, r0
	ret


__bit_shl:
	mov	r2, 0
	jl	r1, r2, .LBB6_3
	jmp	.LBB6_1
.LBB6_1:
	mov	r2, 31
	jg	r1, r2, .LBB6_3
	jmp	.LBB6_2
.LBB6_2:
	mov	r2, r0
	mov	r0, r1
	call	__pow2u
	mul	r2, rax
	mov	rax, r2
	ret
.LBB6_3:
	mov	rax, 0
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
	je r0, 0, .isB0
	je r0, 31, .isB31

	mov t0, r0
	mov r0, r1
	call __pow2u
	mov t1, rax
	jge t0, 0, .isXGE0

.isXGE0:  // is x greater than 0
	div t0, t1
	mov rax, t0
	ret

.isXL0:  // is x less than 0
	sub t0, -2147483648
	div t0, t1
	mov r0, 31
	sub r0, r1
	call __pow2u
	add rax, t0
	ret

.isB0:
	mov rax, r0
	ret

.isB31:
	mov rax, 0
	inline execute if score r0 vm_regs matches 0..2147483647 run return 1
	mov rax, 1
	ret


// i32 __bit_sar(i32 x, u32 s) {
//     if (s == 0) return x;
//     if (s == 31) return (x < 0) ? -1 : 0;
// 
//     i32 d = (i32)pow2u(s);
//     return (x >= 0) ? (x / d) : (-1 - ((-1 - x) / d));
// }
__bit_sar:
	je r0, 0, .isS0
	je r0, 31, .isS31

	mov t0, r0
	mov r0, r1
	call __pow2u
	mov t1, rax
	mov rax, t0
	jge rax, 0, .isXGE0

.isXGE0:  // is x greater than 0
	div rax, t1
	ret

.isXL0:  // is x less than 0
	mul rax, -1
	sub rax, 1
	div rax, t1
	mul rax, -1
	sub rax, 1
	ret

.isS0:
	mov rax, r0
	ret

.isS31:
	mov rax, 0
	inline execute if score r0 vm_regs matches 0..2147483647 run return 1
	mov rax, -1
	ret
