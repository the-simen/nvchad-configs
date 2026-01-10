local actions = require "telescope.actions"
local action_state = require "telescope.actions.state"

local function smart_select(prompt_bufnr)
  actions.select_default(prompt_bufnr) -- выбрать
  return true
end

return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        initial_mode = "normal",
        mappings = {
          i = {
            ["<C-j>"] = smart_select,
            ["<CR>"] = actions.select_default,
          },
          n = {
            ["<C-j>"] = smart_select,
            ["<CR>"] = actions.select_default,
          },
        },
      },
      pickers = {
        live_grep = {
          initial_mode = "insert",
        },
        find_files = {
          initial_mode = "insert",
        },
      },
    },
  },
}
