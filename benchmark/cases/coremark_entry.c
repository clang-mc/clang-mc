#include "../coremark_port/core_portme.c"
#define main clang_mc_coremark_main
#include "../third_party/coremark/core_main.c"
#undef main
#include "../third_party/coremark/core_list_join.c"
#include "../third_party/coremark/core_matrix.c"
#include "../third_party/coremark/core_state.c"
#include "../third_party/coremark/core_util.c"

__declspec(dllexport) int bench_coremark(void) {
    int argc = 0;
    char *argv[1];
    int errors;
    core_results results;

    coremark_port_error_count = 0;

    portable_init(&results.port, &argc, argv);
    results.seed1 = 0;
    results.seed2 = 0;
    results.seed3 = 0x66;
    results.iterations = ITERATIONS;
    results.execs = ALL_ALGORITHMS_MASK;
    results.memblock[0] = (void *)static_memblk;
    results.size = TOTAL_DATA_SIZE / NUM_ALGORITHMS;
    results.err = 0;
    results.memblock[1] = static_memblk;
    results.memblock[2] = static_memblk + results.size;
    results.memblock[3] = static_memblk + results.size * 2;

    results.list = core_list_init(results.size, results.memblock[1], results.seed1);
    core_init_matrix(results.size,
                     results.memblock[2],
                     (ee_s32)results.seed1 | (((ee_s32)results.seed2) << 16),
                     &results.mat);
    core_init_state(results.size, results.seed1, results.memblock[3]);

    iterate(&results);

    errors = check_data_types();
    if (results.crclist != list_known_crc[3])
        errors++;
    if (results.crcmatrix != matrix_known_crc[3])
        errors++;
    if (results.crcstate != state_known_crc[3])
        errors++;

    printf("2K performance run parameters for coremark.\n");
    printf("CoreMark Size    : %u\n", (unsigned)results.size);
    printf("Iterations       : %u\n", (unsigned)results.iterations);
    printf("[0]crclist       : 0x%04x\n", results.crclist);
    printf("[0]crcmatrix     : 0x%04x\n", results.crcmatrix);
    printf("[0]crcstate      : 0x%04x\n", results.crcstate);
    printf("[0]crcfinal      : 0x%04x\n", results.crc);
    if (errors == 0)
        printf("Correct operation validated. CoreMark score is measured by benchmark runner.\n");
    else
        printf("Errors detected\n");

    portable_fini(&results.port);
    errors += clang_mc_coremark_error_count();

    return errors == 0 ? 0 : 900 + errors;
}

#ifdef COREMARK_HOST_CHECK
#include <stdio.h>

int main(void) {
    printf("%d\n", bench_coremark());
    return 0;
}
#endif
