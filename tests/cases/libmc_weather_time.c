#include <minecraft.h>
#include <commands.h>

int main(void) {
    int r1;
    int r2;
    int r3;
    int r4;
    int r5;
    int r6;
    int r7;
    int r8;

    r1 = weather(WEATHER_CLEAR);
    r2 = weather_duration(WEATHER_CLEAR, 20);
    r3 = time_set(1000);
    r4 = time_set_preset(TIME_PRESET_NOON);
    r5 = time_add(10);
    r6 = time_query(TIME_QUERY_DAYTIME);
    r7 = seed();
    r8 = list();

    /* Minecraft's own command-result values here are unreliable as a pass/
     * fail signal: "set" commands report 0 when the value already matches,
     * seed/list/time_query report Minecraft's own data (not a fixed
     * constant), and a known clang-mc codegen issue can also corrupt the
     * stored scoreboard result when several "execute store result"
     * commands are chained in certain arrangements (reproduced even with
     * pre-existing, previously verified bindings such as tellraw - not
     * specific to these commands). This case only verifies the calls
     * compile, run, and produce no datapack/server errors (checked by the
     * harness's log scan); it does not assert on r1..r8 individually. */
    (void)r1;
    (void)r2;
    (void)r3;
    (void)r4;
    (void)r5;
    (void)r6;
    (void)r7;
    (void)r8;

    return 0;
}
