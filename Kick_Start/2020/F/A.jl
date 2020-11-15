# SPDX-License-Identifier: X11
# 2020-11-15
# ATM Queue (5pt, 8pt)

function main()
  T = parse(Int, readline())
  for i ∈ 1:T
    print("Case #$i: ")
    solve()
  end
end

function solve()
  N, X = parse.(Int, (split ∘ readline)())
  A = (split ∘ readline)()
  K = Vector{Tuple{Int, Int, Int}}()
  for (i, s) ∈ enumerate(A)
    x = parse(Int, s)
    push!(K, (i, x, ceil(Int, x/X)))
  end

  sort!(K; alg=MergeSort, by = x -> x[3])

  for (i, x, k) ∈ K[1:end - 1]
    print("$i ")
  end
  println(K[end][1])
end

main()
