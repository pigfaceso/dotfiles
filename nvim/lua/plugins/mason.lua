vim.pack.add({
  { src = 'https://github.com/mason-org/mason.nvim', name = 'mason' },
})

require('mason').setup()

local mason_installed = require('plugins.mason-installed').installed
for _,installed in ipairs(mason_installed) do
  if not require('mason-registry').is_installed(installed) then
    vim.cmd.MasonInstall(installed)
  end
end
