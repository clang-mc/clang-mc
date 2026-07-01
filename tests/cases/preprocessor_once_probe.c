// Exercises the clang-mc mcasm preprocessor's `#once` handling (review item M4).
//
// clang auto-injects `#include "_ll_std"`, `#include "_ll_libc"` and
// `#include "_ll_crt"` at the top of every generated .mcasm. `_ll_crt` itself
// re-includes `_ll_std`, and all of `_ll_std`/`_ll_libc`/`_ll_crt` plus the
// transitively pulled `compiler_rt/*` runtime headers are guarded with `#once`
// and define body labels (runtime functions).
//
// Here we add MORE redundant top-of-file includes of those same `#once`
// headers through file-scope inline assembly. If `#once` ever fails to skip a
// repeated include, the runtime function labels (e.g. compiler_rt routines)
// are emitted twice and the assembler aborts with a duplicate-label error,
// failing this case. With `#once` working, every header is emitted exactly
// once and the program links and returns 0.

__asm__(
    "#include \"_ll_std\"\n"
    "#include \"_ll_libc\"\n"
    "#include \"_ll_crt\"\n"
    "#include \"_ll_std\"\n"
);

int main(void) {
    // Touch a little floating-point + integer division so that some
    // compiler_rt runtime routines are actually referenced/linked; this
    // guarantees the `#once`-guarded runtime headers carry real labels.
    volatile int a = 40;
    volatile int b = 7;
    volatile double x = 2.5;
    int q = a / b;        // pulls integer division runtime
    int r = (int)(x * 4); // pulls floating-point runtime
    if (q != 5)
        return 10 + q;
    if (r != 10)
        return 30 + r;
    return 0;
}
