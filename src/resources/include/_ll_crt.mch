#once

#include "_ll_std"
#include "_ll_libc"

// -- Begin function _start
_start:                                 // @_start
// %bb.0:
	mov	r0, 0
	mov	r1, 0
	call	main
	inline data modify storage std:vm s0 set value {a: -1}
	inline execute store result storage std:vm s0.a int 1 run scoreboard players get rax vm_regs
	inline function _ll_shared:z/_start_0 with storage std:vm s0
// -- End function

export _ll_shared:z/_start_0:
    inline $return $(a)
	ret
