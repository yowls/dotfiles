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

" Basics
"	nnoremap c "_c
	set nocompatible
	syntax on
	set encoding=utf-8
	set number relativenumber
	set clipboard+=unnamedplus


" LigthLine
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'deus',
      \ }
