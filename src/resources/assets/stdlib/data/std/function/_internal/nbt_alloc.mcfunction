execute store result score rax vm_regs run data get storage std:vm nbt.free_head
execute if score rax vm_regs matches 0.. run data modify storage std:vm s6.id set from storage std:vm nbt.free_head
execute if score rax vm_regs matches 0.. run function std:_internal/nbt_alloc_reuse with storage std:vm s6
execute if score rax vm_regs matches ..-1 run function std:_internal/nbt_alloc_new with storage std:vm s6
