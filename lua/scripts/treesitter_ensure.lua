local M = {}

local ensure = {
  -- Core
  "vim",
  "lua",
  "vimdoc",

  -- Web frontend
  "html",
  "css",
  "scss",
  "javascript",
  "typescript",
  "tsx",
  "json",
  "jsonc",
  "vue",
  "svelte",

  -- Web backend / server
  "bash",
  "dockerfile",
  "yaml",
  "toml",
  "ini",
  "dotenv",

  -- Frameworks / tooling
  "graphql",
  "regex",

  -- Backend languages (часто встречаются)
  "python",
  "go",
  "rust",
  "java",
  "c",
  "cpp",
  "php",

  -- DevOps / infra
  "hcl", -- terraform
  "make",
  "sql",

  -- Markdown / docs
  "markdown",
  "markdown_inline",

  -- Git / misc
  "gitcommit",
  "gitignore",
}

function M.setup()
  vim.api.nvim_create_user_command("TSSync", function()
    for _, lang in ipairs(ensure) do
      vim.cmd("TSInstall " .. lang)
    end
  end, {})
end

return M
