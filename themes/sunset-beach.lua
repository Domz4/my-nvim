-- credits to original theme for existing https://github.com/BeardedBear/bearded-theme ( arc version )
-- This is just a modified version of it

local M = {}

M.base_30 = {
  white = "#ABB7C1",
  darker_black = "#13191A",
  black = "#13191A", -- nvim bg
  black2 = "#282E2F",
  one_bg = "#3C4142",
  one_bg2 = "#4E5253",
  one_bg3 = "#3a4251",
  grey = "#444c5b",
  grey_fg = "#4e5665",
  grey_fg2 = "#58606f",
  light_grey = "#626a79",
  red = "#D64550",
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
  base00 = "#13191A",
  base01 = "#282E2F",
  base02 = "#3C4142",
  base03 = "#4E5253",
  base04 = "#a1adb7",
  base05 = "#FFd9dD",
  base06 = "#ABB7C1",
  base07 = "#FAA2FF",
  base08 = "#FA9E9D",
  base09 = "#FF90bA",
  base0A = "#f36087",
  base0B = "#FFE29D",
  base0C = "#106f70",
  base0D = "#208f90",
  base0E = "#22ECDB",
  base0F = "#A8FFEE",
}

M.type = "dark"

M.polish_hl = {
  Conditional = {
    fg = M.base_30.yellow,
  },
  ["@variable"] = { fg = M.base_16.base05 },
  ["@punctuation.bracket"] = { fg = M.base_30.baby_pink },
  ["@method.call"] = { fg = M.base_30.red },
  ["@function.call"] = { fg = M.base_30.blue },
  ["@constant"] = { fg = M.base_30.orange },
  ["@parameter"] = { fg = M.base_30.orange },
}

M = require("base46").override_theme(M, "sunset-beach")

return M
