#!/usr/bin/env python3
"""Regression tests for Verify-stage function-location and path safety checks.

This suite deliberately treats diagnostics as locale-independent: invalid user
input must fail with a source location, must not fall through to an unknown
exception, and must not emit IR or datapack functions.  It also checks that
ordinary labels remain accepted and are made safe internally instead of being
rejected as public resource locations.

Usage:
    python tests/run_verify_tests.py
"""
from __future__ import annotations

import subprocess
import sys
import tempfile
from dataclasses import dataclass
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
CASE_DIR = ROOT / "tests" / "ir_cases"
BIN = ROOT / "build" / "bin" / ("clang-mc.exe" if sys.platform == "win32" else "clang-mc")
SAFE_NAMESPACE = "verify_ns"


@dataclass(frozen=True)
class Fixture:
    name: str
    filename: str
    needs_source_location: bool = True


# GitHub issue #3 plus malformed explicit export/api/extern resource locations.
INVALID_RESOURCE_FIXTURES = (
    Fixture("issue3_double_colon", "verify_export_double_colon.mcasm"),
    Fixture("issue3_extra_colon", "verify_export_extra_colon.mcasm"),
    Fixture("issue3_missing_namespace", "verify_export_missing_namespace.mcasm"),
    Fixture("api_missing_namespace", "verify_api_missing_namespace.mcasm"),
    Fixture("extern_missing_namespace", "verify_extern_missing_namespace.mcasm"),
    Fixture("empty_namespace", "verify_export_empty_namespace.mcasm"),
    Fixture("empty_function", "verify_export_empty_function.mcasm"),
    Fixture("invalid_path_character", "verify_export_invalid_character.mcasm"),
    Fixture("path_traversal", "verify_export_path_traversal.mcasm"),
    Fixture("path_escape_build_root", "verify_export_escape_build_root.mcasm"),
    Fixture("empty_path_segment", "verify_export_empty_path_segment.mcasm"),
    Fixture("trailing_dot", "verify_export_trailing_dot.mcasm"),
    Fixture("windows_device_name", "verify_export_windows_device_name.mcasm"),
    Fixture("windows_device_extension", "verify_export_windows_device_extension.mcasm"),
    Fixture("windows_device_namespace", "verify_export_windows_device_namespace.mcasm"),
)

ISSUE3_FIXTURES = INVALID_RESOURCE_FIXTURES[:3]
EMPTY_REFERENCE_FIXTURES = (
    Fixture("empty_call_target", "verify_empty_call.mcasm"),
    Fixture("empty_jmp_target", "verify_empty_jmp.mcasm"),
    Fixture("empty_conditional_target", "verify_empty_conditional.mcasm"),
    Fixture("empty_movd_target", "verify_empty_movd.mcasm"),
)
VALID_EXPLICIT_EXPORTS = (
    ("valid_export_nested_path", "verify_export_nested_path.mcasm", SAFE_NAMESPACE, "dir/sub.func"),
    ("valid_export_minecraft_namespace", "verify_export_minecraft_namespace.mcasm", "minecraft", "foo"),
    ("valid_export_dotted_namespace", "verify_export_dotted_namespace.mcasm", "verify.ns", "foo"),
)

# These are CLI errors, so a source location is intentionally not required.
INVALID_NAMESPACE_ARGS = (
    ("namespace_path_traversal", "verify_ns:../escape"),
    ("namespace_empty_segment", "verify_ns:dir//name"),
    ("namespace_trailing_dot", "verify_ns:dir/name."),
    ("namespace_windows_device", "verify_ns:con"),
    ("namespace_device_name", "con"),
    ("namespace_minecraft_reserved", "minecraft"),
)

WINDOWS_DEVICE_NAMES = {
    "con", "prn", "aux", "nul",
    *(f"com{i}" for i in range(1, 10)),
    *(f"lpt{i}" for i in range(1, 10)),
}


def _copy_fixture(tmp: Path, filename: str, destination_name: str | None = None) -> Path:
    source = CASE_DIR / filename
    work = tmp / (destination_name or filename)
    work.write_text(source.read_text(encoding="utf-8"), encoding="utf-8")
    return work


def _run(source: Path, build: Path, *flags: str, namespace: str = SAFE_NAMESPACE) -> subprocess.CompletedProcess[str]:
    return subprocess.run(
        [str(BIN), str(source), "-N", namespace, *flags, "-B", str(build)],
        cwd=source.parent,
        capture_output=True,
        text=True,
        encoding="utf-8",
        errors="replace",
        timeout=60,
    )


def _combined_output(result: subprocess.CompletedProcess[str]) -> str:
    return (result.stdout or "") + (result.stderr or "")


def _is_under(path: Path, root: Path) -> bool:
    try:
        path.resolve().relative_to(root.resolve())
    except ValueError:
        return False
    return True


def _rejection_problems(
    fixture: Fixture,
    source: Path,
    build: Path,
    tmp: Path,
    result: subprocess.CompletedProcess[str],
) -> list[str]:
    output = _combined_output(result)
    lowered = output.casefold()
    problems: list[str] = []
    if result.returncode == 0:
        problems.append("invalid input unexpectedly succeeded")
    if fixture.needs_source_location and f"{source.name}:" not in output:
        problems.append("diagnostic did not include the source filename/line")
    crash_markers = (
        "unknown exception",
        "unhandledexceptionfilter",
        "exception in thread",
        "terminate called",
    )
    if any(marker in lowered for marker in crash_markers):
        problems.append("invalid input reached the old unknown-exception path")
    if source.with_suffix(".mci").exists():
        problems.append("invalid input emitted an IR (.mci) file")
    generated = list(tmp.rglob("*.mcfunction"))
    if generated:
        problems.append("invalid input emitted mcfunction files: " + ", ".join(str(p.relative_to(tmp)) for p in generated))
    if any(not _is_under(path, build) for path in generated):
        problems.append("invalid input wrote a mcfunction outside its build directory")
    return problems


def _print_failure(name: str, problems: list[str], result: subprocess.CompletedProcess[str] | None = None) -> None:
    print(f"FAIL {name}:")
    for problem in problems:
        print(f"  - {problem}")
    if result is not None:
        output = _combined_output(result).strip()
        if output:
            print("  compiler output:")
            print("    " + output.replace("\n", "\n    "))


def _check_rejected(fixture: Fixture, mode: str) -> list[str]:
    with tempfile.TemporaryDirectory() as tmp_s:
        tmp = Path(tmp_s)
        source = _copy_fixture(tmp, fixture.filename)
        build = tmp / "build"
        try:
            result = _run(source, build, mode)
        except subprocess.TimeoutExpired:
            return ["compiler timed out"]
        return _rejection_problems(fixture, source, build, tmp, result)


def _check_invalid_namespace(name: str, namespace: str) -> list[str]:
    with tempfile.TemporaryDirectory() as tmp_s:
        tmp = Path(tmp_s)
        source = _copy_fixture(tmp, "verify_namespace_prefix_positive.mcasm")
        build = tmp / "build"
        try:
            result = _run(source, build, "-E", namespace=namespace)
        except subprocess.TimeoutExpired:
            return ["compiler timed out"]
        # Namespace parsing happens before source loading; retain the no-artifact and
        # no-crash requirements but do not demand a source line for this CLI error.
        return _rejection_problems(Fixture(name, source.name, False), source, build, tmp, result)


def _check_explicit_export_path(filename: str, namespace: str, function_path: str) -> list[str]:
    with tempfile.TemporaryDirectory() as tmp_s:
        tmp = Path(tmp_s)
        source = _copy_fixture(tmp, filename)
        build = tmp / "build"
        try:
            result = _run(source, build, "-c")
        except subprocess.TimeoutExpired:
            return ["compiler timed out"]
        if result.returncode:
            return ["valid explicit export failed", _combined_output(result).strip()]
        expected = build / "data" / namespace / "function" / Path(function_path + ".mcfunction")
        if not expected.is_file():
            return [f"valid export was not emitted at {expected.relative_to(tmp)}"]
        return []


def _check_safe_namespace_prefix() -> list[str]:
    with tempfile.TemporaryDirectory() as tmp_s:
        tmp = Path(tmp_s)
        source = _copy_fixture(tmp, "verify_namespace_prefix_positive.mcasm")
        build = tmp / "build"
        try:
            result = _run(source, build, "-c", namespace="verify_ns:prefix/sub")
        except subprocess.TimeoutExpired:
            return ["compiler timed out"]
        if result.returncode:
            return ["valid namespace path prefix failed", _combined_output(result).strip()]
        expected = build / "data" / SAFE_NAMESPACE / "function" / "prefix" / "sub" / source.stem / "_start.mcfunction"
        if not expected.is_file():
            return [f"safe namespace prefix was not emitted at {expected.relative_to(tmp)}"]
        return []


def _check_ordinary_label_is_sanitized() -> list[str]:
    with tempfile.TemporaryDirectory() as tmp_s:
        tmp = Path(tmp_s)
        # The trailing dot in the source stem would be unsafe as a Windows
        # directory component unless the normal-label path modifier fixes it.
        source = _copy_fixture(tmp, "verify_normal_dangerous_label.mcasm", "VerifyStem..mcasm")
        build = tmp / "build"
        try:
            result = _run(source, build, "-c")
        except subprocess.TimeoutExpired:
            return ["compiler timed out"]
        if result.returncode:
            return ["ordinary dangerous label was rejected instead of sanitized", _combined_output(result).strip()]

        functions = list(tmp.rglob("*.mcfunction"))
        problems: list[str] = []
        if not functions:
            problems.append("ordinary-label compilation emitted no mcfunction files")
        outside = [path for path in functions if not _is_under(path, build)]
        if outside:
            problems.append("ordinary label escaped build directory: " + ", ".join(str(p.relative_to(tmp)) for p in outside))
        for path in functions:
            if not _is_under(path, build):
                continue
            relative = path.relative_to(build)
            for part in relative.parts:
                normalized = part.rstrip(". ").casefold()
                if normalized in WINDOWS_DEVICE_NAMES:
                    problems.append(f"unsafe Windows device component survived sanitization: {relative}")
                    break
                if part in {".", ".."}:
                    problems.append(f"unsafe dot component survived sanitization: {relative}")
                    break
        expected_dir = build / "data" / SAFE_NAMESPACE / "function" / "verifystem_"
        if not expected_dir.is_dir():
            problems.append("ordinary label did not retain a sanitized source-stem hierarchy")

        # RenameInternalFunctionsPass also converts resource names to paths. It
        # runs only on the compile path with -O1/-O2, not in -E IR tests.
        optimized_build = tmp / "build-o1"
        try:
            optimized = _run(source, optimized_build, "-c", "-O1")
        except subprocess.TimeoutExpired:
            problems.append("optimized ordinary-label compilation timed out")
            return problems
        if optimized.returncode:
            problems.append("ordinary dangerous label failed with -O1: " + _combined_output(optimized).strip())
        if not list(optimized_build.rglob("*.mcfunction")):
            problems.append("optimized ordinary-label compilation emitted no mcfunction files")
        optimized_functions = list(tmp.rglob("*.mcfunction"))
        optimized_outside = [path for path in optimized_functions if not _is_under(path, build) and not _is_under(path, optimized_build)]
        if optimized_outside:
            problems.append("optimized ordinary label escaped its build directory: "
                            + ", ".join(str(path.relative_to(tmp)) for path in optimized_outside))
        return problems


def main() -> int:
    if not BIN.exists():
        print(f"clang-mc not found at {BIN}; build first.", file=sys.stderr)
        return 2

    failures = 0

    # Verify must reject every explicit resource location before IR emission.
    for fixture in INVALID_RESOURCE_FIXTURES:
        problems = _check_rejected(fixture, "-E")
        if problems:
            failures += 1
            _print_failure(f"verify_{fixture.name}_E", problems)
        else:
            print(f"PASS verify_{fixture.name}_E")

    # The original crash route and empty call-like targets must remain controlled
    # even when the normal compile path is selected.
    for fixture in (*ISSUE3_FIXTURES, *EMPTY_REFERENCE_FIXTURES):
        problems = _check_rejected(fixture, "-c")
        if problems:
            failures += 1
            _print_failure(f"compile_{fixture.name}", problems)
        else:
            print(f"PASS compile_{fixture.name}")

    for name, namespace in INVALID_NAMESPACE_ARGS:
        problems = _check_invalid_namespace(name, namespace)
        if problems:
            failures += 1
            _print_failure(name, problems)
        else:
            print(f"PASS {name}")

    for name, filename, namespace, function_path in VALID_EXPLICIT_EXPORTS:
        problems = _check_explicit_export_path(filename, namespace, function_path)
        if problems:
            failures += 1
            _print_failure(name, problems)
        else:
            print(f"PASS {name}")

    for name, check in (
        ("valid_namespace_path_prefix", _check_safe_namespace_prefix),
        ("ordinary_dangerous_label_is_sanitized", _check_ordinary_label_is_sanitized),
    ):
        problems = check()
        if problems:
            failures += 1
            _print_failure(name, problems)
        else:
            print(f"PASS {name}")

    total = (len(INVALID_RESOURCE_FIXTURES) + len(ISSUE3_FIXTURES) + len(EMPTY_REFERENCE_FIXTURES)
             + len(INVALID_NAMESPACE_ARGS) + len(VALID_EXPLICIT_EXPORTS) + 2)
    print(f"\n{total - failures}/{total} checks passed")
    return 1 if failures else 0


if __name__ == "__main__":
    raise SystemExit(main())
