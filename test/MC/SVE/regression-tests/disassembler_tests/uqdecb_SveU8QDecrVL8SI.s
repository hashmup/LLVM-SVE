# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0xb7,0xfd,0x38,0x04
# CHECK: uqdecb  x23, vl256, mul #9 // encoding: [0xb7,0xfd,0x38,0x04]
# CHECK-ERROR-NOT: uqdecb  x23, vl256, mul #9 
0x00,0xfc,0x30,0x04
# CHECK: uqdecb  x0, pow2 // encoding: [0x00,0xfc,0x30,0x04]
# CHECK-ERROR-NOT: uqdecb  x0, pow2 
0xff,0xff,0x3f,0x04
# CHECK: uqdecb  xzr, all, mul #16 // encoding: [0xff,0xff,0x3f,0x04]
# CHECK-ERROR-NOT: uqdecb  xzr, all, mul #16 
0x55,0xfd,0x35,0x04
# CHECK: uqdecb  x21, vl32, mul #6 // encoding: [0x55,0xfd,0x35,0x04]
# CHECK-ERROR-NOT: uqdecb  x21, vl32, mul #6 
