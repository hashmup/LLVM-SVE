// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU64CLoad4SIZ
// Restricted predicate has range [0, 7].
ld1w z7.d, p8/z, [x25, #2, MUL VL]
// CHECK: error: invalid operand
