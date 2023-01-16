local nnoremap = require("timello.keymap").nnoremap

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
