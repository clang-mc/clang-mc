// Regression probe for M6: MOVD must not clobber `rax` when the destination
// is a different register. The previous implementation always routed the
// computed label reference through `rax` first, then copied it to the real
// destination -- silently destroying whatever the caller had stored in `rax`,
// a side effect the ISA doc (ZH_Instruction-Set.md, MOVD) never mentions.
//
// `movdprobe:tgt` is a real exported label that, when called, sets a sentinel
// in a dedicated dummy objective. We:
//   1. prime `rax` with a sentinel via a raw scoreboard command,
//   2. run `movd t0, movdprobe:tgt` (destination is a register OTHER than rax),
//   3. assert `rax` still holds the sentinel (MOVD preserved it), and
//   4. `calld t0` and assert the callee ran, proving t0 received a usable
//      reference (so the fix isn't just "stopped writing anything").
//
// probe_acc accumulates one failure point per failed assertion; main returns
// probe_acc (0 == all correct).

__asm__(
"export movdprobe:tgt:\n"
"    inline scoreboard players set #movd_flag movd_probe 1\n"
"    ret\n"
);

int main(void) {
    int result;

    __asm volatile (
        "inline scoreboard objectives add movd_probe dummy\n"
        "inline scoreboard players set #movd_flag movd_probe 0\n"
        "inline scoreboard players set probe_acc vm_regs 0\n"

        // Sentinel that MOVD must not disturb.
        "inline scoreboard players set rax vm_regs 424242\n"
        // Destination is t0, NOT rax.
        "movd t0, movdprobe:tgt\n"
        // rax must still hold the sentinel.
        "inline execute unless score rax vm_regs matches 424242 run scoreboard players add probe_acc vm_regs 1\n"
        // The reference in t0 must be usable: calling through it runs the callee.
        "calld t0\n"
        "inline execute unless score #movd_flag movd_probe matches 1 run scoreboard players add probe_acc vm_regs 1\n"

        "inline execute store result score %0 vm_regs run scoreboard players get probe_acc vm_regs\n"
        : "=r"(result)
    );

    return result;
}
