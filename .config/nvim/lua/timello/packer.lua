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
  use { 'github/copilot.vim' } 
  use { 'neovim/nvim-lspconfig' } -- Collection of configurations for built-in LSP client
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  -- Autocomplete
  use { 'onsails/lspkind-nvim' } -- vscode like pictograms for neovim lsp completion items
  use { 'L3MON4D3/LuaSnip' } -- Snippets plugin for neovim built in lsp
  use { 'hrsh7th/cmp-nvim-lsp' } -- nvim-cmp source for nvim-lsp
  use { 'hrsh7th/cmp-buffer' } -- nvim-cmp source for buffer words
  use { 'hrsh7th/nvim-cmp' } -- Autocompletion plugin for neovim built in lsp

  -- ESLint
  -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#eslint

end)
