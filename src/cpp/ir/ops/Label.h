//
// Created by xia__mc on 2025/2/17.
//

#ifndef CLANG_MC_LABEL_H
#define CLANG_MC_LABEL_H

#include "ir/iops/Op.h"
#include "ir/values/Value.h"
#include "utils/string/StringUtils.h"

class Label : public Op {
private:
    std::string label;
    Hash labelHash;
    const bool export_;
    const bool extern_;
    const bool api_;
    const bool local;
public:
    explicit Label(const i32 lineNumber, std::string label, const bool export_, const bool extern_,
                   const bool api_, const bool local) noexcept:
            Op("label", lineNumber), label(std::move(label)), labelHash(hash(this->label)),
            export_(export_), extern_(extern_), api_(api_), local(local) {
    }

    GETTER(Label, label);

    void setLabel(std::string newLabel) {
        label = std::move(newLabel);
        labelHash = hash(this->label);
    }

    GETTER_POD(LabelHash, labelHash);

    GETTER_POD(Export, export_);

    GETTER_POD(Extern, extern_);

    GETTER_POD(Api, api_);

    GETTER_POD(Local, local);

    [[nodiscard]] std::string toString() const noexcept override {
        if (export_) {
            return fmt::format("export {}:", label);
        }
        if (extern_) {
            return fmt::format("extern {}:", label);
        }
        if (api_) {
            return fmt::format("api {}:", label);
        }
        return fmt::format("{}:", label);
    }

    [[nodiscard]] std::string compile() const override {
        throw UnsupportedOperationException("Label op can't be compile normally.");
    }
};

#define LABEL_RET "__internal_ret"
inline Label labelRet = Label(-1, LABEL_RET, false, false, false, false);

#endif //CLANG_MC_LABEL_H
