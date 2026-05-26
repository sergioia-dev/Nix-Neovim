vim.lsp.config("dartls", {
	cmd = { "dart", "language-server", "--protocol=lsp" },
	filetypes = { "dart" },
})

if vim.fn.executable("dart") == 1 or vim.fn.executable("flutter") == 1 then
	vim.lsp.enable("dartls")
end
