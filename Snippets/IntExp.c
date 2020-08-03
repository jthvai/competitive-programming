// SPDX-License-Identifier: X11
// 2020-08-03
// Integer Exponentiation

long long iexp(long long x, unsigned long long n) {
  if (x == 0 || x == 1 || n == 1)
    return x;
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
    char i = 0;
    while (!(x % 2)) {
      x >>= 1;
      i++;
    }
    return iexp(x, n) << i * n;
  }
}
