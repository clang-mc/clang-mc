#!/usr/bin/env python3
"""整程序优化（WPO）——链接期 stdlib 死函数消除的结构回归测试（Task 5，无服务器）。

Task 5 把后端 DCE 提升到能看到“全程序”的位置：Builder::link() 在把手写 stdlib 并入
产物前，先以“已写盘的全部非 stdlib 函数（用户产物 + 生成的 onLoad/dataFunc，load.json
锚定 onLoad，onLoad 内含字面 `schedule function std:init_vm`）+ dataDir”为根做可达性
分析，只写入可达的 stdlib，剪掉本程序用不到的库函数。门控：optLevel>=1 才剪枝，-O0 全量
链接（历史行为），因此 -O0 与 -O2 的 stdlib 集合差异恰好归因于 WPO。

可观测成功标准：
  (a) 某个确实未使用的 stdlib 函数在 -O2 产物中缺失（被剪枝）；
  (b) 某个确被使用的 stdlib 函数（init_vm，onLoad 调度）仍在；
  (c) 整个产物零悬空：每个 function/schedule/movd 池化引用与 load.json 引用都可解析；
  (d) 用户可见入口链 load.json -> onLoad -> {init_vm, dataFunc, startFunc} 在 -O2 完好；
  (e) -O2 的 stdlib 集合是 -O0 的严格子集（只删不增），且 -O0 保留了被剪的函数
      （证明差异确由 WPO 造成，而非编译前端未发射）。

fixture 选 recursion_factorial.c：纯整数直接递归，不做函数指针间接调用、不用字符串、
不做动态堆分配，故 calld/mcstr_*/heap 等大量 stdlib 成为死库函数，构成强剪枝实例。

用法：
    python tests/run_wpo_tests.py
"""
from __future__ import annotations

import json
import re
import subprocess
import sys
import tempfile
import zipfile
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
CASE_DIR = ROOT / "tests" / "cases"
BIN_DIR = ROOT / "build" / "bin"
CLANG = BIN_DIR / ("clang.exe" if sys.platform == "win32" else "clang")
ASM = BIN_DIR / ("clang-mc.exe" if sys.platform == "win32" else "clang-mc")
LIBMC_INCLUDE = ROOT / "build" / "libmc" / "include"
PUBLIC_INCLUDE = ROOT / "build" / "include"
LIBC_INCLUDE = ROOT / "src" / "resources" / "libc" / "include"

SOURCE = "recursion_factorial.c"
NAMESPACE = "a"

# 该 fixture 确定用不到的 stdlib 库函数（无函数指针 -> 无 calld；无字符串 -> 无 mcstr_*）。
DEAD_STDLIB = ("std:_internal/calld", "std:_internal/mcstr_alloc")
# onLoad 调度的库函数，必须始终保留（WPO 不得误删活函数）。
LIVE_STDLIB = "std:init_vm"

_FILE_RE = re.compile(r"data/([^/]+)/function/(.+)\.mcfunction$")
_FN_RE = re.compile(r"function\s+([a-z0-9_\-.]+:[a-z0-9_\-./]+)")
_STR_RE = re.compile(r'"([a-z0-9_\-.]+:[a-z0-9_\-./]+)"')
# std:vm 是存储（NBT storage）而非函数，悬空检查须排除。
_STORAGE = {"std:vm"}


def _clang_to_mcasm(src: Path, out: Path) -> None:
    subprocess.run(
        [str(CLANG), str(src), "-target", "mcasm", "-O0",
         "-I", str(LIBMC_INCLUDE), "-I", str(PUBLIC_INCLUDE), "-I", str(LIBC_INCLUDE),
         "-S", "-o", str(out)],
        cwd=ROOT, capture_output=True, text=True, timeout=120, check=True,
    )


def _full_build(mcasm: Path, out_dir: Path, zip_base: Path, opt: str) -> None:
    # 完整构建（含链接，产出 build 目录 + zip），非 -c：这样才会触发 Builder::link() 的 WPO。
    subprocess.run(
        [str(ASM), str(mcasm), "-N", NAMESPACE, "-B", str(out_dir), "-o", str(zip_base), opt],
        cwd=ROOT, capture_output=True, text=True, timeout=120, check=True,
    )


def _funcs(root: Path) -> dict[str, str]:
    out: dict[str, str] = {}
    for p in root.rglob("*.mcfunction"):
        m = _FILE_RE.search(p.relative_to(root).as_posix())
        if m:
            out[f"{m.group(1)}:{m.group(2)}"] = p.read_text(encoding="utf-8", errors="replace")
    return out


def _load_json_refs(root: Path) -> list[str]:
    lj = root / "data" / "minecraft" / "tags" / "function" / "load.json"
    if not lj.exists():
        return []
    return list(json.loads(lj.read_text(encoding="utf-8")).get("values", []))


def _dangling(funcs: dict[str, str], load_refs: list[str]) -> tuple[list[str], list[str]]:
    existing = set(funcs)
    namespaces = {e.split(":", 1)[0] for e in existing}
    direct: set[str] = set(load_refs)
    pooled: set[str] = set()
    for body in funcs.values():
        direct.update(_FN_RE.findall(body))
        pooled.update(s for s in _STR_RE.findall(body) if s.split(":", 1)[0] in namespaces)
    dangling_direct = sorted(direct - existing - _STORAGE)
    dangling_pooled = sorted(pooled - existing - _STORAGE)
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
        _clang_to_mcasm(CASE_DIR / SOURCE, mcasm)

        o0_dir = tmp_path / "o0"
        o2_dir = tmp_path / "o2"
        o2_zip = tmp_path / "o2pack"
        _full_build(mcasm, o0_dir, tmp_path / "o0pack", "-O0")
        _full_build(mcasm, o2_dir, o2_zip, "-O2")

        o0 = _funcs(o0_dir)
        o2 = _funcs(o2_dir)
        o0_load = _load_json_refs(o0_dir)
        o2_load = _load_json_refs(o2_dir)

        std0 = {f for f in o0 if f.startswith("std:")}
        std2 = {f for f in o2 if f.startswith("std:")}

        # (a) 未使用的 stdlib 函数在 -O2 被剪枝，但在 -O0 基线中存在（差异确由 WPO 造成）。
        for dead in DEAD_STDLIB:
            if dead not in std0:
                problems.append(f"前置失败：{dead} 未出现在 -O0 基线（fixture/stdlib 形态已变？）")
            if dead in std2:
                problems.append(f"剪枝未生效：未使用的 {dead} 在 -O2 产物中仍存在")

        # (b) 被使用的 stdlib 函数（onLoad 调度）在 -O2 保留。
        if LIVE_STDLIB not in std2:
            problems.append(f"误删活函数：{LIVE_STDLIB} 在 -O2 产物中缺失（onLoad 调度它）")

        # (c) -O2 产物零悬空（含 load.json 引用）。
        dd, dp = _dangling(o2, o2_load)
        if dd:
            problems.append(f"-O2 出现悬空直接引用: {dd}")
        if dp:
            problems.append(f"-O2 出现悬空池化(calld)引用: {dp}")
        # -O0 基线也应零悬空（全量链接下的完整性）。
        dd0, dp0 = _dangling(o0, o0_load)
        if dd0 or dp0:
            problems.append(f"-O0 基线出现悬空引用: direct={dd0} pooled={dp0}")

        # (d) 入口链 load.json -> onLoad -> {init_vm, dataFunc, startFunc} 在 -O2 完好。
        if len(o2_load) != 1 or o2_load[0] not in o2:
            problems.append(f"-O2 load.json 未指向存在的 onLoad: {o2_load}")
        else:
            onload_body = o2[o2_load[0]]
            if "schedule function std:init_vm" not in onload_body:
                problems.append("-O2 onLoad 未调度 std:init_vm")
            for m in _FN_RE.findall(onload_body):
                if m not in o2 and m not in _STORAGE:
                    problems.append(f"-O2 onLoad 调度了不存在的函数 {m}")

        # (e) -O2 的 stdlib 集合是 -O0 的严格子集（只删不增，且确有删除）。
        if not std2 <= std0:
            problems.append(f"-O2 stdlib 非 -O0 子集（凭空新增）: {sorted(std2 - std0)}")
        if not (len(std2) < len(std0)):
            problems.append(f"WPO 未剪掉任何 stdlib: |O0|={len(std0)} |O2|={len(std2)}")

        # (f) zip 产物存在且其内 mcfunction 集合与 build 目录一致（zip 即最终交付物）。
        zip_path = Path(str(o2_zip) + ".zip")
        if not zip_path.exists():
            problems.append(f"-O2 zip 产物缺失: {zip_path}")
        else:
            with zipfile.ZipFile(zip_path) as zf:
                zip_std = {
                    f"{m.group(1)}:{m.group(2)}"
                    for n in zf.namelist()
                    for m in [_FILE_RE.search(n)]
                    if m and n.startswith("data/std/")
                }
            if zip_std != std2:
                problems.append(f"zip 内 stdlib 与 build 目录不一致: 仅zip={sorted(zip_std - std2)} 仅dir={sorted(std2 - zip_std)}")

    if problems:
        print("FAIL wpo_stdlib_dce:")
        for pr in problems:
            print("  - " + pr)
        return 1

    pruned = sorted(std0 - std2)
    print(f"PASS wpo_stdlib_dce (-O2 剪掉 {len(pruned)}/{len(std0)} 个未使用 stdlib，保留 {LIVE_STDLIB}；零悬空)")
    print(f"  剪枝实例: {', '.join(pruned[:6])}{' ...' if len(pruned) > 6 else ''}")
    print("\n1/1 checks passed")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
