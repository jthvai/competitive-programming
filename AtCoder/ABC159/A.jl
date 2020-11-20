# SPDX-License-Identifier: X11
# 2020-11-20
# The Number of Even Pairs (100pt)

N,M = parse.(Int, (split ∘ readline)())
println(binomial(N,2) + binomial(M,2))
