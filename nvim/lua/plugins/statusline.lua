vim.api.nvim_set_hl(0, 'StatusLine', { bg = '#ffffff', fg = '#000000' })

vim.opt.statusline = table.concat({
  " ",
  "%<",
  -- Git Branch
  "%{%",
  "luaeval",
  "('",
  "vim.system({''git'',''rev-parse'',''--is-inside-work-tree''}):wait().code == 0 and ",
  "''Git(''.. vim.trim(vim.system({''git'',''branch'',''--show-current''}):wait().stdout) .. '')'' or ''''",
  "')",
  "%}",
  " ",
  -- File name
  "[%t] %h%w%m%r",
  "%=",
  -- Diagnostic
  "%{%",
  "luaeval",
  "('",
  "(package.loaded[''vim.diagnostic''] and next(vim.diagnostic.count())) and ",
  "vim.diagnostic.status() or ''''",
  "')",
  "%}",
  " ",
  -- LSP Client
  "%{%",
  "luaeval",
  "('",
  "package.loaded[''vim.lsp''] and ",
  "''LSP('' .. table.concat(vim.tbl_map(function(client) return client.name end, vim.lsp.get_clients()), '','') .. '')'' or ''''",
  "')",
  "%}",
  " | ",
  -- File Format
  "%y %{&fileencoding} %{&fileformat}",
  " | ",
  -- Position Cursor
  "[%l,%c %P]",
  " ",
})
