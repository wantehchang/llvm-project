; RUN: llc -mtriple=riscv64 -mattr=+experimental-v,+d,+experimental-zfh -target-abi lp64d -verify-machineinstrs \
; RUN:   --riscv-no-aliases < %s | FileCheck %s
declare <vscale x 1 x half> @llvm.riscv.vfmv.v.f.nxv1f16.f16(
  half,
  i64);

define <vscale x 1 x half> @intrinsic_vfmv.v.f_f_nxv1f16_f16(half %0, i64 %1) nounwind {
entry:
; CHECK-LABEL: intrinsic_vfmv.v.f_f_nxv1f16_f16
; CHECK:       vsetvli {{.*}}, a0, e16,mf4,ta,mu
; CHECK:       vfmv.v.f {{v[0-9]+}}, fa0
  %a = call <vscale x 1 x half> @llvm.riscv.vfmv.v.f.nxv1f16.f16(
    half %0,
    i64 %1)

  ret <vscale x 1 x half> %a
}

declare <vscale x 2 x half> @llvm.riscv.vfmv.v.f.nxv2f16.f16(
  half,
  i64);

define <vscale x 2 x half> @intrinsic_vfmv.v.f_f_nxv2f16_f16(half %0, i64 %1) nounwind {
entry:
; CHECK-LABEL: intrinsic_vfmv.v.f_f_nxv2f16_f16
; CHECK:       vsetvli {{.*}}, a0, e16,mf2,ta,mu
; CHECK:       vfmv.v.f {{v[0-9]+}}, fa0
  %a = call <vscale x 2 x half> @llvm.riscv.vfmv.v.f.nxv2f16.f16(
    half %0,
    i64 %1)

  ret <vscale x 2 x half> %a
}

declare <vscale x 4 x half> @llvm.riscv.vfmv.v.f.nxv4f16.f16(
  half,
  i64);

define <vscale x 4 x half> @intrinsic_vfmv.v.f_f_nxv4f16_f16(half %0, i64 %1) nounwind {
entry:
; CHECK-LABEL: intrinsic_vfmv.v.f_f_nxv4f16_f16
; CHECK:       vsetvli {{.*}}, a0, e16,m1,ta,mu
; CHECK:       vfmv.v.f {{v[0-9]+}}, fa0
  %a = call <vscale x 4 x half> @llvm.riscv.vfmv.v.f.nxv4f16.f16(
    half %0,
    i64 %1)

  ret <vscale x 4 x half> %a
}

declare <vscale x 8 x half> @llvm.riscv.vfmv.v.f.nxv8f16.f16(
  half,
  i64);

define <vscale x 8 x half> @intrinsic_vfmv.v.f_f_nxv8f16_f16(half %0, i64 %1) nounwind {
entry:
; CHECK-LABEL: intrinsic_vfmv.v.f_f_nxv8f16_f16
; CHECK:       vsetvli {{.*}}, a0, e16,m2,ta,mu
; CHECK:       vfmv.v.f {{v[0-9]+}}, fa0
  %a = call <vscale x 8 x half> @llvm.riscv.vfmv.v.f.nxv8f16.f16(
    half %0,
    i64 %1)

  ret <vscale x 8 x half> %a
}

declare <vscale x 16 x half> @llvm.riscv.vfmv.v.f.nxv16f16.f16(
  half,
  i64);

define <vscale x 16 x half> @intrinsic_vfmv.v.f_f_nxv16f16_f16(half %0, i64 %1) nounwind {
entry:
; CHECK-LABEL: intrinsic_vfmv.v.f_f_nxv16f16_f16
; CHECK:       vsetvli {{.*}}, a0, e16,m4,ta,mu
; CHECK:       vfmv.v.f {{v[0-9]+}}, fa0
  %a = call <vscale x 16 x half> @llvm.riscv.vfmv.v.f.nxv16f16.f16(
    half %0,
    i64 %1)

  ret <vscale x 16 x half> %a
}

declare <vscale x 32 x half> @llvm.riscv.vfmv.v.f.nxv32f16.f16(
  half,
  i64);

define <vscale x 32 x half> @intrinsic_vfmv.v.f_f_nxv32f16_f16(half %0, i64 %1) nounwind {
entry:
; CHECK-LABEL: intrinsic_vfmv.v.f_f_nxv32f16_f16
; CHECK:       vsetvli {{.*}}, a0, e16,m8,ta,mu
; CHECK:       vfmv.v.f {{v[0-9]+}}, fa0
  %a = call <vscale x 32 x half> @llvm.riscv.vfmv.v.f.nxv32f16.f16(
    half %0,
    i64 %1)

  ret <vscale x 32 x half> %a
}

declare <vscale x 1 x float> @llvm.riscv.vfmv.v.f.nxv1f32.f32(
  float,
  i64);

define <vscale x 1 x float> @intrinsic_vfmv.v.f_f_nxv1f32_f32(float %0, i64 %1) nounwind {
entry:
; CHECK-LABEL: intrinsic_vfmv.v.f_f_nxv1f32_f32
; CHECK:       vsetvli {{.*}}, a0, e32,mf2,ta,mu
; CHECK:       vfmv.v.f {{v[0-9]+}}, fa0
  %a = call <vscale x 1 x float> @llvm.riscv.vfmv.v.f.nxv1f32.f32(
    float %0,
    i64 %1)

  ret <vscale x 1 x float> %a
}

declare <vscale x 2 x float> @llvm.riscv.vfmv.v.f.nxv2f32.f32(
  float,
  i64);

define <vscale x 2 x float> @intrinsic_vfmv.v.f_f_nxv2f32_f32(float %0, i64 %1) nounwind {
entry:
; CHECK-LABEL: intrinsic_vfmv.v.f_f_nxv2f32_f32
; CHECK:       vsetvli {{.*}}, a0, e32,m1,ta,mu
; CHECK:       vfmv.v.f {{v[0-9]+}}, fa0
  %a = call <vscale x 2 x float> @llvm.riscv.vfmv.v.f.nxv2f32.f32(
    float %0,
    i64 %1)

  ret <vscale x 2 x float> %a
}

declare <vscale x 4 x float> @llvm.riscv.vfmv.v.f.nxv4f32.f32(
  float,
  i64);

define <vscale x 4 x float> @intrinsic_vfmv.v.f_f_nxv4f32_f32(float %0, i64 %1) nounwind {
entry:
; CHECK-LABEL: intrinsic_vfmv.v.f_f_nxv4f32_f32
; CHECK:       vsetvli {{.*}}, a0, e32,m2,ta,mu
; CHECK:       vfmv.v.f {{v[0-9]+}}, fa0
  %a = call <vscale x 4 x float> @llvm.riscv.vfmv.v.f.nxv4f32.f32(
    float %0,
    i64 %1)

  ret <vscale x 4 x float> %a
}

declare <vscale x 8 x float> @llvm.riscv.vfmv.v.f.nxv8f32.f32(
  float,
  i64);

define <vscale x 8 x float> @intrinsic_vfmv.v.f_f_nxv8f32_f32(float %0, i64 %1) nounwind {
entry:
; CHECK-LABEL: intrinsic_vfmv.v.f_f_nxv8f32_f32
; CHECK:       vsetvli {{.*}}, a0, e32,m4,ta,mu
; CHECK:       vfmv.v.f {{v[0-9]+}}, fa0
  %a = call <vscale x 8 x float> @llvm.riscv.vfmv.v.f.nxv8f32.f32(
    float %0,
    i64 %1)

  ret <vscale x 8 x float> %a
}

declare <vscale x 16 x float> @llvm.riscv.vfmv.v.f.nxv16f32.f32(
  float,
  i64);

define <vscale x 16 x float> @intrinsic_vfmv.v.f_f_nxv16f32_f32(float %0, i64 %1) nounwind {
entry:
; CHECK-LABEL: intrinsic_vfmv.v.f_f_nxv16f32_f32
; CHECK:       vsetvli {{.*}}, a0, e32,m8,ta,mu
; CHECK:       vfmv.v.f {{v[0-9]+}}, fa0
  %a = call <vscale x 16 x float> @llvm.riscv.vfmv.v.f.nxv16f32.f32(
    float %0,
    i64 %1)

  ret <vscale x 16 x float> %a
}

declare <vscale x 1 x double> @llvm.riscv.vfmv.v.f.nxv1f64.f64(
  double,
  i64);

define <vscale x 1 x double> @intrinsic_vfmv.v.f_f_nxv1f64_f64(double %0, i64 %1) nounwind {
entry:
; CHECK-LABEL: intrinsic_vfmv.v.f_f_nxv1f64_f64
; CHECK:       vsetvli {{.*}}, a0, e64,m1,ta,mu
; CHECK:       vfmv.v.f {{v[0-9]+}}, fa0
  %a = call <vscale x 1 x double> @llvm.riscv.vfmv.v.f.nxv1f64.f64(
    double %0,
    i64 %1)

  ret <vscale x 1 x double> %a
}

declare <vscale x 2 x double> @llvm.riscv.vfmv.v.f.nxv2f64.f64(
  double,
  i64);

define <vscale x 2 x double> @intrinsic_vfmv.v.f_f_nxv2f64_f64(double %0, i64 %1) nounwind {
entry:
; CHECK-LABEL: intrinsic_vfmv.v.f_f_nxv2f64_f64
; CHECK:       vsetvli {{.*}}, a0, e64,m2,ta,mu
; CHECK:       vfmv.v.f {{v[0-9]+}}, fa0
  %a = call <vscale x 2 x double> @llvm.riscv.vfmv.v.f.nxv2f64.f64(
    double %0,
    i64 %1)

  ret <vscale x 2 x double> %a
}

declare <vscale x 4 x double> @llvm.riscv.vfmv.v.f.nxv4f64.f64(
  double,
  i64);

define <vscale x 4 x double> @intrinsic_vfmv.v.f_f_nxv4f64_f64(double %0, i64 %1) nounwind {
entry:
; CHECK-LABEL: intrinsic_vfmv.v.f_f_nxv4f64_f64
; CHECK:       vsetvli {{.*}}, a0, e64,m4,ta,mu
; CHECK:       vfmv.v.f {{v[0-9]+}}, fa0
  %a = call <vscale x 4 x double> @llvm.riscv.vfmv.v.f.nxv4f64.f64(
    double %0,
    i64 %1)

  ret <vscale x 4 x double> %a
}

declare <vscale x 8 x double> @llvm.riscv.vfmv.v.f.nxv8f64.f64(
  double,
  i64);

define <vscale x 8 x double> @intrinsic_vfmv.v.f_f_nxv8f64_f64(double %0, i64 %1) nounwind {
entry:
; CHECK-LABEL: intrinsic_vfmv.v.f_f_nxv8f64_f64
; CHECK:       vsetvli {{.*}}, a0, e64,m8,ta,mu
; CHECK:       vfmv.v.f {{v[0-9]+}}, fa0
  %a = call <vscale x 8 x double> @llvm.riscv.vfmv.v.f.nxv8f64.f64(
    double %0,
    i64 %1)

  ret <vscale x 8 x double> %a
}

define <vscale x 1 x half> @intrinsic_vfmv.v.f_zero_nxv1f16_f16(i64 %0) nounwind {
entry:
; CHECK-LABEL: intrinsic_vfmv.v.f_zero_nxv1f16_f16
; CHECK:       vsetvli {{.*}}, a0, e16,mf4,ta,mu
; CHECK:       vmv.v.x {{v[0-9]+}}, zero
  %a = call <vscale x 1 x half> @llvm.riscv.vfmv.v.f.nxv1f16.f16(
    half 0.0,
    i64 %0)

  ret <vscale x 1 x half> %a
}

define <vscale x 2 x half> @intrinsic_vmv.v.x_zero_nxv2f16_f16(i64 %0) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmv.v.x_zero_nxv2f16_f16
; CHECK:       vsetvli {{.*}}, a0, e16,mf2,ta,mu
; CHECK:       vmv.v.x {{v[0-9]+}}, zero
  %a = call <vscale x 2 x half> @llvm.riscv.vfmv.v.f.nxv2f16.f16(
    half 0.0,
    i64 %0)

  ret <vscale x 2 x half> %a
}

define <vscale x 4 x half> @intrinsic_vmv.v.x_zero_nxv4f16_f16(i64 %0) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmv.v.x_zero_nxv4f16_f16
; CHECK:       vsetvli {{.*}}, a0, e16,m1,ta,mu
; CHECK:       vmv.v.x {{v[0-9]+}}, zero
  %a = call <vscale x 4 x half> @llvm.riscv.vfmv.v.f.nxv4f16.f16(
    half 0.0,
    i64 %0)

  ret <vscale x 4 x half> %a
}

define <vscale x 8 x half> @intrinsic_vmv.v.x_zero_nxv8f16_f16(i64 %0) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmv.v.x_zero_nxv8f16_f16
; CHECK:       vsetvli {{.*}}, a0, e16,m2,ta,mu
; CHECK:       vmv.v.x {{v[0-9]+}}, zero
  %a = call <vscale x 8 x half> @llvm.riscv.vfmv.v.f.nxv8f16.f16(
    half 0.0,
    i64 %0)

  ret <vscale x 8 x half> %a
}

define <vscale x 16 x half> @intrinsic_vmv.v.x_zero_nxv16f16_f16(i64 %0) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmv.v.x_zero_nxv16f16_f16
; CHECK:       vsetvli {{.*}}, a0, e16,m4,ta,mu
; CHECK:       vmv.v.x {{v[0-9]+}}, zero
  %a = call <vscale x 16 x half> @llvm.riscv.vfmv.v.f.nxv16f16.f16(
    half 0.0,
    i64 %0)

  ret <vscale x 16 x half> %a
}

define <vscale x 32 x half> @intrinsic_vmv.v.x_zero_nxv32f16_f16(i64 %0) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmv.v.x_zero_nxv32f16_f16
; CHECK:       vsetvli {{.*}}, a0, e16,m8,ta,mu
; CHECK:       vmv.v.x {{v[0-9]+}}, zero
  %a = call <vscale x 32 x half> @llvm.riscv.vfmv.v.f.nxv32f16.f16(
    half 0.0,
    i64 %0)

  ret <vscale x 32 x half> %a
}

define <vscale x 1 x float> @intrinsic_vmv.v.x_zero_nxv1f32_f32(i64 %0) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmv.v.x_zero_nxv1f32_f32
; CHECK:       vsetvli {{.*}}, a0, e32,mf2,ta,mu
; CHECK:       vmv.v.x {{v[0-9]+}}, zero
  %a = call <vscale x 1 x float> @llvm.riscv.vfmv.v.f.nxv1f32.f32(
    float 0.0,
    i64 %0)

  ret <vscale x 1 x float> %a
}

define <vscale x 2 x float> @intrinsic_vmv.v.x_zero_nxv2f32_f32(i64 %0) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmv.v.x_zero_nxv2f32_f32
; CHECK:       vsetvli {{.*}}, a0, e32,m1,ta,mu
; CHECK:       vmv.v.x {{v[0-9]+}}, zero
  %a = call <vscale x 2 x float> @llvm.riscv.vfmv.v.f.nxv2f32.f32(
    float 0.0,
    i64 %0)

  ret <vscale x 2 x float> %a
}

define <vscale x 4 x float> @intrinsic_vmv.v.x_zero_nxv4f32_f32(i64 %0) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmv.v.x_zero_nxv4f32_f32
; CHECK:       vsetvli {{.*}}, a0, e32,m2,ta,mu
; CHECK:       vmv.v.x {{v[0-9]+}}, zero
  %a = call <vscale x 4 x float> @llvm.riscv.vfmv.v.f.nxv4f32.f32(
    float 0.0,
    i64 %0)

  ret <vscale x 4 x float> %a
}

define <vscale x 8 x float> @intrinsic_vmv.v.x_zero_nxv8f32_f32(i64 %0) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmv.v.x_zero_nxv8f32_f32
; CHECK:       vsetvli {{.*}}, a0, e32,m4,ta,mu
; CHECK:       vmv.v.x {{v[0-9]+}}, zero
  %a = call <vscale x 8 x float> @llvm.riscv.vfmv.v.f.nxv8f32.f32(
    float 0.0,
    i64 %0)

  ret <vscale x 8 x float> %a
}

define <vscale x 16 x float> @intrinsic_vmv.v.x_zero_nxv16f32_f32(i64 %0) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmv.v.x_zero_nxv16f32_f32
; CHECK:       vsetvli {{.*}}, a0, e32,m8,ta,mu
; CHECK:       vmv.v.x {{v[0-9]+}}, zero
  %a = call <vscale x 16 x float> @llvm.riscv.vfmv.v.f.nxv16f32.f32(
    float 0.0,
    i64 %0)

  ret <vscale x 16 x float> %a
}

define <vscale x 1 x double> @intrinsic_vmv.v.x_zero_nxv1f64_f64(i64 %0) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmv.v.x_zero_nxv1f64_f64
; CHECK:       vsetvli {{.*}}, a0, e64,m1,ta,mu
; CHECK:       vmv.v.x {{v[0-9]+}}, zero
  %a = call <vscale x 1 x double> @llvm.riscv.vfmv.v.f.nxv1f64.f64(
    double 0.0,
    i64 %0)

  ret <vscale x 1 x double> %a
}

define <vscale x 2 x double> @intrinsic_vmv.v.x_zero_nxv2f64_f64(i64 %0) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmv.v.x_zero_nxv2f64_f64
; CHECK:       vsetvli {{.*}}, a0, e64,m2,ta,mu
; CHECK:       vmv.v.x {{v[0-9]+}}, zero
  %a = call <vscale x 2 x double> @llvm.riscv.vfmv.v.f.nxv2f64.f64(
    double 0.0,
    i64 %0)

  ret <vscale x 2 x double> %a
}

define <vscale x 4 x double> @intrinsic_vmv.v.x_zero_nxv4f64_f64(i64 %0) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmv.v.x_zero_nxv4f64_f64
; CHECK:       vsetvli {{.*}}, a0, e64,m4,ta,mu
; CHECK:       vmv.v.x {{v[0-9]+}}, zero
  %a = call <vscale x 4 x double> @llvm.riscv.vfmv.v.f.nxv4f64.f64(
    double 0.0,
    i64 %0)

  ret <vscale x 4 x double> %a
}

define <vscale x 8 x double> @intrinsic_vmv.v.x_zero_nxv8f64_f64(i64 %0) nounwind {
entry:
; CHECK-LABEL: intrinsic_vmv.v.x_zero_nxv8f64_f64
; CHECK:       vsetvli {{.*}}, a0, e64,m8,ta,mu
; CHECK:       vmv.v.x {{v[0-9]+}}, zero
  %a = call <vscale x 8 x double> @llvm.riscv.vfmv.v.f.nxv8f64.f64(
    double 0.0,
    i64 %0)

  ret <vscale x 8 x double> %a
}
