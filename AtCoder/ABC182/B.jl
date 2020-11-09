# SPDX-License-Identifier: X11
# 2020-11-09 (Timed)
# Almost GCD (200pt)

function main()
  readline()
  A = parse.(Int, split(readline()))

  max,gcd = -1,-1
  for i ∈ 2:maximum(A)
    if (g = gcdness(i, A)) > gcd
      max = i
      gcd = g
    end
  end

  println(max)
end

function gcdness(k::Integer, A::Array{<:Integer})::Integer
  cnt = 0
  for a ∈ A
    a % k == 0 && (cnt += 1)
  end
  return cnt
end

main()
