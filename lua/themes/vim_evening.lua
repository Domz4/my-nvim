local M = {}

M.base_30 = {
  white = "#ffffff",
  darker_black = "#4c4c4c",
  black = "#6c6c6c", --  nvim bg
  black2 = "#4c4c4c",
  one_bg = "#1c1f25",
  one_bg2 = "#24272d",
  one_bg3 = "#2b2e34",
  grey = "#33363c",
  grey_fg = "#30c5c7",
  grey_fg2 = "#46494f",
  light_grey = "#4c4c4c",
  red = "#F07178",
  baby_pink = "#ff949b",
  pink = "#ff8087",
  line = "#24272d", -- for lines like vertsplit
  green = "#AAD84C",
  vibrant_green = "#b9e75b",
  blue = "#36A3D9",
  nord_blue = "#43b0e6",
  yellow = "#E7C547",
  sun = "#f0df8a",
  purple = "#c79bf4",
  dark_purple = "#A37ACC",
  teal = "#74c5aa",
  orange = "#ffa455",
  cyan = "#95E6CB",
  statusline_bg = "#5c5c5c",
  lightbg = "#4c4c4c",
  pmenu_bg = "#ff9445",
  folder_bg = "#98a3af",
}
-- fdfasdfsda
M.base_16 = {
  base00 = "#6c6c6c",
  base01 = "#4c4c4c",
  base02 = "#2c2c2c",
  base03 = "#1c1c1c",
  base04 = "#33363c",
  base05 = "#c9c7be",
  base06 = "#E6E1CF",
  base07 = "#D9D7CE",
  base08 = "#c9c7be",
  base09 = "#30c5c7",
  base0A = "#bbe3fe",
  base0B = "#b163ab",
  base0C = "#ffffff",
  base0D = "#ffffff",
  base0E = "#eab916",
  base0F = "#dbe3ee",
}

M.polish_hl = {
  luaTSField = { fg = M.base_16.base0D },
  ["@tag.delimiter"] = { fg = M.base_30.cyan },
  ["@function"] = { fg = M.base_30.orange },
  ["@parameter"] = { fg = M.base_16.base0F },
  ["@constructor"] = { fg = M.base_16.base0A },
  ["@tag.attribute"] = { fg = M.base_30.orange },
}

M = require("base46").override_theme(M, "vim evening")

M.type = "dark"

return M
