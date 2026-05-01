<h1 align="center">maude.nvim</h1>

Light + Dark Neovim colorscheme

![maude Nvim](./maude-nvim.png)

## Supported Plugins

- [Git Gutter](https://github.com/airblade/vim-gitgutter)
- [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
- [LSP](https://github.com/neovim/nvim-lspconfig)
- [Lualine](https://github.com/hoob3rt/lualine.nvim)
- [NvimTree](https://github.com/kyazdani42/nvim-tree.lua)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [nvim-compe](https://github.com/hrsh7th/nvim-compe)

## ⬇️ Installation

> This colorscheme requires [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)

Install via package manager

```lua
-- Lazy.nvim:
require('lazy').setup({
    -- your other plugins
    
    -- this theme
    {
        "Mrcuve0/maude.nvim",
        lazy = false,
        priority = 1000,
    },
})
```

```lua
-- Packer:
use 'Mrcuve0/maude.nvim'
```

```vim
" Vim-Plug:
Plug 'Mrcuve0/maude.nvim'
```

## 🚀 Usage

```lua
-- Lua:
vim.g.maude_darker = true -- for darker version
vim.g.maude_disable_cursorline = true -- to disable cursorline
vim.g.maude_transparent = true -- makes the background transparent
vim.cmd([[colorscheme maude]])
```

```lua
-- Lua with Lazy.nvim:
{
    "Mrcuve0/maude.nvim",
    lazy = false,
    priority = 1000,
    
    -- configure and set on startup
    config = function()
        vim.g.maude_darker = true             -- for darker version
        vim.g.maude_disable_cursorline = true -- to disable cursorline
        vim.g.maude_transparent = true        -- makes the background transparent
        vim.cmd('colorscheme maude')
    end
}
```

```vim
" Vim-Script:
let g:maude_darker = v:true " for darker version
let g:maude_disable_cursorline = v:true " to disable cursorline
let g:maude_transparent = v:true " makes the background transparent
colorscheme maude
```

If you are using [`lualine`](https://github.com/hoob3rt/lualine.nvim), you can also enable the provided theme:

```lua
require("lualine").setup({
    options = {
        -- ...
        theme = "maude",
        -- ...
    },
})
```

## Something is broken but I know how to fix it!

Pull requests are welcome! Feel free to send one with an explanation!
