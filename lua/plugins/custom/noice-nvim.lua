return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    require("noice").setup {
      messages = {
        enabled = true,
        view = "notify",
        view_error = "notify",
        view_warn = "notify",
        view_history = "messages",
        view_search = "virtualtext",
      },
      cmdline = {
        enabled = true,
        view = "cmdline_popup",
        format = {
          substitute = {
            pattern = {
              "^:%s*%%?s/",
              "^:%s*'<,'>%s*s/",
            },
            view = "cmdline",
            icon = "󰛔",
            lang = "regex",
            opts = {
              size = { width = vim.api.nvim_win_get_width(0) - 41, height = 1 },
              position = { row = 0, col = 41 },
            },
          },
          search_down = {
            view = "cmdline",
            opts = {
              size = { width = vim.api.nvim_win_get_width(0) - 41, height = 1 },
              position = { row = 0, col = 41 },
            },
          },
          search_up = {
            view = "cmdline",
            opts = {
              size = { width = vim.api.nvim_win_get_width(0) - 41, height = 1 },
              position = { row = 0, col = 41 },
            },
          },
          input = {
            view = "cmdline",
            opts = {
              size = { width = vim.api.nvim_win_get_width(0) - 41, height = 1 },
              position = { row = 0, col = 41 },
            },
          },
        },
        opts = {
          position = { row = 0, col = "50%" },
          size = { width = 60, height = 1 },
        },
      },
      views = {
        messages = {
          position = { row = 2, col = "50%" },
          size = { width = 80, height = 15 },
          border = { style = "rounded", padding = { 0, 1 } },
          win_options = {
            winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
          },
        },
        cmdline_popup = {
          position = {
            row = 5,
            col = "50%",
          },
          size = {
            width = 60,
            height = "auto",
          },
          border = {
            padding = { 0, 1 },
          },
        },
        popupmenu = {
          relative = "editor",
          position = {
            row = 4,
            col = "50%",
          },
          size = {
            width = 60,
            height = 10,
          },
          border = {
            style = "rounded",
            padding = { 0, 1 },
          },
          win_options = {
            winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
          },
        },
      },
      borders = { enabled = true },
      lsp = {
        hover = {
          enabled = false,
          view = nil,
          opts = {
            border = "rounded",
            position = { row = 2, col = 1 },
          },
        },
        signature = {
          enabled = false,
          auto_open = { enabled = false, trigger = false },
          opts = {
            border = "rounded",
            position = { row = 2, col = 1 },
          },
        },
        diagnostics = { enabled = true },
      },
    }
  end,
}
