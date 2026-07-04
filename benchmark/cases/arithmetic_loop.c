__declspec(dllexport) int bench_arithmetic_loop(void) {
    unsigned int acc = 17u;

    acc = (acc * 33u + 7u) & 0x7fffffffu;
    acc ^= 0x12345u;
    acc = (acc + 999u) & 0x7fffffffu;

    return acc == 75108u ? 0 : (int)acc;
}
