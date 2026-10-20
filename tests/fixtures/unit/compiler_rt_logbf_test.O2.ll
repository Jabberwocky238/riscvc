; ModuleID = '../llvm-project/compiler-rt/test/builtins/Unit/compiler_rt_logbf_test.c'
source_filename = "../llvm-project/compiler-rt/test/builtins/Unit/compiler_rt_logbf_test.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@.str = private unnamed_addr constant [61 x i8] c"error: in __compiler_rt_logb(%a [%X]) = %a [%X] !=  %a [%X]\0A\00", align 1
@cases = dso_local local_unnamed_addr global [14 x double] [double 0x3EB0C6F7A0B5ED8D, double 0xBEB0C6F7A0B5ED8D, double 0x7FF8000000000000, double 0xFFF8000000000000, double 0x7FF0000000000000, double 0xFFF0000000000000, double -1.000000e+00, double -0.000000e+00, double 0.000000e+00, double 1.000000e+00, double -2.000000e+00, double 2.000000e+00, double -5.000000e-01, double 5.000000e-01], align 8

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @test__compiler_rt_logbf(float noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast float %x to i32
  %and.i.i = lshr i32 %0, 23
  %shr.i.i = and i32 %and.i.i, 255
  %cmp.i.i = icmp eq i32 %shr.i.i, 255
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else5.i.i

if.then.i.i:                                      ; preds = %entry
  %cmp2.i.i = icmp sgt i32 %0, -1
  %cmp3.i.i = fcmp uno float %x, 0.000000e+00
  %or.cond.i.i = or i1 %cmp3.i.i, %cmp2.i.i
  %fneg.i.i = fneg float %x
  %spec.select.i.i = select i1 %or.cond.i.i, float %x, float %fneg.i.i
  br label %__compiler_rt_logbf.exit

if.else5.i.i:                                     ; preds = %entry
  %cmp6.i.i = fcmp oeq float %x, 0.000000e+00
  br i1 %cmp6.i.i, label %__compiler_rt_logbf.exit, label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.else5.i.i
  %cmp11.not.i.i = icmp eq i32 %shr.i.i, 0
  br i1 %cmp11.not.i.i, label %if.else15.i.i, label %if.then13.i.i

if.then13.i.i:                                    ; preds = %if.end10.i.i
  %sub.i.i = add nsw i32 %shr.i.i, -127
  %conv14.i.i = sitofp i32 %sub.i.i to float
  br label %__compiler_rt_logbf.exit

if.else15.i.i:                                    ; preds = %if.end10.i.i
  %1 = tail call float @llvm.fabs.f32(float %x)
  %and16.i.i = bitcast float %1 to i32
  %2 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %and16.i.i, i1 true)
  %sub.i.i.i = add nsw i32 %2, -8
  %shl.i.i.i = shl i32 %and16.i.i, %sub.i.i.i
  %and19.i.i = lshr i32 %shl.i.i.i, 23
  %shr20.i.i = and i32 %and19.i.i, 255
  %reass.sub = sub nsw i32 %shr20.i.i, %2
  %sub22.i.i = add nsw i32 %reass.sub, -119
  %conv23.i.i = sitofp i32 %sub22.i.i to float
  br label %__compiler_rt_logbf.exit

__compiler_rt_logbf.exit:                         ; preds = %if.then.i.i, %if.else5.i.i, %if.then13.i.i, %if.else15.i.i
  %retval.0.i.i = phi float [ %conv23.i.i, %if.else15.i.i ], [ %spec.select.i.i, %if.then.i.i ], [ %conv14.i.i, %if.then13.i.i ], [ 0xFFF0000000000000, %if.else5.i.i ]
  %call1 = tail call float @logbf(float noundef %x) #4
  %cmp = fcmp une float %retval.0.i.i, %call1
  br i1 %cmp, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %__compiler_rt_logbf.exit
  %3 = fcmp uno float %retval.0.i.i, 0.000000e+00
  %4 = fcmp uno float %call1, 0.000000e+00
  %or.cond = and i1 %3, %4
  br i1 %or.cond, label %cleanup, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %conv = fpext float %x to double
  %conv4 = fpext float %retval.0.i.i to double
  %5 = bitcast float %retval.0.i.i to i32
  %conv6 = fpext float %call1 to double
  %6 = bitcast float %call1 to i32
  %call8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef %conv, i32 noundef %0, double noundef %conv4, i32 noundef %5, double noundef %conv6, i32 noundef %6) #4
  br label %cleanup

cleanup:                                          ; preds = %__compiler_rt_logbf.exit, %land.lhs.true, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %land.lhs.true ], [ 0, %__compiler_rt_logbf.exit ]
  ret i32 %retval.0
}

declare dso_local float @logbf(float noundef) local_unnamed_addr #1

declare dso_local i32 @printf(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @main() local_unnamed_addr #0 {
entry:
  %0 = load double, ptr @cases, align 8, !tbaa !10
  %conv = fptrunc double %0 to float
  %call = tail call i32 @test__compiler_rt_logbf(float noundef %conv) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %cleanup28

for.cond:                                         ; preds = %entry
  %1 = load double, ptr getelementptr inbounds nuw (i8, ptr @cases, i32 8), align 8, !tbaa !10
  %conv.1 = fptrunc double %1 to float
  %call.1 = tail call i32 @test__compiler_rt_logbf(float noundef %conv.1) #5
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.cond.1, label %cleanup28

for.cond.1:                                       ; preds = %for.cond
  %2 = load double, ptr getelementptr inbounds nuw (i8, ptr @cases, i32 16), align 8, !tbaa !10
  %conv.2 = fptrunc double %2 to float
  %call.2 = tail call i32 @test__compiler_rt_logbf(float noundef %conv.2) #5
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %for.cond.2, label %cleanup28

for.cond.2:                                       ; preds = %for.cond.1
  %3 = load double, ptr getelementptr inbounds nuw (i8, ptr @cases, i32 24), align 8, !tbaa !10
  %conv.3 = fptrunc double %3 to float
  %call.3 = tail call i32 @test__compiler_rt_logbf(float noundef %conv.3) #5
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %for.cond.3, label %cleanup28

for.cond.3:                                       ; preds = %for.cond.2
  %4 = load double, ptr getelementptr inbounds nuw (i8, ptr @cases, i32 32), align 8, !tbaa !10
  %conv.4 = fptrunc double %4 to float
  %call.4 = tail call i32 @test__compiler_rt_logbf(float noundef %conv.4) #5
  %tobool.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool.not.4, label %for.cond.4, label %cleanup28

for.cond.4:                                       ; preds = %for.cond.3
  %5 = load double, ptr getelementptr inbounds nuw (i8, ptr @cases, i32 40), align 8, !tbaa !10
  %conv.5 = fptrunc double %5 to float
  %call.5 = tail call i32 @test__compiler_rt_logbf(float noundef %conv.5) #5
  %tobool.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool.not.5, label %for.cond.5, label %cleanup28

for.cond.5:                                       ; preds = %for.cond.4
  %6 = load double, ptr getelementptr inbounds nuw (i8, ptr @cases, i32 48), align 8, !tbaa !10
  %conv.6 = fptrunc double %6 to float
  %call.6 = tail call i32 @test__compiler_rt_logbf(float noundef %conv.6) #5
  %tobool.not.6 = icmp eq i32 %call.6, 0
  br i1 %tobool.not.6, label %for.cond.6, label %cleanup28

for.cond.6:                                       ; preds = %for.cond.5
  %7 = load double, ptr getelementptr inbounds nuw (i8, ptr @cases, i32 56), align 8, !tbaa !10
  %conv.7 = fptrunc double %7 to float
  %call.7 = tail call i32 @test__compiler_rt_logbf(float noundef %conv.7) #5
  %tobool.not.7 = icmp eq i32 %call.7, 0
  br i1 %tobool.not.7, label %for.cond.7, label %cleanup28

for.cond.7:                                       ; preds = %for.cond.6
  %8 = load double, ptr getelementptr inbounds nuw (i8, ptr @cases, i32 64), align 8, !tbaa !10
  %conv.8 = fptrunc double %8 to float
  %call.8 = tail call i32 @test__compiler_rt_logbf(float noundef %conv.8) #5
  %tobool.not.8 = icmp eq i32 %call.8, 0
  br i1 %tobool.not.8, label %for.cond.8, label %cleanup28

for.cond.8:                                       ; preds = %for.cond.7
  %9 = load double, ptr getelementptr inbounds nuw (i8, ptr @cases, i32 72), align 8, !tbaa !10
  %conv.9 = fptrunc double %9 to float
  %call.9 = tail call i32 @test__compiler_rt_logbf(float noundef %conv.9) #5
  %tobool.not.9 = icmp eq i32 %call.9, 0
  br i1 %tobool.not.9, label %for.cond.9, label %cleanup28

for.cond.9:                                       ; preds = %for.cond.8
  %10 = load double, ptr getelementptr inbounds nuw (i8, ptr @cases, i32 80), align 8, !tbaa !10
  %conv.10 = fptrunc double %10 to float
  %call.10 = tail call i32 @test__compiler_rt_logbf(float noundef %conv.10) #5
  %tobool.not.10 = icmp eq i32 %call.10, 0
  br i1 %tobool.not.10, label %for.cond.10, label %cleanup28

for.cond.10:                                      ; preds = %for.cond.9
  %11 = load double, ptr getelementptr inbounds nuw (i8, ptr @cases, i32 88), align 8, !tbaa !10
  %conv.11 = fptrunc double %11 to float
  %call.11 = tail call i32 @test__compiler_rt_logbf(float noundef %conv.11) #5
  %tobool.not.11 = icmp eq i32 %call.11, 0
  br i1 %tobool.not.11, label %for.cond.11, label %cleanup28

for.cond.11:                                      ; preds = %for.cond.10
  %12 = load double, ptr getelementptr inbounds nuw (i8, ptr @cases, i32 96), align 8, !tbaa !10
  %conv.12 = fptrunc double %12 to float
  %call.12 = tail call i32 @test__compiler_rt_logbf(float noundef %conv.12) #5
  %tobool.not.12 = icmp eq i32 %call.12, 0
  br i1 %tobool.not.12, label %for.cond.12, label %cleanup28

for.cond.12:                                      ; preds = %for.cond.11
  %13 = load double, ptr getelementptr inbounds nuw (i8, ptr @cases, i32 104), align 8, !tbaa !10
  %conv.13 = fptrunc double %13 to float
  %call.13 = tail call i32 @test__compiler_rt_logbf(float noundef %conv.13) #5
  %tobool.not.13 = icmp eq i32 %call.13, 0
  br i1 %tobool.not.13, label %while.body, label %cleanup28

while.cond:                                       ; preds = %if.end6
  %shr = lshr i32 %x.042, 1
  %tobool1.not = icmp eq i32 %shr, 0
  br i1 %tobool1.not, label %while.body14, label %while.body, !llvm.loop !12

while.body:                                       ; preds = %for.cond.12, %while.cond
  %x.042 = phi i32 [ %shr, %while.cond ], [ -2147483648, %for.cond.12 ]
  %14 = bitcast i32 %x.042 to float
  %call3 = tail call i32 @test__compiler_rt_logbf(float noundef %14) #5
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %cleanup28

if.end6:                                          ; preds = %while.body
  %xor = xor i32 %x.042, -2147483648
  %15 = bitcast i32 %xor to float
  %call8 = tail call i32 @test__compiler_rt_logbf(float noundef %15) #5
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %while.cond, label %cleanup28

while.cond12:                                     ; preds = %if.end19
  %shr26 = lshr i32 %x.143, 1
  %tobool13.not = icmp eq i32 %shr26, 0
  br i1 %tobool13.not, label %cleanup28, label %while.body14, !llvm.loop !14

while.body14:                                     ; preds = %while.cond, %while.cond12
  %x.143 = phi i32 [ %shr26, %while.cond12 ], [ -536870912, %while.cond ]
  %16 = bitcast i32 %x.143 to float
  %call16 = tail call i32 @test__compiler_rt_logbf(float noundef %16) #5
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %cleanup28

if.end19:                                         ; preds = %while.body14
  %xor20 = xor i32 %x.143, -2147483648
  %17 = bitcast i32 %xor20 to float
  %call22 = tail call i32 @test__compiler_rt_logbf(float noundef %17) #5
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %while.cond12, label %cleanup28

cleanup28:                                        ; preds = %while.body, %if.end6, %while.body14, %if.end19, %while.cond12, %entry, %for.cond, %for.cond.1, %for.cond.2, %for.cond.3, %for.cond.4, %for.cond.5, %for.cond.6, %for.cond.7, %for.cond.8, %for.cond.9, %for.cond.10, %for.cond.11, %for.cond.12
  %retval.1 = phi i32 [ 1, %for.cond.1 ], [ 1, %for.cond.2 ], [ 1, %for.cond ], [ 1, %entry ], [ 1, %if.end19 ], [ 1, %for.cond.12 ], [ 1, %for.cond.11 ], [ 1, %for.cond.10 ], [ 1, %for.cond.9 ], [ 1, %for.cond.8 ], [ 1, %for.cond.7 ], [ 1, %for.cond.6 ], [ 1, %for.cond.5 ], [ 1, %for.cond.4 ], [ 1, %for.cond.3 ], [ 0, %while.cond12 ], [ 1, %while.body14 ], [ 1, %if.end6 ], [ 1, %while.body ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
