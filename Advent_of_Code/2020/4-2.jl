# SPDX-License-Identifier: X11
# 2020-12-08
# Day 4, Part 2

const REQ_FIELDS = [
  "byr",
  "iyr",
  "eyr",
  "hgt",
  "hcl",
  "ecl",
  "pid"
]

const REG = r"^(cid|byr|iyr|eyr|hgt|hcl|ecl|pid):(.*)$"

const FIELD_REG = Dict(
  "yr"  => r"^\d{4}$",
  "hgt" => r"^(\d*)(cm|in)$",
  "hcl" => r"^#[0-9a-f]{6}$",
  "ecl" => r"^(amb|blu|brn|gry|grn|hzl|oth)$",
  "pid" => r"^\d{9}$"
)

validatebyr(v::AbstractString)::Bool = let x = parse(Int, v)
  occursin(FIELD_REG["yr"], v) && x >= 1920 && x <= 2002
end
validateiyr(v::AbstractString)::Bool = let x = parse(Int, v)
  occursin(FIELD_REG["yr"], v) && x >= 2010 && x <= 2020
end
validateeyr(v::AbstractString)::Bool = let x = parse(Int, v)
  occursin(FIELD_REG["yr"], v) && x >= 2020 && x <= 2030
end
function validatehgt(v::AbstractString)::Bool
  m = match(FIELD_REG["hgt"], v)
  m === nothing && return false
  x = parse(Int, m.captures[1])
  return m.captures[2] == "cm" ? x >= 150 && x <= 193 : x >= 59 && x <= 76
end
validatehcl(v::AbstractString)::Bool = occursin(FIELD_REG["hcl"], v)
validateecl(v::AbstractString)::Bool = occursin(FIELD_REG["ecl"], v)
validatepid(v::AbstractString)::Bool = occursin(FIELD_REG["pid"], v)

const FIELD_VALF = Dict(
  "byr" => validatebyr,
  "iyr" => validateiyr,
  "eyr" => validateeyr,
  "hgt" => validatehgt,
  "hcl" => validatehcl,
  "ecl" => validateecl,
  "pid" => validatepid
)

function main()
  input = split.(split(readchomp(stdin), "\n\n"; keepempty=false))

  (println ∘ length ∘ filter)(validate, input)
end

function validate(passport::Vector{SubString{String}})::Bool
  fields = (Dict ∘ zip)(REQ_FIELDS::Array{String},
                        (falses ∘ length)(REQ_FIELDS::Array{String}))

  for f ∈ passport
    m = match(REG::Regex, f)
    m.captures[1] == "cid" && continue

    !validatefield(m.captures[1], m.captures[2]) && return false
    fields[m.captures[1]] = true
  end

  return (all ∘ values)(fields)
end

validatefield(field::AbstractString, val::AbstractString)::Bool =
  FIELD_VALF[field](val)

main()
