require "nvchad.options"

vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = -1
vim.opt.smartindent = true
vim.opt.cindent = false
vim.opt.virtualedit = "block"

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

function Open_floating_preview(contents, syntax, opts)
  opts = opts or {}
  opts.border = opts.border or "rounded"
  return util.orig_open_floating_preview(contents, syntax, opts)
end
-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
---@diagnostic disable-next-line: duplicate-set-field
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
  opts = opts or {}
  opts.border = "rounded" -- Or any other border
  return orig_util_open_floating_preview(contents, syntax, opts, ...)
end
