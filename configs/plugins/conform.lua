local conform = require "conform"

conform.setup {
  formatters_by_ft = {
    c = { "clang_format" },
    cpp = { "clang_format" },
    markdown = { { "prettierd", "prettier" } },
    lua = { "stylua" },
    python = { "black" },
    javascript = { { "prettierd", "prettier" } },
    haskell = { "fourmolu" },
    java = { "google_java_format" },
    rust = { "rustfmt" },
    -- tex = { "latexindent" },
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
