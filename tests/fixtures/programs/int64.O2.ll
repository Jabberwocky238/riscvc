; ModuleID = 'tests/programs/int64.c'
source_filename = "tests/programs/int64.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@s = internal unnamed_addr global i64 1311768467463790320, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define dso_local i32 @main() local_unnamed_addr #0 {
entry:
  %s.promoted = load i64, ptr @s, align 8, !tbaa !10
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body
  store i64 %xor1.i102, ptr @s, align 8, !tbaa !10
  %shr53 = lshr i64 %or52, 32
  %xor54 = xor i64 %shr53, %or52
  %conv55 = trunc i64 %xor54 to i32
  ret i32 %conv55

for.body:                                         ; preds = %entry, %for.body
  %h.0107 = phi i64 [ 0, %entry ], [ %or52, %for.body ]
  %i.0106 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %xor1.i102104105 = phi i64 [ %s.promoted, %entry ], [ %xor1.i102, %for.body ]
  %shl.i = shl i64 %xor1.i102104105, 7
  %xor.i = xor i64 %shl.i, %xor1.i102104105
  %shr.i = lshr i64 %xor.i, 9
  %xor1.i = xor i64 %shr.i, %xor.i
  %shl.i99 = shl i64 %xor1.i, 7
  %xor.i100 = xor i64 %shl.i99, %xor1.i
  %shr.i101 = lshr i64 %xor.i100, 9
  %xor1.i102 = xor i64 %shr.i101, %xor.i100
  %or = or i64 %xor1.i102, 1
  %rem.lhs.trunc = trunc nuw i32 %i.0106 to i8
  %rem103 = urem i8 %rem.lhs.trunc, 40
  %sh_prom = zext nneg i8 %rem103 to i64
  %shr = lshr i64 %or, %sh_prom
  %or2 = or i64 %shr, 1
  %rem3 = and i32 %i.0106, 63
  %mul = mul i64 %or, %xor1.i
  %add = add i64 %mul, %h.0107
  %xor1.i.frozen = freeze i64 %xor1.i
  %or.frozen = freeze i64 %or
  %div = udiv i64 %xor1.i.frozen, %or.frozen
  %0 = mul i64 %div, %or.frozen
  %rem4.decomposed = sub i64 %xor1.i.frozen, %0
  %add5 = add i64 %rem4.decomposed, %div
  %xor = xor i64 %add, %add5
  %xor1.i.frozen108 = freeze i64 %xor1.i
  %or2.frozen = freeze i64 %or2
  %div6 = sdiv i64 %xor1.i.frozen108, %or2.frozen
  %1 = mul i64 %div6, %or2.frozen
  %rem7.decomposed = sub i64 %xor1.i.frozen108, %1
  %xor8 = xor i64 %rem7.decomposed, %div6
  %sh_prom10 = zext nneg i32 %rem3 to i64
  %shl = shl i64 %xor1.i, %sh_prom10
  %shr12 = lshr i64 %xor1.i, %sh_prom10
  %xor13 = xor i64 %shl, %shr12
  %shr15 = ashr i64 %xor1.i, %sh_prom10
  %xor16 = xor i64 %xor13, %shr15
  %cmp18 = icmp ult i64 %xor1.i, %or
  %cmp19 = icmp slt i64 %xor1.i, %or2
  %mul21 = select i1 %cmp19, i32 2, i32 0
  %cmp23 = icmp eq i64 %xor1.i, %or2
  %mul25 = select i1 %cmp23, i32 4, i32 0
  %add22 = select i1 %cmp18, i32 1, i32 8
  %add26 = or disjoint i32 %add22, %mul21
  %add30 = or disjoint i32 %add26, %mul25
  %conv31 = zext nneg i32 %add30 to i64
  %2 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %xor1.i, i64 %or2)
  %3 = extractvalue { i64, i1 } %2, 1
  %4 = extractvalue { i64, i1 } %2, 0
  %conv33 = zext i1 %3 to i64
  %5 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %xor1.i, i64 %or2)
  %6 = extractvalue { i64, i1 } %5, 1
  %7 = extractvalue { i64, i1 } %5, 0
  %mul37 = select i1 %6, i64 3, i64 0
  %conv42 = ashr i64 %xor1.i, 32
  %conv44 = and i64 %or, 65535
  %8 = shl i64 %xor1.i, 56
  %conv47 = ashr exact i64 %8, 56
  %add9 = add nsw i64 %conv47, %conv42
  %add17 = add i64 %add9, %xor8
  %add32 = add i64 %add17, %xor16
  %add34 = add i64 %add32, %conv44
  %add35 = add i64 %add34, %xor
  %add38 = add i64 %add35, %7
  %add39 = add i64 %add38, %4
  %add45 = add i64 %add39, %mul37
  %add48 = add i64 %add45, %conv33
  %add49 = add i64 %add48, %conv31
  %or52 = tail call i64 @llvm.fshl.i64(i64 %add49, i64 %add49, i64 13)
  %inc = add nuw nsw i32 %i.0106, 1
  %exitcond.not = icmp eq i32 %inc, 200
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !12
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem0: none, target_mem1: none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
!11 = !{!"long long", !8, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
