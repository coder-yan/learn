

常用命令
```code

nix-channel --list
nix-store --verify --check-content --repair  # 有时候nix-channel --update的时候会hang住，执行这个命令
nix-channel --update
nix-shell -p vim -p git

nix-shell -I nixpkgs=https://mirrors.tuna.tsinghua.edu.cn/nixpkgs -p python39 --option binary-caches https://mirrors.tuna.tsinghua.edu.cn/nix-channels --option binary-cache-public-keys "tuna-nix-pubkey.drv.drv@tuna-nix-pubkey:1:9k0L5Lp5MwXxZoLs3iO3LJqF6w3u4ZsKl4cXzqJkQ1k="

# flake.nix中nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.05";会使github ratelimit
export NIX_CONFIG="access-tokens = github.com=ghp_accesstoken"

```
