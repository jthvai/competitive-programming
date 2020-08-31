# SPDX-License-Identifier: X11
# 2020-08-31
# Tsundoku (300pt)

function main()
  N, M, K = parse.(Int, split(readline(), " "))
  A = parse.(Int, split(readline(), " "))
  B = parse.(Int, split(readline(), " "))
  As = runsum(A)
  Bs = runsum(B)

  j = M
  ans = 0
  for i ∈ 0:N
    As[i + 1] > K && break

    while j > 0 && As[i + 1] + Bs[j + 1] > K
      j -= 1
    end

    ans = max(ans, i + j)
  end

  println(ans)
end

function runsum(A)
  As = Vector{Int}(undef, 1 + lastindex(A))
  As[1] = 0
  for i ∈ 1:lastindex(A)
    As[i + 1] = As[i] + A[i]
  end
  return As
end

main()
