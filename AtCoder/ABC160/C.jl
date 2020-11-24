# SPDX-License-Identifier: X11
# 2020-11-25
# Traveling Salesman around Lake (300pt)

function main()
  K,N = parse.(Int, (split ∘ readline)())
  A = parse.(Int, (split ∘ readline)())

  dist = -1
  for i ∈ 1:N - 1
    dist = max(dist, abs(A[i] - A[i + 1]))
  end
  dist = max(dist, (K - A[N]) + A[1])

  println(K - dist)
end

main()
