#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "../libc/stdlib/ryu/ryu.h"

static int expect_fixed(double value, unsigned precision, const char *expected) {
  char buf[4096];
  const int len = d2fixed_buffered_n(value, precision, buf);
  buf[len] = '\0';
  if (strcmp(buf, expected) != 0) {
    fprintf(stderr, "fixed mismatch: value=%.17g precision=%u got='%s' expected='%s'\n",
            value, precision, buf, expected);
    return 1;
  }
  return 0;
}

static int expect_exp(double value, unsigned precision, const char *expected) {
  char buf[4096];
  const int len = d2exp_buffered_n(value, precision, buf);
  buf[len] = '\0';
  if (strcmp(buf, expected) != 0) {
    fprintf(stderr, "exp mismatch: value=%.17g precision=%u got='%s' expected='%s'\n",
            value, precision, buf, expected);
    return 1;
  }
  return 0;
}

int main(void) {
  int failed = 0;

  failed |= expect_exp(5e-324, 6, "4.940656e-324");
  failed |= expect_exp(1.7976931348623157e308, 6, "1.797693e+308");

  failed |= expect_fixed(0.5, 0, "0");
  failed |= expect_fixed(1.5, 0, "2");
  failed |= expect_fixed(2.5, 0, "2");
  failed |= expect_fixed(3.5, 0, "4");

  if (failed != 0) {
    return 1;
  }

  puts("ryu regression ok");
  return 0;
}
