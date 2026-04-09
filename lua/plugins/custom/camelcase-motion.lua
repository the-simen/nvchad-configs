return {
  "bkad/CamelCaseMotion",
  keys = {
    { "w", "<Plug>CamelCaseMotion_w", mode = { "n", "x" } },
    { "b", "<Plug>CamelCaseMotion_b", mode = { "n", "x" } },
    { "e", "<Plug>CamelCaseMotion_e", mode = { "n", "x" } },
    { "ge", "<Plug>CamelCaseMotion_ge", mode = { "n", "x" } },
  },
  config = function()
    -- Добавим поддержку _ и - как частей слова, если нужно
    vim.opt.iskeyword:append "_"
    vim.opt.iskeyword:append "-"
  end,
}
