# SPDX-License-Identifier: X11
# 2020-12-07
# Day 3, Part 1

function main()
  input = readlines()
  # [cols][rows]

  cnt = 0
  x = 4
  bound = length(input[1])

  for i ∈ 2:length(input)
    input[i][x] == '#' && (cnt += 1)
    x += 3
    x > bound && (x = x - bound)
  end

  println(cnt)
end

main()
