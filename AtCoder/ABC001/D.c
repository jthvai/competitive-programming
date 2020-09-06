// SPDX-License-Identifier: X11
// 2020-09-06
// 感雨時刻の整理

#include <stdint.h>
#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>

#define MAX 289

struct time {
  int_least16_t h;
  int_least16_t m;
};

struct rain {
  struct time start;
  struct time end;
};

int_least16_t mins(const void *tp);
struct time time(int_least16_t m);

int main() {
  int_least32_t N;
  scanf("%d\n", &N);

  size_t linesize = 10;
  bool *day = (bool *) calloc(MAX, sizeof(bool));
  char *buf = (char *) malloc(linesize * sizeof(char));
  for (int_least32_t i = 0; i < N;  i++) {
    getline(&buf, &linesize, stdin);
    char smlbuf[3];
    struct rain this;

    memcpy(smlbuf, buf, 2);
    smlbuf[3] = '\0';
    sscanf(smlbuf, "%hd", &this.start.h);

    memcpy(smlbuf, &buf[2], 2);
    smlbuf[3] = '\0';
    sscanf(smlbuf, "%hd", &this.start.m);
    this.start.m -= this.start.m % 5;

    memcpy(smlbuf, &buf[5], 2);
    smlbuf[3] = '\0';
    sscanf(smlbuf, "%hd", &this.end.h);

    memcpy(smlbuf, &buf[7], 2);
    smlbuf[3] = '\0';
    sscanf(smlbuf, "%hd", &this.end.m);
    if (this.end.m % 5)
      this.end.m += 5 - this.end.m % 5;
    if (this.end.m > 59) {
      this.end.h++;
      this.end.m = 0;
    }

    for (int_least16_t j = mins(&this.start); j < mins(&this.end); j++)
      day[j] = true;
  }
  free(buf);

  for (int_least16_t i = 0; i <= MAX; i++) {
    if (!day[i])
      continue;

    struct rain this;
    this.start = time(i);

    for (int_least16_t j = i; j <= MAX; i++, j++) {
      if (day[j])
        continue;
      this.end = time(j);
      break;
    }

    printf("%02d%02d-%02d%02d\n",
      this.start.h, this.start.m, this.end.h, this.end.m);
  }

  free(day);
}

int_least16_t mins(const void *tp) {
  const struct time *t = (const struct time *) tp;
  return (t->h * 60 + t->m) / 5;
}

struct time time(int_least16_t m) {
  struct time t = {
    m * 5 / 60,
    m * 5 % 60
  };
  return t;
}
