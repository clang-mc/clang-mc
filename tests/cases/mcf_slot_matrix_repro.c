#include <minecraft.h>

static _Block TEST_BLOCK_STONE = {
    {"minecraft", "stone"},
    0,
    "block.minecraft.stone",
    6.0f,
    0.6f,
    0,
};

int
main(void)
{
    McfStrRef literal_mcf;
    String    literal_string;
    Target    literal_target;
    McfStrRef identifier_mcf;
    McfStrRef block_mcf;

    literal_mcf = McfStrRef_FromLiteral("abc");
    if (literal_mcf == 0)
        return 100;
    if (McfStrRef_SlotId(literal_mcf) < 0)
        return 101;

    literal_string = String_FromLiteral("abc");
    if (literal_string == 0)
        return 102;
    if (String_EnsureMcfStrRef(literal_string) != 0)
        return 103;

    literal_target = Target_FromLiteral("@a");
    if (literal_target == 0)
        return 104;
    if (Target_EnsureMcf(literal_target) != 0)
        return 105;

    identifier_mcf = McfStrRef_FromIdentifier(&TEST_BLOCK_STONE.identifier);
    if (identifier_mcf == 0)
        return 106;
    if (McfStrRef_SlotId(identifier_mcf) < 0)
        return 107;

    block_mcf = Block_EnsureMcfName(&TEST_BLOCK_STONE);
    if (block_mcf == 0)
        return 108;
    if (McfStrRef_SlotId(block_mcf) < 0)
        return 109;

    return 0;
}
