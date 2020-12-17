# SPDX-License-Identifier: X11
# 2020-12-17
# Shift only (200pt)

function main()
  N = parse(Int, readline())
  A = parse.(Int, (split ∘ readline)())

  (println ∘ minimum)(getbitsuntilodd, A)
end

function getbitsuntilodd(n::Integer)::Integer
  i = 0
  while n & 1 == 0
    n >>= 1
    i += 1
  end
  return i
end

main()
