# SPDX-License-Identifier: X11
# 2020-12-27
# Bingo (200pt)

function main()
  A1 = parse.(Int, (split ∘ readline)())
  A2 = parse.(Int, (split ∘ readline)())
  A3 = parse.(Int, (split ∘ readline)())
  A = Matrix{Int}(undef,3,3)
  for i ∈ 1:3
    A[1,i] = A1[i]
    A[2,i] = A2[i]
    A[3,i] = A3[i]
  end
  card = falses(3,3)

  readline()
  B = parse.(Int, filter(!isempty, readlines()))
  for x ∈ B
    coord = findfirst(a -> a == x, A)
    coord !== nothing && (card[coord] = true)
  end

  bingos = [
    card[1,:],
    card[2,:],
    card[3,:],
    card[:,1],
    card[:,2],
    card[:,3],
    [card[1,1], card[2,2], card[3,3]],
    [card[1,3], card[2,2], card[3,1]]
  ]

  if (any ∘ map)(all, bingos)
    println("Yes")
  else
    println("No")
  end
end

main()
