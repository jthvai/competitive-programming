// SPDX-License-Identifier: X11
// 2020-08-29
// Odd Sum (Easy)

#include <stdio.h>

int main() {
  int N;
  scanf("%d\n", &N);

  int a;
  int A[2] = {0, 0};
  for (; N; N--) {
    scanf("%d", &a);
    A[a & 1]++;
  }

  printf("%d\n", A[0] * A[1]);
}
