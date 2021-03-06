# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0xb7,0xad,0x48,0xc5
# CHECK: ldff1sw {z23.d}, p3/z, [x13, z8.d] // encoding: [0xb7,0xad,0x48,0xc5]
# CHECK-ERROR-NOT: ldff1sw {z23.d}, p3/z, [x13, z8.d] 
0xff,0xbf,0x5f,0xc5
# CHECK: ldff1sw {z31.d}, p7/z, [sp, z31.d] // encoding: [0xff,0xbf,0x5f,0xc5]
# CHECK-ERROR-NOT: ldff1sw {z31.d}, p7/z, [sp, z31.d] 
0x00,0xa0,0x40,0xc5
# CHECK: ldff1sw {z0.d}, p0/z, [x0, z0.d] // encoding: [0x00,0xa0,0x40,0xc5]
# CHECK-ERROR-NOT: ldff1sw {z0.d}, p0/z, [x0, z0.d] 
0x55,0xb5,0x55,0xc5
# CHECK: ldff1sw {z21.d}, p5/z, [x10, z21.d] // encoding: [0x55,0xb5,0x55,0xc5]
# CHECK-ERROR-NOT: ldff1sw {z21.d}, p5/z, [x10, z21.d] 
