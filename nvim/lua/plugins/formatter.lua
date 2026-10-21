vim.pack.add({
  { src = 'https://github.com/stevearc/conform.nvim', name = 'conform' },
})

require('conform').setup({
  formatters_by_ft = {
    lua = { "stylua" },
    html = { "prettierd", "prettier" },
    css = { "prettierd", "prettier" },
    javascript = { "prettierd", "prettier" },
    typescript = { "prettierd", "prettier" },
    javascriptreact = { "prettierd", "prettier" },
    typescriptreact = { "prettierd", "prettier" },
    json = { "prettierd", "prettier" },
    yaml = { "prettierd", "prettier" },
    markdown = { "prettierd", "prettier" },
    nix = { "nixfmt" },
    python = { "ruff_format" },
    sh = { "shfmt" },
    rust = { "rustfmt" },
    go = { "gofmt" },
  },
})

vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*',
  callback = function(args)
    require("conform").format({ bufnr = args.buf })
  end
})
