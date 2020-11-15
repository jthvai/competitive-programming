# SPDX-License-Identifier: X11
# 2020-11-15 (Live)
# Billiards (200pt)

function main()
  Sx, Sy, Gx, Gy = parse.(Int, (split ∘ readline)())
  println((Gx - Sx) / (Gy/Sy + 1) + Sx)
end

main()
