// Regression probe for L5: `static` declaration boundary parsing.
//
// 1. `static counter,7` (no space after the comma) -- createStatic() first
//    splits args on ' ' with maxCount=2; with no space present this previously
//    produced a single token and threw `invalid_op`, even though the ISA doc
//    (ZH_Instruction-Set.md, STATIC) allows the comma-glued single-value form.
// 2. `static empty_arr []` (empty array literal) -- previously hit
//    parseToNumber("") (assert/throw) instead of yielding a well-defined
//    zero-length array.
//
// `static spaced, 9` is the canonical spaced single-value form, included as a
// control. (Note: a space *before* the comma, `static x , 9`, is NOT a valid
// form and is intentionally not exercised here.)
//
// We confirm the comma-glued form stores its value and is read/write-able
// through `[name]`, the canonical form still works, and the empty-array symbol
// parses without crashing. probe_acc accumulates one failure per mismatch;
// main returns probe_acc (0 == all correct).

__asm__(
"static counter,7\n"      // no space after comma (L5 fix)
"static spaced, 9\n"      // canonical spaced single-value form (control)
"static empty_arr []\n"   // empty array literal (L5 fix)
);

int main(void) {
    int result;

    __asm volatile (
        "inline scoreboard players set probe_acc vm_regs 0\n"

        // comma-glued single-value form stored 7
        "mov t1, [counter]\n"
        "inline execute unless score t1 vm_regs matches 7 run scoreboard players add probe_acc vm_regs 1\n"

        // canonical spaced form stored 9
        "mov t1, [spaced]\n"
        "inline execute unless score t1 vm_regs matches 9 run scoreboard players add probe_acc vm_regs 1\n"

        // [name] read/write through the symbol works
        "mov [counter], 42\n"
        "mov t1, [counter]\n"
        "inline execute unless score t1 vm_regs matches 42 run scoreboard players add probe_acc vm_regs 1\n"

        "inline execute store result score %0 vm_regs run scoreboard players get probe_acc vm_regs\n"
        : "=r"(result)
    );

    return result;
}
