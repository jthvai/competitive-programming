# SPDX-License-Identifier: X11
# 2020-08-30
# Interactive Sorting

function main()
  N, Q = parse.(Int, split(readline(), " "))
  A = collect('A':'A' + N - 1)

  N > 5 ? sort!(A; alg = QuickSort, lt = ask) : return nothing

  println("! " * String(A))
end

function ask(a::Char, b::Char)
  println("? $a $b")
  flush(stdout)
  return readline() == "<"
end

main()
