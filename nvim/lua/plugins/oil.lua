vim.pack.add({
  { src = 'https://github.com/stevearc/oil.nvim', name = 'oil'}
})

require('oil').setup({
  columns = {
    'icon',
    'permissions',
    'size',
    'mtime',
  }
})

vim.keymap.set('n', '-', function() vim.cmd.Oil('--float') end, { desc = 'Open current directory (Oil)' })
