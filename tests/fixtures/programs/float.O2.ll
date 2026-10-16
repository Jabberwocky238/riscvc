; ModuleID = 'tests/programs/float.c'
source_filename = "tests/programs/float.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

; Function Attrs: nounwind
define dso_local i32 @main() local_unnamed_addr #0 {
entry:
  br label %for.body

for.cond53.preheader:                             ; preds = %for.body
  %0 = bitcast float %add to i32
  %add67 = add i32 %0, 1068827891
  %add69 = add i32 %add67, %or
  %add70 = add i32 %add69, 1076754517
  ret i32 %add70

for.body:                                         ; preds = %entry, %for.body
  %h.0115 = phi i32 [ 0, %entry ], [ %or, %for.body ]
  %acc.0114 = phi float [ 0.000000e+00, %entry ], [ %add, %for.body ]
  %i.0113 = phi i32 [ -50, %entry ], [ %inc, %for.body ]
  %conv = sitofp i32 %i.0113 to float
  %1 = tail call float @llvm.fmuladd.f32(float %conv, float 0x3FD7AE1480000000, float 0x3F847AE140000000)
  %mul = mul nsw i32 %i.0113, %i.0113
  %conv1 = uitofp nneg i32 %mul to float
  %div = fdiv float %conv1, 7.000000e+00
  %sub = fadd float %div, -3.000000e+00
  %cmp3 = fcmp oeq float %sub, 0.000000e+00
  %cond = select i1 %cmp3, float 1.000000e+00, float %sub
  %2 = fneg float %1
  %neg = fdiv float %2, %cond
  %3 = tail call float @llvm.fmuladd.f32(float %1, float %sub, float %neg)
  %add = fadd float %acc.0114, %3
  %4 = tail call float @llvm.fabs.f32(float %1)
  %call = tail call float @sqrtf(float noundef %4) #3, !tbaa !6
  %5 = bitcast float %call to i32
  %add7 = add i32 %h.0115, %5
  %call8 = tail call float @fmaf(float noundef %1, float noundef %sub, float noundef %add) #3, !tbaa !6
  %6 = bitcast float %call8 to i32
  %xor = xor i32 %add7, %6
  %cmp10 = fcmp olt float %1, %sub
  %conv11 = zext i1 %cmp10 to i32
  %cmp12 = fcmp ole float %1, %sub
  %mul14 = select i1 %cmp12, i32 2, i32 0
  %cmp16 = fcmp oeq float %1, %sub
  %mul18 = select i1 %cmp16, i32 4, i32 0
  %mul29 = fmul float %1, 1.000000e+03
  %conv30 = fptosi float %mul29 to i32
  %7 = tail call float @llvm.fabs.f32(float %sub)
  %mul31 = fmul float %7, 1.000000e+02
  %conv32 = fptoui float %mul31 to i32
  %mul35 = fmul float %sub, 3.000000e+00
  %conv36 = fptosi float %mul35 to i32
  %conv37 = sitofp i32 %conv36 to float
  %8 = bitcast float %conv37 to i32
  %add39 = add nsw i32 %i.0113, 50
  %conv40 = uitofp i32 %add39 to float
  %mul41 = fmul float %conv40, 1.500000e+00
  %9 = bitcast float %mul41 to i32
  %10 = tail call float @llvm.minnum.f32(float %1, float %sub)
  %11 = bitcast float %10 to i32
  %12 = bitcast float %1 to i32
  %xor47 = xor i32 %11, %12
  %13 = tail call float @llvm.fmuladd.f32(float %1, float 0x3FB99999A0000000, float 0xBFD3333340000000)
  %14 = tail call float @llvm.fmuladd.f32(float %13, float %1, float 0x3FFB333340000000)
  %15 = tail call noundef float @llvm.fmuladd.f32(float %14, float %1, float -2.000000e+00)
  %16 = bitcast float %15 to i32
  %shr = lshr i32 %16, 3
  %add27 = add nuw i32 %9, 16
  %add28 = add i32 %add27, %conv30
  %add33 = add i32 %add28, %conv11
  %add15 = add i32 %add33, %mul14
  %add34 = add i32 %add15, %mul18
  %add43 = add i32 %add34, %conv32
  %add44 = add i32 %add43, %xor47
  %add19 = add i32 %add44, %shr
  %add48 = add i32 %add19, %8
  %add51 = add i32 %add48, %xor
  %or = tail call i32 @llvm.fshl.i32(i32 %add51, i32 %add51, i32 3)
  %inc = add nsw i32 %i.0113, 1
  %exitcond.not = icmp eq i32 %inc, 50
  br i1 %exitcond.not, label %for.cond53.preheader, label %for.body, !llvm.loop !10
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: nounwind
declare dso_local float @sqrtf(float noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

; Function Attrs: nounwind
declare dso_local float @fmaf(float noundef, float noundef, float noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nobuiltin nounwind "no-builtins" }

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
