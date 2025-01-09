call plug#begin()

Plug 'nanotech/jellybeans.vim'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" General
set wrap
set linebreak
set textwidth=80
set spell

" Display
set number
set ruler
set cursorline

" Appearance
syntax on
colorscheme jellybeans 
set background=dark
set t_Co=256
set termguicolors

" Indentation
set cindent
set autoindent
set smartindent
set smarttab
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Find&Replace
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

" Miscellaneous
set noerrorbells
set novisualbell
set mouse=a
set encoding=utf-8

" Advanced
set spell
set backspace=indent,eol,start
set noswapfile
set nowritebackup
set nobackup
set nojoinspaces
set nocompatible
set lazyredraw
set ttyfast

" Mappings
let mapleader=" "
nnoremap <leader>pv :Ex<cr>
inoremap kj <Esc>

" NerdTree
nnoremap <C-n> :NERDTreeToggle<CR>

" CoC
inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<TAB>"
inoremap <silent><expr> <c-space> coc#refresh()