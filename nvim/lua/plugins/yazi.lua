vim.pack.add({
  { src = 'https://github.com/mikavilpas/yazi.nvim', name = 'yazi' },
})

vim.keymap.set('n', '<leader>ee', '<cmd>Yazi<cr>' , { desc = 'Yazi (Current)' })
vim.keymap.set('n', '<leader>ew', '<cmd>Yazi cwd<cr>' , { desc = 'Yazi (Work Dir)' })
vim.keymap.set('n', '<leader>er', '<cmd>Yazi toggle<cr>' , { desc = 'Yazi (Resume)' })
