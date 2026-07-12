#include <mcstate.h>

/*
 * The single definition of the MC storage state shadow. See mcstate.h.
 *
 * Referenced by the `__builtin_mcf_str_*` intrinsics (as their `mc_state`
 * operand) and by MC_STATE_BARRIER(); never truly loaded/stored at runtime.
 */
char __mc_state;
