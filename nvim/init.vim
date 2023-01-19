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

" Others
set updatetime=300
set signcolumn=yes

let g:mapleader = " "

" Installed plugins (autocompletion, file navigator and more)
call plug#begin()
Plug 'tomasiser/vim-code-dark'
Plug 'itchyny/lightline.vim'
call plug#end()

" Color scheme configuration
set termguicolors
colorscheme codedark

" Pairs autocompletion configuration
inoremap { {}<ESC>ha
inoremap ( ()<ESC>ha
inoremap " ""<ESC>ha
inoremap ' ''<ESC>ha
inoremap ` ``<ESC>ha
inoremap [ []<ESC>ha

" Easy line swapping
" Credits: https://stackoverflow.com/a/741819

function! s:swap_lines(n1, n2)
    let line1 = getline(a:n1)
    let line2 = getline(a:n2)
    call setline(a:n1, line2)
    call setline(a:n2, line1)
endfunction

function! s:swap_up()
    let n = line('.')
    if n == 1
        return
    endif

    call s:swap_lines(n, n - 1)
    exec n - 1
endfunction

function! s:swap_down()
    let n = line('.')
    if n == line('$')
        return
    endif

    call s:swap_lines(n, n + 1)
    exec n + 1
endfunction

noremap <silent> <c-s-up> :call <SID>swap_up()<CR>
noremap <silent> <c-s-down> :call <SID>swap_down()<CR>

" Lightline configuration
let g:lightline = {
\     'colorscheme': 'wombat',
\}

let g:lightline.separator = {
  \   'left': '', 'right': ''
\}
let g:lightline.subseparator = {
  \   'left': '', 'right': ''
\}

" Tabs configuration
map <Leader>tn :tabnew<cr>
map <Leader>tm :tabmove
map <Leader>tc :tabclose<cr>
map <Leader>to :tabonly<cr>
nmap <C-h> :tabprevious<CR>
nmap <C-l> :tabnext<CR>
