; ModuleID = 'tests/programs/bigint.c'
source_filename = "tests/programs/bigint.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

%struct.Big = type { [24 x i32] }

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define dso_local i32 @main() local_unnamed_addr #0 {
entry:
  %f = alloca %struct.Big, align 4
  %p = alloca %struct.Big, align 4
  %s = alloca %struct.Big, align 4
  %0 = getelementptr inbounds nuw i8, ptr %f, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(92) %0, i8 0, i32 92, i1 false)
  store i32 1, ptr %f, align 4
  %1 = getelementptr inbounds nuw i8, ptr %p, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(92) %1, i8 0, i32 92, i1 false)
  store i32 1, ptr %p, align 4
  br label %for.body

for.body:                                         ; preds = %entry, %mul_small.exit
  %k.037 = phi i32 [ 2, %entry ], [ %inc, %mul_small.exit ]
  %conv1.i = zext nneg i32 %k.037 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body
  %i.012.i = phi i32 [ 0, %for.body ], [ %inc.i, %for.body.i ]
  %c.011.i = phi i64 [ 0, %for.body ], [ %shr.i, %for.body.i ]
  %arrayidx.i = getelementptr inbounds nuw i32, ptr %f, i32 %i.012.i
  %2 = load i32, ptr %arrayidx.i, align 4
  %conv.i = zext i32 %2 to i64
  %mul.i = mul nuw nsw i64 %conv.i, %conv1.i
  %add.i = add nuw nsw i64 %mul.i, %c.011.i
  %conv2.i = trunc i64 %add.i to i32
  store i32 %conv2.i, ptr %arrayidx.i, align 4
  %shr.i = lshr i64 %add.i, 32
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 24
  br i1 %exitcond.not.i, label %mul_small.exit, label %for.body.i, !llvm.loop !10

mul_small.exit:                                   ; preds = %for.body.i
  %inc = add nuw nsw i32 %k.037, 1
  %exitcond.not = icmp eq i32 %inc, 51
  br i1 %exitcond.not, label %for.body.i25.preheader, label %for.body, !llvm.loop !12

for.body.i25.preheader:                           ; preds = %mul_small.exit, %mul_small.exit36
  %k1.038 = phi i32 [ %inc7, %mul_small.exit36 ], [ 0, %mul_small.exit ]
  br label %for.body.i25

for.cond.cleanup4:                                ; preds = %mul_small.exit36
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %s, ptr noundef nonnull align 4 dereferenceable(96) %f, i32 96, i1 false)
  br label %for.body.i18

for.body.i18:                                     ; preds = %for.body.i18, %for.cond.cleanup4
  %i.016.i = phi i32 [ 0, %for.cond.cleanup4 ], [ %inc.i23, %for.body.i18 ]
  %c.015.i = phi i64 [ 0, %for.cond.cleanup4 ], [ %shr.i22, %for.body.i18 ]
  %arrayidx.i19 = getelementptr inbounds nuw i32, ptr %s, i32 %i.016.i
  %3 = load i32, ptr %arrayidx.i19, align 4
  %conv.i20 = zext i32 %3 to i64
  %arrayidx2.i = getelementptr inbounds nuw i32, ptr %p, i32 %i.016.i
  %4 = load i32, ptr %arrayidx2.i, align 4
  %conv3.i = zext i32 %4 to i64
  %add.i21 = add nuw nsw i64 %c.015.i, %conv.i20
  %add4.i = add nuw nsw i64 %add.i21, %conv3.i
  %conv5.i = trunc i64 %add4.i to i32
  store i32 %conv5.i, ptr %arrayidx.i19, align 4
  %shr.i22 = lshr i64 %add4.i, 32
  %inc.i23 = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i24 = icmp eq i32 %inc.i23, 24
  br i1 %exitcond.not.i24, label %add.exit, label %for.body.i18, !llvm.loop !13

add.exit:                                         ; preds = %for.body.i18
  %call = call fastcc i32 @digits(ptr dead_on_return noundef %f) #4
  %call10 = call fastcc i32 @digits(ptr dead_on_return noundef %p) #4
  %mul = mul i32 %call10, 3
  %xor = xor i32 %mul, %call
  %call12 = call fastcc i32 @digits(ptr dead_on_return noundef %s) #4
  %mul13 = mul i32 %call12, 5
  %xor14 = xor i32 %xor, %mul13
  ret i32 %xor14

for.body.i25:                                     ; preds = %for.body.i25.preheader, %for.body.i25
  %i.012.i26 = phi i32 [ %inc.i34, %for.body.i25 ], [ 0, %for.body.i25.preheader ]
  %c.011.i27 = phi i64 [ %shr.i33, %for.body.i25 ], [ 0, %for.body.i25.preheader ]
  %arrayidx.i28 = getelementptr inbounds nuw i32, ptr %p, i32 %i.012.i26
  %5 = load i32, ptr %arrayidx.i28, align 4
  %conv.i29 = zext i32 %5 to i64
  %mul.i30 = shl nuw nsw i64 %conv.i29, 1
  %add.i31 = add nuw nsw i64 %mul.i30, %c.011.i27
  %conv2.i32 = trunc i64 %add.i31 to i32
  store i32 %conv2.i32, ptr %arrayidx.i28, align 4
  %shr.i33 = lshr i64 %add.i31, 32
  %inc.i34 = add nuw nsw i32 %i.012.i26, 1
  %exitcond.not.i35 = icmp eq i32 %inc.i34, 24
  br i1 %exitcond.not.i35, label %mul_small.exit36, label %for.body.i25, !llvm.loop !10

mul_small.exit36:                                 ; preds = %for.body.i25
  %inc7 = add nuw nsw i32 %k1.038, 1
  %exitcond39.not = icmp eq i32 %inc7, 200
  br i1 %exitcond39.not, label %for.cond.cleanup4, label %for.body.i25.preheader, !llvm.loop !14
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr writeonly captures(none), i8, i32, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i32, i1 immarg) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal fastcc i32 @digits(ptr dead_on_return noundef nonnull captures(none) %a) unnamed_addr #3 {
entry:
  %arrayidx.23.i = getelementptr inbounds nuw i8, ptr %a, i32 92
  %arrayidx.1.i = getelementptr inbounds nuw i8, ptr %a, i32 4
  %arrayidx.2.i = getelementptr inbounds nuw i8, ptr %a, i32 8
  %arrayidx.3.i = getelementptr inbounds nuw i8, ptr %a, i32 12
  %arrayidx.4.i = getelementptr inbounds nuw i8, ptr %a, i32 16
  %arrayidx.5.i = getelementptr inbounds nuw i8, ptr %a, i32 20
  %arrayidx.6.i = getelementptr inbounds nuw i8, ptr %a, i32 24
  %arrayidx.7.i = getelementptr inbounds nuw i8, ptr %a, i32 28
  %arrayidx.8.i = getelementptr inbounds nuw i8, ptr %a, i32 32
  %arrayidx.9.i = getelementptr inbounds nuw i8, ptr %a, i32 36
  %arrayidx.10.i = getelementptr inbounds nuw i8, ptr %a, i32 40
  %arrayidx.11.i = getelementptr inbounds nuw i8, ptr %a, i32 44
  %arrayidx.12.i = getelementptr inbounds nuw i8, ptr %a, i32 48
  %arrayidx.13.i = getelementptr inbounds nuw i8, ptr %a, i32 52
  %arrayidx.14.i = getelementptr inbounds nuw i8, ptr %a, i32 56
  %arrayidx.15.i = getelementptr inbounds nuw i8, ptr %a, i32 60
  %arrayidx.16.i = getelementptr inbounds nuw i8, ptr %a, i32 64
  %arrayidx.17.i = getelementptr inbounds nuw i8, ptr %a, i32 68
  %arrayidx.18.i = getelementptr inbounds nuw i8, ptr %a, i32 72
  %arrayidx.19.i = getelementptr inbounds nuw i8, ptr %a, i32 76
  %arrayidx.20.i = getelementptr inbounds nuw i8, ptr %a, i32 80
  %arrayidx.21.i = getelementptr inbounds nuw i8, ptr %a, i32 84
  %arrayidx.22.i = getelementptr inbounds nuw i8, ptr %a, i32 88
  br label %while.cond

while.cond:                                       ; preds = %div_small.exit, %entry
  %h.0 = phi i32 [ 0, %entry ], [ %add, %div_small.exit ]
  %n.0 = phi i32 [ 0, %entry ], [ %inc, %div_small.exit ]
  %0 = load i32, ptr %a, align 4, !tbaa !6
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %for.cond.i, label %for.body.i.preheader

for.cond.i:                                       ; preds = %while.cond
  %1 = load i32, ptr %arrayidx.1.i, align 4, !tbaa !6
  %tobool.not.1.i = icmp eq i32 %1, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.body.i.preheader

for.cond.1.i:                                     ; preds = %for.cond.i
  %2 = load i32, ptr %arrayidx.2.i, align 4, !tbaa !6
  %tobool.not.2.i = icmp eq i32 %2, 0
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.body.i.preheader

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %3 = load i32, ptr %arrayidx.3.i, align 4, !tbaa !6
  %tobool.not.3.i = icmp eq i32 %3, 0
  br i1 %tobool.not.3.i, label %for.cond.3.i, label %for.body.i.preheader

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %4 = load i32, ptr %arrayidx.4.i, align 4, !tbaa !6
  %tobool.not.4.i = icmp eq i32 %4, 0
  br i1 %tobool.not.4.i, label %for.cond.4.i, label %for.body.i.preheader

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %5 = load i32, ptr %arrayidx.5.i, align 4, !tbaa !6
  %tobool.not.5.i = icmp eq i32 %5, 0
  br i1 %tobool.not.5.i, label %for.cond.5.i, label %for.body.i.preheader

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %6 = load i32, ptr %arrayidx.6.i, align 4, !tbaa !6
  %tobool.not.6.i = icmp eq i32 %6, 0
  br i1 %tobool.not.6.i, label %for.cond.6.i, label %for.body.i.preheader

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %7 = load i32, ptr %arrayidx.7.i, align 4, !tbaa !6
  %tobool.not.7.i = icmp eq i32 %7, 0
  br i1 %tobool.not.7.i, label %for.cond.7.i, label %for.body.i.preheader

for.cond.7.i:                                     ; preds = %for.cond.6.i
  %8 = load i32, ptr %arrayidx.8.i, align 4, !tbaa !6
  %tobool.not.8.i = icmp eq i32 %8, 0
  br i1 %tobool.not.8.i, label %for.cond.8.i, label %for.body.i.preheader

for.cond.8.i:                                     ; preds = %for.cond.7.i
  %9 = load i32, ptr %arrayidx.9.i, align 4, !tbaa !6
  %tobool.not.9.i = icmp eq i32 %9, 0
  br i1 %tobool.not.9.i, label %for.cond.9.i, label %for.body.i.preheader

for.cond.9.i:                                     ; preds = %for.cond.8.i
  %10 = load i32, ptr %arrayidx.10.i, align 4, !tbaa !6
  %tobool.not.10.i = icmp eq i32 %10, 0
  br i1 %tobool.not.10.i, label %for.cond.10.i, label %for.body.i.preheader

for.cond.10.i:                                    ; preds = %for.cond.9.i
  %11 = load i32, ptr %arrayidx.11.i, align 4, !tbaa !6
  %tobool.not.11.i = icmp eq i32 %11, 0
  br i1 %tobool.not.11.i, label %for.cond.11.i, label %for.body.i.preheader

for.cond.11.i:                                    ; preds = %for.cond.10.i
  %12 = load i32, ptr %arrayidx.12.i, align 4, !tbaa !6
  %tobool.not.12.i = icmp eq i32 %12, 0
  br i1 %tobool.not.12.i, label %for.cond.12.i, label %for.body.i.preheader

for.cond.12.i:                                    ; preds = %for.cond.11.i
  %13 = load i32, ptr %arrayidx.13.i, align 4, !tbaa !6
  %tobool.not.13.i = icmp eq i32 %13, 0
  br i1 %tobool.not.13.i, label %for.cond.13.i, label %for.body.i.preheader

for.cond.13.i:                                    ; preds = %for.cond.12.i
  %14 = load i32, ptr %arrayidx.14.i, align 4, !tbaa !6
  %tobool.not.14.i = icmp eq i32 %14, 0
  br i1 %tobool.not.14.i, label %for.cond.14.i, label %for.body.i.preheader

for.cond.14.i:                                    ; preds = %for.cond.13.i
  %15 = load i32, ptr %arrayidx.15.i, align 4, !tbaa !6
  %tobool.not.15.i = icmp eq i32 %15, 0
  br i1 %tobool.not.15.i, label %for.cond.15.i, label %for.body.i.preheader

for.cond.15.i:                                    ; preds = %for.cond.14.i
  %16 = load i32, ptr %arrayidx.16.i, align 4, !tbaa !6
  %tobool.not.16.i = icmp eq i32 %16, 0
  br i1 %tobool.not.16.i, label %for.cond.16.i, label %for.body.i.preheader

for.cond.16.i:                                    ; preds = %for.cond.15.i
  %17 = load i32, ptr %arrayidx.17.i, align 4, !tbaa !6
  %tobool.not.17.i = icmp eq i32 %17, 0
  br i1 %tobool.not.17.i, label %for.cond.17.i, label %for.body.i.preheader

for.cond.17.i:                                    ; preds = %for.cond.16.i
  %18 = load i32, ptr %arrayidx.18.i, align 4, !tbaa !6
  %tobool.not.18.i = icmp eq i32 %18, 0
  br i1 %tobool.not.18.i, label %for.cond.18.i, label %for.body.i.preheader

for.cond.18.i:                                    ; preds = %for.cond.17.i
  %19 = load i32, ptr %arrayidx.19.i, align 4, !tbaa !6
  %tobool.not.19.i = icmp eq i32 %19, 0
  br i1 %tobool.not.19.i, label %for.cond.19.i, label %for.body.i.preheader

for.cond.19.i:                                    ; preds = %for.cond.18.i
  %20 = load i32, ptr %arrayidx.20.i, align 4, !tbaa !6
  %tobool.not.20.i = icmp eq i32 %20, 0
  br i1 %tobool.not.20.i, label %for.cond.20.i, label %for.body.i.preheader

for.cond.20.i:                                    ; preds = %for.cond.19.i
  %21 = load i32, ptr %arrayidx.21.i, align 4, !tbaa !6
  %tobool.not.21.i = icmp eq i32 %21, 0
  br i1 %tobool.not.21.i, label %for.cond.21.i, label %for.body.i.preheader

for.cond.21.i:                                    ; preds = %for.cond.20.i
  %22 = load i32, ptr %arrayidx.22.i, align 4, !tbaa !6
  %tobool.not.22.i = icmp eq i32 %22, 0
  br i1 %tobool.not.22.i, label %zero.exit, label %for.body.i.preheader

zero.exit:                                        ; preds = %for.cond.21.i
  %23 = load i32, ptr %arrayidx.23.i, align 4, !tbaa !6
  %tobool.not.23.i.not = icmp eq i32 %23, 0
  br i1 %tobool.not.23.i.not, label %while.end, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %for.cond.17.i, %for.cond.10.i, %for.cond.15.i, %for.cond.9.i, %for.cond.18.i, %for.cond.8.i, %for.cond.13.i, %for.cond.7.i, %for.cond.19.i, %for.cond.6.i, %for.cond.16.i, %for.cond.5.i, %for.cond.20.i, %for.cond.4.i, %for.cond.12.i, %for.cond.3.i, %for.cond.21.i, %for.cond.2.i, %for.cond.14.i, %for.cond.1.i, %for.cond.i, %for.cond.11.i, %while.cond, %zero.exit
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.body.i
  %i.016.i = phi i32 [ %dec.i, %for.body.i ], [ 23, %for.body.i.preheader ]
  %r.015.i = phi i64 [ %rem.i.decomposed, %for.body.i ], [ 0, %for.body.i.preheader ]
  %shl.i = shl nuw nsw i64 %r.015.i, 32
  %arrayidx.i = getelementptr inbounds nuw i32, ptr %a, i32 %i.016.i
  %24 = load i32, ptr %arrayidx.i, align 4, !tbaa !6
  %conv.i = zext i32 %24 to i64
  %or.i = or disjoint i64 %shl.i, %conv.i
  %or.i.frozen = freeze i64 %or.i
  %div.i = udiv i64 %or.i.frozen, 10
  %conv2.i = trunc nuw i64 %div.i to i32
  store i32 %conv2.i, ptr %arrayidx.i, align 4, !tbaa !6
  %25 = mul i64 %div.i, 10
  %rem.i.decomposed = sub i64 %or.i.frozen, %25
  %dec.i = add nsw i32 %i.016.i, -1
  %cmp.not.i = icmp eq i32 %i.016.i, 0
  br i1 %cmp.not.i, label %div_small.exit, label %for.body.i, !llvm.loop !15

div_small.exit:                                   ; preds = %for.body.i
  %mul = mul i32 %h.0, 10
  %conv6.i = trunc nuw nsw i64 %rem.i.decomposed to i32
  %add = add i32 %mul, %conv6.i
  %inc = add nuw nsw i32 %n.0, 1
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %zero.exit
  %mul2 = mul i32 %h.0, 1000
  %add3 = add i32 %mul2, %n.0
  ret i32 %add3
}

attributes #0 = { nofree norecurse nosync nounwind memory(none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { nobuiltin "no-builtins" }

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
!16 = distinct !{!16, !11}
