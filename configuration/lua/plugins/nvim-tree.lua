vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
	view = {
		-- side = "right",
		float = {
			enable = true, -- Enables the floating window mode
			quit_on_focus_loss = true, -- Optional: closes the tree if you click away
			open_win_config = function()
				-- Adjust these percentages for window size
				local width_ratio = 0.30
				local height_ratio = 0.80

				local screen_w = vim.opt.columns:get()
				local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()

				local window_w = math.floor(screen_w * width_ratio)
				local window_h = math.floor(screen_h * height_ratio)

				-- Calculate position for the right side
				local col = screen_w - window_w

				return {
					border = "single", -- "single", "double", "rounded", etc.
					relative = "editor",
					row = 1,
					col = col,
					width = window_w,
					height = window_h,
				}
			end,
		},
	},
})
