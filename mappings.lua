local M = {}

M.general = {
  n = {
    -- have to redeclare ctl + e,b idk why
    ["<C-b>"] = { "<ESC>^i", "Beginning of line" },
    ["<C-e>"] = { "<End>", "End of line" },
    -- harpoon
    ["<leader>lx"] = {
      function()
        local harpoon = require "harpoon"
        harpoon:list():add()
      end,
      "harpoon mark file",
    },
    -- harpoon
    ["<leader>ld"] = {
      function()
        local harpoon = require "harpoon"
        harpoon:list():remove()
      end,
      "harpoon delete file",
    },

    ["<leader>lk"] = {
      function()
        local harpoon = require "harpoon"
        harpoon:list():next()
      end,
      "harpoon next",
    },
    ["<leader>lj"] = {
      function()
        local harpoon = require "harpoon"
        harpoon:list():prev()
      end,
      "harpoon prev",
    },
    ["<leader>lt"] = { "<cmd> Telescope harpoon marks<CR>", "harpoon Telescope" },
    ["<leader>y"] = { "<cmd> %y <CR>", "copy entire file" },
    ["<leader>h"] = { "<cmd> nohlsearch <CR>", "clear search result" },
    ["<leader>ff"] = { "<cmd> Telescope <CR>", "Telescope" },
    ["<leader>tt"] = { "<cmd> TroubleToggle <CR>", "Trouble" },
    ["<leader>ts"] = {
      function()
        require("base46").toggle_transparency()
      end,
      "Toggle transparency",
    },
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<A-k>"] = { ":m .-2<CR>==" },
    ["<A-j>"] = { ":m .+1<CR>==" },
    ["<C-]>"] = { "<cmd>lua vim.lsp.buf.definition()<CR>" },
  },
  v = {
    ["<A-j>"] = { ":m '>+1<CR>gv-gv" },
    ["<A-k>"] = { ":m '<-2<CR>gv-gv" },
  },
  i = {
    ["<A-j>"] = { "<Esc>:m .+1<CR>==gi" },
    ["<A-k>"] = { "<Esc>:m .-2<CR>==gi" },
  },
}
M.nvimtree = {
  plugin = true,
  n = {
    ["<C-n>"] = { "<cmd> NvimTreeFocus <CR>", "Toggle nvimtree" },
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "Focus nvimtree" },
  },
}
M.nvterm = {
  t = {
    ["<A-3>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term",
    },

    ["<A-2>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "Toggle horizontal term",
    },

    ["<A-1>"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "Toggle vertical term",
    },
  },

  n = {
    ["<A-3>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term",
    },

    ["<A-2>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "Toggle horizontal term",
    },

    ["<A-1>"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "Toggle vertical term",
    },

    ["<leader>1"] = {
      function()
        require("nvterm.terminal").new "horizontal"
      end,
      "New horizontal term",
    },

    ["<leader>2"] = {
      function()
        require("nvterm.terminal").new "vertical"
      end,
      "New vertical term",
    },
    ["<leader>3"] = {
      function()
        require("nvterm.terminal").new "float"
      end,
      "New float term",
    },
  },
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = { "<cmd> DapToggleBreakpoint <CR>" },
  },
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dp"] = {
      function()
        require("dap-python").test_method()
      end,
      "Trigger debug tests",
    },
  },
}

return M
