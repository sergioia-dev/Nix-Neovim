local M = {}

function M.setup()
	require("lsp.nix")
	require("lsp.bash")
	require("lsp.docker")
	require("lsp.formatting")
	require("lsp.linting")
end

M.setup()

return M
