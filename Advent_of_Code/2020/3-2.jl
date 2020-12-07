# SPDX-License-Identifier: X11
# 2020-12-07
# Day 3, Part 2

const paths = [
  (1,1),
  (3,1),
  (5,1),
  (7,1),
  (1,2)
]

function main()
  input = readlines()
  # [cols][rows]

  (println ∘ prod ∘ map)(x -> counttrees(input, x),
                         paths::Vector{Tuple{Int,Int}})
end

function counttrees(input::Vector{String}, tup::Tuple{Int,Int})::Int
  right = tup[1]
  down = tup[2]

  cnt = 0
  x = 1 + right
  bound = length(input[1])

  for i ∈ 1 + down:down:length(input)
    input[i][x] == '#' && (cnt += 1)
    x += right
    x > bound && (x = x - bound)
  end

  return cnt
end

main()
