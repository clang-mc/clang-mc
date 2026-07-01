// Probes compile-time constant folding of Jcc when both operands are immediates.
// Each sub-test runs a Jcc whose operands are both literals; the jump is either
// statically taken (control reaches .taken_N, setting the result bit to 0) or
// statically not taken (control falls through, leaving the result bit at 1).
//
// We accumulate one failing point per sub-test that produced the wrong branch.
// main returns 0 only when every fold matched the documented Jcc semantics.

int main(void) {
    int result;

    __asm volatile (
        // r0 accumulates failures; start at 0.
        "inline scoreboard players set probe_acc vm_regs 0\n"

        // jg 5,3 -> 5 > 3 -> should jump.
        "inline scoreboard players set probe_t vm_regs 1\n"
        "jg 5, 3, .jg_taken\n"
        "jmp .jg_done\n"
        ".jg_taken:\n"
        "inline scoreboard players set probe_t vm_regs 0\n"
        ".jg_done:\n"
        "inline scoreboard players operation probe_acc vm_regs += probe_t vm_regs\n"

        // jg 3,5 -> 3 > 5 -> should NOT jump.
        "inline scoreboard players set probe_t vm_regs 0\n"
        "jg 3, 5, .jg2_taken\n"
        "jmp .jg2_done\n"
        ".jg2_taken:\n"
        "inline scoreboard players set probe_t vm_regs 1\n"
        ".jg2_done:\n"
        "inline scoreboard players operation probe_acc vm_regs += probe_t vm_regs\n"

        // jne 5,5 -> 5 != 5 false -> should NOT jump.
        "inline scoreboard players set probe_t vm_regs 0\n"
        "jne 5, 5, .jne_taken\n"
        "jmp .jne_done\n"
        ".jne_taken:\n"
        "inline scoreboard players set probe_t vm_regs 1\n"
        ".jne_done:\n"
        "inline scoreboard players operation probe_acc vm_regs += probe_t vm_regs\n"

        // jne 5,3 -> 5 != 3 true -> should jump.
        "inline scoreboard players set probe_t vm_regs 1\n"
        "jne 5, 3, .jne2_taken\n"
        "jmp .jne2_done\n"
        ".jne2_taken:\n"
        "inline scoreboard players set probe_t vm_regs 0\n"
        ".jne2_done:\n"
        "inline scoreboard players operation probe_acc vm_regs += probe_t vm_regs\n"

        // jge 5,5 -> should jump.
        "inline scoreboard players set probe_t vm_regs 1\n"
        "jge 5, 5, .jge_taken\n"
        "jmp .jge_done\n"
        ".jge_taken:\n"
        "inline scoreboard players set probe_t vm_regs 0\n"
        ".jge_done:\n"
        "inline scoreboard players operation probe_acc vm_regs += probe_t vm_regs\n"

        // jge 3,5 -> should NOT jump.
        "inline scoreboard players set probe_t vm_regs 0\n"
        "jge 3, 5, .jge2_taken\n"
        "jmp .jge2_done\n"
        ".jge2_taken:\n"
        "inline scoreboard players set probe_t vm_regs 1\n"
        ".jge2_done:\n"
        "inline scoreboard players operation probe_acc vm_regs += probe_t vm_regs\n"

        // jl 3,5 -> should jump.
        "inline scoreboard players set probe_t vm_regs 1\n"
        "jl 3, 5, .jl_taken\n"
        "jmp .jl_done\n"
        ".jl_taken:\n"
        "inline scoreboard players set probe_t vm_regs 0\n"
        ".jl_done:\n"
        "inline scoreboard players operation probe_acc vm_regs += probe_t vm_regs\n"

        // jl 5,5 -> should NOT jump.
        "inline scoreboard players set probe_t vm_regs 0\n"
        "jl 5, 5, .jl2_taken\n"
        "jmp .jl2_done\n"
        ".jl2_taken:\n"
        "inline scoreboard players set probe_t vm_regs 1\n"
        ".jl2_done:\n"
        "inline scoreboard players operation probe_acc vm_regs += probe_t vm_regs\n"

        // jle 5,5 -> should jump.
        "inline scoreboard players set probe_t vm_regs 1\n"
        "jle 5, 5, .jle_taken\n"
        "jmp .jle_done\n"
        ".jle_taken:\n"
        "inline scoreboard players set probe_t vm_regs 0\n"
        ".jle_done:\n"
        "inline scoreboard players operation probe_acc vm_regs += probe_t vm_regs\n"

        // jle 6,5 -> should NOT jump.
        "inline scoreboard players set probe_t vm_regs 0\n"
        "jle 6, 5, .jle2_taken\n"
        "jmp .jle2_done\n"
        ".jle2_taken:\n"
        "inline scoreboard players set probe_t vm_regs 1\n"
        ".jle2_done:\n"
        "inline scoreboard players operation probe_acc vm_regs += probe_t vm_regs\n"

        "inline execute store result score %0 vm_regs run scoreboard players get probe_acc vm_regs\n"
        : "=r"(result)
    );

    return result;
}
