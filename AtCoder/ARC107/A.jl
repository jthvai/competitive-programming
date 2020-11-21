# SPDX-License-Identifier: X11
# 2020-11-21 (Timed)
# Simple Math (300pt)

const MODULUS = 998244353

function main()
  A,B,C = parse.(Int, (split ∘ readline)())
  println(mod(sumto(A) * sumto(B) * sumto(C), MODULUS))
end

sumto(n::Integer)::BigInt = n * (n + 1) ÷ 2

main()
