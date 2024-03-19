export XDG_RUNTIME_DIR=/tmp 
BROWSER=firefox/chrome

google xx
baidu xx

wsl-kali中执行rustup doc的时候，打开的浏览器不显示rust手册文档解决方案：
1. 安装wslu，这个工具集中有一个wslview的工具
2. BROWSER=wslview
3. rust doc就可以了
