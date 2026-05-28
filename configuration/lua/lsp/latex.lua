vim.g.vimtex_compiler_method = "tectonic"

-- Auto-run VimtexCompile when saving a .tex file
vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = "*.tex",
	callback = function()
		vim.cmd("VimtexCompile")
	end,
	desc = "Automatically compile LaTeX with vimtex on save",
})
