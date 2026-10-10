require "nvchad.autocmds"
local autocmd = vim.api.nvim_create_autocmd

-- Автооткрытие nvim-tree при старте
local function open_nvim_tree(data)
  local directory = vim.fn.isdirectory(data.file) == 1
  if not directory then
    return
  end

  vim.cmd.cd(data.file)

  -- отложенный вызов на 50ms, чтобы Neovim успел инициализировать буфер
  vim.defer_fn(function()
    require("nvim-tree.api").tree.open()
  end, 50)
end

autocmd({ "VimEnter" }, { callback = open_nvim_tree })

autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Перекомпиляция base46-кэша, если сгенерированный Noctalia-файл новее.
-- Noctalia перезаписывает lua/themes/noctalia.lua при смене палитры,
-- а nvim на старте лишь читает готовый кэш (иначе перекомпиляция
-- происходит только через меню тем <leader>th).
autocmd("VimEnter", {
  callback = function()
    local ok, nvconfig = pcall(require, "nvconfig")
    if not ok or nvconfig.base46.theme ~= "noctalia" then
      return
    end

    local theme_stat = vim.uv.fs_stat(vim.fn.stdpath "config" .. "/lua/themes/noctalia.lua")
    local cache_stat = vim.uv.fs_stat(vim.g.base46_cache .. "defaults")
    if theme_stat and (not cache_stat or theme_stat.mtime.sec > cache_stat.mtime.sec) then
      pcall(function()
        require("base46").load_all_highlights()
      end)
    end
  end,
})

autocmd("FileType", {
  pattern = { "gitcommit" },
  callback = function()
    vim.wo.spell = true
  end,
})

autocmd("BufWritePre", {
  callback = function(args)
    require("conform").format {
      bufnr = args.buf,
      timeout_ms = 500,
      lsp_fallback = false,
    }
  end,
})
