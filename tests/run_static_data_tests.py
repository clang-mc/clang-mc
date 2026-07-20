#!/usr/bin/env python3
"""Regression tests for static-data layout across multiple mcasm inputs."""
from __future__ import annotations

import re
import shutil
import subprocess
import sys
import tempfile
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
CASE_DIR = ROOT / "tests" / "static_data_cases"
BIN = ROOT / "build" / "bin" / ("clang-mc.exe" if sys.platform == "win32" else "clang-mc")


def compile_pack(*fixtures: str, opt: str) -> list[str]:
    with tempfile.TemporaryDirectory() as tmp:
        temp = Path(tmp)
        sources = []
        for fixture in fixtures:
            source = temp / fixture
            shutil.copyfile(CASE_DIR / fixture, source)
            sources.append(source)

        build_dir = temp / "build"
        output = temp / "pack"
        subprocess.run(
            [str(BIN), "-N", "static_data_test", "-B", str(build_dir), "-o", str(output), opt, *map(str, sources)],
            cwd=temp,
            check=True,
            capture_output=True,
            text=True,
            timeout=60,
        )
        return [
            path.read_text(encoding="utf-8")
            for path in build_dir.rglob("*.mcfunction")
        ]


def find_static_loader(functions: list[str], expected_writes: tuple[str, ...]) -> str:
    matches = [
        function
        for function in functions
        if all(write in function for write in expected_writes)
    ]
    if len(matches) != 1:
        raise AssertionError(f"expected one static-data loader with {expected_writes}, found {len(matches)}")
    return matches[0]


def test_multifile_layout(opt: str) -> None:
    functions = compile_pack("multifile_a.mcasm", "multifile_b.mcasm", opt=opt)
    loader = find_static_loader(
        functions,
        (
            "data modify storage std:vm heap[0] set value 111",
            "data modify storage std:vm heap[1] set value 222",
        ),
    )
    if "scoreboard players add shp vm_regs 2" not in loader:
        raise AssertionError("static-data loader did not advance shp by both data cells")

    static_base_plus_one = re.compile(
        r"scoreboard players operation s\d+ vm_regs = sb_[0-9a-f]+ vm_regs\n"
        r"scoreboard players add s\d+ vm_regs 1"
    )
    if not any(static_base_plus_one.search(function) for function in functions):
        raise AssertionError("no generated function reads the second static cell at static_base + 1")
    if not any(
        re.search(r"scoreboard players get sb_[0-9a-f]+ vm_regs", function)
        for function in functions
    ):
        raise AssertionError("no generated function reads the first static cell at static_base + 0")


def test_trailing_no_static_input() -> None:
    functions = compile_pack("single_static.mcasm", "no_static.mcasm", opt="-O0")
    find_static_loader(functions, ("data modify storage std:vm heap[0] set value 333",))


def main() -> int:
    if not BIN.exists():
        print(f"clang-mc not found at {BIN}; build first.", file=sys.stderr)
        return 2

    checks = (
        ("multifile_static_layout_o0", lambda: test_multifile_layout("-O0")),
        ("multifile_static_layout_o1", lambda: test_multifile_layout("-O1")),
        ("trailing_no_static_preserves_loader", test_trailing_no_static_input),
    )
    failures = 0
    for name, check in checks:
        try:
            check()
        except Exception as exc:  # noqa: BLE001
            print(f"FAIL {name}: {exc}")
            failures += 1
        else:
            print(f"PASS {name}")

    print(f"\n{len(checks) - failures}/{len(checks)} checks passed")
    return 1 if failures else 0


if __name__ == "__main__":
    raise SystemExit(main())
