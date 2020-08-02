// SPDX-License-Identifier: X11
// 2020-06-21 (Live)
// Mix Juice

#include <stdio.h>
#include <stdlib.h>

int compare( const void* a, const void* b);

int main(void) {
  int N, K;
  scanf("%d %d", &N, &K);

  int arr[N];
  for(int i = 0; i < N; i++)
    scanf("%d", &arr[i]);

  qsort(arr, N, sizeof(int), compare);

  int ans = 0;
  for(int i = 0; i < K; i++)
    ans += arr[i];

  printf("%d\n", ans);

  return 0;
}

int compare( const void* a, const void* b) {
  int int_a = * ( (int*) a );
  int int_b = * ( (int*) b );

  if ( int_a == int_b ) return 0;
  else if ( int_a < int_b ) return -1;
  else return 1;
}
