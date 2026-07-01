/*
 * End-to-end probe for the backend optimizer's
 * `execute as @e[...] unless entity @s[...]` selector-merge pass
 * (postopt::mergeAsSelectorWithSelfCondition).
 *
 * The `inline` asm directives below are emitted verbatim into the generated
 * .mcfunction and therefore pass through the optimizer at compile time, so
 * the optimizer actually rewrites these `execute` lines. We then observe the
 * runtime effect through a scoreboard value read back into rax.
 *
 * M1 (De Morgan): `unless entity @s[tag=opt_a,tag=opt_b]` means
 *   NOT(has opt_a AND has opt_b). The buggy per-arg negation produced
 *   `@e[...,tag=!opt_a,tag=!opt_b]` = (has neither). We summon a probe entity
 *   that carries only `opt_a`:
 *     - correct semantics: condition NOT(a AND b) is TRUE -> command runs.
 *     - buggy merge: entity has opt_a so it fails tag=!opt_a -> command skipped.
 *   With the fix, multi-arg @s under `unless` is no longer folded, so the
 *   command runs and the counter becomes 1.
 */

int main(void) {
    int count;

    __asm volatile (
        /* Clean slate for the probe scoreboard objective + tagged entity. */
        "inline scoreboard objectives add opt_probe dummy\n"
        "inline scoreboard players set #opt_merge opt_probe 0\n"
        "inline kill @e[type=marker,tag=opt_probe_ent]\n"
        /* Summon a marker carrying only tag opt_a (NOT opt_b). */
        "inline summon marker ~ ~ ~ {Tags:[\"opt_probe_ent\",\"opt_a\"]}\n"
        /* The line under test: optimizer may try to fold @s into the as-selector. */
        "inline execute as @e[type=marker,tag=opt_probe_ent] unless entity @s[tag=opt_a,tag=opt_b] run scoreboard players add #opt_merge opt_probe 1\n"
        /* Read the counter back. */
        "inline execute store result score %0 vm_regs run scoreboard players get #opt_merge opt_probe\n"
        "inline kill @e[type=marker,tag=opt_probe_ent]"
        : "=r"(count)
    );

    /* Expected: command ran exactly once for the single matching entity. */
    return count == 1 ? 0 : count + 200;
}
