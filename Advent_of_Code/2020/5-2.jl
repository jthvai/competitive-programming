# SPDX-License-Identifier: X11
# 2020-12-09
# Day 5, Part 2

const TOTAL = 128 * 8

function main()
  passes = readlines()
  seats = falses(TOTAL)

  for p ∈ passes
    seats[seatid(p)] = true
  end

  for i ∈ 2:TOTAL - 1
    seats[i - 1] && !seats[i] && seats[i + 1] && (println(i); return)
  end
end

function seatid(str::AbstractString)
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

main()
