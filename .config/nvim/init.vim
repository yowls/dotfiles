" ██ ███    ██ ██ ████████ ███    ██ ██    ██ ██ ███    ███ 
" ██ ████   ██ ██    ██    ████   ██ ██    ██ ██ ████  ████ 
" ██ ██ ██  ██ ██    ██    ██ ██  ██ ██    ██ ██ ██ ████ ██ 
" ██ ██  ██ ██ ██    ██    ██  ██ ██  ██  ██  ██ ██  ██  ██ 
" ██ ██   ████ ██    ██ ██ ██   ████   ████   ██ ██      ██ 
" --- ---- ---- ---- --- ---- ----- ------ ----- ----- ----
" INIT PLUGINS
call plug#begin('~/.vim/plugged')
	" Style
	Plug 'ap/vim-css-color'
	Plug 'ryanoasis/vim-devicons'
	" Cursor
	Plug 'terryma/vim-multiple-cursors'
	Plug 'uptech/vim-ping-cursor'
	" Syntax
	Plug 'Yggdroot/indentLine'
	Plug 'airblade/vim-gitgutter'
	" Statusline /Tabline
	Plug 'itchyny/lightline.vim'
	" Explorer
	Plug 'preservim/nerdtree'
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
set number relativenumber
set encoding=utf-8
set clipboard=unnamedplus
set nocompatible
set mouse=a
filetype plugin indent on
" Persist undo history
set undofile
set undodir=~/.config/nvim/undodir
" Enter in the position where you left off
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

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
":GitGutterLineNrHighligtsEnable	"nvim

" Multi cursor
let g:multi_cursor_use_default_mapping=0

" Ping cursor
"set cursorline
"set cursorcolumn
let g:ping_cursor_flash_milliseconds = 250

" KEYBINDS
"map <C-n> :NERDTreeToggle<CR>
"map <C-m> :GitGutterLineHighlightsToggle<?>
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
