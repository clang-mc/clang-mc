$data modify storage std:vm nbt.slots[$(id)].value set value {}
$data modify storage std:vm nbt.slots[$(id)].refcnt set value 0
$data modify storage std:vm nbt.slots[$(id)].flags set value 0
$data modify storage std:vm nbt.slots[$(id)].next set from storage std:vm nbt.free_head
$data modify storage std:vm nbt.free_head set value $(id)
