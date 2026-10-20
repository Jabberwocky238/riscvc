; ModuleID = 'tests/programs/globals.c'
source_filename = "tests/programs/globals.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@primes = internal unnamed_addr constant [15 x i32] [i32 2, i32 3, i32 5, i32 7, i32 11, i32 13, i32 17, i32 19, i32 23, i32 29, i32 31, i32 37, i32 41, i32 43, i32 47], align 4
@counts = internal unnamed_addr global [16 x i32] [i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 4
@tick.n = internal unnamed_addr global i32 100, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define dso_local i32 @main() local_unnamed_addr #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %i.0124 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %arrayidx = getelementptr inbounds nuw i32, ptr @primes, i32 %i.0124
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !6
  %rem = srem i32 %0, 16
  %arrayidx2 = getelementptr inbounds i32, ptr @counts, i32 %rem
  %1 = load i32, ptr %arrayidx2, align 4, !tbaa !6
  %add = add nsw i32 %1, %0
  store i32 %add, ptr %arrayidx2, align 4, !tbaa !6
  %inc = add nuw nsw i32 %i.0124, 1
  %exitcond.not = icmp eq i32 %inc, 15
  br i1 %exitcond.not, label %for.cond.cleanup23.5, label %for.body, !llvm.loop !10

for.cond.cleanup23.5:                             ; preds = %for.body
  %2 = load i32, ptr getelementptr inbounds nuw (i8, ptr @counts, i32 20), align 4, !tbaa !6
  %add5 = add nsw i32 %2, 1000
  store i32 %add5, ptr getelementptr inbounds nuw (i8, ptr @counts, i32 20), align 4, !tbaa !6
  %3 = load i32, ptr @counts, align 4, !tbaa !6
  %4 = load i32, ptr getelementptr inbounds nuw (i8, ptr @counts, i32 4), align 4, !tbaa !6
  %5 = load i32, ptr getelementptr inbounds nuw (i8, ptr @counts, i32 8), align 4, !tbaa !6
  %6 = load i32, ptr getelementptr inbounds nuw (i8, ptr @counts, i32 12), align 4, !tbaa !6
  %7 = load i32, ptr getelementptr inbounds nuw (i8, ptr @counts, i32 16), align 4, !tbaa !6
  %8 = load i32, ptr getelementptr inbounds nuw (i8, ptr @counts, i32 24), align 4, !tbaa !6
  %9 = load i32, ptr getelementptr inbounds nuw (i8, ptr @counts, i32 28), align 4, !tbaa !6
  %10 = load i32, ptr getelementptr inbounds nuw (i8, ptr @counts, i32 32), align 4, !tbaa !6
  %11 = load i32, ptr getelementptr inbounds nuw (i8, ptr @counts, i32 36), align 4, !tbaa !6
  %12 = load i32, ptr getelementptr inbounds nuw (i8, ptr @counts, i32 40), align 4, !tbaa !6
  %13 = load i32, ptr getelementptr inbounds nuw (i8, ptr @counts, i32 44), align 4, !tbaa !6
  %14 = load i32, ptr getelementptr inbounds nuw (i8, ptr @counts, i32 48), align 4, !tbaa !6
  %15 = load i32, ptr getelementptr inbounds nuw (i8, ptr @counts, i32 52), align 4, !tbaa !6
  %16 = load i32, ptr getelementptr inbounds nuw (i8, ptr @counts, i32 56), align 4, !tbaa !6
  %17 = load i32, ptr getelementptr inbounds nuw (i8, ptr @counts, i32 60), align 4, !tbaa !6
  %shl.15 = shl i32 %17, 7
  %shl.1 = shl i32 %4, 1
  %18 = xor i32 %3, %shl.1
  %shl.2 = shl i32 %5, 2
  %19 = xor i32 %18, %shl.2
  %shl.3 = shl i32 %6, 3
  %20 = xor i32 %19, %shl.3
  %shl.4 = shl i32 %7, 4
  %21 = xor i32 %20, %shl.4
  %shl.5 = shl i32 %add5, 5
  %22 = xor i32 %21, %shl.5
  %shl.6 = shl i32 %8, 6
  %23 = xor i32 %22, %shl.6
  %shl.7 = shl i32 %9, 7
  %24 = xor i32 %23, %shl.7
  %25 = xor i32 %24, %10
  %shl.9 = shl i32 %11, 1
  %26 = xor i32 %25, %shl.9
  %shl.10 = shl i32 %12, 2
  %27 = xor i32 %26, %shl.10
  %shl.11 = shl i32 %13, 3
  %28 = xor i32 %27, %shl.11
  %shl.12 = shl i32 %14, 4
  %29 = xor i32 %28, %shl.12
  %shl.13 = shl i32 %15, 5
  %30 = xor i32 %29, %shl.13
  %shl.14 = shl i32 %16, 6
  %31 = xor i32 %30, %shl.14
  %32 = xor i32 %31, %shl.15
  %xor.15 = xor i32 %32, -1257131086
  %tick.n.promoted = load i32, ptr @tick.n, align 4, !tbaa !6
  %33 = add i32 %tick.n.promoted, 5
  %34 = mul i32 %tick.n.promoted, 5
  %35 = add i32 %34, 1569232585
  %.neg = mul i32 %xor.15, -67006753
  %36 = add i32 %.neg, %35
  store i32 %33, ptr @tick.n, align 4, !tbaa !6
  ret i32 %36
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem0: none, target_mem1: none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }

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
