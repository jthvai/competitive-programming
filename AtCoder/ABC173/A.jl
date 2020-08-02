# SPDX-License-Identifier: X11
# 2020-07-30
# Payment

const BILL = 1000
N = parse(Int,readline())

N % BILL == 0 ? println(0) : println(BILL - N % BILL)
