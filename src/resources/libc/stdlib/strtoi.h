/* Copyright (c) 2002,2004,2005 Joerg Wunsch
   Copyright (c) 2008  Dmitry Xmelkov
   All rights reserved.

   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are met:

   * Redistributions of source code must retain the above copyright
     notice, this list of conditions and the following disclaimer.

   * Redistributions in binary form must reproduce the above copyright
     notice, this list of conditions and the following disclaimer in
     the documentation and/or other materials provided with the
     distribution.

   * Neither the name of the copyright holders nor the names of
     contributors may be used to endorse or promote products derived
     from this software without specific prior written permission.

  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
  ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
  LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
  SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
  INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
  CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  POSSIBILITY OF SUCH DAMAGE.
*/

#include <errno.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

#define strtoi_char       char
#define strtoi_uint       unsigned int
#define strtoi_uchar      unsigned char
/* ASCII whitespace set, avoids extra ctype dependency on bare targets. */
#define strtoi_isspace(c) \
    ((c) == ' ' || (c) == '\f' || (c) == '\n' || (c) == '\r' || (c) == '\t' || (c) == '\v')

#ifndef strtoi_signed
#define strtoi_utype strtoi_type
#endif

#if defined(__HAVE_BUILTIN_MUL_OVERFLOW) && defined(__HAVE_BUILTIN_ADD_OVERFLOW) \
    && __HAVE_BUILTIN_MUL_OVERFLOW && __HAVE_BUILTIN_ADD_OVERFLOW && !defined(strtoi_signed)
#define USE_OVERFLOW
#endif

#ifndef __fallthrough
#define __fallthrough ((void)0)
#endif

/*
 * This operates like _tolower on upper case letters, but also works
 * correctly on lower case letters.
 */
#define TOLOWER(c) ((c) | ('a' - 'A'))

/*
 * Convert a single character to the value of the digit for any
 * character 0 .. 9, A .. Z or a .. z
 */
static inline unsigned int
digit_to_val(unsigned int c)
{
    if (c > '9')
        c = TOLOWER(c - 1) + ('0' - 'a' + 11);

    c -= '0';
    return c;
}

strtoi_type
strtoi(const strtoi_char * __restrict nptr, strtoi_char ** __restrict endptr, int ibase)
{
    unsigned int base = ibase;

    /* Check for invalid base value */
    if (base > 36 || base == 1) {
        errno = EINVAL;
        if (endptr)
            *endptr = (strtoi_char *)nptr;
        return 0;
    }

#define FLAG_NEG   0x1 /* Negative. Must be 1 for ucutoff below */
#define FLAG_OFLOW 0x2 /* Value overflow */

    const strtoi_uchar *s = (const strtoi_uchar *)nptr;
    strtoi_utype        val = 0;
    unsigned char       flags = 0;
    strtoi_uint         i;

    /* Skip leading spaces */
    do {
        i = *s++;
    } while (strtoi_isspace(i));

    /* Parse a leading sign */
    switch (i) {
    case '-':
        flags = FLAG_NEG;
        __fallthrough;
    case '+':
        i = *s++;
    }

    /* Leading '0' digit -- check for base indication */
    if (i == '0') {
        if (TOLOWER(*s) == 'x' && ((base | 16) == 16)) {
            base = 16;
            /* Parsed the '0' */
            nptr = (const strtoi_char *)s;
            i = s[1];
            s += 2;
        } else if (base == 0) {
            base = 8;
        }
    } else if (base == 0) {
        base = 10;
    }

#ifndef USE_OVERFLOW
    /* Compute values used to detect overflow. */
#ifdef strtoi_signed
    /* works because strtoi_min = (strtoi_type) ((strtoi_utype) strtoi_max + 1) */
    strtoi_utype ucutoff = (strtoi_utype)strtoi_max + flags;
    strtoi_utype cutoff = ucutoff / base;
    unsigned int cutlim = ucutoff % base;
#else
    strtoi_type  cutoff = strtoi_max / base;
    unsigned int cutlim = strtoi_max % base;
#endif
#endif

    for (;;) {
        i = digit_to_val(i);
        /* detect invalid char */
        if (i >= base)
            break;

        /* Add the new digit, checking for overflow */
#ifdef USE_OVERFLOW
        if (__builtin_mul_overflow(val, (strtoi_type)base, &val)
            || __builtin_add_overflow(val, (strtoi_type)i, &val)) {
            flags |= FLAG_OFLOW;
        }
#else
        if (val > cutoff || (val == cutoff && i > cutlim))
            flags |= FLAG_OFLOW;
        else
            val = val * (strtoi_utype)base + (strtoi_utype)i;
#endif
        /* Parsed another digit */
        nptr = (const strtoi_char *)s;
        i = *s++;
    }

    /* Mark the end of the parsed region */
    if (endptr != NULL)
        *endptr = (strtoi_char *)nptr;

    if (flags & FLAG_NEG)
        val = -val;

    if (flags & FLAG_OFLOW) {
#ifdef strtoi_signed
        val = ucutoff;
#else
        val = strtoi_max;
#endif
        errno = ERANGE;
    }

    return (strtoi_type)val;
}
