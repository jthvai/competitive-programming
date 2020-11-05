# SPDX-License-Identifier: X11
# 2020-11-05
# Trapezoid Sum (200pt)

sumto(n) = n * (n + 1) ÷ 2
sumfromto(n, m) = sumto(m) - sumto(n) + n

function main()
  N = parse(Int, readline())
  sum = 0
  for i ∈ 1:N
    A,B = parse.(Int, split(readline()))
    sum += sumfromto(A,B)
  end
  println(sum)
end

main()
