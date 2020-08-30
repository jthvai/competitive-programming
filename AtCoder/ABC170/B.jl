# SPDX-License-Identifier: X11
# 2020-08-30
# Crane and Turtle (200pt)

((X, Y) -> println((Y & 1 == 0 && Y / 4 <= X <= Y / 2) ? "Yes" : "No "))(
  parse.(Int, split(readline(), " "))...)
