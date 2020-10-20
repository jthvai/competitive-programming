# SPDX-License-Identifier: X11
# 2020-10-21
# Cream puff (300pt)

N = parse(Int, readline())
A = []

push!(A, 1)
for i ∈ 2:floor(Int, sqrt(N))
  if N % i == 0
    push!(A, i)
    i != N ÷ i && push!(A, N ÷ i)
  end
end
N != 1 && push!(A, N)
sort!(A)

for i ∈ A
  println(i)
end
