# SPDX-License-Identifier: X11
# 2020-12-07
# Day 2, Part 2

const reg = r"^(\d*)-(\d*) ([a-z]): ([a-z]*)"

function main()
  input = readlines()

  cnt = 0
  for x ∈ input
    validpass(x) && (cnt += 1)
  end

  println(cnt)
end

function validpass(str::AbstractString)::Bool
  m = match(reg, str)

  min  = parse.(Int, m.captures[1])
  max  = parse.(Int, m.captures[2])
  chr  = m.captures[3][1]
  pass = m.captures[end]

  a = pass[min]
  b = pass[max]

  return a == chr && b != chr || a != chr && b == chr
end

main()
