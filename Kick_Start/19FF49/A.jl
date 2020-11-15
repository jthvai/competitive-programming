# SPDX-License-Identifier: X11
# 2020-11-15 (Live)
# Retype (4pt, 7pt)

function main()
  T = parse(Int, readline())
  for i ∈ 1:T
    print("Case #$i: ")
    solve()
  end
end

function solve()
  N,K,S = parse.(Int, (split ∘ readline)())
  println(K - 1 + min(N + 1, (K - S) + (N + 1) - S))
end

main()
