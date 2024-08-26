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
    "java",
    -- "latex",
  },
  indent = {
    enable = true,
  },
}

M.mason = {
  ensure_installed = {
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
}

-- git support in nvimtree
M.nvimtree = {
  on_attach = require "configs.plugins.nvim-tree",
  -- filters = {
  --   dotfiles = true,
  -- },

  view = {
    width = 50,
  },

  git = {
    enable = true,
    ignore = false,
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
  ui = {
    confirm = {
      remove = true,
      trash = true,
    },
  },
  log = {
    enable = false,
    truncate = false,
    types = {
      all = false,
      config = false,
      copy_paste = false,
      dev = false,
      diagnostics = false,
      git = false,
      profile = false,
      watcher = false,
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

M.Whichkey = {
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 0
  end,
}

return M
