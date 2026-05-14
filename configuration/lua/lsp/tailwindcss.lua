vim.lsp.config("tailwindcss", {
	cmd = { "tailwindcss-language-server", "--stdio" },
	filetypes = {
		"astro",
		"clojure",
		"htmldjango",
		"elixir",
		"eruby", -- vim ft
		"haml",
		"html",
		"htmlangular",
		"heex",
		"liquid",
		"markdown",
		"php",
		-- css
		"css",
		"less",
		"sass",
		"scss",
		"stylus",
		-- js
		"javascript",
		"javascriptreact",
		"rescript",
		"typescript",
		"typescriptreact",
		-- mixed
		"vue",
		"svelte",
	},
})

if vim.fn.executable("tailwindcss") == 1 then
	vim.lsp.enable("tailwindcss")
end
