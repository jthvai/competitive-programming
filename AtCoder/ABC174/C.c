// SPDX-License-Identifier: X11
// 2020-08-02

#include <stdio.h>

int main() {
  long K;
  scanf("%ld", &K);

  if (K % 2 == 0 || K % 5 == 0) {
    printf("-1\n");
    return 0;
  }

  long n = 7;
  long k = 1;

  while((n %= K) != 0) {
    n *= 10;
    n += 7;
    k++;
  }

  printf("%lu\n", k);
}
