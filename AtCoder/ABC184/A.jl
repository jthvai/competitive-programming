# SPDX-License-Identifier: X11
# 2020-11-23
# Determinant (100pt)

a,b = parse.(Int, (split ∘ readline)())
c,d = parse.(Int, (split ∘ readline)())

println(a*d - b*c)
