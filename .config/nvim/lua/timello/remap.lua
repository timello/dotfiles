local nnoremap = require("timello.keymap").nnoremap
local inoremap = require("timello.keymap").inoremap

-- netrw
nnoremap("<leader>pv", "<cmd>Ex<CR>")

-- fzf
nnoremap("<leader>pf", "<cmd>FZF -m<CR>")

-- Buffers
nnoremap("<leader>pb", "<cmd>Buffers<CR>")

-- Coc
nnoremap("<leader>gd", "<Plug>(coc-definition)")
nnoremap("<leader>gr", "<Plug>(coc-references)")

-- Telescope
nnoremap("<leader>lw", "<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>")
nnoremap("<leader>cw", "<cmd>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>")

-- vim-floaterm
nnoremap("<leader>fc", "<cmd>FloatermNew<CR>")
nnoremap("<leader>ft", "<cmd>FloatermToggle<CR>")

-- center page up and page down
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")

--
inoremap("<C-g>", "<cmd>call codeium#CycleCompletions(1)<CR>")
