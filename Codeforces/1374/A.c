// SPDX-License-Identifier: X11
// 2020-06-29 (Live)

#include <stdio.h>

int main(void) {
  int t;
  scanf("%d", &t);

  long x,y,n,d;
  for (int i = 0; i < t; i++) {
    scanf("%ld %ld %ld", &x, &y, &n);
    d = n % x - y;
    if (d == 0)
      printf("%ld\n", n);
    else if (d > 0)
      printf("%ld\n", n - d);
    else if (d < 0)
      printf("%ld\n", n - d - x);
  }
}
