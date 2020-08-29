# SPDX-License-Identifier: X11
# 2020-08-30
# Sum of product of pairs (300pt)

const M = 1000000007

function main()
  N = parse(Int, readline())

  s = parse(Int, readuntil(stdin, " "))
  t = 0
  for i ∈ 2:N
    A = parse(Int, readuntil(stdin, " "))
    t = mod(t + A * s, M)
    s = mod(s + A, M)
  end

  println(t)
end

main()
