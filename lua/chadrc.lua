---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "highlights"

M.base46 = {
  theme = "domze",
  theme_toggle = { "domze", "domze" },
}

M.ui = {
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
  lsp = { signature = true },
  mason = {
    cmd = true,
    pkgs = {
      "rust-analyzer",
      "checkstyle",
      "java-language-server",
      "google-java-format",
      "texlab",
      "latexindent",
      -- | Lua
      "lua-language-server",
      "stylua",
      -- | Front
      "eslint-lsp",
      "css-lsp",
      "html-lsp",
      "typescript-language-server",
      "prettier",
      -- | C fam
      "clangd",
      "clang-format",
      "codeldb",
      -- | Python
      "pyright",
      "mypy",
      "ruff",
      "black",
      "debugpy",
      -- | Haskell
      -- "haskell-language-server",
    },
  },
}

return M
