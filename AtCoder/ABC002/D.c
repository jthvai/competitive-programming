// SPDX-License-Identifier: X11
// 2020-11-14
// 派閥

#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#define CANARY -1

#define MAX(X, Y) (((X) > (Y)) ? (X) : (Y))

int complete_or_size(short N, short *S, bool G[N][N]);
short **pset(short N, const int bound);
bool flipped(int n, short bit);
void free_pset(short **p, const int bound);

int main() {
  int N,M;
  scanf("%d %d", &N, &M);

  bool G[N][N];
  memset(G, false, N * N * sizeof(bool));

  for (short i = 0; i < M; i++) {
    short x,y;
    scanf("%hd %hd", &x, &y);
    G[x - 1][y - 1] = true;
    G[y - 1][x - 1] = true;
  }

  const int bound = (const int) 1 << N;

  short **P = pset(N, bound);

  short max = CANARY;
  for (int i = 0; i < bound; i++) {
    max = MAX(max, complete_or_size(N, P[i], G));
  }

  printf("%hd\n", max);

  free_pset(P, bound);
}

// CANARY if not complete, else size of subgraph
int complete_or_size(short N, short *S, bool G[N][N]) {
  short size = 0;
  for (short i = 0; S[i] != -1 && i < N; i++) {
    size++;
    for (short j = 0; i != j && S[j] != -1 && j < N; j++)
      if (!G[S[i]][S[j]])
        return CANARY;
  }
  return size;
}

short **pset(short N, const int bound) {
  short **ret = (short **) malloc(bound * sizeof(short *));
  for (int i = 0; i < bound; i++)
    ret[i] = (short *) calloc(N + 1, sizeof(short));

  for (int i = 0; i < bound; i++) {
    short curr = 0;
    ret[i][curr] = CANARY;

    for (short j = 0; j < N; j++) {
      if (flipped(i, j)) {
        ret[i][curr] = j;
        ret[i][curr + 1] = CANARY;
        curr++;
      }
    }
  }

  return ret;
}

bool flipped(int n, short bit) {
  return (n >> bit) & 1;
}

void free_pset(short **p, const int bound) {
  for (int i = 0; i < bound; i++)
    free(p[i]);
  free(p);
}
