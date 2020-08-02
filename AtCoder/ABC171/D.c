// SPDX-License-Identifier: X11
// 2020-06-21 (Live)
// Replacing

#include <stdio.h>

#define LIMIT 100005

int main(void) {
  long N;
  scanf("%ld", &N);

  long a[LIMIT];
  for(long i = 0; i < LIMIT; i++)
    a[i] = 0;

  long x;
  for(long i = 0; i < N; i++) {
    scanf("%ld", &x);
    a[x]++;
  }

  long sum = 0;
  for(long i = 0; i < LIMIT; i++) {
    if(a[i] == 0)
      continue;
    sum += a[i] * i;
  }

  long Q;
  scanf("%ld", &Q);

  long b,c;
  for(long i = 0; i < Q; i++) {
    scanf("%ld %ld", &b, &c);

    sum += a[b] * (c - b);
    a[c] += a[b];
    a[b] = 0;

    printf("%ld\n", sum);
  }

  return 0;
}
