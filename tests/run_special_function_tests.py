#!/usr/bin/env python3
"""SpecialFunctionPass（generated/__bit_shr 固定实现）的结构回归测试。

背景（修复的既有 bug）：
  后优化的 SpecialFunctionPass 会把带 `# label: "__bit_shr"` 的函数体整体替换为一份
  手写优化实现。旧实现把目标写死为 a:o / a:p / a:a / a:n —— 这些是作者当年在“名称混淆
  改名之后”抓取到的观测短名。而该 pass 只在 -g（保留 `# label` 注释）时命中，-g 又恰好
  关闭名称混淆：于是 a:o/a:p/a:n 目标文件根本不存在（悬空），a:a 还错误指向 Builder 的
  load 调度函数（静默语义错误）。no-g 下 `# label` 被剥离、pass 不触发，发货配置反而正确。

修复：把固定实现改为“自包含”——仅引用稳定的真实运行时函数 __pow2u（命名空间从原始函数体
  动态抽取，不再写死 a:），其余分支内联展开，交由既有 ExecuteGroupPass 落成真实的
  `_postopt_*` 辅助函数。这样 -g（混淆关）与 no-g（混淆开）两种模式下都不悬空、语义正确，
  且不再依赖混淆恰好产出特定短名。

本测试无需 Minecraft 服务器，通过结构断言验证：
  1. -O2 -g 下 SpecialFunctionPass 确实命中（__bit_shr 被替换为无栈帧的自包含实现）。
  2. -O2 -g 下 __bit_shr 及全产物零悬空；被替换体引用的 __pow2u 真实存在。
  3. 被替换体不再引用任何“裸单字母短名”式的脆弱目标（消除对混淆命名的依赖）。
  4. -O2（no-g，发货配置）零悬空。

fixture 复用 tests/cases/bits_probe.c（`>>` 触发 __bit_shr，编译期即入 map，-c 可复现）。

用法：
    python tests/run_special_function_tests.py
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

SOURCE = "bits_probe.c"
NAMESPACE = "a"
BIT_SHR = f"{NAMESPACE}:bits/__bit_shr"
POW2U = f"{NAMESPACE}:bits/__pow2u"

_FILE_RE = re.compile(r"data/([^/]+)/function/(.+)\.mcfunction$")
_FN_RE = re.compile(r"function\s+([a-z0-9_\-.]+:[a-z0-9_\-./]+)")
_STR_RE = re.compile(r'"([a-z0-9_\-.]+:[a-z0-9_\-./]+)"')


def _compile(mcasm: Path, out_dir: Path, debug: bool) -> None:
    args = [str(ASM), str(mcasm), "-N", NAMESPACE, "-c", "-O2", "-B", str(out_dir)]
    if debug:
        args.insert(-2, "-g")
    subprocess.run(args, cwd=ROOT, capture_output=True, text=True, timeout=120, check=True)


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
    dd = sorted(x for x in direct - existing if not x.startswith("std:") and not x.startswith("_ll"))
    dp = sorted(pooled - existing)
    return dd, dp


def main() -> int:
    for tool in (CLANG, ASM):
        if not tool.exists():
            print(f"missing tool {tool}; build first.", file=sys.stderr)
            return 2

    problems: list[str] = []
    with tempfile.TemporaryDirectory() as tmp:
        tmp_path = Path(tmp)
        mcasm = tmp_path / "bits.mcasm"
        subprocess.run(
            [str(CLANG), str(CASE_DIR / SOURCE), "-target", "mcasm", "-O0",
             "-I", str(LIBMC_INCLUDE), "-I", str(PUBLIC_INCLUDE), "-I", str(LIBC_INCLUDE),
             "-S", "-o", str(mcasm)],
            cwd=ROOT, capture_output=True, text=True, timeout=120, check=True,
        )
        g_dir = tmp_path / "o2g"
        n_dir = tmp_path / "o2"
        _compile(mcasm, g_dir, debug=True)
        _compile(mcasm, n_dir, debug=False)
        g = _funcs(g_dir)
        n = _funcs(n_dir)

    # 1) -g 下 SpecialFunctionPass 命中：__bit_shr 名保留（混淆关），且被替换为
    #    自包含实现——无 `sub rsp`（`scoreboard players remove rsp`）前言，且直接调用 __pow2u。
    body = g.get(BIT_SHR)
    if body is None:
        problems.append(f"前置失败：-O2 -g 未找到 {BIT_SHR}（fixture 或命名已变？）")
    else:
        if "remove rsp vm_regs" in body:
            problems.append("SpecialFunctionPass 未命中：__bit_shr 仍含 `remove rsp`（未被替换为无栈帧实现）")
        if f"function {POW2U}" not in body:
            problems.append(f"被替换体未引用稳定的 {POW2U}（namespace 抽取失败或实现漂移）")
        # 3) 被替换体的每个直接引用都必须解析到真实文件（历史 bug 即此处悬空）。
        for ref in _FN_RE.findall(body):
            if ref.startswith("std:") or ref.startswith("_ll"):
                continue
            if ref not in g:
                problems.append(f"被替换体引用悬空: {ref}")
        # 防回归：不得再出现旧式脆弱短名裸目标（形如 a:<单字母>）。
        for ref in _FN_RE.findall(body):
            local = ref.split(":", 1)
            if len(local) == 2 and local[0] == NAMESPACE and "/" not in local[1] and len(local[1]) <= 2:
                problems.append(f"被替换体引用了脆弱短名(疑似依赖混淆命名): {ref}")

    # 2) __pow2u 在 -g 产物中可达（未被误删/悬空）。
    if POW2U not in g:
        problems.append(f"-O2 -g 缺失 {POW2U}（被替换体调用它，却不可达）")

    # 4) 两种模式零悬空（-g 是修复目标；no-g 是发货配置，必须保持正确）。
    gd, gp = _dangling(g)
    if gd:
        problems.append(f"-O2 -g 悬空直接引用: {gd}")
    if gp:
        problems.append(f"-O2 -g 悬空池化引用: {gp}")
    nd, np_ = _dangling(n)
    if nd:
        problems.append(f"-O2 (no-g) 悬空直接引用: {nd}")
    if np_:
        problems.append(f"-O2 (no-g) 悬空池化引用: {np_}")

    if problems:
        print("FAIL special_function_bit_shr:")
        for pr in problems:
            print("  - " + pr)
        return 1

    print(f"PASS special_function_bit_shr (-O2 -g 命中且零悬空; {BIT_SHR} -> {POW2U}; -O2 发货零悬空)")
    print("\n1/1 checks passed")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
