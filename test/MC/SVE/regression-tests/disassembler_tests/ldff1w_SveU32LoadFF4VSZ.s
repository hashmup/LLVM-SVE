# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0xff,0x7f,0x1f,0x85
# CHECK: ldff1w  {z31.s}, p7/z, [sp, z31.s, uxtw] // encoding: [0xff,0x7f,0x1f,0x85]
# CHECK-ERROR-NOT: ldff1w  {z31.s}, p7/z, [sp, z31.s, uxtw] 
0x00,0x60,0x00,0x85
# CHECK: ldff1w  {z0.s}, p0/z, [x0, z0.s, uxtw] // encoding: [0x00,0x60,0x00,0x85]
# CHECK-ERROR-NOT: ldff1w  {z0.s}, p0/z, [x0, z0.s, uxtw] 
0x55,0x75,0x15,0x85
# CHECK: ldff1w  {z21.s}, p5/z, [x10, z21.s, uxtw] // encoding: [0x55,0x75,0x15,0x85]
# CHECK-ERROR-NOT: ldff1w  {z21.s}, p5/z, [x10, z21.s, uxtw] 
0xb7,0x6d,0x08,0x85
# CHECK: ldff1w  {z23.s}, p3/z, [x13, z8.s, uxtw] // encoding: [0xb7,0x6d,0x08,0x85]
# CHECK-ERROR-NOT: ldff1w  {z23.s}, p3/z, [x13, z8.s, uxtw] 
