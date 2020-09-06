// SPDX-License-Identifier: X11
// 2020-09-06
// 視程の通報

#include <stdint.h>
#include <stdio.h>

int main() {
  int_least32_t m;
  scanf("%d", &m);

  if (m < 100)
    printf("00\n");
  else if (m <= 5000) {
    int_least16_t o = m / 100;
    printf(o < 10 ? "0%d\n" : "%d\n", o);
  }
  else if (m >= 6000 && m <= 30000)
    printf("%d\n", m / 1000 + 50);
  else if (m >= 35000 && m <= 70000)
    printf("%d\n", (m / 1000 - 30) / 5 + 80);
  else
    printf("89\n");
}
