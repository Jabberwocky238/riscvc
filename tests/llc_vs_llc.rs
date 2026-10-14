//! 代码生成 vs `llc`：compiler-rt 语料，同一个函数两份编译产物（llc 编 `.ll`、riscvc 编 `.mlir`），
//! 各自和全部同档目标文件链成一个镜像，在解释器里用同样的实参调用，比返回值与指针实参指向的内存。
//! 只测参数全在寄存器里的标量签名（整数 / 指针 / float / double）。没有语料 / LLVM 就 SKIP。
mod llvm;
use riscvc::ir::{Kind, Module, Ty, Types};
use riscvc::sim::{Cpu, Stop};
use std::collections::BTreeMap;

/// 镜像里缺的 C 库函数（逐字节的）与 abort。
const SUPPORT: &str = "
    .text
    .globl memcpy
memcpy:
    mv t0, a0
1:  beqz a2, 2f
    lbu t1, 0(a1)
    sb t1, 0(t0)
    addi a1, a1, 1
    addi t0, t0, 1
    addi a2, a2, -1
    j 1b
2:  ret
    .globl memmove
memmove:
    bgeu a1, a0, memcpy
    add a1, a1, a2
    add t0, a0, a2
1:  beqz a2, 2f
    addi a1, a1, -1
    addi t0, t0, -1
    lbu t1, 0(a1)
    sb t1, 0(t0)
    addi a2, a2, -1
    j 1b
2:  ret
    .globl memset
memset:
    mv t0, a0
1:  beqz a2, 2f
    sb a1, 0(t0)
    addi t0, t0, 1
    addi a2, a2, -1
    j 1b
2:  ret
    .globl abort
abort:
    unimp
";

const SCRIPT: &str = "SECTIONS {\n  . = 0x10000;\n  .text : { *(.text*) }\n  .rodata : { *(.rodata*) *(.srodata*) }\n  .data : { *(.data*) *(.sdata*) }\n  .bss : { *(.bss*) *(.sbss*) *(COMMON) }\n}\n";
const RET: u32 = 0x0fff_fff0;
const STACK: u32 = 0x7ff0_0000;
const BUF: u32 = 0x6000_0000;
const BUF_SIZE: u32 = 512;

struct Image {
    cpu: Cpu,
    syms: BTreeMap<String, u32>,
}

impl Image {
    fn new(objs: &[(String, Vec<u8>)]) -> Self {
        let inputs: Vec<(&str, &[u8])> = objs.iter().map(|(n, b)| (n.as_str(), b.as_slice())).collect();
        let elf = riscvc::link::Linker::link(riscvc::link::Options { script: Some(String::from(SCRIPT)), allow_undefined: true, ..Default::default() }, &inputs).unwrap();
        let mut cpu = Cpu::default();
        cpu.load(&elf).unwrap();
        use object::{Object, ObjectSymbol};
        let file = object::File::parse(elf.as_slice()).unwrap();
        let syms = file.symbols().filter(|s| s.is_global() && s.is_definition()).map(|s| (String::from(s.name().unwrap()), u32::try_from(s.address()).unwrap())).collect();
        Self { cpu, syms }
    }
}

struct Rng(u64);

impl Rng {
    fn next(&mut self) -> u64 {
        self.0 ^= self.0 >> 12;
        self.0 ^= self.0 << 25;
        self.0 ^= self.0 >> 27;
        self.0.wrapping_mul(0x2545_f491_4f6c_dd1d)
    }

    /// 偏向边界值的随机数（低 `bits` 位）。
    fn int(&mut self, bits: u32) -> u64 {
        let m = if bits >= 64 { u64::MAX } else { (1u64 << bits) - 1 };
        let special = [0, 1, 2, m, m >> 1, (m >> 1) + 1, m - 1, 0x80, 0x7f, 0xffff, 0x8000_0000, 0x7fff_ffff];
        match self.next() % 3 {
            0 => special[(self.next() % special.len() as u64) as usize] & m,
            1 => (self.next() % 64) & m,
            _ => self.next() & m,
        }
    }

    fn float(&mut self) -> u32 {
        let special = [0.0f32, -0.0, 1.0, -1.0, 0.5, 3.0, f32::MAX, f32::MIN_POSITIVE, 1e-40, f32::INFINITY, f32::NEG_INFINITY, f32::NAN, 16_777_217.0, 2_147_483_648.0, -2_147_483_904.0, 4_294_967_296.0];
        match self.next() % 3 {
            0 => special[(self.next() % special.len() as u64) as usize].to_bits(),
            1 => ((self.next() % 2000) as f32 - 1000.0).to_bits() ^ (self.next() as u32 & 0x7ff),
            _ => self.next() as u32,
        }
    }

    fn double(&mut self) -> u64 {
        let special = [0.0f64, -0.0, 1.0, -1.0, 0.5, 3.0, f64::MAX, f64::MIN_POSITIVE, 5e-324, f64::INFINITY, f64::NEG_INFINITY, f64::NAN, 9_007_199_254_740_993.0, 1e300, -1e-300, 4_294_967_296.0];
        match self.next() % 3 {
            0 => special[(self.next() % special.len() as u64) as usize].to_bits(),
            1 => ((self.next() % 2000) as f64 - 1000.0).to_bits() ^ (self.next() & 0xffff),
            _ => self.next(),
        }
    }
}

/// 参数 / 返回值的一类。
#[derive(Clone, Copy, Debug)]
enum Arg {
    Int(u32, bool),
    Ptr,
    Float,
    Double,
}

impl Arg {
    fn of(types: &Types, t: Ty, signext: bool) -> Option<Self> {
        Some(match types.kind(t) {
            Kind::Int(w) if *w <= 64 => Self::Int(*w, signext),
            Kind::Ptr => Self::Ptr,
            Kind::Float => Self::Float,
            Kind::Double => Self::Double,
            _ => return None,
        })
    }
}

fn level(name: &str) {
    let Some(llvm) = llvm::Llvm::locate() else { return };
    let root = std::path::Path::new(env!("CARGO_MANIFEST_DIR")).join("target/corpus");
    let Ok(entries) = std::fs::read_dir(root.join("mlir")) else {
        eprintln!("SKIP：没有语料（先跑 tools/corpus.sh）");
        return;
    };
    let mut files: Vec<_> = entries.map(|e| e.unwrap().path()).filter(|p| p.to_str().unwrap().ends_with(&format!(".{name}.mlir"))).collect();
    files.sort();
    let tmp = std::env::temp_dir().join(format!("riscvc-llc-{name}-{}", std::process::id()));
    std::fs::create_dir_all(&tmp).unwrap();
    let support = riscvc::asm::Assembler::new(riscvc::asm::Options::default()).assemble(SUPPORT).unwrap();
    let (mut ours, mut theirs) = (vec![(String::from("support.o"), support.clone())], vec![(String::from("support.o"), support)]);
    let mut sigs: Vec<(String, Vec<Arg>, Option<Arg>)> = Vec::new();
    for f in &files {
        let stem = f.file_stem().unwrap().to_str().unwrap();
        let text = std::fs::read_to_string(f).unwrap();
        let m = Module::try_from(text.as_str()).unwrap();
        let asm = m.compile().unwrap_or_else(|e| panic!("{stem}: {e}"));
        let obj = riscvc::asm::Assembler::new(riscvc::asm::Options::default()).assemble(&asm).unwrap_or_else(|e| panic!("{stem}: 汇编 {e}"));
        ours.push((format!("{stem}.o"), obj));
        let ll = root.join("ll").join(format!("{stem}.ll"));
        let out = tmp.join(format!("{stem}.o"));
        let (_, err) = llvm.run("llc", &["-mtriple=riscv32", "-mattr=+m,+f,+zicsr,-relax", "-target-abi=ilp32f", "-filetype=obj", ll.to_str().unwrap(), "-o", out.to_str().unwrap()], "");
        assert!(!err.contains("error"), "llc {stem}: {err}");
        theirs.push((format!("{stem}.o"), std::fs::read(&out).unwrap()));
        for func in &m.functions {
            if func.blocks.is_empty() || func.linkage.local() || func.varargs {
                continue;
            }
            let args: Option<Vec<Arg>> = func.params.iter().map(|p| Arg::of(&m.types, p.ty, p.attrs.signext)).collect();
            let ret = if func.ret == Types::VOID { Some(None) } else { Arg::of(&m.types, func.ret, func.ret_attrs.signext).map(Some) };
            if let (Some(args), Some(ret)) = (args, ret) {
                sigs.push((func.name.clone(), args, ret));
            }
        }
    }
    let mut a = Image::new(&ours);
    let mut b = Image::new(&theirs);
    let mut rng = Rng(0x9e37_79b9_7f4a_7c15);
    let (mut bad, mut runs, mut tested) = (0, 0, 0);
    for (fname, args, ret) in &sigs {
        let (Some(&ea), Some(&eb)) = (a.syms.get(fname), b.syms.get(fname)) else { continue };
        // 寄存器放得下才测
        let ints: usize = args.iter().map(|x| match x {
            Arg::Int(w, _) if *w > 32 => 2,
            Arg::Double => 2,
            Arg::Float => 0,
            _ => 1,
        }).sum();
        if ints > 8 || args.iter().filter(|x| matches!(x, Arg::Float)).count() > 8 {
            continue;
        }
        tested += 1;
        let mut failed = false;
        // C 源里的未定义行为（除以零、ctz / clz 的 0）不比
        let ub_zero = ["div", "mod", "ctz", "clz"].iter().any(|k| fname.contains(k));
        for _ in 0..48 {
            // 实参
            let mut xs: Vec<u32> = Vec::new();
            let mut fs: Vec<u32> = Vec::new();
            let mut shown = Vec::new();
            let mut buffers = Vec::new();
            for (k, arg) in args.iter().enumerate() {
                match *arg {
                    Arg::Int(w, signext) => {
                        let mut v = rng.int(w);
                        while ub_zero && v == 0 {
                            v = rng.int(w);
                        }
                        shown.push(format!("{v:#x}"));
                        if w > 32 {
                            xs.push(v as u32);
                            xs.push((v >> 32) as u32);
                        } else {
                            let v = if signext && w < 32 { ((v << (64 - w)) as i64 >> (64 - w)) as u64 } else { v };
                            xs.push(v as u32);
                        }
                    }
                    Arg::Ptr => {
                        let addr = BUF + BUF_SIZE * u32::try_from(k).unwrap();
                        let data: Vec<u8> = (0..BUF_SIZE).map(|_| rng.next() as u8).collect();
                        buffers.push((addr, data));
                        xs.push(addr + BUF_SIZE / 4);
                        shown.push(format!("ptr{k}"));
                    }
                    Arg::Float => {
                        let v = rng.float();
                        shown.push(format!("{}", f32::from_bits(v)));
                        fs.push(v);
                    }
                    Arg::Double => {
                        let v = rng.double();
                        shown.push(format!("{}", f64::from_bits(v)));
                        xs.push(v as u32);
                        xs.push((v >> 32) as u32);
                    }
                }
            }
            let mut results = Vec::new();
            for (img, entry) in [(&mut a, ea), (&mut b, eb)] {
                let mut cpu = img.cpu.clone();
                for (addr, data) in &buffers {
                    cpu.mem.write(*addr, data);
                }
                for (i, v) in xs.iter().enumerate() {
                    cpu.x[10 + i] = *v;
                }
                for (i, v) in fs.iter().enumerate() {
                    cpu.f[10 + i] = *v;
                }
                cpu.x[2] = STACK;
                let stop = cpu.run(entry, RET, 300_000);
                let value = match (ret, &stop) {
                    (Some(Arg::Int(w, _)), Stop::Returned) if *w > 32 => u64::from(cpu.x[10]) | u64::from(cpu.x[11]) << 32,
                    (Some(Arg::Int(w, _)), Stop::Returned) => u64::from(cpu.x[10]) & ((1u64 << w) - 1),
                    (Some(Arg::Ptr), Stop::Returned) => u64::from(cpu.x[10] >= BUF && cpu.x[10] < BUF + 8 * BUF_SIZE) << 63 | u64::from(cpu.x[10].wrapping_sub(BUF)),
                    (Some(Arg::Float), Stop::Returned) => u64::from(cpu.f[10]),
                    (Some(Arg::Double), Stop::Returned) => u64::from(cpu.x[10]) | u64::from(cpu.x[11]) << 32,
                    _ => 0,
                };
                let mem: Vec<Vec<u8>> = buffers
                    .iter()
                    .map(|(addr, data)| {
                        let mut out = vec![0; data.len()];
                        cpu.mem.read(*addr, &mut out);
                        out
                    })
                    .collect();
                results.push((stop, value, mem));
            }
            runs += 1;
            if results[0] != results[1] {
                if !failed {
                    bad += 1;
                    if bad <= 20 {
                        eprintln!(
                            "{fname}({}): riscvc {:?} {:#x}  ≠  llc {:?} {:#x}{}",
                            shown.join(", "),
                            results[0].0,
                            results[0].1,
                            results[1].0,
                            results[1].1,
                            if results[0].2 != results[1].2 { "（内存不同）" } else { "" }
                        );
                    }
                }
                failed = true;
            }
        }
    }
    std::fs::remove_dir_all(&tmp).ok();
    eprintln!("{name}：{tested} 个函数、{runs} 次调用，{bad} 个函数结果不同");
    assert_eq!(bad, 0);
}

#[test]
fn o2() {
    level("O2");
}

#[test]
fn o0() {
    level("O0");
}
