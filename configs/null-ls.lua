local null_ls = require "null-ls"
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local b = null_ls.builtins

local sources = {
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css", "javascript", "typescript", "reacttypecript" } },
  b.formatting.stylua,
  b.formatting.clang_format.with { filetypes = { "c", "cpp", "cs", "cuda", "proto" } },
  b.formatting.black,
  b.formatting.stylish_haskell,
  b.formatting.latexindent,
  b.formatting.google_java_format,

  b.diagnostics.cppcheck,
  b.diagnostics.ruff,
  b.diagnostics.mypy,
  b.diagnostics.eslint,
  b.diagnostics.checkstyle.with {
    extra_args = { "-c", "/google_checks.xml" }, -- or "/sun_checks.xml" or path to self written rules
  },
}

null_ls.setup {
  debug = true,
  sources = sources,
  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format { bufnr = bufnr }
        end,
      })
    end
  end,
}
