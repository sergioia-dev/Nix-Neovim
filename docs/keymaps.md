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
|----------|---------|-----------|
| `<leader>ff` | Telescope find_files | Find files in project |
| `<leader>fa` | Telescope live_grep | Live grep search |
| `<leader>fi` | Telescope current_buffer_fuzzy_find | Live grep in current file |
| `<leader>fh` | Telescope help_tags | Search documentation |
| `<leader>dn` | Telescope manix | Search Nix packages |

---

## LSP (Language Server)

| Keybinding | Command | Description |
|----------|---------|-----------|
| `<leader>cr` | Telescope lsp_references | Find code references |
| `<leader>cf` | Telescope treesitter | Find functions/variables |
| `<leader>ca` | LSP code_action | Show code actions |
| `<leader>ce` | Telescope diagnostics | Show diagnostics |
| `<leader>cq` | Telescope quickfix | Open quickfix list |
| `<leader>cs` | diagnostic.open_float | Show code warnings/errors |
| `<leader>ci` | Telescope lsp_implementations | Find code definitions |

---

## Git

| Keybinding | Command | Description |
|----------|---------|-----------|
| `<F2>` | LazyGit | Open LazyGit UI |
| `<leader>glb` | Gitsigns toggle_current_line_blame | Toggle line blame |
| `<leader>gb` | Git blame | Open git blame |

---

## Docker/Containers

| Keybinding | Command | Description |
|----------|---------|-----------|
| `<F4>` | LazyDocker (auto-detect) | Toggle LazyDocker UI (podman or docker) |

> **Note**: The container engine (podman/docker) is auto-detected at runtime. If podman is available, it will be used; otherwise, docker will be used.

---

## Database

| Keybinding | Command | Description |
|----------|---------|-----------|
| `<F3>` | DBUIToggle | Toggle database UI sidebar |

---

## Editor Utilities

| Keybinding | Mode | Description |
|-----------|------|-----------|
| `<C-s>` | Normal | Save file |
| `<Tab>` | Normal | Open telescope marks |
| `<F1>` | Normal | Toggle file explorer |
| `<leader>olae` | Normal | Enable English spell checker |
| `<leader>olas` | Normal | Enable Spanish spell checker |
| `<leader>r` | Visual | Rename variable |

---

## Auto-Pairs (Insert Mode)

| Keybinding | Result | Description |
|-----------|-------|-----------|
| `` ` `` | `` `|` `` | Backtick pair |
| `'` | `''<left>` | Single quote pair |
| `"` | `""<left>` | Double quote pair |
| `(` | `()`<left>` | Parentheses pair |
| `{` | `{}`<left>` | Brace pair |
| `[]` | `[]`<left>` | Bracket pair |
| `/*` | `/**/`<left><left>` | Block comment |

---

## Quick Reference

| Key | Action |
|-----|-------|
| `<Space>` | Leader key |
| `<F1>` | File explorer |
| `<F2>` | Git (LazyGit) |
| `<F3>` | Database UI |
| `<F4>` | Docker UI |
| `<C-s>` | Save |
| `<Tab>` | Marks |
