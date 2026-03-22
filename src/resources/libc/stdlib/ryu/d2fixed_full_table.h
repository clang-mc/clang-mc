// Copyright 2018 Ulf Adams
//
// The contents of this file may be used under the terms of the Apache License,
// Version 2.0.
//
//    (See accompanying file LICENSE-Apache or copy at
//     http://www.apache.org/licenses/LICENSE-2.0)
//
// Alternatively, the contents of this file may be used under the terms of
// the Boost Software License, Version 1.0.
//    (See accompanying file LICENSE-Boost or copy at
//     https://www.boost.org/LICENSE_1_0.txt)
//
// Unless required by applicable law or agreed to in writing, this software
// is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.
#ifndef RYU_D2FIXED_FULL_TABLE_H
#define RYU_D2FIXED_FULL_TABLE_H

#include <stdint.h>

#define TABLE_SIZE 64
#define TABLE_SIZE_2 69
#define ADDITIONAL_BITS_2 128

/*
 * These compact index tables are still used to decide which 9-digit blocks are
 * non-zero, but the large POW10_SPLIT / POW10_SPLIT_2 payloads are generated
 * at runtime by the dyadic no-table implementation.
 */
static const uint32_t POW10_OFFSET[TABLE_SIZE] = {
  0, 2, 5, 8, 12, 16, 21, 26, 32, 39,
  46, 54, 62, 71, 80, 90, 100, 111, 122, 134,
  146, 159, 173, 187, 202, 217, 233, 249, 266, 283,
  301, 319, 338, 357, 377, 397, 418, 440, 462, 485,
  508, 532, 556, 581, 606, 632, 658, 685, 712, 740,
  769, 798, 828, 858, 889, 920, 952, 984, 1017, 1050,
  1084, 1118, 1153, 1188
};

static const uint32_t POW10_OFFSET_2[TABLE_SIZE_2] = {
     0,    2,    6,   12,   20,   29,   40,   52,   66,   80,
    95,  112,  130,  150,  170,  192,  215,  240,  265,  292,
   320,  350,  381,  413,  446,  480,  516,  552,  590,  629,
   670,  712,  755,  799,  845,  892,  940,  989, 1040, 1092,
  1145, 1199, 1254, 1311, 1369, 1428, 1488, 1550, 1613, 1678,
  1743, 1810, 1878, 1947, 2017, 2088, 2161, 2235, 2311, 2387,
  2465, 2544, 2625, 2706, 2789, 2873, 2959, 3046, 3133
};

static const uint8_t MIN_BLOCK_2[TABLE_SIZE_2] = {
     0,    0,    0,    0,    0,    0,    1,    1,    2,    3,
     3,    4,    4,    5,    5,    6,    6,    7,    7,    8,
     8,    9,    9,   10,   11,   11,   12,   12,   13,   13,
    14,   14,   15,   15,   16,   16,   17,   17,   18,   19,
    19,   20,   20,   21,   21,   22,   22,   23,   23,   24,
    24,   25,   26,   26,   27,   27,   28,   28,   29,   29,
    30,   30,   31,   31,   32,   32,   33,   34,    0
};

#endif // RYU_D2FIXED_FULL_TABLE_H
