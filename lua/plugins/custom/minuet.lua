return {
  "milanglacier/minuet-ai.nvim",
  event = "InsertEnter",
  config = function()
    local service = "ollama.service"
    local lease_dir = vim.fn.stdpath "state" .. "/ollama-nvim"
    local lease = lease_dir .. "/" .. vim.fn.getpid()

    -- Keep Ollama running only while at least one Neovim with Minuet is open.
    local function active_leases()
      local count = 0
      for _, path in ipairs(vim.fn.glob(lease_dir .. "/*", false, true)) do
        local pid = tonumber(vim.fn.fnamemodify(path, ":t"))
        if pid and vim.uv.kill(pid, 0) == 0 then
          count = count + 1
        else
          vim.fn.delete(path)
        end
      end
      return count
    end

    vim.fn.mkdir(lease_dir, "p")
    active_leases()
    vim.fn.writefile({}, lease)
    local output = vim.fn.system { "systemctl", "--user", "start", service }
    if vim.v.shell_error ~= 0 then
      vim.notify("Ollama failed to start: " .. output, vim.log.levels.ERROR)
    elseif
      not vim.wait(5000, function()
        vim.fn.system { "curl", "-fsS", "--max-time", "1", "http://127.0.0.1:11434/api/tags" }
        return vim.v.shell_error == 0
      end, 200)
    then
      vim.notify("Ollama did not become ready within 5 seconds", vim.log.levels.WARN)
    end

    vim.api.nvim_create_autocmd("VimLeavePre", {
      once = true,
      callback = function()
        vim.fn.delete(lease)
        if active_leases() == 0 then
          vim.fn.system { "systemctl", "--user", "stop", service }
        end
      end,
    })

    require("minuet").setup {
      provider = "openai_fim_compatible",
      n_completions = 1,
      context_window = 1024,
      request_timeout = 25,
      virtualtext = {
        auto_trigger_ft = { "*" },
        auto_trigger_ignore_ft = { "bigfile", "oil" },
        show_on_completion_menu = true,
        keymap = {
          accept = "<C-y>",
          dismiss = "<C-e>",
        },
      },
      provider_options = {
        openai_fim_compatible = {
          api_key = function()
            return "ollama"
          end,
          name = "Ollama",
          end_point = "http://127.0.0.1:11434/v1/completions",
          model = "qwen2.5-coder:14b",
          optional = { max_tokens = 48, top_p = 0.9 },
        },
      },
    }
    -- FileType already fired for the buffer that triggered InsertEnter.
    if not vim.tbl_contains({ "bigfile", "oil" }, vim.bo.filetype) then
      vim.b.minuet_virtual_text_auto_trigger = true
    end
  end,
}
