# SPDX-License-Identifier: X11
# 2020-11-23
# Quizzes (200pt)

function main()
  N,X = parse.(Int, (split ∘ readline)())
  S = readline()

  for c ∈ S
    if c == 'o'
      X += 1
    else
      if X > 0
        X -= 1
      end
    end
  end

  println(X)
end


main()
