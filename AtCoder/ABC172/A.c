// SPDX-License-Identifier: X11
// 2020-06-27 (Live)

#include <stdio.h>

int main(void) {
  int a;
  scanf("%d", &a);
  printf("%d\n", a + a * a + a * a * a);
}
