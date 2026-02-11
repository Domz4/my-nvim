local conform = require "conform"

conform.setup {
  formatters_by_ft = {
    c = { "clang_format" },
    cpp = { "clang_format" },
    -- markdown = { "prettierd", "prettier", stop_after_first = true },
    nix = { "nixfmt" },
    xml = { "xmlformat" },
    lua = { "stylua" },
    python = { "black" },
    javascript = { "prettierd", "prettier", stop_after_first = true },
    haskell = { "fourmolu" },
    rust = { "rustfmt" },
    sh = { "shfmt" },
    json = { "prettier" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

conform.formatters.rustfmt = {
  options = {
    default_edition = "2021",
  },
}
