#once

// Builtins
#include "compiler_rt/math"
#include "compiler_rt/bits"

// Compiler RT
#include "compiler_rt/adddf3.mch"
#include "compiler_rt/adddi3.mch"
#include "compiler_rt/addsf3.mch"
#include "compiler_rt/ashldi3.mch"
#include "compiler_rt/ashrdi3.mch"
#include "compiler_rt/bits.mch"
#include "compiler_rt/comparedf2.mch"
#include "compiler_rt/divdf3.mch"
#include "compiler_rt/divsf3.mch"
#include "compiler_rt/extendsfdf2.mch"
#include "compiler_rt/fixdfsi.mch"
#include "compiler_rt/fixsfsi.mch"
#include "compiler_rt/floatsidf.mch"
#include "compiler_rt/floatsisf.mch"
#include "compiler_rt/fp_mode.mch"
#include "compiler_rt/lshrdi3.mch"
#include "compiler_rt/math.mch"
#include "compiler_rt/muldf3.mch"
#include "compiler_rt/muldi3.mch"
#include "compiler_rt/mulsf3.mch"
#include "compiler_rt/subdf3.mch"
#include "compiler_rt/subdi3.mch"
#include "compiler_rt/subsf3.mch"
#include "compiler_rt/truncdfsf2.mch"
#include "compiler_rt/udivdi3.mch"
#include "compiler_rt/udivsi3.mch"
#include "compiler_rt/umoddi3.mch"
#include "compiler_rt/umodsi3.mch"

abort:
    inline tellraw @a "[DataPack] Aborted! Program has crashed, run /reload to reset."
    ret
