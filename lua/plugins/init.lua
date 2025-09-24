return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "smjonas/inc-rename.nvim",
    config = function()
      require("inc_rename").setup()
    end,
  },
  { "RRethy/vim-illuminate", opts = {} },
  {
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
  },
  {
    "stevearc/dressing.nvim",
    event = "VeryLazy",
    config = function()
      -- Настройка dressing
      require("dressing").setup {
        input = {
          enabled = true, -- включаем для vim.ui.input и командной строки
          border = "single", -- рамка без скруглений
          winblend = 10, -- прозрачность
          relative = "editor",
          prefer_width = 60,
        },
        select = {
          enabled = true, -- включаем для vim.ui.select
          backend = { "telescope", "fzf_lua", "builtin" },
          trim_prompt = true,
        },
      }

      -- Скрываем стандартную командную строку, чтобы dressing показывал popup
      vim.o.cmdheight = 0
    end,
    opts = {},
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = { "MunifTanjim/nui.nvim" },
    config = function()
      require("noice").setup {
        cmdline = {
          enabled = true, -- перехватывает командную строку
          view = "cmdline_popup",
          opts = { position = { row = 5, col = "50%" }, size = { width = 60 } },
        },
        popupmenu = { enabled = true, backend = "nui" },
        lsp = { hover = { enabled = true }, signature = { enabled = true } },
      }
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "eslint-lsp",
        "gopls",
        "js-debug-adapter",
        "typescript-language-server",
        "vtsls",
      },
    },
  },
  {
    "Exafunction/codeium.vim",
    lazy = false,
  },
  { import = "nvchad.blink.lazyspec" },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    vscode = true,
    opts = {},
    -- stylua: ignore
    keys = {
      { "sw", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    },
  },
  {
    "echasnovski/mini.surround",
    keys = {
      { "sa", desc = "Add Surrounding", mode = { "n", "v" } },
      { "sd", desc = "Delete Surrounding", mode = { "n", "v" } },
    },
    opts = {
      mappings = {
        add = "sa", -- добавить окружение
        delete = "sd", -- удалить окружение
      },
    },
  },
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      signs = {
        add = { text = "▎" },
        change = { text = "▎" },
        delete = { text = "" },
        topdelete = { text = "" },
        changedelete = { text = "▎" },
      },
    },
  },
  {
    "karb94/neoscroll.nvim",
    event = "VeryLazy",
    config = function()
      require("neoscroll").setup {
        -- duration = 250, -- по умолчанию 250ms
      }
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "jsonc",
        "yaml",
        "markdown",
      },
    },
  },
}
