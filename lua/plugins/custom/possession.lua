vim.opt.sessionoptions:remove "tabpages"

local function after_session_load()
  -- получить все загруженные буферы
  local buffers = vim.api.nvim_list_bufs()
  local first_buf = nil

  -- найти первый загруженный буфер (не пустой)
  for _, bufnr in ipairs(buffers) do
    if vim.api.nvim_buf_is_loaded(bufnr) then
      first_buf = bufnr
      break
    end
  end

  if not first_buf then
    return
  end

  local current_buf = vim.api.nvim_get_current_buf()
  vim.api.nvim_set_current_buf(first_buf)

  vim.cmd "bprevious"
  vim.api.nvim_set_current_buf(current_buf)

  -- vim.api.nvim_set_current_buf(current_buf)
end

return {
  "jedrzejboczar/possession.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim", -- если используешь pick/list
  },
  lazy = false,
  config = function()
    require("possession").setup {
      silent = false,
      load_silent = true,

      autosave = {
        current = true,
        cwd = true,
        on_load = true,
        on_quit = true,
      },

      plugins = {
        delete_hidden_buffers = false,
        neo_tree = false,
        nvim_tree = true,
      },

      telescope = {
        list = {
          default_action = "load",
        },
      },

      hooks = {
        after_load = function()
          vim.defer_fn(function()
            after_session_load()
          end, 100)
        end,

        before_save = function(name)
          -- Не сохранять сессию, если нет ни одного буфера с реальным файлом
          -- (pipe, help, terminal, unnamed buffer)
          local has_real_file = false
          for _, buf in ipairs(vim.api.nvim_list_bufs()) do
            if vim.api.nvim_buf_is_loaded(buf) then
              local bt = vim.bo[buf].buftype
              local fname = vim.api.nvim_buf_get_name(buf)
              if bt == "" and fname ~= "" then
                has_real_file = true
                break
              end
            end
          end
          if not has_real_file then
            return nil  -- abort save entirely
          end
          return {}
        end,
      },
    }
  end,
}
