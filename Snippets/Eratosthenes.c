// SPDX-License-Identifier: X11
// 2020-08-03
// Sieve of Eratosthenes

#include <stdlib.h>

char *erato(unsigned long long bound) {
  char *array = calloc(bound, 1);
  unsigned long long i,j;
  unsigned char s,ss;

  array[2] = 1,
  array[3] = 1;
  for (i = 5, s = 2; i < bound; i += s, s = 6 - s)
    array[i] = 1;

  for (i = 5, s = 2; i < bound; i += s, s = 6 - s)
    if (array[i])
      for (j = i, ss = s; i * j < bound; j += ss, ss = 6 - ss)
        array[i * j] = 0;

  return array;
}
