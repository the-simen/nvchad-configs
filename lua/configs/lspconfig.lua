require("nvchad.configs.lspconfig").defaults()

vim.lsp.config["cssls"] = {
  settings = {
    css = {
      lint = {
        unknownAtRules = "ignore",
      },
    },
    scss = {
      lint = {
        unknownAtRules = "ignore",
      },
    },
    less = {
      lint = {
        unknownAtRules = "ignore",
      },
    },
  },
}

local servers = { "html", "cssls", "vtsls", "jsonls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
