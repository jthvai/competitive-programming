// SPDX-License-Identifier: X11
// 2020-08-03
// Integer Exponentiation

long long iexp(long long x, unsigned char n) {
  if (x == 0 || x == 1 || n == 1)
    return x;
  if (n == 0)
    return 1;
  if (n == 2)
    return x * x;

  if (x % 2) {
    long long xs = iexp(x, n / 2);
    if (n % 2)
      return x * xs * xs;
    else
      return xs * xs;
  }
  else {
    char i;
    for (i = 0; !(x % 2); i++)
      x >>= 1;
    return iexp(x, n) << i * n;
  }
}
