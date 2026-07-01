// Probes Jcc with an immediate on the LEFT and a register on the RIGHT.
// This exercises the (Immediate, Register) path, which must evaluate
// `imm op reg` (NOT the swapped `reg op imm`).
//
// The register operand is a real VM register (t1) loaded with an immediate,
// so the comparison is a real runtime score comparison. Each sub-test follows
// the same convention as jcc_const_fold_probe: probe_t is primed so that the
// documented branch leaves probe_t == 0, and a wrong branch leaves probe_t == 1.
// All sub-test results are summed into probe_acc; main returns probe_acc, so 0
// means every (Immediate, Register) comparison matched the ISA semantics.
//
//   jg  5, r : 5 > r  -> taken iff r <  5
//   jl  5, r : 5 < r  -> taken iff r >  5
//   jge 5, r : 5 >= r -> taken iff r <= 5
//   jle 5, r : 5 <= r -> taken iff r >= 5

int main(void) {
    int result;

    __asm volatile (
        "inline scoreboard players set probe_acc vm_regs 0\n"

        // ---- jg 5, r (taken iff r < 5) ----
        // r=3 -> 5>3 -> should jump
        "inline scoreboard players set t1 vm_regs 3\n"
        "inline scoreboard players set probe_t vm_regs 1\n"
        "jg 5, t1, .rg1\n"
        "jmp .rg1d\n"
        ".rg1:\n"
        "inline scoreboard players set probe_t vm_regs 0\n"
        ".rg1d:\n"
        "inline scoreboard players operation probe_acc vm_regs += probe_t vm_regs\n"
        // r=6 -> 5>6 -> should NOT jump
        "inline scoreboard players set t1 vm_regs 6\n"
        "inline scoreboard players set probe_t vm_regs 0\n"
        "jg 5, t1, .rg2\n"
        "jmp .rg2d\n"
        ".rg2:\n"
        "inline scoreboard players set probe_t vm_regs 1\n"
        ".rg2d:\n"
        "inline scoreboard players operation probe_acc vm_regs += probe_t vm_regs\n"
        // r=5 -> 5>5 -> should NOT jump (boundary)
        "inline scoreboard players set t1 vm_regs 5\n"
        "inline scoreboard players set probe_t vm_regs 0\n"
        "jg 5, t1, .rg3\n"
        "jmp .rg3d\n"
        ".rg3:\n"
        "inline scoreboard players set probe_t vm_regs 1\n"
        ".rg3d:\n"
        "inline scoreboard players operation probe_acc vm_regs += probe_t vm_regs\n"

        // ---- jl 5, r (taken iff r > 5) ----
        // r=6 -> 5<6 -> should jump
        "inline scoreboard players set t1 vm_regs 6\n"
        "inline scoreboard players set probe_t vm_regs 1\n"
        "jl 5, t1, .rl1\n"
        "jmp .rl1d\n"
        ".rl1:\n"
        "inline scoreboard players set probe_t vm_regs 0\n"
        ".rl1d:\n"
        "inline scoreboard players operation probe_acc vm_regs += probe_t vm_regs\n"
        // r=3 -> 5<3 -> should NOT jump
        "inline scoreboard players set t1 vm_regs 3\n"
        "inline scoreboard players set probe_t vm_regs 0\n"
        "jl 5, t1, .rl2\n"
        "jmp .rl2d\n"
        ".rl2:\n"
        "inline scoreboard players set probe_t vm_regs 1\n"
        ".rl2d:\n"
        "inline scoreboard players operation probe_acc vm_regs += probe_t vm_regs\n"
        // r=5 -> 5<5 -> should NOT jump (boundary)
        "inline scoreboard players set t1 vm_regs 5\n"
        "inline scoreboard players set probe_t vm_regs 0\n"
        "jl 5, t1, .rl3\n"
        "jmp .rl3d\n"
        ".rl3:\n"
        "inline scoreboard players set probe_t vm_regs 1\n"
        ".rl3d:\n"
        "inline scoreboard players operation probe_acc vm_regs += probe_t vm_regs\n"

        // ---- jge 5, r (taken iff r <= 5) ----
        // r=5 -> 5>=5 -> should jump (boundary)
        "inline scoreboard players set t1 vm_regs 5\n"
        "inline scoreboard players set probe_t vm_regs 1\n"
        "jge 5, t1, .re1\n"
        "jmp .re1d\n"
        ".re1:\n"
        "inline scoreboard players set probe_t vm_regs 0\n"
        ".re1d:\n"
        "inline scoreboard players operation probe_acc vm_regs += probe_t vm_regs\n"
        // r=3 -> 5>=3 -> should jump
        "inline scoreboard players set t1 vm_regs 3\n"
        "inline scoreboard players set probe_t vm_regs 1\n"
        "jge 5, t1, .re2\n"
        "jmp .re2d\n"
        ".re2:\n"
        "inline scoreboard players set probe_t vm_regs 0\n"
        ".re2d:\n"
        "inline scoreboard players operation probe_acc vm_regs += probe_t vm_regs\n"
        // r=6 -> 5>=6 -> should NOT jump
        "inline scoreboard players set t1 vm_regs 6\n"
        "inline scoreboard players set probe_t vm_regs 0\n"
        "jge 5, t1, .re3\n"
        "jmp .re3d\n"
        ".re3:\n"
        "inline scoreboard players set probe_t vm_regs 1\n"
        ".re3d:\n"
        "inline scoreboard players operation probe_acc vm_regs += probe_t vm_regs\n"

        // ---- jle 5, r (taken iff r >= 5) ----
        // r=5 -> 5<=5 -> should jump (boundary)
        "inline scoreboard players set t1 vm_regs 5\n"
        "inline scoreboard players set probe_t vm_regs 1\n"
        "jle 5, t1, .ro1\n"
        "jmp .ro1d\n"
        ".ro1:\n"
        "inline scoreboard players set probe_t vm_regs 0\n"
        ".ro1d:\n"
        "inline scoreboard players operation probe_acc vm_regs += probe_t vm_regs\n"
        // r=6 -> 5<=6 -> should jump
        "inline scoreboard players set t1 vm_regs 6\n"
        "inline scoreboard players set probe_t vm_regs 1\n"
        "jle 5, t1, .ro2\n"
        "jmp .ro2d\n"
        ".ro2:\n"
        "inline scoreboard players set probe_t vm_regs 0\n"
        ".ro2d:\n"
        "inline scoreboard players operation probe_acc vm_regs += probe_t vm_regs\n"
        // r=3 -> 5<=3 -> should NOT jump
        "inline scoreboard players set t1 vm_regs 3\n"
        "inline scoreboard players set probe_t vm_regs 0\n"
        "jle 5, t1, .ro3\n"
        "jmp .ro3d\n"
        ".ro3:\n"
        "inline scoreboard players set probe_t vm_regs 1\n"
        ".ro3d:\n"
        "inline scoreboard players operation probe_acc vm_regs += probe_t vm_regs\n"

        "inline execute store result score %0 vm_regs run scoreboard players get probe_acc vm_regs\n"
        : "=r"(result)
    );

    return result;
}
