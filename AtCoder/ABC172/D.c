// SPDX-License-Identifier: X11
// 2020-06-28

#include <stdio.h>

int main(void) {
  long N;
  scanf("%ld", &N);

  long n = 0,
       m;
  for (long i = 1; i <= N; i++) {
    m = N / i;
    n += i * m * (m + 1) / 2;
  }

  printf("%ld\n", n);
}
