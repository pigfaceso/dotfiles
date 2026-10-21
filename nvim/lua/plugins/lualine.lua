vim.pack.add({
  { src = 'https://github.com/nvim-lualine/lualine.nvim', name = 'lualine' },
})

require('lualine').setup({
  tabline = {
    lualine_a = {'buffers'},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {'tabs'}
  }
})
