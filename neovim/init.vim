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
Plug 'ervandew/supertab'
Plug 'tpope/vim-commentary'
Plug 'Yggdroot/indentLine'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'bfrg/vim-cpp-modern'
call plug#end()

" Color scheme configuration
set termguicolors
colorscheme vscode

" Leader key
let mapleader="'"

" Pairs autocompletion configuration
inoremap { {}<ESC>ha
inoremap ( ()<ESC>ha
inoremap " ""<ESC>ha
inoremap ' ''<ESC>ha
inoremap ` ``<ESC>ha
inoremap [ []<ESC>ha

" SuperTab
let g:SuperTabDefaultCompletionType = "<c-n>"

" Tabs
map <Leader>tn :tabnew<cr>
map <Leader>tm :tabmove
map <Leader>tc :tabclose<cr>
map <Leader>to :tabonly<cr>
nmap <C-h> :tabprevious<CR>
nmap <C-l> :tabnext<CR>

" Grep config
if executable("rg")
    set grepprg=rg
    set grepprg+=\ --color\ never\ --column\ --line-number\ --no-heading\ $*
    set grepformat=%f:%l:%c:%m
endif

nnoremap <C-f> :grep 

" Netrw - built-in file explorer
" Credits for the config: https://stackoverflow.com/a/64794436
function! ToggleVExplorer()
    Lexplore
    vertical resize 15
endfunction
map <silent> <C-p> :call ToggleVExplorer()<CR>

let g:netrw_winsize = -20
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_sort_sequence = '[\/]$,*'
let g:netrw_browse_split = 4
