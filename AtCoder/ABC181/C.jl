# SPDX-License-Identifier: X11
# 2020-11-05
# Collinearity (300pt)

slope((x_a,y_a)::Tuple{<:Real, <:Real},
      (x_b,y_b)::Tuple{<:Real, <:Real}) =
  (y_a - y_b) // (x_a - x_b)

function main()
  N = parse(Int, readline())
  A = Vector{Tuple{Int, Int}}()
  for i ∈ 1:N
    x,y = parse.(Int, split(readline()))
    push!(A, (x,y))
  end

  for i ∈ 1:N - 2, j ∈ i + 1:N - 1, k ∈ j + 1:N
    if slope(A[i], A[j]) == slope(A[i], A[k]) ||
       slope(A[i], A[j]) == slope(A[j], A[k]) ||
       slope(A[i], A[k]) == slope(A[j], A[k])
      println("Yes")
      return
    end
  end

  println("No")
end

main()
