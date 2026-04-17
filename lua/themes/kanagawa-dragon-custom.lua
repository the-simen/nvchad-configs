local M = {}

M.base_30 = {
  white = "#d8d3b0",
  darker_black = "#141418",
  black = "#1c1c22",
  black2 = "#26262f",
  one_bg = "#2a2a34",
  one_bg2 = "#30303c",
  one_bg3 = "#363644",

  grey = "#5a5a70",
  grey_fg = "#7a7a8f",
  grey_fg2 = "#9a9ab0",

  light_grey = "#c4c0a0",

  red = "#d17a84",
  baby_pink = "#cfa0a8",
  pink = "#cfa0a8",

  line = "#2a2a34",

  green = "#7a9272",
  vibrant_green = "#9bb98a",

  nord_blue = "#86aabf",
  blue = "#809cc0",

  yellow = "#d9be88",
  sun = "#bfa574",

  purple = "#9a8bb5",
  dark_purple = "#8e85a3",

  teal = "#72938c",
  orange = "#d8a07a",

  cyan = "#7fa39c",
  statusline_bg = "#1c1c22",
  lightbg = "#26262f",

  pmenu_bg = "#86aabf",
  folder_bg = "#809cc0",
}

M.base_16 = {
  base00 = "#1c1c22",
  base01 = "#2a2a34",
  base02 = "#333344",
  base03 = "#5a5a70",
  base04 = "#c4c0a0",
  base05 = "#d8d3b0",
  base06 = "#e0d7b8",
  base07 = "#ffffff",

  base08 = "#c97a7a",
  base09 = "#d8a07a",
  base0A = "#bfa574",
  base0B = "#7a9272",
  base0C = "#72938c",
  base0D = "#86aabf",
  base0E = "#9a8bb5",
  base0F = "#cfa0a8",
}

M.type = "dark"

-- точечная коррекция hover/selection
M.polish_hl = {
  CursorLine = { bg = "#2f2a23" },
  Visual = { bg = "#5a4d38" },
  PmenuSel = { bg = "#5a4d38", fg = "#d8d3b0" },
}

M.overrides = {
  Visual = { bg = "#5a4d38" },
  CursorLine = { bg = "#342f26" },
  PmenuSel = { bg = "#5a4d38", fg = "#d8d3b0" },
}

return M
