require("conform").setup({
	formatters_by_ft = {

		lua = { "stylua", lsp_format = "fallback" },
		python = { "black", lsp_format = "fallback" },
		rust = { "rustfmt", lsp_format = "fallback" },
		javascript = { "biome", lsp_format = "fallback" },
		javascriptreact = { "biome", lsp_format = "fallback" },
		typescriptreact = { "biome", lsp_format = "fallback" },
		typescript = { "biome", lsp_format = "fallback" },
		html = { "biome", lsp_format = "fallback" },
		css = { "biome", lsp_format = "fallback" },
		json = { "biome", lsp_format = "fallback" },
		markdown = { "biome", lsp_format = "fallback" },
		nix = { "alejandra", lsp_format = "fallback" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},
})
