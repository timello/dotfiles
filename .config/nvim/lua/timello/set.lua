vim.g.mapleader = " "

vim.opt.guicursor = ""
vim.opt.nu = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.smartcase = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.incsearch = true
vim.opt.number = true
vim.opt.mouse = ""
vim.opt.ruler = true

-- set colorcolumn=80
vim.opt.colorcolumn = "80"
vim.cmd [[highlight VertSplit cterm=NONE]]

vim.opt.encoding = "utf-8"

-- set undodir
vim.opt.undodir = vim.fn.stdpath("config") .. "/undodir"
vim.opt.undofile = true
