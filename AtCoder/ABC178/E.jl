# SPDX-License-Identifier: X11
# 2020-09-13
# Dist Max (500pt)

function _main()
  N = parse(Int, readline())
  X, Y = parse.(Int, split(readline()))
  A = [(X + Y, X - Y)]
  for i ∈ 2:N
    X, Y = parse.(Int, split(readline()))
    push!(A, (X + Y, X - Y))
  end
  return max(maximum(x -> x[1], A) - minimum(x -> x[1], A),
             maximum(x -> x[2], A) - minimum(x -> x[2], A))
end

println(_main())
