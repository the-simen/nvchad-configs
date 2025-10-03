return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = { "MunifTanjim/nui.nvim" },
  config = function()
    require("noice").setup {
      messages = { enabled = true, view = "mini" },
      cmdline = {
        enabled = true, -- перехватывает командную строку
        view = "cmdline_popup",
        opts = { position = { row = 5, col = "50%" }, size = { width = 60 } },
      },
      popupmenu = { enabled = true, backend = "nui" },
      lsp = { hover = { enabled = true }, signature = { enabled = false }, diagnostics = { enabled = true } },
    }
  end,
}
