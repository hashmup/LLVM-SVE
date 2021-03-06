# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0x55,0x39,0x74,0x05
# CHECK: insr    z21.h, h10 // encoding: [0x55,0x39,0x74,0x05]
# CHECK-ERROR-NOT: insr    z21.h, h10 
0xb7,0x39,0x74,0x05
# CHECK: insr    z23.h, h13 // encoding: [0xb7,0x39,0x74,0x05]
# CHECK-ERROR-NOT: insr    z23.h, h13 
0x00,0x38,0x74,0x05
# CHECK: insr    z0.h, h0 // encoding: [0x00,0x38,0x74,0x05]
# CHECK-ERROR-NOT: insr    z0.h, h0 
0xff,0x3b,0x74,0x05
# CHECK: insr    z31.h, h31 // encoding: [0xff,0x3b,0x74,0x05]
# CHECK-ERROR-NOT: insr    z31.h, h31 
