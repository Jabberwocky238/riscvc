//! 源文本 ⇒ 语句行：剥注释、简单的 C 预处理（`.S`）、`;` 分句、`.rept` / `.irp` / `.irpc` / `.macro` 展开。
use super::Error;
use alloc::borrow::Cow;
use std::collections::HashMap;

/// 一条语句：原文件行号 + 文本（没剥过东西的行直接借原文，⛔ 不上堆）。
pub struct Line<'a> {
    pub no: usize,
    pub text: Cow<'a, str>,
}

/// 预处理状态：`#define` 的名字（只做整词替换）。
pub struct Source {
    pub defines: HashMap<String, String>,
    pub preprocess: bool,
}

/// `.macro` 的定义：形参（带缺省值）与正文。
struct Macro<'a> {
    params: Vec<(String, Option<String>)>,
    body: Vec<Line<'a>>,
}

impl Source {
    /// ⭐ 全文 ⇒ 展开好的语句。
    pub fn lines<'a>(&self, text: &'a str) -> Result<Vec<Line<'a>>, Error> {
        let raw = self.strip(text);
        let raw = if self.preprocess { self.cpp(raw)? } else { raw };
        let mut out = Vec::new();
        for (no, line) in raw {
            // 借来的行 ⇒ 各语句也是借的；剥过的行才落一份
            match line {
                Cow::Borrowed(l) => out.extend(Self::split_statements(l).into_iter().map(str::trim).filter(|t| !t.is_empty()).map(|t| Line { no, text: Cow::Borrowed(t) })),
                Cow::Owned(l) => out.extend(Self::split_statements(&l).into_iter().map(str::trim).filter(|t| !t.is_empty()).map(|t| Line { no, text: Cow::Owned(String::from(t)) }).collect::<Vec<_>>()),
            }
        }
        Self::expand(out, &mut HashMap::new(), 0)
    }

    /// 剥 `/* */`、`//`、`#`（行首的 `#` 在预处理模式下留给 cpp）。字符串里的不动。
    fn strip<'a>(&self, text: &'a str) -> Vec<(usize, Cow<'a, str>)> {
        let mut out = Vec::new();
        let mut in_block = false;
        for (i, line) in text.lines().enumerate() {
            // 绝大多数行没有注释起始符 ⇒ 一个字节都不用动
            if !in_block && !line.contains('/') && !line.contains('#') {
                out.push((i + 1, Cow::Borrowed(line)));
                continue;
            }
            let mut s = String::new();
            let b: Vec<char> = line.chars().collect();
            let mut j = 0;
            let mut in_str = false;
            while j < b.len() {
                let c = b[j];
                if in_block {
                    if c == '*' && b.get(j + 1) == Some(&'/') {
                        in_block = false;
                        j += 2;
                        s.push(' ');
                    } else {
                        j += 1;
                    }
                    continue;
                }
                if in_str {
                    s.push(c);
                    if c == '\\' && j + 1 < b.len() {
                        s.push(b[j + 1]);
                        j += 2;
                        continue;
                    }
                    in_str = c != '"';
                    j += 1;
                    continue;
                }
                match c {
                    '"' => {
                        in_str = true;
                        s.push(c);
                    }
                    '/' if b.get(j + 1) == Some(&'*') => {
                        in_block = true;
                        j += 2;
                        continue;
                    }
                    '/' if b.get(j + 1) == Some(&'/') => break,
                    '#' if !(self.preprocess && s.trim().is_empty()) => break,
                    _ => s.push(c),
                }
                j += 1;
            }
            out.push((i + 1, Cow::Owned(s)));
        }
        out
    }

    /// `#define` / `#undef` / `#if(n)def` / `#if` / `#elif` / `#else` / `#endif`（`#if` 只认 `defined(X)`、`!`、数与 `&&` `||`）。
    fn cpp<'a>(&self, lines: Vec<(usize, Cow<'a, str>)>) -> Result<Vec<(usize, Cow<'a, str>)>, Error> {
        let mut defines = self.defines.clone();
        // 栈：(本分支是否生效, 这一组是否已有分支生效过)
        let mut stack: Vec<(bool, bool)> = Vec::new();
        let mut out = Vec::new();
        for (no, line) in lines {
            let live = stack.iter().all(|(on, _)| *on);
            let t = line.trim();
            if let Some(d) = t.strip_prefix('#') {
                let d = d.trim();
                let (word, rest) = d.split_once(char::is_whitespace).map_or((d, ""), |(a, b)| (a, b.trim()));
                match word {
                    "define" if live => {
                        let (name, value) = rest.split_once(char::is_whitespace).map_or((rest, ""), |(a, b)| (a, b.trim()));
                        defines.insert(String::from(name), String::from(value));
                    }
                    "undef" if live => {
                        defines.remove(rest);
                    }
                    "ifdef" | "ifndef" => {
                        let on = defines.contains_key(rest) == (word == "ifdef");
                        stack.push((on, on));
                    }
                    "if" => {
                        let on = Self::cpp_if(rest, &defines)?;
                        stack.push((on, on));
                    }
                    "elif" => {
                        let top = stack.last_mut().ok_or_else(|| Error::at(no, "#elif 没有 #if"))?;
                        let on = !top.1 && Self::cpp_if(rest, &defines)?;
                        *top = (on, top.1 || on);
                    }
                    "else" => {
                        let top = stack.last_mut().ok_or_else(|| Error::at(no, "#else 没有 #if"))?;
                        *top = (!top.1, true);
                    }
                    "endif" => {
                        stack.pop().ok_or_else(|| Error::at(no, "#endif 没有 #if"))?;
                    }
                    "include" | "error" | "warning" | "pragma" | "line" if !live => {}
                    "error" => return Err(Error::at(no, &format!("#error {rest}"))),
                    _ if !live => {}
                    _ => return Err(Error::at(no, &format!("不支持的预处理指令 #{word}"))),
                }
                continue;
            }
            if live {
                out.push((no, Cow::Owned(Self::substitute(&line, &defines))));
            }
        }
        Ok(out)
    }

    fn cpp_if(expr: &str, defines: &HashMap<String, String>) -> Result<bool, Error> {
        let e = expr.replace("defined", " defined ");
        let e = e
            .split("||")
            .any(|alt| {
                alt.split("&&").all(|term| {
                    let term = term.trim();
                    let (neg, term) = term.strip_prefix('!').map_or((false, term), |t| (true, t.trim()));
                    let term = term.trim_matches(|c| c == '(' || c == ')').trim();
                    let v = if let Some(name) = term.strip_prefix("defined") {
                        defines.contains_key(name.trim().trim_matches(|c| c == '(' || c == ')').trim())
                    } else {
                        let value = defines.get(term).map_or(term, String::as_str);
                        value.parse::<i64>().is_ok_and(|v| v != 0)
                    };
                    v != neg
                })
            });
        Ok(e)
    }

    /// 整词替换宏名（不进字符串）。
    fn substitute(line: &str, defines: &HashMap<String, String>) -> String {
        if defines.is_empty() {
            return String::from(line);
        }
        let mut out = String::new();
        let mut word = String::new();
        let mut in_str = false;
        for c in line.chars().chain(core::iter::once('\n')) {
            if !in_str && (c.is_ascii_alphanumeric() || c == '_') {
                word.push(c);
                continue;
            }
            if !word.is_empty() {
                out.push_str(defines.get(&word).map_or(word.as_str(), String::as_str));
                word.clear();
            }
            if c == '"' {
                in_str = !in_str;
            }
            if c != '\n' {
                out.push(c);
            }
        }
        out
    }

    /// `;` 分句（字符串里的不算）。
    fn split_statements(line: &str) -> Vec<&str> {
        if !line.contains(';') {
            return vec![line];
        }
        let mut out = Vec::new();
        let (mut in_str, mut escape, mut start) = (false, false, 0);
        for (i, c) in line.char_indices() {
            if in_str {
                if escape {
                    escape = false;
                } else if c == '\\' {
                    escape = true;
                } else if c == '"' {
                    in_str = false;
                }
                continue;
            }
            match c {
                '"' => in_str = true,
                ';' => {
                    out.push(&line[start..i]);
                    start = i + c.len_utf8();
                }
                _ => {}
            }
        }
        out.push(&line[start..]);
        out
    }

    /// 首个词（指令 / 伪操作名），跳过 `标号:`。
    fn head(text: &str) -> (&str, &str) {
        let t = text.trim_start();
        let end = t.find(|c: char| c.is_whitespace() || c == ',').unwrap_or(t.len());
        (&t[..end], t[end..].trim())
    }

    /// 展开 `.rept` / `.irp` / `.irpc` / `.macro`。`depth` 防无限递归。
    fn expand<'a>(lines: Vec<Line<'a>>, macros: &mut HashMap<String, Macro<'a>>, depth: usize) -> Result<Vec<Line<'a>>, Error> {
        if depth > 64 {
            return Err(Error::Syntax(String::from("宏 / .rept 嵌套太深")));
        }
        let mut out = Vec::new();
        let mut it = lines.into_iter();
        while let Some(line) = it.next() {
            let (word, rest) = Self::head(&line.text);
            let word = word.to_ascii_lowercase();
            match word.as_str() {
                ".rept" | ".irp" | ".irpc" | ".macro" => {
                    let body = Self::block(&mut it, &word, line.no)?;
                    let rest = String::from(rest);
                    let expanded: Vec<Line> = match word.as_str() {
                        ".rept" => {
                            let n: i64 = super::Assembler::const_text(&rest).map_err(|e| Error::at(line.no, &e.to_string()))?;
                            (0..n.max(0)).flat_map(|_| body.iter().map(|l| Line { no: l.no, text: l.text.clone() })).collect()
                        }
                        ".irp" | ".irpc" => {
                            let (name, values) = rest.split_once(',').map_or((rest.as_str(), ""), |(a, b)| (a, b));
                            let name = name.trim();
                            let values: Vec<String> = if word == ".irp" {
                                values.split(',').map(|v| String::from(v.trim())).collect()
                            } else {
                                values.trim().chars().map(String::from).collect()
                            };
                            values
                                .iter()
                                .flat_map(|v| body.iter().map(move |l| Line { no: l.no, text: Cow::Owned(l.text.replace(&format!("\\{name}"), v)) }))
                                .collect()
                        }
                        _ => {
                            let mut parts = rest.split(|c: char| c == ',' || c.is_whitespace()).filter(|p| !p.is_empty());
                            let name = parts.next().ok_or_else(|| Error::at(line.no, ".macro 没有名字"))?.to_ascii_lowercase();
                            let params = parts
                                .map(|p| p.split_once('=').map_or((String::from(p), None), |(a, b)| (String::from(a), Some(String::from(b)))))
                                .collect();
                            macros.insert(name, Macro { params, body });
                            Vec::new()
                        }
                    };
                    out.extend(Self::expand(expanded, macros, depth + 1)?);
                }
                _ => {
                    let call = macros.get(&word).map(|m| {
                        let args: Vec<&str> = rest.split(',').map(str::trim).collect();
                        m.body
                            .iter()
                            .map(|l| {
                                let mut text = l.text.clone();
                                for (i, (p, default)) in m.params.iter().enumerate() {
                                    let v = args.get(i).filter(|a| !a.is_empty()).copied().or(default.as_deref()).unwrap_or("");
                                    text = Cow::Owned(text.replace(&format!("\\{p}"), v));
                                }
                                Line { no: line.no, text }
                            })
                            .collect::<Vec<_>>()
                    });
                    match call {
                        Some(body) => out.extend(Self::expand(body, macros, depth + 1)?),
                        None => out.push(line),
                    }
                }
            }
        }
        Ok(out)
    }

    /// 收一个块直到配对的 `.endr` / `.endm`（可嵌套）。
    fn block<'a>(it: &mut impl Iterator<Item = Line<'a>>, open: &str, no: usize) -> Result<Vec<Line<'a>>, Error> {
        let close = if open == ".macro" { ".endm" } else { ".endr" };
        let mut depth = 1;
        let mut body = Vec::new();
        for line in it.by_ref() {
            let (word, _) = Self::head(&line.text);
            let word = word.to_ascii_lowercase();
            if (close == ".endr" && matches!(word.as_str(), ".rept" | ".irp" | ".irpc")) || (close == ".endm" && word == ".macro") {
                depth += 1;
            }
            if word == close {
                depth -= 1;
                if depth == 0 {
                    return Ok(body);
                }
            }
            body.push(line);
        }
        Err(Error::at(no, &format!("{open} 没有 {close}")))
    }
}
