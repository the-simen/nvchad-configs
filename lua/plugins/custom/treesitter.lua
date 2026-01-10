return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    indent = { enable = true },
    ensure_installed = {
      "vim",
      "lua",
      "vimdoc",
      "html",
      "css",
      "javascript",
      "typescript",
      "tsx",
      "json",
      "jsonc",
      "yaml",
      "markdown",
    },
  },
}
