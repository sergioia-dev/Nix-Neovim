local M = {}

function M.setup()
	-- Load all configuration parts
	require("lsp.typescript")
	require("lsp.lua")
	require("lsp.rust")
	require("lsp.python")
	require("lsp.nix")
	require("lsp.java")
	require("lsp.dart")
	require("lsp.bash")
	require("lsp.css")
	require("lsp.sql")
	require("lsp.json")
	require("lsp.html")
	require("lsp.yaml")
	require("lsp.docker")
	require("lsp.formatting")
	require("lsp.linting")
	-- require("lsp.tailwindcss") enable only if delete tailwind-tools
end

M.setup()

return M
