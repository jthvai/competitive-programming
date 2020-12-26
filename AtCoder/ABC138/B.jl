# SPDX-License-Identifier: X11
# 2020-12-26
# Resistors in Parallel (200pt)

using Printf: @printf;

readline()
A = parse.(Int, (split ∘ readline)())

@printf("%.6f\n", (inv ∘ sum ∘ map)(inv, A))
