-- Set configuration for dart language server

vim.lsp.config("dartls", {
	cmd = { "dart", "language-server", "--protocol=lsp" },
	filetypes = { "dart" },
})

-- Enable Lua Language Server
vim.lsp.enable("dartls")
