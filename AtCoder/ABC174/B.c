// SPDX-License-Identifier: X11
// 2020-08-02 (Live)
// Distance

#include <stdio.h>

int main() {
  long N,D;
  scanf("%ld %ld", &N, &D);
  long X,Y,n = 0;
  for (long i = 0; i < N; i++) {
    scanf("%ld %ld", &X, &Y);
    if (D*D >= X*X + Y*Y)
      n++;
  }
  printf("%ld\n", n);
}
