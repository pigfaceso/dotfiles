vim.pack.add({
  -- { src = 'https://github.com/romus204/tree-sitter-manager.nvim', name = 'tree-sitter-manager' },
  { src = 'https://github.com/nvim-treesitter/nvim-treesitter' },
  { src = 'https://github.com/nvim-treesitter/nvim-treesitter-textobjects', version='main', name = 'nvim-treesitter-textobjects' },
})

local filetypes = {
  'bash',
  'blade',
  'c',
  'html',
  'htmldjango',
  'http',
  'javascriptreact',
  'latex',
  'lua',
  'nix',
  'php',
  'sql',
  'python',
  'typescript',
  'typescriptreact',
  'vue',
}

vim.api.nvim_create_autocmd('FileType', {
  pattern = filetypes,
  callback = function()
    vim.treesitter.start()
    vim.opt_local.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
  end,
})

require('nvim-treesitter').setup({
  install_dir = vim.fn.stdpath('data') .. '/site'
})

require('nvim-treesitter').install({
  'bash',
  'blade',
  'c',
  'html',
  'htmldjango',
  'http',
  'jsx',
  'latex',
  'lua',
  'nix',
  'php',
  'python',
  'sql',
  'tsx',
  'vue',
})


-- require('tree-sitter-manager').setup({
  --   highlight = true,
  --   ensure_installed = {
    --     'bash',
    --     'blade',
    --     'c',
    --     'html',
    --     'htmldjango',
    --     'http',
    --     'jsx',
    --     'latex',
    --     'nix',
    --     'php',
    --     'python',
    --     'tsx',
    --     'vue',
    --   }
    -- })

vim.g.no_plugin_maps = true
require('nvim-treesitter-textobjects').setup()
vim.keymap.set({ "x", "o" }, "af", function()
  require "nvim-treesitter-textobjects.select".select_textobject("@function.outer", "textobjects")
end)
vim.keymap.set({ "x", "o" }, "if", function()
  require "nvim-treesitter-textobjects.select".select_textobject("@function.inner", "textobjects")
end)
vim.keymap.set({ "x", "o" }, "ac", function()
  require "nvim-treesitter-textobjects.select".select_textobject("@class.outer", "textobjects")
end)
vim.keymap.set({ "x", "o" }, "ic", function()
  require "nvim-treesitter-textobjects.select".select_textobject("@class.inner", "textobjects")
end)
vim.keymap.set({ "x", "o" }, "ao", function()
  require "nvim-treesitter-textobjects.select".select_textobject("@loop.outer", "textobjects")
end)
vim.keymap.set({ "x", "o" }, "io", function()
  require "nvim-treesitter-textobjects.select".select_textobject("@loop.inner", "textobjects")
end)
vim.keymap.set({ "x", "o" }, "aa", function()
  require "nvim-treesitter-textobjects.select".select_textobject("@parameter.outer", "textobjects")
end)
vim.keymap.set({ "x", "o" }, "ia", function()
  require "nvim-treesitter-textobjects.select".select_textobject("@parameter.inner", "textobjects")
end)
