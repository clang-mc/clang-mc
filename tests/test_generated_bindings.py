from __future__ import annotations

import importlib.util
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
GEN_PATH = ROOT / "tools" / "commands" / "generator" / "generate.py"
BINDINGS_DIR = ROOT / "src" / "resources" / "libmc" / "include" / "bindings"
BINDINGS_SRC_DIR = ROOT / "src" / "resources" / "libmc" / "bindings"
VANILLA_PATH = BINDINGS_DIR / "vanilla.h"


def _load_generator():
    spec = importlib.util.spec_from_file_location("mc_generate", GEN_PATH)
    module = importlib.util.module_from_spec(spec)
    assert spec.loader is not None
    spec.loader.exec_module(module)
    return module


gen = _load_generator()


# Commands intentionally left without a structured binding: their real
# grammar is a nested subcommand tree / NBT-path DSL that the flat
# single-line generator cannot express. They remain callable via exec().
# Keeping this set explicit turns "a new stub silently slipped in" into a
# test failure.
EXEC_ONLY_COMMANDS = {
    "data",
    "execute",
    "item",
    "loot",
    "team",
}


class GeneratedBindingsTests(unittest.TestCase):
    def setUp(self) -> None:
        self.schema = gen.load_schema()
        self.commands = self.schema["commands"]
        self.by_name = {command["name"]: command for command in self.commands}

    # -- committed artifacts stay in sync with the generator ---------------

    def test_regeneration_matches_committed_headers(self) -> None:
        """Every committed header must be byte-identical to a fresh render."""
        for command in self.commands:
            if command.get("hand_written"):
                continue
            expected_header, expected_companion = gen.render_header(command, self.by_name)
            actual = (BINDINGS_DIR / command["header"]).read_text(encoding="utf-8")
            self.assertEqual(
                actual, expected_header, f"{command['header']} is stale; rerun generate.py"
            )
            companion_path = BINDINGS_SRC_DIR / f"{Path(command['header']).stem}.c"
            if expected_companion is None:
                self.assertFalse(
                    companion_path.exists(),
                    f"{companion_path.name} is stale; rerun generate.py",
                )
            else:
                actual_companion = companion_path.read_text(encoding="utf-8")
                self.assertEqual(
                    actual_companion,
                    gen.render_command_helpers_c(command, expected_companion),
                    f"{companion_path.name} is stale; rerun generate.py",
                )

    def test_regeneration_matches_committed_vanilla_header(self) -> None:
        expected = gen.render_vanilla_bindings(self.commands)
        actual = VANILLA_PATH.read_text(encoding="utf-8")
        self.assertEqual(actual, expected, "vanilla.h is stale; rerun generate.py")

    # -- coverage: which commands still lack a structured binding ----------

    def test_only_expected_commands_are_exec_only(self) -> None:
        exec_only = {
            command["name"]
            for command in self.commands
            if "variants" not in command and "alias_of" not in command
        }
        self.assertEqual(
            exec_only,
            EXEC_ONLY_COMMANDS,
            "the set of unbound (exec-only) commands changed unexpectedly",
        )

    def test_every_other_command_generates_structured_functions(self) -> None:
        for command in self.commands:
            if command["name"] in EXEC_ONLY_COMMANDS:
                continue
            header = (BINDINGS_DIR / command["header"]).read_text(encoding="utf-8")
            self.assertIn(
                "static inline int",
                header,
                f"{command['header']} unexpectedly has no bindings",
            )

    # -- new generator features -------------------------------------------

    def test_literal_pseudo_param_emits_token_but_no_c_argument(self) -> None:
        header = (BINDINGS_DIR / "experience.h").read_text(encoding="utf-8")
        # The `points` keyword is baked into the command text ...
        self.assertIn("experience add $(target) %1 points", header)
        # ... but never becomes a C parameter.
        self.assertIn("experience_add_points(Target target, int amount)", header)

    def test_literal_only_trailing_keyword_variants(self) -> None:
        header = (BINDINGS_DIR / "tag.h").read_text(encoding="utf-8")
        companion = (BINDINGS_SRC_DIR / "tag.c").read_text(encoding="utf-8")
        self.assertIn("tag_list(Target target)", header)
        self.assertIn("$(target) list", companion)

    def test_bool_param_type(self) -> None:
        header = (BINDINGS_DIR / "gamerule.h").read_text(encoding="utf-8")
        companion = (BINDINGS_SRC_DIR / "gamerule.c").read_text(encoding="utf-8")
        # Public signature is unchanged: bool is a plain `int value`.
        self.assertIn("gamerule_set_bool(String rule, int value)", header)
        # bool is a compile-time branch: an if/else on the int, each arm baking
        # the literal true/false straight into the command text. No McfStrRef,
        # no slot, no Release for the bool.
        self.assertIn("if (value) {", header)
        self.assertIn("gamerule_set_bool_unsafe(McfStrRef rule_ref, int value)", header)
        self.assertIn("gamerule $(rule) true", companion)
        self.assertIn("gamerule $(rule) false", companion)
        self.assertNotIn("value_ref", header)
        self.assertNotIn("_Command_BoolRef", header)
        # The old singleton helper is gone from the support header entirely.
        support = (BINDINGS_DIR / "CommandSupport.h").read_text(encoding="utf-8")
        self.assertNotIn("_Command_BoolRef", support)
        self.assertNotIn("_COMMAND_BOOL_TRUE", support)

    def test_vec2d_group_type(self) -> None:
        header = (BINDINGS_DIR / "spreadplayers.h").read_text(encoding="utf-8")
        self.assertIn("Vec2d center", header)

    def test_alias_forwards_all_params_including_values(self) -> None:
        """Regression: alias _unsafe forwarders used to drop value/enum args,
        forwarding only the ref slots (broke as soon as xp aliased a command
        with an int amount)."""
        header = (BINDINGS_DIR / "xp.h").read_text(encoding="utf-8")
        self.assertIn(
            "xp_add_points_unsafe(McfStrRef target_ref, int amount)", header
        )
        self.assertIn(
            "return experience_add_points_unsafe(target_ref, amount);", header
        )


if __name__ == "__main__":
    unittest.main()
