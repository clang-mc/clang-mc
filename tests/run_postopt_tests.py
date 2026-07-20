#!/usr/bin/env python3
"""后优化流水线新增 pass（调用内联 + 死函数消除）的结构回归测试。

Task 3 在后优化流水线（mcfunction 文本层，仅 -O2）加入两个整图 pass：
  - inlineFunctions：把只被引用一次的内部函数并入其唯一调用点（尾调用/独立调用），
    随后删除该函数。宏函数、被 calld 间接调用（名字作为 NBT 字符串出现）的函数不内联。
  - eliminateDeadFunctions：从根集合（startFunc ∪ 导出/extern 函数）做可达性分析，
    删除不可达的内部函数；可达性同时跟随直接调用与 movd 池化的 NBT 字符串。

隔离手法：内联/死码消除只在 -O2 运行，-O1 不运行（IR 级优化在 -O1/-O2 完全相同），
故 -O1 与 -O2 的 mcfunction 差异恰好归因于后优化。用 `-g` 关闭名称混淆保留可读名，
便于对具名函数做断言。fixture 选 function_pointer_direct.c（不触发 SpecialFunctionPass，
-g 下产物自洽），它经函数指针间接调用，且基本块以尾调用链接——正是内联的目标形态。

关于死函数消除：clang→mcasm 流水线只发射可达函数（clang 前端剪枝、IR 优化不孤立整函数、
验证器拒绝手写不可达标签），故标准产物中通常无死函数可供删除——该 pass 是安全网，
当死函数出现时才生效。本测试因此验证其“不误删可达函数 / 不产生悬空引用”的正确性属性
（与内联一起，通过 -O2 产物零悬空来保证）。

用法：
    python tests/run_postopt_tests.py
"""
from __future__ import annotations

import re
import subprocess
import sys
import tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
CASE_DIR = ROOT / "tests" / "cases"
BIN_DIR = ROOT / "build" / "bin"
CLANG = BIN_DIR / ("clang.exe" if sys.platform == "win32" else "clang")
ASM = BIN_DIR / ("clang-mc.exe" if sys.platform == "win32" else "clang-mc")
LIBMC_INCLUDE = ROOT / "build" / "libmc" / "include"
PUBLIC_INCLUDE = ROOT / "build" / "include"
LIBC_INCLUDE = ROOT / "src" / "resources" / "libc" / "include"

SOURCE = "function_pointer_direct.c"
NAMESPACE = "a"
# 该 fixture 中一个“单次尾调用目标”的内部基本块，-O2 应被内联进 main 并删除。
INLINE_TARGET = "a:probe/main.lbb0_1"

_FILE_RE = re.compile(r"data/([^/]+)/function/(.+)\.mcfunction$")
_FN_RE = re.compile(r"function\s+([a-z0-9_\-.]+:[a-z0-9_\-./]+)")
_STR_RE = re.compile(r'"([a-z0-9_\-.]+:[a-z0-9_\-./]+)"')


def _compile(out_dir: Path, opt: str, mcasm: Path) -> None:
    subprocess.run(
        [str(ASM), str(mcasm), "-N", NAMESPACE, "-c", opt, "-g", "-B", str(out_dir)],
        cwd=ROOT, capture_output=True, text=True, timeout=120, check=True,
    )


def _funcs(root: Path) -> dict[str, str]:
    out: dict[str, str] = {}
    for p in root.rglob("*.mcfunction"):
        m = _FILE_RE.match(p.relative_to(root).as_posix())
        if m:
            out[f"{m.group(1)}:{m.group(2)}"] = p.read_text(encoding="utf-8", errors="replace")
    return out


def _dangling(funcs: dict[str, str]) -> tuple[list[str], list[str]]:
    existing = set(funcs)
    fn_ns = {e.split(":", 1)[0] for e in existing}
    direct: set[str] = set()
    pooled: set[str] = set()
    for body in funcs.values():
        direct.update(_FN_RE.findall(body))
        pooled.update(s for s in _STR_RE.findall(body) if s.split(":", 1)[0] in fn_ns)
    # std:/_ll* 为运行时库函数，链接阶段注入，compile-only 下不在产物中，属预期缺失。
    dangling_direct = sorted(
        x for x in direct - existing if not x.startswith("std:") and not x.startswith("_ll")
    )
    dangling_pooled = sorted(pooled - existing)
    return dangling_direct, dangling_pooled


def main() -> int:
    for tool in (CLANG, ASM):
        if not tool.exists():
            print(f"missing tool {tool}; build first.", file=sys.stderr)
            return 2

    problems: list[str] = []
    with tempfile.TemporaryDirectory() as tmp:
        tmp_path = Path(tmp)
        mcasm = tmp_path / "probe.mcasm"
        subprocess.run(
            [str(CLANG), str(CASE_DIR / SOURCE), "-target", "mcasm", "-O0",
             "-I", str(LIBMC_INCLUDE), "-I", str(PUBLIC_INCLUDE), "-I", str(LIBC_INCLUDE),
             "-S", "-o", str(mcasm)],
            cwd=ROOT, capture_output=True, text=True, timeout=120, check=True,
        )
        o1_dir = tmp_path / "o1"
        o2_dir = tmp_path / "o2"
        _compile(o1_dir, "-O1", mcasm)
        _compile(o2_dir, "-O2", mcasm)
        o1 = _funcs(o1_dir)
        o2 = _funcs(o2_dir)

    # 1) 内联触发：单次尾调用目标在 -O1 存在、-O2 被内联并删除。
    if INLINE_TARGET not in o1:
        problems.append(f"前置失败：{INLINE_TARGET} 未在 -O1 出现（fixture 形态已变？）")
    if INLINE_TARGET in o2:
        problems.append(f"内联未生效：{INLINE_TARGET} 在 -O2 仍存在（应被内联进调用者并删除）")

    # 2) 内联正确性：-O1 下 main 尾调用该目标；-O2 下 main 不再引用它（尾调用被其函数体替换）。
    main_o1 = o1.get("a:probe/main", "")
    main_o2 = o2.get("a:probe/main", "")
    if f"function {INLINE_TARGET}" not in main_o1:
        problems.append("前置失败：-O1 的 a:probe/main 未尾调用内联目标")
    if INLINE_TARGET in main_o2:
        problems.append("内联不彻底：-O2 的 a:probe/main 仍引用被内联目标")
    # 目标原本尾调用 a:probe/main.lbb0_3，内联后该尾调用应出现在 main 中（函数体被贴入）。
    if "a:probe/main.lbb0_3" not in main_o2:
        problems.append("内联内容缺失：-O2 的 a:probe/main 未含被内联目标的尾链 a:probe/main.lbb0_3")

    # 3) 内联 + 死函数消除的正确性：-O2 产物无悬空引用（未误删/未留悬挂调用）。
    dd, dp = _dangling(o2)
    if dd:
        problems.append(f"-O2 出现悬空直接引用: {dd}")
    if dp:
        problems.append(f"-O2 出现悬空池化(calld)引用: {dp}")

    # 4) WPO 契约：-O2 可以裁剪未使用的外部库函数，但不得新增 -O1
    # 未链接的外部函数；前面的悬空引用检查保证被保留的调用仍有目标。
    ext1 = {f for f in o1 if not f.startswith(NAMESPACE + ":")}
    ext2 = {f for f in o2 if not f.startswith(NAMESPACE + ":")}
    unexpected_external = sorted(ext2 - ext1)
    if unexpected_external:
        problems.append(f"-O2 引入了 -O1 中不存在的外部/库函数: {unexpected_external}")
    if not ext1 - ext2:
        problems.append("-O2 未裁剪任何未使用的外部/库函数；WPO fixture 或链接契约已变化")

    if problems:
        print("FAIL postopt_inline_dce:")
        for pr in problems:
            print("  - " + pr)
        return 1

    print(f"PASS postopt_inline_dce (内联并删除 {INLINE_TARGET}; -O2 产物零悬空)")
    print("\n1/1 checks passed")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
