---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "highlights"

M.ui = {
  theme = "jabuti",
  theme_toggle = { "jabuti", "jabuti" },

  hl_override = highlights.override,
  hl_add = highlights.add,
  transparency = false,

  nvdash = {
    load_on_startup = true,
    header = {
      "       __   __ _______ ___  ",
      "    /\\(_ \\ / _|   _   ) _ \\ ",
      "   /  \\ \\ v /  | | | | |_| |",
      "  / /\\ \\ | |   | | | |  _  |",
      " / /__\\ \\| |   | | | | | | |",
      "/________\\_|   |_| |_|_| |_|",
    },
  },
}

return M
