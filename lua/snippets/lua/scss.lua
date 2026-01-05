local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node

ls.add_snippets("scss", {

  s(
    {
      trig = "use",
      name = "Import variables.module.scss and global.scss (bibv)",
    }, {
    t(
        "@use \"@/variables.module.scss\" as *;",
        "@use \"@/globals.scss\";"
      )}
  ),
})
