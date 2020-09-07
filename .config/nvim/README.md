*version: 0.4.4*<br>
<!--
<img src="https://seekvectorlogo.net/wp-content/uploads/2020/02/vim-vector-logo.png" align=center height=300px>
-->
```bash
███▄▄▄▄      ▄████████  ▄██████▄   ▄█    █▄   ▄█    ▄▄▄▄███▄▄▄▄   
███▀▀▀██▄   ███    ███ ███    ███ ███    ███ ███  ▄██▀▀▀███▀▀▀██▄
███   ███   ███    █▀  ███    ███ ███    ███ ███▌ ███   ███   ███
███   ███  ▄███▄▄▄     ███    ███ ███    ███ ███▌ ███   ███   ███
███   ███ ▀▀███▀▀▀     ███    ███ ███    ███ ███▌ ███   ███   ███
███   ███   ███    █▄  ███    ███ ███    ███ ███  ███   ███   ███
███   ███   ███    ███ ███    ███ ███    ███ ███  ███   ███   ███
 ▀█   █▀    ██████████  ▀██████▀   ▀██████▀  █▀    ▀█   ███   █▀  

```

### About
[Neovim](https://neovim.io/) is a text editor based on vim but modernized


## Table of Content
+ [Dependence](#Dependence)
+ [About file](#About-file)
+ [Keybinds](#Keybinds)
+ [Plugins](#Plugins)
 + [Lists](#List)
 + [Recommended](#Recommended)

## Dependence
+ [Vimplug](https://github.com/junegunn/vim-plug) for pluggins

**Recomendation**
+ Create a undodir folder for mayor history of files:
`mkdir -p $HOME/.config/nvim/undodir`
+ Modify keybinds as you like

The config is compatible with clasic vim, if you use it.<br>
But in that case i recommend you to install gvim for global clipboard capability or make a keybind for paste using xclip

## About File
*Options previews*:
+ autoindent
+ ignorecase
+ smartcase
+ hlsearch
+ incsearch
+ showmatch
+ wildmenu
+ magic
+ number relativenumber
+ clipboard=unnamedplus
+ nocompatible
+ undofile

## Plugins
### Lists
*Style*
+ [Vim-css-color](https://github.com/ap/vim-css-color)
+ [Devicons](https://github.com/ryanoasis/vim-devicons)

*Cursor*
+ [Multi-cursors](https://github.com/mg979/vim-visual-multi) for a very versatile multi cursors support
+ [Ping cursor](https://github.com/uptech/vim-ping-cursor) to identify cursor position

*Syntax*
+ [Indent](https://github.com/Yggdroot/indentLine) for show indent lines
+ [Gitgutter](https://github.com/airblade/vim-gitgutter) to see git diffs changes in files

*Panel*
+ [Nerdtree](https://github.com/preservim/nerdtree) for file directory panel

*Status Line*
+ [Lightline](https://github.com/itchyny/lightline.vim) as status bar

### Recommended
Plugins that i dont use but are interesting
+ [Goyo](https://github.com/junegunn/goyo.vim)
+ [startify](https://github.com/mhinz/vim-startify)
+ [AutoCompleteMe](https://github.com/ajh17/VimCompletesMe)
