// Copyright 2026 Project clang-mc
#ifndef RYU_D2FIXED_DYADIC_H
#define RYU_D2FIXED_DYADIC_H

#include <stdbool.h>
#include <stdint.h>

#include "d2s_intrinsics.h"

#define D2FIXED_BLOCK_SIZE 9
#define D2FIXED_CALC_SHIFT_CONST 128
#define D2FIXED_EXP10_9 1000000000u

typedef struct {
  uint64_t word[4];
} ryu_u256;

typedef struct {
  int32_t exponent;
  ryu_u256 mantissa;
} ryu_dyadic256;

static inline ryu_u256 ryu_u256_zero(void) {
  ryu_u256 out = {{0, 0, 0, 0}};
  return out;
}

static inline ryu_u256 ryu_u256_from_u64(const uint64_t value) {
  ryu_u256 out = {{value, 0, 0, 0}};
  return out;
}

static inline bool ryu_u256_is_zero(const ryu_u256 value) {
  return (value.word[0] | value.word[1] | value.word[2] | value.word[3]) == 0;
}

static inline int ryu_clz64(const uint64_t value) {
#if defined(_MSC_VER)
  unsigned long index;
  _BitScanReverse64(&index, value);
  return 63 - (int)index;
#else
  return __builtin_clzll(value);
#endif
}

static inline int ryu_u256_countl_zero(const ryu_u256 value) {
  for (int i = 3; i >= 0; --i) {
    if (value.word[i] != 0) {
      return (3 - i) * 64 + ryu_clz64(value.word[i]);
    }
  }
  return 256;
}

static inline ryu_u256 ryu_u256_shl(const ryu_u256 value, const uint32_t shift) {
  ryu_u256 out = ryu_u256_zero();
  if (shift >= 256) {
    return out;
  }

  const uint32_t word_shift = shift / 64;
  const uint32_t bit_shift = shift % 64;
  for (int dst = 3; dst >= 0; --dst) {
    if (dst < (int)word_shift) {
      continue;
    }
    const int src = dst - (int)word_shift;
    uint64_t piece = value.word[src] << bit_shift;
    if (bit_shift != 0 && src > 0) {
      piece |= value.word[src - 1] >> (64 - bit_shift);
    }
    out.word[dst] = piece;
  }
  return out;
}

static inline ryu_u256 ryu_u256_shr(const ryu_u256 value, const uint32_t shift) {
  ryu_u256 out = ryu_u256_zero();
  if (shift >= 256) {
    return out;
  }

  const uint32_t word_shift = shift / 64;
  const uint32_t bit_shift = shift % 64;
  for (int dst = 0; dst < 4; ++dst) {
    const int src = dst + (int)word_shift;
    if (src > 3) {
      continue;
    }
    uint64_t piece = value.word[src] >> bit_shift;
    if (bit_shift != 0 && src < 3) {
      piece |= value.word[src + 1] << (64 - bit_shift);
    }
    out.word[dst] = piece;
  }
  return out;
}

static inline bool ryu_u256_gt(const ryu_u256 lhs, const ryu_u256 rhs) {
  for (int i = 3; i >= 0; --i) {
    if (lhs.word[i] != rhs.word[i]) {
      return lhs.word[i] > rhs.word[i];
    }
  }
  return false;
}

static inline void ryu_u256_add_u64(ryu_u256 *value, const uint64_t addend) {
  uint64_t old = value->word[0];
  value->word[0] += addend;
  if (value->word[0] >= old) {
    return;
  }
  for (int i = 1; i < 4; ++i) {
    ++value->word[i];
    if (value->word[i] != 0) {
      return;
    }
  }
}

static inline uint64_t ryu_addcarry_u64(uint64_t *dst, const uint64_t addend) {
  const uint64_t old = *dst;
  *dst += addend;
  return *dst < old;
}

static inline uint64_t ryu_addcarry3_u64(uint64_t *dst, const uint64_t addend,
                                         const uint64_t carry_in) {
  const uint64_t old = *dst;
  *dst += addend;
  uint64_t carry = *dst < old;
  const uint64_t old2 = *dst;
  *dst += carry_in;
  carry += *dst < old2;
  return carry;
}

typedef struct {
  uint64_t lo;
  uint64_t hi;
} ryu_accum128;

static inline uint64_t ryu_mul_add_with_carry(ryu_accum128 *acc,
                                              const uint64_t lhs,
                                              const uint64_t rhs) {
  uint64_t prod_hi;
  const uint64_t prod_lo = umul128(lhs, rhs, &prod_hi);
  uint64_t carry = ryu_addcarry3_u64(&acc->lo, prod_lo, 0);
  carry = ryu_addcarry3_u64(&acc->hi, prod_hi, carry);
  return carry;
}

static inline uint64_t ryu_accum_advance(ryu_accum128 *acc,
                                         const uint64_t carry_in) {
  const uint64_t out = acc->lo;
  acc->lo = acc->hi;
  acc->hi = carry_in;
  return out;
}

static inline void ryu_addcarry_chain(uint64_t dst[8], int index, uint64_t carry) {
  while (carry != 0 && index < 8) {
    carry = ryu_addcarry_u64(&dst[index], carry);
    ++index;
  }
}

static inline void ryu_u256_mul_full(const ryu_u256 lhs, const ryu_u256 rhs,
                                     uint64_t out[8]) {
  for (int i = 0; i < 8; ++i) {
    out[i] = 0;
  }

  for (int i = 0; i < 4; ++i) {
    for (int j = 0; j < 4; ++j) {
      uint64_t hi;
      const uint64_t lo = umul128(lhs.word[i], rhs.word[j], &hi);
      uint64_t carry = 0;
      carry += ryu_addcarry_u64(&out[i + j], lo);
      carry += ryu_addcarry_u64(&out[i + j + 1], hi);
      ryu_addcarry_chain(out, i + j + 2, carry);
    }
  }
}

static inline ryu_u256 ryu_u256_quick_mul_hi(const ryu_u256 lhs,
                                             const ryu_u256 rhs) {
  ryu_u256 out = ryu_u256_zero();
  ryu_accum128 acc = {0, 0};
  uint64_t carry = 0;

  for (size_t i = 0; i < 4; ++i) {
    carry += ryu_mul_add_with_carry(&acc, lhs.word[i], rhs.word[3 - i]);
  }
  for (size_t i = 4; i < 7; ++i) {
    (void)ryu_accum_advance(&acc, carry);
    carry = 0;
    for (size_t j = i - 3; j < 4; ++j) {
      carry += ryu_mul_add_with_carry(&acc, lhs.word[j], rhs.word[i - j]);
    }
    out.word[i - 4] = acc.lo;
  }
  out.word[3] = acc.hi;
  return out;
}

static inline ryu_dyadic256 ryu_dyadic256_normalize(ryu_dyadic256 value) {
  if (!ryu_u256_is_zero(value.mantissa)) {
    const int shift = ryu_u256_countl_zero(value.mantissa);
    value.exponent -= shift;
    value.mantissa = ryu_u256_shl(value.mantissa, (uint32_t)shift);
  }
  return value;
}

static inline ryu_dyadic256 ryu_dyadic256_make(int32_t exponent, ryu_u256 mantissa) {
  ryu_dyadic256 out;
  out.exponent = exponent;
  out.mantissa = mantissa;
  return ryu_dyadic256_normalize(out);
}

static inline ryu_dyadic256 ryu_dyadic256_from_u64(const uint64_t value) {
  return ryu_dyadic256_make(0, ryu_u256_from_u64(value));
}

static inline ryu_dyadic256 ryu_dyadic256_mul_pow2(ryu_dyadic256 value,
                                                   const int32_t power) {
  value.exponent += power;
  return value;
}

static inline ryu_dyadic256 ryu_dyadic256_quick_mul(const ryu_dyadic256 lhs,
                                                    const ryu_dyadic256 rhs) {
  ryu_dyadic256 out;
  out.exponent = lhs.exponent + rhs.exponent + 256;
  out.mantissa = ryu_u256_quick_mul_hi(lhs.mantissa, rhs.mantissa);
  if (!ryu_u256_is_zero(out.mantissa) && (out.mantissa.word[3] >> 63) == 0) {
    out.exponent -= 1;
    out.mantissa = ryu_u256_shl(out.mantissa, 1);
  }
  return out;
}

static inline ryu_dyadic256 ryu_dyadic256_pow_n(const ryu_dyadic256 value,
                                                uint32_t power) {
  ryu_dyadic256 result = ryu_dyadic256_from_u64(1);
  ryu_dyadic256 cur = value;
  while (power > 0) {
    if ((power & 1u) != 0) {
      result = ryu_dyadic256_quick_mul(result, cur);
    }
    power >>= 1;
    if (power != 0) {
      cur = ryu_dyadic256_quick_mul(cur, cur);
    }
  }
  return result;
}

static inline ryu_u256 ryu_dyadic256_as_mantissa_type(const ryu_dyadic256 value) {
  if (ryu_u256_is_zero(value.mantissa)) {
    return ryu_u256_zero();
  }
  if (value.exponent > 0) {
    return ryu_u256_shl(value.mantissa, (uint32_t)value.exponent);
  }
  return ryu_u256_shr(value.mantissa, (uint32_t)(-value.exponent));
}

#if defined(HAS_UINT128)
static inline uint32_t ryu_uint128_mod1e9_u128(const uint128_t value) {
  return (uint32_t)(value % 1000000000u);
}
#endif

#if defined(HAS_64_BIT_INTRINSICS)
static inline uint64_t ryu_umul256_hi128_lo64(const uint64_t aHi,
                                              const uint64_t aLo,
                                              const uint64_t bHi,
                                              const uint64_t bLo) {
  uint64_t b00Hi;
  const uint64_t b00Lo = umul128(aLo, bLo, &b00Hi);
  uint64_t b01Hi;
  const uint64_t b01Lo = umul128(aLo, bHi, &b01Hi);
  uint64_t b10Hi;
  const uint64_t b10Lo = umul128(aHi, bLo, &b10Hi);
  uint64_t b11Hi;
  const uint64_t b11Lo = umul128(aHi, bHi, &b11Hi);
  (void)b00Lo;
  (void)b11Hi;
  const uint64_t temp1Lo = b10Lo + b00Hi;
  const uint64_t temp1Hi = b10Hi + (temp1Lo < b10Lo);
  const uint64_t temp2Lo = b01Lo + temp1Lo;
  const uint64_t temp2Hi = b01Hi + (temp2Lo < b01Lo);
  return b11Lo + temp1Hi + temp2Hi;
}

static inline uint32_t ryu_uint128_mod1e9_words(const uint64_t vHi,
                                                const uint64_t vLo) {
  const uint64_t multiplied = ryu_umul256_hi128_lo64(
      vHi, vLo, 0x89705F4136B4A597u, 0x31680A88F8953031u);
  const uint32_t shifted = (uint32_t)(multiplied >> 29);
  return ((uint32_t)vLo) - 1000000000u * shifted;
}
#endif

static inline uint32_t ryu_high128_mod1e9(const ryu_u256 value) {
#if defined(HAS_UINT128)
  const uint128_t wide =
      ((uint128_t)value.word[3] << 64) | (uint128_t)value.word[2];
  return ryu_uint128_mod1e9_u128(wide);
#elif defined(HAS_64_BIT_INTRINSICS)
  return ryu_uint128_mod1e9_words(value.word[3], value.word[2]);
#else
  const uint64_t r0 = mod1e9(value.word[3]);
  const uint64_t r1 = mod1e9((r0 << 32) | (value.word[2] >> 32));
  return mod1e9((r1 << 32) | (value.word[2] & 0xffffffffu));
#endif
}

static inline ryu_u256 ryu_mod_pow10_shift(const ryu_u256 value) {
  static const ryu_u256 mod_size = {{0, 0, D2FIXED_EXP10_9, 0}};
  if (!ryu_u256_gt(value, mod_size)) {
    return value;
  }

  ryu_u256 out = value;
  out.word[2] = ryu_high128_mod1e9(value);
  out.word[3] = 0;
  return out;
}

static inline void ryu_u256_to_mul3(const ryu_u256 value, uint64_t out[3]) {
  out[0] = value.word[0];
  out[1] = value.word[1];
  out[2] = value.word[2];
}

static inline void ryu_mul_192x64(const uint64_t large[3], const uint64_t mul,
                                  uint64_t out[4]) {
  out[0] = out[1] = out[2] = out[3] = 0;
  for (int i = 0; i < 3; ++i) {
    uint64_t hi;
    const uint64_t lo = umul128(large[i], mul, &hi);
    uint64_t carry = 0;
    carry += ryu_addcarry_u64(&out[i], lo);
    carry += ryu_addcarry_u64(&out[i + 1], hi);
    int idx = i + 2;
    while (carry != 0 && idx < 4) {
      carry = ryu_addcarry_u64(&out[idx], carry);
      ++idx;
    }
  }
}

static inline void ryu_shr_256(uint64_t value[4], const uint32_t shift) {
  if (shift == 0) {
    return;
  }
  if (shift >= 256) {
    value[0] = value[1] = value[2] = value[3] = 0;
    return;
  }
  const uint32_t word_shift = shift / 64;
  const uint32_t bit_shift = shift % 64;
  uint64_t tmp[4] = {0, 0, 0, 0};
  for (int dst = 0; dst < 4; ++dst) {
    const int src = dst + (int)word_shift;
    if (src > 3) {
      continue;
    }
    uint64_t piece = value[src] >> bit_shift;
    if (bit_shift != 0 && src < 3) {
      piece |= value[src + 1] << (64 - bit_shift);
    }
    tmp[dst] = piece;
  }
  value[0] = tmp[0];
  value[1] = tmp[1];
  value[2] = tmp[2];
  value[3] = tmp[3];
}

static inline uint32_t ryu_mod1e9_u256(const uint64_t value[4]) {
  uint32_t rem = 0;
  for (int word = 3; word >= 0; --word) {
    const uint64_t hi32 = value[word] >> 32;
    const uint64_t lo32 = value[word] & 0xffffffffu;
    rem = mod1e9(((uint64_t)rem << 32) | hi32);
    rem = mod1e9(((uint64_t)rem << 32) | lo32);
  }
  return rem;
}

static inline uint32_t ryu_mul_shift_mod1e9_exact(const uint64_t mantissa,
                                                  const uint64_t large[3],
                                                  const uint32_t shift_amount) {
  uint64_t wide[4];
  ryu_mul_192x64(large, mantissa, wide);
  ryu_shr_256(wide, shift_amount);
  return ryu_mod1e9_u256(wide);
}

static inline ryu_dyadic256 ryu_positive_base(void) {
  const ryu_u256 mantissa = {{
      0xf387295d242602a7ull, 0xfdd7645e011abac9ull,
      0x31680a88f8953030ull, 0x89705f4136b4a597ull}};
  return ryu_dyadic256_make(-276, mantissa);
}

static inline void ryu_fill_pow10_split(const uint32_t idx,
                                        const uint32_t block_index,
                                        uint64_t out[3]) {
  const int32_t shift_amount =
      (int32_t)(idx * 16u) + D2FIXED_CALC_SHIFT_CONST -
      (int32_t)(D2FIXED_BLOCK_SIZE * block_index);

  if (shift_amount < 0) {
    out[0] = 1;
    out[1] = 0;
    out[2] = 0;
    return;
  }

  ryu_dyadic256 num = ryu_dyadic256_from_u64(1);
  if (block_index > 0) {
    num = ryu_dyadic256_pow_n(ryu_positive_base(), block_index);
  }
  num = ryu_dyadic256_mul_pow2(num, shift_amount);

  ryu_u256 int_num = ryu_dyadic256_as_mantissa_type(num);
  ryu_u256_add_u64(&int_num, 1);
  int_num = ryu_mod_pow10_shift(int_num);
  ryu_u256_to_mul3(int_num, out);
}

static inline void ryu_fill_pow10_split_exp(const uint32_t exponent,
                                            const uint32_t block_index,
                                            uint64_t out[3]) {
  const int32_t shift_amount =
      (int32_t)exponent + D2FIXED_CALC_SHIFT_CONST -
      (int32_t)(D2FIXED_BLOCK_SIZE * block_index);

  if (shift_amount < 0) {
    out[0] = 1;
    out[1] = 0;
    out[2] = 0;
    return;
  }

  ryu_dyadic256 num = ryu_dyadic256_from_u64(1);
  if (block_index > 0) {
    num = ryu_dyadic256_pow_n(ryu_positive_base(), block_index);
  }
  num = ryu_dyadic256_mul_pow2(num, shift_amount);

  ryu_u256 int_num = ryu_dyadic256_as_mantissa_type(num);
  ryu_u256_add_u64(&int_num, 1);
  int_num = ryu_mod_pow10_shift(int_num);
  ryu_u256_to_mul3(int_num, out);
}

static inline void ryu_fill_pow10_split_2(const uint32_t idx,
                                          const uint32_t block_index,
                                          uint64_t out[3]) {
  const int32_t shift_amount =
      D2FIXED_CALC_SHIFT_CONST - (int32_t)(idx * 16u);

  ryu_dyadic256 num = ryu_dyadic256_from_u64(1);
  if (block_index > 0) {
    num = ryu_dyadic256_pow_n(
        ryu_dyadic256_from_u64(D2FIXED_EXP10_9), block_index);
  }
  num = ryu_dyadic256_mul_pow2(num, shift_amount);

  ryu_u256 int_num = ryu_dyadic256_as_mantissa_type(num);
  int_num = ryu_mod_pow10_shift(int_num);
  ryu_u256_to_mul3(int_num, out);
}

static inline void ryu_fill_pow10_split_2_exp(const uint32_t exponent,
                                              const uint32_t block_index,
                                              uint64_t out[3]) {
  const int32_t shift_amount = D2FIXED_CALC_SHIFT_CONST - (int32_t)exponent;

  ryu_dyadic256 num = ryu_dyadic256_from_u64(1);
  if (block_index > 0) {
    num = ryu_dyadic256_pow_n(
        ryu_dyadic256_from_u64(D2FIXED_EXP10_9), block_index);
  }
  num = ryu_dyadic256_mul_pow2(num, shift_amount);

  ryu_u256 int_num = ryu_dyadic256_as_mantissa_type(num);
  int_num = ryu_mod_pow10_shift(int_num);
  ryu_u256_to_mul3(int_num, out);
}

#endif // RYU_D2FIXED_DYADIC_H
