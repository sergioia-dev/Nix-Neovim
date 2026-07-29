# Plugins Reference

This document describes all plugins installed in this Neovim configuration.

## Fuzzy Search & Navigation

| Plugin | Description |
|--------|------------|
| telescope-nvim | Fuzzy finder for files, live grep, help tags, and more |
| plenary-nvim | Utility library required by telescope |
| which-key-nvim | Displays available keybindings in a popup (bundled but not explicitly configured) |

## File Tree

| Plugin | Description |
|--------|------------|
| nvim-tree-lua | Floating file explorer with `:NvimTreeToggle` |
| nvim-web-devicons | File type icons for UI |

## Git

| Plugin | Description |
|--------|------------|
| gitsigns-nvim | Git signs in the gutter (added/changed/deleted) |
| lazygit-nvim | Full git TUI inside Neovim (`:LazyGit`) |

## Completion

| Plugin | Description |
|--------|------------|
| nvim-cmp | Auto-completion engine |
| cmp-nvim-lsp | LSP source for cmp |
| cmp_luasnip | Snippets source for cmp |
| cmp-path | Path source for cmp |
| cmp-buffer | Buffer source for cmp |
| lspkind-nvim | VS Code-like icons for completion |
| luasnip | Snippet engine |
| friendly-snippets | Pre-built snippet collection |

## LSP (Language Server Protocol)

| Plugin | Description |
|--------|------------|
| nvim-lspconfig _(bundled but unused — using Neovim 0.10+ native `vim.lsp.enable`)_ | — |
| conform-nvim _(bundled but not explicitly configured)_ | Code formatting |
| nvim-lint | Run linters alongside LSP |
| lspsaga-nvim | Code actions, hover docs, finder, rename, outline |
| nvim-jdtls | Java LSP support |
| rustaceanvim | Rust IDE support (debugging, LSP, tasks) |

## Database

| Plugin | Description |
|--------|------------|
| vim-dadbod | Execute SQL queries (`:DB` command) |
| vim-dadbod-ui | Interactive database browser (`:DBUIToggle`) |
| vim-dadbod-completion | SQL completions via nvim-cmp |

## Docker / Containers

| Plugin | Description |
|--------|------------|
| lazydocker-nvim | Docker/Podman management TUI inside Neovim (`:LazyDocker`) |

## Colorscheme & UI

| Plugin | Description |
|--------|------------|
| catppuccin-nvim | Mocha colorscheme (latte, frappe, macchiato, mocha) |
| noice-nvim | Modern command-line / notification UI |
| nvim-notify | Notification popup library |
| smear-cursor-nvim | Smooth cursor animation |
| dressing-nvim | Improved vim.ui (select, input) |
| auto-dark-mode-nvim | Auto-switch catppuccin-mocha / catppuccin-latte based on system |

## Navigation & Motion

| Plugin | Description |
|--------|------------|
| telescope-nvim | Fuzzy finder |
| nvim-tree-lua | File explorer |
| tmux-nvim | Tmux pane/window/resize integration |

## Language-Specific

| Plugin | Language | Description |
|--------|----------|------------|
| rustaceanvim | Rust | Rust IDE support (debugging, LSP, tasks) |
| nvim-jdtls | Java | Java LSP support |
| flutter-tools-nvim | Dart/Flutter | Flutter commands and debugging |
| nix-develop-nvim | Nix | `:NixDevelop` helper |

## Utilities

| Plugin | Description |
|--------|------------|
| nvim-treesitter | Syntax highlighting with Treesitter |
| lualine-nvim | Status line with macro-recording indicator |
| todo-comments-nvim | Highlight TODO/FIXME/HACK comments |

## REST Client

| Plugin | Description |
|--------|------------|
| kulala-nvim | HTTP client for REST APIs (`.http` / `.rest` files) |

## Markdown

| Plugin | Description |
|--------|------------|
| render-markdown-nvim | Render markdown in buffers |

## Pi Coding Agent

| Plugin | Description |
|--------|------------|
| pi-nvim | Bridge between the pi coding agent and Neovim (`:PiSendFile`, `:PiSendSelection`, etc.) |

## UI Component Libraries

| Plugin | Description |
|--------|------------|
| nui-nvim | Generic UI component library (dependency) |

> **Note**: External tools (git, ripgrep, lazygit, lazydocker, jq, lldb, etc.) are managed by the Nix flake as runtime dependencies. |