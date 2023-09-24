local M = {}

M.base_30 = {
  white = "#F8F8F2",
  darker_black = "#182030",
  black = "#172030", --  nvim bg
  black2 = "#202c42",
  one_bg = "#283854", -- real bg of onedark
  one_bg2 = "#3E5782",
  one_bg3 = "#586885",
  grey = "#5f6d87",
  grey_fg = "#6272a4",
  grey_fg2 = "#536380",
  light_grey = "#506487",
  red = "#ff0070",
  baby_pink = "#ff86d3",
  pink = "#FF79C6",
  line = "#3c3d49", -- for lines like vertsplit
  green = "#4ABA91",
  vibrant_green = "#65E6B6",
  nord_blue = "#8b9bcd",
  blue = "#a1b1e3",
  yellow = "#F1FA8C",
  sun = "#FFFFA5",
  purple = "#BD93F9",
  dark_purple = "#BD93F9",
  teal = "#92a2d4",
  orange = "#FFB86C",
  cyan = "#8BE9FD",
  statusline_bg = "#202c42",
  lightbg = "#3E5782",
  pmenu_bg = "#b389ef",
  folder_bg = "#657eab",
}

M.base_16 = {
  base00 = "#172030",
  base01 = "#202c42",
  base02 = "#283854",
  base03 = "#3E5782",
  base04 = "#e9b984",
  base05 = "#e9e9f4",
  base06 = "#f1f2f8",
  base07 = "#f7f7fb",
  base08 = "#db6e8f",
  base09 = "#c6878f",
  base0A = "#f7e3af",
  base0B = "#a3c09a",
  base0C = "#d965ac",
  base0D = "#f9b5ac",
  base0E = "#b16bb1",
  base0F = "#d0d6b5",
}

M.polish_hl = {
  ["@function.builtin"] = { fg = M.base_30.base0C },
  ["@number"] = { fg = M.base_30.purple },
}

M.type = "dark"

M = require("base46").override_theme(M, "rouge")
return M
