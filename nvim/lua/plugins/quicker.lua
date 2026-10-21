vim.pack.add({
  { src = 'https://github.com/stevearc/quicker.nvim', name = 'quicker'}
})

require('quicker').setup()

vim.keymap.set('n', '<leader>q', function() require('quicker').toggle({ focus = true, height = 8 }) end, { desc = 'Toggle quickfix (quicker)', silent = true })
vim.keymap.set('n', '<leader>d', function() vim.diagnostic.setqflist() require('quicker').open({ focus = true, height = 8 }) end, { desc = 'Diagnostic quickfix (quicker)', silent = true })
