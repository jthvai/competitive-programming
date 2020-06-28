// SPDX-License-Identifier: X11
// 2020-06-20

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void mergesort(char s[], int lo, int hi);
void merge(char s[], int lo, int mi, int hi);

int main(void) {
  int N,Q;
  scanf("%d %d", &N, &Q);

  char *ans = malloc(N * sizeof(char));
  for (int i = 0; i < N; i++)
    ans[i] = 'A' + i;

  if (N > 5)
    mergesort(ans, 0, N - 1);
  else
    return 1; // !DO See below

  printf("! %s\n", ans);
  free(ans);
  return 0;
}

void mergesort(char s[], int lo, int hi) {
  if (lo < hi) {
    int mi = lo + (hi - lo) / 2;

    mergesort(s, lo, mi);
    mergesort(s, mi + 1, hi);

    merge(s, lo, mi, hi);
  }
}

void merge(char s[], int lo, int mi, int hi) {
  int hl = mi - lo + 1,
      hr = hi - mi;
  char l[hl],
       r[hr];
  strncpy(l, s + lo, hl * sizeof(char));
  strncpy(r, s + mi + 1, hr * sizeof(char));

  int i = 0,
      j = 0,
      k = lo;
  char reply;

  while (i < hl && j < hr) {
    printf("? %c %c\n", l[i], r[j]);
    fflush(stdout);
    scanf(" %c", &reply);

    if (reply == '<') {
      s[k] = l[i];
      i++;
    }
    else {
      s[k] = r[j];
      j++;
    }
  k++;
  }

  while (i < hl) {
    s[k] = l[i];
    i++;
    k++;
  }

  while (j < hr) {
    s[k] = r[j];
    j++;
    k++;
  }
}

/* Stupid Hardcoded Solution
 * https://www.techiedelight.com/implement-graph-data-structure-c/
 *
 * V = {A...E}, |E| = 10
 *
 * Select a random vertex A
 * Evaluate two incident edges
 * Evaluate resulting edges by transitivity
 *
 * Select a vertex B adjacent to A
 * Evaluate two edges incident to B, not previously seen
 * Evaluate resulting edges by transitivity
 *
 * Select a vertext C adjacent to B, but not A
 * Evaluate any remaining edges incident to C
 * Evaluate resulting edges by transitivity
 *
 * Evaluate any remaining edges
 */
