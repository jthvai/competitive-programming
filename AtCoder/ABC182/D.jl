# SPDX-License-Identifier: X11
# 2020-11-20
# Wandering (400pt)

function main()
  N = parse(Int, readline())
  A = parse.(Int, (split ∘ readline)())

  step = 0
  curr = 0
  mstep = 0
  m = 0
  for x ∈ A
    step += x
    mstep = max(mstep, step)
    m = max(m, curr + mstep)
    curr += step
  end

  println(m)
end

main()
