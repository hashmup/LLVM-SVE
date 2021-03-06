# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0x00,0xc0,0x20,0x85
# CHECK: ld1w    {z0.s}, p0/z, [z0.s] // encoding: [0x00,0xc0,0x20,0x85]
# CHECK-ERROR-NOT: ld1w    {z0.s}, p0/z, [z0.s] 
0xb7,0xcd,0x28,0x85
# CHECK: ld1w    {z23.s}, p3/z, [z13.s, #32] // encoding: [0xb7,0xcd,0x28,0x85]
# CHECK-ERROR-NOT: ld1w    {z23.s}, p3/z, [z13.s, #32] 
0x55,0xd5,0x35,0x85
# CHECK: ld1w    {z21.s}, p5/z, [z10.s, #84] // encoding: [0x55,0xd5,0x35,0x85]
# CHECK-ERROR-NOT: ld1w    {z21.s}, p5/z, [z10.s, #84] 
0xff,0xdf,0x3f,0x85
# CHECK: ld1w    {z31.s}, p7/z, [z31.s, #124] // encoding: [0xff,0xdf,0x3f,0x85]
# CHECK-ERROR-NOT: ld1w    {z31.s}, p7/z, [z31.s, #124] 
