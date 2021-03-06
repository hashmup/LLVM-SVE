# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0x00,0xc0,0x60,0x04
# CHECK: sqinch  z0.h, pow2 // encoding: [0x00,0xc0,0x60,0x04]
# CHECK-ERROR-NOT: sqinch  z0.h, pow2 
0xff,0xc3,0x6f,0x04
# CHECK: sqinch  z31.h, all, mul #16 // encoding: [0xff,0xc3,0x6f,0x04]
# CHECK-ERROR-NOT: sqinch  z31.h, all, mul #16 
0x55,0xc1,0x65,0x04
# CHECK: sqinch  z21.h, vl32, mul #6 // encoding: [0x55,0xc1,0x65,0x04]
# CHECK-ERROR-NOT: sqinch  z21.h, vl32, mul #6 
0xb7,0xc1,0x68,0x04
# CHECK: sqinch  z23.h, vl256, mul #9 // encoding: [0xb7,0xc1,0x68,0x04]
# CHECK-ERROR-NOT: sqinch  z23.h, vl256, mul #9 
