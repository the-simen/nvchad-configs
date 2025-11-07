return {
  "nvim-tree/nvim-tree.lua",
  opts = {
     diagnostics = {
      enable = true,
      show_on_dirs = true,
      show_on_open_dirs = false,
      icons = {
        hint = " ",
        info = " ",
        warning = " ",
        error = " ",
      },
    },
    renderer = {
      icons = {
        show = {
          diagnostics = true,
          modified = true,
          git = true,
        },
        glyphs = {
          modified = "󰽂 ", -- можно поставить, например, "" или "*"
        },
      },
    },
    git = {
      enable = true,
      ignore = true,
      show_on_dirs = true,
      show_on_open_dirs = false,
    },
    modified = {
      enable = true,
      show_on_dirs = true,
      show_on_open_dirs = false,
    },
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
