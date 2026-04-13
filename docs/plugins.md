# Plugins Reference

This document describes all plugins installed in this Neovim configuration.

## Fuzzy Search

| Plugin | Description |
|--------|------------|
| telescope-nvim | Fuzzy finder for files, live grep, help tags, and more |
| plenary-nvim | Utility library required by telescope |
| which-key-nvim | Displays available keybindings in a popup menu |

## File Tree

| Plugin | Description |
|--------|------------|
| neo-tree-nvim | Floating file explorer with git integration |
| nvim-web-devicons | File type icons for UI |

## Git

| Plugin | Description |
|--------|------------|
| gitsigns-nvim | Git signs in the gutter (added/changed/deleted) |
| lazygit-nvim | Full git TUI inside Neovim |
| lazydocker-nvim | Docker management TUI inside Neovim |

## Completion

| Plugin | Description |
|--------|------------|
| nvim-cmp | Auto-completion engine |
| cmp-nvim-lsp | LSP source for cmp |
| cmp_luasnip | Snippets source for cmp |
| cmp-path | Path source for cmp |
| lspkind-nvim | VS Code-like icons for completion |
| luasnip | Snippet engine |
| friendly-snippets | Pre-built snippet collection |

## LSP (Language Server Protocol)

| Plugin | Description |
|--------|------------|
| nvim-lspconfig | LSP client configuration |
| conform-nvim | Code formatting on save |
| nvim-lint | Run linters alongside LSP |

## Database

| Plugin | Description |
|--------|------------|
| vim-dadbod | Execute SQL queries (`:DB` command) |
| vim-dadbod-ui | Interactive database browser |

## Colorscheme & UI

| Plugin | Description |
|--------|------------|
| catppuccin-nvim | Mocha colorscheme (latte, frappe, macchiato, mocha) |
| noice-nvim | Modern notification UI |
| nvim-notify | Notification popup library |
| smear-cursor-nvim | Cursor follows mouse position |
| dressing-nvim | Improve built-in vim UI (selects, etc.) |
| render-markdown-nvim | Render markdown in buffers |

## Navigation & Motion

| Plugin | Description |
|--------|------------|
| telescope-nvim | Fuzzy finder |
| neo-tree-nvim | File explorer |
| tmux-nvim | Tmux integration |

## Language-Specific

| Plugin | Language | Description |
|--------|----------|------------|
| rustaceanvim | Rust | Rust IDE support (debugging, LSP, tasks) |
| nvim-jdtls | Java | Java LSP support |
| vim-flutter | Dart/Flutter | Flutter commands and debugging |
| nix-develop-nvim | Nix | Nix development tools |

## Utilities

| Plugin | Description |
|--------|------------|
| nvim-treesitter | Syntax highlighting with Treesitter |
| lualine-nvim | Status line |
| todo-comments-nvim | Highlight TODO/FIXME comments |

## Additional Plugins

| Plugin | Description |
|--------|------------|
| kulala-nvim | HTTP client for REST APIs |
| markdown-preview-nvim | Preview markdown files |
| vim-dadbod | Database SQL execution |
| nui-nvim | UI component library |

> **Note**: External tools (git, lazygit, lazydocker, etc.) are managed by the Nix flake. |