// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecS8ShrVIM
// Immediate not compatible with encode/decode function.
asr z3.b, p4/m, z3.b, #0
// CHECK: error: immediate must be an integer in range [1, 8]
