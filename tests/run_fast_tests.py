#!/usr/bin/env python3
"""Run every local, server-free regression gate in a stable order."""
from __future__ import annotations

import subprocess
import sys
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
PYTHON = sys.executable

COMMANDS: tuple[tuple[str, list[str]], ...] = (
    ("C++ unit tests", ["xmake", "run", "clang-mc-unit"]),
    ("command schema", [PYTHON, "tests/test_command_schema.py"]),
    ("generated bindings", [PYTHON, "tests/test_generated_bindings.py"]),
    ("number parser", [PYTHON, "tests/run_number_parse_tests.py"]),
    ("IR optimization", [PYTHON, "tests/run_ir_opt_tests.py"]),
    ("Verifier", [PYTHON, "tests/run_verify_tests.py"]),
    ("post optimizer", [PYTHON, "tests/run_postopt_tests.py"]),
    ("postopt macros", [PYTHON, "tests/run_postopt_macro_tests.py"]),
    ("rename", [PYTHON, "tests/run_rename_tests.py"]),
    ("special functions", [PYTHON, "tests/run_special_function_tests.py"]),
    ("static data", [PYTHON, "tests/run_static_data_tests.py"]),
    ("whole-program optimization", [PYTHON, "tests/run_wpo_tests.py"]),
    ("obfuscation", [PYTHON, "tests/run_obf_tests.py"]),
)


def main() -> int:
    failures: list[str] = []
    for name, command in COMMANDS:
        print(f"\n== {name} ==", flush=True)
        result = subprocess.run(command, cwd=ROOT)
        if result.returncode:
            failures.append(name)

    if failures:
        print(f"\nFAIL: {len(failures)} gate(s): {', '.join(failures)}", file=sys.stderr)
        return 1
    print(f"\nPASS: {len(COMMANDS)} fast gates")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
