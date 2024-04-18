local M = {}

M.base_30 = {
  white = "#F8F8F2",
  darker_black = "#091212",
  black = "#091212",  --  nvim bg
  black2 = "#181D1C",
  one_bg = "#3C403F", -- real bg of onedark
  one_bg2 = "#242929",
  one_bg3 = "#4E5150",
  grey = "#5E6160",
  grey_fg = "#6272a4",
  grey_fg2 = "#656670",
  light_grey = "#73747e",
  red = "#ff0055",
  baby_pink = "#ff86d3",
  pink = "#FF79C6",
  line = "#3c3d49", -- for lines like vertsplit
  green = "#50fa7b",
  vibrant_green = "#5dff88",
  nord_blue = "#5babcd",
  blue = "#21BDB5",
  yellow = "#F1FA8C",
  sun = "#FFFFA5",
  purple = "#cDb3Ff",
  dark_purple = "#BD93F9",
  teal = "#53ABA7",
  orange = "#FFB89C",
  cyan = "#8BE9FD",
  statusline_bg = "#212B2A",
  lightbg = "#2D3634",
  pmenu_bg = "#b389ef",
  folder_bg = "#ff6ff9",
}

M.base_16 = {
  base00 = "#091212",
  base01 = "#242B2A",
  base02 = "#3C403F",
  base03 = "#4E5150",
  base04 = "#62d6e8",
  base05 = "#DEFFFC",
  base06 = "#ffffff",
  base07 = "#73949C",
  base08 = "#309Cb7",
  base09 = "#95BBC4",
  base0A = "#3edb84",
  base0B = "#ddb350",
  base0C = "#9bf9fd",
  base0E = "#aF8DfA",
  base0D = "#FF0055",
  base0F = "#FFFFFF",
}

M.polish_hl = {
  ["@function.builtin"] = { fg = M.base_30.cyan },
  ["@punctuation.bracket"] = { fg = "#008C97" },
  ["@function.call"] = { fg = M.base_30.blue },
  ["@constant"] = { fg = M.base_30.purple },
  ["@parameter"] = { fg = M.base_30.red },
  ["@keyword"] = { fg = M.base_30.red },
  ["@field.key"] = { fg = M.base_30.red },
  ["@number"] = { fg = M.base_30.red },
  ["@tag.delimiter"] = { fg = M.base_30.red },
}

M.type = "dark"

M = require("base46").override_theme(M, "domze")
return M
