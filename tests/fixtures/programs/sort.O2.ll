; ModuleID = 'tests/programs/sort.c'
source_filename = "tests/programs/sort.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@z = internal unnamed_addr global [300 x i32] zeroinitializer, align 4
@y = internal unnamed_addr global [300 x i32] zeroinitializer, align 4
@x = internal unnamed_addr global [300 x i32] zeroinitializer, align 4
@seed = internal unnamed_addr global i32 12345, align 4

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define dso_local i32 @main() local_unnamed_addr #0 {
entry:
  %seed.promoted = load i32, ptr @seed, align 4, !tbaa !6
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body
  store i32 %xor3.i, ptr @seed, align 4, !tbaa !6
  tail call fastcc void @quick(i32 noundef 0, i32 noundef 299) #2
  br label %for.body.i

for.body.i:                                       ; preds = %while.end.i, %for.cond.cleanup
  %i.024.i = phi i32 [ 1, %for.cond.cleanup ], [ %inc.i, %while.end.i ]
  %arrayidx.i = getelementptr inbounds nuw i32, ptr @y, i32 %i.024.i
  %0 = load i32, ptr %arrayidx.i, align 4, !tbaa !6
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i, %for.body.i
  %j.0.in22.i = phi i32 [ %i.024.i, %for.body.i ], [ %j.023.i, %while.body.i ]
  %j.023.i = add nsw i32 %j.0.in22.i, -1
  %arrayidx2.i = getelementptr inbounds nuw i32, ptr @y, i32 %j.023.i
  %1 = load i32, ptr %arrayidx2.i, align 4, !tbaa !6
  %cmp3.i = icmp sgt i32 %1, %0
  br i1 %cmp3.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %land.rhs.i
  %arrayidx5.i = getelementptr inbounds nuw i32, ptr @y, i32 %j.0.in22.i
  store i32 %1, ptr %arrayidx5.i, align 4, !tbaa !6
  %cmp1.i = icmp sgt i32 %j.0.in22.i, 1
  br i1 %cmp1.i, label %land.rhs.i, label %while.end.i, !llvm.loop !10

while.end.i:                                      ; preds = %while.body.i, %land.rhs.i
  %j.0.in.lcssa.i = phi i32 [ 0, %while.body.i ], [ %j.0.in22.i, %land.rhs.i ]
  %arrayidx7.i = getelementptr inbounds i32, ptr @y, i32 %j.0.in.lcssa.i
  store i32 %0, ptr %arrayidx7.i, align 4, !tbaa !6
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 300
  br i1 %exitcond.not.i, label %if.end.i.i.preheader, label %for.body.i, !llvm.loop !12

if.end.i.i.preheader:                             ; preds = %while.end.i, %sift.exit.i
  %i.051.i = phi i32 [ %dec.i, %sift.exit.i ], [ 149, %while.end.i ]
  %arrayidx1.i.i.phi.trans.insert = getelementptr inbounds nuw i32, ptr @z, i32 %i.051.i
  %.pre = load i32, ptr %arrayidx1.i.i.phi.trans.insert, align 4, !tbaa !6
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end.i.i.preheader, %cleanup.i.i
  %i.addr.0.i.i54 = phi i32 [ %m.1.i.i, %cleanup.i.i ], [ %i.051.i, %if.end.i.i.preheader ]
  %mul.i.i55 = shl nuw nsw i32 %i.addr.0.i.i54, 1
  %add.i.i = or disjoint i32 %mul.i.i55, 1
  %arrayidx.i.i = getelementptr inbounds nuw i32, ptr @z, i32 %add.i.i
  %2 = load i32, ptr %arrayidx.i.i, align 4, !tbaa !6
  %arrayidx1.i.i = getelementptr inbounds nuw i32, ptr @z, i32 %i.addr.0.i.i54
  %cmp2.i.i = icmp sgt i32 %2, %.pre
  %spec.select.i.i = select i1 %cmp2.i.i, i32 %add.i.i, i32 %i.addr.0.i.i54
  %cmp4.i.not.i = icmp eq i32 %i.addr.0.i.i54, 149
  br i1 %cmp4.i.not.i, label %if.end12.i.i, label %land.lhs.true5.i.i

land.lhs.true5.i.i:                               ; preds = %if.end.i.i
  %add3.i.i = add nuw nsw i32 %mul.i.i55, 2
  %arrayidx7.i.i = getelementptr inbounds nuw i32, ptr @z, i32 %add3.i.i
  %3 = load i32, ptr %arrayidx7.i.i, align 4, !tbaa !6
  %arrayidx8.i.i = getelementptr inbounds nuw i32, ptr @z, i32 %spec.select.i.i
  %4 = load i32, ptr %arrayidx8.i.i, align 4, !tbaa !6
  %cmp9.i.i = icmp sgt i32 %3, %4
  %spec.select43.i.i = select i1 %cmp9.i.i, i32 %add3.i.i, i32 %spec.select.i.i
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %land.lhs.true5.i.i, %if.end.i.i
  %m.1.i.i = phi i32 [ %spec.select.i.i, %if.end.i.i ], [ %spec.select43.i.i, %land.lhs.true5.i.i ]
  %cmp13.i.i = icmp eq i32 %m.1.i.i, %i.addr.0.i.i54
  br i1 %cmp13.i.i, label %sift.exit.i, label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end12.i.i
  %arrayidx17.i.i = getelementptr inbounds nuw i32, ptr @z, i32 %m.1.i.i
  %5 = load i32, ptr %arrayidx17.i.i, align 4, !tbaa !6
  store i32 %5, ptr %arrayidx1.i.i, align 4, !tbaa !6
  store i32 %.pre, ptr %arrayidx17.i.i, align 4, !tbaa !6
  %cmp.i.i = icmp ult i32 %m.1.i.i, 150
  br i1 %cmp.i.i, label %if.end.i.i, label %sift.exit.i

sift.exit.i:                                      ; preds = %cleanup.i.i, %if.end12.i.i
  %dec.i = add nsw i32 %i.051.i, -1
  %cmp.not.i = icmp eq i32 %i.051.i, 0
  br i1 %cmp.not.i, label %for.body5.i, label %if.end.i.i.preheader, !llvm.loop !13

for.body5.i:                                      ; preds = %sift.exit.i, %sift.exit50.i
  %k.052.i = phi i32 [ %dec10.i, %sift.exit50.i ], [ 299, %sift.exit.i ]
  %6 = load i32, ptr @z, align 4, !tbaa !6
  %arrayidx6.i = getelementptr inbounds nuw i32, ptr @z, i32 %k.052.i
  %7 = load i32, ptr %arrayidx6.i, align 4, !tbaa !6
  store i32 %7, ptr @z, align 4, !tbaa !6
  store i32 %6, ptr %arrayidx6.i, align 4, !tbaa !6
  br label %for.cond.i25.i

for.cond.i25.i:                                   ; preds = %cleanup.i37.i, %for.body5.i
  %i.addr.0.i26.i = phi i32 [ 0, %for.body5.i ], [ %m.1.i35.i, %cleanup.i37.i ]
  %mul.i27.i = shl nuw nsw i32 %i.addr.0.i26.i, 1
  %add.i28.i = or disjoint i32 %mul.i27.i, 1
  %cmp.i29.i = icmp samesign ult i32 %add.i28.i, %k.052.i
  br i1 %cmp.i29.i, label %land.lhs.true.i45.i, label %if.end.i30.i

land.lhs.true.i45.i:                              ; preds = %for.cond.i25.i
  %arrayidx.i46.i = getelementptr inbounds nuw i32, ptr @z, i32 %add.i28.i
  %8 = load i32, ptr %arrayidx.i46.i, align 4, !tbaa !6
  %arrayidx1.i47.i = getelementptr inbounds nuw i32, ptr @z, i32 %i.addr.0.i26.i
  %9 = load i32, ptr %arrayidx1.i47.i, align 4, !tbaa !6
  %cmp2.i48.i = icmp sgt i32 %8, %9
  %spec.select.i49.i = select i1 %cmp2.i48.i, i32 %add.i28.i, i32 %i.addr.0.i26.i
  br label %if.end.i30.i

if.end.i30.i:                                     ; preds = %land.lhs.true.i45.i, %for.cond.i25.i
  %m.0.i31.i = phi i32 [ %i.addr.0.i26.i, %for.cond.i25.i ], [ %spec.select.i49.i, %land.lhs.true.i45.i ]
  %add3.i32.i = add nuw nsw i32 %mul.i27.i, 2
  %cmp4.i33.i = icmp samesign ult i32 %add3.i32.i, %k.052.i
  br i1 %cmp4.i33.i, label %land.lhs.true5.i40.i, label %if.end12.i34.i

land.lhs.true5.i40.i:                             ; preds = %if.end.i30.i
  %arrayidx7.i41.i = getelementptr inbounds nuw i32, ptr @z, i32 %add3.i32.i
  %10 = load i32, ptr %arrayidx7.i41.i, align 4, !tbaa !6
  %arrayidx8.i42.i = getelementptr inbounds nuw i32, ptr @z, i32 %m.0.i31.i
  %11 = load i32, ptr %arrayidx8.i42.i, align 4, !tbaa !6
  %cmp9.i43.i = icmp sgt i32 %10, %11
  %spec.select43.i44.i = select i1 %cmp9.i43.i, i32 %add3.i32.i, i32 %m.0.i31.i
  br label %if.end12.i34.i

if.end12.i34.i:                                   ; preds = %land.lhs.true5.i40.i, %if.end.i30.i
  %m.1.i35.i = phi i32 [ %m.0.i31.i, %if.end.i30.i ], [ %spec.select43.i44.i, %land.lhs.true5.i40.i ]
  %cmp13.i36.i = icmp eq i32 %m.1.i35.i, %i.addr.0.i26.i
  br i1 %cmp13.i36.i, label %sift.exit50.i, label %cleanup.i37.i

cleanup.i37.i:                                    ; preds = %if.end12.i34.i
  %arrayidx16.i38.i = getelementptr inbounds nuw i32, ptr @z, i32 %i.addr.0.i26.i
  %12 = load i32, ptr %arrayidx16.i38.i, align 4, !tbaa !6
  %arrayidx17.i39.i = getelementptr inbounds nuw i32, ptr @z, i32 %m.1.i35.i
  %13 = load i32, ptr %arrayidx17.i39.i, align 4, !tbaa !6
  store i32 %13, ptr %arrayidx16.i38.i, align 4, !tbaa !6
  store i32 %12, ptr %arrayidx17.i39.i, align 4, !tbaa !6
  br label %for.cond.i25.i

sift.exit50.i:                                    ; preds = %if.end12.i34.i
  %dec10.i = add nsw i32 %k.052.i, -1
  %cmp3.i44 = icmp samesign ugt i32 %k.052.i, 1
  br i1 %cmp3.i44, label %for.body5.i, label %for.body7.preheader, !llvm.loop !14

for.body7.preheader:                              ; preds = %sift.exit50.i
  %14 = load i32, ptr @x, align 4, !tbaa !6
  %15 = load i32, ptr @y, align 4, !tbaa !6
  %cmp10.not.peel = icmp eq i32 %14, %15
  %16 = load i32, ptr @z, align 4
  %cmp13.not.peel = icmp eq i32 %14, %16
  %or.cond = select i1 %cmp10.not.peel, i1 %cmp13.not.peel, i1 false
  br i1 %or.cond, label %for.body7, label %cleanup

for.body:                                         ; preds = %entry, %for.body
  %i.051 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %xor3.i4950 = phi i32 [ %seed.promoted, %entry ], [ %xor3.i, %for.body ]
  %shl.i = shl i32 %xor3.i4950, 13
  %xor.i = xor i32 %shl.i, %xor3.i4950
  %shr.i = lshr i32 %xor.i, 17
  %xor1.i = xor i32 %shr.i, %xor.i
  %shl2.i = shl i32 %xor1.i, 5
  %xor3.i = xor i32 %shl2.i, %xor1.i
  %rem = urem i32 %xor3.i, 2001
  %sub = add nsw i32 %rem, -1000
  %arrayidx = getelementptr inbounds nuw i32, ptr @z, i32 %i.051
  store i32 %sub, ptr %arrayidx, align 4, !tbaa !6
  %arrayidx1 = getelementptr inbounds nuw i32, ptr @y, i32 %i.051
  store i32 %sub, ptr %arrayidx1, align 4, !tbaa !6
  %arrayidx2 = getelementptr inbounds nuw i32, ptr @x, i32 %i.051
  store i32 %sub, ptr %arrayidx2, align 4, !tbaa !6
  %inc = add nuw nsw i32 %i.051, 1
  %exitcond.not = icmp eq i32 %inc, 300
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !15

for.body7:                                        ; preds = %for.body7.preheader, %if.end20
  %i3.057 = phi i32 [ %inc24, %if.end20 ], [ 1, %for.body7.preheader ]
  %h.056 = phi i32 [ %add22, %if.end20 ], [ %14, %for.body7.preheader ]
  %arrayidx8 = getelementptr inbounds nuw i32, ptr @x, i32 %i3.057
  %17 = load i32, ptr %arrayidx8, align 4, !tbaa !6
  %arrayidx9 = getelementptr inbounds nuw i32, ptr @y, i32 %i3.057
  %18 = load i32, ptr %arrayidx9, align 4, !tbaa !6
  %cmp10.not = icmp eq i32 %17, %18
  br i1 %cmp10.not, label %lor.lhs.false, label %if.then.loopexit

lor.lhs.false:                                    ; preds = %for.body7
  %arrayidx12 = getelementptr inbounds nuw i32, ptr @z, i32 %i3.057
  %19 = load i32, ptr %arrayidx12, align 4, !tbaa !6
  %cmp13.not = icmp eq i32 %17, %19
  br i1 %cmp13.not, label %land.lhs.true, label %if.then.loopexit

if.then.loopexit:                                 ; preds = %for.body7, %lor.lhs.false
  %20 = add nuw nsw i32 %i3.057, 1000
  br label %cleanup

land.lhs.true:                                    ; preds = %lor.lhs.false
  %arrayidx15 = getelementptr i8, ptr %arrayidx8, i32 -4
  %21 = load i32, ptr %arrayidx15, align 4, !tbaa !6
  %cmp17 = icmp sgt i32 %21, %17
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %land.lhs.true
  %add19 = add nuw nsw i32 %i3.057, 2000
  br label %cleanup

if.end20:                                         ; preds = %land.lhs.true
  %mul = mul i32 %h.056, 31
  %add22 = add i32 %17, %mul
  %inc24 = add nuw nsw i32 %i3.057, 1
  %exitcond60 = icmp eq i32 %inc24, 300
  br i1 %exitcond60, label %cleanup, label %for.body7, !llvm.loop !16

cleanup:                                          ; preds = %if.end20, %for.body7.preheader, %if.then.loopexit, %if.then18
  %spec.select = phi i32 [ %20, %if.then.loopexit ], [ %add19, %if.then18 ], [ 1000, %for.body7.preheader ], [ %add22, %if.end20 ]
  ret i32 %spec.select
}

; Function Attrs: nofree nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal fastcc void @quick(i32 noundef %lo, i32 noundef %hi) unnamed_addr #1 {
entry:
  %cmp64 = icmp slt i32 %lo, %hi
  br i1 %cmp64, label %while.body, label %while.end25

while.body:                                       ; preds = %entry, %if.end24
  %lo.addr.066 = phi i32 [ %lo.addr.1, %if.end24 ], [ %lo, %entry ]
  %hi.addr.065 = phi i32 [ %hi.addr.1, %if.end24 ], [ %hi, %entry ]
  %add = add nsw i32 %lo.addr.066, %hi.addr.065
  %div = sdiv i32 %add, 2
  %arrayidx = getelementptr inbounds i32, ptr @x, i32 %div
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !6
  br label %while.cond4.preheader

while.cond4.preheader:                            ; preds = %while.body, %if.end
  %j.063 = phi i32 [ %hi.addr.065, %while.body ], [ %j.2, %if.end ]
  %i.062 = phi i32 [ %lo.addr.066, %while.body ], [ %i.2, %if.end ]
  br label %while.cond4

while.cond4:                                      ; preds = %while.cond4, %while.cond4.preheader
  %i.1 = phi i32 [ %inc, %while.cond4 ], [ %i.062, %while.cond4.preheader ]
  %arrayidx5 = getelementptr inbounds i32, ptr @x, i32 %i.1
  %1 = load i32, ptr %arrayidx5, align 4, !tbaa !6
  %cmp6 = icmp slt i32 %1, %0
  %inc = add nsw i32 %i.1, 1
  br i1 %cmp6, label %while.cond4, label %while.cond8, !llvm.loop !18

while.cond8:                                      ; preds = %while.cond4, %while.cond8
  %j.1 = phi i32 [ %dec, %while.cond8 ], [ %j.063, %while.cond4 ]
  %arrayidx9 = getelementptr inbounds i32, ptr @x, i32 %j.1
  %2 = load i32, ptr %arrayidx9, align 4, !tbaa !6
  %cmp10 = icmp sgt i32 %2, %0
  %dec = add nsw i32 %j.1, -1
  br i1 %cmp10, label %while.cond8, label %while.end12, !llvm.loop !19

while.end12:                                      ; preds = %while.cond8
  %cmp13.not = icmp sgt i32 %i.1, %j.1
  br i1 %cmp13.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.end12
  store i32 %2, ptr %arrayidx5, align 4, !tbaa !6
  store i32 %1, ptr %arrayidx9, align 4, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end12
  %i.2 = phi i32 [ %inc, %if.then ], [ %i.1, %while.end12 ]
  %j.2 = phi i32 [ %dec, %if.then ], [ %j.1, %while.end12 ]
  %cmp2.not = icmp sgt i32 %i.2, %j.2
  br i1 %cmp2.not, label %while.end20, label %while.cond4.preheader, !llvm.loop !20

while.end20:                                      ; preds = %if.end
  %sub = sub nsw i32 %j.2, %lo.addr.066
  %sub21 = sub nsw i32 %hi.addr.065, %i.2
  %cmp22 = icmp slt i32 %sub, %sub21
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %while.end20
  tail call fastcc void @quick(i32 noundef %lo.addr.066, i32 noundef %j.2) #2
  br label %if.end24

if.else:                                          ; preds = %while.end20
  tail call fastcc void @quick(i32 noundef %i.2, i32 noundef %hi.addr.065) #2
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then23
  %hi.addr.1 = phi i32 [ %hi.addr.065, %if.then23 ], [ %j.2, %if.else ]
  %lo.addr.1 = phi i32 [ %i.2, %if.then23 ], [ %lo.addr.066, %if.else ]
  %cmp = icmp slt i32 %lo.addr.1, %hi.addr.1
  br i1 %cmp, label %while.body, label %while.end25, !llvm.loop !21

while.end25:                                      ; preds = %if.end24, %entry
  ret void
}

attributes #0 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nofree nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem0: none, target_mem1: none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { nobuiltin "no-builtins" }

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
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11, !17}
!17 = !{!"llvm.loop.peeled.count", i32 1}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
