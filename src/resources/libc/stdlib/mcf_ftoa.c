/*
 * Runtime fallback for clang's __builtin_mcf_ftoa builtin.
 *
 * The builtin folds compile-time-constant arguments straight to a string
 * literal (zero soft-float). For a non-constant argument the front end emits a
 * call to this function instead, so we must provide the same "decimal string,
 * no type suffix" contract at run time by reusing the existing %g-style gcvt.
 *
 * Single-threaded VM: a static buffer is fine, valid until the next call.
 */

#include <stdlib.h>

const char *
__mcf_ftoa(double v)
{
    static char buf[32];

    gcvt_fast(v, 9, buf);
    return buf;
}
