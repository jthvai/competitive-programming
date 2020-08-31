// SPDX-License-Identifier: X11
// 2020-08-31
// Red Scarf (500pt)

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#define ul32 uint_least32_t

int main() {
  ul32 N;
  scanf("%u\n", &N);
  ul32 *A = (ul32 *) calloc(N, sizeof(ul32));
  for (ul32 i = 0; i < N; i++)
    scanf("%u", &A[i]);

  ul32 all = A[0];
  for (ul32 i = 1; i < N; i++)
    all ^= A[i];

  for (ul32 i = 0; i < N - 1; i++)
    printf("%u ", A[i] ^ all);
  printf("%u\n", A[N - 1] ^ all);

  free(A);
}
