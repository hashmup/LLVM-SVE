# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0x00,0xf8,0xf0,0x04
# CHECK: sqdecd  x0, pow2 // encoding: [0x00,0xf8,0xf0,0x04]
# CHECK-ERROR-NOT: sqdecd  x0, pow2 
0x55,0xf9,0xf5,0x04
# CHECK: sqdecd  x21, vl32, mul #6 // encoding: [0x55,0xf9,0xf5,0x04]
# CHECK-ERROR-NOT: sqdecd  x21, vl32, mul #6 
0xff,0xfb,0xff,0x04
# CHECK: sqdecd  xzr, all, mul #16 // encoding: [0xff,0xfb,0xff,0x04]
# CHECK-ERROR-NOT: sqdecd  xzr, all, mul #16 
0xb7,0xf9,0xf8,0x04
# CHECK: sqdecd  x23, vl256, mul #9 // encoding: [0xb7,0xf9,0xf8,0x04]
# CHECK-ERROR-NOT: sqdecd  x23, vl256, mul #9 
