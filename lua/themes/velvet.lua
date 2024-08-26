local M = {}

M.base_30 = {
  white = "#ced4df",
  darker_black = "#05080e",
  black = "#071018", --  nvim bg
  black2 = "#08141D",
  one_bg = "#0E1E29",
  one_bg2 = "#162835",
  one_bg3 = "#253B4C",
  grey = "#334F62",
  grey_fg = "#405666",
  grey_fg2 = "#4E606D",
  light_grey = "#5F788A",
  red = "#EF3054",
  baby_pink = "#FF8BB2",
  pink = "#ff6087",
  line = "#24272d", -- for lines like vertsplit
  green = "#7BE0AD",
  vibrant_green = "#37FF9B",
  blue = "#386990",
  nord_blue = "#567E9C",
  yellow = "#E7C547",
  sun = "#f0df8a",
  purple = "#A09BE7",
  dark_purple = "#7973CC",
  teal = "#74c5aa",
  orange = "#F4c19E",
  cyan = "#95E6CB",
  statusline_bg = "#112130",
  lightbg = "#182735",
  pmenu_bg = "#ff9445",
  folder_bg = "#C5D8D1",
}

M.base_16 = {
  base00 = "#071018",
  base01 = "#08141D",
  base02 = "#0E1E29",
  base03 = "#162835",
  base04 = "#253B4C",
  base05 = "#ecd3e6",
  base06 = "#c3e8f5",
  base07 = "#8C93A8",
  base08 = "#A7BED3",
  base09 = "#FFEE77",
  base0A = "#CEF9F2",
  base0B = "#CCFF9D",
  base0C = "#AB92BF",
  base0D = "#9671ae",
  base0E = "#b59bc6",
  base0F = "#d5c6de",
}

M.polish_hl = {
  luaTSField = { fg = M.base_16.base0D },
  ["@tag.delimiter"] = { fg = M.base_30.cyan },
  ["@function"] = { fg = M.base_30.purple },
  ["@parameter"] = { fg = M.base_16.base0F },
  ["@constructor"] = { fg = M.base_16.base0A },
  ["@tag.attribute"] = { fg = M.base_30.orange },
}

M = require("base46").override_theme(M, "velvet")

M.type = "dark"

return M
