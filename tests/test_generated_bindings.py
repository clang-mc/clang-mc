from __future__ import annotations

import importlib.util
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
GEN_PATH = ROOT / "tools" / "commands" / "generator" / "generate.py"
BINDINGS_DIR = ROOT / "src" / "resources" / "libmc" / "bindings"
ENTITY_TYPES_PATH = ROOT / "src" / "resources" / "libmc" / "entity" / "EntityTypes.h"
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
    "attribute",
    "bossbar",
    "data",
    "execute",
    "item",
    "loot",
    "scoreboard",
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
            expected = gen.render_header(command, self.by_name)
            actual = (BINDINGS_DIR / command["header"]).read_text(encoding="utf-8")
            self.assertEqual(
                actual, expected, f"{command['header']} is stale; rerun generate.py"
            )

    def test_regeneration_matches_committed_entity_types(self) -> None:
        expected = gen.render_entity_types(gen.parse_entity_ids())
        actual = ENTITY_TYPES_PATH.read_text(encoding="utf-8")
        self.assertEqual(actual, expected, "EntityTypes.h is stale; rerun generate.py")

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
        self.assertIn("tag_list(Target target)", header)
        self.assertIn("$(target) list", header)

    def test_bool_param_type(self) -> None:
        header = (BINDINGS_DIR / "gamerule.h").read_text(encoding="utf-8")
        self.assertIn("gamerule_set_bool(String rule, int value)", header)
        # bool converts via the shared never-released singletons ...
        self.assertIn("_Command_BoolRef(value)", header)
        # ... so it is a borrowed ref: no McfStrRef_Release for the value arg.
        self.assertNotIn("McfStrRef_Release(value_ref)", header)
        support = (BINDINGS_DIR / "CommandSupport.h").read_text(encoding="utf-8")
        self.assertIn("_Command_BoolRef", support)
        self.assertIn("_COMMAND_BOOL_TRUE", support)
        self.assertIn('value ? "true" : "false"', support)

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
