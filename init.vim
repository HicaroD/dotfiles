" Display
syntax on
set number
set nowrap
set ruler
set laststatus=2
set list
set listchars=
set listchars+=precedes:<,extends:>
set listchars+=tab:⇥\ 
set sidescroll=5
set scrolloff=5
set shortmess=a
set shortmess+=tToO

set nobackup
set nowritebackup 
set noswapfile

" Tabs and whitepaces
set sw=4 et
set softtabstop=-1
set ts=8
set nosmartindent
set cin noai
set tw=60 cc=60
set nojoinspaces
set formatoptions=cloqr
set cinoptions=l1

call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'mattn/emmet-vim'
Plug 'Yggdroot/indentLine'
Plug 'lifepillar/vim-solarized8'

call plug#end()

set termguicolors
colorscheme solarized8

nnoremap <C-p> :FZF<CR>

" Pairs autocompletion configuration
inoremap { {}<ESC>ha
inoremap ( ()<ESC>ha
inoremap " ""<ESC>ha
inoremap ' ''<ESC>ha
inoremap ` ``<ESC>ha
inoremap [ []<ESC>ha
