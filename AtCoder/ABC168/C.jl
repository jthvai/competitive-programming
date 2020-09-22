# SPDX-License-Identifier: X11
# 2020-09-23
# : (Colon) (300pt)

lawofcosines(a, b, θ) = sqrt(a * a + b * b - 2a * b * cos(θ))
angleofhour(h,m) = π * (60h + m) / (6 * 60)
angleofminute(m) = 2π * m / 60

A, B, H, M = parse.(Int, split(readline()))

theta = abs(angleofminute(M) - angleofhour(H,M))
println(lawofcosines(A, B, theta))
