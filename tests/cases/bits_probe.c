// Bits runtime regression probe.
// Each check isolates one __bit_* primitive. Returns a distinct non-zero
// code for the first failing check, or 0 if everything is correct.
int main(void) {
    volatile int a, b, s;

    // --- AND ---
    a = 5; b = 3;
    if ((a & b) != 1) return 1;
    a = 0x12345678; b = 0x0F0F0F0F;
    if ((a & b) != 0x02040608) return 2;
    a = -1; b = 0x12345678;
    if ((a & b) != 0x12345678) return 3;
    a = -2; b = -1;            // 0xFFFFFFFE & 0xFFFFFFFF
    if ((a & b) != -2) return 4;

    // --- OR ---
    a = 5; b = 3;
    if ((a | b) != 7) return 5;
    a = 0x12340000; b = 0x00005678;
    if ((a | b) != 0x12345678) return 6;
    a = -1; b = 0;
    if ((a | b) != -1) return 7;
    a = 0; b = -2147483648;    // 0x80000000
    if ((a | b) != -2147483648) return 8;

    // --- XOR ---
    a = 5; b = 3;
    if ((a ^ b) != 6) return 9;
    a = 0x12345678; b = 0xFFFFFFFF;
    if ((a ^ b) != ~0x12345678) return 10;
    a = -1; b = -1;
    if ((a ^ b) != 0) return 11;
    a = -2147483648; b = -2147483648;  // 0x80000000 ^ 0x80000000
    if ((a ^ b) != 0) return 12;

    // --- NOT ---
    a = 5;
    if ((~a) != -6) return 13;
    a = 0;
    if ((~a) != -1) return 14;
    a = -1;
    if ((~a) != 0) return 15;
    a = 0x12345678;
    if ((~a) != (int)0xEDCBA987) return 16;

    // --- SHL (logical left) ---
    a = 1; s = 4;
    if ((a << s) != 16) return 17;
    a = 5; s = 0;
    if ((a << s) != 5) return 18;
    a = 1; s = 31;
    if ((a << s) != -2147483648) return 19;   // 0x80000000
    a = 0x00345678; s = 8;
    if ((a << s) != 0x34567800) return 20;

    // --- SHR (logical right, unsigned) ---
    {
        volatile unsigned int ua;
        volatile int us;
        ua = 256u; us = 2;
        if ((ua >> us) != 64u) return 21;
        ua = 0xFFFFFFFFu; us = 28;
        if ((ua >> us) != 0xFu) return 22;
        ua = 0x80000000u; us = 31;
        if ((ua >> us) != 1u) return 23;
        ua = 12345u; us = 0;
        if ((ua >> us) != 12345u) return 24;
        ua = 0x12345678u; us = 8;
        if ((ua >> us) != 0x00123456u) return 25;
    }

    // --- SAR (arithmetic right, signed) ---
    a = -16; s = 2;
    if ((a >> s) != -4) return 26;
    a = 256; s = 2;
    if ((a >> s) != 64) return 27;
    a = -1; s = 5;
    if ((a >> s) != -1) return 28;
    a = -2147483648; s = 31;   // 0x80000000 >> 31 (arith) == -1
    if ((a >> s) != -1) return 29;
    a = 1000; s = 0;
    if ((a >> s) != 1000) return 30;
    a = -7; s = 1;             // -7 >> 1 == -4 (arith, floor)
    if ((a >> s) != -4) return 31;

    return 0;
}
