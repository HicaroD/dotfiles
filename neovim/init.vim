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

" Leader key
let mapleader = "'"

" Installed plugins (Color scheme, autocompletion, tab completion, file
" navigator)
call plug#begin()
Plug 'wojciechkepka/vim-github-dark'
Plug 'ervandew/supertab'
Plug 'itchyny/lightline.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'pangloss/vim-javascript'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
call plug#end()

" Color scheme configuration
set termguicolors
let g:lightline = { 'colorscheme': 'ghdark' }
let g:gh_color = "soft"
colorscheme ghdark

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

" Telescope configuration
nmap <C-p> :lua require('telescope.builtin').find_files()<cr>
nmap <C-g> :lua require('telescope.builtin').live_grep()<cr>

nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

nnoremap <leader>fd <cmd>lua require('telescope.builtin').lsp_definitions()<cr>
nnoremap <leader>fi <cmd>lua require('telescope.builtin').lsp_implementations()<cr>
