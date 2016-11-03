// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU16CLoadNF2SIZ
// Immediate out of upper bound [-8, 7].
ldnf1h z29.h, p4/z, [x25, #8, MUL VL]
// CHECK: error: index must be an integer in range [-8, 7].
