return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lsp",
    "L3MON4D3/LuaSnip", -- если хочешь сниппеты
    "saadparwaiz1/cmp_luasnip",
    "Exafunction/codeium.nvim", -- Codeium как source
  },
  -- event = "VeryLazy",
  config = function()
    local cmp = require "cmp"
    cmp.setup {
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
      mapping = {
        ["<CR>"] = nil, -- Enter отключен
        ["<Tab>"] = nil,
        ["<C-n>"] = cmp.mapping.select_next_item(),
        ["<C-p>"] = cmp.mapping.select_prev_item(),
      },
      sources = cmp.config.sources {
        { name = "codeium" },
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
      },
    }
  end,
}
