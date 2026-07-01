// Dual memory-operand arithmetic regression probe (ISA S5).
//
// The ISA states ADD/SUB/MUL/DIV/REM may operate on two memory operands, e.g.
// `ADD [P], [Q]` -> `*P = *P + *Q`. Previously these ops rejected (Ptr, Ptr)
// with `ir.op.memory_operands`. This probe exercises each op in its `[p], [q]`
// form against two static-data cells, loads the left cell back into a register,
// and asserts the result equals the expected value (and that the right cell is
// left unchanged). probe_acc accumulates one failure point per wrong result;
// main returns probe_acc (0 == all correct).

__asm__(
"static am_p, 0\n"
"static am_q, 0\n"
);

int main(void) {
    int result;

    __asm volatile (
        "inline scoreboard players set probe_acc vm_regs 0\n"

        // add: 10 + 3 = 13 ; q unchanged (3)
        "mov [am_p], 10\n"
        "mov [am_q], 3\n"
        "add [am_p], [am_q]\n"
        "mov t1, [am_p]\n"
        "inline execute unless score t1 vm_regs matches 13 run scoreboard players add probe_acc vm_regs 1\n"
        "mov t1, [am_q]\n"
        "inline execute unless score t1 vm_regs matches 3 run scoreboard players add probe_acc vm_regs 1\n"

        // sub: 10 - 3 = 7
        "mov [am_p], 10\n"
        "mov [am_q], 3\n"
        "sub [am_p], [am_q]\n"
        "mov t1, [am_p]\n"
        "inline execute unless score t1 vm_regs matches 7 run scoreboard players add probe_acc vm_regs 1\n"

        // mul: 10 * 3 = 30
        "mov [am_p], 10\n"
        "mov [am_q], 3\n"
        "mul [am_p], [am_q]\n"
        "mov t1, [am_p]\n"
        "inline execute unless score t1 vm_regs matches 30 run scoreboard players add probe_acc vm_regs 1\n"

        // div: 17 / 5 = 3 (truncated)
        "mov [am_p], 17\n"
        "mov [am_q], 5\n"
        "div [am_p], [am_q]\n"
        "mov t1, [am_p]\n"
        "inline execute unless score t1 vm_regs matches 3 run scoreboard players add probe_acc vm_regs 1\n"

        // rem: 17 %% 5 = 2
        "mov [am_p], 17\n"
        "mov [am_q], 5\n"
        "rem [am_p], [am_q]\n"
        "mov t1, [am_p]\n"
        "inline execute unless score t1 vm_regs matches 2 run scoreboard players add probe_acc vm_regs 1\n"

        // add self-alias: [p] + [p] -> double (8 -> 16)
        "mov [am_p], 8\n"
        "add [am_p], [am_p]\n"
        "mov t1, [am_p]\n"
        "inline execute unless score t1 vm_regs matches 16 run scoreboard players add probe_acc vm_regs 1\n"

        "inline execute store result score %0 vm_regs run scoreboard players get probe_acc vm_regs\n"
        : "=r"(result)
    );

    return result;
}
