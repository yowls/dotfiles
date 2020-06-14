"____    ____  __  .___  ___.       ______   ______   .__   __.  _______  __    _______ 
"\   \  /   / |  | |   \/   |      /      | /  __  \  |  \ |  | |   ____||  |  /  _____|
" \   \/   /  |  | |  \  /  |     |  ,----'|  |  |  | |   \|  | |  |__   |  | |  |  __ 
"  \      /   |  | |  |\/|  |     |  |     |  |  |  | |  . `  | |   __|  |  | |  | |_ |
"   \    /    |  | |  |  |  |     |  `----.|  `--'  | |  |\   | |  |     |  | |  |__| |
"    \__/     |__| |__|  |__|      \______| \______/  |__| \__| |__|     |__|  \______|
"                                                                                                                                 
" INIT PLUGINS
call plug#begin('~/.vim/plugged')
	Plug 'ap/vim-css-color'
	Plug 'itchyny/lightline.vim'
	
call plug#end()

" BASICS
syntax on
set autoindent

set ignorecase
set smartcase
set hlsearch
set incsearch
set showmatch

set wildmenu
set wildmode=longest,list,full

" Buffer related
"set hidden
"set autowrite

set magic
set number relativenumber
set encoding=utf-8
set clipboard=unnamedplus
set nocompatible
set mouse=a

filetype plugin indent on
" Enter in the position where you left off
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" LigthLine
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'deus',
      \ }

