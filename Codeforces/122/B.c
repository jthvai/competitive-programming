// SPDX-License-Identifier: X11
// 2020-06-22
// Lucky Substring

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define LIMIT 50

int main(void) {
  char *s = malloc(LIMIT * sizeof(char));
  scanf("%s", s);

  int a[2];
  a[0] = 0;
  a[1] = 0;

  for(int i = 0; i < strlen(s); i++) {
    if (s[i] == '4')
      a[0]++;
    if (s[i] == '7')
      a[1]++;
  }

  if (a[0] == a[1] && a[0] == 0)
    printf("-1\n");
  else
    a[0] >= a[1] ? printf("4\n") : printf("7\n");

  free(s);
}
