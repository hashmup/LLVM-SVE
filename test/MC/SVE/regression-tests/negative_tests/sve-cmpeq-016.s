// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecS8CmpFlgEQVIZ
// Restricted predicate has range [0, 7].
cmpeq p14.b, p8/z, z22.b, #-16
// CHECK: error: invalid operand
