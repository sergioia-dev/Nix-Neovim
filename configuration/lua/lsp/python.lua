vim.lsp.config("pyright", {
  cmd = { "pyright-langserver", "--stdio" },
  filetypes = { "python" },
})

if vim.fn.executable("python") == 1 or vim.fn.executable("python3") == 1 then
  vim.lsp.enable("pyright")
end
