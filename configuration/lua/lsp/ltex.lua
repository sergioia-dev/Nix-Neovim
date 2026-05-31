-- Remove the global require("ltex_extra").setup({}) from here

vim.lsp.config("ltex", {
	filetypes = {
		"text",
		"markdown",
		"tex",
		"bib",
		"gitcommit",
		"asciidoc",
		"rmd",
		"org",
	},
	settings = {
		ltex = {
			language = "auto",
		},
	},
	-- Initialize ltex_extra ONLY when the server attaches
	on_attach = function(client, bufnr)
		require("ltex_extra").setup({
			load_langs = { "en-US" }, -- Explicitly define languages (default often fails)
			path = vim.fn.expand("~") .. "/.local/share/ltex", -- Or use ".ltex" for project-local
			init_check = true,
		})
	end,
})

vim.lsp.enable("ltex")
