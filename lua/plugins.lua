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
  }

  -- mason config.
  use { 'williamboman/mason.nvim' }
  use { "williamboman/mason-lspconfig.nvim" }
  use { "neovim/nvim-lspconfig" }

  require("mason").setup()
  require("mason-lspconfig").setup()
  require("lspconfig")["lua_ls"].setup({
    on_attach =  on_attach,
    capabilities = capabilities,
  })
  require("lspconfig")["bashls"].setup({
    on_attach =  on_attach,
    capabilities = capabilities,
  })
  require("lspconfig")["pyright"].setup({
    on_attach =  on_attach,
    capabilities = capabilities,
  })
end)

