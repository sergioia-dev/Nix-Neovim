vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.scrolloff = 999
vim.opt.sidescrolloff = 999
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.cmd("colorscheme catppuccin-mocha")
vim.cmd("set conceallevel=2")
vim.cmd("set clipboard+=unnamedplus")

local config = {
	virtual_text = true,
	update_in_insert = true,
	underline = true,
	severity_sort = true,
}

vim.diagnostic.config(config)

-- Enable autoread
vim.o.autoread = true

-- Trigger checktime on focus gain or buffer entry
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold", "CursorHoldI" }, {
	pattern = "*",
	command = "if mode() != 'c' | checktime | endif",
})

-- Show a notification when a file is reloaded
vim.api.nvim_create_autocmd({ "FileChangedShellPost" }, {
	pattern = "*",
	command = "echohl WarningMsg | echo 'Buffer reloaded' | echohl None",
})

-- Reset mark on each Reset
vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		vim.cmd("delmarks A-Z0-9")
	end,
})
