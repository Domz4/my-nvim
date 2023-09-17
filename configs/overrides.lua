local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- | Lua
    "lua-language-server",
    "stylua",
    -- | Front
    "eslint-lsp",
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
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
    "haskell-language-server",
  },
}

-- git support in nvimtree
M.nvimtree = {
  on_attach = require "custom.configs.plugins.nvim-tree",
  git = {
    enable = true,
  },

  renderer = {
    root_folder_label = true,
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.nvterm = {
  terminals = {
    type_opts = {
      float = {
        relative = "editor",
        row = 0.04,
        col = 0.05,
        width = 0.9,
        height = 0.9,
      },
    },
  },
}

return M
