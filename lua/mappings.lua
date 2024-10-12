require "nvchad.mappings"
local M = {}
local map = vim.keymap.set

map("n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", { desc = "flaot lsp error" })

map("n", "<leader>e", "<cmd>Telescope harpoon marks<CR>", { desc = "harpoon Telescope" })

map("n", "<leader>y", "<cmd> %y <CR>", { desc = "copy entire file" })
map("n", "<leader>h", "<cmd> nohlsearch <CR>", { desc = "clear search result" })
map("n", "<leader>ff", "<cmd> Telescope <CR>", { desc = "Telescope" })
map("n", "<leader>tt", "<cmd>Trouble diagnostics toggle<CR>", { desc = "Trouble" })
map("n", "<leader>tx", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", { desc = "Buffer Diagnostics (Trouble)" })

map("n", "<leader>ts", function()
  require("base46").toggle_transparency()
end, { desc = "Toggle transparency" })

map("n", ";", ":", { desc = "enter command mode", nowait = true })
map("n", "<A-k>", ":m .-2<CR>==")
map("n", "<A-j>", ":m .+1<CR>==")
map("n", "<C-q>", "<cmd>lua vim.lsp.buf.definition()<CR>")

-- Visual mode mappings
map("v", "<A-j>", ":m '>+1<CR>gv-gv")
map("v", "<A-k>", ":m '<-2<CR>gv-gv")

-- Insert mode mappings
map("i", "<A-j>", "<Esc>:m .+1<CR>==gi")
map("i", "<A-k>", "<Esc>:m .-2<CR>==gi")
-- nvim-tree mappings
map("n", "<leader>le", "<cmd> NvimTreeToggle <CR>", { desc = "Focus nvimtree" })

-- dap mappings
map("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", { desc = "Toggle Dap Breakpoint" })

-- dap-python mappings
map("n", "<leader>dp", function()
  require("dap-python").test_method()
end, { desc = "Trigger debug tests" })

map({ "n", "t" }, "<A-i>", function()
  require("nvchad.term").toggle {
    pos = "float",
    id = "floatTerm",
    float_opts = {
      relative = "editor",
      row = 0.03,
      col = 0.04,
      width = 0.9,
      height = 0.85,
    },
  }
end, { desc = "Terminal Toggle Floating term" })
