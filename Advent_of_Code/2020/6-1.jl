# SPDX-License-Identifier: X11
# 2020-12-22
# Day 6, Part 1

input = split.(
  split(readchomp(stdin), "\n\n"; keepempty=false),
  "\n";
  keepempty=false)

(println ∘ sum ∘ map)(length ∘ unique ∘ (x -> reduce(*, x)), input)
