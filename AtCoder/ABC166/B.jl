# SPDX-License-Identifier: X11
# 2020-11-20
# Trick or Treat (200pt)

function main()
  N,K = parse.(Int, (split ∘ readline)())
  snacks = zeros(Int, N)
  for i ∈ 1:K
    readline()
    for x ∈ parse.(Int, (split ∘ readline)())
      snacks[x] += 1
    end
  end
  (println ∘ length ∘ filter)(iszero, snacks)
end

main()
