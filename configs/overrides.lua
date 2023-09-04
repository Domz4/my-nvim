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
    "pyright",
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
    -- | Python
    "pyright",
    "mypy",
    "ruff",
    "black",
    "debugpy",
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
        row = 0.08,
        col = 0.1,
        width = 0.8,
        height = 0.8,
      },
    },
  },
}

return M
