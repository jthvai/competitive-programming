# SPDX-License-Identifier: X11
# 2020-08-30
# Multiplication 2 (200pt)

const MAX = 1000000000000000000

function main()
  N = parse(Int, readline())
  Astr = readline()
  if occursin(r"^0 | 0 | 0$", Astr)
    println("0")
    return
  end
  Avec = split(Astr, " ")

  T = parse(Int, Avec[1])
  for i ∈ 2:N
    A = parse(Int, Avec[i])
    if big(T) * A > MAX
      println("-1")
      return
    else
      T *= A
    end
  end

  println(T)
end

main()
