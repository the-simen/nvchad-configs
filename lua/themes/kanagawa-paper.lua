local M = {}

M.base_30 = {
  white = "#dcd7ba",
  darker_black = "#191922",
  black = "#1F1F28",
  black2 = "#25252e",
  one_bg = "#272730",
  one_bg2 = "#2f2f38",
  one_bg3 = "#363646",
  grey = "#43434c",
  grey_fg = "#4c4c55",
  grey_fg2 = "#53535c",
  light_grey = "#5c5c65",

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

M.polish_hl = {
  treesitter = {
    ["@keyword.import"] = { fg = M.base_30.purple },
    ["@uri"] = { fg = M.base_30.blue },
    ["@tag.delimiter"] = { fg = M.base_30.red },
    ["@variable.member.key"] = { fg = M.base_30.white },
    ["@punctuation.bracket"] = { fg = M.base_30.pmenu_bg },
    ["@punctuation.delimiter"] = { fg = M.base_30.white },
  },

  syntax = {
    Number = { fg = M.base_30.baby_pink },
  },
}

M.type = "dark"

M = require("base46").override_theme(M, "kanagawa")

return M
