## NEOVIM customzation

Configuring.....  
Some Funciton already can be used.   

Adding the nvim-tree and nvim-outline, but not finished.

## Config Record  

https://liarlee.site/2023/08/04/VIM_Neovim-Lua-from-scratch/  

### Plugin List  

- use { 'wbthomason/packer.nvim' }  
- use { 'andrewstuart/vim-kubernetes' }
- use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', }
- use { 'catppuccin/nvim', as = 'catppuccin' }
- use { 'nvim-lualine/lualine.nvim', requires = { 'nvim-tree/nvim-web-devicons' },}
- use { 'nvim-telescope/telescope.nvim', tag = '0.1.2',requires = { {'nvim-lua/plenary.nvim'} }, }
- use { 'williamboman/mason.nvim' }
- use { 'williamboman/mason-lspconfig.nvim' }
- use { 'neovim/nvim-lspconfig' }
- use { 'hrsh7th/cmp-nvim-lsp' }
- use { 'hrsh7th/cmp-buffer' }
- use { 'hrsh7th/cmp-path' }
- use { 'hrsh7th/cmp-cmdline' }
- use { 'hrsh7th/nvim-cmp' }
- use { 'L3MON4D3/LuaSnip' }
- use { 'rafamadriz/friendly-snippets' }
- use { 'saadparwaiz1/cmp_luasnip' }

## Installation
1. Need to manual install packer.nvim   
https://github.com/wbthomason/packer.nvim   

   ```bash
   git clone --depth 1 https://github.com/wbthomason/packer.nvim\
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim
   ```

1. Starting neovim ...
   ```bash
   nvim 
   
   # In neovim.
   :PackerSync
   or
   <Leader-ss> 
   
   # due to network problem, maybe need to exec it twice.
   ```
   This command will syncing all plugin into your machine.

1. All Done.

## Some refer
- https://github.com/williamboman/mason.nvim#how-to-use-installed-packages
- https://github.com/williamboman/mason-lspconfig.nvim#installation
- https://www.reddit.com/r/neovim/comments/ze9gbe/kubernetes_auto_completion_support_in_neovim/
- https://github.com/rafamadriz/friendly-snippets/tree/main


### Update Step
1. Leader-ss -- to update all packer plugin.
2. TSupdate -- to update treesitter.
3. Leader-ms -- U  to update meson and LSP server.


