local M = {}

M.base_30 = {
  white = "#DCD7BA",
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

  red = "#b96870",
  baby_pink = "#b4778b",
  pink = "#aa7184",

  line = "#31313a",

  green = "#829f62",
  vibrant_green = "#8eaa6b",

  nord_blue = "#718bb8",
  blue = "#719faf",

  yellow = "#c58d52",
  sun = "#c58b68",

  purple = "#9180ad",
  dark_purple = "#8878a5",

  teal = "#6f9990",
  orange = "#c5815d",
  cyan = "#8fb9ba",

  statusline_bg = "#24242d",
  lightbg = "#33333c",

  pmenu_bg = "#9180ad",
  folder_bg = "#718bb8",
}

M.base_16 = {
  base00 = "#1f1f28",
  base01 = "#2a2a37",
  base02 = "#223249",
  base03 = "#363646",
  base04 = "#4c4c55",
  base05 = "#c8c3a6",
  base06 = "#d2cdb0",
  base07 = "#DCD7BA",

  base08 = "#b96870",
  base09 = "#c58b68",
  base0A = "#b99761",
  base0B = "#829f62",
  base0C = "#719faf",
  base0D = "#718bb8",
  base0E = "#8878a5",
  base0F = "#b96870",
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
