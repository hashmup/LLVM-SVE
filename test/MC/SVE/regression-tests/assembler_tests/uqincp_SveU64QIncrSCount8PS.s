// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
uqincp  xzr, p15.d  // 00100101-11101001-10001101-11111111
// CHECK: uqincp  xzr, p15.d // encoding: [0xff,0x8d,0xe9,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11101001-10001101-11111111
UQINCP  XZR, P15.D  // 00100101-11101001-10001101-11111111
// CHECK: uqincp  xzr, p15.d // encoding: [0xff,0x8d,0xe9,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11101001-10001101-11111111
uqincp  x23, p13.d  // 00100101-11101001-10001101-10110111
// CHECK: uqincp  x23, p13.d // encoding: [0xb7,0x8d,0xe9,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11101001-10001101-10110111
UQINCP  X23, P13.D  // 00100101-11101001-10001101-10110111
// CHECK: uqincp  x23, p13.d // encoding: [0xb7,0x8d,0xe9,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11101001-10001101-10110111
uqincp  x21, p10.d  // 00100101-11101001-10001101-01010101
// CHECK: uqincp  x21, p10.d // encoding: [0x55,0x8d,0xe9,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11101001-10001101-01010101
UQINCP  X21, P10.D  // 00100101-11101001-10001101-01010101
// CHECK: uqincp  x21, p10.d // encoding: [0x55,0x8d,0xe9,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11101001-10001101-01010101
uqincp  x0, p0.d  // 00100101-11101001-10001100-00000000
// CHECK: uqincp  x0, p0.d // encoding: [0x00,0x8c,0xe9,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11101001-10001100-00000000
UQINCP  X0, P0.D  // 00100101-11101001-10001100-00000000
// CHECK: uqincp  x0, p0.d // encoding: [0x00,0x8c,0xe9,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11101001-10001100-00000000
