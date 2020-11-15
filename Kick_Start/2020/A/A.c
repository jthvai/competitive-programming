// SPDX-License-Identifier: X11
// 2020-08-04
// Allocation (5pt, 7pt)

#include <stdio.h>
#include <stdlib.h>

int icomp (const void *a, const void *b);

int main() {
  int T;
  scanf("%d\n", &T);

  long N,B;
  for (char i = 1; i <= T; i++) {
    printf("Case #%d: ", i);
    scanf("%ld %ld\n", &N, &B);

    int A[N];
    for (long j = 0; j < N; j++)
      scanf("%d", &A[j]);
    qsort(A, N, sizeof(int), icomp);

    long i;
    for (i = 0; i < N && (B -= A[i]) >= 0; i++);

    printf("%ld\n", i);
  }
}

int icomp (const void *a, const void *b) {
  const int *da = (const int *) a;
  const int *db = (const int *) b;

  return (*da > *db) - (*da < *db);
}
