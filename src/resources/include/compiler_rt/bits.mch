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


// i32 __bit_and4_u4(i32 a, i32 b) {   // a,b in 0..15
//     // nibble 查表: bit_and_tbl[a*16 + b] == (a AND b)
//     return bit_and_tbl[a*16 + b];
// }
// idx = a*16 + b 写入宏存储 std:vm bitand.idx，
// 调用宏函数 std:_internal/bit_and_nibble 直接把 tbl[idx] 取到 rax。
// t0 与 rax 均为 caller-saved，无需保存 x 寄存器。
__bit_and4_u4:
	mov t0, r0
	mul t0, 16
	add t0, r1
	inline execute store result storage std:vm bitand.idx int 1 run scoreboard players get t0 vm_regs
	inline function std:_internal/bit_and_nibble with storage std:vm bitand
	ret


// i32 __bit_and8_u8(i32 a, i32 b) {   // a,b in 0..255
//     i32 ah = a / 16, bh = b / 16;         // high nibble 0..15
//     i32 al = a - 16*ah, bl = b - 16*bh;   // low nibble 0..15
//     return nibble(al, bl) + 16 * nibble(ah, bh);
// }
// 拍平: 内联两次 nibble 查表, 全用 caller-saved 工作寄存器 (r2..r6 / t0 / t1 / rax),
// 不再建栈帧、不再 call __bit_and4_u4、不保存 x0-x3 callee-saved。
// bit_and_nibble 宏只写 rax、只读 storage bitand.idx, 不动 r/t/x 寄存器,
// 故第一次查表的结果转存 t1 后在第二次查表间保持安全。
__bit_and8_u8:
	mov r2, r0
	div r2, 16          // ah
	mov r3, r1
	div r3, 16          // bh

	mov r4, r2
	mul r4, 16
	mov r5, r0
	sub r5, r4          // al = a - 16*ah

	mov r4, r3
	mul r4, 16
	mov r6, r1
	sub r6, r4          // bl = b - 16*bh

	// lo = nibble(al, bl) = bit_and_tbl[al*16 + bl]
	mov t0, r5
	mul t0, 16
	add t0, r6
	inline execute store result storage std:vm bitand.idx int 1 run scoreboard players get t0 vm_regs
	inline function std:_internal/bit_and_nibble with storage std:vm bitand
	mov t1, rax

	// hi = nibble(ah, bh) = bit_and_tbl[ah*16 + bh]
	mov t0, r2
	mul t0, 16
	add t0, r3
	inline execute store result storage std:vm bitand.idx int 1 run scoreboard players get t0 vm_regs
	inline function std:_internal/bit_and_nibble with storage std:vm bitand

	mul rax, 16
	add rax, t1
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
// 拍平版本：不再 4× call __bit_and8_u8、不建栈帧。
// 一个函数体内直接做 8 次内联 nibble 查表 + 按 256^i 重组，
// 中间值全用 caller-saved 工作寄存器 (r0..r7 / t0..t7 / rax)，无 [rsp] spill。
//
// 持久寄存器（跨 4 个字节块存活，nibble 宏只写 rax/只读 storage bitand.idx，不会 clobber）：
//   t6 = aq (a 的运行商)   t7 = bq (b 的运行商)
//   t3 = byte0 AND 结果    t4 = byte1 AND 结果    t5 = byte2 AND 结果
// 字节块内工作寄存器：r0=ai, r1=bi, r2..r7, t0(提取用), rax。
//
// 高位符号提取忠实保留原逻辑：
//   ai = ((aq % 256) + 256) % 256      // 0..255（负数下也正确取低字节）
//   aq = (aq - ai) / 256               // aq-ai 是 256 的整数倍，floor 除法精确，符号无关
// byte3(最高字节) 的 AND 结果再做 sign-correct：top = r3 - 256*((r3+128)/256)，
// 令 0..255 映射回有符号字节 -128..127，最终 Horner 重组得到有符号 32 位值。
__bit_and:
	mov t6, r0          // aq = a
	mov t7, r1          // bq = b

	// ---- byte 0 ----
	mov r0, t6
	rem r0, 256
	add r0, 256
	rem r0, 256         // a0 = 低字节 0..255
	mov t0, t6
	sub t0, r0
	div t0, 256
	mov t6, t0          // aq = (aq - a0)/256
	mov r1, t7
	rem r1, 256
	add r1, 256
	rem r1, 256         // b0
	mov t0, t7
	sub t0, r1
	div t0, 256
	mov t7, t0          // bq = (bq - b0)/256
	// byte AND (r0,r1) -> rax
	mov r2, r0
	rem r2, 16          // lo_a = a0 % 16
	mov r3, r1
	rem r3, 16          // lo_b
	mov r4, r0
	div r4, 16          // hi_a = a0 / 16
	mov r5, r1
	div r5, 16          // hi_b
	mov r6, r2
	mul r6, 16
	add r6, r3          // idx = lo_a*16 + lo_b
	inline execute store result storage std:vm bitand.idx int 1 run scoreboard players get r6 vm_regs
	inline function std:_internal/bit_and_nibble with storage std:vm bitand
	mov r7, rax         // lo = nibble(lo_a,lo_b)
	mov r6, r4
	mul r6, 16
	add r6, r5          // idx = hi_a*16 + hi_b
	inline execute store result storage std:vm bitand.idx int 1 run scoreboard players get r6 vm_regs
	inline function std:_internal/bit_and_nibble with storage std:vm bitand
	mul rax, 16
	add rax, r7         // byte0 AND = lo + 16*hi
	mov t3, rax

	// ---- byte 1 ----
	mov r0, t6
	rem r0, 256
	add r0, 256
	rem r0, 256
	mov t0, t6
	sub t0, r0
	div t0, 256
	mov t6, t0
	mov r1, t7
	rem r1, 256
	add r1, 256
	rem r1, 256
	mov t0, t7
	sub t0, r1
	div t0, 256
	mov t7, t0
	mov r2, r0
	rem r2, 16
	mov r3, r1
	rem r3, 16
	mov r4, r0
	div r4, 16
	mov r5, r1
	div r5, 16
	mov r6, r2
	mul r6, 16
	add r6, r3
	inline execute store result storage std:vm bitand.idx int 1 run scoreboard players get r6 vm_regs
	inline function std:_internal/bit_and_nibble with storage std:vm bitand
	mov r7, rax
	mov r6, r4
	mul r6, 16
	add r6, r5
	inline execute store result storage std:vm bitand.idx int 1 run scoreboard players get r6 vm_regs
	inline function std:_internal/bit_and_nibble with storage std:vm bitand
	mul rax, 16
	add rax, r7
	mov t4, rax

	// ---- byte 2 ----
	mov r0, t6
	rem r0, 256
	add r0, 256
	rem r0, 256
	mov t0, t6
	sub t0, r0
	div t0, 256
	mov t6, t0
	mov r1, t7
	rem r1, 256
	add r1, 256
	rem r1, 256
	mov t0, t7
	sub t0, r1
	div t0, 256
	mov t7, t0
	mov r2, r0
	rem r2, 16
	mov r3, r1
	rem r3, 16
	mov r4, r0
	div r4, 16
	mov r5, r1
	div r5, 16
	mov r6, r2
	mul r6, 16
	add r6, r3
	inline execute store result storage std:vm bitand.idx int 1 run scoreboard players get r6 vm_regs
	inline function std:_internal/bit_and_nibble with storage std:vm bitand
	mov r7, rax
	mov r6, r4
	mul r6, 16
	add r6, r5
	inline execute store result storage std:vm bitand.idx int 1 run scoreboard players get r6 vm_regs
	inline function std:_internal/bit_and_nibble with storage std:vm bitand
	mul rax, 16
	add rax, r7
	mov t5, rax

	// ---- byte 3 (最高字节，无需更新 aq/bq) ----
	mov r0, t6
	rem r0, 256
	add r0, 256
	rem r0, 256         // a3
	mov r1, t7
	rem r1, 256
	add r1, 256
	rem r1, 256         // b3
	mov r2, r0
	rem r2, 16
	mov r3, r1
	rem r3, 16
	mov r4, r0
	div r4, 16
	mov r5, r1
	div r5, 16
	mov r6, r2
	mul r6, 16
	add r6, r3
	inline execute store result storage std:vm bitand.idx int 1 run scoreboard players get r6 vm_regs
	inline function std:_internal/bit_and_nibble with storage std:vm bitand
	mov r7, rax
	mov r6, r4
	mul r6, 16
	add r6, r5
	inline execute store result storage std:vm bitand.idx int 1 run scoreboard players get r6 vm_regs
	inline function std:_internal/bit_and_nibble with storage std:vm bitand
	mul rax, 16
	add rax, r7         // byte3 AND (0..255)，rax

	// sign-correct 最高字节: top = rax - 256*((rax+128)/256)
	mov r5, rax
	add r5, 128
	div r5, 256
	mul r5, 256
	sub rax, r5
	// Horner 重组: ((top*256 + t5)*256 + t4)*256 + t3
	mul rax, 256
	add rax, t5
	mul rax, 256
	add rax, t4
	mul rax, 256
	add rax, t3
	ret


__bit_or:
	mov t1, r0
	add t1, r1          // t1 = a + b (survives inline AND; AND body never touches t1/t2)
	mov t6, r0          // aq = a
	mov t7, r1          // bq = b

	// ---- byte 0 ----
	mov r0, t6
	rem r0, 256
	add r0, 256
	rem r0, 256         // a0 = 低字节 0..255
	mov t0, t6
	sub t0, r0
	div t0, 256
	mov t6, t0          // aq = (aq - a0)/256
	mov r1, t7
	rem r1, 256
	add r1, 256
	rem r1, 256         // b0
	mov t0, t7
	sub t0, r1
	div t0, 256
	mov t7, t0          // bq = (bq - b0)/256
	// byte AND (r0,r1) -> rax
	mov r2, r0
	rem r2, 16          // lo_a = a0 % 16
	mov r3, r1
	rem r3, 16          // lo_b
	mov r4, r0
	div r4, 16          // hi_a = a0 / 16
	mov r5, r1
	div r5, 16          // hi_b
	mov r6, r2
	mul r6, 16
	add r6, r3          // idx = lo_a*16 + lo_b
	inline execute store result storage std:vm bitand.idx int 1 run scoreboard players get r6 vm_regs
	inline function std:_internal/bit_and_nibble with storage std:vm bitand
	mov r7, rax         // lo = nibble(lo_a,lo_b)
	mov r6, r4
	mul r6, 16
	add r6, r5          // idx = hi_a*16 + hi_b
	inline execute store result storage std:vm bitand.idx int 1 run scoreboard players get r6 vm_regs
	inline function std:_internal/bit_and_nibble with storage std:vm bitand
	mul rax, 16
	add rax, r7         // byte0 AND = lo + 16*hi
	mov t3, rax

	// ---- byte 1 ----
	mov r0, t6
	rem r0, 256
	add r0, 256
	rem r0, 256
	mov t0, t6
	sub t0, r0
	div t0, 256
	mov t6, t0
	mov r1, t7
	rem r1, 256
	add r1, 256
	rem r1, 256
	mov t0, t7
	sub t0, r1
	div t0, 256
	mov t7, t0
	mov r2, r0
	rem r2, 16
	mov r3, r1
	rem r3, 16
	mov r4, r0
	div r4, 16
	mov r5, r1
	div r5, 16
	mov r6, r2
	mul r6, 16
	add r6, r3
	inline execute store result storage std:vm bitand.idx int 1 run scoreboard players get r6 vm_regs
	inline function std:_internal/bit_and_nibble with storage std:vm bitand
	mov r7, rax
	mov r6, r4
	mul r6, 16
	add r6, r5
	inline execute store result storage std:vm bitand.idx int 1 run scoreboard players get r6 vm_regs
	inline function std:_internal/bit_and_nibble with storage std:vm bitand
	mul rax, 16
	add rax, r7
	mov t4, rax

	// ---- byte 2 ----
	mov r0, t6
	rem r0, 256
	add r0, 256
	rem r0, 256
	mov t0, t6
	sub t0, r0
	div t0, 256
	mov t6, t0
	mov r1, t7
	rem r1, 256
	add r1, 256
	rem r1, 256
	mov t0, t7
	sub t0, r1
	div t0, 256
	mov t7, t0
	mov r2, r0
	rem r2, 16
	mov r3, r1
	rem r3, 16
	mov r4, r0
	div r4, 16
	mov r5, r1
	div r5, 16
	mov r6, r2
	mul r6, 16
	add r6, r3
	inline execute store result storage std:vm bitand.idx int 1 run scoreboard players get r6 vm_regs
	inline function std:_internal/bit_and_nibble with storage std:vm bitand
	mov r7, rax
	mov r6, r4
	mul r6, 16
	add r6, r5
	inline execute store result storage std:vm bitand.idx int 1 run scoreboard players get r6 vm_regs
	inline function std:_internal/bit_and_nibble with storage std:vm bitand
	mul rax, 16
	add rax, r7
	mov t5, rax

	// ---- byte 3 (最高字节，无需更新 aq/bq) ----
	mov r0, t6
	rem r0, 256
	add r0, 256
	rem r0, 256         // a3
	mov r1, t7
	rem r1, 256
	add r1, 256
	rem r1, 256         // b3
	mov r2, r0
	rem r2, 16
	mov r3, r1
	rem r3, 16
	mov r4, r0
	div r4, 16
	mov r5, r1
	div r5, 16
	mov r6, r2
	mul r6, 16
	add r6, r3
	inline execute store result storage std:vm bitand.idx int 1 run scoreboard players get r6 vm_regs
	inline function std:_internal/bit_and_nibble with storage std:vm bitand
	mov r7, rax
	mov r6, r4
	mul r6, 16
	add r6, r5
	inline execute store result storage std:vm bitand.idx int 1 run scoreboard players get r6 vm_regs
	inline function std:_internal/bit_and_nibble with storage std:vm bitand
	mul rax, 16
	add rax, r7         // byte3 AND (0..255)，rax

	// sign-correct 最高字节: top = rax - 256*((rax+128)/256)
	mov r5, rax
	add r5, 128
	div r5, 256
	mul r5, 256
	sub rax, r5
	// Horner 重组: ((top*256 + t5)*256 + t4)*256 + t3
	mul rax, 256
	add rax, t5
	mul rax, 256
	add rax, t4
	mul rax, 256
	add rax, t3
	// __bit_or(a,b) = (a+b) - (a&b) ; t1=a+b, rax=a&b
	mov r2, t1
	sub r2, rax
	mov rax, r2
	ret


__bit_xor:
	mov t1, r0
	add t1, r1          // t1 = a + b (survives inline AND; AND body never touches t1/t2)
	mov t6, r0          // aq = a
	mov t7, r1          // bq = b

	// ---- byte 0 ----
	mov r0, t6
	rem r0, 256
	add r0, 256
	rem r0, 256         // a0 = 低字节 0..255
	mov t0, t6
	sub t0, r0
	div t0, 256
	mov t6, t0          // aq = (aq - a0)/256
	mov r1, t7
	rem r1, 256
	add r1, 256
	rem r1, 256         // b0
	mov t0, t7
	sub t0, r1
	div t0, 256
	mov t7, t0          // bq = (bq - b0)/256
	// byte AND (r0,r1) -> rax
	mov r2, r0
	rem r2, 16          // lo_a = a0 % 16
	mov r3, r1
	rem r3, 16          // lo_b
	mov r4, r0
	div r4, 16          // hi_a = a0 / 16
	mov r5, r1
	div r5, 16          // hi_b
	mov r6, r2
	mul r6, 16
	add r6, r3          // idx = lo_a*16 + lo_b
	inline execute store result storage std:vm bitand.idx int 1 run scoreboard players get r6 vm_regs
	inline function std:_internal/bit_and_nibble with storage std:vm bitand
	mov r7, rax         // lo = nibble(lo_a,lo_b)
	mov r6, r4
	mul r6, 16
	add r6, r5          // idx = hi_a*16 + hi_b
	inline execute store result storage std:vm bitand.idx int 1 run scoreboard players get r6 vm_regs
	inline function std:_internal/bit_and_nibble with storage std:vm bitand
	mul rax, 16
	add rax, r7         // byte0 AND = lo + 16*hi
	mov t3, rax

	// ---- byte 1 ----
	mov r0, t6
	rem r0, 256
	add r0, 256
	rem r0, 256
	mov t0, t6
	sub t0, r0
	div t0, 256
	mov t6, t0
	mov r1, t7
	rem r1, 256
	add r1, 256
	rem r1, 256
	mov t0, t7
	sub t0, r1
	div t0, 256
	mov t7, t0
	mov r2, r0
	rem r2, 16
	mov r3, r1
	rem r3, 16
	mov r4, r0
	div r4, 16
	mov r5, r1
	div r5, 16
	mov r6, r2
	mul r6, 16
	add r6, r3
	inline execute store result storage std:vm bitand.idx int 1 run scoreboard players get r6 vm_regs
	inline function std:_internal/bit_and_nibble with storage std:vm bitand
	mov r7, rax
	mov r6, r4
	mul r6, 16
	add r6, r5
	inline execute store result storage std:vm bitand.idx int 1 run scoreboard players get r6 vm_regs
	inline function std:_internal/bit_and_nibble with storage std:vm bitand
	mul rax, 16
	add rax, r7
	mov t4, rax

	// ---- byte 2 ----
	mov r0, t6
	rem r0, 256
	add r0, 256
	rem r0, 256
	mov t0, t6
	sub t0, r0
	div t0, 256
	mov t6, t0
	mov r1, t7
	rem r1, 256
	add r1, 256
	rem r1, 256
	mov t0, t7
	sub t0, r1
	div t0, 256
	mov t7, t0
	mov r2, r0
	rem r2, 16
	mov r3, r1
	rem r3, 16
	mov r4, r0
	div r4, 16
	mov r5, r1
	div r5, 16
	mov r6, r2
	mul r6, 16
	add r6, r3
	inline execute store result storage std:vm bitand.idx int 1 run scoreboard players get r6 vm_regs
	inline function std:_internal/bit_and_nibble with storage std:vm bitand
	mov r7, rax
	mov r6, r4
	mul r6, 16
	add r6, r5
	inline execute store result storage std:vm bitand.idx int 1 run scoreboard players get r6 vm_regs
	inline function std:_internal/bit_and_nibble with storage std:vm bitand
	mul rax, 16
	add rax, r7
	mov t5, rax

	// ---- byte 3 (最高字节，无需更新 aq/bq) ----
	mov r0, t6
	rem r0, 256
	add r0, 256
	rem r0, 256         // a3
	mov r1, t7
	rem r1, 256
	add r1, 256
	rem r1, 256         // b3
	mov r2, r0
	rem r2, 16
	mov r3, r1
	rem r3, 16
	mov r4, r0
	div r4, 16
	mov r5, r1
	div r5, 16
	mov r6, r2
	mul r6, 16
	add r6, r3
	inline execute store result storage std:vm bitand.idx int 1 run scoreboard players get r6 vm_regs
	inline function std:_internal/bit_and_nibble with storage std:vm bitand
	mov r7, rax
	mov r6, r4
	mul r6, 16
	add r6, r5
	inline execute store result storage std:vm bitand.idx int 1 run scoreboard players get r6 vm_regs
	inline function std:_internal/bit_and_nibble with storage std:vm bitand
	mul rax, 16
	add rax, r7         // byte3 AND (0..255)，rax

	// sign-correct 最高字节: top = rax - 256*((rax+128)/256)
	mov r5, rax
	add r5, 128
	div r5, 256
	mul r5, 256
	sub rax, r5
	// Horner 重组: ((top*256 + t5)*256 + t4)*256 + t3
	mul rax, 256
	add rax, t5
	mul rax, 256
	add rax, t4
	mul rax, 256
	add rax, t3
	// __bit_xor(a,b) = (a+b) - 2*(a&b) ; t1=a+b, rax=a&b
	mov r2, rax
	add r2, rax          // r2 = 2*(a&b)
	mov r3, t1
	sub r3, r2
	mov rax, r3
	ret


__bit_shl:
	sub rsp, 4
	mov [rsp+1], x0
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
	mov x0, [rsp+1]
	add rsp, 4
	ret
.LBB6_3:
	mov	rax, 0
	mov x0, [rsp+1]
	add rsp, 4
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
	sub rsp, 16
	mov [rsp+1], x0
	mov [rsp+2], x1
	mov [rsp+3], x2
	mov [rsp+4], x3
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
	mov x3, [rsp+4]
	mov x2, [rsp+3]
	mov x1, [rsp+2]
	mov x0, [rsp+1]
	add rsp, 16
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
	mov x3, [rsp+4]
	mov x2, [rsp+3]
	mov x1, [rsp+2]
	mov x0, [rsp+1]
	add rsp, 16
	ret

.isB0:
	mov rax, r0
	mov x3, [rsp+4]
	mov x2, [rsp+3]
	mov x1, [rsp+2]
	mov x0, [rsp+1]
	add rsp, 16
	ret

.isB31:
	jge r0, 0, .isB31NonNeg
	mov rax, 1
	mov x3, [rsp+4]
	mov x2, [rsp+3]
	mov x1, [rsp+2]
	mov x0, [rsp+1]
	add rsp, 16
	ret

.isB31NonNeg:
	mov rax, 0
	mov x3, [rsp+4]
	mov x2, [rsp+3]
	mov x1, [rsp+2]
	mov x0, [rsp+1]
	add rsp, 16
	ret


// i32 __bit_sar(i32 x, u32 s) {
//     if (s == 0) return x;
//     if (s == 31) return (x < 0) ? -1 : 0;
// 
//     i32 d = (i32)pow2u(s);
//     return (x >= 0) ? (x / d) : (-1 - ((-1 - x) / d));
// }
__bit_sar:
	sub rsp, 8
	mov [rsp+1], x0
	mov [rsp+2], x1
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
	mov x1, [rsp+2]
	mov x0, [rsp+1]
	add rsp, 8
	ret

.isXL0:  // is x less than 0
	mul rax, -1
	sub rax, 1
	div rax, x1
	mul rax, -1
	sub rax, 1
	mov x1, [rsp+2]
	mov x0, [rsp+1]
	add rsp, 8
	ret

.isS0:
	mov rax, r0
	mov x1, [rsp+2]
	mov x0, [rsp+1]
	add rsp, 8
	ret

.isS31:
	jge r0, 0, .isS31NonNeg
	mov rax, -1
	mov x1, [rsp+2]
	mov x0, [rsp+1]
	add rsp, 8
	ret

.isS31NonNeg:
	mov rax, 0
	mov x1, [rsp+2]
	mov x0, [rsp+1]
	add rsp, 8
	ret
