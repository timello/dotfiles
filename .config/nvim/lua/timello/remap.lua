local nnoremap = require("timello.keymap").nnoremap
local inoremap = require("timello.keymap").inoremap

-- netrw
nnoremap("<leader>pv", "<cmd>Ex<CR>")

-- fzf
nnoremap("<leader>pf", "<cmd>FZF -m<CR>")

-- Buffers
nnoremap("<leader>pb", "<cmd>Buffers<CR>")

-- Telescope
nnoremap("<leader>lw", "<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>")
nnoremap("<leader>cw", "<cmd>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>")

-- vim-floaterm
nnoremap("<leader>ft", "<cmd>ToggleTerm<CR>")

-- center page up and page down
-- nnoremap("<C-d>", "<C-d>zz")
-- nnoremap("<C-u>", "<C-u>zz")

--
inoremap("<C-g>", "<cmd>call codeium#CycleCompletions(1)<CR>")

-- Vimspector
nnoremap("<F9>", "<cmd>:call vimspector#Launch()<CR>")

-- LSP
nnoremap("<leader>gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
nnoremap("<leader>gr", "<cmd>lua vim.lsp.buf.references()<CR>")
