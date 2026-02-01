local ls = require "luasnip"
local s = ls.snippet
local i = ls.insert_node
local f = ls.function_node
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("html", {

  s(
    {
      trig = "div",
      name = "div element",
    },
    fmt([[<div>{}</div>]], {
      i(0),
    })
  ),

  s(
    {
      trig = "p",
      name = "p element",
    },
    fmt([[<p>{}</p>]], {
      i(0),
    })
  ),

  s(
    {
      trig = "h1",
      name = "h1 element",
    },
    fmt([[<h1>{}</h1>]], {
      i(0),
    })
  ),

  s(
    {
      trig = "h2",
      name = "h2 element",
    },
    fmt([[<h2>{}</h2>]], {
      i(0),
    })
  ),

  s(
    {
      trig = "h3",
      name = "h3 element",
    },
    fmt([[<h3>{}</h3>]], {
      i(0),
    })
  ),

  s(
    {
      trig = "h4",
      name = "h4 element",
    },
    fmt([[<h4>{}</h4>]], {
      i(0),
    })
  ),

  s(
    {
      trig = "h5",
      name = "h5 element",
    },
    fmt([[<h5>{}</h5>]], {
      i(0),
    })
  ),

  s(
    {
      trig = "h6",
      name = "h6 element",
    },
    fmt([[<h6>{}</h6>]], {
      i(0),
    })
  ),

  s(
    {
      trig = "span",
      name = "span element",
    },
    fmt([[<span>{}</span>]], {
      i(0),
    })
  ),

  s(
    {
      trig = "a",
      name = "anchor element",
    },
    fmt([[<a href="{}">{}</a>]], {
      i(1),
      i(0),
    })
  ),

  s(
    {
      trig = "img",
      name = "image element",
    },
    fmt([[<img src="{}" alt="{}" />]], {
      i(1),
      i(0),
    })
  ),

  s(
    {
      trig = "button",
      name = "button element",
    },
    fmt([[<button>{}</button>]], {
      i(0),
    })
  ),

  s(
    {
      trig = "input",
      name = "input element",
    },
    fmt([[<input type="{}" placeholder="{}" />]], {
      i(1, "text"),
      i(0),
    })
  ),

  s(
    {
      trig = "textarea",
      name = "textarea element",
    },
    fmt([[<textarea placeholder="{}">{}</textarea>]], {
      i(1),
      i(0),
    })
  ),

  s(
    {
      trig = "select",
      name = "select element",
    },
    fmt([[<select>{}</select>]], {
      i(0),
    })
  ),

  s(
    {
      trig = "option",
      name = "option element",
    },
    fmt([[<option value="{}">{}</option>]], {
      i(1),
      i(0),
    })
  ),

  s(
    {
      trig = "label",
      name = "label element",
    },
    fmt([[<label htmlFor="{}">{}</label>]], {
      i(1),
      i(0),
    })
  ),

  s(
    {
      trig = "form",
      name = "form element",
    },
    fmt([[<form>{}</form>]], {
      i(0),
    })
  ),

  s(
    {
      trig = "ul",
      name = "unordered list",
    },
    fmt([[<ul>{}</ul>]], {
      i(0),
    })
  ),

  s(
    {
      trig = "ol",
      name = "ordered list",
    },
    fmt([[<ol>{}</ol>]], {
      i(0),
    })
  ),

  s(
    {
      trig = "li",
      name = "list item",
    },
    fmt([[<li>{}</li>]], {
      i(0),
    })
  ),

  s(
    {
      trig = "table",
      name = "table element",
    },
    fmt([[<table>{}</table>]], {
      i(0),
    })
  ),

  s(
    {
      trig = "thead",
      name = "table head",
    },
    fmt([[<thead>{}</thead>]], {
      i(0),
    })
  ),

  s(
    {
      trig = "tbody",
      name = "table body",
    },
    fmt([[<tbody>{}</tbody>]], {
      i(0),
    })
  ),

  s(
    {
      trig = "tr",
      name = "table row",
    },
    fmt([[<tr>{}</tr>]], {
      i(0),
    })
  ),

  s(
    {
      trig = "th",
      name = "table header",
    },
    fmt([[<th>{}</th>]], {
      i(0),
    })
  ),

  s(
    {
      trig = "td",
      name = "table cell",
    },
    fmt([[<td>{}</td>]], {
      i(0),
    })
  ),

  s(
    {
      trig = "section",
      name = "section element",
    },
    fmt([[<section>{}</section>]], {
      i(0),
    })
  ),

  s(
    {
      trig = "article",
      name = "article element",
    },
    fmt([[<article>{}</article>]], {
      i(0),
    })
  ),

  s(
    {
      trig = "header",
      name = "header element",
    },
    fmt([[<header>{}</header>]], {
      i(0),
    })
  ),

  s(
    {
      trig = "footer",
      name = "footer element",
    },
    fmt([[<footer>{}</footer>]], {
      i(0),
    })
  ),

  s(
    {
      trig = "nav",
      name = "nav element",
    },
    fmt([[<nav>{}</nav>]], {
      i(0),
    })
  ),

  s(
    {
      trig = "main",
      name = "main element",
    },
    fmt([[<main>{}</main>]], {
      i(0),
    })
  ),

  s(
    {
      trig = "aside",
      name = "aside element",
    },
    fmt([[<aside>{}</aside>]], {
      i(0),
    })
  ),

  s({
    trig = "br",
    name = "line break",
  }, fmt([[<br />]], {})),

  s({
    trig = "hr",
    name = "horizontal rule",
  }, fmt([[<hr />]], {})),

  s(
    {
      trig = "strong",
      name = "strong element",
    },
    fmt([[<strong>{}</strong>]], {
      i(0),
    })
  ),

  s(
    {
      trig = "em",
      name = "emphasis element",
    },
    fmt([[<em>{}</em>]], {
      i(0),
    })
  ),

  s(
    {
      trig = "code",
      name = "code element",
    },
    fmt([[<code>{}</code>]], {
      i(0),
    })
  ),

  s(
    {
      trig = "pre",
      name = "pre element",
    },
    fmt([[<pre>{}</pre>]], {
      i(0),
    })
  ),

  s(
    {
      trig = "blockquote",
      name = "blockquote element",
    },
    fmt([[<blockquote>{}</blockquote>]], {
      i(0),
    })
  ),
})
