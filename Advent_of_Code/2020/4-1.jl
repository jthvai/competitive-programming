# SPDX-License-Identifier: X11
# 2020-12-08
# Day 4, Part 1

const REQ_FIELDS = [
  # "cid",
  "byr",
  "iyr",
  "eyr",
  "hgt",
  "hcl",
  "ecl",
  "pid"
]

const REG = r"^(cid|byr|iyr|eyr|hgt|hcl|ecl|pid):.*$"

function main()
  input = split.(split(readchomp(stdin), "\n\n"; keepempty=false))

  (println ∘ length ∘ filter)(pp -> validify(REG::Regex, pp), input)
end

function validify(re::Regex, passport::Vector{SubString{String}})::Bool
  fields = (Dict ∘ zip)(REQ_FIELDS::Array{String},
                        (falses ∘ length)(REQ_FIELDS::Array{String}))

  for f ∈ passport
    m = match(re, f)
    fields[m.captures[1]] = true
  end

  return (all ∘ values)(fields)
end

main()
