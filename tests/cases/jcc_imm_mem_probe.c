// Probes Jcc with an immediate on the LEFT and a memory operand on the RIGHT.
// This exercises the cmp(Immediate*, Ptr*) overload, whose strict/non-strict
// +-1 boundary adjustment must match the documented semantics:
//
//   jg  5, [p] : 5 > *p   (strict)      -> taken iff *p <  5
//   jge 5, [p] : 5 >= *p  (non-strict)  -> taken iff *p <= 5
//   jl  5, [p] : 5 < *p   (strict)      -> taken iff *p >  5
//   jle 5, [p] : 5 <= *p  (non-strict)  -> taken iff *p >= 5
//
// The memory cell is a static-data symbol (`probe_cell`). Each sub-test writes
// the probe value into [probe_cell] with an immediate MOV, then runs the
// comparison. The critical boundary is *p == 5, where jg/jl must NOT jump while
// jge/jle MUST jump. probe_acc accumulates one failure point per wrong branch;
// main returns probe_acc (0 == all correct).

__asm__(
"static probe_cell, 0\n"
);

int main(void) {
    int result;

    __asm volatile (
        "inline scoreboard players set probe_acc vm_regs 0\n"

        // ---- jg 5, [p] (taken iff *p < 5) ----
        // *p=5 -> 5>5 -> NOT taken (boundary)
        "mov [probe_cell], 5\n"
        "inline scoreboard players set probe_t vm_regs 0\n"
        "jg 5, [probe_cell], .mg1\n"
        "jmp .mg1d\n"
        ".mg1:\n"
        "inline scoreboard players set probe_t vm_regs 1\n"
        ".mg1d:\n"
        "inline scoreboard players operation probe_acc vm_regs += probe_t vm_regs\n"
        // *p=3 -> 5>3 -> taken
        "mov [probe_cell], 3\n"
        "inline scoreboard players set probe_t vm_regs 1\n"
        "jg 5, [probe_cell], .mg2\n"
        "jmp .mg2d\n"
        ".mg2:\n"
        "inline scoreboard players set probe_t vm_regs 0\n"
        ".mg2d:\n"
        "inline scoreboard players operation probe_acc vm_regs += probe_t vm_regs\n"
        // *p=6 -> 5>6 -> NOT taken
        "mov [probe_cell], 6\n"
        "inline scoreboard players set probe_t vm_regs 0\n"
        "jg 5, [probe_cell], .mg3\n"
        "jmp .mg3d\n"
        ".mg3:\n"
        "inline scoreboard players set probe_t vm_regs 1\n"
        ".mg3d:\n"
        "inline scoreboard players operation probe_acc vm_regs += probe_t vm_regs\n"

        // ---- jge 5, [p] (taken iff *p <= 5) ----
        // *p=5 -> 5>=5 -> taken (boundary)
        "mov [probe_cell], 5\n"
        "inline scoreboard players set probe_t vm_regs 1\n"
        "jge 5, [probe_cell], .me1\n"
        "jmp .me1d\n"
        ".me1:\n"
        "inline scoreboard players set probe_t vm_regs 0\n"
        ".me1d:\n"
        "inline scoreboard players operation probe_acc vm_regs += probe_t vm_regs\n"
        // *p=6 -> 5>=6 -> NOT taken
        "mov [probe_cell], 6\n"
        "inline scoreboard players set probe_t vm_regs 0\n"
        "jge 5, [probe_cell], .me2\n"
        "jmp .me2d\n"
        ".me2:\n"
        "inline scoreboard players set probe_t vm_regs 1\n"
        ".me2d:\n"
        "inline scoreboard players operation probe_acc vm_regs += probe_t vm_regs\n"
        // *p=3 -> 5>=3 -> taken
        "mov [probe_cell], 3\n"
        "inline scoreboard players set probe_t vm_regs 1\n"
        "jge 5, [probe_cell], .me3\n"
        "jmp .me3d\n"
        ".me3:\n"
        "inline scoreboard players set probe_t vm_regs 0\n"
        ".me3d:\n"
        "inline scoreboard players operation probe_acc vm_regs += probe_t vm_regs\n"

        // ---- jl 5, [p] (taken iff *p > 5) ----
        // *p=5 -> 5<5 -> NOT taken (boundary)
        "mov [probe_cell], 5\n"
        "inline scoreboard players set probe_t vm_regs 0\n"
        "jl 5, [probe_cell], .ml1\n"
        "jmp .ml1d\n"
        ".ml1:\n"
        "inline scoreboard players set probe_t vm_regs 1\n"
        ".ml1d:\n"
        "inline scoreboard players operation probe_acc vm_regs += probe_t vm_regs\n"
        // *p=6 -> 5<6 -> taken
        "mov [probe_cell], 6\n"
        "inline scoreboard players set probe_t vm_regs 1\n"
        "jl 5, [probe_cell], .ml2\n"
        "jmp .ml2d\n"
        ".ml2:\n"
        "inline scoreboard players set probe_t vm_regs 0\n"
        ".ml2d:\n"
        "inline scoreboard players operation probe_acc vm_regs += probe_t vm_regs\n"
        // *p=3 -> 5<3 -> NOT taken
        "mov [probe_cell], 3\n"
        "inline scoreboard players set probe_t vm_regs 0\n"
        "jl 5, [probe_cell], .ml3\n"
        "jmp .ml3d\n"
        ".ml3:\n"
        "inline scoreboard players set probe_t vm_regs 1\n"
        ".ml3d:\n"
        "inline scoreboard players operation probe_acc vm_regs += probe_t vm_regs\n"

        // ---- jle 5, [p] (taken iff *p >= 5) ----
        // *p=5 -> 5<=5 -> taken (boundary)
        "mov [probe_cell], 5\n"
        "inline scoreboard players set probe_t vm_regs 1\n"
        "jle 5, [probe_cell], .mo1\n"
        "jmp .mo1d\n"
        ".mo1:\n"
        "inline scoreboard players set probe_t vm_regs 0\n"
        ".mo1d:\n"
        "inline scoreboard players operation probe_acc vm_regs += probe_t vm_regs\n"
        // *p=3 -> 5<=3 -> NOT taken
        "mov [probe_cell], 3\n"
        "inline scoreboard players set probe_t vm_regs 0\n"
        "jle 5, [probe_cell], .mo2\n"
        "jmp .mo2d\n"
        ".mo2:\n"
        "inline scoreboard players set probe_t vm_regs 1\n"
        ".mo2d:\n"
        "inline scoreboard players operation probe_acc vm_regs += probe_t vm_regs\n"
        // *p=6 -> 5<=6 -> taken
        "mov [probe_cell], 6\n"
        "inline scoreboard players set probe_t vm_regs 1\n"
        "jle 5, [probe_cell], .mo3\n"
        "jmp .mo3d\n"
        ".mo3:\n"
        "inline scoreboard players set probe_t vm_regs 0\n"
        ".mo3d:\n"
        "inline scoreboard players operation probe_acc vm_regs += probe_t vm_regs\n"

        "inline execute store result score %0 vm_regs run scoreboard players get probe_acc vm_regs\n"
        : "=r"(result)
    );

    return result;
}
