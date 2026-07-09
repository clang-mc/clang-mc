import os
from pathlib import Path

PROJECT_DIR = Path(__file__).absolute().parent.parent.parent.parent
BUILD_DIR = Path(PROJECT_DIR, "build").absolute()
BUILD_BIN_DIR = Path(BUILD_DIR, "bin").absolute()
BUILD_TMP_DIR = Path(BUILD_DIR, "tmp").absolute()

EXECUTABLE = Path(BUILD_BIN_DIR, "clang-mc.exe" if os.name == "nt" else "clang-mc").absolute()

MCASM_DIR = Path(PROJECT_DIR, "src/mcasm").absolute()
RESOURCES_DIR = Path(PROJECT_DIR, "src/resources").absolute()
LLVM_DIR = Path(PROJECT_DIR, "llvm").absolute()
