# Keymaps Reference

This document explains the keybindings configured in this Neovim setup.

## Leader Key

```vim
vim.g.mapleader = " "
vim.g.maplocalleader = " "
```

All custom keybindings use `<Space>` as the leader key.

---

## Navigation

| Keybinding | Command | Description |
|-----------|---------|-------------|
| `<leader>fm` | `:NvimTreeToggle` | Open Explorer |
| `<leader>ff` | `:Telescope find_files` | Find files in project |
| `<leader>fa` | `:Telescope live_grep theme=dropdown` | Live grep |
| `<leader>fi` | `:Telescope current_buffer_fuzzy_find` | Live grep in current file |
| `<leader>fh` | `:Telescope help_tags` | Search documentation |
| `<leader>ft` | `:TodoTelescope` | Find Todo comments |
| `<Tab>` | `:Telescope marks` | Open marks list |

---

## LSP (Language Server)

| Keybinding | Command | Description |
|-----------|---------|-------------|
| `<leader>cr` | `:Lspsaga finder` | Show the code references and implementations |
| `<leader>cR` | `:Lspsaga rename` | Code References (rename) |
| `<leader>ca` | `:Lspsaga code_action` | Show code actions |
| `<leader>co` | `:Lspsaga outline` | Code References (outline) |
| `K` | `:Lspsaga hover_doc` | Show documentation hover |
| `<leader>cf` | `:Telescope treesitter` | Find Functions, Variables and more |
| `<leader>ce` | `:Telescope diagnostics` | Code Diagnostics |
| `<leader>cq` | `:Telescope quickfix` | Quick Fix List |
| `<leader>cs` | `:lua vim.diagnostic.open_float()` | Show whole Code warning/error/suggestion |
| `<leader>ci` | `:Telescope lsp_implementations` | Code Definitions (implementations) |

---

## Git

| Keybinding | Command | Description |
|-----------|---------|-------------|
| `<leader>gg` | `:LazyGit` | Toggle LazyGit UI |
| `<leader>glb` | `:Gitsigns toggle_current_line_blame` | Toggle Line blames |
| `<leader>gb` | `:Git blame` | Open Git Blames |

---

## Docker / Podman

| Keybinding | Command | Description |
|-----------|---------|-------------|
| `<F2>` | `:LazyDocker` | Toggle LazyDocker (auto-detects podman or docker) |

> **Note**: The container engine is auto-detected at runtime. If `podman` is on `PATH` it is used; otherwise `docker`.

---

## Database

| Keybinding | Command | Description |
|-----------|---------|-------------|
| `<F1>` | `:DBUIToggle` | Toggle DBUI Sidebar |

---

## Pi Coding Agent

| Keybinding | Command | Description |
|-----------|---------|-------------|
| `<leader>pf` | `:PiSendFile` | Send current file buffer to pi |
| `<leader>ps` (normal) | `:PiSessions` | List pi sessions |
| `<leader>ps` (visual) | `:PiSendSelection` | Send visual selection to pi |
| `<leader>pb` | `:PiSendBuffer` | Send entire buffer to pi |
| `<leader>pi` | `:PiPing` | Ping the pi agent |

---

## LaTeX (vimtex)

| Keybinding | Command | Description |
|-----------|---------|-------------|
| `<leader>ll` | `:VimtexCompile` | Compile LaTeX document |
| `<leader>lv` | `:VimtexView` | View generated PDF |
| `<leader>lc` | `:VimtexClean` | Clean auxiliary files |
| `<leader>lq` | `:VimtexErrors` | Show LaTeX errors (quickfix) |
| `<leader>ls` | `:VimtexStop` | Stop compilation |
| `<leader>lp` | `:VimtexToggleMain` | Toggle main document |
| `<leader>lw` | `:VimtexCountWords` | Count words |
| `<leader>li` | `:VimtexInverseSearch` | Inverse search from PDF |
| `<leader>lt` | `:VimtexTocOpen` | Open table of contents |

---

## Editor Utilities

| Keybinding | Mode | Description |
|-----------|------|-------------|
| `<C-s>` | Normal | Save File |

---

## Quick Reference

| Key | Action |
|-----|--------|
| `<Space>` | Leader key |
| `<F1>` | Database UI |
| `<F2>` | Docker/Podman (LazyDocker) |
| `<C-s>` | Save |
| `<Tab>` | Telescope marks |
| `<leader>fm` | File explorer |
| `<leader>gg` | Git (LazyGit) |
| `K` | LSP hover documentation |
