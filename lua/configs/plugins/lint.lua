require("lint").linters_by_fy = {
  python = { "mypy" },
  markdown = { "markdownlint" },
  -- lua = { "luacheck" },
  -- javascript = { "eslint_d" },
  -- typescript = { "eslint_d" },
  -- typescriptreact = { "eslint_d" },
  -- javascriptreact = { "eslint_d" },
  -- vue = { "eslint_d" },
  -- cpp = { "cppcheck" },
  -- c = { "checkstyle" },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
