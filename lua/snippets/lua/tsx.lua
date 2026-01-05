local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

ls.add_snippets("typescriptreact", {
  s({
    trig = "rfc",
    name = "React Functional Component",
  }, {
    t { "export const " },
    f(function()
      return vim.fn.expand "%:t:r"
    end),
    t { " = () => {", "", "" },
    t {
      "\treturn (",
      "\t\t<div>",
    },
    i(0),
    t { "</div>", "" },
    t {
      "\t)",
      "}",
    },
  }),
  s({
    trig = "rfcp",
    name = "React Functional Component with Props",
  }, {
    t { "type TProps = {", "\t" },
    i(1),
    t { "", "}", "", "" },
    t { "export const " },
    f(function()
      return vim.fn.expand "%:t:r"
    end),
    t { " = ({ " },
    i(2),
    t {
      " }: TProps) => {",
      "",
      "",
      "\treturn (",
      "\t\t<div>",
    },
    i(0),
    t { "</div>", "\t)", "}" },
  }),
})
