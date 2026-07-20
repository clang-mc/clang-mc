//
// Created by xia__mc on 2025/2/16.
//

#include "IR.h"
#include "ops/Nop.h"
#include "utils/string/StringUtils.h"
#include "ir/ops/Label.h"
#include "ir/ops/Jmp.h"
#include "utils/string/StringBuilder.h"
#include "ir/ops/Call.h"
#include "ir/ops/Movd.h"
#include "ir/controlFlow/JmpTable.h"
#include "objects/MatrixStack.h"
#include "ir/iops/Special.h"
#include "ir/ops/Static.h"
#include "ir/ops/Inline.h"
#include "ir/iops/CmpLike.h"
#include "parse/PreProcessor.h"
#include "random"
#include "uuidWrapper.h"

void IR::parse(std::string &&code) {
    this->sourceCode = std::move(code);
    auto lines = string::split(sourceCode, '\n');

    auto lineState = LineState(1, false, getFileDisplay(), nullptr);
    auto labelState = LabelState();
    auto lineStack = MatrixStack<LineState>();
    auto labelStack = MatrixStack<LabelState>();
    auto labelRenamer = NameGenerator();

    size_t errors = 0;
    for (size_t i = 0; i < lines.size(); ++i, ++lineState.lineNumber) {
        const auto str = string::trim(string::removeComment(lines[i]));
        if (UNLIKELY(str.empty())) {
            continue;
        }

        try {
            if (str[0] == '#') {
                auto splits = string::split(str.substr(1), ' ', 2);
                assert(!splits.empty());

                auto op = splits[0];
                auto param = splits.size() == 2 ? splits[1] : "";
                SWITCH_STR (op) {
                    CASE_STR("push"):
                        if (param.empty()) {
                            throw ParseException(i18nFormat("ir.invalid_pre_op", str));
                        }
                        SWITCH_STR (param) {
                            CASE_STR("line"):
                                lineStack.pushMatrix(lineState);
                                break;
                            CASE_STR("label"):
                                labelStack.pushMatrix(labelState);
                                break;
                            default:
                                throw ParseException(i18nFormat("ir.invalid_pre_op", str));
                        }
                        break;
                    CASE_STR("pop"):
                        if (param.empty()) {
                            throw ParseException(i18nFormat("ir.invalid_pre_op", str));
                        }
                        SWITCH_STR (param) {
                            CASE_STR("line"):
                                if (lineStack.isEmpty()) {
                                    throw ParseException(i18nFormat("ir.invalid_pop", param));
                                }
                                lineState = lineStack.popMatrix();
                                break;
                            CASE_STR("label"):
                                if (labelStack.isEmpty()) {
                                    throw ParseException(i18nFormat("ir.invalid_pop", param));
                                }
                                for (auto ptr: labelState.toRenameLabel) {
                                    if (labelState.renameLabelMap.contains(ptr->getLabelHash())) {
                                        ptr->setLabel(labelState.renameLabelMap.at(ptr->getLabelHash()));
                                    }
                                }
                                labelState = labelStack.popMatrix();
                                break;
                            default:
                                throw ParseException(i18nFormat("ir.invalid_pre_op", str));
                        }
                        break;
                    CASE_STR("line"): {
                        auto params = string::split(param, ' ', 2);
                        if (params.empty() || params.size() >= 3) {
                            throw ParseException(i18nFormat("ir.invalid_pre_op", str));
                        }

                        if (params.size() == 2) {
                            auto name = params[1];
                            if (name.size() < 2 || name.front() != '"' || name.back() != '"') {
                                throw ParseException(i18nFormat("ir.invalid_pre_op", str));
                            }
                            lineState.filename = name.substr(1, name.size() - 2);
                        }
                        lineState.lineNumber = parseToNumber(params[0]);
                        break;
                    }
                    CASE_STR("nowarn"):
                        if (!string::trim(param).empty()) {
                            throw ParseException(i18nFormat("ir.invalid_pre_op", str));
                        }
                        lineState.noWarn = true;
                        break;
                    default:
                        throw ParseException(i18nFormat("ir.invalid_pre_op", str));
                }
            } else {
                auto op = createOp(lineState, str);

                if (Label *ptr = INSTANCEOF(op, Label)) {
                    if (!labelStack.isEmpty() && !ptr->getExtern() && !ptr->getExport() && !ptr->getApi()) {
                        // 保留可读基名 + 唯一后缀（用于宏多次展开时的 hash 去重），
                        // 使 -g 调试注释仍能对照源码；不做不透明化混淆。
                        auto newLabel = fmt::format("{}.{}", string::legalizeMCPath(ptr->getLabel()),
                                                    labelRenamer.generate());
                        labelState.renameLabelMap.emplace(ptr->getLabelHash(), newLabel);
                        ptr->setLabel(std::move(newLabel));
                    }
                }
                if (CallLike *ptr = INSTANCEOF(op, CallLike)) {
                    if (!labelStack.isEmpty()) {
                        labelState.toRenameLabel.emplace_back(ptr);
                    }
                }

                this->sourceMap.emplace(op.get(), lines[i]);
                this->lineStateMap.emplace(op.get(), lineState);

                if (Label *ptr = INSTANCEOF(op, Label)) {
                    if (!ptr->getLocal()) {
                        lineState.lastLabel = ptr;
                    }
                    if (ptr->getExport() || ptr->getApi()) {
                        this->values.emplace_back(std::move(op));
                        this->values.emplace_back(std::make_unique<Nop>(INT_MIN));
                        continue;
                    }
                }
                this->values.emplace_back(std::move(op));
            }
        } catch (const ParseException &e) {
            logger->error(createIRMessage(lineState, lines[i], e.what()));
            errors++;
        }
    }

    if (errors != 0) {
        throw ParseException(i18nFormat("ir.errors_generated", errors));
    }
}

FORCEINLINE std::string IR::createForCall(const Label *labelOp) {
    std::string result;
    if (labelOp->getExport() || labelOp->getExtern() || labelOp->getApi()) {
        result = labelOp->getLabel();
    } else {
        // 内部（非导出/extern/api）函数：产出“可读且合法”的名字，而非不透明短名。
        // 以源文件名（stem，不含目录与扩展名）作前缀，兼顾可读性与路径长度；
        // 跨文件/同文件的唯一性由 initLabels 中针对全局内部名集合的去重保证。
        // 真正的不透明化混淆延后到 -O1/-O2 的 Obfuscator 阶段处理。
        result = config.getNameSpace() + string::legalizeMCPath(this->file.stem().string())
                 + "/" + string::legalizeMCPath(labelOp->getLabel());
    }

    if (!string::parseMCFunctionResourceLocation(result)) {
        throw ParseException(i18nFormat("ir.invalid_function_location", result));
    }
    return result;
}

static inline Path toPath(const std::string_view mcPath) {
    auto result = string::buildPathFromMCFunctionResourceLocation(mcPath);
    if (!result) {
        throw ParseException(i18nFormat("ir.invalid_function_location", mcPath));
    }
    return std::move(*result);
}

FORCEINLINE void IR::initLabels(LabelMap &labelMap) {
    for (const auto &op : this->values) {
        if (!INSTANCEOF(op, Label)) {
            continue;
        }

        auto labelOp = CAST_FAST(op, Label);
        Hash label = labelOp->getLabelHash();

        if (labelMap.contains(label)) {
            throw ParseException(i18nFormat("ir.verify.label_redefinition", labelOp->getLabel()));
        }

        auto labelNameForCall = createForCall(labelOp);

        // 内部函数名（stem/label 形式）在 legalize 后可能撞名——同 IR 内（如 Loop/loop、
        // a.b/a_b），或跨 IR 同名文件同名标签（如两个 main.mcasm 各有 loop）。用全局内部名
        // 集合去重、追加计数后缀兜底，保证跨编译单元的函数路径唯一；同时登记内部名供
        // Obfuscator 识别可混淆目标。
        if (!labelOp->getExport() && !labelOp->getExtern() && !labelOp->getApi()) {
            auto &internalNames = context.getInternalFunctions();
            if (internalNames.contains(labelNameForCall)) {
                size_t counter = 1;
                std::string candidate;
                do {
                    candidate = fmt::format("{}_{}", labelNameForCall, counter++);
                } while (internalNames.contains(candidate));
                labelNameForCall = std::move(candidate);
            }
            internalNames.emplace(labelNameForCall);
        } else if (labelOp->getExport()) {
            // 导出函数保留书写原名（不修饰、不去重、不重命名），但对后优化器而言视为内部函数：
            // 登记到 exportedFunctions，供 DCE/内联识别为可裁剪、可内联的目标。
            // api/extern 不登记——它们是永久根，永不被裁剪。
            context.getExportedFunctions().emplace(labelNameForCall);
        }

        labelMap.emplace(label, labelNameForCall);

        if (label == hash("_start")) {
            if (!context.getStartFunc().empty()) {
                throw ParseException(i18nFormat("ir.verify.label_redefinition", labelOp->getLabel()));
            }
            context.setStartFunc(labelNameForCall);
        }
    }
}

static std::mt19937 rng(std::random_device{}());
static std::uniform_int_distribution<> distrib(INT32_MIN, INT32_MAX);

// mc 静态符号名（C 标识符）允许的字符。
static FORCEINLINE bool isStaticNameChar(const char c) {
    return (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')
        || (c >= '0' && c <= '9') || c == '_';
}

// 扫描 inline 命令文本，把其中出现的、且属于已定义静态名的标识符收集进 out。
// 用于死静态消除的“文本引用”兜底（inline 命令逐字发射，不走 requireStaticOffset）。
static void collectStaticMentions(const std::string &code,
                                  const HashSet<Hash> &definedStatics,
                                  HashSet<Hash> &out) {
    const size_t n = code.size();
    size_t i = 0;
    while (i < n) {
        if (!isStaticNameChar(code[i])) {
            ++i;
            continue;
        }
        size_t j = i;
        while (j < n && isStaticNameChar(code[j])) {
            ++j;
        }
        const Hash h = hash(std::string_view(code).substr(i, j - i));
        if (definedStatics.contains(h)) {
            out.emplace(h);
        }
        i = j;
    }
}

void IR::preCompile() {
    staticDataMap.clear();
    auto &staticData = context.getStaticData();

    // 死静态数据消除（optLevel>=1）：一个 `static`，若其符号在本单元里被引用不到
    // ——既不作为任何 cmp 类 op（mov/比较）的 Symbol/SymbolPtr 操作数，也不在任何
    // inline 命令文本里出现——则永不会被加载，只会撑大静态数据块并移位其后每个
    // 静态的偏移。剪掉它。
    //   CmpLike 引用另受 CmpLike::withIR 的 requireStaticOffset 保护（引用了却被剪
    //   会抛 undeclared_symbol，而非静默 miscompile）；唯一的静默风险是 inline 文本
    //   引用，由下面的 token 扫描保守覆盖（过近似——绝不误剪被引用的静态）。
    const bool pruneDeadStatics = config.getOptLevel() >= 1;
    HashSet<Hash> referenced = HashSet<Hash>();
    if (pruneDeadStatics) {
        auto definedStatics = HashSet<Hash>();
        for (const auto &op: this->values) {
            if (const auto staticOp = INSTANCEOF(op, Static)) {
                definedStatics.emplace(staticOp->getNameHash());
            }
        }
        for (const auto &op: this->values) {
            if (const auto cmpLike = INSTANCEOF(op, CmpLike)) {
                for (const auto &value: {cmpLike->getLeft(), cmpLike->getRight()}) {
                    if (const auto symbol = INSTANCEOF(value, Symbol)) {
                        referenced.emplace(symbol->getNameHash());
                    } else if (const auto symbolPtr = INSTANCEOF(value, SymbolPtr)) {
                        referenced.emplace(symbolPtr->getNameHash());
                    }
                }
            } else if (const auto inlineOp = INSTANCEOF(op, Inline)) {
                collectStaticMentions(inlineOp->getCode(), definedStatics, referenced);
            }
        }
    }

    // collect datas
    for (const auto &op: this->values) {
        if (const auto staticOp = INSTANCEOF(op, Static)) {
            assert(!staticDataMap.contains(staticOp->getNameHash()));

            if (pruneDeadStatics && !referenced.contains(staticOp->getNameHash())) {
                continue;  // 死静态：无任何引用，剪掉
            }

            const auto &data = staticOp->getData();
            staticDataMap.emplace(staticOp->getNameHash(), staticData.size());
            staticData.insert(staticData.end(), data.begin(), data.end());
        }
    }
}

static inline constexpr std::string_view DEBUG_MSG_TEMPLATE = "#\n# file: \"{}\"\n# label: \"{}\"\n#\n\n";

static size_t findFirstLabelIndex(const std::vector<OpPtr>& values) {
    for (size_t i = 0; i < values.size(); ++i) {
        if (INSTANCEOF(values[i], Label)) {
            return i;
        }
    }
    return values.size();
}

[[nodiscard]] McFunctions IR::compile() {
    preCompile();

    auto result = McFunctions();
    if (UNLIKELY(this->values.empty())) {
        return result;
    }

    const auto firstLabelIndex = findFirstLabelIndex(this->values);
    if (UNLIKELY(firstLabelIndex == this->values.size())) {
        return result;
    }

    auto labelMap = LabelMap();
    initLabels(labelMap);
    auto jmpTable = JmpTable(values, labelMap);
    jmpTable.make();
    const auto &jmpMap = jmpTable.getJmpMap();

    auto builder = StringBuilder();
    std::string debugMessage;

    if (config.getDebugInfo()) {
        debugMessage = fmt::format(DEBUG_MSG_TEMPLATE, getFileDisplay(),
                                   CAST_FAST(this->values[firstLabelIndex], Label)->getLabel());
    }

    Label *labelOp = CAST_FAST(this->values[firstLabelIndex], Label);
    Hash label = labelOp->getLabelHash();
    bool unreachable = false;
    for (size_t i = firstLabelIndex + 1; i < this->values.size(); ++i) {
        const auto &op = this->values[i];
        if (INSTANCEOF(op, Nop) || INSTANCEOF(op, Special)) {
            continue;
        }

        if (INSTANCEOF(op, Label)) {
            auto lastLabelOp = labelOp;
            auto lastLabel = label;
            labelOp = CAST_FAST(op, Label);
            label = labelOp->getLabelHash();

            if (!unreachable) {
                // 因为实际上采用“代码块”模式编译，而不是label，所以每个代码块末尾都需要显式跳转到下个代码块
                auto jmp = std::make_unique<Jmp>(-1, labelOp->getLabel());
                builder.appendLine(jmp->compile(jmpMap));
            }

            if (!lastLabelOp->getExtern()) {
                auto target = toPath(labelMap[lastLabel]);
                result.emplace(target, builder.toString());

                if (config.getDebugInfo()) {
                    result[target] = debugMessage + result[target];
                }
            }
            builder.clear();

            if (config.getDebugInfo()) {
                debugMessage = fmt::format(DEBUG_MSG_TEMPLATE, getFileDisplay(), labelOp->getLabel());
            }

            unreachable = false;
            continue;
        }

        if (config.getDebugInfo()) {
            const auto source = string::trim(getSource(op.get()));
            const auto strEval = op->toString();
            builder.append("# ");
            builder.appendLine(source);
            if (source != strEval) {
                builder.append("# aka '");
                builder.append(strEval);
                builder.appendLine('\'');
            }
        }

        op->withIR(this);
        std::string compiled = op->compilePrefix();
        if (!compiled.empty()) {
            builder.appendLine(compiled);
        }

        if (const auto &call = INSTANCEOF(op, Call)) {
            compiled = call->compile(labelMap);
        } else if (const auto &movd = INSTANCEOF(op, Movd)) {
            compiled = movd->compile(labelMap);
        } else if (const auto &jmpLike = INSTANCEOF(op, JmpLike)) {
            compiled = jmpLike->compile(jmpMap);
        } else {
            compiled = op->compile();
        }
        if (!compiled.empty()) {
            builder.appendLine(compiled);
        }

        if (isTerminate(op)) {
            unreachable = true;
        }
    }

    auto target = toPath(labelMap[label]);
    result.emplace(target, builder.toString());

    if (config.getDebugInfo()) {
        result[target] = debugMessage + result[target];
    }

    return result;
}

std::string createIRMessage(const IR &ir, const Op *op, const std::string_view &message) {
    auto source = ir.getSource(op);
    return createIRMessage(ir.getLine(op),
                           UNLIKELY(source == "Unknown Source") ? fmt::format("(aka) {}", op->toString()) : source,
                           message);
}
