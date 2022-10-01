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

" Installed plugins (Color scheme, autocompletion, tab completion, file
" navigator)
call plug#begin()
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'ervandew/supertab'
Plug 'itchyny/lightline.vim'
Plug 'ervandew/supertab'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pangloss/vim-javascript'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

" Color scheme configuration
set termguicolors
let g:material_terminal_italics = 0
let g:material_theme_style = 'darker'
let g:lightline = { 'colorscheme': 'material_vim' }
colorscheme material

" Leader key
let mapleader="'"

" Pairs autocompletion configuration
inoremap { {}<ESC>ha
inoremap ( ()<ESC>ha
inoremap " ""<ESC>ha
inoremap ' ''<ESC>ha
inoremap ` ``<ESC>ha
inoremap [ []<ESC>ha

" Tabs configuration
map <Leader>tn :tabnew<cr>
map <Leader>tm :tabmove
map <Leader>tc :tabclose<cr>
map <Leader>to :tabonly<cr>
nmap <C-h> :tabprevious<CR>
nmap <C-l> :tabnext<CR>

" SuperTab configuration
let g:SuperTabDefaultCompletionType = "<c-n>"

" Fzf configuration
nnoremap <expr> <C-p> (len(system('git rev-parse')) ? ':Files' : ':GFiles --exclude-standard --others --cached')."\<cr>"

