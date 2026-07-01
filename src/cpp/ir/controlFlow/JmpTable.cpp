//
// Created by xia__mc on 2025/3/13.
//

#include "JmpTable.h"
#include "objects/NameGenerator.h"
#include "utils/string/StringBuilder.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunsafe-buffer-usage"

static inline constexpr std::string_view JMP_LAST_TEMPLATE = "return run function {}";
static inline constexpr std::string_view JMP_TEMPLATE = "execute if function {} run return 1";

void JmpTable::make() {
    assert(!labelMap.empty());
    assert(!values.empty());

    const auto labelCount = labelMap.size();

    data = std::vector<std::string>(labelCount);
    Hash * __restrict labels = static_cast<Hash *>(malloc(labelCount * sizeof(Hash)));
    if (labels == nullptr) onOOM();
    dataView = static_cast<std::string_view *>(malloc(labelCount * sizeof(std::string_view)));
    if (dataView == nullptr) onOOM();
    bool * __restrict terminateData = static_cast<bool *>(calloc(labelCount, sizeof(bool)));
    if (terminateData == nullptr) onOOM();

    try {
        {
            auto iter = values.end();
            Label *op;
            size_t i = labelCount - 1;
            do {
                iter--;
                if (isTerminate(*iter)) {
                    terminateData[i] = true;  // 这个label不可能跳转到下一个label
                }

                op = INSTANCEOF(*iter, Label);
                if (op == nullptr) continue;

                const auto &cmdTemplate = i == labelCount - 1 || terminateData[i] ? JMP_LAST_TEMPLATE : JMP_TEMPLATE;
                const auto command = fmt::format(fmt::runtime(cmdTemplate), labelMap.at(op->getLabelHash()));
                labels[i] = op->getLabelHash();
                dataView[i] = data[i] = command;
                i--;
            } while (iter != values.begin());
        }  // 释放builder

        // dp
        size_t size = 1;
        size_t i = labelCount;
        do {
            i--;

            if (terminateData[i]) {
                size = 1;
            }

            const auto label = labels[i];
            auto *str = &dataView[i];
            jmpMap[label] = std::span<std::string_view>(str, size);

            size++;
        } while (i > 0);
    } catch (...) {
        free(labels);
        free(dataView);
        dataView = nullptr;  // 避免析构函数二次释放
        free(terminateData);
        throw;
    }
    free(labels);
    free(terminateData);
}

#pragma clang diagnostic pop
