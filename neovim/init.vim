" Display
syntax on
set number
set nowrap
set ruler
set laststatus=2
set list
set listchars=tab:\ \ ,precedes:«,extends:»

set nobackup
set nowritebackup 
set noswapfile

" Tabs and whitepaces
set sw=4 et
set softtabstop=-1
set tabstop=8
set noexpandtab
set ts=8
set nosmartindent
set cin noai
set nojoinspaces
set formatoptions=cloqr
set cinoptions=l1

call plug#begin()
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ervandew/supertab'
Plug 'tpope/vim-commentary'
Plug 'Yggdroot/indentLine'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'bfrg/vim-cpp-modern'
call plug#end()

" Color scheme configuration
set termguicolors
let g:solarized_italics=0
colorscheme hicaro

" Leader key
let mapleader=","

" Pairs autocompletion configuration
inoremap { {}<ESC>ha
inoremap ( ()<ESC>ha
inoremap " ""<ESC>ha
inoremap ' ''<ESC>ha
inoremap ` ``<ESC>ha
inoremap [ []<ESC>ha

" NERDTree configuration
" Only show files/directories that are not ignored by Git
nmap <C-p> :Files<Enter>

" SuperTab
let g:SuperTabDefaultCompletionType = "<c-n>"

" Tabs
map <Leader>tn :tabnew<cr>
map <Leader>t<leader> :tabnext
map <Leader>tm :tabmove
map <Leader>tc :tabclose<cr>
map <Leader>to :tabonly<cr>
