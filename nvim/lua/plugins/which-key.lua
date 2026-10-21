vim.pack.add({
  { src = 'https://github.com/folke/which-key.nvim', name = 'which-key' },
})

require('which-key').setup({
  preset = 'helix',
  colors = false,
})

require('which-key').add({
  { '<leader>f', group = 'Find' },
  { '<leader>g', group = 'Git' },
  { '<leader>l', group = 'LSP' },
  { '<leader>w', group = 'vimwiki' },
  { '<leader>R', group = 'Kulala' },
})
