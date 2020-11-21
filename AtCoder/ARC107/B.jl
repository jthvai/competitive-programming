# SPDX-License-Identifier: X11
# 2020-11-21 (Timed)
# Quadruple (400pt)

function main()
  N,K = parse.(Int, (split ∘ readline)())
  K = abs(K)

  sum = 0
  for i ∈ K + 2:2N
    sum += pairs(N, i) * pairs(N, i - K)
  end

  println(sum)
end

pairs(n::Integer, k::Integer) = min(k - 1, 2n + 1 - k)

main()
