// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
ldff1d  {z31.d}, p7/z, [sp, z31.d]  // 11000101-11011111-11111111-11111111
// CHECK: ldff1d  {z31.d}, p7/z, [sp, z31.d] // encoding: [0xff,0xff,0xdf,0xc5]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11000101-11011111-11111111-11111111
LDFF1D  {Z31.D}, P7/Z, [SP, Z31.D]  // 11000101-11011111-11111111-11111111
// CHECK: ldff1d  {z31.d}, p7/z, [sp, z31.d] // encoding: [0xff,0xff,0xdf,0xc5]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11000101-11011111-11111111-11111111
ldff1d  {z23.d}, p3/z, [x13, z8.d]  // 11000101-11001000-11101101-10110111
// CHECK: ldff1d  {z23.d}, p3/z, [x13, z8.d] // encoding: [0xb7,0xed,0xc8,0xc5]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11000101-11001000-11101101-10110111
LDFF1D  {Z23.D}, P3/Z, [X13, Z8.D]  // 11000101-11001000-11101101-10110111
// CHECK: ldff1d  {z23.d}, p3/z, [x13, z8.d] // encoding: [0xb7,0xed,0xc8,0xc5]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11000101-11001000-11101101-10110111
ldff1d  {z21.d}, p5/z, [x10, z21.d]  // 11000101-11010101-11110101-01010101
// CHECK: ldff1d  {z21.d}, p5/z, [x10, z21.d] // encoding: [0x55,0xf5,0xd5,0xc5]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11000101-11010101-11110101-01010101
LDFF1D  {Z21.D}, P5/Z, [X10, Z21.D]  // 11000101-11010101-11110101-01010101
// CHECK: ldff1d  {z21.d}, p5/z, [x10, z21.d] // encoding: [0x55,0xf5,0xd5,0xc5]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11000101-11010101-11110101-01010101
ldff1d  {z0.d}, p0/z, [x0, z0.d]  // 11000101-11000000-11100000-00000000
// CHECK: ldff1d  {z0.d}, p0/z, [x0, z0.d] // encoding: [0x00,0xe0,0xc0,0xc5]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11000101-11000000-11100000-00000000
LDFF1D  {Z0.D}, P0/Z, [X0, Z0.D]  // 11000101-11000000-11100000-00000000
// CHECK: ldff1d  {z0.d}, p0/z, [x0, z0.d] // encoding: [0x00,0xe0,0xc0,0xc5]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11000101-11000000-11100000-00000000
