# SPDX-License-Identifier: X11
# 2020-12-07
# Day 1, Part 1

function main()
  input = parse.(Int, readlines())
  nums = falses(2020)

  for x ∈ input
    nums[x] = true
  end

  for x ∈ input
    if 2020 - x > 0 && nums[2020 - x]
      println(x * (2020 - x))
      return
    end
  end
end

main()
