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

vim.lsp.config["tailwindcss"] = {
  settings = {
    tailwindCSS = {
      lint = {
        recommended = "warning",
        invalidApply = "error",
        invalidScreen = "error",
        invalidVariant = "error",
        invalidConfigPath = "error",
      },
    },
  },
}

local servers = {
  "html",
  "cssls",
  "vtsls",
  "jsonls",
  "tailwindcss",
  "gitlint",
  "commitlint",
}
vim.lsp.enable(servers)

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if not client then
      return
    end

    if client.name == "tailwindcss" then
      -- чтобы nvim-cmp не получал подсказки от tailwind LSP
      client.server_capabilities.completionProvider = nil
    end
  end,
})
-- read :h vim.lsp.config for changing options of lsp servers
