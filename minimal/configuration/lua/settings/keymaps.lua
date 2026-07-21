vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap.set

-- Navigation
keymap("n", "<leader>fm", ":NvimTreeToggle<CR>", { desc = "Open Explorer", silent = true })
keymap("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Find files", silent = true })
keymap("n", "<leader>fa", ":Telescope live_grep theme=dropdown<CR>", { desc = "Live grep", silent = true })
keymap(
	"n",
	"<leader>fi",
	"<cmd>:lua require'telescope.builtin'.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown({}))<CR>",
	{ desc = "Live grep in Current file", silent = true }
)
keymap("n", "<leader>fh", ":Telescope help_tags<CR>", { desc = "Fuzzy search Documentation", silent = true })
keymap(
	"n",
	"<Tab>",
	":Telescope marks theme=ivy<CR>",
	{ desc = "Open telescope marks", silent = true }
)

-- LSP
keymap("n", "<leader>cr", "<cmd>:lua vim.lsp.buf.references()<CR>", { desc = "Show code references", silent = true })
keymap("n", "<leader>cR", "<cmd>:lua vim.lsp.buf.rename()<CR>", { desc = "Rename symbol", silent = true })
keymap("n", "K", "<cmd>:lua vim.lsp.buf.hover()<CR>", { desc = "Documentation Hover", silent = true })
keymap(
	"n",
	"<leader>cf",
	"<cmd>:lua require'telescope.builtin'.treesitter(require('telescope.themes').get_ivy({}))<CR>",
	{ desc = "Find Functions, Variables and more", silent = true }
)
keymap("n", "<leader>ca", "<cmd>:lua vim.lsp.buf.code_action()<CR>", { desc = "Code Actions", silent = true })
keymap(
	"n",
	"<leader>ce",
	"<cmd>:lua require('telescope.builtin').diagnostics(require('telescope.themes').get_ivy({}))<CR>",
	{ desc = "Code Diagnostics", silent = true }
)
keymap(
	"n",
	"<leader>cq",
	"<cmd>:lua require'telescope.builtin'.quickfix(require('telescope.themes').get_ivy({}))<CR>",
	{ desc = "Quick Fix List", silent = true }
)
keymap(
	"n",
	"<leader>cs",
	"<cmd>:lua vim.diagnostic.open_float()<CR>",
	{ desc = "Show whole Code warning/error/suggestion", silent = true }
)
keymap(
	"n",
	"<leader>ci",
	"<cmd>:lua require('telescope.builtin').lsp_implementations(require('telescope.themes').get_cursor({}))<CR>",
	{ desc = "Code Implementations", silent = true }
)

-- Database
keymap("n", "<F1>", "<cmd>:DBUIToggle<CR>", { desc = "Toggle DBUI Sidebar", silent = true })

keymap("n", "<C-s>", ":w<CR>", { desc = "Save File", silent = true })
