require "nvchad.options"

local inc_rename = require "inc_rename"
inc_rename.setup()

vim.g.vscode_snippets_path = "/home/thesimen/.config/nvim/snippets"

vim.lsp.buf.hover = {
  border = "rounded",
}

-- add yours here!
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

local util = vim.lsp.util

-- Сохраняем оригинал один раз
if not util.orig_open_floating_preview then
  util.orig_open_floating_preview = util.open_floating_preview
end

function open_floating_preview(contents, syntax, opts)
  opts = opts or {}
  opts.border = opts.border or "rounded"
  return util.orig_open_floating_preview(contents, syntax, opts)
end
-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
