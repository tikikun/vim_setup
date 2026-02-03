# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a Neovim configuration based on [Kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim). It uses [lazy.nvim](https://github.com/folke/lazy.nvim) for plugin management.

## Project Structure

- `init.lua` - Main entry point: configures plugins, options, keybindings, LSP, and completion
- `lua/custom/plugins/` - Custom plugin configurations
- `lua/custom/utils/` - Utility modules for LSP and image paste functionality

## Key Plugins

- **LSP**: `neovim/nvim-lspconfig` with `mason.nvim`/`mason-lspconfig.nvim`
- **Completion**: `hrsh7th/nvim-cmp` with LuaSnip
- **Fuzzy Finder**: `nvim-telescope/telescope.nvim`
- **File Tree**: `nvim-neo-tree/neo-tree.nvim`
- **Syntax**: `nvim-treesitter/nvim-treesitter`
- **Git**: `lewis6991/gitsigns.nvim`, `tpope/vim-fugitive`
- **Symbols Outline**: `hedyhli/outline.nvim`

## LSP Servers

- `pyright` - Python (installed via Mason)
- `lua_ls` - Lua (installed via Mason)
- `clangd` - C/C++ (configured in `lua/custom/plugins/non-mason-lsp-configs.lua`)

## Important Keybindings

| Binding | Description |
|---------|-------------|
| `<Space>` | Leader key |
| `<leader>s` | Search group (files, grep, diagnostics, etc.) |
| `<leader>ss` | Telescope builtin selector |
| `<leader>sg` | Live grep |
| `<leader>sG` | Live grep in git root (`:LiveGrepGitRoot`) |
| `<leader>gf` | Git files |
| `<leader>o` | Toggle symbols outline |
| `gd` | Go to definition |
| `gr` | Go to references |
| `K` | Hover documentation |
| `[d` / `]d` | Previous/next diagnostic |

## Custom Commands

- `:CopyImage <url>` - Download image from URL and insert markdown reference at `images/` directory
- `:LiveGrepGitRoot` - Search using Telescope from git root directory

## Python Virtual Environment

The configuration detects `$VIRTUAL_ENV` and prints an active environment message on startup. Use pyenv or `python -m venv` for environments.

## Development Notes

- The custom LSP `on_attach` handler is in `lua/custom/utils/lsp.lua` and is used by both Mason and non-Mason LSP configs
- Custom plugins are loaded via `lazy.nvim`'s `import = 'custom.plugins'` mechanism in `init.lua`