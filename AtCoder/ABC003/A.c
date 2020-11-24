// SPDX-License-Identifier: X11
// 2020-11-24
// AtCoder社の給料

#include <stdio.h>

#define BASE 10000

int sumto(int n) {
  return n * (n + 1) / 2;
}

double average(int n) {
  return ((double) sumto(n)) / ((double) n);
}

int main() {
  int N;
  scanf("%d", &N);
  printf("%f\n", average(N) * BASE);
}
