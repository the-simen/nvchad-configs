local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("lua", {
  s("add", {
    t { "---@type NvPluginSpec", "return {" },
    t { '"' },
    i(1, "repo_owner/repo_name"),
    t { '"' },
    t { "opts = {" },
    i(2),
    t { "}}" },
    t { "}" },
  }),
})
