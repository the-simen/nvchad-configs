require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jj", "<ESC>")
map("i", "<C-h>", "<BS>")
map("i", "<C-j>", "<CR>")

map("n", "<leader>td", "<cmd>TodoTelescope<cr>", { desc = "TodoTelecope" })

map("n", "<leader>wv", "<cmd>vsplit<cr>", { desc = "Vertical Split" })
map("n", "<leader>wh", "<cmd>split<cr>", { desc = "Horizontal Split" })
map("n", "<leader>wd", "<C-w>c", { desc = "Close current split" })

map("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
map("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down", silent = true })
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down", silent = true })
map("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up", silent = true })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up", silent = true })

map("n", "<leader>n", vim.lsp.buf.code_action, { desc = "Code Actions" })

vim.keymap.set("n", "<leader>cd", function()
  vim.diagnostic.open_float(nil, {
    scope = "cursor",
    focus = true,
    border = "rounded",
  })
end, { desc = "Show diagnostics under cursor" })

-- indent without losing selection
map("v", "<", "<gv", { desc = "Indent left", silent = true })
map("v", ">", ">gv", { desc = "Indent right", silent = true })

-- resize split
map("n", "<", ":vertical resize -5<CR>", { noremap = true, silent = true })
map("n", ">", ":vertical resize +5<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>rn", function()
  return ":IncRename " .. vim.fn.expand "<cword>"
end, { expr = true })
