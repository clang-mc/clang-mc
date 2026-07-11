# 函数原型：int bit_and_nibble(int idx)  ; idx = a*16 + b, a,b in 0..15
# 用宏索引查表返回 (a AND b) 到 rax
# 汇编器的辅助实现（nibble 按位与查表）
$execute store result score rax vm_regs run data get storage std:vm bit_and_tbl[$(idx)] 1
