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
  use {'neoclide/coc.nvim', branch = 'release'}
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use { 'ray-x/go.nvim' }
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
  -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { 'tpope/vim-fugitive' }
  use { 'ThePrimeagen/git-worktree.nvim' }
  use { 'voldikss/vim-floaterm' }
  use { 'Exafunction/codeium.vim' }
end)
