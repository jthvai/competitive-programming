// SPDX-License-Identifier: X11
// 2020-06-27 (Live)
// Minor Change (200pt)

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define LIMIT 200005

int main(void) {
  char *S = malloc(LIMIT * sizeof(char));
  char *T = malloc(LIMIT * sizeof(char));
  scanf("%s %s", S, T);

  long n = 0;

  for(long i = 0; i < strlen(S); i++)
    if (S[i] != T[i])
      n++;

  printf("%ld\n", n);

  free(S);
  free(T);
}
