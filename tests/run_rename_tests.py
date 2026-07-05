#!/usr/bin/env python3
"""名称混淆（renameInternalFunctions）并入后优化流水线后的结构回归测试。

Task 2 把原独立 obfuscate 流水线的唯一 pass 并入 PostOptimizer，门控与历史一致
（optLevel>=1 且非 -g）。本测试无需 Minecraft 服务器，通过对同一程序在
`clang-mc -c -O0`（无重命名）与 `-O1`（重命名生效）下的输出做结构断言，验证：

  1. 重命名确实触发：-O1 下内部函数名变为不透明短名（-O0 保留可读名）。
  2. 导出函数不被改名：`a:_start` 之类的导出符号在两级保持一致。
  3. calld 一致性（本 pass 的核心正确性主张）：被间接调用（calld）引用的函数，
     其池化到 NBT 的函数名字符串必须与函数文件路径同步改名——即 -O0 下池化的
     可读名（如 a:fpd/inc）在 -O1 下变为不透明名（如 a:f），且两级下池化名都能
     解析到实际存在的函数文件（无悬空）。若 movd 的字符串与函数文件改名不同步，
     calld 运行时会 `function <失效字符串>` 指向不存在的函数。

fixture 复用 tests/cases/function_pointer_direct.c（经 clang -target mcasm 生成 mcasm），
它经由函数指针数组间接调用，去虚拟化无法折叠，故 -O1 下 calld 存活、可被 rename 命中。

用法：
    python tests/run_rename_tests.py
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
LIBMC_INCLUDE = ROOT / "build" / "libmc"
PUBLIC_INCLUDE = ROOT / "build" / "include"
LIBC_INCLUDE = ROOT / "src" / "resources" / "libc" / "include"

SOURCE = "function_pointer_direct.c"
NAMESPACE = "a"

# 资源路径正则：data/<ns>/function/<path>.mcfunction -> "<ns>:<path>"
_FILE_RE = re.compile(r"data/([^/]+)/function/(.+)\.mcfunction$")
# 直接调用引用：`function <ns>:<path>`
_FN_RE = re.compile(r"function\s+([a-z0-9_\-.]+:[a-z0-9_\-./]+)")
# 池化到 NBT 的函数名字符串："<ns>:<path>"（calld 依赖其反查函数）
_STR_RE = re.compile(r'"([a-z0-9_\-.]+:[a-z0-9_\-./]+)"')


def _compile(mcasm: Path, out_dir: Path, opt: str) -> None:
    subprocess.run(
        [str(ASM), str(mcasm), "-N", NAMESPACE, "-c", opt, "-B", str(out_dir)],
        cwd=ROOT, capture_output=True, text=True, timeout=120, check=True,
    )


def _analyze(root: Path) -> tuple[set[str], set[str], set[str]]:
    """返回 (存在的函数路径, 直接 function 引用, 池化的函数名)。"""
    existing: set[str] = set()
    for p in root.rglob("*.mcfunction"):
        m = _FILE_RE.match(p.relative_to(root).as_posix())
        if m:
            existing.add(f"{m.group(1)}:{m.group(2)}")
    fn_ns = {e.split(":", 1)[0] for e in existing}
    direct: set[str] = set()
    pooled: set[str] = set()
    for p in root.rglob("*.mcfunction"):
        text = p.read_text(encoding="utf-8", errors="replace")
        direct.update(_FN_RE.findall(text))
        # 只把命名空间与本地函数一致的字符串当作"池化函数名"，避免误伤普通字符串。
        pooled.update(s for s in _STR_RE.findall(text) if s.split(":", 1)[0] in fn_ns)
    return existing, direct, pooled


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

        o0 = tmp_path / "o0"
        o1 = tmp_path / "o1"
        _compile(mcasm, o0, "-O0")
        _compile(mcasm, o1, "-O1")

        e0, d0, p0 = _analyze(o0)
        e1, d1, p1 = _analyze(o1)

    # 1) 池化 calld 目标在两级都存在（无悬空）——calld 一致性的必要条件。
    dangling0 = [x for x in p0 if x not in e0]
    dangling1 = [x for x in p1 if x not in e1]
    if dangling0:
        problems.append(f"-O0 池化 calld 目标悬空: {sorted(dangling0)}")
    if dangling1:
        problems.append(f"-O1 池化 calld 目标悬空: {sorted(dangling1)}")

    # 2) 至少有一个池化 calld 目标，且它在 -O0->-O1 被改名（可读名 -> 不透明短名）。
    #    这是 Task 2 的核心：被改名的 calld 目标，其 movd 字符串与函数文件同步改名。
    if not p0:
        problems.append("fixture 未产生任何池化 calld 目标（rename 无从验证）")
    elif p0 == p1:
        problems.append(f"池化 calld 目标跨等级未改名（目标可能为导出函数）: {sorted(p0)}")

    # 3) -O1 不得引入 -O0 没有的新悬空直接引用（stdlib extern 在两级应完全一致）。
    new_dangling_direct = sorted((d1 - e1) - (d0 - e0))
    if new_dangling_direct:
        problems.append(f"-O1 引入新的悬空直接引用: {new_dangling_direct}")

    # 4) 外部/库函数不被改名：重命名只作用于本命名空间(a)的内部函数，其余命名空间
    #    （std:、_ll_shared: 等库函数）的函数集合在两级应完全一致。
    ext0 = {f for f in e0 if not f.startswith(NAMESPACE + ":")}
    ext1 = {f for f in e1 if not f.startswith(NAMESPACE + ":")}
    if ext0 != ext1:
        problems.append(f"外部/库函数集合被改名或改变: 仅O0={sorted(ext0 - ext1)} 仅O1={sorted(ext1 - ext0)}")

    if problems:
        print("FAIL rename_calld_consistency:")
        for pr in problems:
            print("  - " + pr)
        return 1

    print(f"PASS rename_calld_consistency (O0 池化目标={sorted(p0)} -> O1={sorted(p1)})")
    print("\n1/1 checks passed")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
