// SPDX-License-Identifier: X11
// 2020-11-24
// AtCoderトランプ

#include <stdio.h>
#include <string.h>

int main() {
  char s[10 + 1];
  char t[10 + 1];
  scanf("%s\n%s", s, t);

  for (unsigned int i = 0; i < strlen(s); i++) {
    if (s[i] == t[i])
      continue;

    char c;
    if (s[i] == '@') {
      c = t[i];
    }
    else if (t[i] == '@') {
      c = s[i];
    }
    else {
      printf("You will lose\n");
      return 0;
    }

    if (c != 'a' && c != 't' && c != 'c' &&
        c != 'o' && c != 'd' && c != 'e' &&
        c != 'r') {
      printf("You will lose\n");
      return 0;
    }
  }

  printf("You can win\n");
}
