syntax on

set noerrorbells
set relativenumber
set nu
set smartcase
set smartindent
set noswapfile
set incsearch
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set nowrap
set smarttab
set scrolloff=8
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=200

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'jremmen/vim-ripgrep'
Plug 'tweekmonster/gofmt.vim'

call plug#end()

" Essentials
inoremap jk <Esc>
let mapleader=" "
colorscheme gruvbox
set background=dark

" Moving utils
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

let g:netrw_banner = 0
let g:netrw_winsize = 25

" Sizes for fzf
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

" --- vim go (polyglot) settings.
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_auto_sameids = 1

" FuGITive
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>

" Fix transparent background for alacritty while on vim
hi! Normal ctermbg=NONE guibg=NONE 
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE
