; ModuleID = '../llvm-project/compiler-rt/lib/builtins/divsf3.c'
source_filename = "../llvm-project/compiler-rt/lib/builtins/divsf3.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local float @__divsf3(float noundef %a, float noundef %b) local_unnamed_addr #0 {
entry:
  %0 = bitcast float %a to i32
  %shr.i = lshr i32 %0, 23
  %and.i = and i32 %shr.i, 255
  %1 = bitcast float %b to i32
  %shr2.i = lshr i32 %1, 23
  %and3.i = and i32 %shr2.i, 255
  %xor.i = xor i32 %1, %0
  %and6.i = and i32 %xor.i, -2147483648
  %and8.i = and i32 %0, 8388607
  %and10.i = and i32 %1, 8388607
  %2 = add nsw i32 %and.i, -255
  %cmp.i = icmp ult i32 %2, -254
  %3 = add nsw i32 %and3.i, -255
  %cmp12.i = icmp ult i32 %3, -254
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp12.i
  br i1 %or.cond.i, label %if.then.i, label %if.end61.i

if.then.i:                                        ; preds = %entry
  %4 = tail call float @llvm.fabs.f32(float %a)
  %and14.i = bitcast float %4 to i32
  %5 = tail call float @llvm.fabs.f32(float %b)
  %and16.i = bitcast float %5 to i32
  %cmp17.i = icmp samesign ugt i32 %and14.i, 2139095040
  br i1 %cmp17.i, label %if.then18.i, label %if.end.i

if.then18.i:                                      ; preds = %if.then.i
  %or.i = or i32 %0, 4194304
  %6 = bitcast i32 %or.i to float
  br label %__divXf3__.exit

if.end.i:                                         ; preds = %if.then.i
  %cmp21.i = icmp samesign ugt i32 %and16.i, 2139095040
  br i1 %cmp21.i, label %if.then22.i, label %if.end26.i

if.then22.i:                                      ; preds = %if.end.i
  %or24.i = or i32 %1, 4194304
  %7 = bitcast i32 %or24.i to float
  br label %__divXf3__.exit

if.end26.i:                                       ; preds = %if.end.i
  %cmp27.i = icmp eq i32 %and14.i, 2139095040
  %cmp29.i = icmp eq i32 %and16.i, 2139095040
  br i1 %cmp27.i, label %if.then28.i, label %if.end34.i

if.then28.i:                                      ; preds = %if.end26.i
  br i1 %cmp29.i, label %__divXf3__.exit, label %if.else.i

if.else.i:                                        ; preds = %if.then28.i
  %or32.i = or disjoint i32 %and6.i, 2139095040
  %8 = bitcast i32 %or32.i to float
  br label %__divXf3__.exit

if.end34.i:                                       ; preds = %if.end26.i
  br i1 %cmp29.i, label %if.then36.i, label %if.end38.i

if.then36.i:                                      ; preds = %if.end34.i
  %9 = bitcast i32 %and6.i to float
  br label %__divXf3__.exit

if.end38.i:                                       ; preds = %if.end34.i
  %tobool.not.i = icmp eq i32 %and14.i, 0
  %tobool40.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool.not.i, label %if.then39.i, label %if.end45.i

if.then39.i:                                      ; preds = %if.end38.i
  %10 = bitcast i32 %and6.i to float
  %spec.select.i = select i1 %tobool40.not.i, float 0x7FF8000000000000, float %10
  br label %__divXf3__.exit

if.end45.i:                                       ; preds = %if.end38.i
  br i1 %tobool40.not.i, label %if.then47.i, label %if.end50.i

if.then47.i:                                      ; preds = %if.end45.i
  %or48.i = or disjoint i32 %and6.i, 2139095040
  %11 = bitcast i32 %or48.i to float
  br label %__divXf3__.exit

if.end50.i:                                       ; preds = %if.end45.i
  %cmp51.i = icmp samesign ult i32 %and14.i, 8388608
  br i1 %cmp51.i, label %if.then52.i, label %if.end54.i

if.then52.i:                                      ; preds = %if.end50.i
  %12 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %and8.i, i1 true)
  %sub.i.i = add nsw i32 %12, -8
  %shl.i.i = shl i32 %and8.i, %sub.i.i
  %sub2.i.i = sub nsw i32 9, %12
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then52.i, %if.end50.i
  %aSignificand.0.i = phi i32 [ %shl.i.i, %if.then52.i ], [ %and8.i, %if.end50.i ]
  %scale.0.i = phi i32 [ %sub2.i.i, %if.then52.i ], [ 0, %if.end50.i ]
  %cmp55.i = icmp samesign ult i32 %and16.i, 8388608
  br i1 %cmp55.i, label %if.then56.i, label %if.end61.i

if.then56.i:                                      ; preds = %if.end54.i
  %13 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %and10.i, i1 true)
  %sub.i225.i = add nsw i32 %13, -8
  %shl.i226.i = shl i32 %and10.i, %sub.i225.i
  %sub2.i227.neg.i = add nsw i32 %13, -9
  %sub58.i = add nsw i32 %sub2.i227.neg.i, %scale.0.i
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.then56.i, %if.end54.i, %entry
  %bSignificand.1.i = phi i32 [ %and10.i, %entry ], [ %and10.i, %if.end54.i ], [ %shl.i226.i, %if.then56.i ]
  %aSignificand.2.i = phi i32 [ %and8.i, %entry ], [ %aSignificand.0.i, %if.end54.i ], [ %aSignificand.0.i, %if.then56.i ]
  %scale.3.i = phi i32 [ 0, %entry ], [ %scale.0.i, %if.end54.i ], [ %sub58.i, %if.then56.i ]
  %or62.i = or i32 %aSignificand.2.i, 8388608
  %or63.i = or i32 %bSignificand.1.i, 8388608
  %sub64.i = sub nsw i32 %and.i, %and3.i
  %add65.i = add nsw i32 %scale.3.i, %sub64.i
  %add66.i = add nsw i32 %add65.i, 127
  %shl.i = shl i32 %or63.i, 8
  %sub67.i = sub i32 1963258675, %shl.i
  %conv.i = zext i32 %sub67.i to i64
  %conv68.i = zext i32 %shl.i to i64
  %mul.i = mul nuw i64 %conv.i, %conv68.i
  %shr69.i = lshr i64 %mul.i, 32
  %14 = trunc nuw i64 %shr69.i to i32
  %conv71.i = sub i32 0, %14
  %conv73.i = zext i32 %conv71.i to i64
  %mul74.i = mul nuw i64 %conv73.i, %conv.i
  %shr75.i = lshr i64 %mul74.i, 31
  %conv78.i = and i64 %shr75.i, 4294967295
  %mul80.i = mul nuw i64 %conv78.i, %conv68.i
  %shr81.i = lshr i64 %mul80.i, 32
  %15 = trunc nuw i64 %shr81.i to i32
  %conv83.i = sub i32 0, %15
  %conv85.i = zext i32 %conv83.i to i64
  %mul86.i = mul nuw i64 %conv78.i, %conv85.i
  %shr87.i = lshr i64 %mul86.i, 31
  %conv90.i = and i64 %shr87.i, 4294967295
  %mul92.i = mul nuw i64 %conv90.i, %conv68.i
  %shr93.i = lshr i64 %mul92.i, 32
  %16 = trunc nuw i64 %shr93.i to i32
  %conv95.i = sub i32 0, %16
  %conv97.i = zext i32 %conv95.i to i64
  %mul98.i = mul nuw i64 %conv90.i, %conv97.i
  %shr99.i = lshr i64 %mul98.i, 31
  %conv100.i = trunc i64 %shr99.i to i32
  %sub102.i = add i32 %conv100.i, -12
  %shl103.i = shl i32 %or62.i, 1
  %conv.i.i = zext i32 %sub102.i to i64
  %conv1.i.i = zext i32 %shl103.i to i64
  %mul.i.i = mul nuw i64 %conv.i.i, %conv1.i.i
  %shr.i.i = lshr i64 %mul.i.i, 32
  %conv2.i.i = trunc nuw i64 %shr.i.i to i32
  %cmp104.i = icmp ult i32 %conv2.i.i, 16777216
  br i1 %cmp104.i, label %if.then106.i, label %if.else118.i

if.then106.i:                                     ; preds = %if.end61.i
  %cmp107.i = icmp samesign ult i32 %conv2.i.i, 8388608
  %sub111.i = add nsw i32 %add65.i, 126
  %shl110.i = zext i1 %cmp107.i to i32
  %quotient_UQ1.0.i = shl nuw nsw i32 %conv2.i.i, %shl110.i
  %writtenExponent.0.i = select i1 %cmp107.i, i32 %sub111.i, i32 %add66.i
  %shl113.i = shl i32 %aSignificand.2.i, 24
  %mul114.i = mul i32 %quotient_UQ1.0.i, %or63.i
  %sub115.i = sub i32 %shl113.i, %mul114.i
  %sub116.i = add nsw i32 %writtenExponent.0.i, -1
  br label %if.end123.i

if.else118.i:                                     ; preds = %if.end61.i
  %shr119.i = lshr i32 %conv2.i.i, 1
  %shl120.i = shl i32 %aSignificand.2.i, 23
  %mul121.i = mul i32 %shr119.i, %or63.i
  %sub122.i = sub i32 %shl120.i, %mul121.i
  br label %if.end123.i

if.end123.i:                                      ; preds = %if.else118.i, %if.then106.i
  %quotient_UQ1.1.i = phi i32 [ %quotient_UQ1.0.i, %if.then106.i ], [ %shr119.i, %if.else118.i ]
  %aSignificand.3.i = phi i32 [ %shl103.i, %if.then106.i ], [ %or62.i, %if.else118.i ]
  %writtenExponent.1.i = phi i32 [ %sub116.i, %if.then106.i ], [ %add66.i, %if.else118.i ]
  %residualLo.0.i = phi i32 [ %sub115.i, %if.then106.i ], [ %sub122.i, %if.else118.i ]
  %cmp124.i = icmp sgt i32 %writtenExponent.1.i, 254
  br i1 %cmp124.i, label %if.then126.i, label %if.end129.i

if.then126.i:                                     ; preds = %if.end123.i
  %or127.i = or disjoint i32 %and6.i, 2139095040
  %17 = bitcast i32 %or127.i to float
  br label %__divXf3__.exit

if.end129.i:                                      ; preds = %if.end123.i
  %cmp130.i = icmp sgt i32 %writtenExponent.1.i, 0
  br i1 %cmp130.i, label %if.then132.i, label %if.else137.i

if.then132.i:                                     ; preds = %if.end129.i
  %and133.i = and i32 %quotient_UQ1.1.i, 8388607
  %shl134.i = shl nuw nsw i32 %writtenExponent.1.i, 23
  %or135.i = or disjoint i32 %shl134.i, %and133.i
  %shl136.i = shl i32 %residualLo.0.i, 1
  br label %if.end152.i

if.else137.i:                                     ; preds = %if.end129.i
  %cmp139.i = icmp slt i32 %writtenExponent.1.i, -23
  br i1 %cmp139.i, label %if.then141.i, label %if.end143.i

if.then141.i:                                     ; preds = %if.else137.i
  %18 = bitcast i32 %and6.i to float
  br label %__divXf3__.exit

if.end143.i:                                      ; preds = %if.else137.i
  %add138.i = add nsw i32 %writtenExponent.1.i, 23
  %add145.i = sub nsw i32 1, %writtenExponent.1.i
  %shr146.i = lshr i32 %quotient_UQ1.1.i, %add145.i
  %shl148.i = shl i32 %aSignificand.3.i, %add138.i
  %mul149.i = shl i32 %or63.i, 1
  %shl150.i = mul i32 %mul149.i, %shr146.i
  %sub151.i = sub i32 %shl148.i, %shl150.i
  br label %if.end152.i

if.end152.i:                                      ; preds = %if.end143.i, %if.then132.i
  %residualLo.1.i = phi i32 [ %shl136.i, %if.then132.i ], [ %sub151.i, %if.end143.i ]
  %absResult.0.i = phi i32 [ %or135.i, %if.then132.i ], [ %shr146.i, %if.end143.i ]
  %and153.i = and i32 %absResult.0.i, 1
  %add154.i = add i32 %and153.i, %residualLo.1.i
  %cmp155.i = icmp ugt i32 %add154.i, %or63.i
  %conv156.i = zext i1 %cmp155.i to i32
  %add157.i = add nuw nsw i32 %absResult.0.i, %conv156.i
  %or158.i = or i32 %add157.i, %and6.i
  %19 = bitcast i32 %or158.i to float
  br label %__divXf3__.exit

__divXf3__.exit:                                  ; preds = %if.then18.i, %if.then22.i, %if.then28.i, %if.else.i, %if.then36.i, %if.then39.i, %if.then47.i, %if.then126.i, %if.then141.i, %if.end152.i
  %retval.3.i = phi float [ %18, %if.then141.i ], [ %17, %if.then126.i ], [ %19, %if.end152.i ], [ %spec.select.i, %if.then39.i ], [ %6, %if.then18.i ], [ %11, %if.then47.i ], [ 0x7FF8000000000000, %if.then28.i ], [ %9, %if.then36.i ], [ %8, %if.else.i ], [ %7, %if.then22.i ]
  ret float %retval.3.i
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
