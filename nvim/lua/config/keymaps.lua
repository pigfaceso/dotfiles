-- Normal Mode
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Page Down' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Page Up' })
vim.keymap.set({'n', 'v'}, '<leader>y', '\"+y', { desc = 'Yank to clipboard' })
vim.keymap.set('n', '<leader>Y', 'jgg\"+yG<C-o>k', { desc = 'Yank all to clipboard' })
vim.keymap.set({'n', 'v'}, '<leader>p', '\"+p', { desc = 'Paste after from clipboard' })
vim.keymap.set({'n', 'v'}, '<leader>p', '\"+P', { desc = 'Paste before from clipboard' })
vim.keymap.set('n', '<leader>f', ':find ', { desc = 'Find', silent = false })
vim.keymap.set('n', '<leader>b', '<cmd>buffers<cr>:b <cword>', { desc = 'Buffers', silent = false })
vim.keymap.set('n', '<leader>m', function() vim.cmd.make() end, { desc = 'Make', silent = false })
vim.keymap.set('n', '<leader>j', function() vim.cmd.jump() end, { desc = 'JumpLists', silent = false })
vim.keymap.set('n', '<leader>d', function() vim.diagnostic.setqflist() vim.cmd.copen() end, { desc = 'Diagnostic quickfix', silent = true })
vim.keymap.set('n', '-', function() vim.cmd.Explore() end, { desc = 'Explore', silent = true })
vim.keymap.set('n', '<C-f>', '<cmd>!tmux neww tmux-sessionizer<cr>', { desc = 'tmux-sessionizer', silent = true })

-- Visual Mode
vim.keymap.set('v', 'J', ":m '>+1<cr>gv=gv", { desc = 'Move text Up' })
vim.keymap.set('v', 'K', ":m '<-2<cr>gv=gv", { desc = 'Move text Down' })

-- Terminal Mode
-- vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')
vim.keymap.set('t', '<C-w>h', '<C-\\><C-n><C-w>h')
vim.keymap.set('t', '<C-w>j', '<C-\\><C-n><C-w>j')
vim.keymap.set('t', '<C-w>k', '<C-\\><C-n><C-w>k')
vim.keymap.set('t', '<C-w>l', '<C-\\><C-n><C-w>l')
