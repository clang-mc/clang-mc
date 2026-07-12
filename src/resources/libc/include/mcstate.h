#pragma once

/*
 * Coarse-grained shadow for the datapack VM's shared `std:vm` storage state.
 *
 * `__mc_state` is never actually addressed at Minecraft runtime; it exists only
 * to give the C/LLVM memory model a *concrete object* so that every opaque MC
 * storage operation -- the `__builtin_mcf_str_*` intrinsics and the surrounding
 * hand-written inline asm -- can carry precise ordering dependencies on a single
 * coarse "MC state" location. This orders all MC storage ops relative to each
 * other WITHOUT a blunt `"memory"` clobber, so unrelated (register/heap) memory
 * optimizations still flow freely across them.
 *
 * A single coarse shadow (rather than one per s1/s6/slot) is deliberate: under
 * multi-datapack collaboration, external functions may touch the same `std:vm`
 * storage between our operations, so keeping ALL MC-state ops mutually ordered
 * is the safer, less bug-prone choice; the cost (a few independent MC ops that
 * can no longer be reordered) is negligible at this runtime boundary.
 *
 * See tools/foo-benchmark/TASK-const-string-fold.md for the full contract.
 */
extern char __mc_state;

/*
 * Zero-instruction ordering point on MC storage state. Being `volatile` it is
 * ordered against all other volatile asm (as today's MC asm already are); the
 * `"=m"(__mc_state)` operand additionally ties it to the `__builtin_mcf_str_*`
 * intrinsics (which read/write the same `__mc_state` via their state operand).
 *
 * The operand is write-only (`"=m"`), NOT read-write (`"+m"`): a read-write
 * operand makes every barrier read the previous barrier's write to __mc_state,
 * forming a serial RAW dependency chain that pins register lifetimes across the
 * whole sequence and spills heavily under LTO-inlined register pressure
 * (measured +853 instructions on foo). Write-only keeps the ordering (barriers
 * order via WAW, and via WAR/RAW against the intrinsics' read-write of the same
 * location) while breaking that spurious read chain -- precise and free.
 */
#define MC_STATE_BARRIER() __asm__ volatile("" : "=m"(__mc_state))
#define MC_BARRIER() MC_STATE_BARRIER()
