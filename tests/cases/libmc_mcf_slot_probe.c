#include <minecraft.h>

int main(void) {
    String s;
    Target t;

    s = String_FromLiteral("abc");
    t = Target_FromLiteral("@a");
    if (s == 0 || t == 0)
        return 100;
    if (String_EnsureMcfStrRef(s) != 0)
        return 101;
    if (Target_EnsureMcf(t) != 0)
        return 102;
    return 0;
}
