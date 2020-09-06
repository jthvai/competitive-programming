// SPDX-License-Identifier: X11
// 2020-09-06
// 風力観測

#include <stdint.h>
#include <stdio.h>

int main() {
  int_least16_t deg, dis;
  scanf("%hd %hd", &deg, &dis);

  int_least16_t speed = dis * 10 / 6;
  speed = speed / 10 + (speed % 10 > 4 ? 1 : 0);
  int_least16_t w =
    speed <= 2 ? 0 :
    speed <= 15 ? 1 :
    speed <= 33 ? 2 :
    speed <= 54 ? 3 :
    speed <= 79 ? 4 :
    speed <= 107 ? 5 :
    speed <= 138 ? 6 :
    speed <= 171 ? 7 :
    speed <= 207 ? 8 :
    speed <= 244 ? 9 :
    speed <= 284 ? 10 :
    speed <= 326 ? 11 :
    12;

  char *dir =
    w == 0 ? "C" :
    deg <= 112 ? "N" :
    deg <= 337 ? "NNE" :
    deg <= 562 ? "NE" :
    deg <= 787 ? "ENE" :
    deg <= 1012 ? "E" :
    deg <= 1237 ? "ESE" :
    deg <= 1462 ? "SE" :
    deg <= 1687 ? "SSE" :
    deg <= 1912 ? "S" :
    deg <= 2137 ? "SSW" :
    deg <= 2362 ? "SW" :
    deg <= 2587 ? "WSW" :
    deg <= 2812 ? "W" :
    deg <= 3037 ? "WNW" :
    deg <= 3262 ? "NW" :
    deg <= 3487 ? "NNW" :
    "N";

  printf("%s %d\n", dir, w);
}
