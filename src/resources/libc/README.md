# libc (C implementation)

This directory contains a C libc subset for the clang-mc C pipeline.

Implementation policy:
- Prefer copying/adapting proven picolibc implementations.
- `setjmp`/`longjmp`: intentionally not implemented.
- Filesystem stdio functions: intentionally disabled; kept as commented placeholders in `stdio/fs_disabled.c`.

Current layout:
- `include/`: minimal headers for currently implemented libc subset.
- `string/`: split-by-function string/memory primitives (copied from picolibc style), including token/search helpers (`strtok_r`, `strstr`, `memmem`, etc.).
- `stdlib/`: `abs/labs/atoi/atol/strtol/strtoul/itoa/gcvt/gcvt_fast` + tiny allocator (`malloc_tiny.c`) + `errno` storage.
  `gcvt` uses Ryu-based conversion for higher numeric fidelity; `gcvt_fast` keeps the lightweight path.
- `stdio/`: working `printf` family (`printf/vprintf/snprintf/vsnprintf/sprintf/vsprintf`) and `puts/putchar`.
  Current formatter focus: integer/pointer/string (`%d/%i/%u/%x/%X/%o/%p/%c/%s/%%`, width/precision/flags subset).
  `stdout` path currently depends on `puts` (line-based output primitive), with a single shared line buffer used by both `putchar` and `vprintf`.
