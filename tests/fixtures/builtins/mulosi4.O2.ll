; ModuleID = '../llvm-project/compiler-rt/lib/builtins/mulosi4.c'
source_filename = "../llvm-project/compiler-rt/lib/builtins/mulosi4.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local noundef i32 @__mulosi4(i32 noundef %a, i32 noundef %b, ptr noundef writeonly captures(none) initializes((0, 4)) %overflow) local_unnamed_addr #0 {
entry:
  store i32 0, ptr %overflow, align 4, !tbaa !6
  %cmp.i = icmp eq i32 %a, -2147483648
  br i1 %cmp.i, label %if.then.i, label %if.end4.i

if.then.i:                                        ; preds = %entry
  %or.cond.i = icmp ugt i32 %b, 1
  br i1 %or.cond.i, label %cleanup34.sink.split.i, label %__muloXi4.exit

if.end4.i:                                        ; preds = %entry
  %cmp5.i = icmp eq i32 %b, -2147483648
  br i1 %cmp5.i, label %if.then6.i, label %if.end12.i

if.then6.i:                                       ; preds = %if.end4.i
  %or.cond38.i = icmp ugt i32 %a, 1
  br i1 %or.cond38.i, label %cleanup34.sink.split.i, label %__muloXi4.exit

if.end12.i:                                       ; preds = %if.end4.i
  %shr.i = ashr i32 %a, 31
  %xor.i = xor i32 %shr.i, %a
  %sub.i = sub nsw i32 %xor.i, %shr.i
  %shr13.i = ashr i32 %b, 31
  %xor14.i = xor i32 %shr13.i, %b
  %sub15.i = sub nsw i32 %xor14.i, %shr13.i
  %cmp16.i = icmp slt i32 %sub.i, 2
  %cmp17.i = icmp slt i32 %sub15.i, 2
  %or.cond39.i = select i1 %cmp16.i, i1 true, i1 %cmp17.i
  br i1 %or.cond39.i, label %__muloXi4.exit, label %if.end19.i

if.end19.i:                                       ; preds = %if.end12.i
  %cmp20.i = icmp eq i32 %shr.i, %shr13.i
  br i1 %cmp20.i, label %if.then21.i, label %if.else.i

if.then21.i:                                      ; preds = %if.end19.i
  %div.i = udiv i32 2147483647, %sub15.i
  %cmp22.i = icmp samesign ugt i32 %sub.i, %div.i
  br i1 %cmp22.i, label %cleanup34.sink.split.i, label %__muloXi4.exit

if.else.i:                                        ; preds = %if.end19.i
  %div2665.i = udiv i32 -2147483648, %sub15.i
  %cmp27.i = icmp samesign ugt i32 %sub.i, %div2665.i
  br i1 %cmp27.i, label %cleanup34.sink.split.i, label %__muloXi4.exit

cleanup34.sink.split.i:                           ; preds = %if.else.i, %if.then21.i, %if.then6.i, %if.then.i
  store i32 1, ptr %overflow, align 4, !tbaa !6
  br label %__muloXi4.exit

__muloXi4.exit:                                   ; preds = %if.then.i, %if.then6.i, %if.end12.i, %if.then21.i, %if.else.i, %cleanup34.sink.split.i
  %mul.i = mul i32 %b, %a
  ret i32 %mul.i
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }

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
