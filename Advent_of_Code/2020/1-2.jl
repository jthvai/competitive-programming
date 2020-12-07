# SPDX-License-Identifier: X11
# 2020-12-07
# Day 1, Part 2

function main()
  input = parse.(Int, readlines())
  n = length(input)
  nums = falses(2020)

  for x ∈ input
    nums[x] = true
  end

  for i ∈ 1:n - 1
    for j ∈ i + 1:n
      x = 2020 - input[i] - input[j]
      if x > 0 && nums[x]
        println(input[i] * input[j] * x)
        return
      end
    end
  end
end

main()
