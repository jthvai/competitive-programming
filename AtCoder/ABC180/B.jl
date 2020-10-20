# SPDX-License-Identifier: X11
# 2020-10-21
# Various distances (200pt)

N = parse(Int, readline())
X = (abs ∘ parse).(Int, split(readline()))

println(sum(X))
println((sqrt ∘ sum ∘ map)(x -> x^2, X))
println(maximum(X))
