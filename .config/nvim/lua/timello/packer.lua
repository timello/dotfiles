-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'
        -- use 'folke/tokyonight.nvim'
        use 'morhetz/gruvbox'
        use { 'junegunn/fzf', run = ":call fzf#install()" }
        use { 'junegunn/fzf.vim' }
        -- use { 'github/copilot.vim' }
        use { 'neoclide/coc.nvim', branch = 'release' }
        use {
                'nvim-lualine/lualine.nvim',
                requires = { 'kyazdani42/nvim-web-devicons', opt = true }
        }
        use { 'ray-x/go.nvim' }
        use {
                'nvim-telescope/telescope.nvim', tag = '0.1.4',
                -- or                            , branch = '0.1.x',
                requires = { { 'nvim-lua/plenary.nvim' } }
        }
        use { 'tpope/vim-fugitive' }
        use { 'ThePrimeagen/git-worktree.nvim' }
        use { 'Exafunction/codeium.vim' }

        -- https://rsdlt.github.io/posts/rust-nvim-ide-guide-walkthrough-development-debug/
        use 'williamboman/mason.nvim'
        use 'williamboman/mason-lspconfig.nvim'
        use 'neovim/nvim-lspconfig'
        use 'simrat39/rust-tools.nvim'

        -- Completion framework:
        use 'hrsh7th/nvim-cmp'

        -- LSP completion source:
        use 'hrsh7th/cmp-nvim-lsp'

        -- Useful completion sources:
        use 'hrsh7th/cmp-nvim-lua'
        use 'hrsh7th/cmp-nvim-lsp-signature-help'
        use 'hrsh7th/cmp-vsnip'
        use 'hrsh7th/cmp-path'
        use 'hrsh7th/cmp-buffer'
        use 'hrsh7th/vim-vsnip'
        use 'puremourning/vimspector'

        use 'nvim-treesitter/nvim-treesitter'

        use { "akinsho/toggleterm.nvim", tag = '*', config = function()
                require("toggleterm").setup()
        end }
end)
