// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU32CLoad2LSSZ
// Restricted predicate has range [0, 7].
ld1h z27.s, p8/z, [x22, x23, lsl #1]
// CHECK: error: invalid operand
