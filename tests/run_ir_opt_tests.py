#!/usr/bin/env python3
"""mcasm(IR)级优化/混淆的轻量回归测试。

对每个 fixture 用 `clang-mc -E` 生成 IR（.mci），断言优化/混淆前后的关键变换。
无需 Minecraft 服务器，快速、确定性强。服务器端语义等价测试见 run_datapack_tests.py。

用法：
    python tests/run_ir_opt_tests.py
"""
from __future__ import annotations

import subprocess
import sys
import tempfile
from dataclasses import dataclass, field
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
CASE_DIR = ROOT / "tests" / "ir_cases"
BIN = ROOT / "build" / "bin" / ("clang-mc.exe" if sys.platform == "win32" else "clang-mc")


@dataclass(frozen=True)
class Check:
    name: str
    fixture: str
    flags: tuple[str, ...]
    contains: tuple[str, ...] = field(default_factory=tuple)
    absent: tuple[str, ...] = field(default_factory=tuple)


CHECKS: list[Check] = [
    # 基线：-O0 不应改动 IR（内联/折叠都不发生）。
    Check(
        "opt_probe_o0_untouched",
        "opt_probe.mcasm",
        ("-O0",),
        contains=("add r0, 5", "call single_use", "calld r5", "single_use:", "mul r2, 0"),
    ),
    # -O1：五个 pass 全部生效。
    Check(
        "opt_probe_o1_optimized",
        "opt_probe.mcasm",
        ("-O1",),
        contains=("mov r0, 15", "mov r1, 15", "mov r2, 0", "mov r6, 8", "call helper", "mov rax, r1"),
        absent=("add r0, 5", "call single_use", "single_use:", "calld r5", "mov r4, r4", "add r3, 0"),
    ),
]


def run_ir(fixture: str, flags: tuple[str, ...]) -> str:
    src = CASE_DIR / fixture
    with tempfile.TemporaryDirectory() as tmp:
        work = Path(tmp) / fixture
        work.write_text(src.read_text(encoding="utf-8"), encoding="utf-8")
        build = Path(tmp) / "b"
        subprocess.run(
            [str(BIN), str(work), "-N", "a", "-E", "-B", str(build), *flags],
            cwd=tmp, capture_output=True, text=True, timeout=60,
        )
        mci = work.with_suffix(".mci")
        if not mci.exists():
            raise RuntimeError(f"{fixture} {flags}: no .mci produced")
        return mci.read_text(encoding="utf-8")


def main() -> int:
    if not BIN.exists():
        print(f"clang-mc not found at {BIN}; build first.", file=sys.stderr)
        return 2

    failures = 0
    for check in CHECKS:
        try:
            ir = run_ir(check.fixture, check.flags)
        except Exception as exc:  # noqa: BLE001
            print(f"FAIL {check.name}: {exc}")
            failures += 1
            continue

        problems = []
        for token in check.contains:
            if token not in ir:
                problems.append(f"missing '{token}'")
        for token in check.absent:
            if token in ir:
                problems.append(f"unexpected '{token}'")

        if problems:
            failures += 1
            print(f"FAIL {check.name}: " + "; ".join(problems))
        else:
            print(f"PASS {check.name}")

    print(f"\n{len(CHECKS) - failures}/{len(CHECKS)} checks passed")
    return 1 if failures else 0


if __name__ == "__main__":
    raise SystemExit(main())
