vim.g.vimtex_compiler_method = "latexmk"
vim.g.vimtex_compiler_latexmk = {
	options = { "-pdf", "-pdflua" },
	continuous = 1, -- uses lualatex
}

vim.g.vimtex_quickfix_mode = 2 -- show quickfix window on errors
vim.g.vimtex_quickfix_autojump = "always" -- jump to first error if any
