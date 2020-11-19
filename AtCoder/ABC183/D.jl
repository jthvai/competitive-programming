# SPDX-License-Identifier: X11
# 2020-11-19
# Water Heater (400pt)

const TIME_END = 2 * 10^5 + 5

function main()
  N, W = parse.(Int, (split ∘ readline)())
  plans = zeros(Int, TIME_END)
  for i ∈ 1:N
    S,T,P = parse.(Int, (split ∘ readline)())
    plans[S + 1] += P
    plans[T + 1] -= P
  end

  for i ∈ 2:TIME_END
    plans[i] += plans[i - 1]
    if plans[i - 1] > W
      println("No")
      return
    end
  end

  println("Yes")
end

main()
