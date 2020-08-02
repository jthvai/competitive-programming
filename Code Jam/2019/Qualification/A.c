// SPDX-License-Identifier: X11
// 2020-08-03
// Foregone Solution

#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX 105

int main() {
  int T;
  scanf("%d", &T);
  getchar();
  char *A = malloc(MAX),
       *B = malloc(MAX);
  char c;
  int j;

  for (int i = 0; i < T; i++) {
    printf("Case #%d: ", i + 1);
    A = memset(A, '0', MAX);
    B = memset(B, '0', MAX);
    j = 0;

    while (isdigit(c = getchar())) {
      if (c == '4') {
        A[j] = '3';
        B[j] = '1';
      }
      else {
        A[j] = c;
      }
      j++;
    }
    A[j] = '\0';
    B[j] = '\0';

    char *C = B;
    while (C[0] == '0')
      C++;

    printf("%s %s\n", A, C);
  }

  free(A);
  free(B);
}
