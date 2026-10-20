; ModuleID = 'tests/programs/fnptr.c'
source_filename = "tests/programs/fnptr.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@unops = internal unnamed_addr constant [4 x ptr] [ptr @sq, ptr @neg, ptr @half, ptr @inc], align 4
@binops = internal unnamed_addr global [3 x ptr] [ptr @add, ptr @mx, ptr @mix], align 4
@fibp = internal global ptr @fib, align 4

; Function Attrs: nounwind
define dso_local i32 @main() local_unnamed_addr #0 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.cond1.preheader
  %round.0128 = phi i32 [ 0, %entry ], [ %inc16, %for.cond1.preheader ]
  %h.0127 = phi i32 [ 0, %entry ], [ %add14, %for.cond1.preheader ]
  %sub = add nuw nsw i32 %round.0128, -40
  %add.1 = add nuw nsw i32 %round.0128, -33
  %add.2 = add nuw nsw i32 %round.0128, -26
  %add.3 = add nuw nsw i32 %round.0128, -19
  %add.4 = add nuw nsw i32 %round.0128, -12
  %add.5 = add nsw i32 %round.0128, -5
  %add.6 = add nuw nsw i32 %round.0128, 2
  %add.7 = add nuw nsw i32 %round.0128, 9
  %add.8 = add nuw nsw i32 %round.0128, 16
  %add.9 = add nuw nsw i32 %round.0128, 23
  %add.10 = add nuw nsw i32 %round.0128, 30
  %add.11 = add nuw nsw i32 %round.0128, 37
  %add.12 = add nuw nsw i32 %round.0128, 44
  %add.13 = add nuw nsw i32 %round.0128, 51
  %add.14 = add nuw nsw i32 %round.0128, 58
  %add.15 = add nuw nsw i32 %round.0128, 65
  %rem = and i32 %round.0128, 3
  %arrayidx5 = getelementptr inbounds nuw ptr, ptr @unops, i32 %rem
  %0 = load ptr, ptr %arrayidx5, align 4, !tbaa !10
  %call.i35 = tail call i32 %0(i32 noundef %sub) #3
  %call.1.i37 = tail call i32 %0(i32 noundef %add.1) #3
  %call.2.i39 = tail call i32 %0(i32 noundef %add.2) #3
  %call.3.i41 = tail call i32 %0(i32 noundef %add.3) #3
  %call.4.i43 = tail call i32 %0(i32 noundef %add.4) #3
  %call.5.i45 = tail call i32 %0(i32 noundef %add.5) #3
  %call.6.i47 = tail call i32 %0(i32 noundef %add.6) #3
  %call.7.i49 = tail call i32 %0(i32 noundef %add.7) #3
  %call.8.i51 = tail call i32 %0(i32 noundef %add.8) #3
  %call.9.i53 = tail call i32 %0(i32 noundef %add.9) #3
  %call.10.i55 = tail call i32 %0(i32 noundef %add.10) #3
  %call.11.i57 = tail call i32 %0(i32 noundef %add.11) #3
  %call.12.i59 = tail call i32 %0(i32 noundef %add.12) #3
  %call.13.i61 = tail call i32 %0(i32 noundef %add.13) #3
  %call.14.i63 = tail call i32 %0(i32 noundef %add.14) #3
  %call.15.i65 = tail call i32 %0(i32 noundef %add.15) #3
  %mul6 = mul i32 %h.0127, 13
  %rem8 = urem i32 %round.0128, 3
  %arrayidx9 = getelementptr inbounds nuw ptr, ptr @binops, i32 %rem8
  %1 = load ptr, ptr %arrayidx9, align 4, !tbaa !10
  %call.i66 = tail call i32 %1(i32 noundef range(i32 -2147483648, 8) %round.0128, i32 noundef %call.i35) #3
  %call.1.i68 = tail call i32 %1(i32 noundef %call.i66, i32 noundef %call.1.i37) #3
  %call.2.i70 = tail call i32 %1(i32 noundef %call.1.i68, i32 noundef %call.2.i39) #3
  %call.3.i72 = tail call i32 %1(i32 noundef %call.2.i70, i32 noundef %call.3.i41) #3
  %call.4.i74 = tail call i32 %1(i32 noundef %call.3.i72, i32 noundef %call.4.i43) #3
  %call.5.i76 = tail call i32 %1(i32 noundef %call.4.i74, i32 noundef %call.5.i45) #3
  %call.6.i78 = tail call i32 %1(i32 noundef %call.5.i76, i32 noundef %call.6.i47) #3
  %call.7.i80 = tail call i32 %1(i32 noundef %call.6.i78, i32 noundef %call.7.i49) #3
  %call.8.i82 = tail call i32 %1(i32 noundef %call.7.i80, i32 noundef %call.8.i51) #3
  %call.9.i84 = tail call i32 %1(i32 noundef %call.8.i82, i32 noundef %call.9.i53) #3
  %call.10.i86 = tail call i32 %1(i32 noundef %call.9.i84, i32 noundef %call.10.i55) #3
  %call.11.i88 = tail call i32 %1(i32 noundef %call.10.i86, i32 noundef %call.11.i57) #3
  %call.12.i90 = tail call i32 %1(i32 noundef %call.11.i88, i32 noundef %call.12.i59) #3
  %call.13.i92 = tail call i32 %1(i32 noundef %call.12.i90, i32 noundef %call.13.i61) #3
  %call.14.i94 = tail call i32 %1(i32 noundef %call.13.i92, i32 noundef %call.14.i63) #3
  %call.15.i96 = tail call i32 %1(i32 noundef %call.14.i94, i32 noundef %call.15.i65) #3
  %mul11 = mul nuw nsw i32 %round.0128, 5
  %sub12 = add nsw i32 %mul11, -9
  %mul.i.i = mul nsw i32 %sub12, %sub12
  %div.i6.i = lshr i32 %mul.i.i, 1
  %add10 = add i32 %mul6, 1
  %reass.sub = sub i32 %add10, %div.i6.i
  %add14 = add i32 %reass.sub, %call.15.i96
  %inc16 = add nuw nsw i32 %round.0128, 1
  %exitcond.not = icmp eq i32 %inc16, 8
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.cond1.preheader, !llvm.loop !12

for.cond.cleanup:                                 ; preds = %for.cond1.preheader
  store ptr @mix, ptr @binops, align 4, !tbaa !10
  %xor.i125 = xor i32 %call.i35, 31
  %mul.i123 = mul nsw i32 %xor.i125, 31
  %xor.i124 = xor i32 %mul.i123, %call.1.i37
  %mul.i121 = mul nsw i32 %xor.i124, 31
  %xor.i122 = xor i32 %mul.i121, %call.2.i39
  %mul.i119 = mul nsw i32 %xor.i122, 31
  %xor.i120 = xor i32 %mul.i119, %call.3.i41
  %mul.i117 = mul nsw i32 %xor.i120, 31
  %xor.i118 = xor i32 %mul.i117, %call.4.i43
  %mul.i115 = mul nsw i32 %xor.i118, 31
  %xor.i116 = xor i32 %mul.i115, %call.5.i45
  %mul.i113 = mul nsw i32 %xor.i116, 31
  %xor.i114 = xor i32 %mul.i113, %call.6.i47
  %mul.i111 = mul nsw i32 %xor.i114, 31
  %xor.i112 = xor i32 %mul.i111, %call.7.i49
  %mul.i109 = mul nsw i32 %xor.i112, 31
  %xor.i110 = xor i32 %mul.i109, %call.8.i51
  %mul.i107 = mul nsw i32 %xor.i110, 31
  %xor.i108 = xor i32 %mul.i107, %call.9.i53
  %mul.i105 = mul nsw i32 %xor.i108, 31
  %xor.i106 = xor i32 %mul.i105, %call.10.i55
  %mul.i103 = mul nsw i32 %xor.i106, 31
  %xor.i104 = xor i32 %mul.i103, %call.11.i57
  %mul.i101 = mul nsw i32 %xor.i104, 31
  %xor.i102 = xor i32 %mul.i101, %call.12.i59
  %mul.i99 = mul nsw i32 %xor.i102, 31
  %xor.i100 = xor i32 %mul.i99, %call.13.i61
  %mul.i97 = mul nsw i32 %xor.i100, 31
  %xor.i98 = xor i32 %mul.i97, %call.14.i63
  %mul.i = mul nsw i32 %xor.i98, 31
  %2 = xor i32 %call.15.i65, %mul.i
  %xor = xor i32 %2, %add14
  %3 = load volatile ptr, ptr @fibp, align 4, !tbaa !10
  %call.i34 = tail call i32 %3(i32 noundef 14) #3
  %4 = load volatile ptr, ptr @fibp, align 4, !tbaa !10
  %call2.i = tail call i32 %4(i32 noundef 13) #3
  %add.i = add nsw i32 %call2.i, %call.i34
  %add21 = add i32 %add.i, %xor
  ret i32 %add21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal i32 @mix(i32 noundef %a, i32 noundef %b) #1 {
entry:
  %mul = mul nsw i32 %a, 31
  %xor = xor i32 %mul, %b
  ret i32 %xor
}

; Function Attrs: nounwind
define internal i32 @fib(i32 noundef %n) #0 {
entry:
  %cmp = icmp slt i32 %n, 2
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %0 = load volatile ptr, ptr @fibp, align 4, !tbaa !10
  %sub = add nsw i32 %n, -1
  %call = tail call i32 %0(i32 noundef %sub) #3
  %1 = load volatile ptr, ptr @fibp, align 4, !tbaa !10
  %sub1 = add nsw i32 %n, -2
  %call2 = tail call i32 %1(i32 noundef %sub1) #3
  %add = add nsw i32 %call2, %call
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i32 [ %add, %cond.false ], [ %n, %entry ]
  ret i32 %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal i32 @sq(i32 noundef %x) #1 {
entry:
  %mul = mul nsw i32 %x, %x
  ret i32 %mul
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal range(i32 -2147483647, -2147483648) i32 @neg(i32 noundef %x) #1 {
entry:
  %sub = sub nsw i32 0, %x
  ret i32 %sub
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal noundef range(i32 -1073741824, 1073741824) i32 @half(i32 noundef %x) #1 {
entry:
  %div = sdiv i32 %x, 2
  ret i32 %div
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal range(i32 -2147483647, -2147483648) i32 @inc(i32 noundef %x) #1 {
entry:
  %add = add nsw i32 %x, 1
  ret i32 %add
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal i32 @add(i32 noundef %a, i32 noundef %b) #1 {
entry:
  %add = add nsw i32 %b, %a
  ret i32 %add
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal noundef i32 @mx(i32 noundef %a, i32 noundef %b) #1 {
entry:
  %cond = tail call i32 @llvm.smax.i32(i32 %a, i32 %b)
  ret i32 %cond
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
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
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
