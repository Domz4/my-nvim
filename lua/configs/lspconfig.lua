local on_attach = require("nvchad.configs.lspconfig").on_attach
local capabilities = require("nvchad.configs.lspconfig").capabilities
local cmp_nvim_lsp = require "cmp_nvim_lsp"
local util = require "lspconfig/util"
local lspconfig = require "lspconfig"

capabilities.textDocument.completion.completionItem.snippetSupport = true

local servers = {
  "html",
  "cssls",
  "tsserver",
  "pyright",
  "texlab",
  "jdtls",
  "vuels",
  -- "rust_analyzer",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.rust_analyzer.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "rust" },
  cmd = { "rustup", "run", "stable", "rust-analyzer" },
  root_dir = util.root_pattern "Cargo.toml",
  settings = {
    ["rust-analyzer"] = {
      cargo = {
        allFeatures = true,
      },
    },
  },
}

lspconfig.clangd.setup {
  on_attach = on_attach,
  capabilities = cmp_nvim_lsp.default_capabilities(),
  cmd = {
    "clangd",
    "--offset-encoding=utf-16",
  },
}

lspconfig.emmet_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {
    "css",
    "html",
    "javascript",
    "javascriptreact",
    "less",
    "sass",
    "scss",
    "svelte",
    "pug",
    "typescriptreact",
    "vue",
  },
  init_options = {
    html = {
      options = {
        ["bem.enabled"] = true,
        ["jsx.enabled"] = true,
      },
    },
  },
}
