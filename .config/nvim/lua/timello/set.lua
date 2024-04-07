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


--
-- START: https://rsdlt.github.io/posts/rust-nvim-ide-guide-walkthrough-development-debug/
--

-- LSP Diagnostics Options Setup
local sign = function(opts)
  vim.fn.sign_define(opts.name, {
    texthl = opts.name,
    text = opts.text,
    numhl = ''
  })
end

sign({name = 'DiagnosticSignError', text = ''})
sign({name = 'DiagnosticSignWarn', text = ''})
sign({name = 'DiagnosticSignHint', text = ''})
sign({name = 'DiagnosticSignInfo', text = ''})

vim.diagnostic.config({
    virtual_text = false,
    signs = true,
    update_in_insert = true,
    underline = true,
    severity_sort = false,
    float = {
        border = 'rounded',
        source = 'always',
        header = '',
        prefix = '',
    },
})

vim.cmd([[
set signcolumn=yes
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])

--Set completeopt to have a better completion experience
-- :help completeopt
-- menuone: popup even when there's only one match
-- noinsert: Do not insert text until a selection is made
-- noselect: Do not select, force to select one from the menu
-- shortness: avoid showing extra messages when using completion
-- updatetime: set updatetime for CursorHold
vim.opt.completeopt = {'menuone', 'noselect', 'noinsert'}
vim.opt.shortmess = vim.opt.shortmess + { c = true}
vim.api.nvim_set_option('updatetime', 300)

-- Fixed column for diagnostics to appear
-- Show autodiagnostic popup on cursor hover_range
-- Goto previous / next diagnostic warning / error
-- Show inlay_hints more frequently
vim.cmd([[
set signcolumn=yes
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])

-- Vimspector options
vim.cmd([[
let g:vimspector_sidebar_width = 85
let g:vimspector_bottombar_height = 15
let g:vimspector_terminal_maxwidth = 70
]])

--
-- END: https://rsdlt.github.io/posts/rust-nvim-ide-guide-walkthrough-development-debug/
--

-- https://www.jvt.me/posts/2022/03/01/neovim-format-on-save/
vim.cmd([[autocmd BufWritePre * lua vim.lsp.buf.format()]])
