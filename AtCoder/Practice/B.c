// SPDX-License-Identifier: X11
// 2020-08-25
// Interactive Sorting

#include <stdio.h>
#include <stdlib.h>

int comp (const void *a, const void *b);

int main(void) {
  int N,Q;
  scanf("%d %d", &N, &Q);

  char *ans = calloc(N, 1);
  for (int i = 0; i < N; ++i)
    ans[i] = 'A' + i;

  if (N > 5)
    qsort(ans, N, 1, comp);
  else
    return 1; // !DO See below

  printf("! %s\n", ans);
  free(ans);
}

int comp (const void *a, const void *b) {
  const char *ca = (const char *) a;
  const char *cb = (const char *) b;
  char reply;

  printf("? %c %c\n", *ca, *cb);
  fflush(stdout);
  scanf(" %c", &reply);

  return reply == '<' ? -1 : 1;
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
