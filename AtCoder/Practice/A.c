// SPDX-License-Identifier: X11
// 2020-06-20
// Welcome to AtCoder

#include <stdio.h>
#include <stdlib.h>

#define STRLEN 105

int main(void) {
  int a,b,c;
  char *s = malloc(STRLEN * sizeof(char));
  scanf("%d %d %d %s", &a, &b, &c, s);
  printf("%d %s\n", a + b + c, s);
  free(s);
  return 0;
}
