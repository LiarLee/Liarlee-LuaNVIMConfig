## NEOVIM 配置文件

Configuring.....

## Usage Record: 
https://liarlee.site/2023/08/04/VIM_Neovim-Lua-from-scratch/

## NOTICE: 
1. Need to manual install packer.nvim
https://github.com/wbthomason/packer.nvim

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

2. Starting neovim ...
```bash
nvim 

# In neovim.
`:PackerSync`
or
`<Leader-ps>` 

# due to network problem, maybe need to exec it twice.
```
All Done.

## Refer: 
https://github.com/williamboman/mason.nvim#how-to-use-installed-packages
https://github.com/williamboman/mason-lspconfig.nvim#installation


