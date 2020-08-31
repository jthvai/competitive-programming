// SPDX-License-Identifier: X11
// 2020-08-30
// 積雪深差

#include <stdint.h>
#include <stdio.h>

int main() {
  int_least16_t A, B;
  scanf("%hd\n%hd", &A, &B);
  printf("%hd\n", A - B);
}
