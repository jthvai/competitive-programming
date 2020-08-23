// SPDX-License-Identifier: X11
// 2020-08-23 (Live)
// Longest Arithmetic

#include <stdio.h>

void solve(int c);

int main() {
  int T;
  scanf("%d\n", &T);
  for (int i = 0; i < T; ++i)
    solve(i + 1);
}

void solve(int c) {
  printf("Case #%d: ", c);
  long N;
  scanf("%ld\n", &N);

  long x,y,d;
  scanf("%ld", &x);
  scanf("%ld", &y);
  d = y - x;
  long ans = 2,
       curr = 2;

  for (long i = 0; i < N - 2; ++i) {
    x = y;
    scanf("%ld", &y);

    if (d == y - x)
      ++curr;
    else {
      curr = 2;
      d = y - x;
    }

    if (curr > ans)
      ans = curr;
  }

  printf("%ld\n", ans);
}
