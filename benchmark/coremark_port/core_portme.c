#include "coremark.h"

#include <stdarg.h>
#include <stdio.h>

#if VALIDATION_RUN
volatile ee_s32 seed1_volatile = 0x3415;
volatile ee_s32 seed2_volatile = 0x3415;
volatile ee_s32 seed3_volatile = 0x66;
#endif
#if PERFORMANCE_RUN
volatile ee_s32 seed1_volatile = 0x0;
volatile ee_s32 seed2_volatile = 0x0;
volatile ee_s32 seed3_volatile = 0x66;
#endif
#if PROFILE_RUN
volatile ee_s32 seed1_volatile = 0x8;
volatile ee_s32 seed2_volatile = 0x8;
volatile ee_s32 seed3_volatile = 0x8;
#endif
volatile ee_s32 seed4_volatile = ITERATIONS;
volatile ee_s32 seed5_volatile = 0;

ee_u32 default_num_contexts = 1;
int coremark_port_error_count = 0;
static CORETIMETYPE start_time_val;
static CORETIMETYPE stop_time_val;

void start_time(void) {
    start_time_val = 0;
}

void stop_time(void) {
    stop_time_val = 1;
}

CORE_TICKS get_time(void) {
    return stop_time_val - start_time_val;
}

secs_ret time_in_secs(CORE_TICKS ticks) {
    return ticks;
}

void portable_init(core_portable *p, int *argc, char *argv[]) {
    (void)argc;
    (void)argv;
    p->portable_id = 1;
}

void portable_fini(core_portable *p) {
    p->portable_id = 0;
}

int ee_printf(const char *fmt, ...) {
    int ret;
    va_list ap;

    if (fmt != NULL) {
        if (fmt[0] == '[')
            coremark_port_error_count++;
        if (fmt[0] == 'E' && fmt[1] == 'R' && fmt[2] == 'R')
            coremark_port_error_count++;
    }
    va_start(ap, fmt);
    ret = vprintf(fmt, ap);
    va_end(ap);
    return ret;
}

CORE_TICKS clang_mc_coremark_elapsed_ticks(void) {
    return get_time();
}

ee_s32 clang_mc_coremark_error_count(void) {
    return coremark_port_error_count;
}
