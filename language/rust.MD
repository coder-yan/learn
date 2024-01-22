# rust 安装和编译
## 安装rust
```code
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
查看rust编译器版本
rustc --version
更新rust
rustup update
rustup doc
卸载
rustup self uninstall
```
## rustc编译代码
```code
rustc main.rs
```
## cargo 
```code
查看cargo版本
cargo --version
创建项目
cargo new hello_cargo
构建
cargo build
cargo build --release
cargo run
检查语法
cargo check
cargo update
```

# 基础语法
## 基础
```rust
let t = true;
let num = 12;
// let if
let cont = true;
// 代码块的值是其最后一个表达式的值，而数字本身就是一个表达式
let cont_value = if cont { 5 } else { 6 };
```
## print
在print宏中就可以使用{:?}来打印结构
{:#?} 格式化的显示数据接口

## unused代码
```
#![allow(unused)] 可以消除没有调用的函数产生的告警。
```
## if...let
if let 主要解释减少枚举的冗余，只关系想要的类型
```rust
// else是可选的
let data = Some(3u8);
if let Some(max) = data {
    // ....
} else {
    // ....
}
```

## option
定义一个option::None的时候，需要主要指定泛型类型

## Result
1. Result是一个enum： Ok和Err
2. Result的实力有except方法

## 注解
### Debug注解
```
结构上加上#[derive(Debug)]注解，在print宏中就可以使用{:?}来打印结构
{:#?} 格式化的显示数据接口
```

## 代码组织

### package
包（package）是提供一系列功能的一个或者多个 crate。一个包会包含一个 Cargo.toml 文件，阐述如何去构建这些 crate。

cargo new package_name  来创建包
Cargo 遵循的一个约定：
- src/main.rs 就是一个与包同名的二进制 crate 的 crate 根
- 如果包目录中包含 src/lib.rs，则包带有与其同名的库 crate，且 src/lib.rs 是 crate 根
### crate
crate 是 Rust 在编译时最小的代码单位
crate 有两种形式：二进制项和库

## 模块
编译器会在下列路径中寻找模块（garden）代码：
- 内联，在大括号中，当mod garden后方不是一个分号而是一个大括号
- 在文件 src/garden.rs
- 在文件 src/garden/mod.rs

在 Rust 中，默认所有项（函数、方法、结构体、枚举、模块和常量）对父模块都是私有的。
父模块中的项不能使用子模块中的私有项，但是子模块中的项可以使用它们父模块中的项。

结构体定义的前面使用了 pub ，这个结构体会变成公有的，但是这个结构体的字段仍然是私有的。
枚举设为公有，则它的所有成员都将变为公有

## 子模块
在src/garden.rs中定义了mod vegetables
编译器会在以父模块命名的目录中寻找子模块代码：
- 内联，在大括号中，当mod vegetables后方不是一个分号而是一个大括号
- 在文件 src/garden/vegetables.rs
- 在文件 src/garden/vegetables/mod.rs

## 模块中的代码路径
一个 garden vegetables 模块下的Asparagus类型可以在crate::garden::vegetables::Asparagus被找到

## 私有 vs 公用
个模块里的代码默认对其父模块私有。为了使一个模块公用，应当在声明时使用pub mod替代mod。为了使一个公用模块内部的成员公用，应当在声明前使用pub

## use 关键
在一个作用域内，use关键字创建了一个成员的快捷方式，用来减少长路径的重复。在任何可以引用crate::garden::vegetables::Asparagus的作用域，你可以通过 use crate::garden::vegetables::Asparagus;创建一个快捷方式，然后你就可以在作用域中只写Asparagus来使用该类型。

# 库函数
## vector
let v = vec![1,3]

## String
&String可以强制转换为&str
Rust 的字符串不支持索引, 原因是返回的字符可能是多个utf-8，其中的一些非可见字符，造成困惑。
String 是一个 Vec<u8> 的封装
let s = "hello"
let s0 = &s[0..4]; 要谨慎使用
### String相关函数
push_str()
push()

for c in "hello".chars() {}
for c in "hello".byte() {}

## 易混淆的概念
1. self和Self
2. str和String

# 库
## 系统库
## 三方库


# traint

# 
