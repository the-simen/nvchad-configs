return {
  "folke/flash.nvim",
  event = "VeryLazy",
  vscode = true,
  opts = {},
    -- stylua: ignore
    keys = {
      { "sw", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    },
}
