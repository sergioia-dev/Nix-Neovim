local M = {}

function M.setup()
	-- Load all configuration parts
	require("plugins.gitsigns")
	require("plugins.cmp")
	require("plugins.luasnip")
	require("plugins.tmux")
	require("plugins.telescope")
	require("plugins.lazydocker")
	require("plugins.kulala")
	require("plugins.lualine")
	require("plugins.noice")
	require("plugins.notify")
	require("plugins.smear-cursor")
	require("plugins.snacks")
	require("plugins.opencode")
	require("plugins.vimtex")
	require("plugins.auto-pairs")
end

local todo_float = require("plugins.todofloat")

todo_float.setup({
	target_file = "~/.todo.md",
})

M.setup()

return M
