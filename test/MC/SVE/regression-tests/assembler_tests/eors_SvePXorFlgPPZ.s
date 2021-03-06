// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
eors    p0.b, p0/z, p0.b, p0.b  // 00100101-01000000-01000010-00000000
// CHECK: nots    p0.b, p0/z, p0.b // encoding: [0x00,0x42,0x40,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-01000000-01000010-00000000
EORS    P0.B, P0/Z, P0.B, P0.B  // 00100101-01000000-01000010-00000000
// CHECK: nots    p0.b, p0/z, p0.b // encoding: [0x00,0x42,0x40,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-01000000-01000010-00000000
eors    p7.b, p11/z, p13.b, p8.b  // 00100101-01001000-01101111-10100111
// CHECK: eors    p7.b, p11/z, p13.b, p8.b // encoding: [0xa7,0x6f,0x48,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-01001000-01101111-10100111
EORS    P7.B, P11/Z, P13.B, P8.B  // 00100101-01001000-01101111-10100111
// CHECK: eors    p7.b, p11/z, p13.b, p8.b // encoding: [0xa7,0x6f,0x48,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-01001000-01101111-10100111
eors    p15.b, p15/z, p15.b, p15.b  // 00100101-01001111-01111111-11101111
// CHECK: nots    p15.b, p15/z, p15.b // encoding: [0xef,0x7f,0x4f,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-01001111-01111111-11101111
EORS    P15.B, P15/Z, P15.B, P15.B  // 00100101-01001111-01111111-11101111
// CHECK: nots    p15.b, p15/z, p15.b // encoding: [0xef,0x7f,0x4f,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-01001111-01111111-11101111
eors    p5.b, p5/z, p10.b, p5.b  // 00100101-01000101-01010111-01000101
// CHECK: nots    p5.b, p5/z, p10.b // encoding: [0x45,0x57,0x45,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-01000101-01010111-01000101
EORS    P5.B, P5/Z, P10.B, P5.B  // 00100101-01000101-01010111-01000101
// CHECK: nots    p5.b, p5/z, p10.b // encoding: [0x45,0x57,0x45,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-01000101-01010111-01000101
