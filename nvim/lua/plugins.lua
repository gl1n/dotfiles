-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use { 'wbthomason/packer.nvim', opt = true }

  use { 'kyazdani42/nvim-web-devicons', opt = true }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
  }

  use 'voldikss/vim-floaterm'

  use { 'folke/tokyonight.nvim', branch = 'main' }

  use 'mhinz/vim-startify'

  --  use {'fatih/vim-go', run = ':GoUpdateBinaries' }

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  use {
    "williamboman/mason-lspconfig.nvim",
    'williamboman/mason.nvim',
    'neovim/nvim-lspconfig'
  }

  use {
    'ray-x/lsp_signature.nvim'
  }

  use {
    'simrat39/symbols-outline.nvim'
  }

  use {
    'nvim-tree/nvim-tree.lua',
    require = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('nvim-tree').setup()
    end
  }

end)
