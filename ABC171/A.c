// SPDX-License-Identifier: X11
// 2020-06-21 (Live)

#include <stdio.h>

int main(void) {
  getchar() > 'Z' ? printf("a\n") : printf("A\n");

  return 0;
}
