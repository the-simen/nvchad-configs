local ls = require "luasnip"
local s = ls.snippet
local i = ls.insert_node
local f = ls.function_node
local fmt = require("luasnip.extras.fmt").fmt
local get_current_file_name = require "snippets.utils.get_current_file_name"

ls.add_snippets("typescript", {

  s(
    {
      trig = "rh",
      name = "React Hook",
    },
    fmt(
      [[

        export const {} = () => {{
          {}
        }}

      ]],
      {
        f(get_current_file_name),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "cl",
      name = "console.log",
    },
    fmt(
      [[
        console.log({});
      ]],
      {
        i(0),
      }
    )
  ),
})
