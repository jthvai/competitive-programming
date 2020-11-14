# SPDX-License-Identifier: X11
# 2020-11-15
# Collinearity (300pt)

function main()
  N = parse(Int, readline())
  A = Vector{Tuple{Int, Int}}()
  for i ∈ 1:N
    x,y = parse.(Int, (split ∘ readline)())
    push!(A, (x,y))
  end

  for i ∈ 1:N - 2, j ∈ i + 1:N - 1, k ∈ j + 1:N
    if trianglearea(A[i], A[j], A[k]) == 0
      println("Yes")
      return
    end
  end

  println("No")
end

trianglearea((xa,ya)::Tuple{<:Real, <:Real},
             (xb,yb)::Tuple{<:Real, <:Real},
             (xc,yc)::Tuple{<:Real, <:Real}) =
  abs(xa * yb - xa * yc + xb * yc - xb * ya + xc * ya - xc * yb) / 2

main()
