# SPDX-License-Identifier: X11
# 2021-01-03
# Otoshidama (300pt)

function main()
  N, Y = parse.(Int, (split ∘ readline)())

  for i ∈ 0:N, j ∈ 0:N - i
    k = N - i - j
    k < 0 && continue
    i * 10000 + j * 5000 + k * 1000 == Y && (println("$i $j $k"); return)
  end

  println("-1 -1 -1")
end

main()
