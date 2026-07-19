#!/usr/bin/env python3
"""Regression tests for mcasm immediate-number parsing (GitHub issue #5)."""
from __future__ import annotations

import subprocess
import sys
import tempfile
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
CASE_DIR = ROOT / "tests" / "ir_cases"
BIN = ROOT / "build" / "bin" / ("clang-mc.exe" if sys.platform == "win32" else "clang-mc")


def compile_fixture(fixture: str) -> tuple[subprocess.CompletedProcess[str], str]:
    source = CASE_DIR / fixture
    with tempfile.TemporaryDirectory() as tmp:
        work = Path(tmp) / fixture
        work.write_text(source.read_text(encoding="utf-8"), encoding="utf-8")
        result = subprocess.run(
            [str(BIN), str(work), "-N", "number_parse", "-E", "-B", str(Path(tmp) / "build")],
            cwd=tmp,
            capture_output=True,
            text=True,
            encoding="utf-8",
            errors="replace",
            timeout=60,
        )
        ir_path = work.with_suffix(".mci")
        ir = ir_path.read_text(encoding="utf-8") if ir_path.exists() else ""
        return result, ir


def main() -> int:
    if not BIN.exists():
        print(f"clang-mc not found at {BIN}; build first.", file=sys.stderr)
        return 2

    valid, ir = compile_fixture("number_format_prefix_suffix_valid.mcasm")
    if valid.returncode:
        print("FAIL prefixed hexadecimal literals ending in b were rejected")
        print(valid.stderr, file=sys.stderr)
        return 1
    expected = ("mov r0, 11", "mov r1, 27", "mov r2, 43", "mov r3, 59", "mov r4, 75", "mov r5, 91")
    missing = [instruction for instruction in expected if instruction not in ir]
    if missing:
        print("FAIL prefixed hexadecimal literals produced wrong values: " + ", ".join(missing))
        return 1
    print("PASS prefixed hexadecimal literals ending in b")

    invalid, _ = compile_fixture("number_format_prefix_suffix_invalid.mcasm")
    if not invalid.returncode:
        print("FAIL conflicting prefix/suffix literal 0b11o was accepted")
        return 1
    print("PASS conflicting prefix/suffix literal is rejected")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
