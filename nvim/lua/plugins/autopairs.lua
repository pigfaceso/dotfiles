vim.api.nvim_create_autocmd('InsertEnter', { once = true, callback = function ()
  vim.pack.add({
    { src = 'https://github.com/windwp/nvim-autopairs', name = 'nvim-autopairs' },
    { src = 'https://github.com/windwp/nvim-ts-autotag', name = 'nvim-ts-autotag' },
  })
  require('nvim-autopairs').setup()

  require('nvim-ts-autotag').setup()
end })
