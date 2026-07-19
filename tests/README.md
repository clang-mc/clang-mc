# Runtime Tests

This directory contains end-to-end datapack runtime regression tests for `clang-mc`.

The cases under [`tests/cases`](D:\clang-mc\tests\cases) are small C programs that compile through:

1. `clang.exe -target mcasm`
2. `clang-mc.exe`
3. Minecraft datapack load + VM execution on the local server in `run/server`

The Python runner at [`tests/run_datapack_tests.py`](D:\clang-mc\tests\run_datapack_tests.py) performs the full loop:

- compile each case to `.mcasm`
- assemble it to a datapack zip
- start the local Fabric server with RCON
- install the datapack
- run `reload`
- wait for `std:init_vm` and scheduled program start
- read `rax` / `rsp`
- scan logs for runtime failures

## Before Running

If you changed generated runtime sources, refresh artifacts first:

```powershell
cd D:\clang-mc\src\resources
bash ./build_libc.sh
bash ./build_crt.sh
cd D:\clang-mc
xmake
```

If you only changed test cases or the runner, rebuilding is not required.

## Usage

```powershell
python D:\clang-mc\tests\run_datapack_tests.py
```

Useful options:

```powershell
python D:\clang-mc\tests\run_datapack_tests.py --case float
python D:\clang-mc\tests\run_datapack_tests.py --keep-tmp
```

Parser-only regression tests do not require a Minecraft server. For example,
the immediate-number parsing regression for GitHub issue #5 can be run with:

```powershell
python D:\clang-mc\tests\run_number_parse_tests.py
```

The runner uses `run/server/server.properties` for RCON host, port, and password.
Temporary build/test artifacts are created under `run/tmp-test-suite/` and are deleted on success unless `--keep-tmp` is used.
