return {
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
}
