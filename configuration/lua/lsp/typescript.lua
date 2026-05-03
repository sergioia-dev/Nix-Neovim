-- Set configuration for typescript language server
vim.lsp.config("ts_ls", {
	cmd = { "typescript-language-server", "--stdio" },
	filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
})

if vim.fn.executable("node") == 1 or vim.fn.executable("bun") == 1 or vim.fn.executable("deno") == 1 then
	vim.lsp.enable("ts_ls")
end
