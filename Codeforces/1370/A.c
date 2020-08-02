// SPDX-License-Identifier: X11
// 2020-06-21 (Live)
// Maximum GCD

#include <stdio.h>

int main(void) {
  int t;
  scanf("%d", &t);

  long curr;
  for(int i = 0; i < t; i++) {
    scanf("%ld", &curr);
    printf("%ld\n", curr / 2);
  }

  return 0;
}
