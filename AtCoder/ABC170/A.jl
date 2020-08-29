# SPDX-License-Identifier: X11
# 2020-08-29
# Five Variables (100pt)

println(findfirst(x -> x == 0, parse.(Int, split(readline(), " "))))
