local eslint = require "efmls-configs.linters.eslint"
local ruff = require "efmls-configs.linters.ruff"
local mypy = require "efmls-configs.linters.mypy"
local on_attach = require("nvchad.configs.lspconfig").on_attach
local capabilities = require("nvchad.configs.lspconfig").capabilities

local languages = {
  python = { ruff, mypy },
  javascript = { eslint },
}
-- lua = { stylua },
-- typescript = { b "eslint_d" },
-- typescriptreact = { b "eslint_d" },
-- javascriptreact = { b "eslint_d" },
-- vue = { b "eslint_d" },
-- cpp = { b "cppcheck" },
-- c = { b "checkstyle" },
require("lspconfig").efm.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = vim.tbl_keys(languages),
  settings = {
    languages = languages,
  },
  init_options = {
    documentFormatting = true,
    documentRangeFormatting = true,
  },
}

local lsp_fmt_group = vim.api.nvim_create_augroup("LspFormattingGroup", {})
vim.api.nvim_create_autocmd("BufWritePost", {
  group = lsp_fmt_group,
  callback = function(ev)
    local efm = vim.lsp.get_active_clients { name = "efm", bufnr = ev.buf }

    if vim.tbl_isempty(efm) then
      return
    end
    vim.lsp.buf.format { name = "efm" }
  end,
})
