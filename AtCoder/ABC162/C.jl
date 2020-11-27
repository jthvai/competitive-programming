# SPDX-License-Identifier: X11
# 2020-11-27
# Sum of gcd of Tuples (Easy) (300pt)

function main()
  K = parse(Int, readline())

  sum = 0
  for i ∈ 1:K
    for j ∈ 1:K
      for k ∈ 1:K
        sum += gcd(i,j,k)
      end
    end
  end

  println(sum)
end

main()
