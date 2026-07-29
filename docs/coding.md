# Coding Support

This document describes the programming languages, LSPs, and formatters supported in this Neovim configuration.

## Supported Languages

| Language | LSP | Formatter |
|----------|-----|-----------|
| JavaScript/TypeScript | typescript-go (tsgo) | biome |
| Lua | lua-language-server | stylua |
| CSS | vscode-css-languageserver | biome |
| Java | jdt-language-server + jdtls | jdtls |
| Bash | bash-language-server | shfmt |
| JSON | jsonls | biome |
| YAML | _(not configured)_ | biome |
| Nix | nixd | nixfmt |
| Python | pyright | black |
| Rust | rust-analyzer | rustfmt |
| Dart/Flutter | dartls | dart |

---

## Language Servers (LSP)

### TypeScript/JavaScript
- **Server**: `typescript-go` (`tsgo` — a Go-based TypeScript LSP)
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
- **Requirements**:
  - `JAVA_HOME` must be set in your environment
  - For Lombok support, set `LOMBOK_JAR` environment variable to lombok.jar path:
    ```bash
    export LOMBOK_JAR=/path/to/lombok.jar
    ```
    Or in Nix:
    ```nix
    environment.sessionVariables.LOMBOK_JAR = "${pkgs.lombok}/share/java/lombok.jar";
    ```

### Bash
- **Server**: `bash-language-server`
- **Features**:Linting, diagnostics

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
| Nix | nixfmt | [nix.lua](../configuration/lua/lsp/nix.lua) |
| Python | black | [python.lua](../configuration/lua/lsp/python.lua) |
| Rust | rustfmt | Built-in |

---

## Linting

Linters run alongside LSP using `nvim-lint`:

| Language | Linter |
|----------|--------|
| JavaScript / TypeScript | biome |
| Python | pylint |
| Nix | nix (built-in `nix-instantiate --parse`) |

See [linting.lua](../configuration/lua/lsp/linting.lua) for configuration.


