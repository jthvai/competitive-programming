// SPDX-License-Identifier: X11
// 2020-11-09
// 罠

#include <stdio.h>

#define MAXL 30

int main() {
  char W[MAXL + 1];
  scanf("%30s", W);

  char s[MAXL + 1];
  int j = 0;
  for (int i = 0; W[i] != '\0'; i++) {
    if (W[i] != 'a' &&
        W[i] != 'e' &&
        W[i] != 'i' &&
        W[i] != 'o' &&
        W[i] != 'u') {
      s[j] = W[i];
      j++;
    }
  }
  s[j] = '\0';

  printf("%s\n", s);
}
