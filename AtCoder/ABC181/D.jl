# SPDX-License-Identifier: X11
# 2020-11-05
# Hachi (400pt)

function main()
  S = readline()
  if length(S) == 1
    println(check(S) ? "Yes" : "No")
    return
  elseif length(S) == 2
    println(check(S) || (check ∘ reverse)(S) ? "Yes" : "No")
    return
  end

  T = Vector{Char}()
  i = 0
  c = '\0'
  for x ∈ (sort ∘ collect)(S)
    if x != c
      push!(T, x)
      i = 1
      c = x
    elseif i < 3
      push!(T, x)
      i += 1
    end
  end

  N = length(T)
  for i ∈ 1:N - 2, j ∈ i + 1:N - 1, k ∈ j + 1:N
    a,b,c = T[i],T[j],T[k]

    if a == b == c
      checkt(a, b, c) && (println("Yes"); return)
    elseif a != b == c
      for t ∈ permute2(a, b)
        checkt(t...) && (println("Yes"); return)
      end
    elseif a == b != c
      for t ∈ permute2(c, b)
        checkt(t...) && (println("Yes"); return)
      end
    else
      for t ∈ permute3(a, b, c)
        checkt(t...) && (println("Yes"); return)
      end
    end
  end

  println("No")
end

isdiv8(n::Integer)::Bool = n == (n >> 3) << 3

check(s::String) = isdiv8(parse(Int, s))
checkt(a::Char,b::Char,c::Char) = (check ∘ string)(a,b,c)

permute2(a,b) = [
  (a,b,b),
  (b,a,b),
  (b,b,a)
]
permute3(a, b, c) = [
  (a,b,c),
  (a,c,b),
  (b,a,c),
  (b,c,a),
  (c,a,b),
  (c,b,a)
]

main()
