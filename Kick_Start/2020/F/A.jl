# SPDX-License-Identifier: X11
# 2020-09-27
# ATM Queue (5pts, 8pts)

# !FIX MLE; change first dim to LL

function main()
  T = parse(Int, readline())
  for i ∈ 1:T
    print("Case #$i: ")
    solve()
  end
end

function solve()
  N, X = parse.(Int, split(readline()))
  A = parse.(Int, split(readline()))
  order = Vector{Vector{Int}}()

  for (i,x) ∈ enumerate(A)
    t = cld(x, X)

    if length(order) < t
      for j ∈ 1:t - length(order)
        push!(order, [])
      end
    end

    append!(order[t], i)
  end

  outstr = ""
  for arr ∈ order
    for x ∈ arr
      outstr *= "$x "
    end
  end
  println(rstrip(outstr))
end

main()
