// SPDX-License-Identifier: X11
// 2020-08-15 (Live)

#include <stdio.h>

int main() {
  long long X,K,D;
  scanf("%lld %lld %lld", &X, &K, &D);

  if (X < 0)
    X = 0 - X;

  if (K <= X / D) {
    printf("%lld\n", X - K * D);
    return 0;
  }

  if (X % D > D / 2) {
    if ((X / D % 2 && !(K % 2)) || (!(X / D % 2) && K % 2)) {
      printf("%lld\n", 0 - (X % D - D));
      return 0;
    }
    else {
      printf("%lld\n", X % D);
      return 0;
    }
  }
  else {
    if ((X / D % 2 && K % 2) || (!(X / D % 2) && !(K % 2))) {
      printf("%lld\n", X % D);
      return 0;
    }
    else {
      printf("%lld\n", 0 - (X % D - D));
      return 0;
    }
  }
}
