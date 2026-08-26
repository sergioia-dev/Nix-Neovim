vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.scrolloff = 999
vim.opt.sidescrolloff = 999
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.cmd("set clipboard+=unnamedplus")
vim.cmd("colorscheme catppuccin-mocha")

local config = {
	virtual_text = true,
	update_in_insert = true,
	underline = true,
	severity_sort = true,
}

vim.diagnostic.config(config)

-- Enable autoread
vim.o.autoread = true
