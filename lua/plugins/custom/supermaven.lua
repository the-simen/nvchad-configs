return {
  "supermaven-inc/supermaven-nvim",
  enabled = false,
  event = "InsertEnter",
  config = function()
    require("supermaven-nvim").setup {
      keymaps = {
        accept_suggestion = "<Tab>",
        clear_suggestion = "<C-c>",
        accept_word = "<C-y>",
      },
      ignore_filetypes = { "bigfile", "oil" },
      color = {
        suggestion_color = "#555555",
        cterm = 244,
      },
      log_level = "debug",
    }
  end,
}
