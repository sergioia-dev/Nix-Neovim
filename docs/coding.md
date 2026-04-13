# Coding Support

This document describes the programming languages, LSPs, and formatters supported in this Neovim configuration.

## Supported Languages

| Language | LSP | Formatter |
|----------|-----|-----------|
| JavaScript/TypeScript | typescript-language-server | biome |
| Lua | lua-language-server | stylua |
| CSS | vscode-css-languageserver | biome |
| Java | jdt-language-server + jdtls | jdtls |
| Bash | bash-language-server | - |
| YAML | yaml-language-server | biome |
| Nix | nixd | alejandra |
| Python | pyright | black |
| Rust | rust-analyzer | rustfmt |
| Dart/Flutter | dartls | dart |

---

## Language Servers (LSP)

### TypeScript/JavaScript
- **Server**: `typescript-language-server`
- **Features**: Completions, diagnostics, code actions, hover

### Lua
- **Server**: `lua-language-server`
- **Config**: See [lua.lua](../configuration/lua/lsp/lua.lua)

### CSS
- **Server**: `vscode-css-languageserver`
- **Features**: Completions, diagnostics

### Java
- **Server**: `jdt-language-server` + `nvim-jdtls`
- **Features**: Debugging, code actions, refactoring

### Bash
- **Server**: `bash-language-server`
- **Features**:Linting, diagnostics

### YAML
- **Server**: `yaml-language-server`
- **Features**: Validation, completions

### Nix
- **Server**: `nixd`
- **Config**: See [nix.lua](../configuration/lua/lsp/nix.lua)

### Python
- **Server**: `pyright`
- **Features**: Type checking, completions, refactoring

### Rust
- **Server**: `rust-analyzer`
- **Features**: Debugging, LSP, tasks (via rustaceanvim)

### Dart/Flutter
- **Server**: `dartls`
- **Features**: Analysis, completions

---

## Formatters

| Language | Formatter | Config |
|----------|----------|--------|
| JavaScript/TypeScript | biome | [formatting.lua](../configuration/lua/lsp/formatting.lua) |
| Lua | stylua | [lua.lua](../configuration/lua/lsp/lua.lua) |
| Nix | alejandra | [nix.lua](../configuration/lua/lsp/nix.lua) |
| Python | black | [python.lua](../configuration/lua/lsp/python.lua) |
| Rust | rustfmt | Built-in |

---

## Linting

Linters run alongside LSP using `nvim-lint`:

| Language | Linter |
|----------|--------|
| Lua | selene |
| Nix | statix |
| Python | ruff |

See [linting.lua](../configuration/lua/lsp/linting.lua) for configuration.


