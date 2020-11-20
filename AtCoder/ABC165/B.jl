# SPDX-License-Identifier: X11
# 2020-11-20
# 1% (200pt)

const interest = big(101)//100

f(i, b, t) = b >= t ? i : f(i + 1, floor(b * interest), t)

(println ∘ f)(0, 100, parse(Int, readline()))
