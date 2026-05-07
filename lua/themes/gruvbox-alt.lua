local M = {}

M.base_30 = {
  white = "#ebdbb2",

  darker_black = "#1d2021",
  black = "#282828",
  black2 = "#32302f",

  one_bg = "#3c3836",
  one_bg2 = "#45403d",
  one_bg3 = "#504945",

  grey = "#665c54",
  grey_fg = "#7c6f64",
  grey_fg2 = "#928374",

  light_grey = "#bdae93",

  red = "#ea6962",
  baby_pink = "#d3869b",
  pink = "#d3869b",

  line = "#3c3836",

  green = "#a9b665",
  vibrant_green = "#b8bb26",

  nord_blue = "#7daea3",
  blue = "#83a598",

  yellow = "#d8a657",
  sun = "#e0af68",

  purple = "#b4befe",
  dark_purple = "#a899e6",

  teal = "#89b482",
  orange = "#d8a657",

  cyan = "#89b482",

  statusline_bg = "#282828",
  lightbg = "#32302f",

  pmenu_bg = "#7daea3",
  folder_bg = "#83a598",
}

M.base_16 = {
  base00 = "#282828",
  base01 = "#32302f",
  base02 = "#3c3836",
  base03 = "#665c54",

  base04 = "#bdae93",
  base05 = "#ebdbb2",
  base06 = "#f2e5bc",
  base07 = "#fbf1c7",

  base08 = "#ea6962",
  base09 = "#d8a657",
  base0A = "#e0af68",
  base0B = "#a9b665",
  base0C = "#89b482",
  base0D = "#7daea3",
  base0E = "#b4befe",
  base0F = "#d3869b",
}

M.type = "dark"

-- hover / selection tuned for modern gruvbox UI
M.polish_hl = {
  CursorLine = { bg = "#32302f" },

  Visual = { bg = "#504945" },

  PmenuSel = {
    bg = "#7daea3",
    fg = "#282828",
  },
}

M.overrides = {
  Visual = { bg = "#504945" },

  CursorLine = { bg = "#3c3836" },

  PmenuSel = {
    bg = "#7daea3",
    fg = "#282828",
  },
}

return M
