# SPDX-License-Identifier: X11
# 2020-08-29 (Live)
# Don't be late (100pt)

D, S, T = parse.(Int, split(readline(), " "))
println(S * T < D ? "No" : "Yes")
