local nnoremap = require("timello.keymap").nnoremap

-- netrw
nnoremap("<leader>pv", "<cmd>Ex<CR>")

-- fzf
nnoremap("<leader>pf", "<cmd>FZF -m<CR>")

-- Buffers
nnoremap("<leader>pb", "<cmd>Buffers<CR>")

-- Coc
nnoremap("<leader>gd", "<Plug>(coc-definition)")

-- nvim-tree
nnoremap("<leader>pt", "<cmd>NvimTreeToggle<CR>")
