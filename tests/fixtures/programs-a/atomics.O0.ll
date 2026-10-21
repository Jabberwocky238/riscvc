; ModuleID = 'tests/programs-a/atomics.c'
source_filename = "tests/programs-a/atomics.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@c8 = internal global i8 126, align 1
@s8 = internal global i8 -3, align 1
@c16 = internal global i16 -16, align 2
@s16 = internal global i16 -300, align 2
@i32 = internal global i32 1000, align 4
@u32v = internal global i32 -16, align 4
@arr = internal global [4 x i32] [i32 1, i32 2, i32 3, i32 4], align 4
@ptr = internal global ptr @arr, align 4
@f32 = internal global float 1.500000e+00, align 4

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main() #0 {
entry:
  %h = alloca i32, align 4
  %.atomictmp = alloca i8, align 1
  %atomic-temp = alloca i8, align 1
  %.atomictmp1 = alloca i8, align 1
  %atomic-temp2 = alloca i8, align 1
  %.atomictmp5 = alloca i8, align 1
  %atomic-temp6 = alloca i8, align 1
  %.atomictmp9 = alloca i8, align 1
  %atomic-temp10 = alloca i8, align 1
  %.atomictmp13 = alloca i8, align 1
  %atomic-temp14 = alloca i8, align 1
  %.atomictmp17 = alloca i8, align 1
  %atomic-temp18 = alloca i8, align 1
  %.atomictmp21 = alloca i8, align 1
  %atomic-temp22 = alloca i8, align 1
  %.atomictmp25 = alloca i8, align 1
  %atomic-temp26 = alloca i8, align 1
  %.atomictmp29 = alloca i8, align 1
  %atomic-temp30 = alloca i8, align 1
  %.atomictmp33 = alloca i8, align 1
  %atomic-temp34 = alloca i8, align 1
  %.atomictmp37 = alloca i8, align 1
  %atomic-temp38 = alloca i8, align 1
  %.atomictmp45 = alloca i16, align 2
  %atomic-temp46 = alloca i16, align 2
  %.atomictmp49 = alloca i16, align 2
  %atomic-temp50 = alloca i16, align 2
  %.atomictmp53 = alloca i16, align 2
  %atomic-temp54 = alloca i16, align 2
  %.atomictmp57 = alloca i16, align 2
  %atomic-temp58 = alloca i16, align 2
  %.atomictmp61 = alloca i16, align 2
  %atomic-temp62 = alloca i16, align 2
  %.atomictmp65 = alloca i16, align 2
  %atomic-temp66 = alloca i16, align 2
  %.atomictmp69 = alloca i16, align 2
  %atomic-temp70 = alloca i16, align 2
  %.atomictmp73 = alloca i16, align 2
  %atomic-temp74 = alloca i16, align 2
  %.atomictmp77 = alloca i16, align 2
  %atomic-temp78 = alloca i16, align 2
  %.atomictmp81 = alloca i16, align 2
  %atomic-temp82 = alloca i16, align 2
  %.atomictmp89 = alloca i32, align 4
  %atomic-temp90 = alloca i32, align 4
  %.atomictmp92 = alloca i32, align 4
  %atomic-temp93 = alloca i32, align 4
  %.atomictmp95 = alloca i32, align 4
  %atomic-temp96 = alloca i32, align 4
  %.atomictmp98 = alloca i32, align 4
  %atomic-temp99 = alloca i32, align 4
  %.atomictmp101 = alloca i32, align 4
  %atomic-temp102 = alloca i32, align 4
  %.atomictmp104 = alloca i32, align 4
  %atomic-temp105 = alloca i32, align 4
  %.atomictmp107 = alloca i32, align 4
  %atomic-temp108 = alloca i32, align 4
  %.atomictmp110 = alloca i32, align 4
  %atomic-temp111 = alloca i32, align 4
  %.atomictmp113 = alloca i32, align 4
  %atomic-temp114 = alloca i32, align 4
  %.atomictmp116 = alloca i32, align 4
  %atomic-temp117 = alloca i32, align 4
  %.atomictmp119 = alloca i32, align 4
  %atomic-temp120 = alloca i32, align 4
  %e8 = alloca i8, align 1
  %.atomictmp122 = alloca i8, align 1
  %cmpxchg.bool = alloca i8, align 1
  %.atomictmp127 = alloca i8, align 1
  %cmpxchg.bool128 = alloca i8, align 1
  %e16 = alloca i16, align 2
  %.atomictmp137 = alloca i16, align 2
  %cmpxchg.bool138 = alloca i8, align 1
  %.atomictmp147 = alloca i16, align 2
  %cmpxchg.bool148 = alloca i8, align 1
  %e32 = alloca i32, align 4
  %.atomictmp155 = alloca i32, align 4
  %cmpxchg.bool156 = alloca i8, align 1
  %.atomictmp163 = alloca i32, align 4
  %cmpxchg.bool164 = alloca i8, align 1
  %ep = alloca ptr, align 4
  %.atomictmp172 = alloca ptr, align 4
  %cmpxchg.bool173 = alloca i8, align 1
  %atomic-temp180 = alloca ptr, align 4
  %.atomictmp182 = alloca ptr, align 4
  %atomic-temp183 = alloca ptr, align 4
  %.atomictmp185 = alloca i32, align 4
  %.atomictmp186 = alloca i16, align 2
  %.atomictmp187 = alloca i8, align 1
  %atomic-temp188 = alloca i32, align 4
  %atomic-temp190 = alloca i16, align 2
  %atomic-temp193 = alloca i8, align 1
  %fo = alloca float, align 4
  %.compoundliteral = alloca float, align 4
  %fe = alloca float, align 4
  %k = alloca i32, align 4
  %want = alloca float, align 4
  %cmpxchg.bool199 = alloca i8, align 1
  %k208 = alloca i32, align 4
  %.atomictmp213 = alloca i32, align 4
  %atomic-temp214 = alloca i32, align 4
  store i32 -2128831035, ptr %h, align 4
  %0 = load i32, ptr %h, align 4
  store i8 -123, ptr %.atomictmp, align 1
  %1 = load i8, ptr %.atomictmp, align 1
  %2 = atomicrmw volatile add ptr @c8, i8 %1 seq_cst, align 1
  store i8 %2, ptr %atomic-temp, align 1
  %3 = load i8, ptr %atomic-temp, align 1
  %conv = zext i8 %3 to i32
  %call = call i32 @mix(i32 noundef %0, i32 noundef %conv) #1
  store i32 %call, ptr %h, align 4
  %4 = load i32, ptr %h, align 4
  store i8 7, ptr %.atomictmp1, align 1
  %5 = load i8, ptr %.atomictmp1, align 1
  %6 = atomicrmw volatile sub ptr @c8, i8 %5 acquire, align 1
  store i8 %6, ptr %atomic-temp2, align 1
  %7 = load i8, ptr %atomic-temp2, align 1
  %conv3 = zext i8 %7 to i32
  %call4 = call i32 @mix(i32 noundef %4, i32 noundef %conv3) #1
  store i32 %call4, ptr %h, align 4
  %8 = load i32, ptr %h, align 4
  store i8 60, ptr %.atomictmp5, align 1
  %9 = load i8, ptr %.atomictmp5, align 1
  %10 = atomicrmw volatile and ptr @c8, i8 %9 release, align 1
  store i8 %10, ptr %atomic-temp6, align 1
  %11 = load i8, ptr %atomic-temp6, align 1
  %conv7 = zext i8 %11 to i32
  %call8 = call i32 @mix(i32 noundef %8, i32 noundef %conv7) #1
  store i32 %call8, ptr %h, align 4
  %12 = load i32, ptr %h, align 4
  store i8 -63, ptr %.atomictmp9, align 1
  %13 = load i8, ptr %.atomictmp9, align 1
  %14 = atomicrmw volatile or ptr @c8, i8 %13 monotonic, align 1
  store i8 %14, ptr %atomic-temp10, align 1
  %15 = load i8, ptr %atomic-temp10, align 1
  %conv11 = zext i8 %15 to i32
  %call12 = call i32 @mix(i32 noundef %12, i32 noundef %conv11) #1
  store i32 %call12, ptr %h, align 4
  %16 = load i32, ptr %h, align 4
  store i8 90, ptr %.atomictmp13, align 1
  %17 = load i8, ptr %.atomictmp13, align 1
  %18 = atomicrmw volatile xor ptr @c8, i8 %17 acq_rel, align 1
  store i8 %18, ptr %atomic-temp14, align 1
  %19 = load i8, ptr %atomic-temp14, align 1
  %conv15 = zext i8 %19 to i32
  %call16 = call i32 @mix(i32 noundef %16, i32 noundef %conv15) #1
  store i32 %call16, ptr %h, align 4
  %20 = load i32, ptr %h, align 4
  store i8 15, ptr %.atomictmp17, align 1
  %21 = load i8, ptr %.atomictmp17, align 1
  %22 = atomicrmw volatile nand ptr @c8, i8 %21 seq_cst, align 1
  store i8 %22, ptr %atomic-temp18, align 1
  %23 = load i8, ptr %atomic-temp18, align 1
  %conv19 = zext i8 %23 to i32
  %call20 = call i32 @mix(i32 noundef %20, i32 noundef %conv19) #1
  store i32 %call20, ptr %h, align 4
  %24 = load i32, ptr %h, align 4
  store i8 -103, ptr %.atomictmp21, align 1
  %25 = load i8, ptr %.atomictmp21, align 1
  %26 = atomicrmw volatile xchg ptr @c8, i8 %25 seq_cst, align 1
  store i8 %26, ptr %atomic-temp22, align 1
  %27 = load i8, ptr %atomic-temp22, align 1
  %conv23 = zext i8 %27 to i32
  %call24 = call i32 @mix(i32 noundef %24, i32 noundef %conv23) #1
  store i32 %call24, ptr %h, align 4
  %28 = load i32, ptr %h, align 4
  store i8 5, ptr %.atomictmp25, align 1
  %29 = load i8, ptr %.atomictmp25, align 1
  %30 = atomicrmw volatile max ptr @s8, i8 %29 seq_cst, align 1
  store i8 %30, ptr %atomic-temp26, align 1
  %31 = load i8, ptr %atomic-temp26, align 1
  %conv27 = sext i8 %31 to i32
  %call28 = call i32 @mix(i32 noundef %28, i32 noundef %conv27) #1
  store i32 %call28, ptr %h, align 4
  %32 = load i32, ptr %h, align 4
  store i8 -100, ptr %.atomictmp29, align 1
  %33 = load i8, ptr %.atomictmp29, align 1
  %34 = atomicrmw volatile min ptr @s8, i8 %33 seq_cst, align 1
  store i8 %34, ptr %atomic-temp30, align 1
  %35 = load i8, ptr %atomic-temp30, align 1
  %conv31 = sext i8 %35 to i32
  %call32 = call i32 @mix(i32 noundef %32, i32 noundef %conv31) #1
  store i32 %call32, ptr %h, align 4
  %36 = load i32, ptr %h, align 4
  store i8 -16, ptr %.atomictmp33, align 1
  %37 = load i8, ptr %.atomictmp33, align 1
  %38 = atomicrmw volatile umax ptr @c8, i8 %37 seq_cst, align 1
  store i8 %38, ptr %atomic-temp34, align 1
  %39 = load i8, ptr %atomic-temp34, align 1
  %conv35 = zext i8 %39 to i32
  %call36 = call i32 @mix(i32 noundef %36, i32 noundef %conv35) #1
  store i32 %call36, ptr %h, align 4
  %40 = load i32, ptr %h, align 4
  store i8 16, ptr %.atomictmp37, align 1
  %41 = load i8, ptr %.atomictmp37, align 1
  %42 = atomicrmw volatile umin ptr @c8, i8 %41 seq_cst, align 1
  store i8 %42, ptr %atomic-temp38, align 1
  %43 = load i8, ptr %atomic-temp38, align 1
  %conv39 = zext i8 %43 to i32
  %call40 = call i32 @mix(i32 noundef %40, i32 noundef %conv39) #1
  store i32 %call40, ptr %h, align 4
  %44 = load i32, ptr %h, align 4
  %45 = load volatile i8, ptr @c8, align 1
  %conv41 = zext i8 %45 to i32
  %call42 = call i32 @mix(i32 noundef %44, i32 noundef %conv41) #1
  store i32 %call42, ptr %h, align 4
  %46 = load i32, ptr %h, align 4
  %47 = load volatile i8, ptr @s8, align 1
  %conv43 = sext i8 %47 to i32
  %call44 = call i32 @mix(i32 noundef %46, i32 noundef %conv43) #1
  store i32 %call44, ptr %h, align 4
  %48 = load i32, ptr %h, align 4
  store i16 32, ptr %.atomictmp45, align 2
  %49 = load i16, ptr %.atomictmp45, align 2
  %50 = atomicrmw volatile add ptr @c16, i16 %49 seq_cst, align 2
  store i16 %50, ptr %atomic-temp46, align 2
  %51 = load i16, ptr %atomic-temp46, align 2
  %conv47 = zext i16 %51 to i32
  %call48 = call i32 @mix(i32 noundef %48, i32 noundef %conv47) #1
  store i32 %call48, ptr %h, align 4
  %52 = load i32, ptr %h, align 4
  store i16 4660, ptr %.atomictmp49, align 2
  %53 = load i16, ptr %.atomictmp49, align 2
  %54 = atomicrmw volatile sub ptr @c16, i16 %53 seq_cst, align 2
  store i16 %54, ptr %atomic-temp50, align 2
  %55 = load i16, ptr %atomic-temp50, align 2
  %conv51 = zext i16 %55 to i32
  %call52 = call i32 @mix(i32 noundef %52, i32 noundef %conv51) #1
  store i32 %call52, ptr %h, align 4
  %56 = load i32, ptr %h, align 4
  store i16 -3856, ptr %.atomictmp53, align 2
  %57 = load i16, ptr %.atomictmp53, align 2
  %58 = atomicrmw volatile and ptr @c16, i16 %57 seq_cst, align 2
  store i16 %58, ptr %atomic-temp54, align 2
  %59 = load i16, ptr %atomic-temp54, align 2
  %conv55 = zext i16 %59 to i32
  %call56 = call i32 @mix(i32 noundef %56, i32 noundef %conv55) #1
  store i32 %call56, ptr %h, align 4
  %60 = load i32, ptr %h, align 4
  store i16 771, ptr %.atomictmp57, align 2
  %61 = load i16, ptr %.atomictmp57, align 2
  %62 = atomicrmw volatile or ptr @c16, i16 %61 seq_cst, align 2
  store i16 %62, ptr %atomic-temp58, align 2
  %63 = load i16, ptr %atomic-temp58, align 2
  %conv59 = zext i16 %63 to i32
  %call60 = call i32 @mix(i32 noundef %60, i32 noundef %conv59) #1
  store i32 %call60, ptr %h, align 4
  %64 = load i32, ptr %h, align 4
  store i16 -1, ptr %.atomictmp61, align 2
  %65 = load i16, ptr %.atomictmp61, align 2
  %66 = atomicrmw volatile xor ptr @c16, i16 %65 seq_cst, align 2
  store i16 %66, ptr %atomic-temp62, align 2
  %67 = load i16, ptr %atomic-temp62, align 2
  %conv63 = zext i16 %67 to i32
  %call64 = call i32 @mix(i32 noundef %64, i32 noundef %conv63) #1
  store i32 %call64, ptr %h, align 4
  %68 = load i32, ptr %h, align 4
  store i16 30583, ptr %.atomictmp65, align 2
  %69 = load i16, ptr %.atomictmp65, align 2
  %70 = atomicrmw volatile nand ptr @c16, i16 %69 seq_cst, align 2
  store i16 %70, ptr %atomic-temp66, align 2
  %71 = load i16, ptr %atomic-temp66, align 2
  %conv67 = zext i16 %71 to i32
  %call68 = call i32 @mix(i32 noundef %68, i32 noundef %conv67) #1
  store i32 %call68, ptr %h, align 4
  %72 = load i32, ptr %h, align 4
  store i16 -5, ptr %.atomictmp69, align 2
  %73 = load i16, ptr %.atomictmp69, align 2
  %74 = atomicrmw volatile max ptr @s16, i16 %73 seq_cst, align 2
  store i16 %74, ptr %atomic-temp70, align 2
  %75 = load i16, ptr %atomic-temp70, align 2
  %conv71 = sext i16 %75 to i32
  %call72 = call i32 @mix(i32 noundef %72, i32 noundef %conv71) #1
  store i32 %call72, ptr %h, align 4
  %76 = load i32, ptr %h, align 4
  store i16 -30000, ptr %.atomictmp73, align 2
  %77 = load i16, ptr %.atomictmp73, align 2
  %78 = atomicrmw volatile min ptr @s16, i16 %77 seq_cst, align 2
  store i16 %78, ptr %atomic-temp74, align 2
  %79 = load i16, ptr %atomic-temp74, align 2
  %conv75 = sext i16 %79 to i32
  %call76 = call i32 @mix(i32 noundef %76, i32 noundef %conv75) #1
  store i32 %call76, ptr %h, align 4
  %80 = load i32, ptr %h, align 4
  store i16 -32768, ptr %.atomictmp77, align 2
  %81 = load i16, ptr %.atomictmp77, align 2
  %82 = atomicrmw volatile umax ptr @c16, i16 %81 seq_cst, align 2
  store i16 %82, ptr %atomic-temp78, align 2
  %83 = load i16, ptr %atomic-temp78, align 2
  %conv79 = zext i16 %83 to i32
  %call80 = call i32 @mix(i32 noundef %80, i32 noundef %conv79) #1
  store i32 %call80, ptr %h, align 4
  %84 = load i32, ptr %h, align 4
  store i16 256, ptr %.atomictmp81, align 2
  %85 = load i16, ptr %.atomictmp81, align 2
  %86 = atomicrmw volatile umin ptr @c16, i16 %85 seq_cst, align 2
  store i16 %86, ptr %atomic-temp82, align 2
  %87 = load i16, ptr %atomic-temp82, align 2
  %conv83 = zext i16 %87 to i32
  %call84 = call i32 @mix(i32 noundef %84, i32 noundef %conv83) #1
  store i32 %call84, ptr %h, align 4
  %88 = load i32, ptr %h, align 4
  %89 = load volatile i16, ptr @c16, align 2
  %conv85 = zext i16 %89 to i32
  %call86 = call i32 @mix(i32 noundef %88, i32 noundef %conv85) #1
  store i32 %call86, ptr %h, align 4
  %90 = load i32, ptr %h, align 4
  %91 = load volatile i16, ptr @s16, align 2
  %conv87 = sext i16 %91 to i32
  %call88 = call i32 @mix(i32 noundef %90, i32 noundef %conv87) #1
  store i32 %call88, ptr %h, align 4
  %92 = load i32, ptr %h, align 4
  store i32 77, ptr %.atomictmp89, align 4
  %93 = load i32, ptr %.atomictmp89, align 4
  %94 = atomicrmw volatile add ptr @i32, i32 %93 seq_cst, align 4
  store i32 %94, ptr %atomic-temp90, align 4
  %95 = load i32, ptr %atomic-temp90, align 4
  %call91 = call i32 @mix(i32 noundef %92, i32 noundef %95) #1
  store i32 %call91, ptr %h, align 4
  %96 = load i32, ptr %h, align 4
  store i32 2000, ptr %.atomictmp92, align 4
  %97 = load i32, ptr %.atomictmp92, align 4
  %98 = atomicrmw volatile sub ptr @i32, i32 %97 acquire, align 4
  store i32 %98, ptr %atomic-temp93, align 4
  %99 = load i32, ptr %atomic-temp93, align 4
  %call94 = call i32 @mix(i32 noundef %96, i32 noundef %99) #1
  store i32 %call94, ptr %h, align 4
  %100 = load i32, ptr %h, align 4
  store i32 4080, ptr %.atomictmp95, align 4
  %101 = load i32, ptr %.atomictmp95, align 4
  %102 = atomicrmw volatile and ptr @i32, i32 %101 release, align 4
  store i32 %102, ptr %atomic-temp96, align 4
  %103 = load i32, ptr %atomic-temp96, align 4
  %call97 = call i32 @mix(i32 noundef %100, i32 noundef %103) #1
  store i32 %call97, ptr %h, align 4
  %104 = load i32, ptr %h, align 4
  store i32 4097, ptr %.atomictmp98, align 4
  %105 = load i32, ptr %.atomictmp98, align 4
  %106 = atomicrmw volatile or ptr @i32, i32 %105 monotonic, align 4
  store i32 %106, ptr %atomic-temp99, align 4
  %107 = load i32, ptr %atomic-temp99, align 4
  %call100 = call i32 @mix(i32 noundef %104, i32 noundef %107) #1
  store i32 %call100, ptr %h, align 4
  %108 = load i32, ptr %h, align 4
  store i32 -1, ptr %.atomictmp101, align 4
  %109 = load i32, ptr %.atomictmp101, align 4
  %110 = atomicrmw volatile xor ptr @i32, i32 %109 acq_rel, align 4
  store i32 %110, ptr %atomic-temp102, align 4
  %111 = load i32, ptr %atomic-temp102, align 4
  %call103 = call i32 @mix(i32 noundef %108, i32 noundef %111) #1
  store i32 %call103, ptr %h, align 4
  %112 = load i32, ptr %h, align 4
  store i32 16711935, ptr %.atomictmp104, align 4
  %113 = load i32, ptr %.atomictmp104, align 4
  %114 = atomicrmw volatile nand ptr @i32, i32 %113 seq_cst, align 4
  store i32 %114, ptr %atomic-temp105, align 4
  %115 = load i32, ptr %atomic-temp105, align 4
  %call106 = call i32 @mix(i32 noundef %112, i32 noundef %115) #1
  store i32 %call106, ptr %h, align 4
  %116 = load i32, ptr %h, align 4
  store i32 12345, ptr %.atomictmp107, align 4
  %117 = load i32, ptr %.atomictmp107, align 4
  %118 = atomicrmw volatile max ptr @i32, i32 %117 seq_cst, align 4
  store i32 %118, ptr %atomic-temp108, align 4
  %119 = load i32, ptr %atomic-temp108, align 4
  %call109 = call i32 @mix(i32 noundef %116, i32 noundef %119) #1
  store i32 %call109, ptr %h, align 4
  %120 = load i32, ptr %h, align 4
  store i32 -12345, ptr %.atomictmp110, align 4
  %121 = load i32, ptr %.atomictmp110, align 4
  %122 = atomicrmw volatile min ptr @i32, i32 %121 seq_cst, align 4
  store i32 %122, ptr %atomic-temp111, align 4
  %123 = load i32, ptr %atomic-temp111, align 4
  %call112 = call i32 @mix(i32 noundef %120, i32 noundef %123) #1
  store i32 %call112, ptr %h, align 4
  %124 = load i32, ptr %h, align 4
  store i32 3, ptr %.atomictmp113, align 4
  %125 = load i32, ptr %.atomictmp113, align 4
  %126 = atomicrmw volatile umax ptr @u32v, i32 %125 seq_cst, align 4
  store i32 %126, ptr %atomic-temp114, align 4
  %127 = load i32, ptr %atomic-temp114, align 4
  %call115 = call i32 @mix(i32 noundef %124, i32 noundef %127) #1
  store i32 %call115, ptr %h, align 4
  %128 = load i32, ptr %h, align 4
  store i32 -2147483648, ptr %.atomictmp116, align 4
  %129 = load i32, ptr %.atomictmp116, align 4
  %130 = atomicrmw volatile umin ptr @u32v, i32 %129 seq_cst, align 4
  store i32 %130, ptr %atomic-temp117, align 4
  %131 = load i32, ptr %atomic-temp117, align 4
  %call118 = call i32 @mix(i32 noundef %128, i32 noundef %131) #1
  store i32 %call118, ptr %h, align 4
  %132 = load i32, ptr %h, align 4
  store i32 42, ptr %.atomictmp119, align 4
  %133 = load i32, ptr %.atomictmp119, align 4
  %134 = atomicrmw volatile xchg ptr @i32, i32 %133 release, align 4
  store i32 %134, ptr %atomic-temp120, align 4
  %135 = load i32, ptr %atomic-temp120, align 4
  %call121 = call i32 @mix(i32 noundef %132, i32 noundef %135) #1
  store i32 %call121, ptr %h, align 4
  store i8 -103, ptr %e8, align 1
  %136 = load i32, ptr %h, align 4
  store i8 17, ptr %.atomictmp122, align 1
  %137 = load i8, ptr %e8, align 1
  %138 = load i8, ptr %.atomictmp122, align 1
  %139 = cmpxchg volatile ptr @c8, i8 %137, i8 %138 seq_cst seq_cst, align 1
  %140 = extractvalue { i8, i1 } %139, 0
  %141 = extractvalue { i8, i1 } %139, 1
  br i1 %141, label %cmpxchg.continue, label %cmpxchg.store_expected

cmpxchg.store_expected:                           ; preds = %entry
  store i8 %140, ptr %e8, align 1
  br label %cmpxchg.continue

cmpxchg.continue:                                 ; preds = %cmpxchg.store_expected, %entry
  %storedv = zext i1 %141 to i8
  store i8 %storedv, ptr %cmpxchg.bool, align 1
  %142 = load i8, ptr %cmpxchg.bool, align 1
  %loadedv = trunc i8 %142 to i1
  %conv123 = zext i1 %loadedv to i32
  %call124 = call i32 @mix(i32 noundef %136, i32 noundef %conv123) #1
  store i32 %call124, ptr %h, align 4
  %143 = load i32, ptr %h, align 4
  %144 = load i8, ptr %e8, align 1
  %conv125 = zext i8 %144 to i32
  %call126 = call i32 @mix(i32 noundef %143, i32 noundef %conv125) #1
  store i32 %call126, ptr %h, align 4
  store i8 34, ptr %e8, align 1
  %145 = load i32, ptr %h, align 4
  store i8 51, ptr %.atomictmp127, align 1
  %146 = load i8, ptr %e8, align 1
  %147 = load i8, ptr %.atomictmp127, align 1
  %148 = cmpxchg volatile ptr @c8, i8 %146, i8 %147 acquire monotonic, align 1
  %149 = extractvalue { i8, i1 } %148, 0
  %150 = extractvalue { i8, i1 } %148, 1
  br i1 %150, label %cmpxchg.continue130, label %cmpxchg.store_expected129

cmpxchg.store_expected129:                        ; preds = %cmpxchg.continue
  store i8 %149, ptr %e8, align 1
  br label %cmpxchg.continue130

cmpxchg.continue130:                              ; preds = %cmpxchg.store_expected129, %cmpxchg.continue
  %storedv131 = zext i1 %150 to i8
  store i8 %storedv131, ptr %cmpxchg.bool128, align 1
  %151 = load i8, ptr %cmpxchg.bool128, align 1
  %loadedv132 = trunc i8 %151 to i1
  %conv133 = zext i1 %loadedv132 to i32
  %call134 = call i32 @mix(i32 noundef %145, i32 noundef %conv133) #1
  store i32 %call134, ptr %h, align 4
  %152 = load i32, ptr %h, align 4
  %153 = load i8, ptr %e8, align 1
  %conv135 = zext i8 %153 to i32
  %call136 = call i32 @mix(i32 noundef %152, i32 noundef %conv135) #1
  store i32 %call136, ptr %h, align 4
  store i16 0, ptr %e16, align 2
  %154 = load i32, ptr %h, align 4
  store i16 -21555, ptr %.atomictmp137, align 2
  %155 = load i16, ptr %e16, align 2
  %156 = load i16, ptr %.atomictmp137, align 2
  %157 = cmpxchg volatile ptr @c16, i16 %155, i16 %156 seq_cst seq_cst, align 2
  %158 = extractvalue { i16, i1 } %157, 0
  %159 = extractvalue { i16, i1 } %157, 1
  br i1 %159, label %cmpxchg.continue140, label %cmpxchg.store_expected139

cmpxchg.store_expected139:                        ; preds = %cmpxchg.continue130
  store i16 %158, ptr %e16, align 2
  br label %cmpxchg.continue140

cmpxchg.continue140:                              ; preds = %cmpxchg.store_expected139, %cmpxchg.continue130
  %storedv141 = zext i1 %159 to i8
  store i8 %storedv141, ptr %cmpxchg.bool138, align 1
  %160 = load i8, ptr %cmpxchg.bool138, align 1
  %loadedv142 = trunc i8 %160 to i1
  %conv143 = zext i1 %loadedv142 to i32
  %call144 = call i32 @mix(i32 noundef %154, i32 noundef %conv143) #1
  store i32 %call144, ptr %h, align 4
  %161 = load i32, ptr %h, align 4
  %162 = load i16, ptr %e16, align 2
  %conv145 = zext i16 %162 to i32
  %call146 = call i32 @mix(i32 noundef %161, i32 noundef %conv145) #1
  store i32 %call146, ptr %h, align 4
  %163 = load i32, ptr %h, align 4
  store i16 -21555, ptr %.atomictmp147, align 2
  %164 = load i16, ptr %e16, align 2
  %165 = load i16, ptr %.atomictmp147, align 2
  %166 = cmpxchg weak volatile ptr @c16, i16 %164, i16 %165 release monotonic, align 2
  %167 = extractvalue { i16, i1 } %166, 0
  %168 = extractvalue { i16, i1 } %166, 1
  br i1 %168, label %cmpxchg.continue150, label %cmpxchg.store_expected149

cmpxchg.store_expected149:                        ; preds = %cmpxchg.continue140
  store i16 %167, ptr %e16, align 2
  br label %cmpxchg.continue150

cmpxchg.continue150:                              ; preds = %cmpxchg.store_expected149, %cmpxchg.continue140
  %storedv151 = zext i1 %168 to i8
  store i8 %storedv151, ptr %cmpxchg.bool148, align 1
  %169 = load i8, ptr %cmpxchg.bool148, align 1
  %loadedv152 = trunc i8 %169 to i1
  %conv153 = zext i1 %loadedv152 to i32
  %call154 = call i32 @mix(i32 noundef %163, i32 noundef %conv153) #1
  store i32 %call154, ptr %h, align 4
  store i32 42, ptr %e32, align 4
  %170 = load i32, ptr %h, align 4
  store i32 -7, ptr %.atomictmp155, align 4
  %171 = load i32, ptr %e32, align 4
  %172 = load i32, ptr %.atomictmp155, align 4
  %173 = cmpxchg volatile ptr @i32, i32 %171, i32 %172 acq_rel acquire, align 4
  %174 = extractvalue { i32, i1 } %173, 0
  %175 = extractvalue { i32, i1 } %173, 1
  br i1 %175, label %cmpxchg.continue158, label %cmpxchg.store_expected157

cmpxchg.store_expected157:                        ; preds = %cmpxchg.continue150
  store i32 %174, ptr %e32, align 4
  br label %cmpxchg.continue158

cmpxchg.continue158:                              ; preds = %cmpxchg.store_expected157, %cmpxchg.continue150
  %storedv159 = zext i1 %175 to i8
  store i8 %storedv159, ptr %cmpxchg.bool156, align 1
  %176 = load i8, ptr %cmpxchg.bool156, align 1
  %loadedv160 = trunc i8 %176 to i1
  %conv161 = zext i1 %loadedv160 to i32
  %call162 = call i32 @mix(i32 noundef %170, i32 noundef %conv161) #1
  store i32 %call162, ptr %h, align 4
  %177 = load i32, ptr %h, align 4
  store i32 8, ptr %.atomictmp163, align 4
  %178 = load i32, ptr %e32, align 4
  %179 = load i32, ptr %.atomictmp163, align 4
  %180 = cmpxchg volatile ptr @i32, i32 %178, i32 %179 seq_cst seq_cst, align 4
  %181 = extractvalue { i32, i1 } %180, 0
  %182 = extractvalue { i32, i1 } %180, 1
  br i1 %182, label %cmpxchg.continue166, label %cmpxchg.store_expected165

cmpxchg.store_expected165:                        ; preds = %cmpxchg.continue158
  store i32 %181, ptr %e32, align 4
  br label %cmpxchg.continue166

cmpxchg.continue166:                              ; preds = %cmpxchg.store_expected165, %cmpxchg.continue158
  %storedv167 = zext i1 %182 to i8
  store i8 %storedv167, ptr %cmpxchg.bool164, align 1
  %183 = load i8, ptr %cmpxchg.bool164, align 1
  %loadedv168 = trunc i8 %183 to i1
  %conv169 = zext i1 %loadedv168 to i32
  %call170 = call i32 @mix(i32 noundef %177, i32 noundef %conv169) #1
  store i32 %call170, ptr %h, align 4
  %184 = load i32, ptr %h, align 4
  %185 = load i32, ptr %e32, align 4
  %call171 = call i32 @mix(i32 noundef %184, i32 noundef %185) #1
  store i32 %call171, ptr %h, align 4
  store ptr @arr, ptr %ep, align 4
  %186 = load i32, ptr %h, align 4
  store ptr getelementptr inbounds ([4 x i32], ptr @arr, i32 0, i32 2), ptr %.atomictmp172, align 4
  %187 = load i32, ptr %ep, align 4
  %188 = load i32, ptr %.atomictmp172, align 4
  %189 = cmpxchg volatile ptr @ptr, i32 %187, i32 %188 seq_cst seq_cst, align 4
  %190 = extractvalue { i32, i1 } %189, 0
  %191 = extractvalue { i32, i1 } %189, 1
  br i1 %191, label %cmpxchg.continue175, label %cmpxchg.store_expected174

cmpxchg.store_expected174:                        ; preds = %cmpxchg.continue166
  store i32 %190, ptr %ep, align 4
  br label %cmpxchg.continue175

cmpxchg.continue175:                              ; preds = %cmpxchg.store_expected174, %cmpxchg.continue166
  %storedv176 = zext i1 %191 to i8
  store i8 %storedv176, ptr %cmpxchg.bool173, align 1
  %192 = load i8, ptr %cmpxchg.bool173, align 1
  %loadedv177 = trunc i8 %192 to i1
  %conv178 = zext i1 %loadedv177 to i32
  %call179 = call i32 @mix(i32 noundef %186, i32 noundef %conv178) #1
  store i32 %call179, ptr %h, align 4
  %193 = load i32, ptr %h, align 4
  %194 = load atomic volatile i32, ptr @ptr acquire, align 4
  store i32 %194, ptr %atomic-temp180, align 4
  %195 = load ptr, ptr %atomic-temp180, align 4
  %196 = load i32, ptr %195, align 4
  %call181 = call i32 @mix(i32 noundef %193, i32 noundef %196) #1
  store i32 %call181, ptr %h, align 4
  %197 = load i32, ptr %h, align 4
  store ptr getelementptr inbounds ([4 x i32], ptr @arr, i32 0, i32 3), ptr %.atomictmp182, align 4
  %198 = load i32, ptr %.atomictmp182, align 4
  %199 = atomicrmw volatile xchg ptr @ptr, i32 %198 seq_cst, align 4
  store i32 %199, ptr %atomic-temp183, align 4
  %200 = load ptr, ptr %atomic-temp183, align 4
  %201 = load i32, ptr %200, align 4
  %call184 = call i32 @mix(i32 noundef %197, i32 noundef %201) #1
  store i32 %call184, ptr %h, align 4
  store i32 5, ptr %.atomictmp185, align 4
  %202 = load i32, ptr %.atomictmp185, align 4
  store atomic volatile i32 %202, ptr @i32 seq_cst, align 4
  store i16 6, ptr %.atomictmp186, align 2
  %203 = load i16, ptr %.atomictmp186, align 2
  store atomic volatile i16 %203, ptr @c16 release, align 2
  store i8 7, ptr %.atomictmp187, align 1
  %204 = load i8, ptr %.atomictmp187, align 1
  store atomic volatile i8 %204, ptr @c8 monotonic, align 1
  fence acquire
  fence release
  fence acq_rel
  fence seq_cst
  fence syncscope("singlethread") seq_cst
  %205 = load i32, ptr %h, align 4
  %206 = load atomic volatile i32, ptr @i32 seq_cst, align 4
  store i32 %206, ptr %atomic-temp188, align 4
  %207 = load i32, ptr %atomic-temp188, align 4
  %call189 = call i32 @mix(i32 noundef %205, i32 noundef %207) #1
  store i32 %call189, ptr %h, align 4
  %208 = load i32, ptr %h, align 4
  %209 = load atomic volatile i16, ptr @c16 acquire, align 2
  store i16 %209, ptr %atomic-temp190, align 2
  %210 = load i16, ptr %atomic-temp190, align 2
  %conv191 = zext i16 %210 to i32
  %call192 = call i32 @mix(i32 noundef %208, i32 noundef %conv191) #1
  store i32 %call192, ptr %h, align 4
  %211 = load i32, ptr %h, align 4
  %212 = load atomic volatile i8, ptr @c8 monotonic, align 1
  store i8 %212, ptr %atomic-temp193, align 1
  %213 = load i8, ptr %atomic-temp193, align 1
  %conv194 = zext i8 %213 to i32
  %call195 = call i32 @mix(i32 noundef %211, i32 noundef %conv194) #1
  store i32 %call195, ptr %h, align 4
  store float 2.250000e+00, ptr %.compoundliteral, align 4
  %214 = load i32, ptr %.compoundliteral, align 4
  %215 = atomicrmw volatile xchg ptr @f32, i32 %214 seq_cst, align 4
  store i32 %215, ptr %fo, align 4
  %216 = load i32, ptr %h, align 4
  %217 = load float, ptr %fo, align 4
  %mul = fmul float %217, 4.000000e+00
  %conv196 = fptoui float %mul to i32
  %call197 = call i32 @mix(i32 noundef %216, i32 noundef %conv196) #1
  store i32 %call197, ptr %h, align 4
  store float 2.250000e+00, ptr %fe, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cmpxchg.continue175
  %218 = load i32, ptr %k, align 4
  %cmp = icmp slt i32 %218, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %219 = load float, ptr %fe, align 4
  %add = fadd float %219, 5.000000e-01
  store float %add, ptr %want, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %220 = load i32, ptr %fe, align 4
  %221 = load i32, ptr %want, align 4
  %222 = cmpxchg volatile ptr @f32, i32 %220, i32 %221 seq_cst seq_cst, align 4
  %223 = extractvalue { i32, i1 } %222, 0
  %224 = extractvalue { i32, i1 } %222, 1
  br i1 %224, label %cmpxchg.continue201, label %cmpxchg.store_expected200

cmpxchg.store_expected200:                        ; preds = %while.cond
  store i32 %223, ptr %fe, align 4
  br label %cmpxchg.continue201

cmpxchg.continue201:                              ; preds = %cmpxchg.store_expected200, %while.cond
  %storedv202 = zext i1 %224 to i8
  store i8 %storedv202, ptr %cmpxchg.bool199, align 1
  %225 = load i8, ptr %cmpxchg.bool199, align 1
  %loadedv203 = trunc i8 %225 to i1
  %lnot = xor i1 %loadedv203, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %cmpxchg.continue201
  %226 = load float, ptr %fe, align 4
  %add204 = fadd float %226, 5.000000e-01
  store float %add204, ptr %want, align 4
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %cmpxchg.continue201
  %227 = load float, ptr %want, align 4
  store float %227, ptr %fe, align 4
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %228 = load i32, ptr %k, align 4
  %inc = add nsw i32 %228, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %229 = load i32, ptr %h, align 4
  %230 = load volatile float, ptr @f32, align 4
  %mul205 = fmul float %230, 4.000000e+00
  %conv206 = fptoui float %mul205 to i32
  %call207 = call i32 @mix(i32 noundef %229, i32 noundef %conv206) #1
  store i32 %call207, ptr %h, align 4
  store i32 0, ptr %k208, align 4
  br label %for.cond209

for.cond209:                                      ; preds = %for.inc216, %for.end
  %231 = load i32, ptr %k208, align 4
  %cmp210 = icmp slt i32 %231, 50
  br i1 %cmp210, label %for.body212, label %for.end218

for.body212:                                      ; preds = %for.cond209
  %232 = load i32, ptr %h, align 4
  %233 = load i32, ptr %k208, align 4
  %and = and i32 %233, 3
  %arrayidx = getelementptr inbounds [4 x i32], ptr @arr, i32 0, i32 %and
  %234 = load i32, ptr %k208, align 4
  store i32 %234, ptr %.atomictmp213, align 4
  %235 = load i32, ptr %.atomictmp213, align 4
  %236 = atomicrmw add ptr %arrayidx, i32 %235 seq_cst, align 4
  %237 = add i32 %236, %235
  store i32 %237, ptr %atomic-temp214, align 4
  %238 = load i32, ptr %atomic-temp214, align 4
  %call215 = call i32 @mix(i32 noundef %232, i32 noundef %238) #1
  store i32 %call215, ptr %h, align 4
  br label %for.inc216

for.inc216:                                       ; preds = %for.body212
  %239 = load i32, ptr %k208, align 4
  %inc217 = add nsw i32 %239, 1
  store i32 %inc217, ptr %k208, align 4
  br label %for.cond209, !llvm.loop !10

for.end218:                                       ; preds = %for.cond209
  %240 = load i32, ptr %h, align 4
  ret i32 %240
}

; Function Attrs: noinline nounwind optnone
define internal i32 @mix(i32 noundef %h, i32 noundef %v) #0 {
entry:
  %h.addr = alloca i32, align 4
  %v.addr = alloca i32, align 4
  store i32 %h, ptr %h.addr, align 4
  store i32 %v, ptr %v.addr, align 4
  %0 = load i32, ptr %h.addr, align 4
  %1 = load i32, ptr %v.addr, align 4
  %xor = xor i32 %0, %1
  %mul = mul i32 %xor, 16777619
  %add = add i32 %mul, -1640531527
  ret i32 %add
}

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+a,+f,+i,+m,+zaamo,+zalrsc,+zicsr,+zmmul,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zabha,-zacas,-zalasr,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"ilp32f"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv32i2p1_m2p0_a2p1_f2p2_zicsr2p0_zmmul1p0_zaamo1p0_zalrsc1p0"}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{i32 8, !"SmallDataLimit", i32 0}
!6 = !{!"clang version 22.1.8"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
