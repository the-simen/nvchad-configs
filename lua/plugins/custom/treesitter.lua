return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
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
      "yaml",
      "markdown",
      "bash",
    },
  },
}
