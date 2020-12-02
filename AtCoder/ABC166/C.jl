# SPDX-License-Identifier: X11
# 2020-12-02
# Peaks (300pt)

function main()
  N,M = parse.(Int, (split ∘ readline)())
  H = parse.(Int, (split ∘ readline)())
  MA = zeros(N)

  for i ∈ 1:M
    A,B = parse.(Int, (split ∘ readline)())
    MA[A] = max(MA[A], H[B])
    MA[B] = max(MA[B], H[A])
  end

  ans = 0
  for i ∈ 1:N
    H[i] > MA[i] && (ans += 1)
  end

  println(ans)
end

main()
