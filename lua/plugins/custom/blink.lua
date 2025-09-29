return {
  "Saghen/blink.cmp",
  dependencies = { "Exafunction/codeium.nvim", "rafamadriz/friendly-snippets" },
  opts = {
    keymap = {
      preset = "default",
      ["<CR>"] = nil,                 -- Enter отключен
    },
    sources = {
      default = { "lsp", "path", "snippets", "buffer", "codeium" },
    },
    providers = { "codeium" },
    appearance = { nerd_font_variant = "mono" },
    completion = { documentation = { auto_show = false } },
    fuzzy = { implementation = "prefer_rust_with_warning" },
  },
  opts_extend = { "sources.default" },
}
