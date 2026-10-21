vim.pack.add({
  { src = 'https://github.com/tpope/vim-fugitive' },
  { src = 'https://github.com/lewis6991/gitsigns.nvim', name = 'gitsigns' },
})
vim.keymap.set('n', '<leader>gg',function() vim.cmd.Git() end, { desc = 'Git (fugitive)' })
vim.keymap.set('n', '<leader>gl', function() vim.cmd.Git('log --oneline --graph --parents --decorate') end, { desc = 'Git log (fugitive)' })
