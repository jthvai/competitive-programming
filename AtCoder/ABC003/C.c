// SPDX-License-Identifier: X11
// 2020-11-24
// AtCoderプログラミング講座

#include <stdio.h>
#include <stdlib.h>

int compar (const void *a, const void *b) {
  const int *ia = (const int *) a;
  const int *ib = (const int *) b;

  return (*ia > *ib) - (*ia < *ib);
}

int main() {
  int N,K;
  scanf("%d %d", &N, &K);

  int R[N];
  for (int i = 0; i < N; i++) {
    scanf("%d", &R[i]);
  }

  qsort(R, N, sizeof(int), compar);

  long double ans = 0;
  for (int i = N - K; i < N; i++) {
    ans = (ans + (double) R[i]) / 2.0;
  }

  printf("%.7Lf\n", ans);
}
