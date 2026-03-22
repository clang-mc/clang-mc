/*
 * More accurate gcvt implementation based on Ryu d2exp/d2fixed conversion.
 * This is intended to behave close to %.Ng formatting while keeping trailing
 * zeros trimmed like traditional gcvt.
 */

#include <stdlib.h>
#include <string.h>

#include "ryu/ryu.h"

static void
trim_trailing_zeros_g(char *s)
{
    char  *exp = strchr(s, 'e');
    char  *dot;
    size_t tail_len;
    char  *p;

    if (!exp)
        exp = strchr(s, 'E');
    if (!exp)
        exp = s + strlen(s);

    dot = strchr(s, '.');
    if (!dot || dot >= exp)
        return;

    p = exp;
    while (p > dot + 1 && p[-1] == '0')
        --p;
    if (p == dot + 1)
        --p; /* remove '.' when no fractional digits remain */

    tail_len = strlen(exp);
    memmove(p, exp, tail_len + 1);
}

static int
parse_exp10(const char *s, int *exp10)
{
    const char *e = strchr(s, 'e');
    int         sign = 1;
    int         v = 0;

    if (!e)
        e = strchr(s, 'E');
    if (!e)
        return -1;

    ++e;
    if (*e == '+') {
        ++e;
    } else if (*e == '-') {
        sign = -1;
        ++e;
    }

    if (*e < '0' || *e > '9')
        return -1;
    while (*e >= '0' && *e <= '9') {
        v = v * 10 + (*e - '0');
        ++e;
    }
    *exp10 = sign * v;
    return 0;
}

char *
gcvt(double value, int ndigit, char *buf)
{
    char    local[1024];
    char   *tmp;
    size_t  cap;
    int     heap_tmp = 0;
    int     n;
    int     exp10;
    int     fixed_precision;

    if (!buf)
        return NULL;
    if (ndigit <= 0) {
        buf[0] = '\0';
        return buf;
    }

    cap = (size_t)ndigit + 400;
    if (cap < 512)
        cap = 512;
    if (cap > (1u << 20))
        cap = (1u << 20);

    if (cap <= sizeof(local)) {
        tmp = local;
    } else {
        tmp = (char *)malloc(cap);
        if (!tmp)
            return gcvt_fast(value, ndigit, buf);
        heap_tmp = 1;
    }

    n = d2exp_buffered_n(value, (uint32_t)(ndigit - 1), tmp);
    if ((size_t)n >= cap)
        n = (int)(cap - 1);
    tmp[n] = '\0';

    /* NaN/Infinity are returned as-is by Ryu; normalize to gcvt-style lower case. */
    if (strcmp(tmp, "NaN") == 0 || strcmp(tmp, "nan") == 0) {
        memcpy(buf, "nan", 4);
        if (heap_tmp)
            free(tmp);
        return buf;
    }
    if (strcmp(tmp, "Infinity") == 0 || strcmp(tmp, "inf") == 0) {
        memcpy(buf, "inf", 4);
        if (heap_tmp)
            free(tmp);
        return buf;
    }
    if (strcmp(tmp, "-Infinity") == 0 || strcmp(tmp, "-inf") == 0) {
        memcpy(buf, "-inf", 5);
        if (heap_tmp)
            free(tmp);
        return buf;
    }

    if (parse_exp10(tmp, &exp10) == 0 && exp10 >= -4 && exp10 < ndigit) {
        fixed_precision = ndigit - (exp10 + 1);
        if (fixed_precision < 0)
            fixed_precision = 0;

        n = d2fixed_buffered_n(value, (uint32_t)fixed_precision, tmp);
        if ((size_t)n >= cap)
            n = (int)(cap - 1);
        tmp[n] = '\0';
    }

    trim_trailing_zeros_g(tmp);
    memcpy(buf, tmp, strlen(tmp) + 1);
    if (heap_tmp)
        free(tmp);
    return buf;
}
