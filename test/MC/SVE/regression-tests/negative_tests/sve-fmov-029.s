// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecF32MovI
// Immediate not compatible with encode/decode function.
fmov z19.s, #0.4
// CHECK: error: expected compatible register or floating-point constant
