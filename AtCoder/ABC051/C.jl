# SPDX-License-Identifier: X11
# 2020-10-18 (Unofficial Live)
# Back and Forth (300pt)

sx, sy, tx, ty = parse.(Int, split(readline()))

xd = tx - sx
yd = ty - sy

println('R'^xd *
        'U'^yd *
        'L'^xd *
        'D'^yd *
        'D' *
        'R'^(xd + 1) *
        'U'^(yd + 1) *
        'L' *
        'U' *
        'L'^(xd + 1) *
        'D'^(yd + 1) *
        'R')
