#include <stdarg.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>
#include <string.h>

typedef enum {
    LEN_DEFAULT = 0,
    LEN_HH,
    LEN_H,
    LEN_L,
    LEN_LL,
    LEN_Z,
    LEN_T
} len_mod_t;

typedef struct {
    char  *buf;
    size_t cap;
    size_t len;
} out_t;

static void
out_char(out_t *o, char c)
{
    if (o->cap > 0 && o->len + 1 < o->cap)
        o->buf[o->len] = c;
    o->len++;
}

static void
out_repeat(out_t *o, char c, int n)
{
    while (n-- > 0)
        out_char(o, c);
}

static void
out_mem(out_t *o, const char *s, size_t n)
{
    size_t i;
    for (i = 0; i < n; ++i)
        out_char(o, s[i]);
}

static int
parse_uint10(const char **p)
{
    int v = 0;
    while (**p >= '0' && **p <= '9') {
        v = v * 10 + (**p - '0');
        (*p)++;
    }
    return v;
}

static long long
get_signed_arg(va_list ap, len_mod_t len)
{
    switch (len) {
    case LEN_HH:
        return (signed char)va_arg(ap, int);
    case LEN_H:
        return (short)va_arg(ap, int);
    case LEN_L:
        return va_arg(ap, long);
    case LEN_LL:
        return va_arg(ap, long long);
    case LEN_Z:
        return (long long)va_arg(ap, ptrdiff_t);
    case LEN_T:
        return (long long)va_arg(ap, ptrdiff_t);
    default:
        return va_arg(ap, int);
    }
}

static unsigned long long
get_unsigned_arg(va_list ap, len_mod_t len)
{
    switch (len) {
    case LEN_HH:
        return (unsigned char)va_arg(ap, unsigned int);
    case LEN_H:
        return (unsigned short)va_arg(ap, unsigned int);
    case LEN_L:
        return va_arg(ap, unsigned long);
    case LEN_LL:
        return va_arg(ap, unsigned long long);
    case LEN_Z:
        return (unsigned long long)va_arg(ap, size_t);
    case LEN_T:
        return (unsigned long long)va_arg(ap, ptrdiff_t);
    default:
        return va_arg(ap, unsigned int);
    }
}

static int
utoa_base(unsigned long long v, unsigned base, int upper, char *out_rev)
{
    const char *digits = upper ? "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ" : "0123456789abcdefghijklmnopqrstuvwxyz";
    int         n = 0;

    if (v == 0) {
        out_rev[n++] = '0';
        return n;
    }
    while (v != 0) {
        out_rev[n++] = digits[v % base];
        v /= base;
    }
    return n;
}

static void
format_integer(out_t *o, unsigned long long uval, int neg, int base, int upper, int alt, int left, int plus,
               int space, int zero, int width, int precision)
{
    char rev[64];
    int  n = 0;
    int  i;
    int  sign_ch = 0;
    int  prefix_len = 0;
    char prefix0 = 0;
    char prefix1 = 0;
    int  zero_pad = 0;
    int  space_pad = 0;
    int  body_len;

    if (base < 2 || base > 16)
        return;

    if (precision == 0 && uval == 0) {
        n = 0;
    } else {
        n = utoa_base(uval, (unsigned)base, upper, rev);
    }

    if (neg)
        sign_ch = '-';
    else if (plus)
        sign_ch = '+';
    else if (space)
        sign_ch = ' ';

    if (alt) {
        if (base == 8) {
            if (n == 0 || rev[n - 1] != '0') {
                prefix0 = '0';
                prefix_len = 1;
            }
        } else if (base == 16 && uval != 0) {
            prefix0 = '0';
            prefix1 = upper ? 'X' : 'x';
            prefix_len = 2;
        }
    }

    if (precision >= 0) {
        if (precision > n)
            zero_pad = precision - n;
        zero = 0;
    }

    body_len = n + zero_pad + prefix_len + (sign_ch ? 1 : 0);
    if (width > body_len)
        space_pad = width - body_len;

    if (!left && !zero)
        out_repeat(o, ' ', space_pad);

    if (sign_ch)
        out_char(o, (char)sign_ch);
    if (prefix_len >= 1)
        out_char(o, prefix0);
    if (prefix_len >= 2)
        out_char(o, prefix1);

    if (!left && zero)
        out_repeat(o, '0', space_pad);
    out_repeat(o, '0', zero_pad);

    for (i = n - 1; i >= 0; --i)
        out_char(o, rev[i]);

    if (left)
        out_repeat(o, ' ', space_pad);
}

int
vsnprintf(char *s, size_t n, const char *fmt, va_list ap)
{
    out_t       out;
    const char *p = fmt;

    out.buf = s;
    out.cap = n;
    out.len = 0;

    while (*p) {
        int      left = 0, plus = 0, space = 0, alt = 0, zero = 0;
        int      width = 0, precision = -1;
        len_mod_t len = LEN_DEFAULT;
        char     spec;

        if (*p != '%') {
            out_char(&out, *p++);
            continue;
        }
        p++;

        for (;;) {
            if (*p == '-') {
                left = 1;
                p++;
            } else if (*p == '+') {
                plus = 1;
                p++;
            } else if (*p == ' ') {
                space = 1;
                p++;
            } else if (*p == '#') {
                alt = 1;
                p++;
            } else if (*p == '0') {
                zero = 1;
                p++;
            } else {
                break;
            }
        }

        if (*p == '*') {
            width = va_arg(ap, int);
            p++;
            if (width < 0) {
                left = 1;
                width = -width;
            }
        } else if (*p >= '0' && *p <= '9') {
            width = parse_uint10(&p);
        }

        if (*p == '.') {
            p++;
            if (*p == '*') {
                precision = va_arg(ap, int);
                p++;
                if (precision < 0)
                    precision = -1;
            } else {
                precision = parse_uint10(&p);
            }
        }

        if (*p == 'h') {
            p++;
            len = LEN_H;
            if (*p == 'h') {
                p++;
                len = LEN_HH;
            }
        } else if (*p == 'l') {
            p++;
            len = LEN_L;
            if (*p == 'l') {
                p++;
                len = LEN_LL;
            }
        } else if (*p == 'z') {
            p++;
            len = LEN_Z;
        } else if (*p == 't') {
            p++;
            len = LEN_T;
        }

        spec = *p ? *p++ : '\0';
        if (spec == '\0')
            break;

        switch (spec) {
        case 'd':
        case 'i': {
            long long          v = get_signed_arg(ap, len);
            unsigned long long u;
            int                neg = 0;
            if (v < 0) {
                neg = 1;
                u = (unsigned long long)(-(v + 1)) + 1ULL;
            } else {
                u = (unsigned long long)v;
            }
            format_integer(&out, u, neg, 10, 0, 0, left, plus, space, zero, width, precision);
            break;
        }
        case 'u': {
            unsigned long long u = get_unsigned_arg(ap, len);
            format_integer(&out, u, 0, 10, 0, 0, left, 0, 0, zero, width, precision);
            break;
        }
        case 'x':
        case 'X': {
            unsigned long long u = get_unsigned_arg(ap, len);
            format_integer(&out, u, 0, 16, spec == 'X', alt, left, 0, 0, zero, width, precision);
            break;
        }
        case 'o': {
            unsigned long long u = get_unsigned_arg(ap, len);
            format_integer(&out, u, 0, 8, 0, alt, left, 0, 0, zero, width, precision);
            break;
        }
        case 'c': {
            char ch = (char)va_arg(ap, int);
            if (!left)
                out_repeat(&out, ' ', width > 1 ? width - 1 : 0);
            out_char(&out, ch);
            if (left)
                out_repeat(&out, ' ', width > 1 ? width - 1 : 0);
            break;
        }
        case 's': {
            const char *str = va_arg(ap, const char *);
            size_t      slen;
            if (!str)
                str = "(null)";
            slen = strlen(str);
            if (precision >= 0 && (size_t)precision < slen)
                slen = (size_t)precision;

            if (!left && width > (int)slen)
                out_repeat(&out, ' ', width - (int)slen);
            out_mem(&out, str, slen);
            if (left && width > (int)slen)
                out_repeat(&out, ' ', width - (int)slen);
            break;
        }
        case 'p': {
            uintptr_t u = (uintptr_t)va_arg(ap, void *);
            format_integer(&out, (unsigned long long)u, 0, 16, 0, 1, left, 0, 0, zero, width, precision);
            break;
        }
        case 'n': {
            switch (len) {
            case LEN_HH:
                *va_arg(ap, signed char *) = (signed char)out.len;
                break;
            case LEN_H:
                *va_arg(ap, short *) = (short)out.len;
                break;
            case LEN_L:
                *va_arg(ap, long *) = (long)out.len;
                break;
            case LEN_LL:
                *va_arg(ap, long long *) = (long long)out.len;
                break;
            case LEN_Z:
                *va_arg(ap, size_t *) = (size_t)out.len;
                break;
            case LEN_T:
                *va_arg(ap, ptrdiff_t *) = (ptrdiff_t)out.len;
                break;
            default:
                *va_arg(ap, int *) = (int)out.len;
                break;
            }
            break;
        }
        case '%': {
            if (!left && width > 1)
                out_repeat(&out, zero ? '0' : ' ', width - 1);
            out_char(&out, '%');
            if (left && width > 1)
                out_repeat(&out, ' ', width - 1);
            break;
        }
        default:
            out_char(&out, '%');
            out_char(&out, spec);
            break;
        }
    }

    if (out.cap > 0) {
        size_t term = (out.len < out.cap - 1) ? out.len : (out.cap - 1);
        out.buf[term] = '\0';
    }

    if (out.len > (size_t)INT_MAX)
        return -1;
    return (int)out.len;
}
