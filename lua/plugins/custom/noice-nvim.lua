return {
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
      lsp = { hover = { enabled = true }, signature = { enabled = true }, diagnostics = { enabled = true } },
      messages = { enabled = true, view = "mini" },
    }
  end,
}
