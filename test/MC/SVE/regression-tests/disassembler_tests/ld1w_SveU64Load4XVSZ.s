# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0xb7,0x4d,0x48,0xc5
# CHECK: ld1w    {z23.d}, p3/z, [x13, z8.d, sxtw] // encoding: [0xb7,0x4d,0x48,0xc5]
# CHECK-ERROR-NOT: ld1w    {z23.d}, p3/z, [x13, z8.d, sxtw] 
0xff,0x5f,0x5f,0xc5
# CHECK: ld1w    {z31.d}, p7/z, [sp, z31.d, sxtw] // encoding: [0xff,0x5f,0x5f,0xc5]
# CHECK-ERROR-NOT: ld1w    {z31.d}, p7/z, [sp, z31.d, sxtw] 
0x55,0x55,0x55,0xc5
# CHECK: ld1w    {z21.d}, p5/z, [x10, z21.d, sxtw] // encoding: [0x55,0x55,0x55,0xc5]
# CHECK-ERROR-NOT: ld1w    {z21.d}, p5/z, [x10, z21.d, sxtw] 
0x00,0x40,0x40,0xc5
# CHECK: ld1w    {z0.d}, p0/z, [x0, z0.d, sxtw] // encoding: [0x00,0x40,0x40,0xc5]
# CHECK-ERROR-NOT: ld1w    {z0.d}, p0/z, [x0, z0.d, sxtw] 
