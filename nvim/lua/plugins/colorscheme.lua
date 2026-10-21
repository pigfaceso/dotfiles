vim.pack.add({
  -- { src = 'https://github.com/craftzdog/solarized-osaka.nvim', name = 'solarized-osaka' },
  -- { src = 'https://github.com/folke/tokyonight.nvim', name = 'tokyonight' },
  { src = 'https://github.com/darkvoid-theme/darkvoid.nvim', name = 'darkvoid' },
})

require('darkvoid').setup({
  transparent = true,
})

vim.cmd.colorscheme('darkvoid')
vim.api.nvim_set_hl(0, 'Search', { bg = '#1bfd9c', fg = '#000000' })
vim.api.nvim_set_hl(0, 'IncSearch', { bg = '#1bfd9c', fg = '#000000' })

-- vim.cmd.colorscheme('tokyonight-night')
-- vim.cmd.colorscheme('solarized-osaka')
