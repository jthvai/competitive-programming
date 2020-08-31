# SPDX-License-Identifier: X11
# 2020-08-31
# Multiplication 3 (300pt)

((A, B) -> println(trunc(Int64, A * B)))(
  parse(Int64, readuntil(stdin, " ")),
  rationalize(parse(Float64, readline())))
