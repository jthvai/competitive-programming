# SPDX-License-Identifier: X11
# 2020-11-15 (Live)
# Travel (300pt)

function main()
  N, K = parse.(Int, (split ∘ readline)())
  T = Matrix{Int}(undef, N, N)
  for i ∈ 1:N
    t = parse.(Int, (split ∘ readline)())
    for j ∈ 1:N
      T[i, j] = t[j]
    end
  end

  (println ∘ length ∘
    (x -> filter!(y -> y == K, x)))(map(x -> pathl(T, x),
                                             (permutations ∘ collect)(2:N)))
end

function pathl(T::Matrix{Int}, p::Vector{Int})::Int
  sum = T[1, p[1]]
  for i ∈ 1:lastindex(p) - 1
    sum += T[p[i], p[i + 1]]
  end
  sum += T[p[end], 1]
end

function permutations(a::Vector{Int})::Vector{Vector{Int}}
  length(a) == 1 && return [a]

  ret = Vector{Vector{Int}}()
  for i ∈ 1:lastindex(a)
    for j ∈ permutations([a[1:i - 1]; a[i + 1:end]])
      push!(ret, [a[i]; j])
    end
  end

  return ret
end

main()
