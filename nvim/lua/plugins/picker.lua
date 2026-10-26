vim.pack.add({
  -- { src = 'https://github.com/ibhagwan/fzf-lua' },
  { src = 'https://github.com/nvim-mini/mini.pick' },
  { src = 'https://github.com/nvim-mini/mini.extra' },
})

-- Mini.pick
require('mini.extra').setup()
local pick = require('mini.pick')
pick.setup({
  -- source = { show = pick.default_show },
  options = {
    use_cache = true,
  },
  window = {
    config = function()
    local height = math.floor(0.6 * vim.o.lines)
    local width = math.floor(0.6 * vim.o.columns)
    return {
      anchor = 'NW', height = height, width = width,
      row = math.floor(0.5 * (vim.o.lines - height)),
      col = math.floor(0.5 * (vim.o.columns - width)),
    }
  end
  }
})
vim.keymap.set('n', '<leader>f', function() require('mini.pick').builtin.files() end, { desc = 'Find File (mini.pick)' })
vim.keymap.set('n', '<leader>g', function() require('mini.pick').builtin.grep_live() end, { desc = 'Live Grep (mini.pick)' })
vim.keymap.set('n', '<leader>b', function() require('mini.pick').builtin.buffers() end, { desc = 'Buffers (mini.pick)' })
vim.keymap.set('n', '<leader>r', function() require('mini.pick').builtin.resume() end, { desc = 'Resume (mini.pick)' })
vim.keymap.set('n', '<leader>M', function() require('mini.extra').pickers.manpages() end, { desc = 'Man Pages (mini.pick)' })
vim.keymap.set('n', '<leader>ld', function() require('mini.extra').pickers.diagnostic() end, { desc = 'LSP Diagnostics (mini.pick)' })
vim.keymap.set('n', '<leader>lr', function() require('mini.extra').pickers.lsp({ scope = 'references'}) end, { desc = 'LSP References (mini.pick)' })
vim.keymap.set('n', '<leader>ls', function() require('mini.extra').pickers.lsp({ scope = 'document_symbol' }) end, { desc = 'LSP Document Symbols (mini.pick)' })

-- Fzflua
-- vim.keymap.set('n', '<leader>f', function() require('fzf-lua').files() end, { desc = 'Find File (FzF)' })
-- vim.keymap.set('n', '<leader>g', function() require('fzf-lua').live_grep() end, { desc = 'Find File (FzF)' })
-- vim.keymap.set('n', '<leader>b', function() require('fzf-lua').buffers() end, { desc = 'Buffers (FzF)' })
-- vim.keymap.set('n', '<leader>t', function() require('fzf-lua').tags() end, { desc = 'Tags (FzF)' })
-- vim.keymap.set('n', '<leader>ls', function() require('fzf-lua').lsp_document_symbols() end, { desc = 'Lsp Document Symbols (FzF)' })
-- vim.keymap.set('n', '<leader>lws', function() require('fzf-lua').lsp_workspace_symbols() end, { desc = 'Lsp Workspace Symbols (FzF)' })

-- vim.keymap.set('n', '<leader>fg', function() require('fzf-lua').live_grep() end, { desc = 'Live Grep (FzF)' })
-- vim.keymap.set('n', '<leader>fh', function() require('fzf-lua').helptags() end, { desc = 'Help (FzF)' })
-- vim.keymap.set('n', '<leader>fm', function() require('fzf-lua').marks() end, { desc = 'Marks (FzF)' })
-- vim.keymap.set('n', '<leader>j', function() require('fzf-lua').jumps() end, { desc = 'Jumplist (FzF)' })
-- vim.keymap.set('n', '<leader>lr', function() require('fzf-lua').lsp_references() end, { desc = 'Lsp References (FzF)' })
-- vim.keymap.set('n', '<leader>ld', function() require('fzf-lua').lsp_workspace_diagnostics() end, { desc = 'Lsp Diagnostics (FzF)' })
-- vim.keymap.set('n', '<leader>lc', function() require('fzf-lua').lsp_code_actions() end, { desc = 'Lsp Code Actions (FzF)' })
-- vim.keymap.set('n', '<leader>cd', function() require('fzf-lua').zoxide() end, { desc = 'Zoxide (FzF)' })
