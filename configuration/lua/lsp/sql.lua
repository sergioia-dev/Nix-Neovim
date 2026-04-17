vim.lsp.config("sqlls", {
	cmd = { "sqls" },
	filetypes = { "sql" },
})
vim.lsp.enable("sqlls")
