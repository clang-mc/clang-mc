// Exercises clang-mc preprocessor function-macro argument splitting and
// word-boundary parameter substitution (review items M5).
//
// The mcasm preprocessor (not the C preprocessor) processes these inline-asm
// directives after clang emits them into the .mcasm file.
//
// 1. PICK(value, fallback) expands to `value`. We pass a first argument that
//    itself contains a nested-parenthesis comma. A naive `,`-split would see
//    three arguments instead of two, the arity check would fail, the macro
//    would NOT expand, and the resulting line would be invalid / wrong.
// 2. The macro body deliberately mentions the token `scoreboard` etc. and the
//    one-letter-prone substitution is checked by SHIFT(a) whose body contains
//    the identifier `data` -- the short parameter name `a` must not be spliced
//    into `data`/`value`/`vala`.

__asm__(
    "#define PICK(a, b) a\n"
    "#define SHIFT(a) inline data modify storage std:vm s1.probe_b set value a\n"
);

int main(void) {
    int nested;
    int shifted;

    // First arg carries a nested comma inside parentheses: min(11,99).
    // With correct depth-aware splitting this is a single argument and the
    // macro expands to `inline data modify storage std:vm s1.probe_a set value 11`.
    __asm volatile(
        "inline scoreboard players set #pp_min vm_regs 11\n"
        "PICK(inline execute store result storage std:vm s1.probe_a int 1 run scoreboard players get #pp_min vm_regs, IGNORED(1,2))\n"
        "inline execute store result score %0 vm_regs run data get storage std:vm s1.probe_a"
        : "=r"(nested));

    // Short parameter name `a` must only replace the standalone token, never
    // the `a` inside `data`, `value`, or `vala_keep`. The value is 13.
    __asm volatile(
        "SHIFT(13)\n"
        "inline execute store result score %0 vm_regs run data get storage std:vm s1.probe_b"
        : "=r"(shifted));

    if (nested != 11)
        return 100 + nested;
    if (shifted != 13)
        return 50 + shifted;
    return 0;
}
