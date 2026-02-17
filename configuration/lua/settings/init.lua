-- Main configuration module
local M = {}

function M.setup()
	-- Load all configuration parts
	require("settings.options")
	require("settings.keymaps")
	require("settings.auto-colorscheme")
end

M.setup()

return M
