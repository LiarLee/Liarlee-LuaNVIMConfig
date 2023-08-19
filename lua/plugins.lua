vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'andrewstuart/vim-kubernetes'
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
  }

  -- mason config.
  use { 'williamboman/mason.nvim' }
  use { "williamboman/mason-lspconfig.nvim" ,
    config = function()
      require('conf.nvim-mason-lspconfig')
    end
  }
  use { "neovim/nvim-lspconfig" }
  use "rafamadriz/friendly-snippets"

  require("mason").setup()
  require("mason-lspconfig").setup()

  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  use 'saadparwaiz1/cmp_luasnip'
  use({
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!:).
	run = "make install_jsregexp"
  })

  -- VIM-symbols-outline
  use 'simrat39/symbols-outline.nvim'
  require("symbols-outline").setup()

  -- VIM-tree
  use 'nvim-tree/nvim-tree.lua'
  require("nvim-tree").setup()

  require('conf.nvim-luasnip')
end)


