vim.pack.add({
  { src = 'https://codeberg.org/andyg/leap.nvim', name = 'leap' },
})

vim.keymap.set({ 'n', 'x', 'o' }, 's', '<Plug>(leap)')
vim.keymap.set('n',               'S', '<Plug>(leap-from-window)')
