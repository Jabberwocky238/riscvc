; ModuleID = '../llvm-project/compiler-rt/lib/builtins/mulvdi3.c'
source_filename = "../llvm-project/compiler-rt/lib/builtins/mulvdi3.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@.str = private unnamed_addr constant [59 x i8] c"../llvm-project/compiler-rt/lib/builtins/int_mulv_impl.inc\00", align 1
@__func__.__mulvXi3 = private unnamed_addr constant [10 x i8] c"__mulvXi3\00", align 1

; Function Attrs: nounwind
define dso_local i64 @__mulvdi3(i64 noundef %a, i64 noundef %b) local_unnamed_addr #0 {
entry:
  %cmp.i = icmp eq i64 %a, -9223372036854775808
  br i1 %cmp.i, label %if.then.i, label %if.end4.i

if.then.i:                                        ; preds = %entry
  %or.cond.i = icmp ult i64 %b, 2
  br i1 %or.cond.i, label %if.then3.i, label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  %mul.i = shl nuw i64 %b, 63
  br label %__mulvXi3.exit

if.end.i:                                         ; preds = %if.then.i
  tail call void @__compilerrt_abort_impl(ptr noundef nonnull @.str, i32 noundef 26, ptr noundef nonnull @__func__.__mulvXi3) #2
  unreachable

if.end4.i:                                        ; preds = %entry
  %cmp5.i = icmp eq i64 %b, -9223372036854775808
  br i1 %cmp5.i, label %if.then6.i, label %if.end13.i

if.then6.i:                                       ; preds = %if.end4.i
  %or.cond41.i = icmp ult i64 %a, 2
  br i1 %or.cond41.i, label %if.then10.i, label %if.end12.i

if.then10.i:                                      ; preds = %if.then6.i
  %mul11.i = shl nuw i64 %a, 63
  br label %__mulvXi3.exit

if.end12.i:                                       ; preds = %if.then6.i
  tail call void @__compilerrt_abort_impl(ptr noundef nonnull @.str, i32 noundef 31, ptr noundef nonnull @__func__.__mulvXi3) #2
  unreachable

if.end13.i:                                       ; preds = %if.end4.i
  %shr.i = ashr i64 %a, 63
  %xor.i = xor i64 %shr.i, %a
  %sub.i = sub nsw i64 %xor.i, %shr.i
  %shr14.i = ashr i64 %b, 63
  %xor15.i = xor i64 %shr14.i, %b
  %sub16.i = sub nsw i64 %xor15.i, %shr14.i
  %cmp17.i = icmp slt i64 %sub.i, 2
  %cmp19.i = icmp slt i64 %sub16.i, 2
  %or.cond42.i = select i1 %cmp17.i, i1 true, i1 %cmp19.i
  br i1 %or.cond42.i, label %cleanup.i, label %if.end22.i

if.end22.i:                                       ; preds = %if.end13.i
  %cmp23.i = icmp eq i64 %shr.i, %shr14.i
  br i1 %cmp23.i, label %if.then24.i, label %if.else.i

if.then24.i:                                      ; preds = %if.end22.i
  %div.i = udiv i64 9223372036854775807, %sub16.i
  %cmp25.i = icmp samesign ugt i64 %sub.i, %div.i
  br i1 %cmp25.i, label %if.then26.i, label %cleanup.i

if.then26.i:                                      ; preds = %if.then24.i
  tail call void @__compilerrt_abort_impl(ptr noundef nonnull @.str, i32 noundef 41, ptr noundef nonnull @__func__.__mulvXi3) #2
  unreachable

if.else.i:                                        ; preds = %if.end22.i
  %div2967.i = udiv i64 -9223372036854775808, %sub16.i
  %cmp30.i = icmp samesign ugt i64 %sub.i, %div2967.i
  br i1 %cmp30.i, label %if.then31.i, label %cleanup.i

if.then31.i:                                      ; preds = %if.else.i
  tail call void @__compilerrt_abort_impl(ptr noundef nonnull @.str, i32 noundef 44, ptr noundef nonnull @__func__.__mulvXi3) #2
  unreachable

cleanup.i:                                        ; preds = %if.else.i, %if.then24.i, %if.end13.i
  %retval.0.i = mul nsw i64 %b, %a
  br label %__mulvXi3.exit

__mulvXi3.exit:                                   ; preds = %if.then3.i, %if.then10.i, %cleanup.i
  %retval.1.i = phi i64 [ %mul.i, %if.then3.i ], [ %mul11.i, %if.then10.i ], [ %retval.0.i, %cleanup.i ]
  ret i64 %retval.1.i
}

; Function Attrs: noreturn
declare dso_local void @__compilerrt_abort_impl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { noreturn "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { nobuiltin noreturn nounwind "no-builtins" }

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
