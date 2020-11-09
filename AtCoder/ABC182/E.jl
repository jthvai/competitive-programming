# SPDX-License-Identifier: X11
# 2020-11-09 (Timed)
# Akari (500pt)

function main()
  H,W,N,M = parse.(Int, (split ∘ readline)())
  G = zeros(Int, (H, W))
  #==
   = 0: empty
   = 1: bulb
   = 2: block
   =#
  for i ∈ 1:N
    a,b = parse.(Int, (split ∘ readline)())
    G[a,b] = 1
  end
  for i ∈ 1:M
    c,d = parse.(Int, (split ∘ readline)())
    G[c,d] = 2
  end
  I = zeros(Int, (H, W))
  #==
   = 0: dark
   = 1: light
   =#

  for h ∈ 1:H, w ∈ 1:W
    G[h,w] == 2 && continue

    lit = false

    for i ∈ h:-1:1
      if G[i,w] == 1
        I[h,w] = 1
        lit = true
        break
      end
      G[i,w] == 2 && break
    end
    lit && continue

    for i ∈ h + 1:H
      if G[i,w] == 1
        I[h,w] = 1
        lit = true
        break
      end
      G[i,w] == 2 && break
    end
    lit && continue

    for i ∈ w:-1:1
      if G[h,i] == 1
        I[h,w] = 1
        lit = true
        break
      end
      G[h,i] == 2 && break
    end
    lit && continue

    for i ∈ w + 1:W
      if G[h,i] == 1
        I[h,w] = 1
        lit = true
        break
      end
      G[h,i] == 2 && break
    end
  end

  (println ∘ sum)(I)
end

main()
