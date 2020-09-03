# SPDX-License-Identifier: X11
# 2020-09-01
# Making Triangle (200pt)

function main()
  N = parse(Int, readline())
  L = parse.(Int, split(readline()))
  sort!(L)

  c = 0
  for i ∈ 1:N - 2
    for j ∈ i + 1:N - 1
      for k ∈ j + 1:N
        L[i] != L[j] != L[k] && L[i] + L[j] > L[k] && (c += 1)
      end
    end
  end

  println(c)
end

main()
