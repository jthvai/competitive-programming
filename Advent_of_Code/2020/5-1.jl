# SPDX-License-Identifier: X11
# 2020-12-09
# Day 5, Part 1

function seatid(str::AbstractString)::Integer
  row = -1
  s = 0
  e = 127
  for (i, c) ∈ enumerate(str[1:7])
    c == 'F' ? e -= 2^(7 - i) : s += 2^(7 - i)
  end
  @assert s == e
  row = s

  col = -1
  s = 0
  e = 7
  for (i, c) ∈ enumerate(str[8:10])
    c == 'L' ? e -= 2^(3 - i) : s += 2^(3 - i)
  end
  @assert s == e
  col = s

  return row * 8 + col
end

(println ∘ maximum)(seatid, readlines())
