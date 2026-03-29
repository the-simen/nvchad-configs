return {
  "nicholasxjy/translator.nvim",
  event = "VeryLazy",
  lazyr = false,
  opts = {
    default_target_lang = "ru", -- Default target language
    default_source_lang = nil, -- Default source language (nil = auto-detect)
    window = {
      width = 80, -- Popup window width
      height = 20, -- Popup window max height
      title = " Translation ", -- Popup window title
      border = "rounded", -- Border style: "rounded", "single", "double", "solid", "shadow", "none"
      title_pos = "center", -- Title position: "center", "left", "right"
    },
  },
}
