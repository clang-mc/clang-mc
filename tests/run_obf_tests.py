#!/usr/bin/env python3
"""mcasm(IR)级混淆阶段（--enable-obf, Task4）的轻量回归测试。

无需 Minecraft 服务器：用 `clang-mc -E` 对比“带/不带 --enable-obf”生成的 IR（.mci），
对两种混淆做结构断言；并对“带 --enable-obf 的完整编译”产物做零悬空检查。

覆盖两种混淆：
  1) 常量隐藏：`mov reg, K` 被拆成运行时等值算术序列 -> 裸 `mov reg, K` 消失、算术增多。
  2) 冷代码间接调用：cold 直接 `call` 被改写为 `movd scratch + calld scratch`；
     hot 路径（main/_start 内、循环体、高 fan-in）的直接 call 保持不变。
断言：
  (a) 常量被隐藏（某立即数不再以裸 `mov reg,K` 出现，且 add 指令数增多）。
  (b) 冷代码某直接 call 变成 movd+calld（helper->leaf）。
  (c) 不带 --enable-obf 时 IR 与基线一致（混淆确实 opt-in、无副作用）。
  (d) 带 --enable-obf 的完整编译产物零悬空引用。

fixture：tests/cases/obf_probe.c（clang -target mcasm 生成 mcasm，含 stdlib 初始化，
使引入的 calld 可正常编译；hand-written 无 stdlib 的 calld mcasm 会崩溃，故不采用）。

用法：
    python tests/run_obf_tests.py
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

SOURCE = "obf_probe.c"
NAMESPACE = "a"

_FILE_RE = re.compile(r"data/([^/]+)/function/(.+)\.mcfunction$")
_FN_RE = re.compile(r"function\s+([a-z0-9_\-.]+:[a-z0-9_\-./]+)")
_STR_RE = re.compile(r'"([a-z0-9_\-.]+:[a-z0-9_\-./]+)"')


def _to_mcasm(tmp: Path) -> Path:
    mcasm = tmp / "obf_probe.mcasm"
    subprocess.run(
        [str(CLANG), str(CASE_DIR / SOURCE), "-target", "mcasm", "-O0",
         "-I", str(LIBMC_INCLUDE), "-I", str(PUBLIC_INCLUDE), "-I", str(LIBC_INCLUDE),
         "-S", "-o", str(mcasm)],
        cwd=ROOT, capture_output=True, text=True, timeout=120, check=True,
    )
    return mcasm


def _run_ir(mcasm: Path, tmp: Path, tag: str, flags: tuple[str, ...]) -> str:
    work = tmp / f"{tag}.mcasm"
    work.write_text(mcasm.read_text(encoding="utf-8"), encoding="utf-8")
    subprocess.run(
        [str(ASM), str(work), "-N", NAMESPACE, "-E", "-B", str(tmp / f"b_{tag}"), *flags],
        cwd=tmp, capture_output=True, text=True, timeout=120, check=True,
    )
    mci = work.with_suffix(".mci")
    if not mci.exists():
        raise RuntimeError(f"{tag}: no .mci produced")
    return mci.read_text(encoding="utf-8")


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
    # std:/_ll* 为链接期注入的运行时库，compile-only 下不在产物中，属预期缺失。
    dangling_direct = sorted(
        x for x in direct - existing if not x.startswith("std:") and not x.startswith("_ll")
    )
    # std:vm 是存储(storage)名而非函数，池化正则可能误捕，排除之。
    dangling_pooled = sorted(x for x in pooled - existing if x != "std:vm")
    return dangling_direct, dangling_pooled


def _movd_targets_label(ir: str, label: str) -> bool:
    """IR 中是否存在把 <label> 池化的 movd（形如 `movd <reg>, <label>`）。"""
    return any(
        line.strip().startswith("movd ") and line.strip().endswith(", " + label)
        for line in ir.splitlines()
    )


def main() -> int:
    for tool in (CLANG, ASM):
        if not tool.exists():
            print(f"missing tool {tool}; build first.", file=sys.stderr)
            return 2

    problems: list[str] = []
    with tempfile.TemporaryDirectory() as tmp_s:
        tmp = Path(tmp_s)
        mcasm = _to_mcasm(tmp)

        base = _run_ir(mcasm, tmp, "base", ())
        base2 = _run_ir(mcasm, tmp, "base2", ())
        obf = _run_ir(mcasm, tmp, "obf", ("--enable-obf",))

        # (c) 不带 --enable-obf：opt-in、无副作用（两次无标志运行完全一致，且保留原始形态）。
        if base != base2:
            problems.append("opt-in 违背：两次不带 --enable-obf 的 IR 不一致（存在非确定副作用）")
        if "call leaf" not in base or "mov r0, 1555" not in base:
            problems.append("前置失败：基线 IR 未含预期的 `call leaf` / `mov r0, 1555`（fixture 形态已变？）")

        # (a) 常量隐藏：裸 `mov r0, 1555` 消失；算术(add)指令因还原序列而增多。
        if "mov r0, 1555" in obf:
            problems.append("常量隐藏未生效：--enable-obf 下仍存在裸 `mov r0, 1555`")
        base_adds = len(re.findall(r"^\s*add ", base, re.M))
        obf_adds = len(re.findall(r"^\s*add ", obf, re.M))
        if obf_adds <= base_adds:
            problems.append(f"常量隐藏未注入算术：add 数未增多（base={base_adds}, obf={obf_adds}）")

        # (b) 冷代码间接调用：helper->leaf 的直接 call 变成 movd+calld。
        if "call leaf" in obf:
            problems.append("冷调用未改写：--enable-obf 下 `call leaf` 仍为直接 call")
        if not _movd_targets_label(obf, "leaf"):
            problems.append("冷调用改写不完整：未见把 `leaf` 池化的 movd")
        if "calld" not in obf:
            problems.append("冷调用改写不完整：--enable-obf 下未见任何 calld")
        # 热路径保持：main（热根）内对 helper 的直接调用不应被改写。
        if "call helper" not in obf:
            problems.append("热路径被误改：main 内 `call helper` 不应变成间接调用")

        # (d) 带 --enable-obf 的完整编译产物零悬空。
        cdir = tmp / "compiled"
        cwork = tmp / "compile.mcasm"
        cwork.write_text(mcasm.read_text(encoding="utf-8"), encoding="utf-8")
        subprocess.run(
            [str(ASM), str(cwork), "-N", NAMESPACE, "-c", "--enable-obf", "-B", str(cdir)],
            cwd=tmp, capture_output=True, text=True, timeout=180, check=True,
        )
        funcs = _funcs(cdir)
        dd, dp = _dangling(funcs)
        if dd:
            problems.append(f"--enable-obf 产物出现悬空直接引用: {dd[:5]}")
        if dp:
            problems.append(f"--enable-obf 产物出现悬空池化(calld)引用: {dp[:5]}")

    if problems:
        print("FAIL obf_tests:")
        for pr in problems:
            print("  - " + pr)
        return 1

    print("PASS obf_tests (常量隐藏 + 冷代码间接调用；opt-in 无副作用；产物零悬空)")
    print("\n1/1 checks passed")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
