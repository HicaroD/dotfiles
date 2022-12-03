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

" Installed plugins (autocompletion, file navigator and more)
call plug#begin()
" Color scheme
Plug 'tomasiser/vim-code-dark'

" Status bar
Plug 'itchyny/lightline.vim'

" LSP / Autocompletion / Snippets
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Tree view
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'

" Fuzzy finder
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

" Tree sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
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
	\ 'active': {
	\   'left': [ [ 'mode', 'paste' ],
	\             [ 'readonly', 'filename', 'modified', 'coc_error', 'coc_warning', 'coc_hint', 'coc_info' ] ],
	\   'right': [ [ 'lineinfo',  ],
	\              [ 'percent' ],
	\              [ 'fileformat', 'fileencoding', 'filetype'] ]
	\ },
	\ 'component_expand': {
	\   'coc_error'        : 'LightlineCocErrors',
	\   'coc_warning'      : 'LightlineCocWarnings',
	\   'coc_info'         : 'LightlineCocInfos',
	\   'coc_hint'         : 'LightlineCocHints',
	\   'coc_fix'          : 'LightlineCocFixes',
	\ },
	\ 'component_function': {
	\   'filename': 'LightlineFilename',
	\ },
\}

let g:lightline.component_type = {
\   'coc_error'        : 'error',
\   'coc_warning'      : 'warning',
\   'coc_info'         : 'tabsel',
\   'coc_hint'         : 'middle',
\   'coc_fix'          : 'middle',
\ }

let g:lightline.separator = {
  \   'left': '', 'right': ''
\}
let g:lightline.subseparator = {
  \   'left': '', 'right': ''
\}

function! LightlineFilename()
return expand('%:t') !=# '' ? @% : '[No Name]'
endfunction

function! s:lightline_coc_diagnostic(kind, sign) abort
  let info = get(b:, 'coc_diagnostic_info', 0)
  if empty(info) || get(info, a:kind, 0) == 0
    return ''
  endif
  return printf('%s %d', a:sign, info[a:kind])
endfunction

function! LightlineCocErrors() abort
  return s:lightline_coc_diagnostic('error', 'E')
endfunction

function! LightlineCocWarnings() abort
  return s:lightline_coc_diagnostic('warning', 'W')
endfunction

function! LightlineCocInfos() abort
  return s:lightline_coc_diagnostic('information', 'I')
endfunction

function! LightlineCocHints() abort
  return s:lightline_coc_diagnostic('hints', 'H')
endfunction

autocmd User CocDiagnosticChange call lightline#update()

" Coc configuration
let g:coc_node_path = "/home/hicaro/Documentos/node-v18.12.1-linux-x64/bin/node"

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> [e <Plug>(coc-diagnostic-prev)
nmap <silent> ]e <Plug>(coc-diagnostic-next)

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Tabs configuration
map <Leader>tn :tabnew<cr>
map <Leader>tm :tabmove
map <Leader>tc :tabclose<cr>
map <Leader>to :tabonly<cr>
nmap <C-h> :tabprevious<CR>
nmap <C-l> :tabnext<CR>

" Nvim-tree configuration

" Nvim-Tree
lua << EOF
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
require("nvim-tree").setup({
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
})
EOF
nmap <C-p> :NvimTreeToggle<CR>

" Telescope
lua << EOF
require('telescope').setup{
  defaults = {
    layout_config = {
      horizontal = {
        preview_cutoff = 0,
      },
    },
  }
}
EOF
nmap <C-f> :lua require('telescope.builtin').git_files()<CR>
nmap <C-b> :lua require('telescope.builtin').git_branches()<CR>

" Tree-sitter configuration
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "rust", "python", "go", "dart" },
  sync_install = false,
  highlight = {
    enable = true,
    disable = { "markdown", "vim" },
    additional_vim_regex_highlighting = false,
  },
}
EOF

" Automatically comment
" Credits: https://stackoverflow.com/a/24046914 
let s:comment_map = { 
    \   "c": '\/\/',
    \   "cpp": '\/\/',
    \   "go": '\/\/',
    \   "java": '\/\/',
    \   "javascript": '\/\/',
    \   "lua": '--',
    \   "scala": '\/\/',
    \   "python": '#',
    \   "rust": '\/\/',
    \   "sh": '#',
    \   "conf": '#',
    \   "profile": '#',
    \   "bashrc": '#',
    \   "bash_profile": '#',
    \   "bat": 'REM',
    \   "vim": '"',
    \ }

function! ToggleComment()
    if has_key(s:comment_map, &filetype)
        let comment_leader = s:comment_map[&filetype]
        if getline('.') =~ "^\\s*" . comment_leader . " " 
            " Uncomment the line
            execute "silent s/^\\(\\s*\\)" . comment_leader . " /\\1/"
        else 
            if getline('.') =~ "^\\s*" . comment_leader
                " Uncomment the line
                execute "silent s/^\\(\\s*\\)" . comment_leader . "/\\1/"
            else
                " Comment the line
                execute "silent s/^\\(\\s*\\)/\\1" . comment_leader . " /"
            end
        end
    else
        echo "No comment leader found for filetype"
    end
endfunction

nnoremap <silent> <C-c> :call ToggleComment()<cr>
vnoremap <silent> <C-c> :call ToggleComment()<cr>
