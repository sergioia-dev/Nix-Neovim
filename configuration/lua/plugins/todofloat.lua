local M = {}

local floating_win = nil

local function expand_path(path)
	if path:sub(1, 1) == "~" then
		return os.getenv("HOME") .. path:sub(2)
	end
	return path
end

local function win_config()
	local width = math.min(math.floor(vim.o.columns * 0.8), 128)
	local height = math.floor(vim.o.lines * 0.8)

	return {
		relative = "editor",
		width = width,
		height = height,
		col = math.floor((vim.o.columns - width) / 2),
		row = math.floor((vim.o.lines - height) / 2),
		border = "single",
	}
end

local function open_floating_file(target_file)
	if floating_win and vim.api.nvim_win_is_valid(floating_win) then
		vim.cmd("w")
		vim.api.nvim_win_close(floating_win, true)
		floating_win = nil
		return
	end

	local expanded_path = expand_path(target_file)
	if vim.fn.filereadable(expanded_path) == 0 then
		local parent_dir = vim.fn.fnamemodify(expanded_path, ":h")
		if vim.fn.isdirectory(parent_dir) == 0 then
			vim.fn.mkdir(parent_dir, "p")
		end
		vim.fn.writefile({ "" }, expanded_path)
	end

	local buf = vim.fn.bufnr(expanded_path, true)

	if buf == -1 then
		buf = vim.api.nvim_create_buf(false, false)
		vim.api.nvim_buf_set_name(buf, expanded_path)
	end

	vim.bo[buf].swapfile = false
	vim.bo[buf].filetype = "markdown"

	floating_win = vim.api.nvim_open_win(buf, true, win_config())
end

local function setup_checkbox_toggle()
	local augroup = vim.api.nvim_create_augroup("CheckboxToggle", { clear = true })
	vim.api.nvim_create_autocmd("FileType", {
		group = augroup,
		pattern = "markdown",
		callback = function()
			vim.keymap.set("n", "<CR>", function()
				local line = vim.api.nvim_get_current_line()
				if line:match("^- %[ %]") then
					vim.api.nvim_set_current_line((line:gsub("^- %[ %]", "- [x]", 1)))
				elseif line:match("^- %[x%]") then
					vim.api.nvim_set_current_line((line:gsub("^- %[x%]", "- [ ]", 1)))
				end
			end, { buffer = true, desc = "Toggle markdown checkbox" })
		end,
	})
end

local function setup_user_commands(opts)
	local target_file = opts.target_file or "todo.md"
	vim.api.nvim_create_user_command("Td", function()
		open_floating_file(target_file)
	end, {})
end

M.setup = function(opts)
	setup_user_commands(opts)
	setup_checkbox_toggle()
end

return M
