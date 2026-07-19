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
    # 预处理器：字符串中的转义引号不能提前结束字符串范围；保留其中连续空格。
    Check(
        "preprocessor_escaped_quote_preserves_whitespace",
        "preprocessor_escaped_quote_whitespace.mcasm",
        ("-O0",),
        contains=(r'inline tellraw @a {"text":"a\"b  c"}',),
    ),
    # -O1：五个 pass 全部生效。
    Check(
        "opt_probe_o1_optimized",
        "opt_probe.mcasm",
        ("-O1",),
        contains=("mov r0, 15", "mov r1, 15", "mov r2, 0", "mov r6, 8", "call helper", "mov rax, r1"),
        absent=("add r0, 5", "call single_use", "single_use:", "calld r5", "mov r4, r4", "add r3, 0"),
    ),

    # --- DeadCodePass 正向+负向（该 pass 此前零覆盖）---
    # 正向：直线死存储首条被删；负向：rax 豁免 / 算术读旧值 / movd 副作用，三类均保留。
    Check(
        "dce_dead_store_removed_and_kept",
        "dce_probe.mcasm",
        ("-O1",),
        contains=(
            "mov r0, 222",              # 覆写者存活
            "mov rax, 33", "mov rax, 44",  # rax 存储豁免 DCE，两条都在
            "mov r1, 77", "add r1, r2",    # 算术读旧值 -> 存储保留
            "movd r3, sink",               # movd 有副作用 -> 即便被覆写也保留
        ),
        absent=("mov r0, 111",),        # 死存储被删（成为 nop）
    ),

    # --- DevirtualizePass 负向：无前置 movd 的裸 calld / 隔着 call 屏障的 calld 均不去虚拟化 ---
    Check(
        "devirt_neg_bare_and_barrier",
        "devirt_neg_probe.mcasm",
        ("-O1",),
        contains=("calld r5", "call keep"),  # calld 保持；屏障(keep 调 2 次故不被内联)持久
        absent=("call helper",),             # 绝不产生直接 call helper
    ),

    # --- ConstantHidingPass + IndirectCallPass 负向（--enable-obf）---
    # rsp 立即数不被隐藏；高 fan-in / 循环体内的 call 不改写为间接调用。
    Check(
        "obf_neg_stack_ptr_fanin_loop",
        "obf_neg_probe.mcasm",
        ("--enable-obf",),
        contains=(
            "mov rsp, 16384",   # 栈指针立即数保留（不可跟踪，不隐藏）
            "call multi",       # 高 fan-in(=2) 冷调用保持直接
            "call loopfn",      # 循环体内调用保持直接
            "call cold",        # 热根内调用保持直接
            "calld",            # 正控：cold 单 fan-in 的 call solo 被改写为间接调用
        ),
        absent=(
            "mov r0, 4242",     # 正控：可跟踪寄存器立即数被隐藏
            "call solo",        # 正控：被改写为 movd+calld
        ),
    ),

    # --- InlinePass 负向：被调 2 次 / 非叶子体 / 可被落入(fall-through) 三类均不内联 ---
    Check(
        "inline_neg_multi_nonleaf_fallthrough",
        "inline_neg_probe.mcasm",
        ("-O1",),
        contains=(
            "call twice", "twice:",        # 被调 2 次 -> 不内联
            "call nonleaf", "nonleaf:",    # 非叶子体（含 call）-> 不内联
            "call fallthru", "fallthru:",  # 可被顺序落入 -> 不内联
        ),
    ),

    # --- ConstantFold 扩充：sub/mul 恒等化简、div 不折叠、加法环绕 ---
    Check(
        "cfold_extra_identities_div_wrap",
        "cfold_probe.mcasm",
        ("-O1",),
        contains=(
            "div r2, 2",              # MC 向下取整除法 -> 不折叠，保留
            "mov r3, -2147483648",    # INT_MAX + 1 环绕
            "mov r2, 8",              # div 的被除数存活
        ),
        absent=(
            "sub r0, 0",   # 代数恒等 -> nop
            "mul r1, 1",   # 代数恒等 -> nop
            "add r3, 1",   # 已折叠为环绕后的 mov
        ),
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
