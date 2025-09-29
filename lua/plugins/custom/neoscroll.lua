return {
  "karb94/neoscroll.nvim",
  event = "VeryLazy",
  config = function()
    require("neoscroll").setup {
      -- duration = 250, -- по умолчанию 250ms
    }
  end,
}
