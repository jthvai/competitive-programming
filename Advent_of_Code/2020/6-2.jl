# SPDX-License-Identifier: X11
# 2020-12-22
# Day 6, Part 2

function main()
  input = split.(
    split(readchomp(stdin), "\n\n"; keepempty=false),
    "\n";
    keepempty=false)

  (println ∘ sum ∘ map)(countanswers, input)
end

function countanswers(group)::Integer
  dict = (Dict ∘ zip)('a':'z', trues(26))

  for person ∈ group
    curr = (Dict ∘ zip)('a':'z', falses(26))
    for c ∈ person
      curr[c] = true
    end

    for (c, b) ∈ curr
      !b && (dict[c] = false)
    end
  end

  return (count ∘ values)(dict)
end

main()
