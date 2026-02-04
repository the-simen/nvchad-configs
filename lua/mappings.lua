require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("v", ";", ":", { desc = "CMD enter command mode" })
map("i", "jj", "<ESC>")
map("i", "<C-h>", "<BS>")
map("i", "<C-j>", "<CR>")
map("n", "<C-p>", "g;", { desc = "Jump to older change (current buffer)" })
map("n", "<C-n>", "g,", { desc = "Jump to newer change (current buffer)" })

map("n", "<leader>td", "<cmd>TodoTelescope<cr>", { desc = "TodoTelecope" })

map("n", "<leader>wv", "<cmd>vsplit<cr>", { desc = "Vertical Split" })
map("n", "<leader>wh", "<cmd>split<cr>", { desc = "Horizontal Split" })
map("n", "<leader>wd", "<C-w>c", { desc = "Close current split" })

map("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
map("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down", silent = true })
map("v", "<A-j>", ":m '>+1<CR>gv=gv", {
  desc = "Move selection down",
  silent = true,
})
map("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up", silent = true })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", {
  desc = "Move selection up",
  silent = true,
})

map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Actions" })
map("n", "<leader>rm", "<cmd>RenderMarkdown toggle<cr>", {
  desc = "Toggle Render Markdown",
})
map("n", "<leader>ts", function()
  vim.cmd "set spell!"
  if vim.wo.spell then
    vim.notify("Spellcheck enabled", vim.log.levels.INFO, { title = "Spell" })
  else
    vim.notify("Spellcheck disabled", vim.log.levels.INFO, { title = "Spell" })
  end
end, { desc = "Toggle Spellcheck" })

map("n", "<leader>cd", function()
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

map({ "n", "t" }, "<A-i>", function()
  local Term = require "nvchad.term"
  Term.toggle {
    pos = "float",
    id = "floatTerm",
    float_opts = {
      border = "rounded",
      row = 0.25,
      col = 0.05,
      width = 0.9,
      height = 0.6,
    },
  }
end, { desc = "terminal toggle floating term" })

map("n", "<leader>sp", "<cmd>PossessionPick<CR>", {
  desc = "Pick session (Telescope)",
})
map("n", "<leader>sl", "<cmd>PossessionLoadCwd<CR>", {
  desc = "Load session for cwd",
})
map("n", "<leader>ss", "<cmd>PossessionSaveCwd<CR>", {
  desc = "Save session for cwd",
})
map("n", "<leader>nh", "<cmd>Telescope notify<cr>", {
  desc = "Telescope notify history",
})
map(
  "i",
  "<Tab>",
  [[luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>']],
  { expr = true, noremap = true }
)
map("s", "<Tab>", [[<Plug>luasnip-expand-or-jump]], {})
map("i", "<S-Tab>", [[<Plug>luasnip-jump-prev]], {})
map("s", "<S-Tab>", [[<Plug>luasnip-jump-prev]], {})
