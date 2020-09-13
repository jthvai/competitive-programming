# SPDX-License-Identifier: X11
# 2020-09-13 (Live)
# Product Max (200pt)

a,b,c,d = parse.(Int, split(readline()))
println(maximum([a * c, a * d, b * c, b * d]))
