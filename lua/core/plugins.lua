-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'nvim-lua/plenary.nvim'
  use 'kyazdani42/nvim-web-devicons'

  -- Bufferline
  use {
        'akinsho/bufferline.nvim',
        requires = 'kyazdani42/nvim-web-devicons'
  }

  -- Lualine
  use {
      'nvim-lualine/lualine.nvim',
      requires = 'kyazdani42/nvim-web-devicons'
  }

  -- Nvim-tree
  use 'nvim-tree/nvim-tree.lua'

  -- Vimtex
  use 'lervag/vimtex'

  -- Telescope
  use {
       'nvim-telescope/telescope.nvim',
       requires = 'nvim-lua/plenary.nvim'
  }

  -- Startupscreen
  use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
  }

  -- Toggleterm
  use {"akinsho/toggleterm.nvim", tag = '*'}

  -- Mason
  use {
    "williamboman/mason.nvim",
    'williamboman/mason-lspconfig.nvim',
    run = ":MasonUpdate" -- :MasonUpdate updates registry contents
  }

  -- LSP
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP

  -- Cmp
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'

  -- Luasnip
  use {
      'L3MON4D3/LuaSnip',
  }

  -- Mardown preview
  use({
      "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
  })

end)
