return {
  "NvChad/nvterm",
  opts = {
    terminals = {
      shell = vim.o.shell,
      list = {},
      type_opts = {
        float = {
          relative = "editor",
          row = 0.1,
          col = 0.1,
          width = 0.8,
          height = 0.8,
          border = "rounded",
        },
      },
    },

    hooks = {
      on_open = function(term)
        vim.defer_fn(function()
          vim.api.nvim_chan_send(term.chan, "echo 'Terminal ready'\n")
          vim.api.nvim_chan_send(term.chan, "pwd\n")
        end, 50)
      end,
    },
  },
}
