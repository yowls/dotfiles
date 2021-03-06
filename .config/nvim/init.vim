" ██ ███    ██ ██ ████████ ███    ██ ██    ██ ██ ███    ███ 
" ██ ████   ██ ██    ██    ████   ██ ██    ██ ██ ████  ████ 
" ██ ██ ██  ██ ██    ██    ██ ██  ██ ██    ██ ██ ██ ████ ██ 
" ██ ██  ██ ██ ██    ██    ██  ██ ██  ██  ██  ██ ██  ██  ██ 
" ██ ██   ████ ██    ██ ██ ██   ████   ████   ██ ██      ██ 
" --- ---- ---- ---- --- ---- ----- ------ ----- ----- ----
" INIT PLUGINS
call plug#begin('~/.config/nvim/plugged')
	" Style
	Plug 'ap/vim-css-color'
	Plug 'ryanoasis/vim-devicons'
	" Cursor
	Plug 'mg979/vim-visual-multi', {'branch': 'master'}
	Plug 'uptech/vim-ping-cursor'
	" Syntax
	Plug 'Yggdroot/indentLine'
	Plug 'airblade/vim-gitgutter'
	" Panel
	Plug 'preservim/nerdtree'
	" Statusline /Tabline
	Plug 'itchyny/lightline.vim'
call plug#end()

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
"set nolist
" Persist undo history
set undofile
set undodir=~/.config/nvim/undodir
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
let g:gitgutter_max_signs = 500
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1
":GitGutterLineNrHighlightsEnable	"nvim

" Ping cursor
"set cursorline
"set cursorcolumn
let g:ping_cursor_flash_milliseconds = 250

" KEYBINDS
"map <C-n> :NERDTreeToggle<CR>
"map <C-m> :GitGutterLineHighlightsToggle<?>
