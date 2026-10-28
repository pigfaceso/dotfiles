vim.opt.termguicolors = true
vim.opt.winborder = 'rounded'

-- Cursor
vim.opt.cursorline = true
vim.opt.guicursor = ''

-- Autocomplete
vim.opt.autocomplete = false
vim.opt.completeopt = 'menu,menuone,noselect,popup'
vim.opt.complete = '.,w,b,u,t,o'
vim.opt.pumheight = 8
vim.opt.pumborder = 'rounded'

-- Line number
vim.opt.number = true
vim.opt.relativenumber = true

-- StatusLine
vim.opt.laststatus = 3
vim.opt.cmdheight = 1

-- Show match brackets (), {}, []
vim.opt.showmatch = true

-- Statuscolumn
vim.opt.signcolumn = 'yes'

-- Split position
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Warp text
vim.opt.wrap = false

-- Scrolloff
vim.opt.scrolloff = 9
vim.opt.sidescrolloff = 12

-- Tab / Space
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.shiftround = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

-- Indent
vim.opt.smartindent = true

-- List
vim.opt.listchars = {
  tab = '> ',
  multispace = '·',
  trail = '·',
}
vim.opt.list = true

-- Search
vim.opt.incsearch = true
vim.opt.hlsearch = false
vim.opt.inccommand = 'split'

-- Diff
vim.opt.diffopt:remove('linematch:40')

-- File
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("data") .. "/undo"

-- Path
vim.opt.path = ".,**,"

-- Other vim.options
-- vim.opt.clipboard = 'unnamedplus'
vim.opt.timeout = true
vim.opt.timeoutlen = 1000
vim.opt.ttimeoutlen = 10
vim.opt.confirm = true
vim.opt.updatetime = 50
