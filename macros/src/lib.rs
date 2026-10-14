//! riscvc 的过程宏：指令表（`#[derive(Isa)]`）与操作码并集（`#[derive(Opcode)]`）。
//!
//! ```ignore
//! #[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, Isa)]
//! #[isa(name = "zmmul", feature = "zmmul")]                   // 扩展名（-mattr 写法）、对应的 cargo feature（可省）、alias = 打印别名的函数（可省）
//! #[pseudo("mul.lo $rd:x, $a:x, $b:x" => "mul $rd, $a, $b")]  // 伪指令模板：`$名:类`（x / f / 不写 = 任意）
//! pub enum Zmmul {
//!     #[isa("mul", R, 0x0200_0033, exec = |c, i| c.set(i.rd, c.x(i.rs1).wrapping_mul(c.x(i.rs2))))]
//!     Mul,
//! }
//! ```
//!
//! `Isa` 生成：`ALL`、`Table`（名字、格式、固定位、开没开、打印别名 `alias = 函数`）、`FromStr` / `Display`；
//! 有 `exec` 的再生成 `Semantics`（执行、伪指令模板），配 `riscvc::ext::Std<T>` 就是一个完整的扩展。
//! `Opcode` 写在「每个变体包一张表」的枚举上，生成 `From<表>`、`Table` 的委托与按表的 `match`。
use proc_macro::TokenStream;
use proc_macro2::TokenStream as Ts;
use quote::{format_ident, quote};
use syn::parse::{Parse, ParseStream};
use syn::{Data, DeriveInput, Expr, Fields, Ident, LitStr, Path, Token, parse_macro_input};

/// 一行：`#[isa("助记符", 格式, 固定位[, exec = 闭包])]`。
struct Row {
    name: LitStr,
    form: Ident,
    bits: Expr,
    exec: Option<Expr>,
}

impl Parse for Row {
    fn parse(input: ParseStream<'_>) -> syn::Result<Self> {
        let name = input.parse()?;
        input.parse::<Token![,]>()?;
        let form = input.parse()?;
        input.parse::<Token![,]>()?;
        let bits = input.parse()?;
        let mut exec = None;
        if input.parse::<Option<Token![,]>>()?.is_some() && !input.is_empty() {
            let key: Ident = input.parse()?;
            if key != "exec" {
                return Err(syn::Error::new(key.span(), "只认 `exec = 闭包`"));
            }
            input.parse::<Token![=]>()?;
            exec = Some(input.parse()?);
        }
        Ok(Self { name, form, bits, exec })
    }
}

/// `#[pseudo("模式" => "展开")]`。
struct Pseudo {
    pattern: LitStr,
    expansion: LitStr,
}

impl Parse for Pseudo {
    fn parse(input: ParseStream<'_>) -> syn::Result<Self> {
        let pattern = input.parse()?;
        input.parse::<Token![=>]>()?;
        let expansion = input.parse()?;
        Ok(Self { pattern, expansion })
    }
}

/// ⭐ 指令表：见 crate 文档。
#[proc_macro_derive(Isa, attributes(isa, pseudo))]
pub fn derive_isa(input: TokenStream) -> TokenStream {
    let input = parse_macro_input!(input as DeriveInput);
    isa(&input).unwrap_or_else(syn::Error::into_compile_error).into()
}

fn isa(input: &DeriveInput) -> syn::Result<Ts> {
    let ty = &input.ident;
    let Data::Enum(data) = &input.data else { return Err(syn::Error::new_spanned(ty, "`Isa` 只用在枚举上")) };
    // 表头：name / feature / alias
    let (mut name, mut feature, mut alias) = (None::<LitStr>, None::<LitStr>, None::<Path>);
    let mut pseudos = Vec::new();
    for a in &input.attrs {
        if a.path().is_ident("isa") {
            a.parse_nested_meta(|m| {
                if m.path.is_ident("name") {
                    name = Some(m.value()?.parse()?);
                } else if m.path.is_ident("feature") {
                    feature = Some(m.value()?.parse()?);
                } else if m.path.is_ident("alias") {
                    alias = Some(m.value()?.parse()?);
                } else {
                    return Err(m.error("表头只认 name / feature / alias"));
                }
                Ok(())
            })?;
        } else if a.path().is_ident("pseudo") {
            pseudos.push(a.parse_args::<Pseudo>()?);
        }
    }
    let name = name.ok_or_else(|| syn::Error::new_spanned(ty, "要 `#[isa(name = \"…\")]`"))?;
    let enabled = feature.map_or_else(|| quote!(true), |f| quote!(cfg!(feature = #f)));
    let alias = alias.map(|a| quote! {
        fn alias(i: &::riscvc::isa::Inst<Self>, pc: u64, style: ::riscvc::isa::Style) -> Option<(String, String)> {
            #a(i, pc, style)
        }
    });
    // 各行
    let mut rows = Vec::new();
    for v in &data.variants {
        if !matches!(v.fields, Fields::Unit) {
            return Err(syn::Error::new_spanned(v, "指令表的变体不带字段"));
        }
        let a = v.attrs.iter().find(|a| a.path().is_ident("isa")).ok_or_else(|| syn::Error::new_spanned(v, "每个变体要 `#[isa(\"助记符\", 格式, 固定位)]`"))?;
        rows.push((&v.ident, a.parse_args::<Row>()?));
    }
    let idents: Vec<&Ident> = rows.iter().map(|(i, _)| *i).collect();
    let names: Vec<&LitStr> = rows.iter().map(|(_, r)| &r.name).collect();
    let forms: Vec<&Ident> = rows.iter().map(|(_, r)| &r.form).collect();
    let bits: Vec<&Expr> = rows.iter().map(|(_, r)| &r.bits).collect();
    let mut out = quote! {
        impl #ty {
            /// 全部指令。
            pub const ALL: &'static [Self] = &[#(Self::#idents),*];
        }
        impl ::riscvc::isa::Table for #ty {
            const ALL: &'static [Self] = &[#(Self::#idents),*];
            fn ext(&self) -> &str { #name }
            fn name(&self) -> &str { match self { #(Self::#idents => #names),* } }
            fn form(&self) -> ::riscvc::isa::Form { match self { #(Self::#idents => ::riscvc::isa::Form::#forms),* } }
            fn bits(&self) -> u32 { match self { #(Self::#idents => #bits),* } }
            fn enabled(&self) -> bool { #enabled }
            #alias
        }
        impl ::core::str::FromStr for #ty {
            type Err = ();
            fn from_str(s: &str) -> ::core::result::Result<Self, ()> {
                match s { #(#names => Ok(Self::#idents),)* _ => Err(()) }
            }
        }
        impl ::core::fmt::Display for #ty {
            fn fmt(&self, f: &mut ::core::fmt::Formatter<'_>) -> ::core::fmt::Result {
                f.write_str(::riscvc::isa::Table::name(self))
            }
        }
    };
    // 有语义的 ⇒ Semantics
    if rows.iter().any(|(_, r)| r.exec.is_some()) {
        let arms = rows.iter().map(|(v, r)| match &r.exec {
            Some(e) => quote!(Self::#v => ::riscvc::ext::run(#e, cx, i)),
            None => quote!(Self::#v => Err(::riscvc::sim::Stop::Trap(::riscvc::isa::Table::bits(self)))),
        });
        let (pats, exps): (Vec<&LitStr>, Vec<&LitStr>) = pseudos.iter().map(|p| (&p.pattern, &p.expansion)).unzip();
        out.extend(quote! {
            impl ::riscvc::ext::Semantics for #ty {
                const PSEUDOS: &'static [(&'static str, &'static str)] = &[#((#pats, #exps)),*];
                fn execute(&self, cx: &mut ::riscvc::ext::Exec<'_, '_>, i: &::riscvc::isa::Inst<Self>) -> ::core::result::Result<(), ::riscvc::sim::Stop> {
                    match self { #(#arms),* }
                }
            }
        });
    }
    Ok(out)
}

/// ⭐ 操作码并集：`enum Opcode { I(Rv32i), M(M), … }`（每个变体包一张表）。
#[proc_macro_derive(Opcode)]
pub fn derive_opcode(input: TokenStream) -> TokenStream {
    let input = parse_macro_input!(input as DeriveInput);
    opcode(&input).unwrap_or_else(syn::Error::into_compile_error).into()
}

fn opcode(input: &DeriveInput) -> syn::Result<Ts> {
    let ty = &input.ident;
    let Data::Enum(data) = &input.data else { return Err(syn::Error::new_spanned(ty, "`Opcode` 只用在枚举上")) };
    let mut vs = Vec::new();
    let mut tys = Vec::new();
    for v in &data.variants {
        let Fields::Unnamed(f) = &v.fields else { return Err(syn::Error::new_spanned(v, "变体要是 `名字(表)`")) };
        let [field] = f.unnamed.iter().collect::<Vec<_>>()[..] else { return Err(syn::Error::new_spanned(v, "一个变体包一张表")) };
        vs.push(&v.ident);
        tys.push(&field.ty);
    }
    let all = format_ident!("ALL");
    let (v0, t0) = (vs[0], tys[0]);
    Ok(quote! {
        #(impl ::core::convert::From<#tys> for #ty {
            fn from(o: #tys) -> Self { Self::#vs(o) }
        })*
        impl ::riscvc::isa::Table for #ty {
            const #all: &'static [Self] = &{
                const N: usize = 0 #(+ <#tys as ::riscvc::isa::Table>::ALL.len())*;
                let mut out = [Self::#v0(<#t0 as ::riscvc::isa::Table>::ALL[0]); N];
                let mut k = 0;
                #({
                    let t = <#tys as ::riscvc::isa::Table>::ALL;
                    let mut j = 0;
                    while j < t.len() {
                        out[k] = Self::#vs(t[j]);
                        k += 1;
                        j += 1;
                    }
                })*
                out
            };
            fn ext(&self) -> &str { match self { #(Self::#vs(o) => ::riscvc::isa::Table::ext(o)),* } }
            fn name(&self) -> &str { match self { #(Self::#vs(o) => ::riscvc::isa::Table::name(o)),* } }
            fn form(&self) -> ::riscvc::isa::Form { match self { #(Self::#vs(o) => ::riscvc::isa::Table::form(o)),* } }
            fn bits(&self) -> u32 { match self { #(Self::#vs(o) => ::riscvc::isa::Table::bits(o)),* } }
            fn enabled(&self) -> bool { match self { #(Self::#vs(o) => ::riscvc::isa::Table::enabled(o)),* } }
            fn alias(i: &::riscvc::isa::Inst<Self>, pc: u64, style: ::riscvc::isa::Style) -> Option<(String, String)> {
                match i.op { #(Self::#vs(o) => <#tys as ::riscvc::isa::Table>::alias(&i.with_op(o), pc, style)),* }
            }
        }
        impl ::core::str::FromStr for #ty {
            type Err = ();
            fn from_str(s: &str) -> ::core::result::Result<Self, ()> {
                #(if let Ok(o) = s.parse::<#tys>() { return Ok(Self::#vs(o)); })*
                Err(())
            }
        }
        impl ::core::fmt::Display for #ty {
            fn fmt(&self, f: &mut ::core::fmt::Formatter<'_>) -> ::core::fmt::Result {
                f.write_str(::riscvc::isa::Table::name(self))
            }
        }
    })
}
