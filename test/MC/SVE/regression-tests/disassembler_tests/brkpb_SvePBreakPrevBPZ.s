# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0x55,0xd5,0x05,0x25
# CHECK: brkpb   p5.b, p5/z, p10.b, p5.b // encoding: [0x55,0xd5,0x05,0x25]
# CHECK-ERROR-NOT: brkpb   p5.b, p5/z, p10.b, p5.b 
0xb7,0xed,0x08,0x25
# CHECK: brkpb   p7.b, p11/z, p13.b, p8.b // encoding: [0xb7,0xed,0x08,0x25]
# CHECK-ERROR-NOT: brkpb   p7.b, p11/z, p13.b, p8.b 
0x10,0xc0,0x00,0x25
# CHECK: brkpb   p0.b, p0/z, p0.b, p0.b // encoding: [0x10,0xc0,0x00,0x25]
# CHECK-ERROR-NOT: brkpb   p0.b, p0/z, p0.b, p0.b 
0xff,0xfd,0x0f,0x25
# CHECK: brkpb   p15.b, p15/z, p15.b, p15.b // encoding: [0xff,0xfd,0x0f,0x25]
# CHECK-ERROR-NOT: brkpb   p15.b, p15/z, p15.b, p15.b 
