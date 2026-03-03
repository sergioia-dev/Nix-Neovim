require("conform").setup({
	formatters_by_ft = {

		lua = { "stylua", lsp_format = "fallback" },
		python = { "black", lsp_format = "fallback" },
		rust = { "rustfmt", lsp_format = "fallback" },
		javascript = { "prettier", lsp_format = "fallback" },
		javascriptreact = { "prettier", lsp_format = "fallback" },
		typescriptreact = { "prettier", lsp_format = "fallback" },
		typescript = { "prettier", lsp_format = "fallback" },
		html = { "prettier", lsp_format = "fallback" },
		css = { "prettier", lsp_format = "fallback" },
		json = { "prettier", lsp_format = "fallback" },
		yaml = { "prettier", lsp_format = "fallback" },
		markdown = { "prettier", lsp_format = "fallback" },
		nix = { "alejandra", lsp_format = "fallback" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},
})
