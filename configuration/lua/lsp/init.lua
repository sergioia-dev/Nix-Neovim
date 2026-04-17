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
	require("lsp.formatting")
	require("lsp.linting")
end

M.setup()

return M
