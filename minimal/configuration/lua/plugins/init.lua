local M = {}

function M.setup()
	require("plugins.cmp")
	require("plugins.luasnip")
	require("plugins.telescope")
	require("plugins.nvim-tree")
	require("plugins.vimdadbod")
	require("plugins.auto-pairs")
end

M.setup()

return M
