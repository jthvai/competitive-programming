# SPDX-License-Identifier: X11
# 2020-11-10
# Frog 1 (100pt)

function main()
  N = parse(Int, readline())
  H = parse.(Int, (split ∘ readline)())

  DP = zeros(Int, N)
  if N == 1
    println(DP[1])
    return
  end

  DP[2] = abs(H[1] - H[2])
  if N == 2
    println(DP[2])
    return
  end

  for i ∈ 3:N
    DP[i] = min(abs(H[i - 1] - H[i]) + DP[i - 1],
                abs(H[i - 2] - H[i]) + DP[i - 2])
  end

  println(DP[N])
end

main()
