return {
  "Exafunction/codeium.nvim",
  lazy = false,
  config = function()
    require("codeium").setup {
      enable_cmp_source = true,
      virtual_text = {
        enabled = true,
        manual = false,
        idle_delay = 75,
        virtual_text_priority = 65535,
        map_keys = true,
        accept_fallback = nil,
        key_bindings = {
          accept = "<C-y>",
          accept_word = false,
          accept_line = false,
          clear = "<C-e>",
          next = "<M-]>", -- если хочешь циклы
          prev = "<M-[>", -- тоже полезно
        },
      },
    }
  end,
}
