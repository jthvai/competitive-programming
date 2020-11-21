# SPDX-License-Identifier: X11
# 2020-11-21
# management (300pt)

function main()
  N = parse(Int, readline())
  A = parse.(Int, (split ∘ readline)())
  subs = zeros(Int, N)

  for x ∈ A
    subs[x] += 1
  end

  for x ∈ subs
    println(x)
  end
end

main()
