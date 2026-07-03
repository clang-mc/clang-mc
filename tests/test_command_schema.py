from __future__ import annotations

import json
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
SCHEMA_PATH = ROOT / "tools" / "commands" / "schema" / "vanilla_commands.json"
BINDINGS_DIR = ROOT / "src" / "resources" / "libmc" / "bindings"


class VanillaCommandSchemaTests(unittest.TestCase):
    def setUp(self) -> None:
        self.schema = json.loads(SCHEMA_PATH.read_text(encoding="utf-8"))
        self.commands = {command["name"]: command for command in self.schema["commands"]}

    def test_command_set_sanity(self) -> None:
        self.assertGreaterEqual(len(self.commands), 60)
        self.assertNotIn("return", self.commands)
        self.assertNotIn("stop", self.commands)
        self.assertNotIn("kick", self.commands)
        self.assertNotIn("tick", self.commands)

    def test_aliases_and_generated_headers(self) -> None:
        for name in ("experience", "xp", "msg", "tell", "w", "teammsg", "tm", "teleport", "tp"):
            self.assertIn(name, self.commands)
            self.assertTrue((BINDINGS_DIR / self.commands[name]["header"]).is_file())

        vanilla_header = (BINDINGS_DIR / "vanilla.h").read_text(encoding="utf-8")
        self.assertIn('#include "advancement.h"', vanilla_header)
        self.assertIn('#include "worldborder.h"', vanilla_header)

    def test_structured_bindings_are_generated(self) -> None:
        setblock_header = (BINDINGS_DIR / "setblock.h").read_text(encoding="utf-8")
        self.assertIn("setblock(Vec3i pos, Block block, SetBlockMode mode)", setblock_header)
        self.assertNotIn("_raw(", setblock_header)
        self.assertNotIn("_raw_unsafe(", setblock_header)

    def test_setblock_enum_is_namespaced(self) -> None:
        setblock_header = (BINDINGS_DIR / "setblock.h").read_text(encoding="utf-8")
        self.assertIn("SETBLOCK_DESTROY", setblock_header)
        self.assertIn("SETBLOCK_KEEP", setblock_header)
        self.assertIn("SETBLOCK_REPLACE", setblock_header)
        # Bare, unprefixed constants must not appear as standalone identifiers
        # (they previously polluted the global namespace, colliding with
        # common identifiers like DESTROY/KEEP/REPLACE used elsewhere).
        import re

        for bare in ("DESTROY", "KEEP", "REPLACE"):
            matches = re.findall(rf"(?<![A-Z_]){bare}(?![A-Z_])", setblock_header)
            self.assertEqual(
                matches, [], f"found unprefixed enum constant {bare!r} in setblock.h"
            )

        setblock_schema = self.commands["setblock"]
        enum_spec = next(
            enum for enum in setblock_schema["enums"] if enum["name"] == "SetBlockMode"
        )
        self.assertEqual(
            [value["const"] for value in enum_spec["values"]],
            ["SETBLOCK_DESTROY", "SETBLOCK_KEEP", "SETBLOCK_REPLACE"],
        )


if __name__ == "__main__":
    unittest.main()
