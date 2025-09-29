return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lsp",
    "L3MON4D3/LuaSnip",       -- если хочешь сниппеты
    "saadparwaiz1/cmp_luasnip",
    "Exafunction/codeium.nvim" -- Codeium как source
  },
  event = "VeryLazy",
  -- config = function()
  --   local cmp = require("cmp")
  --   cmp.setup({
  --     mapping = {
  --       ["<CR>"] = cmp.config.disable,           -- Enter отключен
  --       ["<Tab>"] = cmp.mapping.confirm({ select = true }),
  --     },
  --     sources = cmp.config.sources({
  --       { name = "codeium" },
  --       { name = "nvim_lsp" },
  --       { name = "buffer" },
  --       { name = "path" },
  --     }),
  --   })
  -- end,
}
