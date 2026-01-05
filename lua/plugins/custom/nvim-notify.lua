return {
  "rcarriga/nvim-notify",
  opts = {
    stages = "slide",
    timeout = 3000,
    render = "wrapped-compact",
    max_width = 40,
    max_height = 15,
    level = vim.log.levels.INFO,
  },
  config = function(_, opts)
    local notify = require("notify")
    notify.setup(opts)
    vim.notify = notify
  end,
}
