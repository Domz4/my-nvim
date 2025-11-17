local overrides = require "configs.overrides"

local plugins = {
  {
    "supermaven-inc/supermaven-nvim",
    lazy = false,
    config = function()
      require("supermaven-nvim").setup {
        keymaps = {
          accept_suggestion = "<C-a>",
          clear_suggestion = "<C-]>",
          accept_word = "<C-j>",
        },
        color = {
          suggestion_color = "#ff0054",
          cterm = 244,
        },
      }
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      table.insert(opts.sources, { name = "vim-dadbod-completion" })
    end,
  },
  {
    "kristijanhusak/vim-dadbod-ui",
    dependencies = {
      { "tpope/vim-dadbod", lazy = true },
      { "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true },
    },
    cmd = {
      "DBUI",
      "DBUIToggle",
      "DBUIAddConnection",
      "DBUIFindBuffer",
    },
    init = function()
      vim.g.db_ui_use_nerd_fonts = 1
    end,
  },
  { "mg979/vim-visual-multi", lazy = false },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 2000
    end,
  },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    requires = { "nvim-lua/plenary.nvim" },
    config = function()
      require "configs.plugins.harpoon"
    end,
    keys = {
      {
        "<leader>a",
        function()
          require("harpoon"):list():add()
        end,
        desc = "harpoon file",
      },
      {
        "<leader>dd",
        function()
          require("harpoon"):list():remove()
        end,
        desc = "harpoon delete file",
      },
      {
        "<leader>k",
        function()
          require("harpoon"):list():next()
        end,
        desc = "harpoon next",
      },
      {
        "<leader>j",
        function()
          require("harpoon"):list():prev()
        end,
        desc = "harpoon prev",
      },
    },
  },
  { "nvim-neotest/nvim-nio" },
  { "aca/emmet-ls" },
  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles" },
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
  {
    "lervag/vimtex",
    lazy = false,
    config = function()
      vim.g.vimtex_view_general_viewer = "zathura"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "nvimtools/none-ls.nvim",
        config = function()
          require "configs.null-ls"
        end,
      },
      {
        "stevearc/conform.nvim",
        config = function()
          require "configs.plugins.conform"
        end,
      },
    },
    config = function()
      require "nvchad.configs.lspconfig"
      require "configs.lspconfig"
    end,
  },
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = "TroubleToggle",
    opts = { position = "bottom", width = 55 },
  },
  {
    "mrcjkb/haskell-tools.nvim",
    version = "^3",
    ft = { "haskell", "lhaskell", "cabal", "cabalproject" },
  },
  -- overrides default settings
  {
    "nvim-tree/nvim-tree.lua",
    opts = function()
      return require "configs.plugins.nvim-tree-opts"
    end,
  },

  -- enable this when you want to use scala

  -- {
  --   "scalameta/nvim-metals",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --   },
  --   ft = { "scala", "sbt", "java" },
  --   config = function()
  --     local metals = require "metals"
  --     local on_attach = require("nvchad.configs.lspconfig").on_attach
  --     local capabilities = require("nvchad.configs.lspconfig").capabilities
  --
  --     local metals_config = metals.bare_config()
  --     metals_config.on_attach = on_attach
  --     metals_config.capabilities = capabilities
  --     metals_config.init_options.statusBarProvider = "on"
  --
  --     local nvim_metals_group = vim.api.nvim_create_augroup("nvim-metals", { clear = true })
  --
  --     vim.api.nvim_create_autocmd("FileType", {
  --       pattern = { "scala", "sbt", "java" },
  --       callback = function()
  --         metals.initialize_or_attach(metals_config)
  --       end,
  --       group = nvim_metals_group,
  --     })
  --   end,
  -- },
  --
  -- {
  --   "zbirenbaum/copilot-cmp",
  --   config = function()
  --     require("copilot_cmp").setup()
  --   end,
  -- },
  -- {
  --   "zbirenbaum/copilot.lua",
  --   cmd = "Copilot",
  --   event = "InsertEnter",
  --   config = function()
  --     require("copilot").setup {}
  --   end,
  -- },
  -- {
  --   "EggbertFluffle/beepboop.nvim",
  --   lazy = false,
  --   opts = {
  --     audio_player = "paplay",
  --     volume = 50,
  --     sound_directory = "/home/DomzeMahinePC/.config/nvim/sounds",
  --     sound_map = {
  --       { key_map = { mode = "n", key_chord = "<leader>pv" }, sound = "chestopen.oga" },
  --       { key_map = { mode = "n", key_chord = "<C-Enter>" }, sound = "chestopen.oga" },
  --       { auto_command = "VimEnter", sound = "chestopen.oga" },
  --       { auto_command = "VimLeave", sound = "chestclosed.oga" },
  --       {
  --         auto_command = "InsertCharPre",
  --         sounds = {
  --           "deepslate1.ogg",
  --           "deepslate3.ogg",
  --           "deepslate3.ogg",
  --           "deepslate4.ogg",
  --           "deepslate5.ogg",
  --           "deepslate6.ogg",
  --         },
  --       },
  --       -- { auto_command = "InsertCharPre", sounds = { "stone1.oga", "stone2.oga", "stone3.oga", "stone4.oga" } },
  --       { auto_command = "TextYankPost", sounds = { "classic_hurt.mp3" } },
  --       -- { auto_command = "BufWrite", sounds = { "open_flip1.oga", "open_flip2.oga", "open_flip3.oga" } },
  --       {
  --         auto_command = "BufWrite",
  --         sounds = {
  --           "villager1.ogg",
  --           "villager2.ogg",
  --           "villager3.ogg",
  --           "villager4.ogg",
  --           "villager5.ogg",
  --           "villager6.ogg",
  --         },
  --       },
  --     },
  --   },
  -- },
  -- debugger fix needed as core folder no longer exist
  -- {
  --   "mfussenegger/nvim-dap",
  --   config = function(_, opts)
  --     require "configs.plugins.dap"
  --     require("core.utils").load_mappings "dap"
  --   end,
  -- },
  -- {
  --   "mfussenegger/nvim-dap-python",
  --   ft = "python",
  --   dependencies = {
  --     "mfussenegger/nvim-dap",
  --     "rcarriga/nvim-dap-ui",
  --   },
  --   config = function(_, opts)
  --     local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
  --     require("dap-python").setup(path)
  --     require("core.utils").load_mappings "dap_python"
  --   end,
  -- },
  -- {
  --   "rcarriga/nvim-dap-ui",
  --   event = "VeryLazy",
  --   dependencies = "mfussenegger/nvim-dap",
  --   config = function()
  --     local dap = require "dap"
  --     local dapui = require "dapui"
  --     dapui.setup()
  --     dap.listeners.after.event_initialized["dapui_config"] = function()
  --       dapui.open()
  --     end
  --     dap.listeners.before.event_terminated["dapui_config"] = function()
  --       dapui.close()
  --     end
  --     dap.listeners.before.event_exited["dapui_config"] = function()
  --       dapui.close()
  --     end
  --   end,
  -- },
  -- {
  --   "mikesmithgh/kitty-scrollback.nvim",
  --   enabled = true,
  --   lazy = true,
  --   cmd = { "KittyScrollbackGenerateKittens", "KittyScrollbackCheckHealth" },
  --   event = { "User KittyScrollbackLaunch" },
  --   -- version = '*', -- latest stable version, may have breaking changes if major version changed
  --   -- version = '^5.0.0', -- pin major version, include fixes and features that do not have breaking changes
  --   config = function()
  --     require("kitty-scrollback").setup()
  --   end,
  -- },
}

return plugins
