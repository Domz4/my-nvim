---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "nighthawk",
  theme_toggle = { "nightfox", "one_light" },

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
    --
    --   buttons = {
    --     { "  Find File", "Spc f f", "Telescope find_files" },
    --     { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
    --     { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
    --     { "  Bookmarks", "Spc m a", "Telescope marks" },
    --     { "  Themes", "Spc t h", "Telescope themes" },
    --     { "  Mappings", "Spc c h", "NvCheatsheet" },
    -- },
  },
}

M.plugins = "custom.plugins"
-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
