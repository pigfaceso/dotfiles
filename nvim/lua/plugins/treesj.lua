vim.pack.add({
  { src = 'https://github.com/wansmer/treesj' }
})

vim.keymap.set('n', '<leader>s', require('treesj').toggle, { desc = 'treesj toggle' })

vim.keymap.set('n', '<leader>S', function()
  require('treesj').toggle({ split = { recursive = true } })
end, { desc = 'treesj toggle recursive' })
