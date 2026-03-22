/*
 * Based on picolibc/newlib itoa semantics, with a decimal fast path.
 */

#include <stdlib.h>

static char *
utoa_base(unsigned value, char *str, int base)
{
    static const char digits[] = "0123456789abcdefghijklmnopqrstuvwxyz";
    int               i = 0;
    int               j;
    char              c;

    if (base < 2 || base > 36) {
        str[0] = '\0';
        return NULL;
    }

    do {
        unsigned remainder = value % (unsigned)base;
        str[i++] = digits[remainder];
        value /= (unsigned)base;
    } while (value != 0);
    str[i] = '\0';

    for (j = 0, i--; j < i; j++, i--) {
        c = str[j];
        str[j] = str[i];
        str[i] = c;
    }
    return str;
}

static char *
utoa10_fast(unsigned value, char *str)
{
    static const char digits_00_99[] = "00010203040506070809"
                                        "10111213141516171819"
                                        "20212223242526272829"
                                        "30313233343536373839"
                                        "40414243444546474849"
                                        "50515253545556575859"
                                        "60616263646566676869"
                                        "70717273747576777879"
                                        "80818283848586878889"
                                        "90919293949596979899";
    char             tmp[16];
    char            *p = tmp + sizeof(tmp);
    size_t           len;

    *--p = '\0';

    while (value >= 100) {
        unsigned q = value / 100;
        unsigned r = value - q * 100;
        *--p = digits_00_99[r * 2 + 1];
        *--p = digits_00_99[r * 2];
        value = q;
    }

    if (value < 10) {
        *--p = (char)('0' + value);
    } else {
        *--p = digits_00_99[value * 2 + 1];
        *--p = digits_00_99[value * 2];
    }

    for (len = 0; p[len] != '\0'; ++len)
        str[len] = p[len];
    str[len] = '\0';
    return str;
}

char *
itoa(int value, char *str, int base)
{
    unsigned uvalue;
    int      i = 0;

    if (base < 2 || base > 36) {
        str[0] = '\0';
        return NULL;
    }

    if (base == 10 && value < 0) {
        str[i++] = '-';
        uvalue = (unsigned)(-(value + 1)) + 1U;
    } else {
        uvalue = (unsigned)value;
    }

    if (base == 10)
        return utoa10_fast(uvalue, &str[i]) ? str : NULL;
    return utoa_base(uvalue, &str[i], base) ? str : NULL;
}
