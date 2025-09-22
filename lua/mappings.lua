require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jj", "<ESC>")
map("i", "<C-h>", "<BS>")
map("i", "<C-j>", "<CR>")

map("n", "<leader>wv", "<cmd>vsplit<cr>", { desc = "Vertical Split" })
map("n", "<leader>wh", "<cmd>split<cr>", { desc = "Horizontal Split" })
map("n", "<leader>wd", "<C-w>c", { desc = "Close current split" })

map("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
map("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down", silent = true })
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down", silent = true })
map("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up", silent = true })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up", silent = true })
