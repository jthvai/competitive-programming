# SPDX-License-Identifier: X11
# 2020-11-19
# Vacation (100pt)

function main()
  N = parse(Int, readline())
  vals = zeros(Int, N + 1, 3)

  for i ∈ 2:N + 1
    A,B,C = parse.(Int, (split ∘ readline)())

    vals[i, 1] = A + max(vals[i - 1, 2], vals[i - 1, 3])
    vals[i, 2] = B + max(vals[i - 1, 1], vals[i - 1, 3])
    vals[i, 3] = C + max(vals[i - 1, 1], vals[i - 1, 2])
  end

  println(max(vals[N + 1, 1], vals[N + 1, 2], vals[N + 1, 3]))
end

main()
