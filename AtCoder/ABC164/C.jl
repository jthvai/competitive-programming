# SPDX-License-Identifier: X11
# 2020-11-20
# gacha (300pt)

function main()
  N = parse(Int, readline())
  d = Dict()
  for i ∈ 1:N
    d[readline()] = true
  end
  (println ∘ length)(d)
end

main()
