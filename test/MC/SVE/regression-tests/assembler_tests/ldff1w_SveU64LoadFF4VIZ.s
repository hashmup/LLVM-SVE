// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
ldff1w  {z31.d}, p7/z, [z31.d, #124]  // 11000101-00111111-11111111-11111111
// CHECK: ldff1w  {z31.d}, p7/z, [z31.d, #124] // encoding: [0xff,0xff,0x3f,0xc5]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11000101-00111111-11111111-11111111
LDFF1W  {Z31.D}, P7/Z, [Z31.D, #124]  // 11000101-00111111-11111111-11111111
// CHECK: ldff1w  {z31.d}, p7/z, [z31.d, #124] // encoding: [0xff,0xff,0x3f,0xc5]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11000101-00111111-11111111-11111111
ldff1w  {z21.d}, p5/z, [z10.d, #84]  // 11000101-00110101-11110101-01010101
// CHECK: ldff1w  {z21.d}, p5/z, [z10.d, #84] // encoding: [0x55,0xf5,0x35,0xc5]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11000101-00110101-11110101-01010101
LDFF1W  {Z21.D}, P5/Z, [Z10.D, #84]  // 11000101-00110101-11110101-01010101
// CHECK: ldff1w  {z21.d}, p5/z, [z10.d, #84] // encoding: [0x55,0xf5,0x35,0xc5]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11000101-00110101-11110101-01010101
ldff1w  {z23.d}, p3/z, [z13.d, #32]  // 11000101-00101000-11101101-10110111
// CHECK: ldff1w  {z23.d}, p3/z, [z13.d, #32] // encoding: [0xb7,0xed,0x28,0xc5]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11000101-00101000-11101101-10110111
LDFF1W  {Z23.D}, P3/Z, [Z13.D, #32]  // 11000101-00101000-11101101-10110111
// CHECK: ldff1w  {z23.d}, p3/z, [z13.d, #32] // encoding: [0xb7,0xed,0x28,0xc5]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11000101-00101000-11101101-10110111
ldff1w  {z0.d}, p0/z, [z0.d]  // 11000101-00100000-11100000-00000000
// CHECK: ldff1w  {z0.d}, p0/z, [z0.d] // encoding: [0x00,0xe0,0x20,0xc5]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11000101-00100000-11100000-00000000
LDFF1W  {Z0.D}, P0/Z, [Z0.D]  // 11000101-00100000-11100000-00000000
// CHECK: ldff1w  {z0.d}, p0/z, [z0.d] // encoding: [0x00,0xe0,0x20,0xc5]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11000101-00100000-11100000-00000000
