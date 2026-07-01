// 回归探针：[INDEX * SCALE + DISPLACEMENT] 寻址形式（无 base）。
//
// ISA 的 MOV 形式表明确列出 `[INDEX * SCALE + DISPLACEMENT]` 为合法寻址形式，
// 但此前 parsePtrData 无法解析该形式，且 Ptr::setPtr 的 base==nullptr 分支
// 误算为 (index + displacement) * scale。
//
// 本用例用内联汇编直接构造该形式，验证：
//   1. `[t0*4+1]` 能被解析；
//   2. 计算出的地址 = index*scale + displacement（而非 (index+disp)*scale）。
//
// 取 index = 50000，scale = 4，disp = 1 → 目标地址 = 200001。
// 该地址远高于栈区（rsp 初值 16384）与本程序的堆分配区，使用安全。
//
// 校验手段：写入后既用同样的 `[t0*4+1]` 形式读回，也用绝对地址 `[200001]`
// 独立读回；并对相邻地址 `[t0*4]`(=200000) 写入哨兵值，确认 disp 确实偏移。
// 全部正确返回 0，否则返回区分性的非零码。

int main(void) {
    int via_scaled_disp;   // 经 [t0*4+1] 读回
    int via_absolute;      // 经 [200001] 读回
    int neighbor;          // 经 [t0*4] 读回（应为哨兵值，证明 disp 生效）

    __asm volatile(
        "mov t0, 50000\n"
        "mov [t0*4], 999\n"      // 地址 200000 写哨兵
        "mov [t0*4+1], 12345\n"  // 地址 200001 写目标值
        "mov %0, [t0*4+1]\n"     // 经缩放+位移形式读回 -> 200001
        "mov %1, [200001]\n"     // 经绝对地址读回 -> 200001
        "mov %2, [t0*4]\n"       // 读相邻哨兵 -> 200000
        : "=r"(via_scaled_disp), "=r"(via_absolute), "=r"(neighbor)
        :
        : "memory", "t0"
    );

    if (via_scaled_disp != 12345) return 1;   // 缩放+位移形式读到的值不对
    if (via_absolute != 12345) return 2;      // 计算出的地址不是 index*scale+disp
    if (neighbor != 999) return 3;            // disp 未正确偏移（写穿到了相邻槽）

    return 0;
}
