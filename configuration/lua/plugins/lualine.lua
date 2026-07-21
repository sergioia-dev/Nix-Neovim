require("lualine").setup({
	sections = {
		lualine_a = {
			-- 1. Keep your default mode component
			"mode",

			-- 2. Add this custom macro recording component
			{
				function()
					local reg = vim.fn.reg_recording()
					if reg == "" then
						return ""
					end
					return "Recording " .. reg
				end,
				color = { fg = "#FFFFFF", gui = "bold" }, -- Customizes text color/styling
			},
		},
	},
})
