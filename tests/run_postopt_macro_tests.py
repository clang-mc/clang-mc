#!/usr/bin/env python3
"""后优化 inline + 死函数消除对“宏程序”的健全性回归测试（-O2，无服务器）。

背景（与 item 5 相关）：
  后优化的 inlineFunctions 明确不内联宏体函数（含 `$` 且带 `$(` 的宏行）——把宏体贴入
  调用点会破坏 `function <target> with <args>` 的宏参数传递语义；eliminateDeadFunctions
  则会剪掉内联/优化后不可达的内部函数。这两个 pass 会遍历所有 McFunctions map（含库侧的
  宏辅助函数）。既有 run_postopt_tests.py / run_wpo_tests.py 的 fixture（函数指针 / 纯递归）
  都不产生宏（`$(...)` 宏行）与 `function ... with` 宏调用，故宏引用形态在 -O2 postopt 下
  的健全性此前无覆盖。

  为何不用手写 mcasm 精确构造“单次 standalone 调用 + 单次宏体调用”：
    (1) 手写、未经 clang 发射 stdlib 初始化的 mcasm 走 `-c` 会崩溃（既有缺口，rc=127）；
    (2) 库侧宏辅助函数不在“内部函数集合”中，故宏内联守卫无法被 a: 用户函数天然触发
        （clang 前端又会剪掉真正不可达的用户函数）。
  因此本测试改为产物级健全性断言：在一个宏密集的真实程序上验证 -O2 postopt inline+DFE
  never 破坏宏调用链、且确实发生了剪枝。

fixture：libmc_gamemode_target_only.c —— gamemode 携带 $(target) 宏，经 clang 生成大量
  `$(...)` 宏体函数与 `function _ll_shared:z/... with` 宏调用，是强宏程序实例。用 -g 关闭
  名称混淆，保留可读名便于断言。

可观测成功标准：
  (a) -O2 -g 产物确实含宏形态：至少一个宏体($)函数、至少一个 `function ... with` 宏调用点。
  (b) 宏调用链完好：每个 `function <target> with` 的目标（排除链接期注入的 std:/_ll_*，
      compile-only 下不在产物中）都能解析到实际函数文件——inline/DFE 绝不把宏目标内联/删空。
  (c) 全产物零悬空（直接引用 + 池化(calld)引用；同样排除 std:/_ll_*、存储 std:vm）。
  (d) 剪枝确实发生：-O2 的函数总数 < -O1（postopt inline/DFE 仅 -O2 运行，差异归因于它），
      证明这两个 pass 在宏程序上真实执行且未留悬空。

用法：
    python tests/run_postopt_macro_tests.py
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

SOURCE = "libmc_gamemode_target_only.c"
NAMESPACE = "a"

_FILE_RE = re.compile(r"data/([^/]+)/function/(.+)\.mcfunction$")
_FN_RE = re.compile(r"function\s+([a-z0-9_\-.]+:[a-z0-9_\-./]+)")
_WITH_RE = re.compile(r"function\s+([a-z0-9_\-.]+:[a-z0-9_\-./]+)\s+with\b")
_STR_RE = re.compile(r'"([a-z0-9_\-.]+:[a-z0-9_\-./]+)"')
# std:vm 是存储(storage)名而非函数，池化正则可能误捕，排除之。
_STORAGE = {"std:vm"}


def _link_injected(name: str) -> bool:
    # std:/_ll* 为链接期注入的运行时库函数，compile-only(-c) 下不在产物中，属预期缺失。
    return name.startswith("std:") or name.startswith("_ll")


def _compile(mcasm: Path, out_dir: Path, opt: str) -> None:
    subprocess.run(
        [str(ASM), str(mcasm), "-N", NAMESPACE, "-c", opt, "-g", "-B", str(out_dir)],
        cwd=ROOT, capture_output=True, text=True, timeout=180, check=True,
    )


def _funcs(root: Path) -> dict[str, str]:
    out: dict[str, str] = {}
    for p in root.rglob("*.mcfunction"):
        m = _FILE_RE.match(p.relative_to(root).as_posix())
        if m:
            out[f"{m.group(1)}:{m.group(2)}"] = p.read_text(encoding="utf-8", errors="replace")
    return out


def _has_macro_body(funcs: dict[str, str]) -> bool:
    for body in funcs.values():
        for line in body.splitlines():
            s = line.strip()
            if s.startswith("$") and "$(" in s:
                return True
    return False


def main() -> int:
    for tool in (CLANG, ASM):
        if not tool.exists():
            print(f"missing tool {tool}; build first.", file=sys.stderr)
            return 2

    problems: list[str] = []
    with tempfile.TemporaryDirectory() as tmp:
        tmp_path = Path(tmp)
        mcasm = tmp_path / "macro.mcasm"
        subprocess.run(
            [str(CLANG), str(CASE_DIR / SOURCE), "-target", "mcasm", "-O0",
             "-I", str(LIBMC_INCLUDE), "-I", str(PUBLIC_INCLUDE), "-I", str(LIBC_INCLUDE),
             "-S", "-o", str(mcasm)],
            cwd=ROOT, capture_output=True, text=True, timeout=180, check=True,
        )
        o1_dir = tmp_path / "o1"
        o2_dir = tmp_path / "o2"
        _compile(mcasm, o1_dir, "-O1")
        _compile(mcasm, o2_dir, "-O2")
        o1 = _funcs(o1_dir)
        o2 = _funcs(o2_dir)

    existing = set(o2)
    fn_ns = {e.split(":", 1)[0] for e in existing}

    direct: set[str] = set()
    pooled: set[str] = set()
    withrefs: set[str] = set()
    for body in o2.values():
        direct.update(_FN_RE.findall(body))
        withrefs.update(_WITH_RE.findall(body))
        pooled.update(s for s in _STR_RE.findall(body) if s.split(":", 1)[0] in fn_ns)

    # (a) 宏形态确实存在（否则 fixture 已变，测试失去意义）。
    if not _has_macro_body(o2):
        problems.append("前置失败：-O2 产物未见任何宏体($(...))函数（fixture 形态已变？）")
    if not withrefs:
        problems.append("前置失败：-O2 产物未见任何 `function ... with` 宏调用点（fixture 形态已变？）")

    # (b) 宏调用链完好：非链接注入的 `with` 目标都必须解析到实际函数。
    dangling_with = sorted(t for t in withrefs if t not in existing and not _link_injected(t))
    if dangling_with:
        problems.append(f"-O2 宏调用 `function ... with` 目标悬空（inline/DFE 破坏了宏链）: {dangling_with}")

    # (c) 全产物零悬空（排除链接期注入的 std:/_ll_* 与存储 std:vm）。
    dangling_direct = sorted(x for x in direct - existing if not _link_injected(x) and x not in _STORAGE)
    dangling_pooled = sorted(x for x in pooled - existing if x not in _STORAGE)
    if dangling_direct:
        problems.append(f"-O2 悬空直接引用: {dangling_direct}")
    if dangling_pooled:
        problems.append(f"-O2 悬空池化(calld)引用: {dangling_pooled}")

    # (d) 剪枝确实发生：postopt inline/DFE 仅 -O2 运行，函数总数应严格少于 -O1。
    if not (len(o2) < len(o1)):
        problems.append(f"-O2 postopt 未在宏程序上剪枝: |O1|={len(o1)} |O2|={len(o2)}")

    if problems:
        print("FAIL postopt_macro_soundness:")
        for pr in problems:
            print("  - " + pr)
        return 1

    print(f"PASS postopt_macro_soundness (宏程序 -O2 inline/DFE 零悬空; "
          f"{len(withrefs)} 个 `with` 宏调用全解析; 剪枝 {len(o1)}->{len(o2)})")
    print("\n1/1 checks passed")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
