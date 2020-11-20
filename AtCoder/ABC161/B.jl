# SPDX-License-Identifier: X11
# 2020-11-20
# Popular Vote (200pt)

N,M = parse.(Int, (split ∘ readline)())
A = parse.(Int, (split ∘ readline)())
println((length ∘ filter)(x -> x >= ceil(sum(A)/(4M)), A) >= M ?
          "Yes" : "No")
