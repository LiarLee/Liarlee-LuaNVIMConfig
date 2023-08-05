vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Post-install/update hook with neovim command
  use { 
    'nvim-treesitter/nvim-treesitter', run = ':TSUpdate',
    -- Use config file.
    config = function()
      require('conf.nvim-treesitter')
    end
  }

  -- Use the neovim theme catppuccin.
  use { "catppuccin/nvim", as = "catppuccin" }

  -- lualine and setting theme.
  use {
    'nvim-lualine/lualine.nvim', requires = { 'nvim-tree/nvim-web-devicons' },
      require('lualine').setup { options = { theme = 'catppuccin-mocha' } }
  }

  -- telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    requires = { {'nvim-lua/plenary.nvim'} },
    config = function()
      require('conf.nvim-mason')
    end
  }

  -- mason config.
  use {
    'williamboman/mason.nvim',
    config = function()
      require('conf.nvim-mason')
    end,

    "williamboman/mason-lspconfig.nvim",
    config = function()
      require('conf.nvim-mason-lsp')
    end,

    "neovim/nvim-lspconfig",
  }


end)
