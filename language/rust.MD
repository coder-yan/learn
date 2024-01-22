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


## 易混淆的概念
1. self和Self
2. str和String

# 库
## 系统库
## 三方库


# traint

# 
