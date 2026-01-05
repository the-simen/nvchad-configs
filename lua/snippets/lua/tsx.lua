local ls = require "luasnip"
local s = ls.snippet
local i = ls.insert_node
local f = ls.function_node
local fmt = require("luasnip.extras.fmt").fmt
local get_current_file_name = require "snippets.utils.get_current_file_name"

ls.add_snippets("typescriptreact", {

  s(
    {
      trig = "rfc",
      name = "React Functional Component",
    },
    fmt(
      [[

        export const {} = () => {{

          return (
            <div>{}</div>
          )
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
      trig = "rfcp",
      name = "React Functional Component with Props",
    },
    fmt(
      [[

        type TProps = {{
          {}
        }}

        export const {} = ({{ {} }}: TProps) => {{
          
          return (
            <div>{}</div>
          )
        }}

      ]],
      {
        i(1),
        f(get_current_file_name),
        i(2),
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

  s(
    {
      trig = "ucl",
      name = "console.log inside useEffect",
    },
    fmt(
      [[
        useEffect(() => {{
          console.log({});
        }}, [{}]);
      ]],
      {
        i(0),
        i(1),
      }
    )
  ),
})
