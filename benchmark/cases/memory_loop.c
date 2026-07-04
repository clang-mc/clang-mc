static unsigned int buffer[16];

__declspec(dllexport) int bench_memory_loop(void) {
    unsigned int acc;

    buffer[0] = 5u;
    buffer[1] = 17u;
    buffer[2] = 29u;
    buffer[3] = 41u;

    buffer[1] = buffer[0] + buffer[1] * 3u + buffer[2];
    buffer[2] = buffer[1] ^ buffer[3];
    acc = buffer[1] + buffer[2];

    return acc == 209u ? 0 : (int)acc;
}
