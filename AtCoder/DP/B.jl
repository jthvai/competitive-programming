# SPDX-License-Identifier: X11
# 2020-11-10
# Frog 2 (100pt)

const INF = 10^9 + 5

function main()
  N,K = parse.(Int, (split ∘ readline)())
  H = parse.(Int, (split ∘ readline)())

  DP = fill(INF, N)
  DP[1] = 0

  for i ∈ 2:N
    for j ∈ 1:K
      i <= j && break
      DP[i] = min(DP[i], abs(H[i - j] - H[i]) + DP[i - j])
    end
  end

  println(DP[N])
end

main()
