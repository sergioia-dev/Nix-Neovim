require("snacks").setup({
	input = { enable = true }, -- enhances require('opencode').ask()
	terminal = { enable = true, win = {
		style = "terminal",
		enter = false,
		bufhidden = "hide",
	} }, -- enhances require('opencode').ask()
	picker = {
		enable = true,
		actions = {
			opencode_send = function(...)
				return require("opencode").snacks_picker_send(...)
			end,
		},
		win = {
			input = {
				keys = {
					["<a-a>"] = { "opencode_send", mode = { "n", "i" } },
				},
			},
		},
	},
})
