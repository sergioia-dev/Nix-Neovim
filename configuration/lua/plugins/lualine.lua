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
		-- 3. The SSH component pinned to the absolute right side
		lualine_z = {
			{
				function()
					-- Checks the host environment variables for an SSH session
					local is_ssh = os.getenv("SSH_CLIENT") ~= nil or os.getenv("SSH_TTY") ~= nil
					if is_ssh then
						return "SSH" -- Shows only the icon and the word SSH
					else
						return ""
					end
				end,
				-- Black text on an Orange background
				color = { fg = "#000000", bg = "#ff9e64", gui = "bold" },
			},
		},
	},
})
