#include "_ll_std"

#define __cmpdf2 __ledf2
#define __eqdf2 __ledf2
#define __ltdf2 __ledf2
#define __nedf2 __ledf2
#define __gtdf2 __gedf2

// -- Begin function __ledf2
__ledf2:                                // @__ledf2
// %bb.0:
	mov	r4, r1
	mov	r1, 2147483647
	mov	r5, r0
	mov	r0, r4
	call	__bit_and
	mov	r7, rax
	mov	r0, r3
	call	__bit_and
	mov	t1, rax
	mov	r1, 2146435072
	mov	r6, 1
	mov	r0, r7
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
	mov	r1, -2147483648
	mov	t3, rax
	mov	r0, r7
	call	__bit_xor
	mov	r0, -1048576
	sub	r0, rax
	mov	r1, 31
	mov	t2, -1048576
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	t4, rax
	mov	r0, r5
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	sub	rax, t4
	add	t3, 1
	mov	r0, t3
	mov	r1, rax
	call	__bit_and
	add	rax, t4
	jnz	rax, .LBB0_8
	jmp	.LBB0_1
.LBB0_1:
	mov	r1, 2146435072
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
	mov	r1, -2147483648
	mov	t3, rax
	mov	r0, t1
	call	__bit_xor
	sub	t2, rax
	mov	r1, 31
	mov	r0, t2
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	t2, rax
	mov	r0, r2
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	sub	rax, t2
	add	t3, 1
	mov	r0, t3
	mov	r1, rax
	call	__bit_and
	add	rax, t2
	jnz	rax, .LBB0_8
	jmp	.LBB0_2
.LBB0_2:
	mov	r0, r2
	mov	r1, r5
	call	__bit_or
	mov	r6, rax
	mov	r0, t1
	mov	r1, r7
	call	__bit_or
	mov	r0, r6
	mov	r1, rax
	call	__bit_or
	mov	r6, 0
	jz	rax, .LBB0_8
	jmp	.LBB0_3
.LBB0_3:
	mov	r0, r3
	mov	r1, r4
	call	__bit_and
	mov	r0, 0
	jl	rax, r0, .LBB0_6
	jmp	.LBB0_4
.LBB0_4:
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
	mov	r1, -2147483648
	mov	r6, rax
	mov	r0, r3
	call	__bit_xor
	mov	r7, rax
	mov	r0, r4
	call	__bit_xor
	sub	rax, r7
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, r5
	sub	r0, r2
	mov	r1, 31
	mov	r7, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	rax, r7
	add	r6, 1
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	add	rax, r7
	mov	r6, -1
	jnz	rax, .LBB0_8
	jmp	.LBB0_5
.LBB0_5:
	mov	r0, r5
	mov	r1, r2
	call	__bit_xor
	mov	r2, rax
	mov	r0, r4
	mov	r1, r3
	call	__bit_xor
	mov	r0, r2
	mov	r1, rax
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
	call	__bit_and
	mov	r6, rax
	jmp	.LBB0_8
.LBB0_6:
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
	mov	r1, -2147483648
	mov	r6, rax
	mov	r0, r4
	call	__bit_xor
	mov	r7, rax
	mov	r0, r3
	call	__bit_xor
	sub	rax, r7
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, r2
	sub	r0, r5
	mov	r1, 31
	mov	r7, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	rax, r7
	add	r6, 1
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	add	rax, r7
	mov	r6, -1
	jnz	rax, .LBB0_8
	jmp	.LBB0_7
.LBB0_7:
	mov	r0, r5
	mov	r1, r2
	call	__bit_xor
	mov	r2, rax
	mov	r0, r4
	mov	r1, r3
	call	__bit_xor
	mov	r0, r2
	mov	r1, rax
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
	call	__bit_and
	mov	r6, rax
.LBB0_8:
	mov	rax, r6
	ret
// -- End function
// -- Begin function __gedf2
__gedf2:                                // @__gedf2
// %bb.0:
	mov	r4, r1
	mov	r1, 2147483647
	mov	r5, r0
	mov	r0, r4
	call	__bit_and
	mov	r6, rax
	mov	r0, r3
	call	__bit_and
	mov	r7, rax
	mov	r1, 2146435072
	mov	t1, -1
	mov	r0, r6
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
	mov	r1, -2147483648
	mov	t3, rax
	mov	r0, r6
	call	__bit_xor
	mov	r0, -1048576
	sub	r0, rax
	mov	r1, 31
	mov	t2, -1048576
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	t4, rax
	mov	r0, r5
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	sub	rax, t4
	add	t3, 1
	mov	r0, t3
	mov	r1, rax
	call	__bit_and
	add	rax, t4
	jnz	rax, .LBB1_8
	jmp	.LBB1_1
.LBB1_1:
	mov	r1, 2146435072
	mov	r0, r7
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
	mov	r1, -2147483648
	mov	t1, rax
	mov	r0, r7
	call	__bit_xor
	sub	t2, rax
	mov	r1, 31
	mov	r0, t2
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	t2, rax
	mov	r0, r2
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	sub	rax, t2
	add	t1, 1
	mov	r0, t1
	mov	r1, rax
	call	__bit_and
	add	rax, t2
	mov	t1, -1
	jnz	rax, .LBB1_8
	jmp	.LBB1_2
.LBB1_2:
	mov	r0, r2
	mov	r1, r5
	call	__bit_or
	mov	t1, rax
	mov	r0, r7
	mov	r1, r6
	call	__bit_or
	mov	r0, t1
	mov	r1, rax
	call	__bit_or
	mov	t1, 0
	jz	rax, .LBB1_8
	jmp	.LBB1_3
.LBB1_3:
	mov	r0, r3
	mov	r1, r4
	call	__bit_and
	mov	r0, 0
	jl	rax, r0, .LBB1_6
	jmp	.LBB1_4
.LBB1_4:
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
	mov	r1, -2147483648
	mov	r6, rax
	mov	r0, r3
	call	__bit_xor
	mov	r7, rax
	mov	r0, r4
	call	__bit_xor
	sub	rax, r7
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, r5
	sub	r0, r2
	mov	r1, 31
	mov	r7, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	rax, r7
	add	r6, 1
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	add	rax, r7
	mov	t1, -1
	jnz	rax, .LBB1_8
	jmp	.LBB1_5
.LBB1_5:
	mov	r0, r5
	mov	r1, r2
	call	__bit_xor
	mov	r2, rax
	mov	r0, r4
	mov	r1, r3
	call	__bit_xor
	mov	r0, r2
	mov	r1, rax
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
	call	__bit_and
	mov	t1, rax
	jmp	.LBB1_8
.LBB1_6:
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
	mov	r1, -2147483648
	mov	r6, rax
	mov	r0, r4
	call	__bit_xor
	mov	r7, rax
	mov	r0, r3
	call	__bit_xor
	sub	rax, r7
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r0, r2
	sub	r0, r5
	mov	r1, 31
	mov	r7, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	sub	rax, r7
	add	r6, 1
	mov	r0, r6
	mov	r1, rax
	call	__bit_and
	add	rax, r7
	mov	t1, -1
	jnz	rax, .LBB1_8
	jmp	.LBB1_7
.LBB1_7:
	mov	r0, r5
	mov	r1, r2
	call	__bit_xor
	mov	r2, rax
	mov	r0, r4
	mov	r1, r3
	call	__bit_xor
	mov	r0, r2
	mov	r1, rax
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
	call	__bit_and
	mov	t1, rax
.LBB1_8:
	mov	rax, t1
	ret
// -- End function
// -- Begin function __unorddf2
__unorddf2:                             // @__unorddf2
// %bb.0:
	mov	r4, r1
	mov	r1, 2147483647
	mov	r6, r0
	mov	r0, r4
	call	__bit_and
	mov	r5, rax
	mov	r0, r3
	call	__bit_and
	mov	r3, rax
	mov	r1, 2146435072
	mov	r4, 2146435072
	mov	r0, r5
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
	mov	r0, 2146435072
	sub	r0, r5
	mov	r1, 31
	mov	r7, rax
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r5, rax
	mov	r0, r6
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	sub	rax, r5
	add	r7, 1
	mov	r0, r7
	mov	r1, rax
	call	__bit_and
	mov	r1, 2146435072
	add	r5, rax
	mov	r0, r3
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
	sub	r4, r3
	mov	r1, 31
	mov	r3, rax
	mov	r0, r4
	call	__bit_shr
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	mov	r4, rax
	mov	r0, r2
	call	__bit_not
	add	rax, 1
	mov	r1, rax
	call	__bit_or
	mov	r1, 31
	mov	r0, rax
	call	__bit_shr
	sub	rax, r4
	add	r3, 1
	mov	r0, r3
	mov	r1, rax
	call	__bit_and
	add	r4, rax
	mov	r0, r5
	mov	r1, r4
	call	__bit_or
	mov	r1, 1
	mov	r0, rax
	call	__bit_and
	ret
// -- End function
