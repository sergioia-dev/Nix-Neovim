local M = {}

function M.setup()
	-- Load all configuration parts
	require("plugins.gitsigns")
	require("plugins.cmp")
	require("plugins.luasnip")
	require("plugins.markdown-preview")
	require("plugins.tmux")
	require("plugins.telescope")
	require("plugins.lazydocker")
	require("plugins.kulala")
	require("plugins.lualine")
	require("plugins.noice")
	require("plugins.notify")
	require("plugins.smear-cursor")
end

M.setup()

return M
