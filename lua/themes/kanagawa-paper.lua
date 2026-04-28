local M = {}

M.base_30 = {
  white = "#dcd7ba",
  darker_black = "#181820",
  black = "#1f1f28",
  black2 = "#262634",
  one_bg = "#2a2a37",
  one_bg2 = "#303042",
  one_bg3 = "#36364a",

  grey = "#8a8980",
  grey_fg = "#a19f95",
  grey_fg2 = "#b0ad9f",

  light_grey = "#85826f",

  red = "#c4746e",
  baby_pink = "#cfa0a8",
  pink = "#b58aa0",

  line = "#2a2a37",

  green = "#7b958e",
  vibrant_green = "#8fae9e",

  nord_blue = "#6f8795",
  blue = "#6b7f9f",

  yellow = "#c0a36e",
  sun = "#b8a86a",

  purple = "#938aa9",
  dark_purple = "#857f9c",

  teal = "#7aa89f",
  orange = "#c4a173",

  cyan = "#7e8faf",
  statusline_bg = "#1f1f28",
  lightbg = "#262634",

  pmenu_bg = "#6f8795",
  folder_bg = "#6b7f9f",
}

M.base_16 = {
  base00 = "#1f1f28",
  base01 = "#262634",
  base02 = "#2d2d3a",
  base03 = "#8a8980",
  base04 = "#b0ad9f",
  base05 = "#dcd7ba",
  base06 = "#e5e0c8",
  base07 = "#f2ecbc",

  base08 = "#c4746e", -- red
  base09 = "#c4a173", -- orange
  base0A = "#c0a36e", -- yellow
  base0B = "#7b958e", -- green
  base0C = "#7e8faf", -- cyan
  base0D = "#6f8795", -- blue
  base0E = "#938aa9", -- purple
  base0F = "#b58aa0", -- pink
}

M.type = "dark"

M.polish_hl = {
  CursorLine = { bg = "#2a2a37" },
  Visual = { bg = "#3a342a" },
  PmenuSel = { bg = "#3a342a", fg = "#dcd7ba" },
}

M.overrides = {
  Visual = { bg = "#3a342a" },
  CursorLine = { bg = "#2f2f3d" },
  PmenuSel = { bg = "#3a342a", fg = "#dcd7ba" },
}

return M
