#include "builder/postopt/parser/CommandTokenizer.h"
#include "builder/postopt/parser/ExecuteParser.h"
#include "ir/OpCommon.h"
#include "parse/PreProcessor.h"
#include "utils/string/StringUtils.h"

// The production headers intentionally define WARN(condition, message), while
// Catch2 uses WARN(message).  Tests do not need the production macro after the
// headers have been parsed, so let Catch2 own the public test assertion name.
#ifdef WARN
#undef WARN
#endif

#define CATCH_CONFIG_MAIN
#include <catch2/catch_all.hpp>

TEST_CASE("removeComment keeps comment markers inside quoted literals") {
    CHECK(string::removeComment("inline tellraw @a {\"text\":\"; //\"}")
          == "inline tellraw @a {\"text\":\"; //\"}");
    CHECK(string::removeComment("inline tellraw @a {\"text\":\"\\\";\\\"\"} // trailing")
          == "inline tellraw @a {\"text\":\"\\\";\\\"\"} ");
    CHECK(string::removeComment("mov rax, ';' ; trailing") == "mov rax, ';' ");
    CHECK(string::removeComment("mov rax, 1 // trailing") == "mov rax, 1 ");
    CHECK(string::removeComment("inline tellraw @a \"unterminated ; //")
          == "inline tellraw @a \"unterminated ; //");
}

TEST_CASE("PreProcessor expands object macros across CRLF input") {
    PreProcessor processor;
    processor.addTargetString("#define VALUE 42\r\n"
                              "inline tellraw @a {\"text\":\"quoted, //\"}\r\n"
                              "mov rax, VALUE\r\n");
    processor.process();

    const auto &targets = processor.getTargets();
    REQUIRE(targets.size() == 1);
    CHECK(targets.front().code.find("{\"text\":\"quoted, //\"}") != std::string::npos);
    CHECK(targets.front().code.find("mov rax, 42") != std::string::npos);
}

TEST_CASE("postopt tokenizer preserves nested JSON and token spans") {
    const auto tokens = postopt::tokenizeCommand(
            "tellraw @a {\"text\":\"hello world\",\"extra\":[{\"text\":\"!\"}]}");
    REQUIRE(tokens.size() == 3);
    CHECK(tokens[0].text == "tellraw");
    CHECK(tokens[1].text == "@a");
    CHECK(tokens[2].text == "{\"text\":\"hello world\",\"extra\":[{\"text\":\"!\"}]}");
    CHECK(tokens[2].start == 11);
}

TEST_CASE("execute parser identifies selector chains before run") {
    const auto tokens = postopt::parseExecuteTokens(
            "execute as @e[type=minecraft:pig] at @s run say hello");
    REQUIRE(tokens.size() == 2);
    CHECK(tokens[0].subcommand == "as");
    CHECK(tokens[0].args == "@e[type=minecraft:pig]");
    CHECK(tokens[1].subcommand == "at");
    CHECK(tokens[1].args == "@s");
}

TEST_CASE("IR number parser accepts supported radix forms") {
    CHECK(parseToNumber("2147483647") == 2147483647);
    CHECK(parseToNumber("-2147483648") == (-2147483647 - 1));
    CHECK(parseToNumber("0x0b") == 11);
    CHECK(parseToNumber("1011b") == 11);
    CHECK(parseToNumber("17o") == 15);
}
