#once

// int __declen(int value)
__declen:
    mov t0, r0
    jl r0, 0, .begin
    mul r0, -1
.begin:
    inline execute store result score rax vm_regs run function std:_internal/declen_helper
    rge t0, 0
    add rax, 1
    ret


// unsigned int __pow2u(unsigned int b)
__pow2u:
    inline execute store result score rax vm_regs run function std:_internal/pow2u_helper
    ret


export std:_internal/declen_helper:
    inline execute if score r0 vm_regs matches -9.. run return 1
    inline execute if score r0 vm_regs matches -99.. run return 2
    inline execute if score r0 vm_regs matches -999.. run return 3
    inline execute if score r0 vm_regs matches -9999.. run return 4
    inline execute if score r0 vm_regs matches -99999.. run return 5
    inline execute if score r0 vm_regs matches -999999.. run return 6
    inline execute if score r0 vm_regs matches -9999999.. run return 7
    inline execute if score r0 vm_regs matches -99999999.. run return 8
    inline return 9
    ret

export std:_internal/pow2u_helper:
    inline execute if score r0 vm_regs matches 0 run return 1
    inline execute if score r0 vm_regs matches 1 run return 2
    inline execute if score r0 vm_regs matches 2 run return 4
    inline execute if score r0 vm_regs matches 3 run return 8
    inline execute if score r0 vm_regs matches 4 run return 16
    inline execute if score r0 vm_regs matches 5 run return 32
    inline execute if score r0 vm_regs matches 6 run return 64
    inline execute if score r0 vm_regs matches 7 run return 128
    inline execute if score r0 vm_regs matches 8 run return 256
    inline execute if score r0 vm_regs matches 9 run return 512
    inline execute if score r0 vm_regs matches 10 run return 1024
    inline execute if score r0 vm_regs matches 11 run return 2048
    inline execute if score r0 vm_regs matches 12 run return 4096
    inline execute if score r0 vm_regs matches 13 run return 8192
    inline execute if score r0 vm_regs matches 14 run return 16384
    inline execute if score r0 vm_regs matches 15 run return 32768
    inline execute if score r0 vm_regs matches 16 run return 65536
    inline execute if score r0 vm_regs matches 17 run return 131072
    inline execute if score r0 vm_regs matches 18 run return 262144
    inline execute if score r0 vm_regs matches 19 run return 524288
    inline execute if score r0 vm_regs matches 20 run return 1048576
    inline execute if score r0 vm_regs matches 21 run return 2097152
    inline execute if score r0 vm_regs matches 22 run return 4194304
    inline execute if score r0 vm_regs matches 23 run return 8388608
    inline execute if score r0 vm_regs matches 24 run return 16777216
    inline execute if score r0 vm_regs matches 25 run return 33554432
    inline execute if score r0 vm_regs matches 26 run return 67108864
    inline execute if score r0 vm_regs matches 27 run return 134217728
    inline execute if score r0 vm_regs matches 28 run return 268435456
    inline execute if score r0 vm_regs matches 29 run return 536870912
    inline execute if score r0 vm_regs matches 30 run return 1073741824
    inline execute if score r0 vm_regs matches 31 run return -2147483648
    inline return -1
    ret
