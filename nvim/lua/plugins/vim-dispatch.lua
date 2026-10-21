vim.pack.add({
  { src = 'https://github.com/tpope/vim-dispatch' },
})

vim.keymap.set('n', '<leader>m', function()
  vim.cmd.wall()
  vim.cmd.Make()
end, { desc = 'Make (vim-dispatch)', silent = true })
