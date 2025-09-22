require "nvchad.options"

-- add yours here!
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

local orig_open_floating_preview = vim.lsp.util.open_floating_preview

vim.lsp.util.open_floating_preview = function(contents, syntax, opts, ...)
  -- твоя кастомизация, например border
  opts = opts or {}
  opts.border = opts.border or "rounded"
  return orig_open_floating_preview(contents, syntax, opts, ...)
end
-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
