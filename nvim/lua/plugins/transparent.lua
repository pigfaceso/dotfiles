local groups = {
  'Normal',
  'NormalNC',
  'NormalFloat',
  'SignColumn',
  'StatusLine',
  'StatusLineNC',
  'EndOfBuffer',
}

for _, group in ipairs(groups) do
  vim.api.nvim_set_hl(0, group, { bg = 'NONE', ctermbg = 'NONE' })
end
