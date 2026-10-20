; ModuleID = 'tests/programs/matrix.c'
source_filename = "tests/programs/matrix.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@a = internal unnamed_addr global [12 x [12 x i32]] zeroinitializer, align 4
@b = internal unnamed_addr global [12 x [12 x i32]] zeroinitializer, align 4
@fa = internal unnamed_addr global [12 x [12 x float]] zeroinitializer, align 4
@fb = internal unnamed_addr global [12 x [12 x float]] zeroinitializer, align 4
@fc = internal unnamed_addr global [12 x [12 x float]] zeroinitializer, align 4
@c = internal unnamed_addr global [12 x [12 x i32]] zeroinitializer, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define dso_local i32 @main() local_unnamed_addr #0 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.cond.cleanup3
  %s.0162 = phi i32 [ 7, %entry ], [ %add, %for.cond.cleanup3 ]
  %i.0161 = phi i32 [ 0, %entry ], [ %inc25, %for.cond.cleanup3 ]
  %arrayidx = getelementptr inbounds nuw [12 x i32], ptr @a, i32 %i.0161
  %arrayidx9 = getelementptr inbounds nuw [12 x i32], ptr @b, i32 %i.0161
  %arrayidx14 = getelementptr inbounds nuw [12 x float], ptr @fa, i32 %i.0161
  %arrayidx22 = getelementptr inbounds nuw [12 x float], ptr @fb, i32 %i.0161
  br label %for.body4

for.cond1.preheader.i:                            ; preds = %for.cond.cleanup3, %for.cond.cleanup3.i
  %i.033.i = phi i32 [ %inc18.i, %for.cond.cleanup3.i ], [ 0, %for.cond.cleanup3 ]
  %arrayidx.i = getelementptr inbounds nuw [12 x i32], ptr @a, i32 %i.033.i
  %arrayidx12.i = getelementptr inbounds nuw [12 x i32], ptr @c, i32 %i.033.i
  %.pre.i = load i32, ptr %arrayidx.i, align 4, !tbaa !6
  %arrayidx9.1.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i32 4
  %.pre35.i = load i32, ptr %arrayidx9.1.phi.trans.insert.i, align 4, !tbaa !6
  %arrayidx9.2.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i32 8
  %.pre36.i = load i32, ptr %arrayidx9.2.phi.trans.insert.i, align 4, !tbaa !6
  %arrayidx9.3.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i32 12
  %.pre37.i = load i32, ptr %arrayidx9.3.phi.trans.insert.i, align 4, !tbaa !6
  %arrayidx9.4.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i32 16
  %.pre38.i = load i32, ptr %arrayidx9.4.phi.trans.insert.i, align 4, !tbaa !6
  %arrayidx9.5.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i32 20
  %.pre39.i = load i32, ptr %arrayidx9.5.phi.trans.insert.i, align 4, !tbaa !6
  %arrayidx9.6.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i32 24
  %.pre40.i = load i32, ptr %arrayidx9.6.phi.trans.insert.i, align 4, !tbaa !6
  %arrayidx9.7.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i32 28
  %.pre41.i = load i32, ptr %arrayidx9.7.phi.trans.insert.i, align 4, !tbaa !6
  %arrayidx9.8.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i32 32
  %.pre42.i = load i32, ptr %arrayidx9.8.phi.trans.insert.i, align 4, !tbaa !6
  %arrayidx9.9.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i32 36
  %.pre43.i = load i32, ptr %arrayidx9.9.phi.trans.insert.i, align 4, !tbaa !6
  %arrayidx9.10.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i32 40
  %.pre44.i = load i32, ptr %arrayidx9.10.phi.trans.insert.i, align 4, !tbaa !6
  %arrayidx9.11.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i32 44
  %.pre45.i = load i32, ptr %arrayidx9.11.phi.trans.insert.i, align 4, !tbaa !6
  br label %for.cond5.preheader.i

for.cond5.preheader.i:                            ; preds = %for.cond5.preheader.i, %for.cond1.preheader.i
  %j.032.i = phi i32 [ 0, %for.cond1.preheader.i ], [ %inc15.i, %for.cond5.preheader.i ]
  %invariant.gep.i = getelementptr inbounds nuw i32, ptr @b, i32 %j.032.i
  %0 = load i32, ptr %invariant.gep.i, align 4, !tbaa !6
  %mul.i = mul nsw i32 %0, %.pre.i
  %gep.1.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i32 48
  %1 = load i32, ptr %gep.1.i, align 4, !tbaa !6
  %mul.1.i = mul nsw i32 %1, %.pre35.i
  %add.1.i = add nsw i32 %mul.1.i, %mul.i
  %gep.2.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i32 96
  %2 = load i32, ptr %gep.2.i, align 4, !tbaa !6
  %mul.2.i = mul nsw i32 %2, %.pre36.i
  %add.2.i = add nsw i32 %add.1.i, %mul.2.i
  %gep.3.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i32 144
  %3 = load i32, ptr %gep.3.i, align 4, !tbaa !6
  %mul.3.i = mul nsw i32 %3, %.pre37.i
  %add.3.i = add nsw i32 %add.2.i, %mul.3.i
  %gep.4.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i32 192
  %4 = load i32, ptr %gep.4.i, align 4, !tbaa !6
  %mul.4.i = mul nsw i32 %4, %.pre38.i
  %add.4.i = add nsw i32 %add.3.i, %mul.4.i
  %gep.5.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i32 240
  %5 = load i32, ptr %gep.5.i, align 4, !tbaa !6
  %mul.5.i = mul nsw i32 %5, %.pre39.i
  %add.5.i = add nsw i32 %add.4.i, %mul.5.i
  %gep.6.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i32 288
  %6 = load i32, ptr %gep.6.i, align 4, !tbaa !6
  %mul.6.i = mul nsw i32 %6, %.pre40.i
  %add.6.i = add nsw i32 %add.5.i, %mul.6.i
  %gep.7.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i32 336
  %7 = load i32, ptr %gep.7.i, align 4, !tbaa !6
  %mul.7.i = mul nsw i32 %7, %.pre41.i
  %add.7.i = add nsw i32 %add.6.i, %mul.7.i
  %gep.8.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i32 384
  %8 = load i32, ptr %gep.8.i, align 4, !tbaa !6
  %mul.8.i = mul nsw i32 %8, %.pre42.i
  %add.8.i = add nsw i32 %add.7.i, %mul.8.i
  %gep.9.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i32 432
  %9 = load i32, ptr %gep.9.i, align 4, !tbaa !6
  %mul.9.i = mul nsw i32 %9, %.pre43.i
  %add.9.i = add nsw i32 %add.8.i, %mul.9.i
  %gep.10.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i32 480
  %10 = load i32, ptr %gep.10.i, align 4, !tbaa !6
  %mul.10.i = mul nsw i32 %10, %.pre44.i
  %add.10.i = add nsw i32 %add.9.i, %mul.10.i
  %gep.11.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i32 528
  %11 = load i32, ptr %gep.11.i, align 4, !tbaa !6
  %mul.11.i = mul nsw i32 %11, %.pre45.i
  %add.11.i = add nsw i32 %add.10.i, %mul.11.i
  %arrayidx13.i = getelementptr inbounds nuw i32, ptr %arrayidx12.i, i32 %j.032.i
  store i32 %add.11.i, ptr %arrayidx13.i, align 4, !tbaa !6
  %inc15.i = add nuw nsw i32 %j.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc15.i, 12
  br i1 %exitcond.not.i, label %for.cond.cleanup3.i, label %for.cond5.preheader.i, !llvm.loop !10

for.cond.cleanup3.i:                              ; preds = %for.cond5.preheader.i
  %inc18.i = add nuw nsw i32 %i.033.i, 1
  %exitcond34.not.i = icmp eq i32 %inc18.i, 12
  br i1 %exitcond34.not.i, label %for.cond1.preheader.i98, label %for.cond1.preheader.i, !llvm.loop !12

for.cond1.preheader.i98:                          ; preds = %for.cond.cleanup3.i, %for.cond.cleanup3.i142
  %i.033.i99 = phi i32 [ %inc18.i143, %for.cond.cleanup3.i142 ], [ 0, %for.cond.cleanup3.i ]
  %arrayidx.i100 = getelementptr inbounds nuw [12 x float], ptr @fa, i32 %i.033.i99
  %arrayidx12.i101 = getelementptr inbounds nuw [12 x float], ptr @fc, i32 %i.033.i99
  %.pre.i102 = load float, ptr %arrayidx.i100, align 4, !tbaa !13
  %arrayidx9.1.phi.trans.insert.i103 = getelementptr inbounds nuw i8, ptr %arrayidx.i100, i32 4
  %.pre35.i104 = load float, ptr %arrayidx9.1.phi.trans.insert.i103, align 4, !tbaa !13
  %arrayidx9.2.phi.trans.insert.i105 = getelementptr inbounds nuw i8, ptr %arrayidx.i100, i32 8
  %.pre36.i106 = load float, ptr %arrayidx9.2.phi.trans.insert.i105, align 4, !tbaa !13
  %arrayidx9.3.phi.trans.insert.i107 = getelementptr inbounds nuw i8, ptr %arrayidx.i100, i32 12
  %.pre37.i108 = load float, ptr %arrayidx9.3.phi.trans.insert.i107, align 4, !tbaa !13
  %arrayidx9.4.phi.trans.insert.i109 = getelementptr inbounds nuw i8, ptr %arrayidx.i100, i32 16
  %.pre38.i110 = load float, ptr %arrayidx9.4.phi.trans.insert.i109, align 4, !tbaa !13
  %arrayidx9.5.phi.trans.insert.i111 = getelementptr inbounds nuw i8, ptr %arrayidx.i100, i32 20
  %.pre39.i112 = load float, ptr %arrayidx9.5.phi.trans.insert.i111, align 4, !tbaa !13
  %arrayidx9.6.phi.trans.insert.i113 = getelementptr inbounds nuw i8, ptr %arrayidx.i100, i32 24
  %.pre40.i114 = load float, ptr %arrayidx9.6.phi.trans.insert.i113, align 4, !tbaa !13
  %arrayidx9.7.phi.trans.insert.i115 = getelementptr inbounds nuw i8, ptr %arrayidx.i100, i32 28
  %.pre41.i116 = load float, ptr %arrayidx9.7.phi.trans.insert.i115, align 4, !tbaa !13
  %arrayidx9.8.phi.trans.insert.i117 = getelementptr inbounds nuw i8, ptr %arrayidx.i100, i32 32
  %.pre42.i118 = load float, ptr %arrayidx9.8.phi.trans.insert.i117, align 4, !tbaa !13
  %arrayidx9.9.phi.trans.insert.i119 = getelementptr inbounds nuw i8, ptr %arrayidx.i100, i32 36
  %.pre43.i120 = load float, ptr %arrayidx9.9.phi.trans.insert.i119, align 4, !tbaa !13
  %arrayidx9.10.phi.trans.insert.i121 = getelementptr inbounds nuw i8, ptr %arrayidx.i100, i32 40
  %.pre44.i122 = load float, ptr %arrayidx9.10.phi.trans.insert.i121, align 4, !tbaa !13
  %arrayidx9.11.phi.trans.insert.i123 = getelementptr inbounds nuw i8, ptr %arrayidx.i100, i32 44
  %.pre45.i124 = load float, ptr %arrayidx9.11.phi.trans.insert.i123, align 4, !tbaa !13
  br label %for.cond5.preheader.i125

for.cond5.preheader.i125:                         ; preds = %for.cond5.preheader.i125, %for.cond1.preheader.i98
  %j.032.i126 = phi i32 [ 0, %for.cond1.preheader.i98 ], [ %inc15.i140, %for.cond5.preheader.i125 ]
  %invariant.gep.i127 = getelementptr inbounds nuw float, ptr @fb, i32 %j.032.i126
  %12 = load float, ptr %invariant.gep.i127, align 4, !tbaa !13
  %13 = tail call float @llvm.fmuladd.f32(float %.pre.i102, float %12, float 0.000000e+00)
  %gep.1.i128 = getelementptr inbounds nuw i8, ptr %invariant.gep.i127, i32 48
  %14 = load float, ptr %gep.1.i128, align 4, !tbaa !13
  %15 = tail call float @llvm.fmuladd.f32(float %.pre35.i104, float %14, float %13)
  %gep.2.i129 = getelementptr inbounds nuw i8, ptr %invariant.gep.i127, i32 96
  %16 = load float, ptr %gep.2.i129, align 4, !tbaa !13
  %17 = tail call float @llvm.fmuladd.f32(float %.pre36.i106, float %16, float %15)
  %gep.3.i130 = getelementptr inbounds nuw i8, ptr %invariant.gep.i127, i32 144
  %18 = load float, ptr %gep.3.i130, align 4, !tbaa !13
  %19 = tail call float @llvm.fmuladd.f32(float %.pre37.i108, float %18, float %17)
  %gep.4.i131 = getelementptr inbounds nuw i8, ptr %invariant.gep.i127, i32 192
  %20 = load float, ptr %gep.4.i131, align 4, !tbaa !13
  %21 = tail call float @llvm.fmuladd.f32(float %.pre38.i110, float %20, float %19)
  %gep.5.i132 = getelementptr inbounds nuw i8, ptr %invariant.gep.i127, i32 240
  %22 = load float, ptr %gep.5.i132, align 4, !tbaa !13
  %23 = tail call float @llvm.fmuladd.f32(float %.pre39.i112, float %22, float %21)
  %gep.6.i133 = getelementptr inbounds nuw i8, ptr %invariant.gep.i127, i32 288
  %24 = load float, ptr %gep.6.i133, align 4, !tbaa !13
  %25 = tail call float @llvm.fmuladd.f32(float %.pre40.i114, float %24, float %23)
  %gep.7.i134 = getelementptr inbounds nuw i8, ptr %invariant.gep.i127, i32 336
  %26 = load float, ptr %gep.7.i134, align 4, !tbaa !13
  %27 = tail call float @llvm.fmuladd.f32(float %.pre41.i116, float %26, float %25)
  %gep.8.i135 = getelementptr inbounds nuw i8, ptr %invariant.gep.i127, i32 384
  %28 = load float, ptr %gep.8.i135, align 4, !tbaa !13
  %29 = tail call float @llvm.fmuladd.f32(float %.pre42.i118, float %28, float %27)
  %gep.9.i136 = getelementptr inbounds nuw i8, ptr %invariant.gep.i127, i32 432
  %30 = load float, ptr %gep.9.i136, align 4, !tbaa !13
  %31 = tail call float @llvm.fmuladd.f32(float %.pre43.i120, float %30, float %29)
  %gep.10.i137 = getelementptr inbounds nuw i8, ptr %invariant.gep.i127, i32 480
  %32 = load float, ptr %gep.10.i137, align 4, !tbaa !13
  %33 = tail call float @llvm.fmuladd.f32(float %.pre44.i122, float %32, float %31)
  %gep.11.i138 = getelementptr inbounds nuw i8, ptr %invariant.gep.i127, i32 528
  %34 = load float, ptr %gep.11.i138, align 4, !tbaa !13
  %35 = tail call float @llvm.fmuladd.f32(float %.pre45.i124, float %34, float %33)
  %arrayidx13.i139 = getelementptr inbounds nuw float, ptr %arrayidx12.i101, i32 %j.032.i126
  store float %35, ptr %arrayidx13.i139, align 4, !tbaa !13
  %inc15.i140 = add nuw nsw i32 %j.032.i126, 1
  %exitcond.not.i141 = icmp eq i32 %inc15.i140, 12
  br i1 %exitcond.not.i141, label %for.cond.cleanup3.i142, label %for.cond5.preheader.i125, !llvm.loop !15

for.cond.cleanup3.i142:                           ; preds = %for.cond5.preheader.i125
  %inc18.i143 = add nuw nsw i32 %i.033.i99, 1
  %exitcond34.not.i144 = icmp eq i32 %inc18.i143, 12
  br i1 %exitcond34.not.i144, label %for.body.i, label %for.cond1.preheader.i98, !llvm.loop !16

for.cond.loopexit.i:                              ; preds = %for.body4.i, %for.body.i
  %exitcond32.not.i = icmp eq i32 %add.i, 12
  br i1 %exitcond32.not.i, label %for.cond34.preheader, label %for.body.i, !llvm.loop !17

for.body.i:                                       ; preds = %for.cond.cleanup3.i142, %for.cond.loopexit.i
  %i.031.i = phi i32 [ %add.i, %for.cond.loopexit.i ], [ 0, %for.cond.cleanup3.i142 ]
  %add.i = add nuw nsw i32 %i.031.i, 1
  %invariant.gep.i145 = getelementptr inbounds nuw float, ptr @fc, i32 %i.031.i
  %cmp229.i = icmp samesign ult i32 %i.031.i, 11
  br i1 %cmp229.i, label %for.body4.lr.ph.i, label %for.cond.loopexit.i

for.body4.lr.ph.i:                                ; preds = %for.body.i
  %arrayidx.i146 = getelementptr inbounds nuw [12 x float], ptr @fc, i32 %i.031.i
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.body4.i, %for.body4.lr.ph.i
  %j.030.i = phi i32 [ %add.i, %for.body4.lr.ph.i ], [ %inc.i, %for.body4.i ]
  %arrayidx5.i = getelementptr inbounds nuw float, ptr %arrayidx.i146, i32 %j.030.i
  %36 = load float, ptr %arrayidx5.i, align 4, !tbaa !13
  %gep.i = getelementptr inbounds nuw [12 x float], ptr %invariant.gep.i145, i32 %j.030.i
  %37 = load float, ptr %gep.i, align 4, !tbaa !13
  store float %37, ptr %arrayidx5.i, align 4, !tbaa !13
  store float %36, ptr %gep.i, align 4, !tbaa !13
  %inc.i = add nuw nsw i32 %j.030.i, 1
  %exitcond.not.i147 = icmp eq i32 %inc.i, 12
  br i1 %exitcond.not.i147, label %for.cond.loopexit.i, label %for.body4.i, !llvm.loop !18

for.cond.cleanup3:                                ; preds = %for.body4
  %inc25 = add nuw nsw i32 %i.0161, 1
  %exitcond169.not = icmp eq i32 %inc25, 12
  br i1 %exitcond169.not, label %for.cond1.preheader.i, label %for.cond1.preheader, !llvm.loop !19

for.body4:                                        ; preds = %for.cond1.preheader, %for.body4
  %s.1160 = phi i32 [ %s.0162, %for.cond1.preheader ], [ %add, %for.body4 ]
  %j.0159 = phi i32 [ 0, %for.cond1.preheader ], [ %inc, %for.body4 ]
  %mul = mul i32 %s.1160, 1103515245
  %add = add i32 %mul, 12345
  %shr = lshr i32 %add, 20
  %rem.lhs.trunc = trunc nuw nsw i32 %shr to i16
  %rem158 = urem i16 %rem.lhs.trunc, 17
  %rem.zext = zext nneg i16 %rem158 to i32
  %sub = add nsw i32 %rem.zext, -8
  %arrayidx5 = getelementptr inbounds nuw i32, ptr %arrayidx, i32 %j.0159
  store i32 %sub, ptr %arrayidx5, align 4, !tbaa !6
  %shr6 = lshr i32 %add, 8
  %rem7 = urem i32 %shr6, 13
  %sub8 = add nsw i32 %rem7, -6
  %arrayidx10 = getelementptr inbounds nuw i32, ptr %arrayidx9, i32 %j.0159
  store i32 %sub8, ptr %arrayidx10, align 4, !tbaa !6
  %conv = sitofp i32 %sub to float
  %mul13 = fmul float %conv, 2.500000e-01
  %arrayidx15 = getelementptr inbounds nuw float, ptr %arrayidx14, i32 %j.0159
  store float %mul13, ptr %arrayidx15, align 4, !tbaa !13
  %conv18 = sitofp i32 %sub8 to float
  %cmp20 = icmp eq i32 %i.0161, %j.0159
  %cond = select i1 %cmp20, float 3.000000e+00, float 0.000000e+00
  %38 = tail call float @llvm.fmuladd.f32(float %conv18, float 5.000000e-01, float %cond)
  %arrayidx23 = getelementptr inbounds nuw float, ptr %arrayidx22, i32 %j.0159
  store float %38, ptr %arrayidx23, align 4, !tbaa !13
  %inc = add nuw nsw i32 %j.0159, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.cond.cleanup3, label %for.body4, !llvm.loop !20

for.cond34.preheader:                             ; preds = %for.cond.loopexit.i, %for.cond34.preheader
  %i27.0166 = phi i32 [ %inc51, %for.cond34.preheader ], [ 0, %for.cond.loopexit.i ]
  %h.0165 = phi i32 [ %xor.11, %for.cond34.preheader ], [ 0, %for.cond.loopexit.i ]
  %arrayidx40 = getelementptr inbounds nuw [12 x i32], ptr @c, i32 %i27.0166
  %arrayidx43 = getelementptr inbounds nuw [12 x float], ptr @fc, i32 %i27.0166
  %mul39 = mul i32 %h.0165, 33
  %39 = load i32, ptr %arrayidx40, align 4, !tbaa !6
  %add42 = add i32 %39, %mul39
  %40 = load float, ptr %arrayidx43, align 4, !tbaa !13
  %mul45 = fmul float %40, 1.600000e+01
  %conv46 = fptosi float %mul45 to i32
  %xor = xor i32 %add42, %conv46
  %mul39.1 = mul i32 %xor, 33
  %arrayidx41.1 = getelementptr inbounds nuw i8, ptr %arrayidx40, i32 4
  %41 = load i32, ptr %arrayidx41.1, align 4, !tbaa !6
  %add42.1 = add i32 %41, %mul39.1
  %arrayidx44.1 = getelementptr inbounds nuw i8, ptr %arrayidx43, i32 4
  %42 = load float, ptr %arrayidx44.1, align 4, !tbaa !13
  %mul45.1 = fmul float %42, 1.600000e+01
  %conv46.1 = fptosi float %mul45.1 to i32
  %xor.1 = xor i32 %add42.1, %conv46.1
  %mul39.2 = mul i32 %xor.1, 33
  %arrayidx41.2 = getelementptr inbounds nuw i8, ptr %arrayidx40, i32 8
  %43 = load i32, ptr %arrayidx41.2, align 4, !tbaa !6
  %add42.2 = add i32 %43, %mul39.2
  %arrayidx44.2 = getelementptr inbounds nuw i8, ptr %arrayidx43, i32 8
  %44 = load float, ptr %arrayidx44.2, align 4, !tbaa !13
  %mul45.2 = fmul float %44, 1.600000e+01
  %conv46.2 = fptosi float %mul45.2 to i32
  %xor.2 = xor i32 %add42.2, %conv46.2
  %mul39.3 = mul i32 %xor.2, 33
  %arrayidx41.3 = getelementptr inbounds nuw i8, ptr %arrayidx40, i32 12
  %45 = load i32, ptr %arrayidx41.3, align 4, !tbaa !6
  %add42.3 = add i32 %45, %mul39.3
  %arrayidx44.3 = getelementptr inbounds nuw i8, ptr %arrayidx43, i32 12
  %46 = load float, ptr %arrayidx44.3, align 4, !tbaa !13
  %mul45.3 = fmul float %46, 1.600000e+01
  %conv46.3 = fptosi float %mul45.3 to i32
  %xor.3 = xor i32 %add42.3, %conv46.3
  %mul39.4 = mul i32 %xor.3, 33
  %arrayidx41.4 = getelementptr inbounds nuw i8, ptr %arrayidx40, i32 16
  %47 = load i32, ptr %arrayidx41.4, align 4, !tbaa !6
  %add42.4 = add i32 %47, %mul39.4
  %arrayidx44.4 = getelementptr inbounds nuw i8, ptr %arrayidx43, i32 16
  %48 = load float, ptr %arrayidx44.4, align 4, !tbaa !13
  %mul45.4 = fmul float %48, 1.600000e+01
  %conv46.4 = fptosi float %mul45.4 to i32
  %xor.4 = xor i32 %add42.4, %conv46.4
  %mul39.5 = mul i32 %xor.4, 33
  %arrayidx41.5 = getelementptr inbounds nuw i8, ptr %arrayidx40, i32 20
  %49 = load i32, ptr %arrayidx41.5, align 4, !tbaa !6
  %add42.5 = add i32 %49, %mul39.5
  %arrayidx44.5 = getelementptr inbounds nuw i8, ptr %arrayidx43, i32 20
  %50 = load float, ptr %arrayidx44.5, align 4, !tbaa !13
  %mul45.5 = fmul float %50, 1.600000e+01
  %conv46.5 = fptosi float %mul45.5 to i32
  %xor.5 = xor i32 %add42.5, %conv46.5
  %mul39.6 = mul i32 %xor.5, 33
  %arrayidx41.6 = getelementptr inbounds nuw i8, ptr %arrayidx40, i32 24
  %51 = load i32, ptr %arrayidx41.6, align 4, !tbaa !6
  %add42.6 = add i32 %51, %mul39.6
  %arrayidx44.6 = getelementptr inbounds nuw i8, ptr %arrayidx43, i32 24
  %52 = load float, ptr %arrayidx44.6, align 4, !tbaa !13
  %mul45.6 = fmul float %52, 1.600000e+01
  %conv46.6 = fptosi float %mul45.6 to i32
  %xor.6 = xor i32 %add42.6, %conv46.6
  %mul39.7 = mul i32 %xor.6, 33
  %arrayidx41.7 = getelementptr inbounds nuw i8, ptr %arrayidx40, i32 28
  %53 = load i32, ptr %arrayidx41.7, align 4, !tbaa !6
  %add42.7 = add i32 %53, %mul39.7
  %arrayidx44.7 = getelementptr inbounds nuw i8, ptr %arrayidx43, i32 28
  %54 = load float, ptr %arrayidx44.7, align 4, !tbaa !13
  %mul45.7 = fmul float %54, 1.600000e+01
  %conv46.7 = fptosi float %mul45.7 to i32
  %xor.7 = xor i32 %add42.7, %conv46.7
  %mul39.8 = mul i32 %xor.7, 33
  %arrayidx41.8 = getelementptr inbounds nuw i8, ptr %arrayidx40, i32 32
  %55 = load i32, ptr %arrayidx41.8, align 4, !tbaa !6
  %add42.8 = add i32 %55, %mul39.8
  %arrayidx44.8 = getelementptr inbounds nuw i8, ptr %arrayidx43, i32 32
  %56 = load float, ptr %arrayidx44.8, align 4, !tbaa !13
  %mul45.8 = fmul float %56, 1.600000e+01
  %conv46.8 = fptosi float %mul45.8 to i32
  %xor.8 = xor i32 %add42.8, %conv46.8
  %mul39.9 = mul i32 %xor.8, 33
  %arrayidx41.9 = getelementptr inbounds nuw i8, ptr %arrayidx40, i32 36
  %57 = load i32, ptr %arrayidx41.9, align 4, !tbaa !6
  %add42.9 = add i32 %57, %mul39.9
  %arrayidx44.9 = getelementptr inbounds nuw i8, ptr %arrayidx43, i32 36
  %58 = load float, ptr %arrayidx44.9, align 4, !tbaa !13
  %mul45.9 = fmul float %58, 1.600000e+01
  %conv46.9 = fptosi float %mul45.9 to i32
  %xor.9 = xor i32 %add42.9, %conv46.9
  %mul39.10 = mul i32 %xor.9, 33
  %arrayidx41.10 = getelementptr inbounds nuw i8, ptr %arrayidx40, i32 40
  %59 = load i32, ptr %arrayidx41.10, align 4, !tbaa !6
  %add42.10 = add i32 %59, %mul39.10
  %arrayidx44.10 = getelementptr inbounds nuw i8, ptr %arrayidx43, i32 40
  %60 = load float, ptr %arrayidx44.10, align 4, !tbaa !13
  %mul45.10 = fmul float %60, 1.600000e+01
  %conv46.10 = fptosi float %mul45.10 to i32
  %xor.10 = xor i32 %add42.10, %conv46.10
  %mul39.11 = mul i32 %xor.10, 33
  %arrayidx41.11 = getelementptr inbounds nuw i8, ptr %arrayidx40, i32 44
  %61 = load i32, ptr %arrayidx41.11, align 4, !tbaa !6
  %add42.11 = add i32 %61, %mul39.11
  %arrayidx44.11 = getelementptr inbounds nuw i8, ptr %arrayidx43, i32 44
  %62 = load float, ptr %arrayidx44.11, align 4, !tbaa !13
  %mul45.11 = fmul float %62, 1.600000e+01
  %conv46.11 = fptosi float %mul45.11 to i32
  %xor.11 = xor i32 %add42.11, %conv46.11
  %inc51 = add nuw nsw i32 %i27.0166, 1
  %exitcond171.not = icmp eq i32 %inc51, 12
  br i1 %exitcond171.not, label %for.body.i148, label %for.cond34.preheader, !llvm.loop !21

for.cond.loopexit.i153:                           ; preds = %for.cond.cleanup47.i, %if.end31.i
  %exitcond132.i = icmp eq i32 %add.i149, 12
  br i1 %exitcond132.i, label %det.exit, label %for.body.i148, !llvm.loop !22

for.body.i148:                                    ; preds = %for.cond34.preheader, %for.cond.loopexit.i153
  %d.0128.i = phi float [ %mul.i152, %for.cond.loopexit.i153 ], [ 1.000000e+00, %for.cond34.preheader ]
  %col.0127.i = phi i32 [ %add.i149, %for.cond.loopexit.i153 ], [ 0, %for.cond34.preheader ]
  %add.i149 = add nuw nsw i32 %col.0127.i, 1
  %invariant.gep.i150 = getelementptr float, ptr @fb, i32 %col.0127.i
  %cmp2119.i = icmp samesign ult i32 %col.0127.i, 11
  br i1 %cmp2119.i, label %for.body4.i154, label %for.cond.cleanup3.i151

for.cond.cleanup3.i151:                           ; preds = %for.body4.i154, %for.body.i148
  %piv.0.lcssa.i = phi i32 [ %col.0127.i, %for.body.i148 ], [ %piv.1.i, %for.body4.i154 ]
  %arrayidx9.i = getelementptr inbounds nuw [12 x float], ptr @fb, i32 %piv.0.lcssa.i
  %arrayidx10.i = getelementptr inbounds nuw float, ptr %arrayidx9.i, i32 %col.0127.i
  %63 = load float, ptr %arrayidx10.i, align 4, !tbaa !13
  %cmp11.i = fcmp une float %63, 0.000000e+00
  br i1 %cmp11.i, label %if.end13.i, label %det.exit

for.body4.i154:                                   ; preds = %for.body.i148, %for.body4.i154
  %r.0121.i = phi i32 [ %inc.i156, %for.body4.i154 ], [ %add.i149, %for.body.i148 ]
  %piv.0120.i = phi i32 [ %piv.1.i, %for.body4.i154 ], [ %col.0127.i, %for.body.i148 ]
  %gep.i155 = getelementptr inbounds nuw [12 x float], ptr %invariant.gep.i150, i32 %r.0121.i
  %64 = load float, ptr %gep.i155, align 4, !tbaa !13
  %65 = tail call float @llvm.fabs.f32(float %64)
  %gep118.i = getelementptr [12 x float], ptr %invariant.gep.i150, i32 %piv.0120.i
  %66 = load float, ptr %gep118.i, align 4, !tbaa !13
  %67 = tail call float @llvm.fabs.f32(float %66)
  %cmp8.i = fcmp ogt float %65, %67
  %piv.1.i = select i1 %cmp8.i, i32 %r.0121.i, i32 %piv.0120.i
  %inc.i156 = add nuw nsw i32 %r.0121.i, 1
  %exitcond.not.i157 = icmp eq i32 %inc.i156, 12
  br i1 %exitcond.not.i157, label %for.cond.cleanup3.i151, label %for.body4.i154, !llvm.loop !23

if.end13.i:                                       ; preds = %for.cond.cleanup3.i151
  %cmp14.not.i = icmp eq i32 %piv.0.lcssa.i, %col.0127.i
  br i1 %cmp14.not.i, label %if.end31.i, label %for.cond16.preheader.i

for.cond16.preheader.i:                           ; preds = %if.end13.i
  %arrayidx20.i = getelementptr inbounds nuw [12 x float], ptr @fb, i32 %col.0127.i
  %68 = load float, ptr %arrayidx20.i, align 4, !tbaa !13
  %69 = load float, ptr %arrayidx9.i, align 4, !tbaa !13
  store float %69, ptr %arrayidx20.i, align 4, !tbaa !13
  store float %68, ptr %arrayidx9.i, align 4, !tbaa !13
  %arrayidx21.1.i = getelementptr inbounds nuw i8, ptr %arrayidx20.i, i32 4
  %70 = load float, ptr %arrayidx21.1.i, align 4, !tbaa !13
  %arrayidx23.1.i = getelementptr inbounds nuw i8, ptr %arrayidx9.i, i32 4
  %71 = load float, ptr %arrayidx23.1.i, align 4, !tbaa !13
  store float %71, ptr %arrayidx21.1.i, align 4, !tbaa !13
  store float %70, ptr %arrayidx23.1.i, align 4, !tbaa !13
  %arrayidx21.2.i = getelementptr inbounds nuw i8, ptr %arrayidx20.i, i32 8
  %72 = load float, ptr %arrayidx21.2.i, align 4, !tbaa !13
  %arrayidx23.2.i = getelementptr inbounds nuw i8, ptr %arrayidx9.i, i32 8
  %73 = load float, ptr %arrayidx23.2.i, align 4, !tbaa !13
  store float %73, ptr %arrayidx21.2.i, align 4, !tbaa !13
  store float %72, ptr %arrayidx23.2.i, align 4, !tbaa !13
  %arrayidx21.3.i = getelementptr inbounds nuw i8, ptr %arrayidx20.i, i32 12
  %74 = load float, ptr %arrayidx21.3.i, align 4, !tbaa !13
  %arrayidx23.3.i = getelementptr inbounds nuw i8, ptr %arrayidx9.i, i32 12
  %75 = load float, ptr %arrayidx23.3.i, align 4, !tbaa !13
  store float %75, ptr %arrayidx21.3.i, align 4, !tbaa !13
  store float %74, ptr %arrayidx23.3.i, align 4, !tbaa !13
  %arrayidx21.4.i = getelementptr inbounds nuw i8, ptr %arrayidx20.i, i32 16
  %76 = load float, ptr %arrayidx21.4.i, align 4, !tbaa !13
  %arrayidx23.4.i = getelementptr inbounds nuw i8, ptr %arrayidx9.i, i32 16
  %77 = load float, ptr %arrayidx23.4.i, align 4, !tbaa !13
  store float %77, ptr %arrayidx21.4.i, align 4, !tbaa !13
  store float %76, ptr %arrayidx23.4.i, align 4, !tbaa !13
  %arrayidx21.5.i = getelementptr inbounds nuw i8, ptr %arrayidx20.i, i32 20
  %78 = load float, ptr %arrayidx21.5.i, align 4, !tbaa !13
  %arrayidx23.5.i = getelementptr inbounds nuw i8, ptr %arrayidx9.i, i32 20
  %79 = load float, ptr %arrayidx23.5.i, align 4, !tbaa !13
  store float %79, ptr %arrayidx21.5.i, align 4, !tbaa !13
  store float %78, ptr %arrayidx23.5.i, align 4, !tbaa !13
  %arrayidx21.6.i = getelementptr inbounds nuw i8, ptr %arrayidx20.i, i32 24
  %80 = load float, ptr %arrayidx21.6.i, align 4, !tbaa !13
  %arrayidx23.6.i = getelementptr inbounds nuw i8, ptr %arrayidx9.i, i32 24
  %81 = load float, ptr %arrayidx23.6.i, align 4, !tbaa !13
  store float %81, ptr %arrayidx21.6.i, align 4, !tbaa !13
  store float %80, ptr %arrayidx23.6.i, align 4, !tbaa !13
  %arrayidx21.7.i = getelementptr inbounds nuw i8, ptr %arrayidx20.i, i32 28
  %82 = load float, ptr %arrayidx21.7.i, align 4, !tbaa !13
  %arrayidx23.7.i = getelementptr inbounds nuw i8, ptr %arrayidx9.i, i32 28
  %83 = load float, ptr %arrayidx23.7.i, align 4, !tbaa !13
  store float %83, ptr %arrayidx21.7.i, align 4, !tbaa !13
  store float %82, ptr %arrayidx23.7.i, align 4, !tbaa !13
  %arrayidx21.8.i = getelementptr inbounds nuw i8, ptr %arrayidx20.i, i32 32
  %84 = load float, ptr %arrayidx21.8.i, align 4, !tbaa !13
  %arrayidx23.8.i = getelementptr inbounds nuw i8, ptr %arrayidx9.i, i32 32
  %85 = load float, ptr %arrayidx23.8.i, align 4, !tbaa !13
  store float %85, ptr %arrayidx21.8.i, align 4, !tbaa !13
  store float %84, ptr %arrayidx23.8.i, align 4, !tbaa !13
  %arrayidx21.9.i = getelementptr inbounds nuw i8, ptr %arrayidx20.i, i32 36
  %86 = load float, ptr %arrayidx21.9.i, align 4, !tbaa !13
  %arrayidx23.9.i = getelementptr inbounds nuw i8, ptr %arrayidx9.i, i32 36
  %87 = load float, ptr %arrayidx23.9.i, align 4, !tbaa !13
  store float %87, ptr %arrayidx21.9.i, align 4, !tbaa !13
  store float %86, ptr %arrayidx23.9.i, align 4, !tbaa !13
  %arrayidx21.10.i = getelementptr inbounds nuw i8, ptr %arrayidx20.i, i32 40
  %88 = load float, ptr %arrayidx21.10.i, align 4, !tbaa !13
  %arrayidx23.10.i = getelementptr inbounds nuw i8, ptr %arrayidx9.i, i32 40
  %89 = load float, ptr %arrayidx23.10.i, align 4, !tbaa !13
  store float %89, ptr %arrayidx21.10.i, align 4, !tbaa !13
  store float %88, ptr %arrayidx23.10.i, align 4, !tbaa !13
  %arrayidx21.11.i = getelementptr inbounds nuw i8, ptr %arrayidx20.i, i32 44
  %90 = load float, ptr %arrayidx21.11.i, align 4, !tbaa !13
  %arrayidx23.11.i = getelementptr inbounds nuw i8, ptr %arrayidx9.i, i32 44
  %91 = load float, ptr %arrayidx23.11.i, align 4, !tbaa !13
  store float %91, ptr %arrayidx21.11.i, align 4, !tbaa !13
  store float %90, ptr %arrayidx23.11.i, align 4, !tbaa !13
  %fneg.i = fneg float %d.0128.i
  br label %if.end31.i

if.end31.i:                                       ; preds = %for.cond16.preheader.i, %if.end13.i
  %d.1.i = phi float [ %fneg.i, %for.cond16.preheader.i ], [ %d.0128.i, %if.end13.i ]
  %arrayidx32.i = getelementptr inbounds nuw [12 x float], ptr @fb, i32 %col.0127.i
  %arrayidx33.i = getelementptr inbounds nuw float, ptr %arrayidx32.i, i32 %col.0127.i
  %92 = load float, ptr %arrayidx33.i, align 4, !tbaa !13
  %mul.i152 = fmul float %d.1.i, %92
  br i1 %cmp2119.i, label %for.body39.i, label %for.cond.loopexit.i153

for.body39.i:                                     ; preds = %if.end31.i, %for.cond.cleanup47.i
  %r34.0126.i = phi i32 [ %inc58.i, %for.cond.cleanup47.i ], [ %add.i149, %if.end31.i ]
  %arrayidx40.i = getelementptr inbounds nuw [12 x float], ptr @fb, i32 %r34.0126.i
  %arrayidx41.i = getelementptr inbounds nuw float, ptr %arrayidx40.i, i32 %col.0127.i
  %93 = load float, ptr %arrayidx41.i, align 4, !tbaa !13
  %94 = load float, ptr %arrayidx33.i, align 4, !tbaa !13
  %95 = fneg float %93
  %neg.i = fdiv float %95, %94
  br label %for.body48.i

for.cond.cleanup47.i:                             ; preds = %for.body48.i
  %inc58.i = add nuw nsw i32 %r34.0126.i, 1
  %exitcond131.not.i = icmp eq i32 %inc58.i, 12
  br i1 %exitcond131.not.i, label %for.cond.loopexit.i153, label %for.body39.i, !llvm.loop !24

for.body48.i:                                     ; preds = %for.body48.i, %for.body39.i
  %k44.0124.i = phi i32 [ %col.0127.i, %for.body39.i ], [ %inc55.i, %for.body48.i ]
  %arrayidx50.i = getelementptr inbounds nuw float, ptr %arrayidx32.i, i32 %k44.0124.i
  %96 = load float, ptr %arrayidx50.i, align 4, !tbaa !13
  %arrayidx53.i = getelementptr inbounds nuw float, ptr %arrayidx40.i, i32 %k44.0124.i
  %97 = load float, ptr %arrayidx53.i, align 4, !tbaa !13
  %98 = tail call float @llvm.fmuladd.f32(float %neg.i, float %96, float %97)
  store float %98, ptr %arrayidx53.i, align 4, !tbaa !13
  %inc55.i = add nuw nsw i32 %k44.0124.i, 1
  %exitcond130.not.i = icmp eq i32 %inc55.i, 12
  br i1 %exitcond130.not.i, label %for.cond.cleanup47.i, label %for.body48.i, !llvm.loop !25

det.exit:                                         ; preds = %for.cond.loopexit.i153, %for.cond.cleanup3.i151
  %spec.select.i = phi float [ 0.000000e+00, %for.cond.cleanup3.i151 ], [ %mul.i152, %for.cond.loopexit.i153 ]
  %99 = load float, ptr @fc, align 4, !tbaa !13
  %add61 = fadd float %99, 0.000000e+00
  %100 = load float, ptr getelementptr inbounds nuw (i8, ptr @fc, i32 52), align 4, !tbaa !13
  %add61.1 = fadd float %add61, %100
  %101 = load float, ptr getelementptr inbounds nuw (i8, ptr @fc, i32 104), align 4, !tbaa !13
  %add61.2 = fadd float %add61.1, %101
  %102 = load float, ptr getelementptr inbounds nuw (i8, ptr @fc, i32 156), align 4, !tbaa !13
  %add61.3 = fadd float %add61.2, %102
  %103 = load float, ptr getelementptr inbounds nuw (i8, ptr @fc, i32 208), align 4, !tbaa !13
  %add61.4 = fadd float %add61.3, %103
  %104 = load float, ptr getelementptr inbounds nuw (i8, ptr @fc, i32 260), align 4, !tbaa !13
  %add61.5 = fadd float %add61.4, %104
  %105 = load float, ptr getelementptr inbounds nuw (i8, ptr @fc, i32 312), align 4, !tbaa !13
  %add61.6 = fadd float %add61.5, %105
  %106 = load float, ptr getelementptr inbounds nuw (i8, ptr @fc, i32 364), align 4, !tbaa !13
  %add61.7 = fadd float %add61.6, %106
  %107 = load float, ptr getelementptr inbounds nuw (i8, ptr @fc, i32 416), align 4, !tbaa !13
  %add61.8 = fadd float %add61.7, %107
  %108 = load float, ptr getelementptr inbounds nuw (i8, ptr @fc, i32 468), align 4, !tbaa !13
  %add61.9 = fadd float %add61.8, %108
  %109 = load float, ptr getelementptr inbounds nuw (i8, ptr @fc, i32 520), align 4, !tbaa !13
  %add61.10 = fadd float %add61.9, %109
  %110 = load float, ptr getelementptr inbounds nuw (i8, ptr @fc, i32 572), align 4, !tbaa !13
  %add61.11 = fadd float %add61.10, %110
  %111 = bitcast float %spec.select.i to i32
  %112 = bitcast float %add61.11 to i32
  %shr66 = lshr i32 %112, 3
  %113 = xor i32 %shr66, %111
  %xor67 = xor i32 %113, %xor.11
  ret i32 %xor67
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem0: none, target_mem1: none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"ilp32f"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv32i2p1_m2p0_f2p2_zicsr2p0_zmmul1p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 0}
!5 = !{!"clang version 22.1.8"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = !{!14, !14, i64 0}
!14 = !{!"float", !8, i64 0}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
