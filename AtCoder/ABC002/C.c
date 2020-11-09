// SPDX-License-Identifier: X11
// 2020-11-09
// 直訴

#include <stdio.h>
#include <stdlib.h>

int main() {
  int xa,ya,xb,yb,xc,yc;
  scanf("%d %d %d %d %d %d", &xa, &ya, &xb, &yb, &xc, &yc);
  printf("%.1f\n",
    0.5 * abs(xa * yb - xa * yc + xb * yc - xb * ya + xc * ya - xc * yb));
}
