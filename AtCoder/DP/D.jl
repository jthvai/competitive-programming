# SPDX-License-Identifier: X11
# 2020-11-20
# Knapsack 1 (100pt)

function main()
  N,W = parse.(Int, (split ∘ readline)())
  dp = zeros(Int, N + 1, W + 1)

  for i ∈ 2:N + 1
    w,v = parse.(Int, (split ∘ readline)())

    for j ∈ 2:W + 1
      if j <= w
        dp[i, j] = dp[i - 1, j]
      else
        dp[i, j] = max(dp[i - 1, j],
                       dp[i - 1, j - w] + v)
      end
    end
  end

  println(dp[N + 1, W + 1])
end

main()
