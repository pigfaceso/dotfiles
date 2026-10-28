vim.api.nvim_create_autocmd('InsertEnter', { once = true, callback = function ()
  vim.pack.add({
    { src = 'https://github.com/nvim-mini/mini.pairs' },
    { src = 'https://github.com/windwp/nvim-ts-autotag', name = 'nvim-ts-autotag' },
  })

  require('mini.pairs').setup({
    modes = { insert = true, command = true, terminal = false },
    -- skip autopair when next character is one of these
    skip_next = [=[[%w%%%'%[%"%.%`%$]]=],
    -- skip autopair when the cursor is inside these treesitter nodes
    skip_ts = { "string" },
    -- skip autopair when next character is closing pair
    -- and there are more closing pairs than opening pairs
    skip_unbalanced = true,
    -- better deal with markdown code blocks
    markdown = true,
  })

  require('nvim-ts-autotag').setup()
end })
