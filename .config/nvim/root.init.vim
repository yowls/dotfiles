" Minimial nvim config for root

" BASICS
syntax on
set autoindent
" Search
set ignorecase
set smartcase
set hlsearch
set incsearch
set showmatch
" Wildmenu
set wildmenu
set wildmode=longest,list,full
" Various
set magic
set mouse=a
set encoding=utf-8
set clipboard=unnamedplus
set number relativenumber
set nocompatible

" Enter in the position where you left off
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
