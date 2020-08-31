# SPDX-License-Identifier: X11
# 2020-08-31
# One Quadrillion and One Dalmatians (300pt)

const BASE = 26

function main()
  N = parse(Int64, readline())

  exp = 1
  upper = BASE
  while upper < N
    exp += 1
    upper += BASE^exp
  end
  N -= upper - BASE^exp + 1

  name = Vector{Char}(undef, exp)

  for i ∈ exp:-1:1
    N, c = divrem(N, BASE)
    name[i] = 'a' + c
  end

  println(string(name...))
end

main()
