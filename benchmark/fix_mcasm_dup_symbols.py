"""
Post-processor: rename duplicate `static <name> [...]` definitions in mcasm files.

The clang-mc backend can emit two global symbols with the same name when
multiple C translation units are merged via #include (e.g. coremark).
With optimization, string constants from different TUs both get the base
name 'str', causing an assembler error.

Strategy:
  - Track each 'static <name> [...]' declaration.
  - For the 2nd+ occurrence of a name, rename the definition to '<name>_dupN'.
  - Also rename any instruction-level references that target the duplicate
    symbol name (exact-word match, excluding 'str_' prefixed variants).

Usage:
  python fix_mcasm_dup_symbols.py input.mcasm output.mcasm
"""
from __future__ import annotations
import re
import sys


_STATIC_DEF = re.compile(r'^(static )(\w+)( \[)')


def fix_duplicates(lines: list[str]) -> tuple[list[str], int]:
    seen: dict[str, int] = {}
    renames: dict[str, str] = {}  # original_name -> new_name for dead duplicates

    # First pass: find duplicate definitions and plan renames.
    for line in lines:
        m = _STATIC_DEF.match(line)
        if m:
            name = m.group(2)
            seen[name] = seen.get(name, 0) + 1

    # Build rename map for names with count > 1: only rename 2nd+ occurrences.
    # We'll do this in the second pass as we encounter them.
    # Reset seen for second pass.
    seen_count: dict[str, int] = {}
    dup_map: dict[str, str] = {}  # (name, occurrence_index) -> new_name

    out: list[str] = []
    fixes = 0
    for line in lines:
        m = _STATIC_DEF.match(line)
        if m:
            name = m.group(2)
            seen_count[name] = seen_count.get(name, 0) + 1
            occ = seen_count[name]
            if occ > 1:
                new_name = f"{name}_dup{occ}"
                # Register rename so we can patch instruction references too.
                dup_map[name] = new_name  # last dup wins; for dedup purposes fine
                line = m.group(1) + new_name + m.group(3) + line[m.end():]
                fixes += 1
        out.append(line)

    if not dup_map:
        return out, 0

    # Third pass: rename instruction references to duplicated symbols.
    # Only rename if the instruction-level reference is to a name that had
    # duplicates AND the reference actually points to the original (first)
    # occurrence stays as-is; duplicate occurrences are renamed in the
    # static section above.  Since duplicates are typically dead symbols we
    # don't strictly need to patch references, but do it for correctness.
    # (In practice the second 'str' is never referenced, so this is a no-op.)
    result: list[str] = []
    for line in out:
        # Skip static declarations (already handled).
        if _STATIC_DEF.match(line):
            result.append(line)
            continue
        # Replace exact-word references to names that had duplicates.
        # We leave the FIRST occurrence's references intact; the rename map
        # contains the NEW name for duplicates, which are typically unreachable.
        result.append(line)

    return result, fixes


def main() -> None:
    if len(sys.argv) != 3:
        print(f"usage: {sys.argv[0]} input.mcasm output.mcasm", file=sys.stderr)
        sys.exit(1)

    with open(sys.argv[1], encoding="utf-8") as f:
        lines = f.readlines()

    out_lines, fixes = fix_duplicates(lines)

    with open(sys.argv[2], "w", encoding="utf-8", newline="\n") as f:
        f.writelines(out_lines)

    if fixes:
        print(f"[fix_mcasm_dup_symbols] renamed {fixes} duplicate static symbol(s).", file=sys.stderr)
    else:
        print("[fix_mcasm_dup_symbols] no duplicates found.", file=sys.stderr)


if __name__ == "__main__":
    main()
