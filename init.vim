" 自动换行 set wrap

" 提示命令
set showcmd

" 显示菜单
set wildmenu

" 显示行号  
set nu

" 显示光标所在的行
set cursorline
set cursorcolumn

" 显示关联的行号
set relativenumber

" 显示语法高亮
syntax on

" 锁定前后的5行
set scrolloff=5

" 我的placeholder
map <LEADER><LEADER> <Esc>/<--><CR>:nohlsearch<CR>c4l

" 关于空行的设置
set noeol
set autoread

" 设置默认tab是2个空格
set tabstop=4
set shiftwidth=4
set expandtab

" Setting the hlsearch
set hlsearch

"set nocompatible
"filetype indent on 
filetype on

" setting use system clipboard
set clipboard+=unnamedplus

set signcolumn=yes
set ttyfast

set encoding=utf8
set fileencodings=utf8,gbk,gb2312,gb18030

"set hidden "切换的时候隐藏当前的界面
set updatetime=100 " 刷新时间
"set shortmess+=c " 精简信息

set mouse=a
" set pastetoggle=""

" close the noisy beep
set noeb
set vb t_vb=

" Highlight Indent
nnoremap <LEADER>1 :set colorcolumn=<CR>
nnoremap <LEADER>2 :set colorcolumn=3<CR>
nnoremap <LEADER>3 :set colorcolumn=5<CR>
nnoremap <LEADER>4 :set colorcolumn=9<CR>

" Adding Annotation for bash scripts.
vnoremap <LEADER>a :norm i# <CR>
vnoremap <LEADER>x :norm 2x <CR>

" Temp config keymap in there, maybe remove in further.
" press <Tab> to expand or jump in a snippet. These can also be mapped separately
" via <Plug>luasnip-expand-snippet and <Plug>luasnip-jump-next.
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
" -1 for jumping backwards.
inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>

snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>

" For changing choices in choiceNodes (not strictly necessary for a basic setup).
imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'

" Example config in Vim-Script
let g:nord_contrast = v:true
let g:nord_borders = v:true
let g:nord_disable_background = v:false
let g:nord_italic = v:true
let g:nord_uniform_diff_background = v:true
let g:nord_bold = v:true

" Load the colorscheme
colorscheme catppuccin-frappe
set background=dark

lua << END
-- Include the lua/plugins.lua file content.
require('plugins')
require('keymaps')

END

