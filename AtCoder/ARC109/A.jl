# SPDX-License-Identifier: X11
# 2020-11-30
# Hands (300pt)

a,b,x,y = parse.(Int, (split ∘ readline)())
d = abs(a - b) - (b < a ? 1 : 0)
println(min(y, 2x) * d + x)
