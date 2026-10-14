; ModuleID = '../llvm-project/compiler-rt/test/builtins/Unit/extendhfsf2_test.c'
source_filename = "../llvm-project/compiler-rt/test/builtins/Unit/extendhfsf2_test.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@.str = private unnamed_addr constant [53 x i8] c"error in test__extendhfsf2(%#.4x) = %f, expected %f\0A\00", align 1
@assumption_1 = dso_local local_unnamed_addr global [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @test__extendhfsf2(i16 noundef zeroext %a, i32 noundef %expected) local_unnamed_addr #0 {
entry:
  %x.addr.i = alloca i32, align 4
  %ret.i = alloca float, align 4
  %x.addr.i.i = alloca float, align 4
  %ret.i.i = alloca i32, align 4
  %call = tail call float @__extendhfsf2(i16 noundef zeroext %a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i)
  store float %call, ptr %x.addr.i.i, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i) #4
  %call.i.i = call ptr @memcpy(ptr noundef nonnull %ret.i.i, ptr noundef nonnull %x.addr.i.i, i32 noundef 4) #3
  %0 = load i32, ptr %ret.i.i, align 4, !tbaa !6
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i)
  %cmp.i = icmp eq i32 %0, %expected
  br i1 %cmp.i, label %if.end, label %compareResultF.exit

compareResultF.exit:                              ; preds = %entry
  %cmp1.i = icmp eq i32 %expected, 2143289344
  %and.i = and i32 %0, 2139095040
  %cmp3.i = icmp eq i32 %and.i, 2139095040
  %or.cond.not13.i.not14 = and i1 %cmp1.i, %cmp3.i
  %and4.i = and i32 %0, 8388607
  %cmp5.not.i = icmp ne i32 %and4.i, 0
  %or.cond12.i.not = and i1 %cmp5.not.i, %or.cond.not13.i.not14
  br i1 %or.cond12.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %compareResultF.exit
  %conv = zext i16 %a to i32
  %conv3 = fpext float %call to double
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i)
  store i32 %expected, ptr %x.addr.i, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i) #4
  %call.i = call ptr @memcpy(ptr noundef nonnull %ret.i, ptr noundef nonnull %x.addr.i, i32 noundef 4) #3
  %1 = load float, ptr %ret.i, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i)
  %conv5 = fpext float %1 to double
  %call6 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %conv, double noundef %conv3, double noundef %conv5) #3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then, %compareResultF.exit
  %retval.0.i13 = phi i32 [ 0, %compareResultF.exit ], [ 1, %if.then ], [ 0, %entry ]
  ret i32 %retval.0.i13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare dso_local float @__extendhfsf2(i16 noundef zeroext) local_unnamed_addr #2

declare dso_local i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @main() local_unnamed_addr #0 {
entry:
  %call1 = tail call i32 @test__extendhfsf2(i16 noundef zeroext 32256, i32 noundef 2143289344) #5
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @test__extendhfsf2(i16 noundef zeroext 32640, i32 noundef 2146435072) #5
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %return

if.end6:                                          ; preds = %if.end
  %call8 = tail call i32 @test__extendhfsf2(i16 noundef zeroext 31744, i32 noundef 2139095040) #5
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %return

if.end11:                                         ; preds = %if.end6
  %call13 = tail call i32 @test__extendhfsf2(i16 noundef zeroext -1024, i32 noundef -8388608) #5
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %return

if.end16:                                         ; preds = %if.end11
  %call18 = tail call i32 @test__extendhfsf2(i16 noundef zeroext 0, i32 noundef 0) #5
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %return

if.end21:                                         ; preds = %if.end16
  %call23 = tail call i32 @test__extendhfsf2(i16 noundef zeroext -32768, i32 noundef -2147483648) #5
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %return

if.end26:                                         ; preds = %if.end21
  %call28 = tail call i32 @test__extendhfsf2(i16 noundef zeroext 16968, i32 noundef 1078525952) #5
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %return

if.end31:                                         ; preds = %if.end26
  %call33 = tail call i32 @test__extendhfsf2(i16 noundef zeroext -15800, i32 noundef -1068957696) #5
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %return

if.end36:                                         ; preds = %if.end31
  %call38 = tail call i32 @test__extendhfsf2(i16 noundef zeroext 28258, i32 noundef 1171013632) #5
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %return

if.end41:                                         ; preds = %if.end36
  %call43 = tail call i32 @test__extendhfsf2(i16 noundef zeroext 15360, i32 noundef 1065353216) #5
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %return

if.end46:                                         ; preds = %if.end41
  %call48 = tail call i32 @test__extendhfsf2(i16 noundef zeroext 1024, i32 noundef 947912704) #5
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %return

if.end51:                                         ; preds = %if.end46
  %call53 = tail call i32 @test__extendhfsf2(i16 noundef zeroext 16, i32 noundef 897581056) #5
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %return

if.end56:                                         ; preds = %if.end51
  %call58 = tail call i32 @test__extendhfsf2(i16 noundef zeroext 1, i32 noundef 864026624) #5
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %return

if.end61:                                         ; preds = %if.end56
  %call63 = tail call i32 @test__extendhfsf2(i16 noundef zeroext -32767, i32 noundef -1283457024) #5
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %return

if.end66:                                         ; preds = %if.end61
  %call68 = tail call i32 @test__extendhfsf2(i16 noundef zeroext 1, i32 noundef 864026624) #5
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %return

if.end71:                                         ; preds = %if.end66
  %call73 = tail call i32 @test__extendhfsf2(i16 noundef zeroext 31743, i32 noundef 1199562752) #5
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %return

if.end76:                                         ; preds = %if.end71
  %call78 = tail call i32 @test__extendhfsf2(i16 noundef zeroext 31743, i32 noundef 1199562752) #5
  br label %return

return:                                           ; preds = %if.end76, %if.end71, %if.end66, %if.end61, %if.end56, %if.end51, %if.end46, %if.end41, %if.end36, %if.end31, %if.end26, %if.end21, %if.end16, %if.end11, %if.end6, %if.end, %entry
  %retval.0 = phi i32 [ 1, %if.end71 ], [ 1, %entry ], [ 1, %if.end ], [ 1, %if.end6 ], [ 1, %if.end11 ], [ 1, %if.end16 ], [ 1, %if.end21 ], [ 1, %if.end26 ], [ 1, %if.end31 ], [ 1, %if.end36 ], [ 1, %if.end41 ], [ 1, %if.end46 ], [ 1, %if.end51 ], [ 1, %if.end56 ], [ 1, %if.end61 ], [ 1, %if.end66 ], [ %call78, %if.end76 ]
  ret i32 %retval.0
}

declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }
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
!11 = !{!"float", !8, i64 0}
