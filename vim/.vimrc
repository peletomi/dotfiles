" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
  if &compatible
    set nocompatible
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

"
" Plugins
"
call neobundle#append()
    NeoBundle 'scrooloose/nerdtree'
    NeoBundle 'bling/vim-airline'
    NeoBundle 'nanotech/jellybeans.vim'
    NeoBundle 'Shougo/neocomplete'
    NeoBundle 'Shougo/unite.vim'
    NeoBundle 'Shougo/neosnippet'
    NeoBundle 'Shougo/neosnippet-snippets'
    NeoBundle 'scrooloose/syntastic'
    NeoBundle 'majutsushi/tagbar'
    NeoBundle 'pangloss/vim-javascript'
    NeoBundle 'tpope/vim-fireplace'
    NeoBundle 'tpope/vim-markdown'
    NeoBundle 'godlygeek/tabular'
call neobundle#end()

"
" Config
"
set noexrc                           " don't use local version of .(g)vimrc, .exrc
set backspace=indent,eol,start       " allow backspacing over everything in insert mode

set laststatus=2
set t_Co=256
set background=dark
colorscheme jellybeans               " badwolf lucius

syntax on

set hidden                           " you can change buffers without saving

set wildmenu
set history=100

set nowrap
set ignorecase
set smartcase
set autoindent                       " always set autoindenting on
set smartindent

set laststatus=2
set expandtab
set smarttab
set softtabstop=4
set shiftwidth=4

set langmenu=en
set helplang=en

set backupdir=$HOME/backup/vim

set incsearch                        " do incremental searching
set gdefault                         " global substitution per default

set hlsearch
set ruler                            " show the cursor position all the time
set showcmd                          " display incomplete commands
set cursorline
set relativenumber
set novisualbell
set scrolloff=10
set sidescrolloff=10
set showmatch
set colorcolumn=80,120
set list
set listchars=tab:▸\ ,eol:¬,trail:.,nbsp:%

"
" Keymapping
"
let mapleader = ","
let maplocalleader = ";"

map Q gq

nnoremap <silent> <F2> :NERDTreeToggle<CR>
nnoremap <silent> <F3> :TagbarToggle<CR>
nnoremap <silent> <leader><space> :noh<cr>

map <leader>x :silent 1,$!xmllint --format --recover - 2>/dev/null<CR>
map <leader>j :silent 1,$!python -m json.tool - 2>/dev/null<CR>

"
" Plugin Config
"
let g:airline_powerline_fonts = 1
let g:neocomplete#enable_at_startup = 1
let g:tagbar_width = 20
let g:tagbar_left = 1
