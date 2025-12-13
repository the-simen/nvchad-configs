require "nvchad.autocmds"
local autocmd = vim.api.nvim_create_autocmd

-- Автооткрытие nvim-tree при старте
local function open_nvim_tree(data)
  local directory = vim.fn.isdirectory(data.file) == 1
  if not directory then return end

  vim.cmd.cd(data.file)

  -- отложенный вызов на 50ms, чтобы Neovim успел инициализировать буфер
  vim.defer_fn(function()
    require("nvim-tree.api").tree.open()
  end, 50)
end

autocmd({ "VimEnter" }, { callback = open_nvim_tree })

autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank()
    end,
})

autocmd("FileType", {
  pattern = { "gitcommit", "markdown" },
  callback = function()
    vim.wo.spell = true
  end,
})
