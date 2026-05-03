vim.lsp.config("nixd", {
  cmd = { "nixd" },
  filetypes = { "nix" },
  formatting = {
    command = { "nixfmt" },
  },
})

if vim.fn.executable("nix") == 1 then
  vim.lsp.enable("nixd")
end
