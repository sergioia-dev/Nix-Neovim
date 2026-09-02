local M = {}

-- DBUI is a Vimscript plugin and does not expose a Lua API for state.
-- Detect its window by filetype instead.
local function is_dbui_open()
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    local buf = vim.api.nvim_win_get_buf(win)
    if vim.bo[buf].filetype == "dbui" then
      return true
    end
  end
  return false
end

local function is_nvim_tree_open()
  local ok, api = pcall(require, "nvim-tree.api")
  if not ok then
    return false
  end
  return api.tree.is_visible() == true
end

-- Called by <leader>fm. If DBUI is the active sidebar, toggle it instead of nvim-tree.
function M.toggle_explorer()
  if is_dbui_open() then
    vim.cmd("DBUIToggle")
  end
  if is_nvim_tree_open() then
    vim.cmd("NvimTreeClose")
  else
    vim.cmd("NvimTreeToggle")
  end
end

-- Called by <F1>. Always closes nvim-tree so the two sidebars never coexist.
function M.toggle_dbui()
  if is_nvim_tree_open() then
    vim.cmd("NvimTreeClose")
  end
  vim.cmd("DBUIToggle")
end

return M
