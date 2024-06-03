# 常用插件管理器

# 插件及配置

# 快捷键
```code
zz  快速将光标移动到屏幕的中央
ctrl-e 向上移动光标所在行
选中块， shift+ >/< 进行缩进
ctrl+alt+v 进入列编辑模式
```

# Q&A
1. ssh连接到主机，在tmux中打开neovim，不能进行粘贴复制的解决方法
   参见[tmux-nvim-copy/paste](https://gronskiy.com/posts/2023-03-26-copy-via-vim-tmux-ssh/)
   ```bash
   1. 在.tumux.conf.local中增加如下配置：
     set -g set-clipboard on
   2. 重新加载tmux
     tmux source ~/.tmxu.conf
   3. 修改neovim的配置文件init.vim
     set clipboard+=unnamedplus
   4. 给neovim增加一个osc的插件
   ```
   ```bash
      {
        "ojroques/nvim-osc52",
        config = function()
          require("osc52").setup {
            max_length = 0,          -- Maximum length of selection (0 for no limit)
            silent = false,          -- Disable message on successful copy
            trim = false,            -- Trim surrounding whitespaces before copy
          }
          local function copy()
            if ((vim.v.event.operator == "y" or vim.v.event.operator == "d")
              and vim.v.event.regname == "") then
              require("osc52").copy_register("")
            end
          end
      
          vim.api.nvim_create_autocmd("TextYankPost", { callback = copy })
        end,
      }
   ```
