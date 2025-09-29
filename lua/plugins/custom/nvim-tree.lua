return {
  "nvim-tree/nvim-tree.lua",
  opts = {
    view = { width = 40, side = "left" },
    on_attach = function(bufnr)
      local api = require "nvim-tree.api"

      local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
      end

      -- Оставляем стандартные бинды NvChad
      api.config.mappings.default_on_attach(bufnr)

      vim.keymap.set("n", "l", api.node.open.edit, opts "Open")
      vim.keymap.set("n", "h", api.node.navigate.parent_close, opts "Close Directory")

      -- Добавляем свои бинды для изменения ширины дерева
      vim.keymap.set("n", "<", function()
        vim.cmd "vertical resize -5"
      end, opts "Shrink nvim-tree")

      vim.keymap.set("n", ">", function()
        vim.cmd "vertical resize +5"
      end, opts "Expand nvim-tree")
    end,
  },
}
