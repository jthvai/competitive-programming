// SPDX-License-Identifier: X11
// 2020-11-14
// Interactive Sorting (300pt)

#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

void smlsort(char A[6]);
bool lt(char *a, char *b);
int comp (const void *a, const void *b);
void swap(char *a, char *b);

int main(void) {
  int N,Q;
  scanf("%d %d", &N, &Q);

  char ans[N + 1];
  for (int i = 0; i < N; ++i)
    ans[i] = 'A' + i;
  ans[N] = '\0';

  if (N > 5)
    qsort(ans, N, 1, comp);
  else
    smlsort(ans);

  printf("! %s\n", ans);
}

void smlsort(char A[6]) {
  char a[1]; char b[1]; char c[1]; char d[1]; char e[1];
  *a = 'A'; *b = 'B'; *c = 'C'; *d = 'D'; *e = 'E';

  if (!lt(a,b)) swap(a,b);
  if (!lt(c,d)) swap(c,d);
  if (!lt(a,c)) {swap(a,c); swap(b,d);}

  if (lt(e,c)) {
    if (lt(a,e)) {
      A[0] = *a;
      if (lt(b,c)) {
        A[3] = *c;
        A[4] = *d;
        if (lt(b,e)) {
          A[1] = *b;
          A[2] = *e;
        }
        else { // b > e
          A[1] = *e;
          A[2] = *b;
        }
      }
      else { // b > c
        A[1] = *e;
        A[2] = *c;
        if (lt(b,d)) {
          A[3] = *b;
          A[4] = *d;
        }
        else { // b > d
          A[3] = *d;
          A[4] = *b;
        }
      }
    }
    else { // a > e
      A[0] = *e;
      A[1] = *a;
      if (lt(b,c)) {
        A[2] = *b;
        A[3] = *c;
        A[4] = *d;
      }
      else { // b > c
        A[2] = *c;
        if (lt(b,d)) {
          A[3] = *b;
          A[4] = *d;
        }
        else { // b > d
          A[3] = *d;
          A[4] = *b;
        }
      }
    }
  }
  else {  // e > c
    A[0] = *a;
    if (lt(d,e)) {
      if (lt(b,d)) {
        A[3] = *d;
        A[4] = *e;
        if (lt(b,c)) {
          A[1] = *b;
          A[2] = *c;
        }
        else { // b > c
          A[1] = *c;
          A[2] = *b;
        }
      }
      else { // b > d
        A[1] = *c;
        A[2] = *d;
        if (lt(b,e)) {
          A[3] = *b;
          A[4] = *e;
        }
        else { // b > e
          A[3] = *e;
          A[4] = *b;
        }
      }
    }
    else { // d > e
      if (lt(b,e)) {
        A[3] = *e;
        A[4] = *d;
        if (lt(b,c)) {
          A[1] = *b;
          A[2] = *c;
        }
        else { // b > c
          A[1] = *c;
          A[2] = *b;
        }
      }
      else { // b > e
        A[1] = *c;
        A[2] = *e;
        if (lt(b,d)) {
          A[3] = *b;
          A[4] = *d;
        }
        else { // b > d
          A[3] = *d;
          A[4] = *b;
        }
      }
    }
  }

  A[5] = '\0';
}

bool lt(char *a, char *b) {
  return comp(a,b) < 0;
}

int comp(const void *a, const void *b) {
  const char *ca = (const char *) a;
  const char *cb = (const char *) b;
  char reply;

  printf("? %c %c\n", *ca, *cb);
  fflush(stdout);
  scanf(" %c", &reply);

  return reply == '<' ? -1 : 1;
}

void swap(char *a, char *b) {
  char t = *a;
  *a = *b;
  *b = t;
}
