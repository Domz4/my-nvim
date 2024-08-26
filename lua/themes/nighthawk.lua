-- credits to original radium theme from https://github.com/dharmx
-- this is a modified version of it

local M = {}

M.base_30 = {
  white = "#ffffff",
  darker_black = "#0a0d11",
  black = "#101317",
  black2 = "#191d22",
  one_bg = "#282A36",
  one_bg2 = "#292c30",
  one_bg3 = "#33363a",
  grey = "#3e4145",
  grey_fg = "#44475A",
  grey_fg2 = "#4a4d51",
  light_grey = "#74777b",
  red = "#fc0073",
  baby_pink = "#ff52be",
  pink = "#ff32b7",
  line = "#30303a", -- for lines like vertsplit
  green = "#37d99e",
  vibrant_green = "#79dcaa",
  blue = "#7ab0df",
  nord_blue = "#6272A4",
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
  folder_bg = "#22fcda",
}

M.base_16 = {
  base00 = "#101317",
  base01 = "#1a1d21",
  base02 = "#6272a4",
  base03 = "#2b2e32",
  base04 = "#323539",
  base05 = "#ffffff",
  base06 = "#FFFFFF",
  base07 = "#4e21ff",
  base08 = "#9e11ff",
  base09 = "#ff86d3",
  base0A = "#8be9fd",
  base0B = "#10ff8b",
  base0C = "#cd52fe",
  base0D = "#10b9FF",
  base0E = "#ff0055",
  base0F = "#f9b5ac",
}

M.polish_hl = {
  ["@punctuation.bracket"] = { fg = M.base_16.base07 },
  ["@parenthesis"] = { link = "@punctuation.bracket" },
}

M.type = "dark"

M = require("base46").override_theme(M, "nighthawk")
return M
