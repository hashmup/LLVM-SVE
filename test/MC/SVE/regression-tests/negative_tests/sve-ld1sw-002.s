// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecS64CLoad4SIZ
// Restricted predicate has range [0, 7].
ld1sw z9.d, p8/z, [x6, #6, MUL VL]
// CHECK: error: invalid operand
