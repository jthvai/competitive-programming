# SPDX-License-Identifier: X11
# 2020-09-17
# Alter Altar (400pt)

function _main()
  N = parse(Int, readline())
  C = Vector{Char}(undef, 0)
  W, R = 0, 0

  for i ∈ 1:N
    c = read(stdin, Char)
    c == 'R' && (R += 1)
    push!(C, c)
  end

  ans = R
  for c ∈ C
    c == 'R' ? R -= 1 : W += 1
    ans = min(ans, max(W,R))
  end

  println(ans)
end

_main()
