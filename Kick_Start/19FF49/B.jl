# SPDX-License-Identifier: X11
# 2020-11-15 (Live)
# Boring Numbers (7pt, 12pt)

# const BASE = 10
const T1_MAX = 10^3 + 5

# !FIX This is a half-solution

function solve()
  L,R = parse.(Int, (split ∘ readline)())
  @assert R < T1_MAX "Second test case unhandled."
  println((length ∘ filter)(isboring, L:R))
  # println(getboring(L, R) + (isboring(R) ? 1 : 0))
end

# Function is R exclusive, for recursion's sake
# function getboring(L::Integer, R::Integer)::Integer
#   L == R && return 0
#
#   e = floor(Int, log(BASE, R - L))
#   e == 0 && return (length ∘ filter)(isboring, L:R - 1)
#
#   upper = floorto(R, e)
#   lower = ceilto(L, e)
#   count = (length ∘ filter)(x -> x & 1 == 1,
#                             lower ÷ BASE^e:upper ÷ BASE^e - 1)
#   return count * 5^e + getboring(L, lower) + getboring(upper, R)
# end

isboring(n::Integer)::Bool =
  all(t -> t[1] & 1 == parse(Int, t[2]) & 1,
      (enumerate ∘ collect ∘ string)(n))

# floorto(n::Integer, e::Integer)::Integer =
#   n - n % BASE^e
# ceilto(n::Integer, e::Integer)::Integer =
#   n % BASE^e == 0 ? n : n + (BASE^e - n % BASE^e)

function main()
  T = parse(Int, readline())
  for i ∈ 1:T
    print("Case #$i: ")
    solve()
  end
end

main()
