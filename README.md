# Neovim Configuration

A minimal Neovim configuration using [lazy.nvim](https://github.com/folke/lazy.nvim) as the plugin manager.

## Structure

```
~/.config/nvim/
├── init.lua          # Entry point
└── lua/
    ├── options.lua   # Vim options
    ├── plugins.lua   # Plugin specifications
    └── keymaps.lua   # Key mappings
```

## Plugins

| Plugin | Description |
|--------|-------------|
| [rose-pine](https://github.com/rose-pine/neovim) | Colorscheme |
| [lualine](https://github.com/nvim-lualine/lualine.nvim) | Statusline |
| [which-key](https://github.com/folke/which-key.nvim) | Keybinding hints |
| [fzf-lua](https://github.com/ibhagwan/fzf-lua) | Fuzzy finder |
| [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua) | File explorer |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting |
| [mason](https://github.com/mason-org/mason.nvim) | LSP installer |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP configuration |
| [blink.cmp](https://github.com/saghen/blink.cmp) | Autocompletion |
| [conform](https://github.com/stevearc/conform.nvim) | Formatting |
| [nvim-lint](https://github.com/mfussenegger/nvim-lint) | Linting |
| [gitsigns](https://github.com/lewis6991/gitsigns.nvim) | Git signs |
| [vim-fugitive](https://github.com/tpope/vim-fugitive) | Git commands |
| [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) | Tmux integration |

## Key Mappings

Leader key: `<Space>`

### Navigation

| Key | Description |
|-----|-------------|
| `Ctrl+h/j/k/l` | Navigate windows/tmux panes |
| `<leader>\|` | Split vertically |
| `<leader>-` | Split horizontally |

### Fuzzy Find (`<leader>f`)

| Key | Description |
|-----|-------------|
| `<leader>ff` | Find files |
| `<leader>fF` | Find files (include hidden) |
| `<leader>fg` | Live grep |
| `<leader>fG` | Live grep (include hidden) |
| `<leader>fb` | Buffers |
| `<leader>fh` | Help tags |
| `<leader>fd` | Diagnostics |

### LSP (`<leader>l`)

| Key | Description |
|-----|-------------|
| `<leader>ld` | Go to definition |
| `<leader>lr` | References |
| `<leader>li` | Implementations |
| `<leader>lt` | Type definitions |
| `<leader>la` | Code actions |
| `<leader>ln` | Rename |
| `<leader>lf` | Format |
| `<leader>lsd` | Document symbols |
| `<leader>lsw` | Workspace symbols |

### Git (`<leader>g`)

| Key | Description |
|-----|-------------|
| `<leader>gb` | Blame |
| `<leader>gc` | Commit |
| `<leader>gd` | Diff |
| `<leader>gh` | File history |
| `<leader>gn/gp` | Next/previous hunk |
| `<leader>gsh` | Stage hunk |
| `<leader>gsb` | Stage buffer |
| `<leader>grh` | Reset hunk |
| `<leader>grb` | Reset buffer |

### File Tree (`<leader>t`)

| Key | Description |
|-----|-------------|
| `<leader>tt` | Toggle tree |
| `<leader>tf` | Find current file |
| `<leader>tc` | Collapse tree |

### Diagnostics (`<leader>d`)

| Key | Description |
|-----|-------------|
| `<leader>dh` | Hover diagnostic |
| `<leader>dn` | Next diagnostic |
| `<leader>dp` | Previous diagnostic |

## Requirements

- Neovim >= 0.10
- Git
- A [Nerd Font](https://www.nerdfonts.com/)
- [fzf](https://github.com/junegunn/fzf)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [fd](https://github.com/sharkdp/fd)
