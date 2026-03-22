-- ============================================================
-- xmake.lua — clang-mc build configuration
-- ============================================================

set_languages("c17", "c++20")
add_rules("mode.debug", "mode.release")

set_policy("build.optimization.lto", true)
set_policy("build.ccache", false)  -- 启用 ccache 在 windows 上有神秘问题

-- 生成 compile_commands.json
add_rules("plugin.compile_commands.autoupdate", { outputdir = "." })

-- debug_mode 开关
-- 用法：xmake f --debug_mode=y
option("debug_mode")
    set_description("Use debug flags even in release mode")
    set_default(false)
    set_showmenu(true)
option_end()

-- 运行时（仅 Windows MSVC/clang-cl）
if is_plat("windows") then
    if is_mode("release") then
        set_runtimes("MT")
    else
        set_runtimes("MTd")
    end
end

-- 依赖库
add_requires("fmt", { configs = { header_only = true } })
add_requires("spdlog", { configs = { header_only = true, fmt_external_ho = true } })
add_requires("nlohmann_json")
add_requires("yaml-cpp", { configs = { shared = false } })
add_requires("libzip", { configs = { shared = false } })

-- 编译目标
target("clang-mc")
    set_kind("binary")
    set_targetdir("$(projectdir)/build/bin")

    add_files(
        "src/cpp/Main.cpp",
        "src/cpp/ClangMc.cpp",
        "src/cpp/Start.c",
        "src/cpp/config/ArgParser.cpp",
        "src/cpp/utils/CLIUtils.cpp",
        "src/cpp/utils/Native.c",
        "src/cpp/i18n/I18n.cpp",
        "src/cpp/ir/IR.cpp",
        "src/cpp/ir/IRCommon.cpp",
        "src/cpp/ir/OpCommon.cpp",
        "src/cpp/ir/controlFlow/JmpTable.cpp",
        "src/cpp/ir/verify/Verifier.cpp",
        "src/cpp/builder/Builder.cpp",
        "src/cpp/builder/PostOptimizer.cpp",
        "src/cpp/parse/ParseManager.cpp",
        "src/cpp/parse/PreProcessor.cpp"
    )

    add_includedirs("src/cpp", "src/cpp/patches")
    add_includedirs("include", { system = true })

    add_defines(
        "_CRT_SECURE_NO_WARNINGS",
        "FMT_HEADER_ONLY",
        "GENERATED_SETUP"
    )

    if is_config("toolchain", "clang") or is_config("toolchain", "clang-cl") then
        add_cxflags("-Wall", "-v", "-Wunknown-pragmas",

            "-Wno-unused-command-line-argument", "-Wno-declaration-after-statement",
            "-Wno-shadow-field-in-constructor", "-Wno-shadow-field",
            "-Wno-extra-semi", "-Wno-old-style-cast", "-Wno-exit-time-destructors", "-Wno-global-constructors",
            "-Wno-covered-switch-default", "-Wno-shadow-uncaptured-local", "-Wno-ctad-maybe-unsupported",
            "-Wno-padded", "-Wno-reserved-macro-identifier",

            "-Wno-pre-c11-compat", "-Wno-pre-c++17-compat", "-Wno-c++98-compat",
            "-Wno-c++98-compat-pedantic", "-Wno-c++20-extensions",
            "-Xclang", "-fsafe-buffer-usage-suggestions",
            { force = true })
    end

    -- Release 模式
    if is_mode("release") then
        if has_config("debug_mode") then
            add_cxflags("-g", { force = true })
        else
            if is_plat("windows") then
                add_cxflags("/O2", { force = true })
            else
                add_cxflags("-O3", "-fvisibility=hidden", { force = true })
            end

            if not is_config("toolchain", "msvc") then
                add_cxflags("-flto", { force = true })
            end

            add_defines("NDEBUG")
        end
    else
        add_cxflags("-g", { force = true })
    end

    -- 优化
    if is_plat("windows") and is_mode("release") and not has_config("debug_mode") then
        add_ldflags("/OPT:REF", "/OPT:ICF", { force = true })
    end
    -- 非 Windows 链接标志
    if is_plat("linux") then
        if not is_config("toolchain", "zig") then
            -- GCC/Clang 工具链：显式静态链接运行时
            add_ldflags("-static-libgcc", "-static-libstdc++", { force = true })
        end
        if is_mode("release") and not has_config("debug_mode") then
            -- 通过 -Wl, 前缀透传给 LLD / GNU ld（zig cc 是 Clang 驱动，不接受裸链接器标志）
            add_ldflags("-Wl,--gc-sections", "-Wl,-s", { force = true })
        end
    elseif is_plat("macosx") then
        if is_mode("release") and not has_config("debug_mode") then
            add_ldflags("-dead_strip", { force = true })
        end
    end

    if is_plat("windows") then
        add_syslinks("dbghelp", "Userenv", "ntdll", "user32", "kernel32")
    end

    -- 库
    add_packages("fmt", "spdlog", "nlohmann_json", "yaml-cpp", "libzip")

    -- 注入 i18n yaml
    before_build(function(target)
        local projectdir = os.projectdir()
        local langdir    = path.join(projectdir, "./src/resources/lang/")
        local langs      = {
            {
                key  = "YAML_ZH_CN",
                path = path.join(langdir, "ZH_CN.yaml")
            },
            {
                key  = "YAML_EN_US",
                path = path.join(langdir, "EN_US.yaml")
            }
        }
        local tmpl_path  = path.join(projectdir, "./src/cpp/i18n/I18nTemplate.h")
        local outdir     = path.join(target:autogendir(), "generated")
        local outfile    = path.join(outdir, "GeneratedI18n.h")

        local content    = io.readfile(tmpl_path)

        for _, lang in ipairs(langs) do
            local text = io.readfile(lang.path)

            -- 格式化
            text = text:gsub("\r\n", "\n"):gsub("\r", "\n")

            -- 转义
            text = text:gsub('"', '\\"')
            text = text:gsub("\n", '\\n"\n"')

            -- 替换模板占位符
            content = content:gsub("@" .. lang.key .. "@", text)
        end

        os.mkdir(outdir)
        if not os.isfile(outfile) or io.readfile(outfile) ~= content then
            io.writefile(outfile, content)
        end

        -- 将生成的文件加入 include 路径
        target:add("includedirs", outdir, { public = false })
    end)

    -- 生成 assets（交叉编译时跳过：宿主机无法执行目标平台二进制）
    after_build(function(target)
        local host_to_plat = { windows = "windows", linux = "linux", macosx = "macosx" }
        if host_to_plat[os.host()] ~= get_config("plat") then
            return
        end
        local script = path.join(os.projectdir(), "./src/python/build_assets.py")
        os.exec("python " .. script)
    end)
target_end()
