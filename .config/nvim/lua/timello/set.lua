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
vim.opt.relativenumber = true
vim.opt.mouse = ""
vim.opt.ruler = true
vim.opt.errorbells = false
vim.opt.syntax = "on"

vim.opt.colorcolumn = "80"
vim.cmd [[highlight ColorColumn ctermbg=0 guibg=lightgrey]]
vim.cmd [[highlight clear SignColumn]]
vim.cmd [[highlight LineNr ctermfg=grey]]
vim.cmd [[highlight VertSplit cterm=NONE]]

vim.opt.encoding = "utf-8"

vim.opt.undodir = vim.fn.stdpath("config") .. "/undodir"
vim.opt.undofile = true

-- remove trailing whitespace
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})

-- https://github.com/neovim/neovim/issues/21771
vim.api.nvim_create_autocmd({ "DirChanged" }, {
  pattern = { "*" },
  command = [[call chansend(v:stderr, printf("\033]7;file://%s\033\\", v:event.cwd))]],
})
