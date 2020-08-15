// SPDX-License-Identifier: X11
// 2020-08-15 (Live)

#include <stdio.h>

int main() {
  int M = 0,
      c = 0;

  for (char i = 0; i < 3; ++i) {
    if (getchar() == 'R')
      ++c;
    else
      c = 0;

    if (c > M)
      M = c;
  }

  printf("%d\n", M);
}
