import os
import shutil
import subprocess
from pathlib import Path

from internal import *


def initialize():
    assert Const.BUILD_DIR.exists()
    assert Const.BUILD_BIN_DIR.exists()
    FileUtils.ensureDirectoryNotExist(Path(Const.BUILD_DIR, "assets"))
    FileUtils.ensureDirectoryNotExist(Path(Const.BUILD_DIR, "include"))
    FileUtils.ensureDirectoryNotExist(Path(Const.BUILD_DIR, "libmc"))
    FileUtils.ensureDirectoryNotExist(Path(Const.BUILD_DIR, "libc"))
    FileUtils.ensureDirectoryEmpty(Const.BUILD_TMP_DIR)


def getPrettyCmd(command):
    return ' '.join(map(lambda s: f'"{s}"' if " " in s else s, map(str, command)))


def main():
    initialize()

    # 拷贝基本stdlib
    print("Copying runtime assets to bin...")
    shutil.copytree(Path(Const.RESOURCES_DIR, "assets"), Path(Const.BUILD_DIR, "assets"))
    shutil.copytree(Path(Const.RESOURCES_DIR, "include"), Path(Const.BUILD_DIR, "include"))
    shutil.copytree(Path(Const.RESOURCES_DIR, "libmc"), Path(Const.BUILD_DIR, "libmc"))
    shutil.copytree(Path(Const.RESOURCES_DIR, "libc"), Path(Const.BUILD_DIR, "libc"))

    # # 编译stdlib
    # print("Compiling stdlib...")
    # sources: set[str] = set()
    # command = [str(Const.EXECUTABLE), "--compile-only", "--namespace", "std:_internal", "--build-dir", str(Const.BUILD_TMP_DIR)]
    # command.extend(sources)
    # print(f"Compile command: {getPrettyCmd(command)}")
    # process = subprocess.Popen(
    #     command,
    #     stdout=subprocess.PIPE,
    #     stderr=subprocess.PIPE,
    #     encoding="UTF-8",
    #     bufsize=1,
    #     universal_newlines=True
    # )
    # for out in process.communicate():
    #     if out is None or len(out) == 0:
    #         continue
    #     print(out.strip())
    #
    # # 拷贝stdlib
    # print("Copying stdlib...")
    # shutil.copytree(Const.BUILD_TMP_DIR, Path(Const.BUILD_DIR, "assets/stdlib"), dirs_exist_ok=True)

    print("Cleaning...")
    shutil.rmtree(Const.BUILD_TMP_DIR)


if __name__ == '__main__':
    main()
