# Benchmarks

This directory contains Mercury JIT benchmark cases for the local Fabric
1.21.4 server under `run/server`.

Run from the repository root:

```powershell
python benchmark\run_benchmarks.py --samples 3
```

The runner copies `D:/McFunctionPlus/build/libs/Mercury-1.0-SNAPSHOT.jar` into
`run/server/mods`, starts the local server, and measures each case twice:

- `/mercury jit disable`
- `/mercury jit enable`

C cases are compiled with `-target mcasm -fdeclspec`. Their benchmark entry
functions are exported with `__declspec(dllexport)` and are invoked after normal
datapack load through `_ll_shared:<function_name>`.

The `coremark` case compiles the EEMBC CoreMark list, matrix, and state
workloads with the local port under `benchmark/coremark_port/`. It uses the
standard 2K performance data size, validates the CoreMark CRCs, prints CoreMark
output through libc `printf`, and reports an iterations/sec score. The runner
also spawns the Carpet fake player `CodexBot` so `printf` / `puts` output sent
through `tellraw @a` has a receiver.

Use `--coremark-iterations N` to change the CoreMark iteration count. The default
is intentionally small because datapack execution is slow; increase it when you
need a longer CoreMark run.

The latest report is written to `run/mercury-benchmark/report.md`.
