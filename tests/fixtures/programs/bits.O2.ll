; ModuleID = 'tests/programs/bits.c'
source_filename = "tests/programs/bits.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define dso_local i32 @main() local_unnamed_addr #0 {
entry:
  br label %for.body

for.cond.cleanup:                                 ; preds = %cond.end14
  ret i32 %or34

for.body:                                         ; preds = %entry, %cond.end14
  %h.065 = phi i32 [ 0, %entry ], [ %or34, %cond.end14 ]
  %x.064 = phi i32 [ -559038737, %entry ], [ %add, %cond.end14 ]
  %i.063 = phi i32 [ 0, %entry ], [ %inc, %cond.end14 ]
  %y.062 = phi i64 [ 81985529216486895, %entry ], [ %add2, %cond.end14 ]
  %mul = mul i32 %x.064, 69069
  %add = add i32 %mul, 1
  %mul1 = mul i64 %y.062, 6364136223846793005
  %add2 = add i64 %mul1, 1442695040888963407
  %rem = and i32 %i.063, 31
  %shr = lshr i32 %add, %rem
  %rem3 = and i32 %i.063, 63
  %sh_prom = zext nneg i32 %rem3 to i64
  %shr4 = lshr i64 %add2, %sh_prom
  %0 = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %shr)
  %1 = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %shr4)
  %cast = trunc nuw nsw i64 %1 to i32
  %mul5 = mul nuw nsw i32 %cast, 3
  %tobool.not = icmp eq i32 %shr, 0
  %2 = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %shr, i1 false)
  %tobool9.not = icmp eq i64 %shr4, 0
  br i1 %tobool9.not, label %cond.end14, label %cond.true10

cond.true10:                                      ; preds = %for.body
  %3 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %shr4, i1 true)
  %cast11 = trunc nuw nsw i64 %3 to i32
  %mul12 = mul nuw nsw i32 %cast11, 5
  %4 = add nuw nsw i32 %cast11, 1
  br label %cond.end14

cond.end14:                                       ; preds = %for.body, %cond.true10
  %cast19 = phi i32 [ %4, %cond.true10 ], [ 0, %for.body ]
  %cond15 = phi i32 [ %mul12, %cond.true10 ], [ 64, %for.body ]
  %5 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %shr, i1 true)
  %6 = add nuw nsw i32 %5, 1
  %ffs = select i1 %tobool.not, i32 0, i32 %6
  %add6 = add i32 %0, %h.065
  %add7 = add i32 %add6, %2
  %add8 = add i32 %add7, %mul5
  %add16 = add i32 %add8, %cast19
  %add20 = add i32 %add16, %ffs
  %add21 = add i32 %add20, %cond15
  %7 = tail call i32 @llvm.bswap.i32(i32 %shr)
  %8 = tail call i64 @llvm.bswap.i64(i64 %shr4)
  %shr22 = lshr i64 %8, 17
  %conv = trunc i64 %shr22 to i32
  %add23 = add i32 %7, %conv
  %xor = xor i32 %add21, %add23
  %or.i = tail call noundef i32 @llvm.fshr.i32(i32 %shr, i32 %shr, i32 range(i32 -2147483648, 500) %i.063)
  %9 = tail call noundef i32 @llvm.bitreverse.i32(i32 %shr)
  %xor25 = xor i32 %or.i, %9
  %shr27 = lshr i32 %shr, 7
  %and = and i32 %shr27, 1023
  %sh.diff = lshr i64 %shr4, 30
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %shl = and i32 %tr.sh.diff, 4193280
  %or = or disjoint i32 %and, %shl
  %add26 = add i32 %or, %xor25
  %add31 = add i32 %add26, %xor
  %or34 = tail call i32 @llvm.fshl.i32(i32 %add31, i32 %add31, i32 1)
  %inc = add nuw nsw i32 %i.063, 1
  %exitcond.not = icmp eq i32 %inc, 500
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !10
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #1

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bitreverse.i32(i32) #3

attributes #0 = { nofree norecurse nosync nounwind memory(none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
