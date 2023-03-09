工具安装
  apt search opam
  apt install opam
  opam init
  opam install herdtools7
  1和2选一个即可
  1. eval $(opam env)
  2. [[ ! -r /root/.opam/opam-init/init.zsh ]] || source /root/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

cat sb.litmus
```code
X86 SB                            ;(* 架构  测试名 *)
{ x=0; y=0; }
 P0          | P1          ;
 MOV [x],$1  | MOV [y],$1  ;
 MOV EAX,[y] | MOV EAX,[x] ;
locations [x;y;]
exists (0:EAX=0 /\ 1:EAX=0)
```

架构名是规范的，必须是：
  AArch64、ARM、MIPS、PPC、X86、X86_64、RISCV、C、CPP、LISA之一
测试名：
  可以任意，这一行要是程序的首行
在首行与初始化部分之间可以有任意内容的注释，代码部分汇编形式的还接受OCaml的(* *)，C形式的接受/* */和//注释。


litmus执行
bin/litmus7 ./sb.litmus
