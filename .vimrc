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
	Plug 'preservim/nerdtree'
	Plug 'airblade/vim-gitgutter'
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

set magic
set number relativenumber
set encoding=utf-8
set clipboard=unnamedplus
set nocompatible
set mouse=a

" Persist undo history
set undofile
set undodir=~/.vim/undodir
" Enter in the position where you left off
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

filetype plugin indent on
" PLUGINS CONFIG

" LigthLine
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" NERDTree config
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" GitGutter
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

" Keybinds
map <C-n> :NERDTreeToggle<CR>
