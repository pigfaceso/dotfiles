vim.api.nvim_create_user_command('CtagsInit', function()
  vim.system({'ctags', '-R', vim.env.PWD })
end, {})

vim.api.nvim_create_user_command('CtagsRemove', function()
  vim.system({'rm', '-f', vim.env.PWD .. '/tags' })
end, {})

vim.api.nvim_create_autocmd('BufEnter',{
  once = true,
  callback = function()
    vim.system({'ctags', '-R', vim.env.PWD })
  end
})

vim.api.nvim_create_autocmd('VimLeave',{
  once = true,
  callback = function()
    vim.system({'rm', '-f', vim.env.PWD .. '/tags' })
  end
})
