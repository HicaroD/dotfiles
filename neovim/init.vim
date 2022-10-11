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
Plug 'wojciechkepka/vim-github-dark'
Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons
Plug 'nvim-tree/nvim-tree.lua'
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

" Nvim-Tree
lua << EOF

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
require("nvim-tree").setup {
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    debounce_delay = 50,
    icons = {
    hint = "",
	info = "",
        warning = "",
        error = "",
    },
  },
  view = {
    width=20,
  },
  git = {
    enable = true,
    ignore = true,
    show_on_dirs = true,
    timeout = 400,
  },
}
EOF
nmap <C-p> :NvimTreeToggle<CR>

" COC configuration
" <tab> for triggering COC completion
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
