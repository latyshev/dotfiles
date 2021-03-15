set nocompatible " be improved, required
filetype off     " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

  Plugin 'VundleVim/Vundle.vim'

  " Main
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'

  " Navigation
  Plugin 'scrooloose/nerdtree'
  map - :NERDTreeToggle<CR>

  " Colorschemes
  Plugin 'chriskempson/base16-vim'
  Plugin 'robertmeta/nofrils'

  " Ruby group
  Plugin 'tpope/vim-endwise'
  Plugin 'slim-template/vim-slim'
  Plugin 'tpope/vim-rails'
  Plugin 'vim-ruby/vim-ruby'
  Plugin 'tpope/vim-rake'
  Plugin 'tpope/vim-bundler'
  Plugin 'sunaku/vim-ruby-minitest'

" js group
  Plugin 'pangloss/vim-javascript'

call vundle#end()            " required
filetype plugin indent on    " required

" Color Scheme
set guifont=Droid\ Sans\ Mono\ 12
colorscheme nofrils-dark

" Use relative line numbers
if exists("&relativenumber")
	set relativenumber
	au BufReadPost * set relativenumber
endif

syntax on

set iskeyword-=. " use dot for limiter word
set iskeyword+=_
set clipboard=unnamed
set ttyfast " u got a fast terminal
set lazyredraw " to avoid scrolling problems
set synmaxcol=200
set mouse=nv
set hidden
set number
set ts=2
set sw=2
set autoindent
set smartindent
set expandtab
set ignorecase
set hlsearch
set splitbelow " new splits are down
set splitright " new vsplits are to the right
set smartcase
set incsearch
set laststatus=2
set visualbell
set showcmd
set pastetoggle=
set iminsert=0
set linebreak
set completeopt=longest,menuone
set wildmenu
set noerrorbells
set novisualbell
set t_vb=
set t_ut=
set tm=500
set nobackup
set nowb
set noswapfile
set timeoutlen=500
set langmenu=en_US.UTF-8
set encoding=utf-8
set fileencoding=utf-8
set shm+=I                     " Startup message is irritating

" fold values
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2

" Time out on key codes but not mappings.
" Basically this makes terminal Vim work sanely.
set notimeout
set ttimeout
set ttimeoutlen=10

if executable('zsh')
  set shell=zsh
endif

language mes en_US.UTF-8

let g:markdown_fenced_languages = ['javascript', 'ruby', 'sh', 'yaml', 'javascript', 'html', 'vim', 'coffee', 'json', 'diff']

let g:tube_terminal = "iterm"

let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = ''
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#left_sep = '|'
let g:airline#extensions#tabline#show_buffers = 0
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_theme = ''

let g:indentLine_color_term = 239
let g:indentLine_char = '¦'
