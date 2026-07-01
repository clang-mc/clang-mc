// Exercises the clang-mc mcasm preprocessor's object-macro word-boundary
// expansion (review item L4).
//
// Before the fix, an object macro was only expanded when surrounded by
// whitespace or commas, so a macro touching `(`, `:`, `[`, `]` or arithmetic
// in a memory operand (e.g. `[rsp+IDX]`) was left unexpanded. After the fix
// any non-identifier character counts as a word boundary, so the macro
// expands in those positions too.
//
// Here IDX is an object macro whose only use sits immediately after `+`
// inside a memory operand. If the preprocessor fails to expand it, the
// assembler sees the bare identifier `IDX` inside `[rsp+IDX]` and the case
// fails (parse error / wrong slot). With the fix it expands to `[rsp+1]`.

__asm__(
    "#define IDX 1\n"
);

int main(void) {
    int got;

    __asm volatile(
        "sub rsp, 2\n"
        "mov [rsp+0], 111\n"
        "mov [rsp+IDX], 222\n"          // [rsp+IDX] must expand to [rsp+1]
        "mov %0, [rsp+IDX]\n"            // read slot 1 back -> 222
        "add rsp, 2"
        : "=r"(got));

    return got == 222 ? 0 : 100 + (got & 0x3f);
}
