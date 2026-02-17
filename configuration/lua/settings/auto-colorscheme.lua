function UpdateThemeFromGnome()
	if not vim.fn.executable("gsettings") then
		return
	end

	local color_scheme = vim.fn.system("gsettings get org.gnome.desktop.interface color-scheme")
	color_scheme = string.gsub(color_scheme, "\n", "")
	color_scheme = string.gsub(color_scheme, "'", "")

	if color_scheme == "prefer-dark" then
		vim.o.background = "dark"
	else
		vim.o.background = "light"
	end

	-- Apply your colorscheme here based on background
	if vim.o.background == "dark" then
		vim.cmd("colorscheme catppuccin-mocha")
	else
		vim.cmd("colorscheme catppuccin-latte")
	end
end

UpdateThemeFromGnome()
