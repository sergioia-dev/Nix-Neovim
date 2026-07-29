-- Set configuration for typescript language server
if vim.fn.executable("node") == 1 or vim.fn.executable("bun") == 1 or vim.fn.executable("deno") == 1 then
	vim.lsp.enable("tsgo")
end
