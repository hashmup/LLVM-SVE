; RUN: llc -mtriple=aarch64-linux-gnu -mattr=+sve < %s | FileCheck %s

;
; FABD
;

define <n x 4 x float> @fabd_s(<n x 4 x i1> %pg, <n x 4 x float> %a, <n x 4 x float> %b) {
; CHECK-LABEL: fabd_s:
; CHECK: fabd z0.s, p0/m, z0.s, z1.s
; CHECK-NEXT: ret
  %out = call <n x 4 x float> @llvm.aarch64.sve.abd.nxv4f32(<n x 4 x i1> %pg,
                                                            <n x 4 x float> %a,
                                                            <n x 4 x float> %b)
  ret <n x 4 x float> %out
}

define <n x 2 x double> @fabd_d(<n x 2 x i1> %pg, <n x 2 x double> %a, <n x 2 x double> %b) {
; CHECK-LABEL: fabd_d:
; CHECK: fabd z0.d, p0/m, z0.d, z1.d
; CHECK-NEXT: ret
  %out = call <n x 2 x double> @llvm.aarch64.sve.abd.nxv2f64(<n x 2 x i1> %pg,
                                                             <n x 2 x double> %a,
                                                             <n x 2 x double> %b)
  ret <n x 2 x double> %out
}

;
; FABS
;

define <n x 4 x float> @fabs_s(<n x 4 x float> %a, <n x 4 x i1> %pg, <n x 4 x float> %b) {
; CHECK-LABEL: fabs_s:
; CHECK: fabs z0.s, p0/m, z1.s
; CHECK-NEXT: ret
  %out = call <n x 4 x float> @llvm.aarch64.sve.abs.nxv4f32(<n x 4 x float> %a,
                                                            <n x 4 x i1> %pg,
                                                            <n x 4 x float> %b)
  ret <n x 4 x float> %out
}

define <n x 2 x double> @fabs_d(<n x 2 x double> %a, <n x 2 x i1> %pg, <n x 2 x double> %b) {
; CHECK-LABEL: fabs_d:
; CHECK: fabs z0.d, p0/m, z1.d
; CHECK-NEXT: ret
  %out = call <n x 2 x double> @llvm.aarch64.sve.abs.nxv2f64(<n x 2 x double> %a,
                                                             <n x 2 x i1> %pg,
                                                             <n x 2 x double> %b)
  ret <n x 2 x double> %out
}

;
; FADD
;

define <n x 4 x float> @fadd_s(<n x 4 x i1> %pg, <n x 4 x float> %a, <n x 4 x float> %b) {
; CHECK-LABEL: fadd_s:
; CHECK: fadd z0.s, p0/m, z0.s, z1.s
; CHECK-NEXT: ret
  %out = call <n x 4 x float> @llvm.aarch64.sve.add.nxv4f32(<n x 4 x i1> %pg,
                                                            <n x 4 x float> %a,
                                                            <n x 4 x float> %b)
  ret <n x 4 x float> %out
}

define <n x 2 x double> @fadd_d(<n x 2 x i1> %pg, <n x 2 x double> %a, <n x 2 x double> %b) {
; CHECK-LABEL: fadd_d:
; CHECK: fadd z0.d, p0/m, z0.d, z1.d
; CHECK-NEXT: ret
  %out = call <n x 2 x double> @llvm.aarch64.sve.add.nxv2f64(<n x 2 x i1> %pg,
                                                             <n x 2 x double> %a,
                                                             <n x 2 x double> %b)
  ret <n x 2 x double> %out
}

;
; FDIV
;

define <n x 4 x float> @fdiv_s(<n x 4 x i1> %pg, <n x 4 x float> %a, <n x 4 x float> %b) {
; CHECK-LABEL: fdiv_s:
; CHECK: fdiv z0.s, p0/m, z0.s, z1.s
; CHECK-NEXT: ret
  %out = call <n x 4 x float> @llvm.aarch64.sve.div.nxv4f32(<n x 4 x i1> %pg,
                                                            <n x 4 x float> %a,
                                                            <n x 4 x float> %b)
  ret <n x 4 x float> %out
}

define <n x 2 x double> @fdiv_d(<n x 2 x i1> %pg, <n x 2 x double> %a, <n x 2 x double> %b) {
; CHECK-LABEL: fdiv_d:
; CHECK: fdiv z0.d, p0/m, z0.d, z1.d
; CHECK-NEXT: ret
  %out = call <n x 2 x double> @llvm.aarch64.sve.div.nxv2f64(<n x 2 x i1> %pg,
                                                             <n x 2 x double> %a,
                                                             <n x 2 x double> %b)
  ret <n x 2 x double> %out
}

;
; FDIVR
;

define <n x 4 x float> @fdivr_s(<n x 4 x i1> %pg, <n x 4 x float> %a, <n x 4 x float> %b) {
; CHECK-LABEL: fdivr_s:
; CHECK: fdivr z0.s, p0/m, z0.s, z1.s
; CHECK-NEXT: ret
  %out = call <n x 4 x float> @llvm.aarch64.sve.divr.nxv4f32(<n x 4 x i1> %pg,
                                                             <n x 4 x float> %a,
                                                             <n x 4 x float> %b)
  ret <n x 4 x float> %out
}

define <n x 2 x double> @fdivr_d(<n x 2 x i1> %pg, <n x 2 x double> %a, <n x 2 x double> %b) {
; CHECK-LABEL: fdivr_d:
; CHECK: fdivr z0.d, p0/m, z0.d, z1.d
; CHECK-NEXT: ret
  %out = call <n x 2 x double> @llvm.aarch64.sve.divr.nxv2f64(<n x 2 x i1> %pg,
                                                              <n x 2 x double> %a,
                                                              <n x 2 x double> %b)
  ret <n x 2 x double> %out
}

;
; FEXPA
;

define <n x 4 x float> @fexpa_s(<n x 4 x i32> %a) {
; CHECK-LABEL: fexpa_s:
; CHECK: fexpa z0.s, z0.s
; CHECK-NEXT: ret
  %out = call <n x 4 x float> @llvm.aarch64.sve.expa.nxv4f32(<n x 4 x i32> %a)
  ret <n x 4 x float> %out
}

define <n x 2 x double> @fexpa_d(<n x 2 x i1> %pg, <n x 2 x i64> %a) {
; CHECK-LABEL: fexpa_d:
; CHECK: fexpa z0.d, z0.d
; CHECK-NEXT: ret
  %out = call <n x 2 x double> @llvm.aarch64.sve.expa.nxv2f64(<n x 2 x i64> %a)
  ret <n x 2 x double> %out
}

;
; FMAD
;

define <n x 4 x float> @fmad_s(<n x 4 x i1> %pg, <n x 4 x float> %a, <n x 4 x float> %b, <n x 4 x float> %c) {
; CHECK-LABEL: fmad_s:
; CHECK: fmad z0.s, p0/m, z1.s, z2.s
; CHECK-NEXT: ret
  %out = call <n x 4 x float> @llvm.aarch64.sve.mad.nxv4f32(<n x 4 x i1> %pg,
                                                            <n x 4 x float> %a,
                                                            <n x 4 x float> %b,
                                                            <n x 4 x float> %c)
  ret <n x 4 x float> %out
}

define <n x 2 x double> @fmad_d(<n x 2 x i1> %pg, <n x 2 x double> %a, <n x 2 x double> %b, <n x 2 x double> %c) {
; CHECK-LABEL: fmad_d:
; CHECK: fmad z0.d, p0/m, z1.d, z2.d
; CHECK-NEXT: ret
  %out = call <n x 2 x double> @llvm.aarch64.sve.mad.nxv2f64(<n x 2 x i1> %pg,
                                                             <n x 2 x double> %a,
                                                             <n x 2 x double> %b,
                                                             <n x 2 x double> %c)
  ret <n x 2 x double> %out
}

;
; FMAX
;

define <n x 4 x float> @fmax_s(<n x 4 x i1> %pg, <n x 4 x float> %a, <n x 4 x float> %b) {
; CHECK-LABEL: fmax_s:
; CHECK: fmax z0.s, p0/m, z0.s, z1.s
; CHECK-NEXT: ret
  %out = call <n x 4 x float> @llvm.aarch64.sve.max.nxv4f32(<n x 4 x i1> %pg,
                                                            <n x 4 x float> %a,
                                                            <n x 4 x float> %b)
  ret <n x 4 x float> %out
}

define <n x 2 x double> @fmax_d(<n x 2 x i1> %pg, <n x 2 x double> %a, <n x 2 x double> %b) {
; CHECK-LABEL: fmax_d:
; CHECK: fmax z0.d, p0/m, z0.d, z1.d
; CHECK-NEXT: ret
  %out = call <n x 2 x double> @llvm.aarch64.sve.max.nxv2f64(<n x 2 x i1> %pg,
                                                             <n x 2 x double> %a,
                                                             <n x 2 x double> %b)
  ret <n x 2 x double> %out
}

;
; FMAXNM
;

define <n x 4 x float> @fmaxnm_s(<n x 4 x i1> %pg, <n x 4 x float> %a, <n x 4 x float> %b) {
; CHECK-LABEL: fmaxnm_s:
; CHECK: fmaxnm z0.s, p0/m, z0.s, z1.s
; CHECK-NEXT: ret
  %out = call <n x 4 x float> @llvm.aarch64.sve.maxnm.nxv4f32(<n x 4 x i1> %pg,
                                                              <n x 4 x float> %a,
                                                              <n x 4 x float> %b)
  ret <n x 4 x float> %out
}

define <n x 2 x double> @fmaxnm_d(<n x 2 x i1> %pg, <n x 2 x double> %a, <n x 2 x double> %b) {
; CHECK-LABEL: fmaxnm_d:
; CHECK: fmaxnm z0.d, p0/m, z0.d, z1.d
; CHECK-NEXT: ret
  %out = call <n x 2 x double> @llvm.aarch64.sve.maxnm.nxv2f64(<n x 2 x i1> %pg,
                                                               <n x 2 x double> %a,
                                                               <n x 2 x double> %b)
  ret <n x 2 x double> %out
}

;
; FMIN
;

define <n x 4 x float> @fmin_s(<n x 4 x i1> %pg, <n x 4 x float> %a, <n x 4 x float> %b) {
; CHECK-LABEL: fmin_s:
; CHECK: fmin z0.s, p0/m, z0.s, z1.s
; CHECK-NEXT: ret
  %out = call <n x 4 x float> @llvm.aarch64.sve.min.nxv4f32(<n x 4 x i1> %pg,
                                                            <n x 4 x float> %a,
                                                            <n x 4 x float> %b)
  ret <n x 4 x float> %out
}

define <n x 2 x double> @fmin_d(<n x 2 x i1> %pg, <n x 2 x double> %a, <n x 2 x double> %b) {
; CHECK-LABEL: fmin_d:
; CHECK: fmin z0.d, p0/m, z0.d, z1.d
; CHECK-NEXT: ret
  %out = call <n x 2 x double> @llvm.aarch64.sve.min.nxv2f64(<n x 2 x i1> %pg,
                                                             <n x 2 x double> %a,
                                                             <n x 2 x double> %b)
  ret <n x 2 x double> %out
}

;
; FMINNM
;

define <n x 4 x float> @fminnm_s(<n x 4 x i1> %pg, <n x 4 x float> %a, <n x 4 x float> %b) {
; CHECK-LABEL: fminnm_s:
; CHECK: fminnm z0.s, p0/m, z0.s, z1.s
; CHECK-NEXT: ret
  %out = call <n x 4 x float> @llvm.aarch64.sve.minnm.nxv4f32(<n x 4 x i1> %pg,
                                                              <n x 4 x float> %a,
                                                              <n x 4 x float> %b)
  ret <n x 4 x float> %out
}

define <n x 2 x double> @fminnm_d(<n x 2 x i1> %pg, <n x 2 x double> %a, <n x 2 x double> %b) {
; CHECK-LABEL: fminnm_d:
; CHECK: fminnm z0.d, p0/m, z0.d, z1.d
; CHECK-NEXT: ret
  %out = call <n x 2 x double> @llvm.aarch64.sve.minnm.nxv2f64(<n x 2 x i1> %pg,
                                                               <n x 2 x double> %a,
                                                               <n x 2 x double> %b)
  ret <n x 2 x double> %out
}

;
; FMLA
;

define <n x 4 x float> @fmla_s(<n x 4 x i1> %pg, <n x 4 x float> %a, <n x 4 x float> %b, <n x 4 x float> %c) {
; CHECK-LABEL: fmla_s:
; CHECK: fmla z0.s, p0/m, z1.s, z2.s
; CHECK-NEXT: ret
  %out = call <n x 4 x float> @llvm.aarch64.sve.mla.nxv4f32(<n x 4 x i1> %pg,
                                                            <n x 4 x float> %a,
                                                            <n x 4 x float> %b,
                                                            <n x 4 x float> %c)
  ret <n x 4 x float> %out
}

define <n x 2 x double> @fmla_d(<n x 2 x i1> %pg, <n x 2 x double> %a, <n x 2 x double> %b, <n x 2 x double> %c) {
; CHECK-LABEL: fmla_d:
; CHECK: fmla z0.d, p0/m, z1.d, z2.d
; CHECK-NEXT: ret
  %out = call <n x 2 x double> @llvm.aarch64.sve.mla.nxv2f64(<n x 2 x i1> %pg,
                                                             <n x 2 x double> %a,
                                                             <n x 2 x double> %b,
                                                             <n x 2 x double> %c)
  ret <n x 2 x double> %out
}

;
; FMLS
;

define <n x 4 x float> @fmls_s(<n x 4 x i1> %pg, <n x 4 x float> %a, <n x 4 x float> %b, <n x 4 x float> %c) {
; CHECK-LABEL: fmls_s:
; CHECK: fmls z0.s, p0/m, z1.s, z2.s
; CHECK-NEXT: ret
  %out = call <n x 4 x float> @llvm.aarch64.sve.mls.nxv4f32(<n x 4 x i1> %pg,
                                                            <n x 4 x float> %a,
                                                            <n x 4 x float> %b,
                                                            <n x 4 x float> %c)
  ret <n x 4 x float> %out
}

define <n x 2 x double> @fmls_d(<n x 2 x i1> %pg, <n x 2 x double> %a, <n x 2 x double> %b, <n x 2 x double> %c) {
; CHECK-LABEL: fmls_d:
; CHECK: fmls z0.d, p0/m, z1.d, z2.d
; CHECK-NEXT: ret
  %out = call <n x 2 x double> @llvm.aarch64.sve.mls.nxv2f64(<n x 2 x i1> %pg,
                                                             <n x 2 x double> %a,
                                                             <n x 2 x double> %b,
                                                             <n x 2 x double> %c)
  ret <n x 2 x double> %out
}

;
; FMSB
;

define <n x 4 x float> @fmsb_s(<n x 4 x i1> %pg, <n x 4 x float> %a, <n x 4 x float> %b, <n x 4 x float> %c) {
; CHECK-LABEL: fmsb_s:
; CHECK: fmsb z0.s, p0/m, z1.s, z2.s
; CHECK-NEXT: ret
  %out = call <n x 4 x float> @llvm.aarch64.sve.msb.nxv4f32(<n x 4 x i1> %pg,
                                                            <n x 4 x float> %a,
                                                            <n x 4 x float> %b,
                                                            <n x 4 x float> %c)
  ret <n x 4 x float> %out
}

define <n x 2 x double> @fmsb_d(<n x 2 x i1> %pg, <n x 2 x double> %a, <n x 2 x double> %b, <n x 2 x double> %c) {
; CHECK-LABEL: fmsb_d:
; CHECK: fmsb z0.d, p0/m, z1.d, z2.d
; CHECK-NEXT: ret
  %out = call <n x 2 x double> @llvm.aarch64.sve.msb.nxv2f64(<n x 2 x i1> %pg,
                                                             <n x 2 x double> %a,
                                                             <n x 2 x double> %b,
                                                             <n x 2 x double> %c)
  ret <n x 2 x double> %out
}

;
; FMUL
;

define <n x 4 x float> @fmul_s(<n x 4 x i1> %pg, <n x 4 x float> %a, <n x 4 x float> %b) {
; CHECK-LABEL: fmul_s:
; CHECK: fmul z0.s, p0/m, z0.s, z1.s
; CHECK-NEXT: ret
  %out = call <n x 4 x float> @llvm.aarch64.sve.mul.nxv4f32(<n x 4 x i1> %pg,
                                                            <n x 4 x float> %a,
                                                            <n x 4 x float> %b)
  ret <n x 4 x float> %out
}

define <n x 2 x double> @fmul_d(<n x 2 x i1> %pg, <n x 2 x double> %a, <n x 2 x double> %b) {
; CHECK-LABEL: fmul_d:
; CHECK: fmul z0.d, p0/m, z0.d, z1.d
; CHECK-NEXT: ret
  %out = call <n x 2 x double> @llvm.aarch64.sve.mul.nxv2f64(<n x 2 x i1> %pg,
                                                             <n x 2 x double> %a,
                                                             <n x 2 x double> %b)
  ret <n x 2 x double> %out
}

;
; FMULX
;

define <n x 4 x float> @fmulx_s(<n x 4 x i1> %pg, <n x 4 x float> %a, <n x 4 x float> %b) {
; CHECK-LABEL: fmulx_s:
; CHECK: fmulx z0.s, p0/m, z0.s, z1.s
; CHECK-NEXT: ret
  %out = call <n x 4 x float> @llvm.aarch64.sve.mulx.nxv4f32(<n x 4 x i1> %pg,
                                                             <n x 4 x float> %a,
                                                             <n x 4 x float> %b)
  ret <n x 4 x float> %out
}

define <n x 2 x double> @fmulx_d(<n x 2 x i1> %pg, <n x 2 x double> %a, <n x 2 x double> %b) {
; CHECK-LABEL: fmulx_d:
; CHECK: fmulx z0.d, p0/m, z0.d, z1.d
; CHECK-NEXT: ret
  %out = call <n x 2 x double> @llvm.aarch64.sve.mulx.nxv2f64(<n x 2 x i1> %pg,
                                                              <n x 2 x double> %a,
                                                              <n x 2 x double> %b)
  ret <n x 2 x double> %out
}

;
; FNEG
;

define <n x 4 x float> @fneg_s(<n x 4 x float> %a, <n x 4 x i1> %pg, <n x 4 x float> %b) {
; CHECK-LABEL: fneg_s:
; CHECK: fneg z0.s, p0/m, z1.s
; CHECK-NEXT: ret
  %out = call <n x 4 x float> @llvm.aarch64.sve.neg.nxv4f32(<n x 4 x float> %a,
                                                            <n x 4 x i1> %pg,
                                                            <n x 4 x float> %b)
  ret <n x 4 x float> %out
}

define <n x 2 x double> @fneg_d(<n x 2 x double> %a, <n x 2 x i1> %pg, <n x 2 x double> %b) {
; CHECK-LABEL: fneg_d:
; CHECK: fneg z0.d, p0/m, z1.d
; CHECK-NEXT: ret
  %out = call <n x 2 x double> @llvm.aarch64.sve.neg.nxv2f64(<n x 2 x double> %a,
                                                             <n x 2 x i1> %pg,
                                                             <n x 2 x double> %b)
  ret <n x 2 x double> %out
}

;
; FNMAD
;

define <n x 4 x float> @fnmad_s(<n x 4 x i1> %pg, <n x 4 x float> %a, <n x 4 x float> %b, <n x 4 x float> %c) {
; CHECK-LABEL: fnmad_s:
; CHECK: fnmad z0.s, p0/m, z1.s, z2.s
; CHECK-NEXT: ret
  %out = call <n x 4 x float> @llvm.aarch64.sve.nmad.nxv4f32(<n x 4 x i1> %pg,
                                                             <n x 4 x float> %a,
                                                             <n x 4 x float> %b,
                                                             <n x 4 x float> %c)
  ret <n x 4 x float> %out
}

define <n x 2 x double> @fnmad_d(<n x 2 x i1> %pg, <n x 2 x double> %a, <n x 2 x double> %b, <n x 2 x double> %c) {
; CHECK-LABEL: fnmad_d:
; CHECK: fnmad z0.d, p0/m, z1.d, z2.d
; CHECK-NEXT: ret
  %out = call <n x 2 x double> @llvm.aarch64.sve.nmad.nxv2f64(<n x 2 x i1> %pg,
                                                              <n x 2 x double> %a,
                                                              <n x 2 x double> %b,
                                                              <n x 2 x double> %c)
  ret <n x 2 x double> %out
}

;
; FNMLA
;

define <n x 4 x float> @fnmla_s(<n x 4 x i1> %pg, <n x 4 x float> %a, <n x 4 x float> %b, <n x 4 x float> %c) {
; CHECK-LABEL: fnmla_s:
; CHECK: fnmla z0.s, p0/m, z1.s, z2.s
; CHECK-NEXT: ret
  %out = call <n x 4 x float> @llvm.aarch64.sve.nmla.nxv4f32(<n x 4 x i1> %pg,
                                                             <n x 4 x float> %a,
                                                             <n x 4 x float> %b,
                                                             <n x 4 x float> %c)
  ret <n x 4 x float> %out
}

define <n x 2 x double> @fnmla_d(<n x 2 x i1> %pg, <n x 2 x double> %a, <n x 2 x double> %b, <n x 2 x double> %c) {
; CHECK-LABEL: fnmla_d:
; CHECK: fnmla z0.d, p0/m, z1.d, z2.d
; CHECK-NEXT: ret
  %out = call <n x 2 x double> @llvm.aarch64.sve.nmla.nxv2f64(<n x 2 x i1> %pg,
                                                              <n x 2 x double> %a,
                                                              <n x 2 x double> %b,
                                                              <n x 2 x double> %c)
  ret <n x 2 x double> %out
}

;
; FNMLS
;

define <n x 4 x float> @fnmls_s(<n x 4 x i1> %pg, <n x 4 x float> %a, <n x 4 x float> %b, <n x 4 x float> %c) {
; CHECK-LABEL: fnmls_s:
; CHECK: fnmls z0.s, p0/m, z1.s, z2.s
; CHECK-NEXT: ret
  %out = call <n x 4 x float> @llvm.aarch64.sve.nmls.nxv4f32(<n x 4 x i1> %pg,
                                                             <n x 4 x float> %a,
                                                             <n x 4 x float> %b,
                                                             <n x 4 x float> %c)
  ret <n x 4 x float> %out
}

define <n x 2 x double> @fnmls_d(<n x 2 x i1> %pg, <n x 2 x double> %a, <n x 2 x double> %b, <n x 2 x double> %c) {
; CHECK-LABEL: fnmls_d:
; CHECK: fnmls z0.d, p0/m, z1.d, z2.d
; CHECK-NEXT: ret
  %out = call <n x 2 x double> @llvm.aarch64.sve.nmls.nxv2f64(<n x 2 x i1> %pg,
                                                              <n x 2 x double> %a,
                                                              <n x 2 x double> %b,
                                                              <n x 2 x double> %c)
  ret <n x 2 x double> %out
}

;
; FNMSB
;

define <n x 4 x float> @fnmsb_s(<n x 4 x i1> %pg, <n x 4 x float> %a, <n x 4 x float> %b, <n x 4 x float> %c) {
; CHECK-LABEL: fnmsb_s:
; CHECK: fnmsb z0.s, p0/m, z1.s, z2.s
; CHECK-NEXT: ret
  %out = call <n x 4 x float> @llvm.aarch64.sve.nmsb.nxv4f32(<n x 4 x i1> %pg,
                                                             <n x 4 x float> %a,
                                                             <n x 4 x float> %b,
                                                             <n x 4 x float> %c)
  ret <n x 4 x float> %out
}

define <n x 2 x double> @fnmsb_d(<n x 2 x i1> %pg, <n x 2 x double> %a, <n x 2 x double> %b, <n x 2 x double> %c) {
; CHECK-LABEL: fnmsb_d:
; CHECK: fnmsb z0.d, p0/m, z1.d, z2.d
; CHECK-NEXT: ret
  %out = call <n x 2 x double> @llvm.aarch64.sve.nmsb.nxv2f64(<n x 2 x i1> %pg,
                                                              <n x 2 x double> %a,
                                                              <n x 2 x double> %b,
                                                              <n x 2 x double> %c)
  ret <n x 2 x double> %out
}

;
; FRECPE
;

define <n x 4 x float> @frecpe_s(<n x 4 x float> %a) {
; CHECK-LABEL: frecpe_s:
; CHECK: frecpe z0.s, z0.s
; CHECK-NEXT: ret
  %out = call <n x 4 x float> @llvm.aarch64.sve.recpe.nxv4f32(<n x 4 x float> %a)
  ret <n x 4 x float> %out
}

define <n x 2 x double> @frecpe_d(<n x 2 x i1> %pg, <n x 2 x double> %a) {
; CHECK-LABEL: frecpe_d:
; CHECK: frecpe z0.d, z0.d
; CHECK-NEXT: ret
  %out = call <n x 2 x double> @llvm.aarch64.sve.recpe.nxv2f64(<n x 2 x double> %a)
  ret <n x 2 x double> %out
}

;
; FRECPS
;

define <n x 4 x float> @frecps_s(<n x 4 x float> %a, <n x 4 x float> %b) {
; CHECK-LABEL: frecps_s:
; CHECK: frecps z0.s, z0.s, z1.s
; CHECK-NEXT: ret
  %out = call <n x 4 x float> @llvm.aarch64.sve.recps.nxv4f32(<n x 4 x float> %a,
                                                              <n x 4 x float> %b)
  ret <n x 4 x float> %out
}

define <n x 2 x double> @frecps_d(<n x 2 x double> %a, <n x 2 x double> %b) {
; CHECK-LABEL: frecps_d:
; CHECK: frecps z0.d, z0.d, z1.d
; CHECK-NEXT: ret
  %out = call <n x 2 x double> @llvm.aarch64.sve.recps.nxv2f64(<n x 2 x double> %a,
                                                               <n x 2 x double> %b)
  ret <n x 2 x double> %out
}

;
; FRECPX
;

define <n x 4 x float> @frecpx_s(<n x 4 x float> %a, <n x 4 x i1> %pg, <n x 4 x float> %b) {
; CHECK-LABEL: frecpx_s:
; CHECK: frecpx z0.s, p0/m, z1.s
; CHECK-NEXT: ret
  %out = call <n x 4 x float> @llvm.aarch64.sve.recpx.nxv4f32(<n x 4 x float> %a,
                                                              <n x 4 x i1> %pg,
                                                              <n x 4 x float> %b)
  ret <n x 4 x float> %out
}

define <n x 2 x double> @frecpx_d(<n x 2 x double> %a, <n x 2 x i1> %pg, <n x 2 x double> %b) {
; CHECK-LABEL: frecpx_d:
; CHECK: frecpx z0.d, p0/m, z1.d
; CHECK-NEXT: ret
  %out = call <n x 2 x double> @llvm.aarch64.sve.recpx.nxv2f64(<n x 2 x double> %a,
                                                               <n x 2 x i1> %pg,
                                                               <n x 2 x double> %b)
  ret <n x 2 x double> %out
}

;
; FRINTA
;

define <n x 4 x float> @frinta_s(<n x 4 x float> %a, <n x 4 x i1> %pg, <n x 4 x float> %b) {
; CHECK-LABEL: frinta_s:
; CHECK: frinta z0.s, p0/m, z1.s
; CHECK-NEXT: ret
  %out = call <n x 4 x float> @llvm.aarch64.sve.rinta.nxv4f32(<n x 4 x float> %a,
                                                              <n x 4 x i1> %pg,
                                                              <n x 4 x float> %b)
  ret <n x 4 x float> %out
}

define <n x 2 x double> @frinta_d(<n x 2 x double> %a, <n x 2 x i1> %pg, <n x 2 x double> %b) {
; CHECK-LABEL: frinta_d:
; CHECK: frinta z0.d, p0/m, z1.d
; CHECK-NEXT: ret
  %out = call <n x 2 x double> @llvm.aarch64.sve.rinta.nxv2f64(<n x 2 x double> %a,
                                                               <n x 2 x i1> %pg,
                                                               <n x 2 x double> %b)
  ret <n x 2 x double> %out
}

;
; FRINTI
;

define <n x 4 x float> @frinti_s(<n x 4 x float> %a, <n x 4 x i1> %pg, <n x 4 x float> %b) {
; CHECK-LABEL: frinti_s:
; CHECK: frinti z0.s, p0/m, z1.s
; CHECK-NEXT: ret
  %out = call <n x 4 x float> @llvm.aarch64.sve.rinti.nxv4f32(<n x 4 x float> %a,
                                                              <n x 4 x i1> %pg,
                                                              <n x 4 x float> %b)
  ret <n x 4 x float> %out
}

define <n x 2 x double> @frinti_d(<n x 2 x double> %a, <n x 2 x i1> %pg, <n x 2 x double> %b) {
; CHECK-LABEL: frinti_d:
; CHECK: frinti z0.d, p0/m, z1.d
; CHECK-NEXT: ret
  %out = call <n x 2 x double> @llvm.aarch64.sve.rinti.nxv2f64(<n x 2 x double> %a,
                                                               <n x 2 x i1> %pg,
                                                               <n x 2 x double> %b)
  ret <n x 2 x double> %out
}

;
; FRINTM
;

define <n x 4 x float> @frintm_s(<n x 4 x float> %a, <n x 4 x i1> %pg, <n x 4 x float> %b) {
; CHECK-LABEL: frintm_s:
; CHECK: frintm z0.s, p0/m, z1.s
; CHECK-NEXT: ret
  %out = call <n x 4 x float> @llvm.aarch64.sve.rintm.nxv4f32(<n x 4 x float> %a,
                                                              <n x 4 x i1> %pg,
                                                              <n x 4 x float> %b)
  ret <n x 4 x float> %out
}

define <n x 2 x double> @frintm_d(<n x 2 x double> %a, <n x 2 x i1> %pg, <n x 2 x double> %b) {
; CHECK-LABEL: frintm_d:
; CHECK: frintm z0.d, p0/m, z1.d
; CHECK-NEXT: ret
  %out = call <n x 2 x double> @llvm.aarch64.sve.rintm.nxv2f64(<n x 2 x double> %a,
                                                               <n x 2 x i1> %pg,
                                                               <n x 2 x double> %b)
  ret <n x 2 x double> %out
}

;
; FRINTN
;

define <n x 4 x float> @frintn_s(<n x 4 x float> %a, <n x 4 x i1> %pg, <n x 4 x float> %b) {
; CHECK-LABEL: frintn_s:
; CHECK: frintn z0.s, p0/m, z1.s
; CHECK-NEXT: ret
  %out = call <n x 4 x float> @llvm.aarch64.sve.rintn.nxv4f32(<n x 4 x float> %a,
                                                              <n x 4 x i1> %pg,
                                                              <n x 4 x float> %b)
  ret <n x 4 x float> %out
}

define <n x 2 x double> @frintn_d(<n x 2 x double> %a, <n x 2 x i1> %pg, <n x 2 x double> %b) {
; CHECK-LABEL: frintn_d:
; CHECK: frintn z0.d, p0/m, z1.d
; CHECK-NEXT: ret
  %out = call <n x 2 x double> @llvm.aarch64.sve.rintn.nxv2f64(<n x 2 x double> %a,
                                                               <n x 2 x i1> %pg,
                                                               <n x 2 x double> %b)
  ret <n x 2 x double> %out
}

;
; FRINTP
;

define <n x 4 x float> @frintp_s(<n x 4 x float> %a, <n x 4 x i1> %pg, <n x 4 x float> %b) {
; CHECK-LABEL: frintp_s:
; CHECK: frintp z0.s, p0/m, z1.s
; CHECK-NEXT: ret
  %out = call <n x 4 x float> @llvm.aarch64.sve.rintp.nxv4f32(<n x 4 x float> %a,
                                                              <n x 4 x i1> %pg,
                                                              <n x 4 x float> %b)
  ret <n x 4 x float> %out
}

define <n x 2 x double> @frintp_d(<n x 2 x double> %a, <n x 2 x i1> %pg, <n x 2 x double> %b) {
; CHECK-LABEL: frintp_d:
; CHECK: frintp z0.d, p0/m, z1.d
; CHECK-NEXT: ret
  %out = call <n x 2 x double> @llvm.aarch64.sve.rintp.nxv2f64(<n x 2 x double> %a,
                                                               <n x 2 x i1> %pg,
                                                               <n x 2 x double> %b)
  ret <n x 2 x double> %out
}

;
; FRINTX
;

define <n x 4 x float> @frintx_s(<n x 4 x float> %a, <n x 4 x i1> %pg, <n x 4 x float> %b) {
; CHECK-LABEL: frintx_s:
; CHECK: frintx z0.s, p0/m, z1.s
; CHECK-NEXT: ret
  %out = call <n x 4 x float> @llvm.aarch64.sve.rintx.nxv4f32(<n x 4 x float> %a,
                                                              <n x 4 x i1> %pg,
                                                              <n x 4 x float> %b)
  ret <n x 4 x float> %out
}

define <n x 2 x double> @frintx_d(<n x 2 x double> %a, <n x 2 x i1> %pg, <n x 2 x double> %b) {
; CHECK-LABEL: frintx_d:
; CHECK: frintx z0.d, p0/m, z1.d
; CHECK-NEXT: ret
  %out = call <n x 2 x double> @llvm.aarch64.sve.rintx.nxv2f64(<n x 2 x double> %a,
                                                               <n x 2 x i1> %pg,
                                                               <n x 2 x double> %b)
  ret <n x 2 x double> %out
}

;
; FRINTZ
;

define <n x 4 x float> @frintz_s(<n x 4 x float> %a, <n x 4 x i1> %pg, <n x 4 x float> %b) {
; CHECK-LABEL: frintz_s:
; CHECK: frintz z0.s, p0/m, z1.s
; CHECK-NEXT: ret
  %out = call <n x 4 x float> @llvm.aarch64.sve.rintz.nxv4f32(<n x 4 x float> %a,
                                                              <n x 4 x i1> %pg,
                                                              <n x 4 x float> %b)
  ret <n x 4 x float> %out
}

define <n x 2 x double> @frintz_d(<n x 2 x double> %a, <n x 2 x i1> %pg, <n x 2 x double> %b) {
; CHECK-LABEL: frintz_d:
; CHECK: frintz z0.d, p0/m, z1.d
; CHECK-NEXT: ret
  %out = call <n x 2 x double> @llvm.aarch64.sve.rintz.nxv2f64(<n x 2 x double> %a,
                                                               <n x 2 x i1> %pg,
                                                               <n x 2 x double> %b)
  ret <n x 2 x double> %out
}

;
; FRSQRTE
;

define <n x 4 x float> @frsqrte_s(<n x 4 x float> %a) {
; CHECK-LABEL: frsqrte_s:
; CHECK: frsqrte z0.s, z0.s
; CHECK-NEXT: ret
  %out = call <n x 4 x float> @llvm.aarch64.sve.rsqrte.nxv4f32(<n x 4 x float> %a)
  ret <n x 4 x float> %out
}

define <n x 2 x double> @frsqrte_d(<n x 2 x i1> %pg, <n x 2 x double> %a) {
; CHECK-LABEL: frsqrte_d:
; CHECK: frsqrte z0.d, z0.d
; CHECK-NEXT: ret
  %out = call <n x 2 x double> @llvm.aarch64.sve.rsqrte.nxv2f64(<n x 2 x double> %a)
  ret <n x 2 x double> %out
}

;
; FRSQRTS
;

define <n x 4 x float> @frsqrts_s(<n x 4 x float> %a, <n x 4 x float> %b) {
; CHECK-LABEL: frsqrts_s:
; CHECK: frsqrts z0.s, z0.s, z1.s
; CHECK-NEXT: ret
  %out = call <n x 4 x float> @llvm.aarch64.sve.rsqrts.nxv4f32(<n x 4 x float> %a,
                                                               <n x 4 x float> %b)
  ret <n x 4 x float> %out
}

define <n x 2 x double> @frsqrts_d(<n x 2 x double> %a, <n x 2 x double> %b) {
; CHECK-LABEL: frsqrts_d:
; CHECK: frsqrts z0.d, z0.d, z1.d
; CHECK-NEXT: ret
  %out = call <n x 2 x double> @llvm.aarch64.sve.rsqrts.nxv2f64(<n x 2 x double> %a,
                                                                <n x 2 x double> %b)
  ret <n x 2 x double> %out
}

;
; FSCALE
;

define <n x 4 x float> @fscale_s(<n x 4 x i1> %pg, <n x 4 x float> %a, <n x 4 x i32> %b) {
; CHECK-LABEL: fscale_s:
; CHECK: fscale z0.s, p0/m, z0.s, z1.s
; CHECK-NEXT: ret
  %out = call <n x 4 x float> @llvm.aarch64.sve.scale.nxv4f32(<n x 4 x i1> %pg,
                                                              <n x 4 x float> %a,
                                                              <n x 4 x i32> %b)
  ret <n x 4 x float> %out
}

define <n x 2 x double> @fscale_d(<n x 2 x i1> %pg, <n x 2 x double> %a, <n x 2 x i64> %b) {
; CHECK-LABEL: fscale_d:
; CHECK: fscale z0.d, p0/m, z0.d, z1.d
; CHECK-NEXT: ret
  %out = call <n x 2 x double> @llvm.aarch64.sve.scale.nxv2f64(<n x 2 x i1> %pg,
                                                               <n x 2 x double> %a,
                                                               <n x 2 x i64> %b)
  ret <n x 2 x double> %out
}

;
; FSQRT
;

define <n x 4 x float> @fsqrt_s(<n x 4 x float> %a, <n x 4 x i1> %pg, <n x 4 x float> %b) {
; CHECK-LABEL: fsqrt_s:
; CHECK: fsqrt z0.s, p0/m, z1.s
; CHECK-NEXT: ret
  %out = call <n x 4 x float> @llvm.aarch64.sve.sqrt.nxv4f32(<n x 4 x float> %a,
                                                             <n x 4 x i1> %pg,
                                                             <n x 4 x float> %b)
  ret <n x 4 x float> %out
}

define <n x 2 x double> @fsqrt_d(<n x 2 x double> %a, <n x 2 x i1> %pg, <n x 2 x double> %b) {
; CHECK-LABEL: fsqrt_d:
; CHECK: fsqrt z0.d, p0/m, z1.d
; CHECK-NEXT: ret
  %out = call <n x 2 x double> @llvm.aarch64.sve.sqrt.nxv2f64(<n x 2 x double> %a,
                                                              <n x 2 x i1> %pg,
                                                              <n x 2 x double> %b)
  ret <n x 2 x double> %out
}

;
; FSUB
;

define <n x 4 x float> @fsub_s(<n x 4 x i1> %pg, <n x 4 x float> %a, <n x 4 x float> %b) {
; CHECK-LABEL: fsub_s:
; CHECK: fsub z0.s, p0/m, z0.s, z1.s
; CHECK-NEXT: ret
  %out = call <n x 4 x float> @llvm.aarch64.sve.sub.nxv4f32(<n x 4 x i1> %pg,
                                                            <n x 4 x float> %a,
                                                            <n x 4 x float> %b)
  ret <n x 4 x float> %out
}

define <n x 2 x double> @fsub_d(<n x 2 x i1> %pg, <n x 2 x double> %a, <n x 2 x double> %b) {
; CHECK-LABEL: fsub_d:
; CHECK: fsub z0.d, p0/m, z0.d, z1.d
; CHECK-NEXT: ret
  %out = call <n x 2 x double> @llvm.aarch64.sve.sub.nxv2f64(<n x 2 x i1> %pg,
                                                             <n x 2 x double> %a,
                                                             <n x 2 x double> %b)
  ret <n x 2 x double> %out
}

;
; FSUBR
;

define <n x 4 x float> @fsubr_s(<n x 4 x i1> %pg, <n x 4 x float> %a, <n x 4 x float> %b) {
; CHECK-LABEL: fsubr_s:
; CHECK: fsubr z0.s, p0/m, z0.s, z1.s
; CHECK-NEXT: ret
  %out = call <n x 4 x float> @llvm.aarch64.sve.subr.nxv4f32(<n x 4 x i1> %pg,
                                                             <n x 4 x float> %a,
                                                             <n x 4 x float> %b)
  ret <n x 4 x float> %out
}

define <n x 2 x double> @fsubr_d(<n x 2 x i1> %pg, <n x 2 x double> %a, <n x 2 x double> %b) {
; CHECK-LABEL: fsubr_d:
; CHECK: fsubr z0.d, p0/m, z0.d, z1.d
; CHECK-NEXT: ret
  %out = call <n x 2 x double> @llvm.aarch64.sve.subr.nxv2f64(<n x 2 x i1> %pg,
                                                              <n x 2 x double> %a,
                                                              <n x 2 x double> %b)
  ret <n x 2 x double> %out
}

;
; FTMAD
;

define <n x 4 x float> @ftmad_s(<n x 4 x float> %a, <n x 4 x float> %b) {
; CHECK-LABEL: ftmad_s:
; CHECK: ftmad z0.s, z0.s, z1.s, #0
; CHECK-NEXT: ret
  %out = call <n x 4 x float> @llvm.aarch64.sve.tmad.nxv4f32(<n x 4 x float> %a,
                                                             <n x 4 x float> %b,
                                                             i32 0)
  ret <n x 4 x float> %out
}

define <n x 2 x double> @ftmad_d(<n x 2 x double> %a, <n x 2 x double> %b) {
; CHECK-LABEL: ftmad_d:
; CHECK: ftmad z0.d, z0.d, z1.d, #7
; CHECK-NEXT: ret
  %out = call <n x 2 x double> @llvm.aarch64.sve.tmad.nxv2f64(<n x 2 x double> %a,
                                                              <n x 2 x double> %b,
                                                              i32 7)
  ret <n x 2 x double> %out
}

;
; FTSMUL
;

define <n x 4 x float> @ftsmul_s(<n x 4 x float> %a, <n x 4 x i32> %b) {
; CHECK-LABEL: ftsmul_s:
; CHECK: ftsmul z0.s, z0.s, z1.s
; CHECK-NEXT: ret
  %out = call <n x 4 x float> @llvm.aarch64.sve.tsmul.nxv4f32(<n x 4 x float> %a,
                                                              <n x 4 x i32> %b)
  ret <n x 4 x float> %out
}

define <n x 2 x double> @ftsmul_d(<n x 2 x double> %a, <n x 2 x i64> %b) {
; CHECK-LABEL: ftsmul_d:
; CHECK: ftsmul z0.d, z0.d, z1.d
; CHECK-NEXT: ret
  %out = call <n x 2 x double> @llvm.aarch64.sve.tsmul.nxv2f64(<n x 2 x double> %a,
                                                               <n x 2 x i64> %b)
  ret <n x 2 x double> %out
}

;
; FTSSEL
;

define <n x 4 x float> @ftssel_s(<n x 4 x float> %a, <n x 4 x i32> %b) {
; CHECK-LABEL: ftssel_s:
; CHECK: ftssel z0.s, z0.s, z1.s
; CHECK-NEXT: ret
  %out = call <n x 4 x float> @llvm.aarch64.sve.tssel.nxv4f32(<n x 4 x float> %a,
                                                              <n x 4 x i32> %b)
  ret <n x 4 x float> %out
}

define <n x 2 x double> @ftssel_d(<n x 2 x double> %a, <n x 2 x i64> %b) {
; CHECK-LABEL: ftssel_d:
; CHECK: ftssel z0.d, z0.d, z1.d
; CHECK-NEXT: ret
  %out = call <n x 2 x double> @llvm.aarch64.sve.tssel.nxv2f64(<n x 2 x double> %a,
                                                               <n x 2 x i64> %b)
  ret <n x 2 x double> %out
}

declare <n x 4 x float> @llvm.aarch64.sve.abd.nxv4f32(<n x 4 x i1>, <n x 4 x float>, <n x 4 x float>)
declare <n x 2 x double> @llvm.aarch64.sve.abd.nxv2f64(<n x 2 x i1>, <n x 2 x double>, <n x 2 x double>)

declare <n x 4 x float> @llvm.aarch64.sve.abs.nxv4f32(<n x 4 x float>, <n x 4 x i1>, <n x 4 x float>)
declare <n x 2 x double> @llvm.aarch64.sve.abs.nxv2f64(<n x 2 x double>, <n x 2 x i1>, <n x 2 x double>)

declare <n x 4 x float> @llvm.aarch64.sve.add.nxv4f32(<n x 4 x i1>, <n x 4 x float>, <n x 4 x float>)
declare <n x 2 x double> @llvm.aarch64.sve.add.nxv2f64(<n x 2 x i1>, <n x 2 x double>, <n x 2 x double>)

declare <n x 4 x float> @llvm.aarch64.sve.div.nxv4f32(<n x 4 x i1>, <n x 4 x float>, <n x 4 x float>)
declare <n x 2 x double> @llvm.aarch64.sve.div.nxv2f64(<n x 2 x i1>, <n x 2 x double>, <n x 2 x double>)

declare <n x 4 x float> @llvm.aarch64.sve.divr.nxv4f32(<n x 4 x i1>, <n x 4 x float>, <n x 4 x float>)
declare <n x 2 x double> @llvm.aarch64.sve.divr.nxv2f64(<n x 2 x i1>, <n x 2 x double>, <n x 2 x double>)

declare <n x 4 x float> @llvm.aarch64.sve.expa.nxv4f32(<n x 4 x i32>)
declare <n x 2 x double> @llvm.aarch64.sve.expa.nxv2f64(<n x 2 x i64>)

declare <n x 4 x float> @llvm.aarch64.sve.mad.nxv4f32(<n x 4 x i1>, <n x 4 x float>, <n x 4 x float>, <n x 4 x float>)
declare <n x 2 x double> @llvm.aarch64.sve.mad.nxv2f64(<n x 2 x i1>, <n x 2 x double>, <n x 2 x double>, <n x 2 x double>)

declare <n x 4 x float> @llvm.aarch64.sve.max.nxv4f32(<n x 4 x i1>, <n x 4 x float>, <n x 4 x float>)
declare <n x 2 x double> @llvm.aarch64.sve.max.nxv2f64(<n x 2 x i1>, <n x 2 x double>, <n x 2 x double>)

declare <n x 4 x float> @llvm.aarch64.sve.maxnm.nxv4f32(<n x 4 x i1>, <n x 4 x float>, <n x 4 x float>)
declare <n x 2 x double> @llvm.aarch64.sve.maxnm.nxv2f64(<n x 2 x i1>, <n x 2 x double>, <n x 2 x double>)

declare <n x 4 x float> @llvm.aarch64.sve.min.nxv4f32(<n x 4 x i1>, <n x 4 x float>, <n x 4 x float>)
declare <n x 2 x double> @llvm.aarch64.sve.min.nxv2f64(<n x 2 x i1>, <n x 2 x double>, <n x 2 x double>)

declare <n x 4 x float> @llvm.aarch64.sve.minnm.nxv4f32(<n x 4 x i1>, <n x 4 x float>, <n x 4 x float>)
declare <n x 2 x double> @llvm.aarch64.sve.minnm.nxv2f64(<n x 2 x i1>, <n x 2 x double>, <n x 2 x double>)

declare <n x 4 x float> @llvm.aarch64.sve.mla.nxv4f32(<n x 4 x i1>, <n x 4 x float>, <n x 4 x float>, <n x 4 x float>)
declare <n x 2 x double> @llvm.aarch64.sve.mla.nxv2f64(<n x 2 x i1>, <n x 2 x double>, <n x 2 x double>, <n x 2 x double>)

declare <n x 4 x float> @llvm.aarch64.sve.mls.nxv4f32(<n x 4 x i1>, <n x 4 x float>, <n x 4 x float>, <n x 4 x float>)
declare <n x 2 x double> @llvm.aarch64.sve.mls.nxv2f64(<n x 2 x i1>, <n x 2 x double>, <n x 2 x double>, <n x 2 x double>)

declare <n x 4 x float> @llvm.aarch64.sve.msb.nxv4f32(<n x 4 x i1>, <n x 4 x float>, <n x 4 x float>, <n x 4 x float>)
declare <n x 2 x double> @llvm.aarch64.sve.msb.nxv2f64(<n x 2 x i1>, <n x 2 x double>, <n x 2 x double>, <n x 2 x double>)

declare <n x 4 x float> @llvm.aarch64.sve.mul.nxv4f32(<n x 4 x i1>, <n x 4 x float>, <n x 4 x float>)
declare <n x 2 x double> @llvm.aarch64.sve.mul.nxv2f64(<n x 2 x i1>, <n x 2 x double>, <n x 2 x double>)

declare <n x 4 x float> @llvm.aarch64.sve.mulx.nxv4f32(<n x 4 x i1>, <n x 4 x float>, <n x 4 x float>)
declare <n x 2 x double> @llvm.aarch64.sve.mulx.nxv2f64(<n x 2 x i1>, <n x 2 x double>, <n x 2 x double>)

declare <n x 4 x float> @llvm.aarch64.sve.neg.nxv4f32(<n x 4 x float>, <n x 4 x i1>, <n x 4 x float>)
declare <n x 2 x double> @llvm.aarch64.sve.neg.nxv2f64(<n x 2 x double>, <n x 2 x i1>, <n x 2 x double>)

declare <n x 4 x float> @llvm.aarch64.sve.nmad.nxv4f32(<n x 4 x i1>, <n x 4 x float>, <n x 4 x float>, <n x 4 x float>)
declare <n x 2 x double> @llvm.aarch64.sve.nmad.nxv2f64(<n x 2 x i1>, <n x 2 x double>, <n x 2 x double>, <n x 2 x double>)

declare <n x 4 x float> @llvm.aarch64.sve.nmla.nxv4f32(<n x 4 x i1>, <n x 4 x float>, <n x 4 x float>, <n x 4 x float>)
declare <n x 2 x double> @llvm.aarch64.sve.nmla.nxv2f64(<n x 2 x i1>, <n x 2 x double>, <n x 2 x double>, <n x 2 x double>)

declare <n x 4 x float> @llvm.aarch64.sve.nmls.nxv4f32(<n x 4 x i1>, <n x 4 x float>, <n x 4 x float>, <n x 4 x float>)
declare <n x 2 x double> @llvm.aarch64.sve.nmls.nxv2f64(<n x 2 x i1>, <n x 2 x double>, <n x 2 x double>, <n x 2 x double>)

declare <n x 4 x float> @llvm.aarch64.sve.nmsb.nxv4f32(<n x 4 x i1>, <n x 4 x float>, <n x 4 x float>, <n x 4 x float>)
declare <n x 2 x double> @llvm.aarch64.sve.nmsb.nxv2f64(<n x 2 x i1>, <n x 2 x double>, <n x 2 x double>, <n x 2 x double>)

declare <n x 4 x float> @llvm.aarch64.sve.recpe.nxv4f32(<n x 4 x float>)
declare <n x 2 x double> @llvm.aarch64.sve.recpe.nxv2f64(<n x 2 x double>)

declare <n x 4 x float> @llvm.aarch64.sve.recps.nxv4f32(<n x 4 x float>, <n x 4 x float>)
declare <n x 2 x double> @llvm.aarch64.sve.recps.nxv2f64(<n x 2 x double>, <n x 2 x double>)

declare <n x 4 x float> @llvm.aarch64.sve.recpx.nxv4f32(<n x 4 x float>, <n x 4 x i1>, <n x 4 x float>)
declare <n x 2 x double> @llvm.aarch64.sve.recpx.nxv2f64(<n x 2 x double>, <n x 2 x i1>, <n x 2 x double>)

declare <n x 4 x float> @llvm.aarch64.sve.rinta.nxv4f32(<n x 4 x float>, <n x 4 x i1>, <n x 4 x float>)
declare <n x 2 x double> @llvm.aarch64.sve.rinta.nxv2f64(<n x 2 x double>, <n x 2 x i1>, <n x 2 x double>)

declare <n x 4 x float> @llvm.aarch64.sve.rinti.nxv4f32(<n x 4 x float>, <n x 4 x i1>, <n x 4 x float>)
declare <n x 2 x double> @llvm.aarch64.sve.rinti.nxv2f64(<n x 2 x double>, <n x 2 x i1>, <n x 2 x double>)

declare <n x 4 x float> @llvm.aarch64.sve.rintm.nxv4f32(<n x 4 x float>, <n x 4 x i1>, <n x 4 x float>)
declare <n x 2 x double> @llvm.aarch64.sve.rintm.nxv2f64(<n x 2 x double>, <n x 2 x i1>, <n x 2 x double>)

declare <n x 4 x float> @llvm.aarch64.sve.rintn.nxv4f32(<n x 4 x float>, <n x 4 x i1>, <n x 4 x float>)
declare <n x 2 x double> @llvm.aarch64.sve.rintn.nxv2f64(<n x 2 x double>, <n x 2 x i1>, <n x 2 x double>)

declare <n x 4 x float> @llvm.aarch64.sve.rintp.nxv4f32(<n x 4 x float>, <n x 4 x i1>, <n x 4 x float>)
declare <n x 2 x double> @llvm.aarch64.sve.rintp.nxv2f64(<n x 2 x double>, <n x 2 x i1>, <n x 2 x double>)

declare <n x 4 x float> @llvm.aarch64.sve.rintx.nxv4f32(<n x 4 x float>, <n x 4 x i1>, <n x 4 x float>)
declare <n x 2 x double> @llvm.aarch64.sve.rintx.nxv2f64(<n x 2 x double>, <n x 2 x i1>, <n x 2 x double>)

declare <n x 4 x float> @llvm.aarch64.sve.rintz.nxv4f32(<n x 4 x float>, <n x 4 x i1>, <n x 4 x float>)
declare <n x 2 x double> @llvm.aarch64.sve.rintz.nxv2f64(<n x 2 x double>, <n x 2 x i1>, <n x 2 x double>)

declare <n x 4 x float> @llvm.aarch64.sve.rsqrte.nxv4f32(<n x 4 x float>)
declare <n x 2 x double> @llvm.aarch64.sve.rsqrte.nxv2f64(<n x 2 x double>)

declare <n x 4 x float> @llvm.aarch64.sve.rsqrts.nxv4f32(<n x 4 x float>, <n x 4 x float>)
declare <n x 2 x double> @llvm.aarch64.sve.rsqrts.nxv2f64(<n x 2 x double>, <n x 2 x double>)

declare <n x 4 x float> @llvm.aarch64.sve.scale.nxv4f32(<n x 4 x i1>, <n x 4 x float>, <n x 4 x i32>)
declare <n x 2 x double> @llvm.aarch64.sve.scale.nxv2f64(<n x 2 x i1>, <n x 2 x double>, <n x 2 x i64>)

declare <n x 4 x float> @llvm.aarch64.sve.sqrt.nxv4f32(<n x 4 x float>, <n x 4 x i1>, <n x 4 x float>)
declare <n x 2 x double> @llvm.aarch64.sve.sqrt.nxv2f64(<n x 2 x double>, <n x 2 x i1>, <n x 2 x double>)

declare <n x 4 x float> @llvm.aarch64.sve.sub.nxv4f32(<n x 4 x i1>, <n x 4 x float>, <n x 4 x float>)
declare <n x 2 x double> @llvm.aarch64.sve.sub.nxv2f64(<n x 2 x i1>, <n x 2 x double>, <n x 2 x double>)

declare <n x 4 x float> @llvm.aarch64.sve.subr.nxv4f32(<n x 4 x i1>, <n x 4 x float>, <n x 4 x float>)
declare <n x 2 x double> @llvm.aarch64.sve.subr.nxv2f64(<n x 2 x i1>, <n x 2 x double>, <n x 2 x double>)

declare <n x 4 x float> @llvm.aarch64.sve.tmad.nxv4f32(<n x 4 x float>, <n x 4 x float>, i32)
declare <n x 2 x double> @llvm.aarch64.sve.tmad.nxv2f64(<n x 2 x double>, <n x 2 x double>, i32)

declare <n x 4 x float> @llvm.aarch64.sve.tsmul.nxv4f32(<n x 4 x float>, <n x 4 x i32>)
declare <n x 2 x double> @llvm.aarch64.sve.tsmul.nxv2f64(<n x 2 x double>, <n x 2 x i64>)

declare <n x 4 x float> @llvm.aarch64.sve.tssel.nxv4f32(<n x 4 x float>, <n x 4 x i32>)
declare <n x 2 x double> @llvm.aarch64.sve.tssel.nxv2f64(<n x 2 x double>, <n x 2 x i64>)
