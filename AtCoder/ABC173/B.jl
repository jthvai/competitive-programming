# SPDX-License-Identifier: X11
# 2020-07-30

N = parse(Int,readline())
S = readlines()

O = zeros(Int,4)

for i in 1:N
  if S[i] == "AC"
    O[1] = O[1] + 1
  elseif S[i] == "WA"
    O[2] = O[2] + 1
  elseif S[i] == "TLE"
    O[3] = O[3] + 1
  elseif S[i] == "RE"
    O[4] = O[4] + 1
  end
end

println(string("AC x ", O[1]))
println(string("WA x ", O[2]))
println(string("TLE x ", O[3]))
println(string("RE x ", O[4]))
