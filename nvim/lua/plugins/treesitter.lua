vim.api.nvim_create_autocmd('BufReadPost', {
  once = true,
  callback = function ()
    vim.pack.add({
      { src = 'https://github.com/romus204/tree-sitter-manager.nvim', name = 'tree-sitter-manager' },
      { src = 'https://github.com/nvim-treesitter/nvim-treesitter-textobjects', version='main', name = 'nvim-treesitter-textobjects' },
    })

    require('tree-sitter-manager').setup({
      ensure_installed = {
        'bash',
        'blade',
        'c',
        'html',
        'htmldjango',
        'http',
        'jsx',
        'latex',
        'nix',
        'php',
        'python',
        'tsx',
        'vue',
      }
    })

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

  end
})

