---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "oxocarbon",
  theme_toggle = { "oxocarbon", "oxocarbon" },

  hl_override = highlights.override,
  hl_add = highlights.add,
  transparency = true,
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

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
