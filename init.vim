syntax on
set number
set ai

set nobackup
set nowritebackup 
set noswapfile

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'mattn/emmet-vim'
Plug 'Yggdroot/indentLine'

call plug#end()

set background=dark
set termguicolors
colorscheme sitrunna

nnoremap <C-p> :FZF<CR>

" Pairs autocompletion configuration
inoremap { {}<ESC>ha
inoremap ( ()<ESC>ha
inoremap " ""<ESC>ha
inoremap ' ''<ESC>ha
inoremap ` ``<ESC>ha
inoremap [ []<ESC>ha
inoremap < <><ESC>ha

let g:python_highlight_all = 1
