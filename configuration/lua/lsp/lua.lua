
-- Set configuration for typescript language server
vim.lsp.config('lua_ls', {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
})

if vim.fn.executable("lua") == 1 or vim.fn.executable("luajit") == 1 then
  vim.lsp.enable('lua_ls')
end
