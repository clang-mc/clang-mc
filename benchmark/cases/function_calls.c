typedef unsigned int (*step_fn)(unsigned int, unsigned int);

static unsigned int mix_a(unsigned int x, unsigned int y) {
    return (x * 3u + y * 5u + 17u) & 0x7fffffffu;
}

static unsigned int mix_b(unsigned int x, unsigned int y) {
    return (x ^ (y * 11u + 29u)) & 0x7fffffffu;
}

static unsigned int fib_mod(int n) {
    if (n <= 1)
        return (unsigned int)n;
    return (fib_mod(n - 1) + fib_mod(n - 2)) & 0x7fffffffu;
}

__declspec(dllexport) int bench_function_calls(void) {
    step_fn table[2] = {mix_a, mix_b};
    unsigned int acc = 7;

    acc = table[0](acc, fib_mod(4));
    acc = table[1](acc, 9u);

    return acc == 181u ? 0 : (int)acc;
}
