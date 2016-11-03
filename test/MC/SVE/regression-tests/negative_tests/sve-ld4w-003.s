// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU32E4Load4SIZ
// Immediate out of lower bound [-32, 28].
ld4w {z14.s, z15.s, z16.s, z17.s}, p6/z, [x25, #-33, MUL VL]
// CHECK: error: index must be a multiple of 4 in range [-32, 28].
