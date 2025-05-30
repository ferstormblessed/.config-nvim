vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = true

local opt = vim.opt

-- disable `luarocks` support completely with
-- vim.opts.rocks.enabled = false
-- opts.rocks.enabled = false
-- clipboard
-- vim.g.clipboard="unnamedplus"
-- vim.opt.clipboard = 'unnamedplus'

-- gui cursor
opt.guicursor = ''

-- line number
opt.nu = true
opt.relativenumber = true

-- tabs
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.breakindent = true
opt.autoindent = true

-- line opts
opt.cursorline = true
opt.wrap = false

-- undo stuff
opt.undodir = os.getenv('HOME') .. '/.vim/undodir'
opt.undofile = true

-- search opts '/'
opt.hlsearch = true
opt.incsearch = true
-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
opt.ignorecase = true
opt.smartcase = true

-- minimum number of lines to keep around the cursor
opt.scrolloff = 15

-- appearance
opt.termguicolors = true
opt.background = "dark"

-- splitting opts
opt.splitbelow = true
opt.splitright = true

-- signcolumn opts
opt.signcolumn = "yes"

-- update time
opt.updatetime = 50

-- completion opts
opt.completeopt = "menuone,noselect"

-- show effects of certain commands
-- Preview substitutions live, as you type!
opt.inccommand = "split"

-- Don't show the mode, since it's already in the status line
opt.showmode = false

