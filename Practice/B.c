// SPDX-License-Identifier: X11
// 2020-06-20

#include <stdio.h>
#include <stdlib.h>

int strqsort(char s[], int lo, int hi, int qu);

int main(void) {
  int N,Q;
  scanf("%d %d", &N, &Q);

  char *ans = malloc(N * sizeof(char));
  for (int i = 0; i < N; i++)
    ans[i] = 'A' + i;

  if (strqsort(ans, 0, N - 1, Q)) {
    free(ans);
    return 1;
  }

  printf("! %s\n", ans);
  free(ans);

  return 0;
}

int strqsort(char a[], int lo, int hi, int qu) {
  if (lo >= hi)
    return 0;

  int h, l, p, t;
  char reply;

  l = lo;
  h = hi;
  p = a[hi];

  do {
    while (l < h) {
      if (a[l] == p) {
        l++;
        continue;
      }

      if (!qu)
        return 1;

      printf("? %c %c\n", a[l], p);
      fflush(stdout);
      scanf(" %c", &reply);
      qu--;

      if (reply == '>')
        break;
      else
        l++;
    }

    while (h > l) {
      if (a[h] == p) {
        h--;
        continue;
      }

      if (!qu)
        return 1;

      printf("? %c %c\n", a[h], p);
      fflush(stdout);
      scanf(" %c", &reply);
      qu--;

      if (reply == '<')
        break;
      else
        h--;
    }

    if (l < h) {
      t = a[l];
      a[l] = a[h];
      a[h] = t;
    }
  } while (l < h);

  a[hi] = a[l];
  a[l] = p;

  if (strqsort(a, lo, l - 1, qu))
    return 1;
  return strqsort(a, l + 1, hi, qu);
}
