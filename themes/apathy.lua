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

-- check https://github.com/chriskempson/base16/blob/master/styling.md for more info
M.base_16 = {
  base00 = "#031a16",
  base01 = "#0b342d",
  base02 = "#184e45",
  base03 = "#2b685e",
  base04 = "#5f9c92",
  base05 = "#81b5ac",
  base06 = "#a7cec8",
  base07 = "#d2e7e4",
  base08 = "#3e9688",
  base09 = "#3e7996",
  base0A = "#3e4c96",
  base0B = "#883e96",
  base0C = "#963e4c",
  base0D = "#96883e",
  base0E = "#4c963e",
  base0F = "#3e965b",
}

-- OPTIONAL
-- overriding highlights for this specific theme only
M.polish_hl = {
  Comment = {
    bg = "#ffffff", -- or M.base_30.cyan
  },
}

-- set the theme type whether is dark or light
M.type = "dark" -- "or light"

-- this will be later used for users to override your theme table from chadrc
M = require("base46").override_theme(M, "apathy")

return M
