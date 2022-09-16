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
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'ervandew/supertab'
Plug 'itchyny/lightline.vim'
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
nnoremap <C-f> :Rg<Enter> 

" FZF
nnoremap <expr> <C-p> (len(system('git rev-parse')) ? ':Files' : ':GFiles --exclude-standard --others --cached')."\<cr>"

" SuperTab
let g:SuperTabDefaultCompletionType = "<c-n>"

" coc-snippets
imap <A-l> <Plug>(coc-snippets-expand)

" NerdTree
nnoremap <C-t> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=25
