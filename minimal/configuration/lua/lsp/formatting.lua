require("conform").setup({
	formatters_by_ft = {
		nix = { "nixfmt", lsp_format = "fallback" },
		bash = { "shfmt", lsp_format = "fallback" },
	},
	format_on_save = true,
})
