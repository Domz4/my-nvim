-- credits to original radium theme from https://github.com/dharmx
-- this is a modified version of it

local M = {}

M.base_30 = {
  white = "#ffffff",
  darker_black = "#0a0d11",
  black = "#101317",
  black2 = "#191d22",
  one_bg = "#212428",
  one_bg2 = "#292c30",
  one_bg3 = "#33363a",
  grey = "#3e4145",
  grey_fg = "#45484c",
  grey_fg2 = "#4a4d51",
  light_grey = "#525559",
  red = "#ff0044",
  baby_pink = "#ff8e8e",
  pink = "#ffa7a7",
  line = "#30303a", -- for lines like vertsplit
  green = "#37d99e",
  vibrant_green = "#79dcaa",
  blue = "#7ab0df",
  nord_blue = "#87bdec",
  yellow = "#fad540",
  sun = "#ffed86",
  purple = "#c367d8",
  dark_purple = "#662a9b",
  teal = "#63b3ad",
  orange = "#f0a988",
  cyan = "#50cad2",
  statusline_bg = "#15191e",
  lightbg = "#24282d",
  pmenu_bg = "#3bdda2",
  folder_bg = "#2fa0ff",
}

M.base_16 = {
  base00 = "#101317",
  base01 = "#1a1d21",
  base02 = "#23262a",
  base03 = "#2b2e32",
  base04 = "#323539",
  base05 = "#e5e5e6",
  base06 = "#cbcbcc",
  base07 = "#e4e4f5",
  base08 = "#ff0044",
  base09 = "#8be9fd",
  base0A = "#f1fa8c",
  base0B = "#50fa7b",
  base0C = "#8062e0",
  base0D = "#45b2f5",
  base0E = "#bd83f9",
  base0F = "#f879b9",
}

M.polish_hl = {
  ["@punctuation.bracket"] = { fg = M.base_16.base07 },
  ["@parenthesis"] = { link = "@punctuation.bracket" },
}

M.type = "dark"

M = require("base46").override_theme(M, "nighthawk")
return M
