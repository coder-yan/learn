

常用命令
```code

nix-channel --list
nix-store --verify --check-content --repair  # 有时候nix-channel --update的时候会hang住，执行这个命令
nix-channel --update
nix-shell -p vim -p git

```
