local M = {}

M.lsp = {
  ['clangd'] = 'clangd',
  ['cssls'] = 'css-lsp',
  ['bashls'] = 'bash-language-server',
  ['html'] = 'html-lsp',
  ['lua_ls'] = 'lua-language-server',
  -- ['nil_ls'] = 'nil',
  ['pyright'] = 'pyright',
  ['tailwindcss'] = 'tailwindcss-language-server',
  ['texlab'] = 'texlab',
  ['ts_ls'] = 'typescript-language-server',
  ['rust_analyer'] = 'rust-analyzer',
}

M.linter = {
  ['eslint_d'] = 'eslint_d',
}

M.formatter = {
  ['shfmt'] = 'shfmt',
  ['prettier'] = 'prettier',
}

M.debugger = {}

M.installed = vim.list_extend(vim.tbl_values(M.lsp),
vim.list_extend(vim.tbl_values(M.linter),
vim.list_extend(vim.tbl_values(M.formatter),
vim.tbl_values(M.debugger)
)))

return M
