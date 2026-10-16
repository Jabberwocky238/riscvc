//! RISC-V 属性节的格式（`SHT_RISCV_ATTRIBUTES`，psABI「Attributes」）：字节 ⇄ vendor / 子段 / 属性。
//!
//! ```text
//!   'A'                               格式版本
//!   { u32 长度, vendor 名 NUL,        一个 vendor 段（长度含自己这 4 字节）
//!     { u8 tag, u32 长度, 属性… } }   子段：tag 1 = 整个文件，2 = 节，3 = 符号
//!   属性 = ULEB128 tag + 值            偶数 tag ⇒ ULEB128 数，奇数 tag ⇒ NUL 结尾字符串
//! ```
//!
//! ⚠ 只管格式，⛔ 不管某个 vendor 的属性是什么意思：标准的 `riscv` vendor 见 [`riscv_tag`]，别的 vendor 由调用方自己解释。
//! ⭐ 判据：解开再编回去 == 原字节（`Vec::<u8>::from(&Attributes)`）。
use super::Error;
use alloc::string::String;
use alloc::vec::Vec;

/// 格式版本 `'A'`。
pub const FORMAT_A: u8 = b'A';

/// 一个属性节解开的样子。
#[derive(Clone, Debug, Default, PartialEq, Eq)]
pub struct Attributes {
    pub vendors: Vec<Vendor>,
}

/// 一个 vendor 段。
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct Vendor {
    pub name: String,
    pub subsections: Vec<Subsection>,
}

/// 一个子段。
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct Subsection {
    pub tag: u8,
    pub attributes: Vec<Attribute>,
}

impl Subsection {
    pub const FILE: u8 = 1;
    pub const SECTION: u8 = 2;
    pub const SYMBOL: u8 = 3;
}

/// 一个属性。
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct Attribute {
    pub tag: u32,
    pub value: Value,
}

/// 属性的值：偶数 tag 是数，奇数 tag 是字符串。
#[derive(Clone, Debug, PartialEq, Eq)]
pub enum Value {
    Number(u64),
    Text(String),
}

/// 标准 `riscv` vendor 的 tag（psABI）。
pub mod riscv_tag {
    pub const STACK_ALIGN: u32 = 4;
    pub const ARCH: u32 = 5;
    pub const UNALIGNED_ACCESS: u32 = 6;
    pub const PRIV_SPEC: u32 = 8;
    pub const PRIV_SPEC_MINOR: u32 = 10;
    pub const PRIV_SPEC_REVISION: u32 = 12;
    pub const ATOMIC_ABI: u32 = 14;
    pub const X3_REG_USAGE: u32 = 16;
}

/// ULEB128 的读写（属性的 tag 与数值）。
struct Uleb;

impl Uleb {
    /// 读一个，交出值与剩下的字节；没结束或装不进 64 位 ⇒ 拒。
    fn read(bytes: &[u8]) -> Result<(u64, &[u8]), Error> {
        let mut value = 0u64;
        let mut shift = 0u32;
        for (index, &byte) in bytes.iter().enumerate() {
            if shift >= 64 {
                return Err(Error::BadUleb { bits: shift });
            }
            value |= u64::from(byte & 0x7f) << shift;
            if byte & 0x80 == 0 {
                return Ok((value, &bytes[index + 1..]));
            }
            shift += 7;
        }
        Err(Error::BadUleb { bits: shift })
    }

    fn write(out: &mut Vec<u8>, mut value: u64) {
        loop {
            let byte = (value & 0x7f) as u8;
            value >>= 7;
            out.push(if value == 0 { byte } else { byte | 0x80 });
            if value == 0 {
                return;
            }
        }
    }
}

/// NUL 结尾的字符串（vendor 名、文本属性）。
struct Nul;

impl Nul {
    /// 读一个，交出它与 NUL 之后的字节；没有 NUL ⇒ `None`。
    fn read(bytes: &[u8]) -> Option<(String, &[u8])> {
        let end = bytes.iter().position(|&b| b == 0)?;
        Some((String::from_utf8_lossy(&bytes[..end]).into_owned(), &bytes[end + 1..]))
    }
}

impl TryFrom<&[u8]> for Attributes {
    type Error = Error;

    /// 空的节 ⇒ 空的属性（⛔ 不算错）。
    fn try_from(bytes: &[u8]) -> Result<Self, Error> {
        let Some((&version, mut rest)) = bytes.split_first() else {
            return Ok(Self::default());
        };
        if version != FORMAT_A {
            return Err(Error::BadAttributeVersion { found: version });
        }
        let mut vendors = Vec::new();
        while let Some(head) = rest.first_chunk::<4>() {
            let declared = u32::from_le_bytes(*head);
            let total = declared as usize;
            if total < 4 || total > rest.len() {
                return Err(Error::AttributeSectionOverrun { declared, left: rest.len() });
            }
            let (chunk, next) = rest.split_at(total);
            vendors.push(Vendor::try_from(&chunk[4..])?);
            rest = next;
        }
        Ok(Self { vendors })
    }
}

impl From<&Attributes> for Vec<u8> {
    fn from(attributes: &Attributes) -> Self {
        let mut out = alloc::vec![FORMAT_A];
        for vendor in &attributes.vendors {
            let body = Self::from(vendor);
            out.extend_from_slice(&((body.len() + 4) as u32).to_le_bytes());
            out.extend_from_slice(&body);
        }
        out
    }
}

impl Attributes {
    /// 某个 vendor 的某个 tag（各子段里第一次出现的那个）。
    #[must_use]
    pub fn get(&self, vendor: &str, tag: u32) -> Option<&Value> {
        self.vendors.iter().filter(|v| v.name == vendor).flat_map(|v| &v.subsections).flat_map(|s| &s.attributes).find(|a| a.tag == tag).map(|a| &a.value)
    }

    /// `riscv` vendor 的架构串（`Tag_RISCV_arch`）。
    #[must_use]
    pub fn arch(&self) -> Option<&str> {
        match self.get("riscv", riscv_tag::ARCH)? {
            Value::Text(text) => Some(text.as_str()),
            Value::Number(_) => None,
        }
    }
}

impl TryFrom<&[u8]> for Vendor {
    type Error = Error;

    fn try_from(bytes: &[u8]) -> Result<Self, Error> {
        let (name, mut rest) = Nul::read(bytes).ok_or(Error::UnterminatedVendor)?;
        let mut subsections = Vec::new();
        while rest.len() >= 5 {
            let (tag, declared) = (rest[0], u32::from_le_bytes([rest[1], rest[2], rest[3], rest[4]]));
            let total = declared as usize;
            if total < 5 || total > rest.len() {
                return Err(Error::AttributeSubsectionOverrun { tag, declared, left: rest.len() });
            }
            let (chunk, next) = rest.split_at(total);
            subsections.push(Subsection { tag, attributes: Attribute::read_all(&chunk[5..])? });
            rest = next;
        }
        Ok(Self { name, subsections })
    }
}

impl From<&Vendor> for Vec<u8> {
    fn from(vendor: &Vendor) -> Self {
        let mut out = Self::new();
        out.extend_from_slice(vendor.name.as_bytes());
        out.push(0);
        for sub in &vendor.subsections {
            let mut body = Vec::new();
            for attribute in &sub.attributes {
                attribute.write(&mut body);
            }
            out.push(sub.tag);
            out.extend_from_slice(&((body.len() + 5) as u32).to_le_bytes());
            out.extend_from_slice(&body);
        }
        out
    }
}

impl Attribute {
    /// 一个子段的属性表。
    fn read_all(mut bytes: &[u8]) -> Result<Vec<Self>, Error> {
        let mut out = Vec::new();
        while !bytes.is_empty() {
            let (tag, rest) = Uleb::read(bytes)?;
            let tag = u32::try_from(tag).map_err(|_| Error::BadUleb { bits: 64 })?;
            let (value, rest) = if tag.is_multiple_of(2) {
                let (number, rest) = Uleb::read(rest)?;
                (Value::Number(number), rest)
            } else {
                let (s, rest) = Nul::read(rest).ok_or(Error::UnterminatedString)?;
                (Value::Text(s), rest)
            };
            out.push(Self { tag, value });
            bytes = rest;
        }
        Ok(out)
    }

    fn write(&self, out: &mut Vec<u8>) {
        Uleb::write(out, u64::from(self.tag));
        match &self.value {
            Value::Number(n) => Uleb::write(out, *n),
            Value::Text(s) => {
                out.extend_from_slice(s.as_bytes());
                out.push(0);
            }
        }
    }
}
