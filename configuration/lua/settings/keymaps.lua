vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap.set

-- Navigation
keymap("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Find files", silent = true })
keymap("n", "<leader>fa", ":Telescope live_grep theme=dropdown<CR>", { desc = "Live grep", silent = true })
keymap(
	"n",
	"<leader>fi",
	"<cmd>:lua require'telescope.builtin'.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown({}))<CR>",
	{ desc = "Live grep in Current file", silent = true }
)
keymap("n", "<leader>fh", ":Telescope help_tags<CR>", { desc = "Fuzzy search Documentation", silent = true })

keymap("n", "<leader>dn", ":Telescope manix<CR>", { desc = "Fuzzy search Documentation of Nix", silent = true })

-- Lsp
keymap(
	"n",
	"<leader>cr",
	"<cmd>:lua require('telescope.builtin').lsp_references(require('telescope.themes').get_cursor({}))<CR>",
	{ desc = "Code References", silent = true }
)
keymap(
	"n",
	"<leader>cf",
	"<cmd>:lua require'telescope.builtin'.treesitter(require('telescope.themes').get_ivy({}))<CR>",
	{ desc = "Find Functions,Variables and more", silent = true }
)
keymap(
	"n",
	"<leader>ca",
	"<cmd>:lua vim.lsp.buf.code_action(require('telescope.themes').get_cursor({}))<CR>",
	{ desc = "Code Actions", silent = true }
)
keymap(
	"n",
	"<leader>ce",
	"<cmd>:lua require('telescope.builtin').diagnostics(require('telescope.themes').get_ivy({}))<CR>",
	{ desc = "Code Diagnostics", silent = true }
)
keymap(
	"n",
	"<leader>cq",
	"<cmd>:lua require'telescope.builtin'.quickfix(require('telescope.themes').get_ivy({})) <CR>",
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
	{ desc = "Code Definitions", silent = true }
)

-- Git
keymap(
	"n",
	"<leader>glb",
	"<cmd>:Gitsigns toggle_current_line_blame<CR>",
	{ desc = "Toggle Line blames", silent = true }
)
keymap("n", "<F2>", "<cmd>:LazyGit<CR>", { desc = "Toggle LazyGit UI", silent = true })
keymap("n", "<leader>gb", "<cmd>:Git blame<CR>", { desc = "Open Git Blames", silent = true })

-- Containers
local container_engine = vim.fn.executable("podman") == 1 and "podman" or "docker"
keymap(
	"n",
	"<F4>",
	"<cmd>:lua LazyDocker.toggle({engine = '" .. container_engine .. "'})<CR>",
	{ desc = "Toggle LazyDocker (" .. container_engine .. ")", silent = true }
)

-- DataBase
keymap("n", "<F3>", "<cmd>:DBUIToggle<CR>", { desc = "Toggle DBUI Sidebar", silent = true })

-- Others
keymap("i", "`", "``<left>")
keymap("i", "'", "''<left>")
keymap("i", '"', '""<left>')
keymap("i", "(", "()<left>")
keymap("i", "{", "{}<left>")
keymap("i", "[", "[]<left>")

keymap("i", "/*", "/**/<left><left>")
keymap("n", "<C-s>", ":w<CR>", { desc = "Save File", silent = true })
keymap("n", "<Tab>", ":Telescope marks theme=ivy<CR>", { desc = "Open telescope marks", silent = true })
keymap("n", "<F1>", ":Neotree toggle right<CR>", { desc = "Open Explorer", silent = true })
keymap(
	"n",
	"<leader>olae",
	"<cmd>setlocal spell spelllang=en<CR>",
	{ desc = "Active  Language Spell Checker to English" }
)
keymap(
	"n",
	"<leader>olas",
	"<cmd>setlocal spell spelllang=es<CR>",
	{ desc = "Active  Language Spell Checker to Spanish" }
)
keymap("v", "<leader>r", '"hy:lua vim.lsp.buf.rename()<CR>', { desc = "rename a variable or whatever", silent = true })
