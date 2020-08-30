# SPDX-License-Identifier: X11
# 2020-08-30
# Multiplication 4 (500pt)

const M = 1000000007

function main()
  N, K = parse.(Int, split(readline(), " "))
  A = parse.(Int, split(readline(), " "))
  T = 1

  X = maximum(A)
  if X == 0 && K & 1 == 1
    println(0)
    return
  elseif N == K
    for i ∈ A
      T *= i ⨳ M
      T = T ⨳ M
    end
    println(T)
    return
  end

  sort!(A; lt = test, rev = true)

  if X < 0 && K & 1 == 1
    B = A[end + 1 - K:end]
  elseif X <= 0 && K & 1 == 0
    B = A[1:K]
    if B[K] == 0
      println(0)
      return
    end
  else
    B = A[1:K]
    if oddneg(B)
      if A[K + 1] == 0
        println(0)
        return
      end

      R = A[K + 1:end]
      rfp = firstpos(R) === nothing ? -1 : firstpos(R)
      rfpv = rfp == -1 ? rfp : R[rfp]
      rfn = firstneg(R) === nothing ? -1 : firstneg(R)
      rfnv = rfn == -1 ? rfn : abs(R[rfn])
      blp = lastpos(B)
      blpv = blp === nothing ? blp : B[blp]
      bln = lastneg(B)
      blnv = abs(B[bln])

      if blp === nothing || rfpv//blnv > rfnv//blpv
        B[bln] = R[rfp]
      elseif rfpv//blnv < rfnv//blpv
        B[blp] = R[rfn]
      elseif rfpv//blnv == rfnv//blpv
        B[K] = B[K] < 0 ? R[rfp] : R[rfn]
      end
    end
  end

  for i ∈ B
    T *= i ⨳ M
    T = T ⨳ M
  end

  println(T)
end

function test(x::Int, y::Int)
  return abs(x) == abs(y) ? x < y : abs(x) < abs(y);
end

⨳(x, y) = mod(x, y)
oddneg(A) = count(x -> x < 0, A) & 1 == 1
firstneg(A) = findfirst(x -> x < 0, A)
firstpos(A) = findfirst(x -> x > 0, A)
lastneg(A) = findlast(x -> x < 0, A)
lastpos(A) = findlast(x -> x > 0, A)

main()
