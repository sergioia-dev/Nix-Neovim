local M = {}

function M.setup()
	-- Load all configuration parts
	require("plugins.gitsigns")
	require("plugins.cmp")
	require("plugins.luasnip")
	require("plugins.markdown-preview")
	require("plugins.tmux")
	require("plugins.telescope")
	require("plugins.flutter-tools")
	-- require("plugins.kulala")
end

M.setup()

return M
