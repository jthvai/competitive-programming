# SPDX-License-Identifier: X11
# 2020-10-18 (Unofficial Live)
# Tag (200pt)

A, V = parse.(Int, split(readline()))
B, W = parse.(Int, split(readline()))
T = parse(Int, readline())

S = V - W
D = abs(B - A)

if S <= 0
  println("NO")
elseif T * S < D
  println("NO")
else
  println("YES")
end
