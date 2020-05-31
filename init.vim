set runtimepath^=~/.vim runtimepath+=~/.vim/after
set runtimepath^=~/.vim/bundle/ctrlp.vim
let &packpath = &runtimepath

set autoindent
set number
syntax on


if (has("nvim"))
				let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
				set termguicolors
endif

call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug '~/my-prototype-plugin'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dense-analysis/ale'
Plug 'rust-lang/rust.vim'
Plug 'honza/vim-snippets'

if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'sebastianmarkow/deoplete-rust'
Plug 'racer-rust/vim-racer'
call plug#end()

" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#rust#rust_source_path="F:\\rust-lang\\rust\\src"
let g:deoplete#sources#rust#racer_binary="C:\\Users\\saiop\\.cargo\\bin\\racer"

" Racer autocompletion
set hidden
let g:racer_cmd = "C:\\Users\\saiop\\.cargo\\bin\\racer"
let g:racer_experimental_completer = 1
let g:racer_insert_paren = 1

" Deoplete
let g:python3_host_prog="F:\\python3.8\\python.EXE"

" Ctrl P mapping key bindings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|target'

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smarttab
set guifont=Monaco:h10

set cursorline
set showcmd

set background=dark
colorscheme palenight

" Mapping for switch tab
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

:tnoremap <Esc> <C-\><C-n>
