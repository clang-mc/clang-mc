#include <minecraft.h>

int main(void) {
    McfStrRef s;

    s = McfStrRef_FromLiteral("{\"text\":\"q\"}");
    if (s == 0)
        return 100;

    return 0;
}
