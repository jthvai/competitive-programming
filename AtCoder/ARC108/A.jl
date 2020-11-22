# SPDX-License-Identifier: X11
# 2020-11-22
# Sum and Product (300pt)

function main()
  S,P = parse.(Int, (split ∘ readline)())

  det::BigInt = big(S)^2 - 4P
  if det < 0
    println("No")
    return
  end

  rtdet = √det
  if !isinteger(rtdet)
    println("No")
    return
  end

  x,y = S + Int(rtdet), S - Int(rtdet)
  println(x & 1 == 0 && x > 0 &&
          y & 1 == 0 && y > 0
          ? "Yes" : "No")
end

main()
