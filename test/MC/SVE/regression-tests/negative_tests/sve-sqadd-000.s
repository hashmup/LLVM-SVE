// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecS16QAddVIX
// Immediate not compatible with encode/decode function.
sqadd z29.h, z29.h, #-1
// CHECK: error: immediate must be an integer in range [0, 255] or a multiple of 256 in range [256, 65280]
