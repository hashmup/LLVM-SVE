// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU64LoadFF4XVSZ
// Restricted predicate has range [0, 7].
ldff1w z29.d, p8/z, [x29, z24.d, sxtw]
// CHECK: error: invalid operand
