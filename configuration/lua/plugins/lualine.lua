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

			-- 3. Custom SSH Connection Icon Component
			{
				function()
					-- Checks the host environment variables for an SSH session
					local is_ssh = os.getenv("SSH_CLIENT") ~= nil or os.getenv("SSH_TTY") ~= nil
					if is_ssh then
						return "   [SSH][sia]" -- Uses a global network icon from Nerd Fonts
					else
						return ""
					end
				end,
				color = { fg = "#ff9e64", gui = "bold" }, -- Customizes text color to Catppuccin Orange
			},
		},
	},
})
