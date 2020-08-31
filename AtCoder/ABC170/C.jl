# SPDX-License-Identifier: X11
# 2020-08-30
# Forbidden List (300pt)

function main()
  X, N = parse.(Int, split(readline(), " "))

  if N == 0
    println(X)
    return
  end

  P = parse.(Int, split(readline(), " "))
  for i ∈ 0:cld(N, 2)
    if X - i ∉ P
      println(X - i)
      return
    elseif X + i ∉ P
      println(X + i)
      return
    end
  end
end

main()
