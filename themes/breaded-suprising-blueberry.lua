-- credits to original theme for existing https://github.com/BeardedBear/bearded-theme ( arc version )
-- This is just a modified version of it
local M = {}

M.base_30 = {
  white = "#ffffff",
  darker_black = "#0f1825",
  black = "#101a29", -- nvim bg
  black2 = "#202a39",
  one_bg = "#303a49",
  one_bg2 = "#404a59",
  one_bg3 = "#3a4251",
  grey = "#444c5b",
  grey_fg = "#3c567b",
  grey_fg2 = "#58606f",
  light_grey = "#626a79",
  red = "#c93e71",
  baby_pink = "#FFA3DA",
  pink = "#ee9cdd",
  line = "#3C4142", -- for lines like vertsplit
  green = "#6AFFbC",
  vibrant_green = "#9AFFcC",
  nord_blue = "#6da4cd",
  blue = "#69C3FF",
  yellow = "#EACD61",
  sun = "#f6d96d",
  purple = "#bd93ff",
  dark_purple = "#B78AFF",
  teal = "#12c7c4",
  orange = "#EA9E8D",
  cyan = "#22ECDB",
  statusline_bg = "#282E2F",
  lightbg = "#3C4142",
  pmenu_bg = "#3CEC85",
  folder_bg = "#59d3FF",
}

M.base_16 = {
  base00 = "#101a29",
  base01 = "#202a39",
  base02 = "#303a49",
  base03 = "#404a59",
  base04 = "#05b0bd",
  base05 = "#5288ac",
  base06 = "#05b0bd",
  base07 = "#FAA2FF",
  base08 = "#05b0bd",
  base09 = "#FF90bA",
  base0A = "#cc9b52",
  base0B = "#a9dc76",
  base0C = "#b5b01d",
  base0D = "#05b0bd",
  base0E = "#c93e71",
  base0F = "#c47cbf",
}

M.type = "dark"

M.polish_hl = {
  -- Repeat = { fg = M.base_30.red },
  -- Conditional = { fg = M.base_30.red },
  -- Operator = { fg = M.base_30.red },
  Type = { fg = M.base_30.red },

  ["@parameter"] = {
    fg = M.base_30.pink,
  },

  ["@attribute"] = {
    fg = M.base_30.purple,
  },
  ["@keyword.return"] = { fg = M.base_30.red },
  ["@boolean"] = { fg = M.base_16.base09 },
  ["@operator"] = { fg = M.base_30.red },
}
-- ["@variable"] = { fg = M.base_30.white },
-- ["@string"] = { fg = M.base_30.sun },
-- ["@punctuation.bracket"] = { fg = M.base_30.sun },
-- ["@field.key"] = { fg = M.base_30.white },

M = require("base46").override_theme(M, "breaded-suprising-blueberry")

return M
