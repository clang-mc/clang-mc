#include <stdio.h>
#include <assert.h>
#include <stdint.h>

__attribute__((used))
static void
__ll_puts_char0(int c)
{
    __asm volatile (
        "inline data modify storage std:vm s1.str set from storage std:vm char2str_map.\"%0\""
        :
        : "r"(c)
    );
}

__attribute__((used))
static void
__ll_puts_char1(int c)
{
    __asm volatile (
        "inline data modify storage std:vm s1.next set from storage std:vm char2str_map.\"%0\""
        :
        : "r"(c)
    );
}

__attribute__((noinline))
int
puts(const char *str)
{
    assert(str != NULL);
    __asm volatile (
        "inline $scoreboard players set r0 vm_regs %0\n"
        "mov r1, 2\n"
        "call __bit_shl\n"
        "inline scoreboard players operation puts_ptr vm_regs = rax vm_regs\n"
        "inline data modify storage std:vm s1 set value {str: \"\", next: \"\"}\n"
        ".Lputs_loop:\n"
        "inline scoreboard players operation r0 vm_regs = puts_ptr vm_regs\n"
        "mov r1, 2\n"
        "call __bit_shr\n"
        "inline scoreboard players operation puts_word vm_regs = rax vm_regs\n"
        "inline scoreboard players operation r0 vm_regs = puts_ptr vm_regs\n"
        "mov r1, 3\n"
        "call __bit_and\n"
        "mov r0, rax\n"
        "mov r1, 3\n"
        "call __bit_shl\n"
        "inline scoreboard players operation puts_shift vm_regs = rax vm_regs\n"
        "inline data modify storage std:vm s2 set value {result: \"r0\", ptr: -1}\n"
        "inline execute store result storage std:vm s2.ptr int 1 run scoreboard players get puts_word vm_regs\n"
        "inline function std:_internal/load_heap_custom with storage std:vm s2\n"
        "inline scoreboard players operation r1 vm_regs = puts_shift vm_regs\n"
        "call __bit_shr\n"
        "mov r0, rax\n"
        "mov r1, 255\n"
        "call __bit_and\n"
        "mov r0, rax\n"
        "jz r0, .Lputs_done\n"
        "inline data modify storage std:vm s0 set value {a: -1}\n"
        "inline execute store result storage std:vm s0.a int 1 run scoreboard players get r0 vm_regs\n"
        "inline function _ll_shared:z/__ll_puts_char1_0 with storage std:vm s0\n"
        "inline data modify storage std:vm s3 set value {left: \"\", right: \"\"}\n"
        "inline data modify storage std:vm s3.left set from storage std:vm s1.str\n"
        "inline data modify storage std:vm s3.right set from storage std:vm s1.next\n"
        "inline function std:_internal/merge_string2 with storage std:vm s3\n"
        "inline data modify storage std:vm s1.str set from storage std:vm s3.string\n"
        "inline scoreboard players add puts_ptr vm_regs 1\n"
        "jmp .Lputs_loop\n"
        ".Lputs_done:\n"
        "inline tellraw @a {\"storage\": \"std:vm\", \"nbt\": \"s1.str\"}"
        :
        : "r"((uintptr_t)str)
    );
    return 1;
}
